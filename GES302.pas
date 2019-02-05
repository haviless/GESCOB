// Inicio Uso Estándares: 01/08/2011
// Unidad : Gestión de Cobranzas
// Formulario : FrmImportarAsignaciones
// Fecha de Creación : 03/08/2015
// Autor : Equipo de Sistemas
// Objetivo : Automatizar la importacion de asignaciones internas
// Actualizaciones:
// HPC_201502_GESCOB: automatizar la importacion de las asignaciones y gestiones

unit GES302;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Mask, wwdbedit, Wwdotdot, Wwdbcomb, StdCtrls, OleServer, ExcelXP,
  ComCtrls, ExtCtrls, StrUtils, wwdblook, Buttons;

type
  TFrmImportarAsignacionesInt = class(TForm)
    odlgArchivo: TOpenDialog;
    xlsArchivo: TExcelApplication;
    gbx01: TGroupBox;
    gbx02: TGroupBox;
    Panel2: TPanel;
    lstValida: TListView;
    gbx03: TGroupBox;
    Panel3: TPanel;
    btnSalir: TBitBtn;
    btnProcesar: TBitBtn;
    Label2: TLabel;
    edArchivo: TEdit;
    btnArchivo: TButton;
    btnValidarDatos: TButton;
    lblMensaje: TLabel;
    sdInconsistencias: TSaveDialog;
    btnExportar: TBitBtn;
    procedure btnArchivoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnValidarDatosClick(Sender: TObject);
    procedure cboPeriodoAsignacionChange(Sender: TObject);
    procedure btnSalirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnProcesarClick(Sender: TObject);
    procedure edArchivoChange(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure btnExportarClick(Sender: TObject);
  private
    procedure fn_cargar_xls(psArchivo: string);
    procedure fn_validar_datos;
    procedure fn_procesar;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmImportarAsignacionesInt: TFrmImportarAsignacionesInt;

implementation

uses GESDM1;

{$R *.dfm}
(******************************************************************************)
(******************************************************************************)
(******************************************************************************)

procedure TFrmImportarAsignacionesInt.FormShow(Sender: TObject);
var xsSQL : string;
begin
   btnExportar.Enabled := false;
   btnProcesar.Enabled := false;
   FormResize(nil);
   if (DM1.fn_validar_periodo_asignacion_actual = 'TRUE') then begin
      gbx01.Enabled := true;
   end else begin
      gbx01.Enabled := false;
      MessageDlg('EL PERIODO DE ASIGNACION DEBE SER ACTUALIZADO, COMUNIQUESE CON EL EQUIPO DE SISTEMAS !!!', mtInformation, [mbOk], 0);
   end;
end;

(******************************************************************************)
procedure TFrmImportarAsignacionesInt.fn_cargar_xls(psArchivo : string);
var
  xnFila: Integer;
  xsFilaString: String;
  xxHoja: _WorkSheet;
  xsSQL : string;
  xsCampoAsoid : string;
  xsCampoGestor: string;
  xsCampoAsignadoPor: string;
begin
  // ABRE EL ARCHIVO
  lblMensaje.Caption := 'Conectando al archivo!';
  xlsArchivo.Workbooks.Open(psArchivo,
                            EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam,
                            EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam,
                            EmptyParam, EmptyParam, EmptyParam, EmptyParam, 0);
  // LIMPIA DATOS Y VARIABLES
  lblMensaje.Caption := 'Limpiando datos anteriores!';
  xsSQL := 'DELETE FROM GES_IMP_ASI_GTT';
  DM1.DCOM1.AppServer.EjecutaSql(xsSQL);
  lstValida.Items.Clear;
  lblMensaje.Caption := 'Cargando registros : 0';
  xxHoja := xlsArchivo.Worksheets.Item[1] as _WorkSheet;
  xnFila := 2;
  xsSQL  := '';
  xsFilaString := IntToStr(xnFila);
  while not (VarType( xlsArchivo.Range['A'+xsFilaString,'A'+xsFilaString].Value2 ) = VarEmpty) do
  begin
      xsCampoAsoid := Trim(xxHoja.Range[ 'A'+xsFilaString, 'A'+xsFilaString].Value2);
      xsCampoGestor := Trim(xxHoja.Range[ 'B'+xsFilaString, 'B'+xsFilaString].Value2);
      xsCampoAsignadoPor := Trim(xxHoja.Range[ 'C'+xsFilaString, 'C'+xsFilaString].Value2);
      xsSQL := xsSQL + ' SP_GES_IMP_ASI_GTT_ADD('+IntToStr(xnFila-1)+','
               + 'TO_CHAR(ADD_MONTHS(SYSDATE ,-1) ,''YYYYMM''),'
               + QuotedStr(xsCampoAsoid) + ','
               + QuotedStr(xsCampoGestor) + ','
               + QuotedStr(xsCampoAsignadoPor)
               + ');' ;
      IF ((xnFila-1) MOD 100) = 0 THEN
      BEGIN
        xsSQL := 'BEGIN ' + xsSQL + ' END;';
        DM1.DCOM1.AppServer.EjecutaSql(xsSQL);
        xsSQL := '';
      END;
      lblMensaje.Caption := 'Cargando registros : ' + IntToStr(xnFila-1);
      xnFila := xnFila + 1;
      xsFilaString := IntToStr(xnFila);
  end;
  IF (xsSQL<>'') THEN
  BEGIN
     xsSQL := 'BEGIN ' + xsSQL + ' END;';
     DM1.DCOM1.AppServer.EjecutaSql(xsSQL);
  END;
  lblMensaje.Caption := IntToStr(xnFila-2) + ' Registros Cargados';
  // CIERRA EL ARCHIVO
  xlsArchivo.Application.ActiveWorkbook.Save(0);
end;
(******************************************************************************)
procedure TFrmImportarAsignacionesInt.fn_validar_datos();
var xsSQL: string;
begin
   lstValida.Items.Clear;
   lblMensaje.Caption := 'Validando datos';
   xsSQL := 'BEGIN SP_GES_IMP_ASI_GTT_VAL; END;';
   DM1.DCOM1.AppServer.EjecutaSql(xsSQL);
   xsSQL:='SELECT NUMREG, ASOID, GESTOR, USUASI, PROCESAR, INCONSISTENCIA '
        + '  FROM GES_IMP_ASI_GTT '
        + ' WHERE PROCESAR = ''N'' '
        + ' ORDER BY NUMREG ';
   DM1.cdsQry2.Close;
   DM1.cdsQry2.DataRequest(xsSQL);
   DM1.cdsQry2.Open;
   lblMensaje.Caption := IntToStr(DM1.cdsQry2.RecordCount) + ' Registros "INCONSISTENTES"';
   btnProcesar.Caption := 'Procesar obviando ('+IntToStr(DM1.cdsQry2.RecordCount)+') Inconsistencias';
   DM1.cdsQry2.First;
   while not DM1.cdsQry2.Eof do
   begin
       with lstValida.Items.Add, DM1.cdsQry2 do
       begin
        SubItems.Add(fieldbyname('NUMREG').AsString);       // NUMERO DE REGISTRO
        SubItems.Add(fieldbyname('ASOID').AsString);        // ASOID
        SubItems.Add(fieldbyname('GESTOR').AsString);       // GESTOR
        SubItems.Add(fieldbyname('USUASI').AsString); // ASIGNADO POR
        SubItems.Add(fieldbyname('INCONSISTENCIA').AsString); // INCONSISTENCIA
      end;
      DM1.cdsQry2.Next;
   end;
end;

(******************************************************************************)
procedure TFrmImportarAsignacionesInt.fn_procesar();
var xsSQL : string;
begin
   xsSQL := 'BEGIN SP_GES_IMP_ASI_GTT_PRO_INT; END;';
   DM1.DCOM1.AppServer.EjecutaSql(xsSQL);
end;
(******************************************************************************)
procedure TFrmImportarAsignacionesInt.btnArchivoClick(Sender: TObject);
begin
  if odlgArchivo.Execute then
     edArchivo.Text := odlgArchivo.FileName;
end;

(******************************************************************************)
procedure TFrmImportarAsignacionesInt.btnValidarDatosClick(Sender: TObject);
var xsSQL : string;
begin
   If (odlgArchivo.FileName = '') Then
   Begin
        MessageDlg('SELECCIONE EL ARCHIVO A IMPORTAR!!!', mtInformation, [mbOk], 0);
        Exit;
   End;

   Screen.Cursor := crHourGlass;
   // cargar datos
   fn_cargar_xls(odlgArchivo.FileName);

   // validar datos
   fn_validar_datos();

   // activar controles
   btnProcesar.Enabled := true;
   btnExportar.Enabled := (lstValida.Items.Count > 0);
   Screen.Cursor := crDefault;
end;

(******************************************************************************)
procedure TFrmImportarAsignacionesInt.cboPeriodoAsignacionChange(
  Sender: TObject);
begin
  btnProcesar.Enabled := false;
end;

(******************************************************************************)
procedure TFrmImportarAsignacionesInt.edArchivoChange(Sender: TObject);
begin
  btnProcesar.Enabled := false;
end;

(******************************************************************************)
procedure TFrmImportarAsignacionesInt.btnProcesarClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  btnProcesar.Enabled := false;
  fn_procesar();
  edArchivo.Text := '';
  lstValida.Items.Clear;
  lblMensaje.Caption := '0 Registros Cargados';
  MessageDlg('EL PROCESO TERMINO CORRECTAMENTE!!!', mtInformation, [mbOk], 0);
  Screen.Cursor := crDefault;
end;

(******************************************************************************)
procedure TFrmImportarAsignacionesInt.btnSalirClick(Sender: TObject);
begin
  Close;
end;

(******************************************************************************)
procedure TFrmImportarAsignacionesInt.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Action := caFree;
end;

(******************************************************************************)
procedure TFrmImportarAsignacionesInt.FormResize(Sender: TObject);
begin
   btnProcesar.Left := round((self.Width - btnProcesar.Width)/2);
end;

(******************************************************************************)
procedure TFrmImportarAsignacionesInt.btnExportarClick(Sender: TObject);
begin
  DM1.fn_exportar_listview(lstValida);
end;

(******************************************************************************)
end.
