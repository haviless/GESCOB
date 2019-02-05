// Inicio Uso Estándares: 01/08/2011
// Unidad : Gestión de Cobranzas
// Formulario : FMantReportesFSC
// Fecha de Creación : 03/03/0216
// Autor : Juver De la Cruz
// Objetivo : Mantenimiento de Reportes de FSC EC
// Actualizaciones:
// HPC_201601_GESCOB : Mantenimiento de Reportes de FSC EC
// HPC_201602_GESCOB : Evitar duplicidad de correlativos en universo de reportes subidos por el usuario	

unit GES309;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Mask, StdCtrls,
  ComCtrls, ExtCtrls, StrUtils, wwdblook, Buttons, Grids, Wwdbigrd,
  Wwdbgrid, DB, Wwdatsrc, DBClient, wwclient, ExcelXP, OleServer;

type
  TFMantReportesFSC = class(TForm)
    odlgArchivo: TOpenDialog;
    xlsArchivo: TExcelApplication;
    gbx01: TGroupBox;
    Panel3: TPanel;
    btnSalir: TBitBtn;
    Label2: TLabel;
    edtArchivo: TEdit;
    btnArchivo: TButton;
    btnValidarDatos: TButton;
    prgbProgreso: TProgressBar;
    Panel1: TPanel;
    dbgUniversoCab: TwwDBGrid;
    dbgUniversoDet: TwwDBGrid;
    Panel2: TPanel;
    btnRetirarArchivo: TBitBtn;
    procedure btnArchivoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnValidarDatosClick(Sender: TObject);
    procedure btnSalirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbgUniversoCabRowChanged(Sender: TObject);
    procedure btnRetirarArchivoClick(Sender: TObject);
  private
      xxCdsQry : TwwClientDataSet;
       xxDsQry : TwwDataSource;
      xxCdsQryUniversoDet : TwwClientDataSet;
       xxDsQryUniversoDet : TwwDataSource;
      xxCdsQryUniversoCab : TwwClientDataSet;
       xxDsQryUniversoCab : TwwDataSource;
    procedure FG_CARGA_XLS(psArchivo: string);
    procedure FG_PINTAR_GRID_UNIVERSO_CAB;
    procedure FG_PINTAR_GRID_UNIVERSO_DET;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FMantReportesFSC: TFMantReportesFSC;

implementation

uses GESDM1;

{$R *.dfm}

(******************************************************************************)
procedure TFMantReportesFSC.FormShow(Sender: TObject);
begin
   DM1.FG_CONECTA_CDS(xxCdsQry, xxDsQry);
   DM1.FG_CONECTA_CDS(xxCdsQryUniversoCab, xxDsQryUniversoCab);
   DM1.FG_CONECTA_CDS(xxCdsQryUniversoDet, xxDsQryUniversoDet);
   prgbProgreso.Visible := false;
   FG_PINTAR_GRID_UNIVERSO_CAB();
end;

(******************************************************************************)
procedure TFMantReportesFSC.dbgUniversoCabRowChanged(
  Sender: TObject);
begin
   if xxCdsQryUniversoCab.RecordCount > 0 then FG_PINTAR_GRID_UNIVERSO_DET();
end;


(******************************************************************************)
procedure TFMantReportesFSC.FG_PINTAR_GRID_UNIVERSO_CAB();
var xsSQL : String;
    xnCantidadTotal : integer;
begin
   dbgUniversoCab.OnRowChanged := nil;
   xsSQL:='SELECT A.CODRPTUNICAB, A.ARCHIVO, A.FREG, NVL(B.CANT_REGISTROS, 0) CANT_REGISTROS '
        + '  FROM GES_RPT_FSC_UNIVERSO_CAB A, '
        + '       (SELECT CODRPTUNICAB, COUNT(1) CANT_REGISTROS '
        + '          FROM GES_RPT_FSC_UNIVERSO_DET '
        + '         GROUP BY CODRPTUNICAB ) B '
        + ' WHERE A.CODRPTUNICAB = B.CODRPTUNICAB(+) '
        + ' ORDER BY A.CODRPTUNICAB DESC ';
   xxCdsQryUniversoCab.Close;
   xxCdsQryUniversoCab.DataRequest(xsSQL);
   xxCdsQryUniversoCab.Open;
   With dbgUniversoCab Do Begin
      DataSource := xxDsQryUniversoCab;
      Selected.Clear;
      Selected.Add('ARCHIVO'#9'40'#9'Archivo');
      Selected.Add('FREG'#9'20'#9'Fecha');
      Selected.Add('CANT_REGISTROS'#9'8'#9'Registros');
      ApplySelected;
    End;

   With xxCdsQryUniversoCab Do Begin
      xnCantidadTotal := 0;
      first;
      while not eof do begin
        xnCantidadTotal := xnCantidadTotal + fieldbyname('CANT_REGISTROS').value;
        next;
      end;
      first;
   end;

   With dbgUniversoCab Do Begin
     ColumnByName('FREG').FooterValue := 'Total';
     ColumnByName('CANT_REGISTROS').FooterValue := FloatToStrF(xnCantidadTotal, ffNumber, 10, 0);
   end;
   FG_PINTAR_GRID_UNIVERSO_DET();
   btnRetirarArchivo.Enabled := (xxCdsQryUniversoCab.RecordCount > 0);
   dbgUniversoCab.OnRowChanged := dbgUniversoCabRowChanged;
end;


(******************************************************************************)
procedure TFMantReportesFSC.FG_PINTAR_GRID_UNIVERSO_DET();
var xsSQL : String;
    xsCODRPTUNICAB : String;
begin
   IF xxCdsQryUniversoCab.RecordCount <= 0 then begin
      xsCODRPTUNICAB := '0';
   end else begin
      xsCODRPTUNICAB := xxCdsQryUniversoCab.FieldByName('CODRPTUNICAB').AsString
   end;

   xsSQL:='SELECT CODRPTUNICAB, ASOID, ASOCODMOD, ASOAPENOM '
        + '  FROM GES_RPT_FSC_UNIVERSO_DET '
        + ' WHERE CODRPTUNICAB = ' + xsCODRPTUNICAB
        + ' ORDER BY ASOAPENOM ';
   xxCdsQryUniversoDet.Close;
   xxCdsQryUniversoDet.DataRequest(xsSQL);
   xxCdsQryUniversoDet.Open;
   With dbgUniversoDet Do
    Begin
      DataSource := xxDsQryUniversoDet;
      Selected.Clear;
      Selected.Add('ASOID'#9'10'#9'Código~Asociado');
      Selected.Add('ASOCODMOD'#9'10'#9'Código~Modular');
      Selected.Add('ASOAPENOM'#9'35'#9'Asociado');
      ApplySelected;
    End;
end;

(******************************************************************************)
procedure TFMantReportesFSC.btnArchivoClick(Sender: TObject);
begin
  if odlgArchivo.Execute then
     edtArchivo.Text := odlgArchivo.FileName;
end;

(******************************************************************************)
procedure TFMantReportesFSC.btnValidarDatosClick(Sender: TObject);
begin
   If (odlgArchivo.FileName = '') Then Begin
        MessageDlg(AnsiUpperCase('SELECCIONE EL ARCHIVO A IMPORTAR!!!'), mtInformation, [mbOk], 0);
        Exit;
   End;
   Screen.Cursor := crHourGlass;
   // cargar datos
   FG_CARGA_XLS(odlgArchivo.FileName);
   // muestra el universo
   FG_PINTAR_GRID_UNIVERSO_CAB();

   Screen.Cursor := crDefault;
end;

(******************************************************************************)
procedure TFMantReportesFSC.FG_CARGA_XLS(psArchivo : string);
var
  xnFila: Integer;
  xsFilaString: String;
  xxHoja: _WorkSheet;
  xsSQL : string;
  xsCampoModular : string;
  xsNombreArchivo : String;
begin
   xsNombreArchivo := LeftStr(UpperCase(ExtractFileName(odlgArchivo.FileName)),200);
   if xsNombreArchivo = '' then begin
      MessageDlg(AnsiUpperCase('SELECCIONE EL ARCHIVO A IMPORTAR!!!'), mtInformation, [mbOk], 0);
      Exit;
   end;

   xsSQL:='SELECT COUNT(1) CANTIDAD '
        + '  FROM GES_RPT_FSC_UNIVERSO_CAB '
        + ' WHERE ARCHIVO = ' + QuotedStr(xsNombreArchivo);
   xxCdsQry.Close;
   xxCdsQry.DataRequest(xsSQL);
   xxCdsQry.Open;
   if xxCdsQry.FieldByName('CANTIDAD').Value >= 1 then begin
      MessageDlg(AnsiUpperCase('EL NOMBRE DEL ARCHIVO YA EXISTE!!!'), mtInformation, [mbOk], 0);
      Exit;
   end;

   // INICIO HPC_201602_GESCOB
   // EVITA DUPLICIDAD DE CORRELATIVOS
   xsSQL:='SELECT NVL(MAX(CODRPTUNICAB),0) + 1 CODRPTUNICAB '
        + '  FROM GES_RPT_FSC_UNIVERSO_CAB '
        + ' WHERE 1 = 1 ';
   // FIN HPC_201602_GESCOB
   xxCdsQry.Close;
   xxCdsQry.DataRequest(xsSQL);
   xxCdsQry.Open;

   xsSQL:='INSERT INTO GES_RPT_FSC_UNIVERSO_CAB(CODRPTUNICAB, ARCHIVO, FREG) '
        + 'VALUES (' + xxCdsQry.FieldByName('CODRPTUNICAB').AsString + ', ' + QuotedStr(xsNombreArchivo) + ', SYSDATE)';
   DM1.DCOM1.AppServer.EjecutaSql(xsSQL);

  // SOLO SI SE GRABA BIEN LA CABECERA SE INSERTA LA DATA
  // Y UNA VEZ GRABADA LA DATA, SE VUELVE A CARGAR LA CABECERA Y SE DEJA SELECCIONADO EL QUE SE ACABA DE INGRESAR
  // ABRE EL ARCHIVO
  xlsArchivo.Workbooks.Open(psArchivo,
                            EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam,
                            EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam,
                            EmptyParam, EmptyParam, EmptyParam, EmptyParam, 0);
  xxHoja := xlsArchivo.Worksheets.Item[1] as _WorkSheet;
  xnFila := 2;
  xsSQL  := '';
  xsFilaString := IntToStr(xnFila);
  while not (VarType( xlsArchivo.Range['A'+xsFilaString, 'A'+xsFilaString].Value2 ) = VarEmpty) do
  begin
      xsCampoModular := Trim(xxHoja.Range['A'+xsFilaString, 'A'+xsFilaString].Value2);
      xsSQL := xsSQL
             + ' INSERT INTO GES_RPT_FSC_UNIVERSO_DET (CODRPTUNICAB, ASOID, ASOCODMOD, ASOAPENOM) '
             + ' SELECT ' + xxCdsQry.FieldByName('CODRPTUNICAB').AsString + ' CODRPTUNICAB '
             + '        ,ASOID '
             + '        ,ASOCODMOD '
             + '        ,ASOAPENOM '
             + '   FROM APO201 '
             + '  WHERE ASOCODMOD = LPAD(' + QuotedStr(xsCampoModular) + ', 10, ''0'') '
             + '    AND ROWNUM = 1; ';
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
  xlsArchivo.Application.ActiveWorkbook.Save(0);
  FG_PINTAR_GRID_UNIVERSO_CAB();
end;

(******************************************************************************)
procedure TFMantReportesFSC.btnSalirClick(Sender: TObject);
begin
  Close;
end;

(******************************************************************************)
procedure TFMantReportesFSC.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Action := caFree;
end;

(******************************************************************************)
procedure TFMantReportesFSC.btnRetirarArchivoClick(
  Sender: TObject);
var xsSQL : string;
begin
  If MessageDlg('Confirma que desea Retirar el archivo : '
                 + QuotedStr(xxCdsQryUniversoCab.fieldbyname('ARCHIVO').AsString ) + ' ?    ',
                 mtConfirmation, [mbYes, mbNo], 0) = mrYes Then begin
    xsSQL := ' BEGIN '
           + '    DELETE FROM GES_RPT_FSC_UNIVERSO_DET WHERE CODRPTUNICAB = ' + xxCdsQryUniversoCab.fieldbyname('CODRPTUNICAB').AsString + ';'
           + '    DELETE FROM GES_RPT_FSC_UNIVERSO_CAB WHERE CODRPTUNICAB = ' + xxCdsQryUniversoCab.fieldbyname('CODRPTUNICAB').AsString + ';'
           + '    COMMIT;'
           + ' EXCEPTION WHEN OTHERS THEN '
           + '   ROLLBACK; '
           + ' END;';
    DM1.DCOM1.AppServer.EjecutaSql(xsSQL);
    FG_PINTAR_GRID_UNIVERSO_CAB();
  end;
end;

(******************************************************************************)
end.
