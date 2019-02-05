// Inicio Uso Estándares: 01/08/2011
// Unidad : Gestión de Cobranzas
// Formulario : FLiberarAsignaciones
// Fecha de Creación : 24/11/2015
// Autor : Juver De la Cruz
// Objetivo : Liberar Deudores
// Actualizaciones:
// HPC_201504_GESCOB : Liberar Deudores en forma masiva y Mantenimiento de Reportes Semanales / Mensuales

unit GES307;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Mask, StdCtrls,
  ComCtrls, ExtCtrls, StrUtils, wwdblook, Buttons, Grids, Wwdbigrd,
  Wwdbgrid, DB, Wwdatsrc, DBClient, wwclient, ExcelXP, OleServer;

type
  TFLiberarAsignaciones = class(TForm)
    odlgArchivo: TOpenDialog;
    xlsArchivo: TExcelApplication;
    gbx01: TGroupBox;
    gbx03: TGroupBox;
    Panel3: TPanel;
    btnSalir: TBitBtn;
    btnProcesar: TBitBtn;
    Label2: TLabel;
    edtArchivo: TEdit;
    btnArchivo: TButton;
    btnValidarDatos: TButton;
    dbgUniverso: TwwDBGrid;
    memLog: TMemo;
    prgbProgreso: TProgressBar;
    procedure btnArchivoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnValidarDatosClick(Sender: TObject);
    procedure btnSalirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnProcesarClick(Sender: TObject);
    procedure edtArchivoChange(Sender: TObject);
  private
      xxCdsQryUniverso : TwwClientDataSet;
       xxDsQryUniverso : TwwDataSource;
    xnCantidadTotalRegistros : integer;
    procedure FG_CARGA_XLS(psArchivo: string);
    procedure FG_PINTAR_GRID_UNIVERSO;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FLiberarAsignaciones: TFLiberarAsignaciones;

implementation

uses GESDM1;

{$R *.dfm}

(******************************************************************************)
procedure TFLiberarAsignaciones.FormShow(Sender: TObject);
var xsSQL : string;
begin
   DM1.FG_CONECTA_CDS(xxCdsQryUniverso, xxDsQryUniverso);
   prgbProgreso.Visible := false;
   btnProcesar.Enabled := false;
   xsSQL := 'DELETE FROM GES_IMP_GES_GTT WHERE NUMREG > 0';
   DM1.DCOM1.AppServer.EjecutaSql(xsSQL);
   FG_PINTAR_GRID_UNIVERSO();
   memLog.ReadOnly := True;
   memLog.Clear;
end;

(******************************************************************************)
procedure TFLiberarAsignaciones.FG_PINTAR_GRID_UNIVERSO();
var xsSQL : String;
begin
   xsSQL:='SELECT NUMREG, MODULAR, ASOID '
        + '  FROM GES_IMP_GES_GTT '
        + ' WHERE NUMREG > 0 '
        + ' ORDER BY NUMREG ';
   xxCdsQryUniverso.Close;
   xxCdsQryUniverso.DataRequest(xsSQL);
   xxCdsQryUniverso.Open;
   xnCantidadTotalRegistros := xxCdsQryUniverso.RecordCount;
   memLog.Lines.Add(IntToStr(xnCantidadTotalRegistros) + ' Registros seran procesados');
   btnProcesar.Caption := 'Procesar ('+IntToStr(xnCantidadTotalRegistros)+') registros';
   With dbgUniverso Do
    Begin
      DataSource := xxDsQryUniverso;
      Selected.Clear;
      Selected.Add('NUMREG'#9'5'#9'Nro'#9'F'#9'Desasignar');
      Selected.Add('MODULAR'#9'10'#9'Cód.Modular'#9'F'#9'Desasignar');
      ApplySelected;
    End;
   // activar controles
   btnProcesar.Enabled := (xnCantidadTotalRegistros > 0) ;
end;

(******************************************************************************)
procedure TFLiberarAsignaciones.btnArchivoClick(Sender: TObject);
begin
  if odlgArchivo.Execute then
     edtArchivo.Text := odlgArchivo.FileName;
end;

(******************************************************************************)
procedure TFLiberarAsignaciones.btnValidarDatosClick(Sender: TObject);
begin
   xnCantidadTotalRegistros := 0;
   memLog.Clear;
   If (odlgArchivo.FileName = '') Then
   Begin
        MessageDlg(AnsiUpperCase('SELECCIONE EL ARCHIVO A IMPORTAR!!!'), mtInformation, [mbOk], 0);
        Exit;
   End;
   Screen.Cursor := crHourGlass;

   // cargar datos
   FG_CARGA_XLS(odlgArchivo.FileName);

   // muestra el universo
   FG_PINTAR_GRID_UNIVERSO();

   Screen.Cursor := crDefault;
end;

(******************************************************************************)
procedure TFLiberarAsignaciones.FG_CARGA_XLS(psArchivo : string);
var
  xnFila: Integer;
  xsFilaString: String;
  xxHoja: _WorkSheet;
  xsSQL : string;
  xsCampoModular : string;
begin
  // ABRE EL ARCHIVO
  xlsArchivo.Workbooks.Open(psArchivo,
                            EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam,
                            EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam,
                            EmptyParam, EmptyParam, EmptyParam, EmptyParam, 0);
  // LIMPIA DATOS Y VARIABLES
  xsSQL := 'DELETE FROM GES_IMP_GES_GTT WHERE NUMREG > 0 ';
  DM1.DCOM1.AppServer.EjecutaSql(xsSQL);
  xxHoja := xlsArchivo.Worksheets.Item[1] as _WorkSheet;
  xnFila := 2;
  xsSQL  := '';
  xsFilaString := IntToStr(xnFila);
  while not (VarType( xlsArchivo.Range['A'+xsFilaString, 'A'+xsFilaString].Value2 ) = VarEmpty) do
  begin
      xsCampoModular := Trim(xxHoja.Range['A'+xsFilaString, 'A'+xsFilaString].Value2);
      xsSQL := xsSQL + ' PCK_GES_PROCESO.SP_GES_IMP_GES_GTT_ADD_MOD(' + IntToStr(xnFila-1) + ', ' + QuotedStr(xsCampoModular) + ');';
      IF ((xnFila-1) MOD 50) = 0 THEN
      BEGIN
        xsSQL := 'BEGIN ' + xsSQL + ' COMMIT; END;';
        DM1.DCOM1.AppServer.EjecutaSql(xsSQL);
        xsSQL := '';
      END;
      xnFila := xnFila + 1;
      xsFilaString := IntToStr(xnFila);
  end;
  IF (xsSQL<>'') THEN
  BEGIN
     xsSQL := 'BEGIN ' + xsSQL + ' COMMIT; END;';
     DM1.DCOM1.AppServer.EjecutaSql(xsSQL);
  END;
  memLog.Lines.Add(IntToStr(xnFila-2) + ' Registros Cargados');
  xnCantidadTotalRegistros := xnFila-2;
  xlsArchivo.Application.ActiveWorkbook.Save(0);
end;

(******************************************************************************)
procedure TFLiberarAsignaciones.edtArchivoChange(Sender: TObject);
begin
  btnProcesar.Enabled := false;
end;

(******************************************************************************)
procedure TFLiberarAsignaciones.btnProcesarClick(Sender: TObject);
var xsSQL : string;
begin
  with xxCdsQryUniverso do begin
     try
        Screen.Cursor := crHourGlass;
        prgbProgreso.Visible := True;
        prgbProgreso.Max := RecordCount;
        first;
        While Not Eof do begin
           xsSQL := xsSQL
              + ' DELETE FROM GES_COB_DOM WHERE ASOID = ' + QuotedStr(fieldbyname('ASOID').AsString) + ';';
           prgbProgreso.Position := prgbProgreso.Position + 1;
           IF ((prgbProgreso.Position) MOD 100) = 0 THEN BEGIN
              xsSQL := 'BEGIN ' + xsSQL + ' COMMIT; END;';
              DM1.DCOM1.AppServer.EjecutaSql(xsSQL);
              xsSQL := '';
           END;
           next;
        end;
        if xsSQL <> '' then begin
          xsSQL := 'BEGIN ' + xsSQL + ' COMMIT; END;';
          DM1.DCOM1.AppServer.EjecutaSql(xsSQL);
        end;
        prgbProgreso.visible := False;
        Screen.Cursor := crDefault;
     except
        on e : exception do begin
           prgbProgreso.visible := False;
           Screen.Cursor := crDefault;
           MessageDlg(AnsiUpperCase(e.Message), mtInformation, [mbOk], 0);
        end
     end;
  end;
  edtArchivo.Text := '';
  MessageDlg(AnsiUpperCase('EL PROCESO TERMINÓ CORRECTAMENTE!!!'), mtInformation, [mbOk], 0);
end;

(******************************************************************************)
procedure TFLiberarAsignaciones.btnSalirClick(Sender: TObject);
begin
  Close;
end;

(******************************************************************************)
procedure TFLiberarAsignaciones.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Action := caFree;
end;

(******************************************************************************)

end.
