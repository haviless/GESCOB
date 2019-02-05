// Inicio Uso Estándares: 01/08/2011
// Unidad : Gestión de Cobranzas
// Formulario : FResultadosGestion
// Fecha de Creación : 21/10/2014
// Autor : Equipo de Sistemas
// Objetivo : Medir el impacto de la gestion de cobranza
// Actualizaciones:
// HPC_201403_GESCOB :  Histórico de ingresos por contacto efectivo(2.3)
// SPP_201404_GESCOB: Se realiza el pase a producción a partir del HPC_201403_GESCOB

unit GES570;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, wwdblook, Grids, Wwdbigrd, Wwdbgrid, db,
  TeEngine, Series, TeeProcs, Chart, DbChart, ppEndUsr, ppDB, ppDBPipe,
  ppParameter, ppBands, ppVar, ppCtrls, ppPrnabl, ppClass, ppCache, ppComm,
  ppRelatv, ppProd, ppReport, ppStrtch, ppSubRpt;

type
  TFHistoricoIngresos = class(TForm)
    pnl1: TPanel;
    btnSalir: TBitBtn;
    pnlIzquierdoSuperior: TPanel;
    lbl1: TLabel;
    cboPeriodo: TwwDBLookupCombo;
    Label1: TLabel;
    cboTipoCartera: TwwDBLookupCombo;
    btnExportar: TBitBtn;
    btnProcesar: TBitBtn;
    pnlReporte: TPanel;
    pnlGraficoCantidad: TPanel;
    dbcCantidad: TDBChart;
    LineSeries3: TLineSeries;
    LineSeries4: TLineSeries;
    dbgCabecera_01: TwwDBGrid;
    Label2: TLabel;
    rptPrincipal: TppReport;
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
    ppDetailBand44: TppDetailBand;
    ppFooterBand36: TppFooterBand;
    ppLblUser: TppLabel;
    ppSummaryBand41: TppSummaryBand;
    ppParameterList1: TppParameterList;
    dbRptPrincipal: TppDBPipeline;
    desRptTodos: TppDesigner;
    btnImprimir: TBitBtn;
    imgCapturarPanel: TImage;
    pnlGraficoMonto: TPanel;
    dbcMonto: TDBChart;
    LineSeries1: TLineSeries;
    LineSeries2: TLineSeries;
    dbgCabecera_02: TwwDBGrid;
    ppImgReporte01: TppImage;
    lblTituloPeriodo: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnSalirClick(Sender: TObject);
    procedure btnExportarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnProcesarClick(Sender: TObject);
    procedure cboPeriodoChange(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
  private
    procedure fn_cargar_grid(psLimpiar: string);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FHistoricoIngresos: TFHistoricoIngresos;

implementation

uses GESDM1, GES569;

{$R *.dfm}

(******************************************************************************)
procedure TFHistoricoIngresos.FormShow(Sender: TObject);
begin
   Screen.Cursor := crHourGlass;
   lblTituloPeriodo.Caption := '';
   // CARGAR TIPO DE CARTERA
   DM1.fn_cargar_tipo_cartera_combo(cboTipoCartera, DM1.cdsQry2);
   cboTipoCartera.Text := DM1.cdsQry2.fieldbyname('TIPCAR').asstring;

   // CARGAR PERIODO
   DM1.fn_cargar_periodos_combo(cboPeriodo, DM1.cdsQry1);
   cboPeriodo.Text := DM1.cdsQry1.fieldbyname('PERIODO').asstring;

   self.Resize;
   self.Repaint;
   Screen.Cursor := crDefault;
end;

(******************************************************************************)
procedure TFHistoricoIngresos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;
(******************************************************************************)

procedure TFHistoricoIngresos.btnSalirClick(Sender: TObject);
begin
  Close;
end;
(******************************************************************************)
procedure TFHistoricoIngresos.btnProcesarClick(Sender: TObject);
Var xsSQL : string;
begin
 if  (cboPeriodO.Text = '') or (cboTipoCartera.Text = '') then exit;
 Screen.Cursor := crHourGlass;
 WITH dbgCabecera_01 DO
  begin
    IF (cboPeriodo.Tag <> strtoint(cboPeriodo.Text)) THEN
    BEGIN
       xsSQL := 'DECLARE '
              + '   VS_PERIODO VARCHAR2(6); '
              + 'BEGIN '
              + '  VS_PERIODO ::= ' + QuotedStr(cboPeriodo.Text) + '; '
              + '  DELETE FROM GES_COB_UNI_IMP_COB_GTT; '
              + '  SP_GES_COB_GEN_UNI_IMP_COB(VS_PERIODO); '
              + '  SP_GES_COB_GEN_UNI_IMP_COB(TO_CHAR(ADD_MONTHS(TO_DATE(VS_PERIODO,''YYYYMM''), -1),''YYYYMM'')); '
              + '  SP_GES_COB_GEN_UNI_IMP_COB(TO_CHAR(ADD_MONTHS(TO_DATE(VS_PERIODO,''YYYYMM''), -2),''YYYYMM'')); '
              + '  SP_GES_COB_GEN_UNI_IMP_COB(TO_CHAR(ADD_MONTHS(TO_DATE(VS_PERIODO,''YYYYMM''), -3),''YYYYMM'')); '
              + '  SP_GES_COB_GEN_UNI_IMP_COB(TO_CHAR(ADD_MONTHS(TO_DATE(VS_PERIODO,''YYYYMM''), -4),''YYYYMM'')); '
              + '  SP_GES_COB_GEN_UNI_IMP_COB(TO_CHAR(ADD_MONTHS(TO_DATE(VS_PERIODO,''YYYYMM''), -5),''YYYYMM'')); '
              + 'END; ';
       DM1.DCOM1.AppServer.EjecutaSql(xsSQL);
       cboPeriodo.Tag := strtoint(cboPeriodo.Text);

       xsSQL := 'SELECT TO_CHAR(ADD_MONTHS(TO_DATE(' + QuotedStr(cboPeriodo.Text) + ',''YYYYMM''), -5),''YYYYMM'') PERIODO FROM DUAL';
       DM1.cdsQry.Close;
       DM1.cdsQry.DataRequest(xsSQL);
       DM1.cdsQry.Open;
       lblTituloPeriodo.Caption := 'Del ' +  DM1.cdsQry.fieldbyname('PERIODO').asstring + ' al ' + cboPeriodo.Text;

    END;
    fn_cargar_grid('');
  end;
 Screen.Cursor := crDefault;
end;
(******************************************************************************)
procedure TFHistoricoIngresos.fn_cargar_grid(psLimpiar : string);
Var xsSQL : string;
    xnEFECTIVO : Double;
    xnBANCO : Double;
    Procedure fn_formato_lineseries(wgSerie : TChartSeries; pnWidthPoint : integer);
    Begin
      wgSerie.Marks.Clip := True;
      wgSerie.Marks.Visible := False;
      TLineSeries(wgSerie).LinePen.Width := pnWidthPoint;
      TLineSeries(wgSerie).Pointer.HorizSize := 3;
      TLineSeries(wgSerie).Pointer.VertSize := 3;
      TLineSeries(wgSerie).Pointer.InflateMargins := True;
      TLineSeries(wgSerie).Pointer.Pen.Visible := False;
      TLineSeries(wgSerie).Pointer.Style := psRectangle;
      TLineSeries(wgSerie).Pointer.Visible := True;
    End;

    procedure fn_pintar_grafico_lineas(pxDBG : TwwDBGrid; pxDBChart: TDBChart; xsTitulo : String);
    begin
       with pxDBG, pxDBChart do
       begin
          Title.Text.Clear;
          Title.Text.Add(xsTitulo);
          Legend.Visible := true;
          View3D := false;
          SeriesList.Clear;

          AddSeries(TLineSeries.Create(self));
          Series[0].valueFormat := '##,###,##0';
          Series[0].Title := 'EFECTIVO';
          Series[0].SeriesColor := clRed;
          fn_formato_lineseries(Series[0], 3);

          AddSeries(TLineSeries.Create(self));
          Series[1].valueFormat := '##,###,##0';
          Series[1].Title := 'BANCO';
          Series[1].SeriesColor := clGreen;
          fn_formato_lineseries(Series[1], 3);

          AddSeries(TLineSeries.Create(self));
          Series[2].valueFormat := '##,###,##0';
          Series[2].Title := 'TOTAL';
          Series[2].SeriesColor := clBlue;
          fn_formato_lineseries(Series[2], 3);

          DataSource.DataSet.first;
          WHILE NOT DataSource.DataSet.EOF DO
          BEGIN
            Series[0].AddXY(DataSource.DataSet.RecNo, DataSource.DataSet.fieldbyname('EFECTIVO').Value, DataSource.DataSet.fieldbyname('MESES').Value);
            Series[1].AddXY(DataSource.DataSet.RecNo, DataSource.DataSet.fieldbyname('BANCO').Value, DataSource.DataSet.fieldbyname('MESES').Value);
            Series[2].AddXY(DataSource.DataSet.RecNo, DataSource.DataSet.fieldbyname('TOTAL').Value, DataSource.DataSet.fieldbyname('MESES').Value);
            DataSource.DataSet.Next;
          END;
          DataSource.DataSet.first;
       end;
    end;

    procedure fn_cargar_pintar_grid(pxDBG : TwwDBGrid; psTitulo : String; pxFormato : String);
    begin
      WITH pxDBG DO
      begin
          Selected.Clear;
          Selected.Add('MESES'#9'10'#9'MESES'#9'F'#9''+ psTitulo);
          Selected.Add('EFECTIVO'#9'15'#9'EFECTIVO'#9'F'#9''+ psTitulo);
          Selected.Add('BANCO'#9'15'#9'BANCO'#9'F'#9''+ psTitulo);
          Selected.Add('TOTAL'#9'15'#9'TOTAL'#9'F'#9''+ psTitulo);
          ApplySelected;

          xnEFECTIVO := 0;
          xnBANCO := 0;
          DataSource.DataSet.first;
          while not DataSource.DataSet.eof do
          begin
              xnEFECTIVO := xnEFECTIVO + DataSource.DataSet.FieldByName('EFECTIVO').Value;
              xnBANCO    := xnBANCO + DataSource.DataSet.FieldByName('BANCO').Value;
              DataSource.DataSet.next;
          end;

          TNumericField(DataSource.DataSet.FieldByName('EFECTIVO')).DisplayFormat := pxFormato;
          TNumericField(DataSource.DataSet.FieldByName('BANCO')).DisplayFormat    := pxFormato;
          TNumericField(DataSource.DataSet.FieldByName('TOTAL')).DisplayFormat    := pxFormato;

          ColumnByName('MESES').FooterValue  := 'TOTAL';
          ColumnByName('EFECTIVO').FooterValue := FormatCurr(pxFormato, xnEFECTIVO);
          ColumnByName('BANCO').FooterValue    := FormatCurr(pxFormato, xnBANCO);
          ColumnByName('TOTAL').FooterValue    := FormatCurr(pxFormato, xnEFECTIVO + xnBANCO);
          DataSource.DataSet.first;
       end;
    end;
begin
 if  (cboPeriodo.Text = '') or (cboTipoCartera.Text = '') then exit;
 Screen.Cursor := crHourGlass;
 DM1.cdsQry2.Locate('TIPCAR', VarArrayof([cboTipoCartera.Text]), []);
 xsSQL := 'SELECT PERIODO, MESES, EFECTIVO, BANCO, EFECTIVO + BANCO TOTAL '
        + '  FROM (SELECT A.PERIODO '
        + '              ,SUBSTR(TO_CHAR(TO_DATE(SUBSTR(A.PERIODO,5,2),''MM''),''MONTH'', ''NLS_DATE_LANGUAGE=SPANISH''),1,3) ||'' ''|| SUBSTR(A.PERIODO,1,4) MESES '
        + '              ,SUM(CASE WHEN NVL(B.MONCOBEFE, 0) > 0 THEN 1 ELSE 0 END) EFECTIVO '
        + '              ,SUM(CASE WHEN NVL(B.MONCOBBAN, 0) > 0 THEN 1 ELSE 0 END) BANCO '
        + '          FROM (SELECT TO_CHAR(ADD_MONTHS(TO_DATE(' + QuotedStr(cboPeriodo.Text) + ', ''YYYYMM''), 1 - LEVEL),''YYYYMM'') PERIODO '
        + '                  FROM DUAL '
        + '                CONNECT BY LEVEL BETWEEN 1 AND 6 '
        + '               )A ,GES_COB_UNI_IMP_COB_GTT B '
        + '         WHERE A.PERIODO = B.PERIODO(+) '
        + '           AND     ''S'' = B.ASIGNADO(+) '
        + '           AND     ''S'' = B.GESTIONADO(+) '
        + '           AND     ''S'' = B.CONTACTADO(+) '
        + '           AND     ''S'' = B.DIRECTO(+) '
        + '           AND (NVL(B.MONCOBEFE(+), 0) + NVL(B.MONCOBBAN(+), 0)) > 0 '
        + '           AND CASE WHEN ' + QuotedStr(DM1.cdsQry2.Fieldbyname('CODTIPCAR').AsString) + ' = ''00'' THEN B.CODTIPCAR(+) ELSE ' + QuotedStr(DM1.cdsQry2.Fieldbyname('CODTIPCAR').AsString) + ' END = B.CODTIPCAR(+)'
        +             psLimpiar
        + '         GROUP BY A.PERIODO)'
        + ' ORDER BY PERIODO';
 DM1.cdsQry3.Close;
 DM1.cdsQry3.DataRequest(xsSQL);
 DM1.cdsQry3.Open;
 dbgCabecera_01.DataSource := DM1.dsQry3;
 fn_cargar_pintar_grid(dbgCabecera_01, 'NÚMERO DE DEUDORES', '###,##0');

  xsSQL := 'SELECT PERIODO, MESES, EFECTIVO, BANCO, EFECTIVO + BANCO TOTAL '
        + '   FROM (SELECT A.PERIODO '
        + '               ,SUBSTR(TO_CHAR(TO_DATE(SUBSTR(A.PERIODO,5,2),''MM''),''MONTH'', ''NLS_DATE_LANGUAGE=SPANISH''),1,3) ||'' ''|| SUBSTR(A.PERIODO,1,4) MESES '
        + '               ,SUM(NVL(B.MONCOBEFE, 0)) EFECTIVO '
        + '               ,SUM(NVL(B.MONCOBBAN, 0)) BANCO '
        + '           FROM (SELECT TO_CHAR(ADD_MONTHS(TO_DATE(' + QuotedStr(cboPeriodo.Text) + ', ''YYYYMM''), 1 - LEVEL),''YYYYMM'') PERIODO '
        + '                   FROM DUAL '
        + '                 CONNECT BY LEVEL BETWEEN 1 AND 6 '
        + '                )A ,GES_COB_UNI_IMP_COB_GTT B '
        + '          WHERE A.PERIODO = B.PERIODO(+) '
        + '            AND     ''S'' = B.ASIGNADO(+) '
        + '            AND     ''S'' = B.GESTIONADO(+) '
        + '            AND     ''S'' = B.CONTACTADO(+) '
        + '            AND     ''S'' = B.DIRECTO(+) '
        + '            AND CASE WHEN ' + QuotedStr(DM1.cdsQry2.Fieldbyname('CODTIPCAR').AsString) + ' = ''00'' THEN B.CODTIPCAR(+) ELSE ' + QuotedStr(DM1.cdsQry2.Fieldbyname('CODTIPCAR').AsString) + ' END = B.CODTIPCAR(+)'
        + '            AND (NVL(B.MONCOBEFE(+), 0) + NVL(B.MONCOBBAN(+), 0)) > 0 '
        +              psLimpiar
        + '          GROUP BY A.PERIODO)'
        + ' ORDER BY PERIODO';
 DM1.cdsQry4.Close;
 DM1.cdsQry4.DataRequest(xsSQL);
 DM1.cdsQry4.Open;
 dbgCabecera_02.DataSource := DM1.dsQry4;
 fn_cargar_pintar_grid(dbgCabecera_02, 'MONTO EN SOLES',     '###,##0.#0');
 fn_pintar_grafico_lineas(dbgCabecera_01, dbcCantidad, 'Número de Deudores');
 fn_pintar_grafico_lineas(dbgCabecera_02, dbcMonto,    'Monto en Soles');
 Screen.Cursor := crDefault;
end;

(******************************************************************************)
procedure TFHistoricoIngresos.btnExportarClick(Sender: TObject);
VAR xxExcApp: OleVariant;
begin
   Screen.Cursor := crHourGlass;
   xxExcApp := DM1.fn_ExpXLS(dbgCabecera_01.DataSource.DataSet, 'HISING_CANT');
   DM1.fn_ExpXLS(dbgCabecera_02.DataSource.DataSet, 'HISING_MONT', xxExcApp);
   Screen.Cursor := crDefault;
end;
(******************************************************************************)

procedure TFHistoricoIngresos.cboPeriodoChange(Sender: TObject);
begin
      fn_cargar_grid(' AND 1 = 2 ');
end;

(******************************************************************************)
procedure TFHistoricoIngresos.FormResize(Sender: TObject);
begin
  pnlGraficoCantidad.Width := trunc(pnlReporte.Width/2);
end;
(******************************************************************************)

procedure TFHistoricoIngresos.btnImprimirClick(Sender: TObject);
var xnWidth :integer;
    xnHeight : integer;
    xnTop : integer;
    xnLeft : integer;
begin
    xnWidth := self.Width;
    xnHeight := self.Height;
    xnTop := self.Top;
    xnLeft := self.Left;

    self.Width :=  800;
    self.Height := 600;
    self.Repaint;

    DM1.fn_grabar_img_panel(imgCapturarPanel, pnlReporte, 'HISING_01.BMP');
    ppImgReporte01.Picture := nil;
    ppImgReporte01.Picture.LoadFromFile('HISING_01.BMP');

    self.Width := xnWidth;
    self.Height := xnHeight;
    self.Top := xnTop;
    self.Left := xnLeft;

    ppLblTit01.Caption := 'Histórico de Ingresos Por Contacto Efectivo';
    ppLblTit02.Caption := 'Periodo de Gestión : "' + lblTituloPeriodo.Caption + '"  Tipo de Cartera : "' + cboTipoCartera.Text + '"';
    ppLblUser.Caption  := 'Emitido Por :  ' + Trim(DM1.CrgDescrip('USERID=' + QuotedStr(Trim(DM1.wUsuario)), 'TGE006', 'USERNOM'));
    rptPrincipal.Print;
end;
(******************************************************************************)
end.