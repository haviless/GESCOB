// Inicio Uso Estándares: 01/08/2011
// Unidad : Gestión de Cobranzas
// Formulario : FDisAsiCar
// Fecha de Creación : 09/10/2014
// Autor : Equipo de Sistemas
// Objetivo : Distribución y Asignación de Cartera
// Actualizaciones:
// HPC_201403_GESCOB:  Distribución y Asignación de Cartera
// SPP_201404_GESCOB: Se realiza el pase a producción a partir del HPC_201403_GESCOB

unit GES565;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, wwdblook, ExtCtrls, Buttons, ComCtrls, Grids,
  Wwdbigrd, Wwdbgrid, DB, ppParameter, ppCtrls, ppBands, ppVar, ppPrnabl,
  ppClass, ppCache, ppProd, ppReport, ppRelatv, ppDB, ppDBPipe, ppComm,
  ppEndUsr;

type
  TFDisAsiCar = class(TForm)
    pnlCabecera: TPanel;
    lbl1: TLabel;
    cboPeriodoCartera: TwwDBLookupCombo;
    pnl1: TPanel;
    btnExportar: TBitBtn;
    btnSalir: TBitBtn;
    pcGeneral: TPageControl;
    tsACADO: TTabSheet;
    tsCCC: TTabSheet;
    btnImprimir: TBitBtn;
    desRptTodos: TppDesigner;
    dbRptACADO: TppDBPipeline;
    rptACADO: TppReport;
    ppHeaderBand41: TppHeaderBand;
    ppLabel858: TppLabel;
    ppLabel859: TppLabel;
    ppLabel860: TppLabel;
    ppLabel861: TppLabel;
    ppLabel862: TppLabel;
    ppSystemVariable83: TppSystemVariable;
    ppSystemVariable84: TppSystemVariable;
    ppSystemVariable85: TppSystemVariable;
    ppLblTit01: TppLabel;
    ppLabel863: TppLabel;
    ppLabel864: TppLabel;
    ppLabel865: TppLabel;
    ppLblTit02: TppLabel;
    ppImgReporte: TppImage;
    ppDetailBand44: TppDetailBand;
    ppFooterBand36: TppFooterBand;
    ppLblUser: TppLabel;
    ppSummaryBand41: TppSummaryBand;
    ppParameterList1: TppParameterList;
    pnlACADO: TPanel;
    dbgACADOIdentificados: TwwDBGrid;
    Panel2: TPanel;
    Panel1: TPanel;
    dbgACADONoAsignados: TwwDBGrid;
    imgCapturarPanel: TImage;
    rgACADOTipoReporte: TRadioGroup;
    dbgACADOAsignados: TwwDBGrid;
    rgCCCLugar: TRadioGroup;
    Panel3: TPanel;
    dbgCCC: TwwDBGrid;
    rptCCC: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppSystemVariable3: TppSystemVariable;
    ppLblTit01CCC: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLblTit02CCC: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLblUserCCC: TppLabel;
    ppSummaryBand1: TppSummaryBand;
    ppParameterList2: TppParameterList;
    dbRptCCC: TppDBPipeline;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnSalirClick(Sender: TObject);
    procedure btnExportarClick(Sender: TObject);
    procedure pcGeneralChange(Sender: TObject);
    procedure cboPeriodoCarteraChange(Sender: TObject);
    procedure rgACADOTipoReporteClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure rgCCCLugarClick(Sender: TObject);
    procedure dbgCCCDrawDataCell(Sender: TObject; const Rect: TRect;
      Field: TField; State: TGridDrawState);
    procedure dbgCCCDrawFooterCell(Sender: TObject; Canvas: TCanvas;
      FooterCellRect: TRect; Field: TField; FooterText: String;
      var DefaultDrawing: Boolean);
    procedure dbgCCCDrawTitleCell(Sender: TObject; Canvas: TCanvas;
      Field: TField; Rect: TRect; var DefaultDrawing: Boolean);
  private
    procedure fn_cargar_ACADO;
    procedure fn_cargar_CCC;
    function fn_get_sql_CCC_cab(pbSubTotales: boolean): string;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FDisAsiCar: TFDisAsiCar;

implementation

uses GESDM1;

{$R *.dfm}

(******************************************************************************)
procedure TFDisAsiCar.FormShow(Sender: TObject);
VAR xsSQL : STRING;
begin
   // cargar la primera pagina de tabcontrol
   pcGeneral.ActivePage := tsACADO;

   Screen.Cursor := crHourGlass;
   // CARGAR LOS PERIODOS PARA SELECCIONAR
   // se carga solo en base a la data de la tabla GES_COB_REPT_ING_MEN
   xsSQL:='SELECT DISTINCT PERIODO FROM GES_COB_RPT_ING_MEN ORDER BY PERIODO DESC';
   DM1.cdsQry1.Close;
   DM1.cdsQry1.DataRequest(xsSQL);
   DM1.cdsQry1.Open;
   DM1.cdsQry1.First;
   cboPeriodoCartera.LookupTable := DM1.cdsQry1;
   cboPeriodoCartera.LookupField := 'PERIODO';
   cboPeriodoCartera.Selected.Clear;
   cboPeriodoCartera.Selected.Add('PERIODO'#9'8'#9'Periodo');
   cboPeriodoCartera.Text := DM1.cdsQry1.fieldbyname('PERIODO').asstring;
   Screen.Cursor := crDefault;
   pcGeneralChange(pcGeneral);
end;

(******************************************************************************)
procedure TFDisAsiCar.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

(******************************************************************************)
procedure TFDisAsiCar.cboPeriodoCarteraChange(Sender: TObject);
var xsSQL : string;
begin
  Screen.Cursor := crHourGlass;
  xsSQL := 'BEGIN SP_GES_COB_GEN_UNI_DIS_ASI_CAR(' + QuotedStr(cboPeriodoCartera.Text)+ '); END;';
  DM1.DCOM1.AppServer.EjecutaSql(xsSQL);
  Screen.Cursor := crDefault;
  pcGeneralChange(pcGeneral);
end;

(******************************************************************************)
procedure TFDisAsiCar.btnSalirClick(Sender: TObject);
begin
  Close;
end;

(******************************************************************************)
(******************************************************************************)
(******************************************************************************)
procedure TFDisAsiCar.rgACADOTipoReporteClick(Sender: TObject);
begin
  fn_cargar_ACADO();
end;
(******************************************************************************)

procedure TFDisAsiCar.rgCCCLugarClick(Sender: TObject);
begin
  fn_cargar_CCC;
end;

(******************************************************************************)
procedure TFDisAsiCar.pcGeneralChange(Sender: TObject);
begin
  btnImprimir.Visible := (pcGeneral.ActivePage = tsACADO);
  if cboPeriodoCartera.Text <> '' then
  begin
    Screen.Cursor := crHourGlass;
    if (pcGeneral.ActivePage = tsACADO) and (strtoint(cboPeriodoCartera.Text) <> tsACADO.Tag) then
    begin
      fn_cargar_ACADO();
      tsACADO.Tag := strtoint(cboPeriodoCartera.Text);
    end;
    if (pcGeneral.ActivePage = tsCCC) and (strtoint(cboPeriodoCartera.Text) <> tsCCC.Tag) then
    begin
      fn_cargar_CCC();
      tsCCC.Tag := strtoint(cboPeriodoCartera.Text);
    end;
    Screen.Cursor := crDefault;
  end;
end;

(******************************************************************************)
procedure TFDisAsiCar.fn_cargar_ACADO();
var xsSQL : string;
    xsCampo : string;
  procedure fn_pintar_grid_ACADO(pxGrid :TwwDBGrid);
    var xnBORDER_LINE : double;
        xnALTO : double;
        xnMEDIO : double;
        xnBAJO : double;
        xnTOTAL : double;
        xsFormatoNumero : string;
  BEGIN
      WITH pxGrid, pxGrid.DataSource.DataSet DO
      BEGIN
        GroupFieldName := 'ESTADO_ASIGNACION';
        Selected.Clear;
        Selected.Add('ESTADO_ASIGNACION'#9'20'#9'ESTADO~ASIGNACION');
        Selected.Add('DISOPE'#9'15'#9'DISTRIBUCIÓN~OPERATIVA');
        Selected.Add('BORDER_LINE'#9'15'#9'BORDER LINE'#9'F'#9'TIPO DE RIESGO');
        Selected.Add('ALTO'#9'15'#9'ALTO'#9'F'#9'TIPO DE RIESGO');
        Selected.Add('MEDIO'#9'15'#9'MEDIO'#9'F'#9'TIPO DE RIESGO');
        Selected.Add('BAJO'#9'15'#9'BAJO'#9'F'#9'TIPO DE RIESGO');
        Selected.Add('TOTAL'#9'15'#9'TOTAL');
        ApplySelected;

        IF rgACADOTipoReporte.ItemIndex = 0 THEN xsFormatoNumero := '###,##0' ELSE xsFormatoNumero := '###,##0.#0';

        TNumericField(FieldByName('BORDER_LINE')).DisplayFormat := xsFormatoNumero;
        TNumericField(FieldByName('ALTO')).DisplayFormat := xsFormatoNumero;
        TNumericField(FieldByName('MEDIO')).DisplayFormat := xsFormatoNumero;
        TNumericField(FieldByName('BAJO')).DisplayFormat := xsFormatoNumero;
        TNumericField(FieldByName('TOTAL')).DisplayFormat := xsFormatoNumero;

        xnBORDER_LINE := 0;
        xnALTO := 0;
        xnMEDIO := 0;
        xnBAJO := 0;
        xnTOTAL := 0;
        first;
        while not eof do
        begin
          xnBORDER_LINE :=  xnBORDER_LINE + FieldByName('BORDER_LINE').Value;
          xnALTO :=  xnALTO + FieldByName('ALTO').Value;
          xnMEDIO :=  xnMEDIO + FieldByName('MEDIO').Value;
          xnBAJO :=  xnBAJO + FieldByName('BAJO').Value;
          xnTOTAL :=  xnTOTAL + FieldByName('TOTAL').Value;
          next;
        end;
        first;

        ColumnByName('DISOPE').FooterValue := 'TOTAL';
        ColumnByName('BORDER_LINE').FooterValue := FormatCurr(xsFormatoNumero, xnBORDER_LINE);
        ColumnByName('ALTO').FooterValue := FormatCurr(xsFormatoNumero, xnALTO);
        ColumnByName('MEDIO').FooterValue := FormatCurr(xsFormatoNumero, xnMEDIO);
        ColumnByName('BAJO').FooterValue := FormatCurr(xsFormatoNumero, xnBAJO);
        ColumnByName('TOTAL').FooterValue := FormatCurr(xsFormatoNumero, xnTOTAL);

      END;
  END;
begin
    Screen.Cursor := crHourGlass;
    IF rgACADOTipoReporte.ItemIndex = 0 THEN xsCampo := '1';
    IF rgACADOTipoReporte.ItemIndex = 1 THEN xsCampo := 'NVL(B.SALVEN,0)';
    IF rgACADOTipoReporte.ItemIndex = 2 THEN xsCampo := 'NVL(B.SALTOT,0)';

    xsSQL := 'SELECT ''IDENTIFICADOS'' ESTADO_ASIGNACION '
           + '      ,A.DISOPE '
           + '      ,SUM(CASE WHEN B.CODTIPRIE = ''00'' THEN ' + xsCampo + ' ELSE 0 END) BORDER_LINE '
           + '      ,SUM(CASE WHEN B.CODTIPRIE = ''01'' THEN ' + xsCampo + ' ELSE 0 END) ALTO '
           + '      ,SUM(CASE WHEN B.CODTIPRIE = ''02'' THEN ' + xsCampo + ' ELSE 0 END) MEDIO '
           + '      ,SUM(CASE WHEN B.CODTIPRIE = ''03'' THEN ' + xsCampo + ' ELSE 0 END) BAJO '
           + '      ,SUM(CASE WHEN B.CODTIPRIE IN (''00'', ''01'', ''02'', ''03'') THEN ' + xsCampo + ' ELSE 0 END) TOTAL '
           + '  FROM GES_COB_DIS_OPE_CAB A, GES_COB_UNI_CAR_GTT B '
           + ' WHERE A.CODDISOPE = B.CODDISOPE(+) '
           + '   AND ' + QuotedStr(cboPeriodoCartera.Text) + ' = B.PERIODO(+) '
           + ' GROUP BY A.DISOPE, A.ORDEN '
           + ' ORDER BY A.ORDEN ';
   DM1.cdsQry2.close();
   DM1.cdsQry2.datarequest(xsSQL);
   DM1.cdsQry2.open();
   dbgACADOIdentificados.datasource := DM1.dsQry2;
   fn_pintar_grid_ACADO(dbgACADOIdentificados);

   xsSQL := 'SELECT ''ASIGNADOS'' ESTADO_ASIGNACION '
          + '      ,A.DISOPE '
          + '      ,SUM(CASE WHEN B.CODTIPRIE = ''00'' THEN ' + xsCampo + ' ELSE 0 END) BORDER_LINE '
          + '      ,SUM(CASE WHEN B.CODTIPRIE = ''01'' THEN ' + xsCampo + ' ELSE 0 END) ALTO '
          + '      ,SUM(CASE WHEN B.CODTIPRIE = ''02'' THEN ' + xsCampo + ' ELSE 0 END) MEDIO '
          + '      ,SUM(CASE WHEN B.CODTIPRIE = ''03'' THEN ' + xsCampo + ' ELSE 0 END) BAJO '
          + '      ,SUM(CASE WHEN B.CODTIPRIE IN (''00'', ''01'', ''02'', ''03'') THEN ' + xsCampo + ' ELSE 0 END) TOTAL '
          + '  FROM GES_COB_DIS_OPE_CAB A, GES_COB_UNI_CAR_GTT B '
          + ' WHERE A.CODDISOPE = B.CODDISOPE(+) '
          + '   AND ' + QuotedStr(cboPeriodoCartera.Text) + ' = B.PERIODO(+) '
          + '   AND         ''S'' = B.ASIGNADO(+) '
          + ' GROUP BY A.DISOPE, A.ORDEN '
          + ' ORDER BY A.ORDEN ';
   DM1.cdsQry3.close();
   DM1.cdsQry3.datarequest(xsSQL);
   DM1.cdsQry3.open();
   dbgACADOAsignados.datasource := DM1.dsQry3;
   fn_pintar_grid_ACADO(dbgACADOAsignados);

   xsSQL := 'SELECT ''NO ASIGNADOS'' ESTADO_ASIGNACION '
           + '      ,A.DISOPE '
           + '      ,SUM(CASE WHEN B.CODTIPRIE = ''00'' THEN ' + xsCampo + ' ELSE 0 END) BORDER_LINE '
           + '      ,SUM(CASE WHEN B.CODTIPRIE = ''01'' THEN ' + xsCampo + ' ELSE 0 END) ALTO '
           + '      ,SUM(CASE WHEN B.CODTIPRIE = ''02'' THEN ' + xsCampo + ' ELSE 0 END) MEDIO '
           + '      ,SUM(CASE WHEN B.CODTIPRIE = ''03'' THEN ' + xsCampo + ' ELSE 0 END) BAJO '
           + '      ,SUM(CASE WHEN B.CODTIPRIE IN (''00'', ''01'', ''02'', ''03'') THEN ' + xsCampo + ' ELSE 0 END) TOTAL '
           + '  FROM GES_COB_DIS_OPE_CAB A, GES_COB_UNI_CAR_GTT B '
           + ' WHERE A.CODDISOPE = B.CODDISOPE(+) '
           + '   AND ' + QuotedStr(cboPeriodoCartera.Text) + ' = B.PERIODO(+) '
           + '   AND       ''N'' = B.ASIGNADO(+) '
           + ' GROUP BY A.DISOPE, A.ORDEN '
           + ' ORDER BY A.ORDEN ';
   DM1.cdsQry4.close;
   DM1.cdsQry4.datarequest(xsSQL);
   DM1.cdsQry4.open;
   dbgACADONoAsignados.datasource := DM1.dsQry4;
   fn_pintar_grid_ACADO(dbgACADONoAsignados);
   Screen.Cursor := crDefault;
end;

(******************************************************************************)
function TFDisAsiCar.fn_get_sql_CCC_cab(pbSubTotales : boolean): string;
var xsSQL : string;
begin
  if pbSubTotales then
  begin
    case rgCCCLugar.ItemIndex of
     0 : begin
         xsSQL := 'SELECT TOTAL, SUBTOTAL, DISTRIBUCION_OPERATIVA_ORDEN, '
                + '       LUGAR, DISTRIBUCION_OPERATIVA, CANTIDAD, ASIGNADO, NO_ASIGNADO, '
                + '       SALDO_TOTAL, SALDO_VENCIDO, SALDO_TOTAL_ASIGNADO, SALDO_VENCIDO_ASIGNADO, '
                + '       SALDO_TOTAL_NO_ASIGNADO, SALDO_VENCIDO_NO_ASIGNADO '
                + 'FROM (SELECT GROUPING(C.DPTODES) TOTAL, '
                + '             GROUPING(A.DISOPEAMP) SUBTOTAL, '
                + '             C.DPTODES LUGAR, '
                + '             CASE WHEN GROUPING(C.DPTODES) = 1   THEN ''TOTAL'' '
                + '                  WHEN GROUPING(A.DISOPEAMP) = 1 THEN ''SUB TOTAL'' '
                + '                  ELSE A.DISOPEAMP '
                + '             END DISTRIBUCION_OPERATIVA, '
                + '             CASE WHEN GROUPING(C.DPTODES) = 1   THEN 10000 '
                + '                  WHEN GROUPING(A.DISOPEAMP) = 1 THEN  1000 '
                + '                  ELSE MAX(A.ORDEN) '
                + '              END DISTRIBUCION_OPERATIVA_ORDEN, '
                + '             SUM(CASE WHEN B.ASOID IS NOT NULL THEN 1 ELSE 0 END) CANTIDAD, '
                + '             SUM(CASE WHEN B.ASIGNADO = ''S'' THEN 1 ELSE 0 END) ASIGNADO, '
                + '             SUM(CASE WHEN B.ASIGNADO = ''N'' THEN 1 ELSE 0 END) NO_ASIGNADO, '
                + '             SUM(NVL(B.SALTOT,0)) SALDO_TOTAL, '
                + '             SUM(NVL(B.SALVEN,0)) SALDO_VENCIDO, '
                + '             SUM(NVL(B.SALTOTASIG,0)) SALDO_TOTAL_ASIGNADO, '
                + '             SUM(NVL(B.SALVENASIG,0)) SALDO_VENCIDO_ASIGNADO, '
                + '             SUM(NVL(B.SALTOTNOASIG,0)) SALDO_TOTAL_NO_ASIGNADO, '
                + '             SUM(NVL(B.SALVENNOASIG,0)) SALDO_VENCIDO_NO_ASIGNADO '
                + '        FROM GES_COB_DIS_OPE_AMP_CAB A '
                + '            ,GES_COB_UNI_CAR_GTT B '
                + '            ,TGE158 C '
                + '       WHERE A.CODDISOPEAMP = B.CODDISOPEAMP(+) '
                + '         AND ' + QuotedStr(cboPeriodoCartera.Text)+ ' = B.PERIODO(+) '
                + '         AND B.DPTOID = C.DPTOID(+) '
                + '      GROUP BY ROLLUP(C.DPTODES, A.DISOPEAMP) '
                + '     ) '
                + ' WHERE TOTAL = 0 '
                + ' ORDER BY LUGAR, DISTRIBUCION_OPERATIVA_ORDEN ';
         end;
     1 : begin
         xsSQL := 'SELECT TOTAL, SUBTOTAL, DISTRIBUCION_OPERATIVA_ORDEN, '
                + '       LUGAR, DISTRIBUCION_OPERATIVA, CANTIDAD, ASIGNADO, NO_ASIGNADO, '
                + '       SALDO_TOTAL, SALDO_VENCIDO, SALDO_TOTAL_ASIGNADO, SALDO_VENCIDO_ASIGNADO, '
                + '       SALDO_TOTAL_NO_ASIGNADO, SALDO_VENCIDO_NO_ASIGNADO '
                + ' FROM (SELECT GROUPING(D.OFDESNOM) TOTAL, '
                + '              GROUPING(A.DISOPEAMP) SUBTOTAL, '
                + '              D.OFDESNOM LUGAR, '
                + '             CASE WHEN GROUPING(D.OFDESNOM) = 1   THEN ''TOTAL'' '
                + '                  WHEN GROUPING(A.DISOPEAMP) = 1 THEN ''SUB TOTAL'' '
                + '                  ELSE A.DISOPEAMP '
                + '             END DISTRIBUCION_OPERATIVA, '
                + '             CASE WHEN GROUPING(D.OFDESNOM) = 1   THEN 10000 '
                + '                  WHEN GROUPING(A.DISOPEAMP) = 1 THEN  1000 '
                + '                  ELSE MAX(A.ORDEN) '
                + '              END DISTRIBUCION_OPERATIVA_ORDEN, '
                + '             SUM(CASE WHEN B.ASOID IS NOT NULL THEN 1 ELSE 0 END) CANTIDAD, '
                + '             SUM(CASE WHEN B.ASIGNADO = ''S'' THEN 1 ELSE 0 END) ASIGNADO, '
                + '             SUM(CASE WHEN B.ASIGNADO = ''N'' THEN 1 ELSE 0 END) NO_ASIGNADO, '
                + '             SUM(NVL(B.SALTOT,0)) SALDO_TOTAL, '
                + '             SUM(NVL(B.SALVEN,0)) SALDO_VENCIDO, '
                + '             SUM(NVL(B.SALTOTASIG,0)) SALDO_TOTAL_ASIGNADO, '
                + '             SUM(NVL(B.SALVENASIG,0)) SALDO_VENCIDO_ASIGNADO, '
                + '             SUM(NVL(B.SALTOTNOASIG,0)) SALDO_TOTAL_NO_ASIGNADO, '
                + '             SUM(NVL(B.SALVENNOASIG,0)) SALDO_VENCIDO_NO_ASIGNADO '
                + '        FROM GES_COB_DIS_OPE_AMP_CAB A '
                + '            ,GES_COB_UNI_CAR_GTT B '
                + '            ,APO110 D '
                + '       WHERE A.CODDISOPEAMP = B.CODDISOPEAMP(+) '
                + '         AND ' + QuotedStr(cboPeriodoCartera.Text)+ ' = B.PERIODO(+) '
                + '         AND B.OFDESID = D.OFDESID(+) '
                + '      GROUP BY ROLLUP(D.OFDESNOM, A.DISOPEAMP) '
                + '     ) '
                + ' WHERE TOTAL = 0 '
                + ' ORDER BY LUGAR, DISTRIBUCION_OPERATIVA_ORDEN ';
         end;
    end;
  end
  else
  begin
    case rgCCCLugar.ItemIndex of
      0 : begin
           xsSQL := 'SELECT C.DPTODES LUGAR, A.DISOPEAMP DISTRIBUCION_OPERATIVA, '
                  + '       SUM(CASE WHEN B.ASOID IS NOT NULL THEN 1 ELSE 0 END) CANTIDAD, '
                  + '       SUM(CASE WHEN B.ASIGNADO = ''S'' THEN 1 ELSE 0 END) ASIGNADO, '
                  + '       SUM(CASE WHEN B.ASIGNADO = ''N'' THEN 1 ELSE 0 END) NO_ASIGNADO, '
                  + '       SUM(NVL(B.SALTOT,0)) SALDO_TOTAL, '
                  + '       SUM(NVL(B.SALVEN,0)) SALDO_VENCIDO, '
                  + '       SUM(NVL(B.SALTOTASIG,0)) SALDO_TOTAL_ASIGNADO, '
                  + '       SUM(NVL(B.SALVENASIG,0)) SALDO_VENCIDO_ASIGNADO, '
                  + '       SUM(NVL(B.SALTOTNOASIG,0)) SALDO_TOTAL_NO_ASIGNADO, '
                  + '       SUM(NVL(B.SALVENNOASIG,0)) SALDO_VENCIDO_NO_ASIGNADO '
                  + '  FROM GES_COB_DIS_OPE_AMP_CAB A, GES_COB_UNI_CAR_GTT B, TGE158 C '
                  + ' WHERE A.CODDISOPEAMP = B.CODDISOPEAMP(+) '
                  + '   AND '+QuotedStr(cboPeriodoCartera.Text)+ ' = B.PERIODO(+) '
                  + '   AND B.DPTOID = C.DPTOID(+) '
                  + 'GROUP BY C.DPTODES, A.DISOPEAMP, A.ORDEN '
                  + 'ORDER BY C.DPTODES, A.ORDEN ';
          end;
      1 : begin
           xsSQL := 'SELECT D.OFDESNOM LUGAR, A.DISOPEAMP DISTRIBUCION_OPERATIVA, '
                  + '       SUM(CASE WHEN B.ASOID IS NOT NULL THEN 1 ELSE 0 END) CANTIDAD, '
                  + '       SUM(CASE WHEN B.ASIGNADO = ''S'' THEN 1 ELSE 0 END) ASIGNADO, '
                  + '       SUM(CASE WHEN B.ASIGNADO = ''N'' THEN 1 ELSE 0 END) NO_ASIGNADO, '
                  + '       SUM(NVL(B.SALTOT,0)) SALDO_TOTAL, '
                  + '       SUM(NVL(B.SALVEN,0)) SALDO_VENCIDO, '
                  + '       SUM(NVL(B.SALTOTASIG,0)) SALDO_TOTAL_ASIGNADO, '
                  + '       SUM(NVL(B.SALVENASIG,0)) SALDO_VENCIDO_ASIGNADO, '
                  + '       SUM(NVL(B.SALTOTNOASIG,0)) SALDO_TOTAL_NO_ASIGNADO, '
                  + '       SUM(NVL(B.SALVENNOASIG,0)) SALDO_VENCIDO_NO_ASIGNADO '
                  + '  FROM GES_COB_DIS_OPE_AMP_CAB A, GES_COB_UNI_CAR_GTT B, APO110 D '
                  + ' WHERE A.CODDISOPEAMP = B.CODDISOPEAMP(+) '
                  + '   AND '+QuotedStr(cboPeriodoCartera.Text)+ ' = B.PERIODO(+) '
                  + '   AND B.OFDESID = D.OFDESID(+) '
                  + 'GROUP BY D.OFDESNOM, A.DISOPEAMP, A.ORDEN '
                  + 'ORDER BY D.OFDESNOM, A.ORDEN ';
          end;
    end;
  end;
  result := xsSQL;
end;
(******************************************************************************)
procedure TFDisAsiCar.fn_cargar_CCC();
var xsSQL : string;
    xnCANTIDAD : integer;
    xnASIGNADO : integer;
    xnNO_ASIGNADO : integer;
    xnSALDO_TOTAL : double;
    xnSALDO_VENCIDO : double;
    xnSALDO_TOTAL_ASIGNADO : double;
    xnSALDO_VENCIDO_ASIGNADO : double;
    xnSALDO_TOTAL_NO_ASIGNADO : double;
    xnSALDO_VENCIDO_NO_ASIGNADO : double;
begin
   Screen.Cursor := crHourGlass;
   xsSQL := fn_get_sql_CCC_cab(True);
   DM1.cdsQry5.close;
   DM1.cdsQry5.datarequest(xsSQL);
   DM1.cdsQry5.open;
   dbgCCC.datasource := DM1.dsQry5;

   WITH dbgCCC, dbgCCC.DataSource.DataSet DO
      BEGIN
        GroupFieldName := 'LUGAR';
        Selected.Clear;
        Selected.Add('LUGAR'#9'15'#9'LUGAR');
        Selected.Add('DISTRIBUCION_OPERATIVA'#9'20'#9'DISTRIBUCION~OPERATIVA');
        Selected.Add('CANTIDAD'#9'12'#9'CANTIDAD'#9'F'#9'DEUDORES');
        Selected.Add('ASIGNADO'#9'12'#9'ASIGNADOS'#9'F'#9'DEUDORES');
        Selected.Add('NO_ASIGNADO'#9'12'#9'NO~ASIGNADOS'#9'F'#9'DEUDORES');
        Selected.Add('SALDO_TOTAL'#9'17'#9'TOTAL'#9'F'#9'SALDOS TOTALES');
        Selected.Add('SALDO_VENCIDO'#9'17'#9'VENCIDO'#9'F'#9'SALDOS TOTALES');
        Selected.Add('SALDO_TOTAL_ASIGNADO'#9'17'#9'TOTAL'#9'F'#9'SALDOS ASIGNADOS');
        Selected.Add('SALDO_VENCIDO_ASIGNADO'#9'17'#9'VENCIDO'#9'F'#9'SALDOS ASIGNADOS');
        Selected.Add('SALDO_TOTAL_NO_ASIGNADO'#9'17'#9'TOTAL'#9'F'#9'SALDOS NO ASIGNADOS');
        Selected.Add('SALDO_VENCIDO_NO_ASIGNADO'#9'17'#9'VENCIDO'#9'F'#9'SALDOS NO ASIGNADOS');
        ApplySelected;

        TNumericField(FieldByName('CANTIDAD')).DisplayFormat := '###,##0';
        TNumericField(FieldByName('ASIGNADO')).DisplayFormat := '###,##0';
        TNumericField(FieldByName('NO_ASIGNADO')).DisplayFormat := '###,##0';
        TNumericField(FieldByName('SALDO_TOTAL')).DisplayFormat := '###,##0.#0';
        TNumericField(FieldByName('SALDO_VENCIDO')).DisplayFormat := '###,##0.#0';
        TNumericField(FieldByName('SALDO_TOTAL_ASIGNADO')).DisplayFormat := '###,##0.#0';
        TNumericField(FieldByName('SALDO_VENCIDO_ASIGNADO')).DisplayFormat := '###,##0.#0';
        TNumericField(FieldByName('SALDO_TOTAL_NO_ASIGNADO')).DisplayFormat := '###,##0.#0';
        TNumericField(FieldByName('SALDO_VENCIDO_NO_ASIGNADO')).DisplayFormat := '###,##0.#0';

        xnCANTIDAD := 0;
        xnASIGNADO := 0;
        xnNO_ASIGNADO := 0;
        xnSALDO_TOTAL := 0;
        xnSALDO_VENCIDO := 0;
        xnSALDO_TOTAL_ASIGNADO := 0;
        xnSALDO_VENCIDO_ASIGNADO := 0;
        xnSALDO_TOTAL_NO_ASIGNADO := 0;
        xnSALDO_VENCIDO_NO_ASIGNADO := 0;
        first;
        while not eof do
        begin
          if FieldByName('SUBTOTAL').Value = 0 then
          begin
            xnCANTIDAD := xnCANTIDAD + FieldByName('CANTIDAD').Value;
            xnASIGNADO := xnASIGNADO + FieldByName('ASIGNADO').Value;
            xnNO_ASIGNADO := xnNO_ASIGNADO + FieldByName('NO_ASIGNADO').Value;
            xnSALDO_TOTAL := xnSALDO_TOTAL + FieldByName('SALDO_TOTAL').Value;
            xnSALDO_VENCIDO := xnSALDO_VENCIDO + FieldByName('SALDO_VENCIDO').Value;
            xnSALDO_TOTAL_ASIGNADO := xnSALDO_TOTAL_ASIGNADO + FieldByName('SALDO_TOTAL_ASIGNADO').Value;
            xnSALDO_VENCIDO_ASIGNADO := xnSALDO_VENCIDO_ASIGNADO + FieldByName('SALDO_VENCIDO_ASIGNADO').Value;
            xnSALDO_TOTAL_NO_ASIGNADO := xnSALDO_TOTAL_NO_ASIGNADO + FieldByName('SALDO_TOTAL_NO_ASIGNADO').Value;
            xnSALDO_VENCIDO_NO_ASIGNADO := xnSALDO_VENCIDO_NO_ASIGNADO + FieldByName('SALDO_VENCIDO_NO_ASIGNADO').Value;
          end;
          next;
        end;
        first;

        ColumnByName('DISTRIBUCION_OPERATIVA').FooterValue := 'TOTAL GENERAL';
        ColumnByName('CANTIDAD').FooterValue                  := FormatCurr('###,##0'   , xnCANTIDAD);
        ColumnByName('ASIGNADO').FooterValue                  := FormatCurr('###,##0'   , xnASIGNADO);
        ColumnByName('NO_ASIGNADO').FooterValue               := FormatCurr('###,##0'   , xnNO_ASIGNADO);
        ColumnByName('SALDO_TOTAL').FooterValue               := FormatCurr('###,##0.#0', xnSALDO_TOTAL);
        ColumnByName('SALDO_VENCIDO').FooterValue             := FormatCurr('###,##0.#0', xnSALDO_VENCIDO);
        ColumnByName('SALDO_TOTAL_ASIGNADO').FooterValue      := FormatCurr('###,##0.#0', xnSALDO_TOTAL_ASIGNADO);
        ColumnByName('SALDO_VENCIDO_ASIGNADO').FooterValue    := FormatCurr('###,##0.#0', xnSALDO_VENCIDO_ASIGNADO);
        ColumnByName('SALDO_TOTAL_NO_ASIGNADO').FooterValue   := FormatCurr('###,##0.#0', xnSALDO_TOTAL_NO_ASIGNADO);
        ColumnByName('SALDO_VENCIDO_NO_ASIGNADO').FooterValue := FormatCurr('###,##0.#0', xnSALDO_VENCIDO_NO_ASIGNADO);
   END;
   Screen.Cursor := crDefault;
end;

(******************************************************************************)
procedure TFDisAsiCar.btnExportarClick(Sender: TObject);
VAR xsSQL: string;
    xxExcApp: OleVariant;
begin
  if cboPeriodoCartera.Text <> '' then
  begin
      Screen.Cursor := crHourGlass;
      try
        IF pcGeneral.ActivePage = tsACADO THEN
        BEGIN
          xsSQL := 'SELECT B.ASOCODMOD CODIGO_MODULAR ,B.ASODNI DNI, B.ASOAPENOMDNI APELLIDOS_NOMBRES '
                 + '       ,K.RESUMECLAS CALIFICACION_CARTERA, C.DPTODES DEPARTAMENTO_DOM, D.CIUDDES PROVINCIA_DOM '
                 + '       ,E.ZIPDES DISTRITO_DOM, F.DPTODES DEPARTAMENTO_COL, G.CIUDDES PROVINCIA_COL '
                 + '       ,H.ZIPDES DISTRITO_COL, J.TIPRIE DISTRIBUCION_ESTRATEGICA, I.DISOPE DISTRIBUCION_OPERATIVA '
                 + '       ,A.SALVEN SALDO_VENCIDO, A.SALTOT SALDO_TOTAL, A.ASIGNADO ,A.GESTOR '
                 + '  FROM GES_COB_UNI_CAR_GTT A, APO201 B, TGE158 C, TGE121 D, TGE122 E, TGE158 F, TGE121 G '
                 + '      ,TGE122 H, GES_COB_DIS_OPE_CAB I, GES_COB_TIP_RIE_CAB J, COB113 K '
                 + ' WHERE A.PERIODO = ' + QuotedStr(cboPeriodoCartera.Text)
                 + '   AND A.ASOID = B.ASOID(+) '
                 + '   AND SUBSTR(A.ZIPIDDOM,1,2) = C.DPTOID(+) '
                 + '   AND SUBSTR(A.ZIPIDDOM,1,4) = D.DPTOID(+)||D.CIUDID(+) '
                 + '   AND SUBSTR(A.ZIPIDDOM,1,6) = E.DPTOID(+)||E.CIUDID(+)||E.ZIPID(+) '
                 + '   AND SUBSTR(A.ZIPIDCOL,1,2) = F.DPTOID(+) '
                 + '   AND SUBSTR(A.ZIPIDCOL,1,4) = G.DPTOID(+)||G.CIUDID(+) '
                 + '   AND SUBSTR(A.ZIPIDCOL,1,6) = H.DPTOID(+)||H.CIUDID(+)||H.ZIPID(+) '
                 + '   AND A.CODDISOPE = I.CODDISOPE(+) '
                 + '   AND A.CODTIPRIE = J.CODTIPRIE(+) '
                 + '   AND A.CFC_F = K.RESUMEID(+) ' ;
          DM1.cdsQry.Close;
          DM1.cdsQry.DataRequest(xsSQL);
          DM1.cdsQry.Open;

          xxExcApp := DM1.fn_ExpXLS(dbgACADOIdentificados.DataSource.DataSet, 'ACADOIDEN');
          DM1.fn_ExpXLS(dbgACADOAsignados.DataSource.DataSet, 'ACADOASIG', xxExcApp);
          DM1.fn_ExpXLS(dbgACADONoAsignados.DataSource.DataSet, 'ACADONOASIG', xxExcApp);
          DM1.fn_ExpXLSLong(DM1.dsQry.DataSet, 'C:\SOLExes\ACADO_DET'+cboPeriodoCartera.Text+'.TXT');// para exportar grandes cantidades, primero se exporta a txt y luego se carga con el excel
        END;

        IF pcGeneral.ActivePage = tsCCC THEN
        BEGIN
            //CABECERA
            xsSQL := fn_get_sql_CCC_cab(false);
            DM1.cdsQry.Close;
            DM1.cdsQry.DataRequest(xsSQL);
            DM1.cdsQry.Open;
            DM1.fn_ExpXLSLong(DM1.dsQry.DataSet, 'C:\SOLExes\CCC_CAB'+cboPeriodoCartera.Text+'.TXT');// para exportar grandes cantidades, primero se exporta a txt y luego se carga con el excel

            // DETALLE
            xsSQL := 'SELECT A.ASIGNADO, B.ASOCODMOD CODIGO_MODULAR ,B.ASODNI DNI, B.ASOAPENOMDNI APELLIDOS_NOMBRES '
                   + '       ,K.RESUMECLAS CALIFICACION_CARTERA, L.OFDESNOM OFICINA '
                   + '       ,C.DPTODES DEPARTAMENTO_DOM, D.CIUDDES PROVINCIA_DOM '
                   + '       ,E.ZIPDES DISTRITO_DOM, F.DPTODES DEPARTAMENTO_COL, G.CIUDDES PROVINCIA_COL '
                   + '       ,H.ZIPDES DISTRITO_COL, J.TIPRIE DISTRIBUCION_ESTRATEGICA, I.DISOPE DISTRIBUCION_OPERATIVA '
                   + '       ,A.SALVEN SALDO_VENCIDO, A.SALTOT SALDO_TOTAL '
                   + '  FROM GES_COB_UNI_CAR_GTT A, APO201 B, TGE158 C, TGE121 D, TGE122 E, TGE158 F, TGE121 G '
                   + '      ,TGE122 H, GES_COB_DIS_OPE_CAB I, GES_COB_TIP_RIE_CAB J, COB113 K, APO110 L '
                   + ' WHERE A.PERIODO = ' + QuotedStr(cboPeriodoCartera.Text)
                   + '   AND A.ASOID = B.ASOID(+) '
                   + '   AND SUBSTR(A.ZIPIDDOM,1,2) = C.DPTOID(+) '
                   + '   AND SUBSTR(A.ZIPIDDOM,1,4) = D.DPTOID(+)||D.CIUDID(+) '
                   + '   AND SUBSTR(A.ZIPIDDOM,1,6) = E.DPTOID(+)||E.CIUDID(+)||E.ZIPID(+) '
                   + '   AND SUBSTR(A.ZIPIDCOL,1,2) = F.DPTOID(+) '
                   + '   AND SUBSTR(A.ZIPIDCOL,1,4) = G.DPTOID(+)||G.CIUDID(+) '
                   + '   AND SUBSTR(A.ZIPIDCOL,1,6) = H.DPTOID(+)||H.CIUDID(+)||H.ZIPID(+) '
                   + '   AND A.CODDISOPE = I.CODDISOPE(+) '
                   + '   AND A.CODTIPRIE = J.CODTIPRIE(+) '
                   + '   AND A.CFC_F = K.RESUMEID(+) '
                   + '   AND A.OFDESID = L.OFDESID(+) ';
            DM1.cdsQry.Close;
            DM1.cdsQry.DataRequest(xsSQL);
            DM1.cdsQry.Open;
            DM1.fn_ExpXLSLong(DM1.dsQry.DataSet, 'C:\SOLExes\CCC_DET'+cboPeriodoCartera.Text+'.TXT'); // para exportar grandes cantidades, primero se exporta a txt y luego se carga con el excel
        END;
      finally
        Screen.Cursor := crDefault;
      end;
  end;
end;

(******************************************************************************)
procedure TFDisAsiCar.btnImprimirClick(Sender: TObject);
VAR xsSQL : string;
    xnWidth :integer;
    xnHeight : integer;
    xnTop : integer;
    xnLeft : integer;

begin
  if cboPeriodoCartera.Text <> '' then
  begin
      IF pcGeneral.ActivePage = tsACADO THEN
      BEGIN
        xnWidth := self.Width;
        xnHeight := self.Height;
        xnTop := self.Top;
        xnLeft := self.Left;

        self.Width :=  780;
        self.Height := 640;
        self.Repaint;

        DM1.fn_grabar_img_panel(imgCapturarPanel, pnlACADO, 'ACADO.BMP');
        ppImgReporte.Picture := nil;
        ppImgReporte.Picture.LoadFromFile('ACADO.BMP');

        self.Width := xnWidth;
        self.Height := xnHeight;
        self.Top := xnTop;
        self.Left := xnLeft;
        
        ppLblTit01.Caption := 'Análisis y control de asignación por distribución operativa';
        ppLblTit02.Caption := 'Periodo de Gestión : "' + cboPeriodoCartera.Text + '"  Tipo de Consulta : "' + rgACADOTipoReporte.Items[rgACADOTipoReporte.ItemIndex] + '"';
        ppLblUser.Caption  := 'Emitido Por :  ' + Trim(DM1.CrgDescrip('USERID=' + QuotedStr(Trim(DM1.wUsuario)), 'TGE006', 'USERNOM'));
        rptACADO.Print;
      END;
      IF pcGeneral.ActivePage = tsCCC THEN
      BEGIN
        MessageDlg('EL DAF SOLO PIDE EXPORTAR A EXCEL!!!', mtInformation, [mbOk], 0);
        exit;
        xsSQL := fn_get_sql_CCC_cab(false);
        DM1.cdsQry6.Close;
        DM1.cdsQry6.DataRequest(xsSQL);
        DM1.cdsQry6.Open;
        dbRptCCC.DataSource := DM1.dsQry6;
        ppLblTit01CCC.Caption := 'Análisis y control de asignación por distribución operativa';
        ppLblTit02CCC.Caption := 'Periodo de Gestión : "' + cboPeriodoCartera.Text + '"  Tipo de Consulta : "' + rgCCCLugar.Items[rgCCCLugar.ItemIndex] + '"';
        ppLblUserCCC.Caption  := 'Emitido Por :  ' + Trim(DM1.CrgDescrip('USERID=' + QuotedStr(Trim(DM1.wUsuario)), 'TGE006', 'USERNOM'));
        desRptTodos.Report := rptCCC;
        desRptTodos.ShowModal;
      END;
  end;

end;

(******************************************************************************)
procedure TFDisAsiCar.dbgCCCDrawDataCell(Sender: TObject;
  const Rect: TRect; Field: TField; State: TGridDrawState);
begin
   If (TwwDBGrid(Sender).DataSource.DataSet.FieldByName('SUBTOTAL').Value = 1)
      AND NOT(Field.FieldName = 'LUGAR') Then
      Begin
         IF (Field.FieldName = 'SALDO_TOTAL') OR (Field.FieldName = 'SALDO_VENCIDO') THEN
           TwwDBGrid(Sender).Canvas.Brush.Color := $00FFBBDD
         ELSE IF (Field.FieldName = 'SALDO_TOTAL_ASIGNADO') OR (Field.FieldName = 'SALDO_VENCIDO_ASIGNADO') THEN
           TwwDBGrid(Sender).Canvas.Brush.Color := $00FFCC62
         ELSE IF (Field.FieldName = 'SALDO_TOTAL_NO_ASIGNADO') OR (Field.FieldName = 'SALDO_VENCIDO_NO_ASIGNADO') THEN
           TwwDBGrid(Sender).Canvas.Brush.Color := $009BCDFF
         ELSE
           TwwDBGrid(Sender).Canvas.Brush.Color := $00F4F4EA;
         TwwDBGrid(Sender).DefaultDrawDataCell(rect, Field, State);
      End;
end;
(******************************************************************************)
procedure TFDisAsiCar.dbgCCCDrawFooterCell(Sender: TObject;
  Canvas: TCanvas; FooterCellRect: TRect; Field: TField;
  FooterText: String; var DefaultDrawing: Boolean);
begin
  IF (Field.FieldName = 'SALDO_TOTAL') OR (Field.FieldName = 'SALDO_VENCIDO') THEN
      TwwDBGrid(Sender).Canvas.Brush.Color := $00FFBBDD
  ELSE IF (Field.FieldName = 'SALDO_TOTAL_ASIGNADO') OR (Field.FieldName = 'SALDO_VENCIDO_ASIGNADO') THEN
      TwwDBGrid(Sender).Canvas.Brush.Color := $00FFCC62
  ELSE IF (Field.FieldName = 'SALDO_TOTAL_NO_ASIGNADO') OR (Field.FieldName = 'SALDO_VENCIDO_NO_ASIGNADO') THEN
      TwwDBGrid(Sender).Canvas.Brush.Color := $009BCDFF;
  TwwDBGrid(Sender).Canvas.Font.Style := [fsBold];
end;
(******************************************************************************)
procedure TFDisAsiCar.dbgCCCDrawTitleCell(Sender: TObject; Canvas: TCanvas;
  Field: TField; Rect: TRect; var DefaultDrawing: Boolean);
begin
  IF (Field.FieldName = 'SALDO_TOTAL') OR (Field.FieldName = 'SALDO_VENCIDO') THEN
      TwwDBGrid(Sender).Canvas.Brush.Color := $00FFBBDD
  ELSE IF (Field.FieldName = 'SALDO_TOTAL_ASIGNADO') OR (Field.FieldName = 'SALDO_VENCIDO_ASIGNADO') THEN
      TwwDBGrid(Sender).Canvas.Brush.Color := $00FFCC62
  ELSE IF (Field.FieldName = 'SALDO_TOTAL_NO_ASIGNADO') OR (Field.FieldName = 'SALDO_VENCIDO_NO_ASIGNADO') THEN
      TwwDBGrid(Sender).Canvas.Brush.Color := $009BCDFF;
end;
(******************************************************************************)
end.