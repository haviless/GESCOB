// Inicio Uso Estándares: 01/08/2011
// Unidad : Gestión de Cobranzas
// Formulario : FCompararTraslados
// Fecha de Creación :
// Autor : Equipo de Sistemas
// Objetivo : Comparar Traslados
// Actualizaciones:
// HPC_201119_GESCOB 26/10/2011 Acuerdo de Atencion 2011-02-V2.0
// HPC_201206_GESCOB - F2 21/08/2012 MODIFICAR COMPARACION DE TRASLADO PARA QUE SE ASEMEJE A LA MATRIZ DE TRASLADO DEL MODULO DE RIESGOS
// DPP_201205_GESCOB: Pase a producción a partir de los pases HPC_201205 y HPC_201206
// HPC_201208_GESCOB - F1 14/09/2012 OPTIMIZACION DE CONSULTAS DE COMPARACION DE TRASLADOS
// DPP_201207_GESCOB: Pase a producción a partir de los pases HPC_201208

Unit GES515;

Interface

Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, Buttons, Grids, Wwdbigrd, Wwdbgrid, db, ExtCtrls,
   DBGrids, wwExport, shellapi, ppParameter, ppCtrls, ppBands, ppClass,
   ppVar, ppPrnabl, ppCache, ppProd, ppReport, ppRelatv, ppDB, ppDBPipe,
   ppComm, ppEndUsr, ppStrtch, ppSubRpt, wwdblook, ComCtrls;

Type
   TFCompararTraslados = Class(TForm)
      gbFiltro : TGroupBox;
      Label2 : TLabel;
      btnComparar : TBitBtn;
      Label1 : TLabel;
      edPeriodoAnterior : TEdit;
      pnlControles : TPanel;
      btnImprimir : TBitBtn;
      btnSalir : TBitBtn;
      rgMostrar : TRadioGroup;
      gbSimbologia : TGroupBox;
      shCaidas : TShape;
      Label3 : TLabel;
      shPermanencias : TShape;
      Label4 : TLabel;
      shMejoras : TShape;
      Label5 : TLabel;
      btnExportar : TBitBtn;
      desReporte : TppDesigner;
      dbpReporte : TppDBPipeline;
      repReporte : TppReport;
      ppParameterList1 : TppParameterList;
      dbpReporteDetalle : TppDBPipeline;
      ppHeaderBand41 : TppHeaderBand;
      ppShape1 : TppShape;
      ppLabel858 : TppLabel;
      ppLabel859 : TppLabel;
      ppLabel860 : TppLabel;
      ppLabel861 : TppLabel;
      ppLabel862 : TppLabel;
      ppSystemVariable83 : TppSystemVariable;
      ppSystemVariable84 : TppSystemVariable;
      ppSystemVariable85 : TppSystemVariable;
      ppLblTit : TppLabel;
      ppLabel863 : TppLabel;
      ppLabel864 : TppLabel;
      ppLabel865 : TppLabel;
      ppLabel1 : TppLabel;
      ppLabel29 : TppLabel;
      ppLabel30 : TppLabel;
      ppLabel2 : TppLabel;
      ppLine6 : TppLine;
      ppLine7 : TppLine;
      ppLine9 : TppLine;
      ppLine10 : TppLine;
      ppLabel3 : TppLabel;
      ppLabel4 : TppLabel;
      ppLabel5 : TppLabel;
      ppLabel6 : TppLabel;
      ppLabel7 : TppLabel;
      ppLabel8 : TppLabel;
      ppLabel9 : TppLabel;
      ppLabel10 : TppLabel;
      ppLabel11 : TppLabel;
      ppLabel12 : TppLabel;
      ppLabel13 : TppLabel;
      ppLabel14 : TppLabel;
      ppLine1 : TppLine;
      ppLine2 : TppLine;
      ppLabel33 : TppLabel;
      ppDetailBand44 : TppDetailBand;
      ppLine3 : TppLine;
      ppDBText3 : TppDBText;
      ppDBText4 : TppDBText;
      ppDBText1 : TppDBText;
      ppDBText2 : TppDBText;
      ppDBText5 : TppDBText;
      ppDBText6 : TppDBText;
      ppDBText7 : TppDBText;
      ppDBText8 : TppDBText;
      ppDBText9 : TppDBText;
      ppDBText10 : TppDBText;
      ppDBText11 : TppDBText;
      ppLine4 : TppLine;
      ppLine5 : TppLine;
      ppLine8 : TppLine;
      ppLine11 : TppLine;
      ppLine12 : TppLine;
      ppLine13 : TppLine;
      ppLine14 : TppLine;
      ppsCaidas : TppShape;
      ppsPermanencias : TppShape;
      ppsMejoras : TppShape;
      ppFooterBand36 : TppFooterBand;
      ppLblUser : TppLabel;
      ppSummaryBand41 : TppSummaryBand;
      ppSubReport1 : TppSubReport;
      ppChildReport1 : TppChildReport;
      ppTitleBand1 : TppTitleBand;
      ppShape2 : TppShape;
      ppLabel15 : TppLabel;
      ppLabel16 : TppLabel;
      ppLabel17 : TppLabel;
      ppLabel18 : TppLabel;
      ppLine23 : TppLine;
      ppLine24 : TppLine;
      ppLine25 : TppLine;
      ppLine26 : TppLine;
      ppLabel19 : TppLabel;
      ppLabel20 : TppLabel;
      ppLabel21 : TppLabel;
      ppLabel22 : TppLabel;
      ppLabel23 : TppLabel;
      ppLabel24 : TppLabel;
      ppLabel25 : TppLabel;
      ppLabel26 : TppLabel;
      ppLabel27 : TppLabel;
      ppLabel28 : TppLabel;
      ppLabel31 : TppLabel;
      ppLabel32 : TppLabel;
      ppLine27 : TppLine;
      ppLine28 : TppLine;
      ppLabel34 : TppLabel;
      ppLabel35 : TppLabel;
      ppLabel36 : TppLabel;
      ppLabel37 : TppLabel;
      ppLine29 : TppLine;
      ppDetailBand1 : TppDetailBand;
      ppDBText12 : TppDBText;
      ppDBText13 : TppDBText;
      ppDBText14 : TppDBText;
      ppDBText15 : TppDBText;
      ppDBText16 : TppDBText;
      ppDBText17 : TppDBText;
      ppDBText18 : TppDBText;
      ppDBText19 : TppDBText;
      ppDBText20 : TppDBText;
      ppDBText21 : TppDBText;
      ppDBText22 : TppDBText;
      ppLine15 : TppLine;
      ppLine16 : TppLine;
      ppLine17 : TppLine;
      ppLine18 : TppLine;
      ppLine19 : TppLine;
      ppLine20 : TppLine;
      ppLine21 : TppLine;
      ppLine22 : TppLine;
      ppsNOR : TppShape;
      ppsCPP : TppShape;
      ppsDEF : TppShape;
      ppsDUD : TppShape;
      ppsPER : TppShape;
      ppLine30 : TppLine;
      ppsSIN : TppShape;
      ppDBText23 : TppDBText;
      ppDBText24 : TppDBText;
      ppSummaryBand1 : TppSummaryBand;
      ppDBCalc1 : TppDBCalc;
      ppLabel38 : TppLabel;
      ppDBCalc2 : TppDBCalc;
      ppDBCalc3 : TppDBCalc;
      ppDBCalc4 : TppDBCalc;
      ppDBCalc5 : TppDBCalc;
      ppDBCalc6 : TppDBCalc;
      ppDBCalc7 : TppDBCalc;
      ppDBCalc8 : TppDBCalc;
      ppDBCalc9 : TppDBCalc;
      ppDBCalc10 : TppDBCalc;
      ppDBCalc11 : TppDBCalc;
      ppDBCalc12 : TppDBCalc;
      ppDBCalc13 : TppDBCalc;
      ppLabel39 : TppLabel;
      ppDBCalc14 : TppDBCalc;
      ppDBCalc15 : TppDBCalc;
      ppDBCalc16 : TppDBCalc;
      ppDBCalc17 : TppDBCalc;
      ppDBCalc18 : TppDBCalc;
      ppDBCalc19 : TppDBCalc;
      ppDBCalc20 : TppDBCalc;
      ppDBCalc21 : TppDBCalc;
      ppDBCalc22 : TppDBCalc;
      cboPeriodoCarteraSeleccionado : TwwDBLookupCombo;
      pcPrincipal : TPageControl;
      tsMatrizTraslado : TTabSheet;
      tsMovimientos : TTabSheet;
      dbgResultados01 : TwwDBGrid;
      dbgResultados02 : TwwDBGrid;
      pnl1 : TPanel;
      dbgCalificaciones : TwwDBGrid;
      pnl2 : TPanel;
      pnl3 : TPanel;
      dbpReporteCalificaciones : TppDBPipeline;
      ppSubReport2 : TppSubReport;
      ppChildReport2 : TppChildReport;
      ppTitleBand2 : TppTitleBand;
      ppDetailBand2 : TppDetailBand;
      ppSummaryBand2 : TppSummaryBand;
      ppShape3 : TppShape;
      ppLabel40 : TppLabel;
      ppLabel41 : TppLabel;
      ppLabel42 : TppLabel;
      ppLabel43 : TppLabel;
      ppLine31 : TppLine;
      ppLine32 : TppLine;
      ppLine33 : TppLine;
      ppLine34 : TppLine;
      ppLabel44 : TppLabel;
      ppLabel45 : TppLabel;
      ppLabel46 : TppLabel;
      ppLabel47 : TppLabel;
      ppLabel48 : TppLabel;
      ppLabel49 : TppLabel;
      ppLabel50 : TppLabel;
      ppLabel51 : TppLabel;
      ppLabel52 : TppLabel;
      ppLabel53 : TppLabel;
      ppLabel54 : TppLabel;
      ppLabel55 : TppLabel;
      ppLine35 : TppLine;
      ppLine36 : TppLine;
      ppDBText25 : TppDBText;
      ppDBText26 : TppDBText;
      ppDBText27 : TppDBText;
      ppDBText28 : TppDBText;
      ppDBText29 : TppDBText;
      ppDBText30 : TppDBText;
      ppDBText31 : TppDBText;
      ppDBText32 : TppDBText;
      ppDBText33 : TppDBText;
      ppDBText34 : TppDBText;
      ppDBText35 : TppDBText;
      ppLine38 : TppLine;
      ppLine40 : TppLine;
      ppLine41 : TppLine;
      ppLine42 : TppLine;
      ppLine43 : TppLine;
      ppLine44 : TppLine;
      ppLine46 : TppLine;
      ppLine39 : TppLine;
      ppDBCalc23 : TppDBCalc;
      ppLabel60 : TppLabel;
      ppDBCalc24 : TppDBCalc;
      ppDBCalc25 : TppDBCalc;
      ppDBCalc26 : TppDBCalc;
      ppDBCalc27 : TppDBCalc;
      ppDBCalc28 : TppDBCalc;
      ppDBCalc29 : TppDBCalc;
      ppDBCalc30 : TppDBCalc;
      ppDBCalc31 : TppDBCalc;
      ppDBCalc32 : TppDBCalc;
      Procedure btnCompararClick(Sender : TObject);
      Procedure dbgResultados01RowChanged(Sender : TObject);
      Procedure dbgResultados01DrawDataCell(Sender : TObject;
         Const Rect : TRect; Field : TField; State : TGridDrawState);
      Procedure dbgResultados02DrawDataCell(Sender : TObject;
         Const Rect : TRect; Field : TField; State : TGridDrawState);
      Procedure btnSalirClick(Sender : TObject);
      Procedure dbgResultados01DblClick(Sender : TObject);
      Procedure rgMostrarClick(Sender : TObject);
      Procedure dbgResultados02RowChanged(Sender : TObject);
      Procedure dbgResultados02DblClick(Sender : TObject);
      Procedure dbgResultados02MouseMove(Sender : TObject; Shift : TShiftState;
         X, Y : Integer);
      Procedure btnExportarClick(Sender : TObject);
      Procedure btnImprimirClick(Sender : TObject);
      Procedure FormShow(Sender : TObject);
      Procedure ppDetailBand44BeforePrint(Sender : TObject);
      Procedure ppDetailBand1BeforePrint(Sender : TObject);
      Procedure cboPeriodoCarteraSeleccionadoChange(Sender : TObject);
   Private
      Procedure fn_ocultar_datos;
   Public
    { Public declarations }
   End;

Var
   FCompararTraslados : TFCompararTraslados;

Implementation

Uses GESDM1, GES516, GES517;

{$R *.dfm}

//******************************************************************************
// Nombre : FormShow
// Descripcion :  cargar datos en los controles
//******************************************************************************

Procedure TFCompararTraslados.FormShow(Sender : TObject);
Var
   xsSQL : String;
   xnNumeroIteraciones : Integer;
   xsMaxPeriodo : String;
Begin
   fn_ocultar_datos();
   xsSQL := 'SELECT MAX(PERIODO) MAX_PERIODO FROM CFC000 ';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xsSQL);
   DM1.cdsQry.Open;

   xnNumeroIteraciones := 12;
   xsMaxPeriodo := DM1.cdsQry.fieldbyname('MAX_PERIODO').asstring;
   xsSQL :=
      ' WITH GENERA_PERIODO AS ( '
      + '   SELECT PERIODO '
      + '     FROM DUAL '
      + '    MODEL DIMENSION BY(0 AS I) '
      + '    MEASURES(CAST(NULL AS VARCHAR2(6)) AS PERIODO) '
      + '    RULES UPSERT ITERATE(' + inttostr(xnNumeroIteraciones) + ')( '
      + '       PERIODO [ ITERATION_NUMBER ] = TO_CHAR(ADD_MONTHS(TO_DATE(' + QuotedStr(xsMaxPeriodo) + ', ''YYYYMM''), - ITERATION_NUMBER),''YYYYMM'') '
      + '      ) '
      + '   ) '
      + ' SELECT PERIODO '
      + '   FROM GENERA_PERIODO '
      + '  WHERE PERIODO <= ' + QuotedStr(xsMaxPeriodo)
      + '  ORDER BY PERIODO DESC ';
   DM1.cdsQry6.Close;
   DM1.cdsQry6.DataRequest(xsSQL);
   DM1.cdsQry6.Open;
   cboPeriodoCarteraSeleccionado.LookupTable := DM1.cdsQry6;
   cboPeriodoCarteraSeleccionado.LookupField := 'PERIODO';

   shCaidas.Brush.Color := clCaida;
   shPermanencias.Brush.Color := clPermanencia;
   shMejoras.Brush.Color := clMejora;
   rgMostrarClick(Nil);
   dbgResultados01RowChanged(Nil);

   // para que permita dar clic en una posicion xy
   //btnCompararClick(Nil);
End;

//******************************************************************************
// Nombre : btnCompararClick
// Descripcion :  comparar periodos
//******************************************************************************

Procedure TFCompararTraslados.btnCompararClick(Sender : TObject);
Var
   xsSQL : String;
Begin
   If TRIM(cboPeriodoCarteraSeleccionado.Text) = '' Then
   Begin
      MessageDlg('Seleccione un Periodo de Cartera', mtInformation, [mbOk], 0);
      exit;
   End;

   rgMostrar.enabled := true;
   btnExportar.enabled := true;
   btnImprimir.enabled := true;

   Screen.Cursor := crHourGlass;
   // INICIO: DPP_201207_GESCOB - F1
   // CALIFICACION ANTERIOR
   xsSQL :=
      '  SELECT /*+ rule */ B.PERIODO '
      + '      ,NVL(SUM(CASE WHEN B.CFC_F = ''0'' THEN 1 ELSE 0 END),0) CANT_NOR '
      + '      ,NVL(SUM(CASE WHEN B.CFC_F = ''0'' THEN B.SALVEN ELSE 0 END),0) SALVEN_NOR '
      + '      ,NVL(SUM(CASE WHEN B.CFC_F = ''A'' THEN 1 ELSE 0 END),0) CANT_CPP '
      + '      ,NVL(SUM(CASE WHEN B.CFC_F = ''A'' THEN B.SALVEN ELSE 0 END),0) SALVEN_CPP '
      + '      ,NVL(SUM(CASE WHEN B.CFC_F = ''B'' THEN 1 ELSE 0 END),0) CANT_DEF '
      + '      ,NVL(SUM(CASE WHEN B.CFC_F = ''B'' THEN B.SALVEN ELSE 0 END),0) SALVEN_DEF '
      + '      ,NVL(SUM(CASE WHEN B.CFC_F = ''C'' THEN 1 ELSE 0 END),0) CANT_DUD '
      + '      ,NVL(SUM(CASE WHEN B.CFC_F = ''C'' THEN B.SALVEN ELSE 0 END),0) SALVEN_DUD '
      + '      ,NVL(SUM(CASE WHEN B.CFC_F = ''D'' THEN 1 ELSE 0 END),0) CANT_PER '
      + '      ,NVL(SUM(CASE WHEN B.CFC_F = ''D'' THEN B.SALVEN ELSE 0 END),0) SALVEN_PER '
      + '  FROM CFC000 B '
      + ' WHERE B.PERIODO >= ' + QuotedStr(edPeriodoAnterior.Text)
      + '   AND B.PERIODO <= ' + QuotedStr(cboPeriodoCarteraSeleccionado.Text)
      + ' GROUP BY B.PERIODO ';
   // FIN: DPP_201207_GESCOB - F1
   DM1.cdsQry8.Close;
   DM1.cdsQry8.DataRequest(xsSQL);
   DM1.cdsQry8.Open;
   dbgCalificaciones.DataSource := DM1.dsQry8;

   TNumericField(DM1.cdsQry8.fieldbyname('CANT_NOR')).DisplayFormat := '###,###';
   TNumericField(DM1.cdsQry8.fieldbyname('CANT_CPP')).DisplayFormat := '###,###';
   TNumericField(DM1.cdsQry8.fieldbyname('CANT_DEF')).DisplayFormat := '###,###';
   TNumericField(DM1.cdsQry8.fieldbyname('CANT_DUD')).DisplayFormat := '###,###';
   TNumericField(DM1.cdsQry8.fieldbyname('CANT_PER')).DisplayFormat := '###,###';

   TNumericField(DM1.cdsQry8.fieldbyname('SALVEN_NOR')).DisplayFormat := '###,###.#0';
   TNumericField(DM1.cdsQry8.fieldbyname('SALVEN_CPP')).DisplayFormat := '###,###.#0';
   TNumericField(DM1.cdsQry8.fieldbyname('SALVEN_DEF')).DisplayFormat := '###,###.#0';
   TNumericField(DM1.cdsQry8.fieldbyname('SALVEN_DUD')).DisplayFormat := '###,###.#0';
   TNumericField(DM1.cdsQry8.fieldbyname('SALVEN_PER')).DisplayFormat := '###,###.#0';

   // INICIO: DPP_201207_GESCOB - F1
   // MOVIMIENTOS
   xsSQL := 'SELECT /*+ rule */ ''0'' CAL_ACT, ''NOR'' CAL_ACT_DES, '
      + '       SUM(1) CANT_TOTAL_ACT, '
      + '       SUM(A.SALVEN) SALVEN_TOTAL_ACT, '
      + '       SUM(CASE WHEN B.CFC_F IN (''A'',''B'',''C'',''D'') THEN 1 ELSE 0 END) CANT_MEJORAS_ACT, '
      + '       SUM(CASE WHEN B.CFC_F IN (''A'',''B'',''C'',''D'') THEN A.SALVEN ELSE 0 END) SALVEN_MEJORAS_ACT, '
      + '       SUM(CASE WHEN B.CFC_F IN (''0'') THEN 1 ELSE 0 END) CANT_PERMANENCIAS_ACT, '
      + '       SUM(CASE WHEN B.CFC_F IN (''0'') THEN A.SALVEN ELSE 0 END) SALVEN_PERMANENCIAS_ACT, '
      + '       SUM(0) CANT_CAIDAS_ACT, '
      + '       SUM(0) SALVEN_CAIDAS_ACT, '
      + '       SUM(CASE WHEN B.CFC_F IS NULL THEN 1 ELSE 0 END) CANT_NUEVOS_ACT, '
      + '       SUM(CASE WHEN B.CFC_F IS NULL THEN A.SALVEN ELSE 0 END) SALVEN_NUEVOS_ACT '
      + '  FROM CFC000 A, CFC000 B '
      + ' WHERE A.PERIODO = ' + QuotedStr(cboPeriodoCarteraSeleccionado.Text)
      + '   AND A.CFC_F = ''0'' '
      + '   AND ' + QuotedStr(edPeriodoAnterior.Text) + ' = B.PERIODO(+) '
      + '   AND A.ASOID = B.ASOID(+) '
      + 'UNION ALL '
      + 'SELECT /*+ rule */ ''A'' CAL_ACT, ''CPP'' CAL_ACT_DES, '
      + '       SUM(1) CANT_TOTAL_ACT, '
      + '       SUM(A.SALVEN) SALVEN_TOTAL_ACT, '
      + '       SUM(CASE WHEN B.CFC_F IN (''B'',''C'',''D'') THEN 1 ELSE 0 END) CANT_MEJORAS_ACT, '
      + '       SUM(CASE WHEN B.CFC_F IN (''B'',''C'',''D'')  THEN A.SALVEN ELSE 0 END) SALVEN_MEJORAS_ACT, '
      + '       SUM(CASE WHEN B.CFC_F IN (''A'') THEN 1 ELSE 0 END) CANT_PERMANENCIAS_ACT, '
      + '       SUM(CASE WHEN B.CFC_F IN (''A'') THEN A.SALVEN ELSE 0 END) SALVEN_PERMANENCIAS_ACT, '
      + '       SUM(CASE WHEN B.CFC_F IN (''0'') THEN 1 ELSE 0 END) CANT_CAIDAS_ACT, '
      + '       SUM(CASE WHEN B.CFC_F IN (''0'') THEN A.SALVEN ELSE 0 END) SALVEN_CAIDAS_ACT, '
      + '       SUM(CASE WHEN B.CFC_F IS NULL THEN 1 ELSE 0 END) CANT_NUEVOS_ACT, '
      + '       SUM(CASE WHEN B.CFC_F IS NULL THEN A.SALVEN ELSE 0 END) SALVEN_NUEVOS_ACT '
      + '  FROM CFC000 A, CFC000 B '
      + ' WHERE A.PERIODO = ' + QuotedStr(cboPeriodoCarteraSeleccionado.Text)
      + '   AND A.CFC_F = ''A'' '
      + '   AND ' + QuotedStr(edPeriodoAnterior.Text) + ' = B.PERIODO(+) '
      + '   AND A.ASOID = B.ASOID(+) '
      + 'UNION ALL '
      + 'SELECT /*+ rule */ ''B'' CAL_ACT, ''DEF'' CAL_ACT_DES, '
      + '       SUM(1) CANT_TOTAL_ACT, '
      + '       SUM(A.SALVEN) SALVEN_TOTAL_ACT, '
      + '       SUM(CASE WHEN B.CFC_F IN (''C'',''D'') THEN 1 ELSE 0 END) CANT_MEJORAS_ACT, '
      + '       SUM(CASE WHEN B.CFC_F IN (''C'',''D'') THEN A.SALVEN ELSE 0 END) SALVEN_MEJORAS_ACT, '
      + '       SUM(CASE WHEN B.CFC_F IN (''B'') THEN 1 ELSE 0 END) CANT_PERMANENCIAS_ACT, '
      + '       SUM(CASE WHEN B.CFC_F IN (''B'') THEN A.SALVEN ELSE 0 END) SALVEN_PERMANENCIAS_ACT, '
      + '       SUM(CASE WHEN B.CFC_F IN (''0'',''A'') THEN 1 ELSE 0 END) CANT_CAIDAS_ACT, '
      + '       SUM(CASE WHEN B.CFC_F IN (''0'',''A'') THEN A.SALVEN ELSE 0 END) SALVEN_CAIDAS_ACT, '
      + '       SUM(CASE WHEN B.CFC_F IS NULL THEN 1 ELSE 0 END) CANT_NUEVOS_ACT, '
      + '       SUM(CASE WHEN B.CFC_F IS NULL THEN A.SALVEN ELSE 0 END) SALVEN_NUEVOS_ACT '
      + '  FROM CFC000 A, CFC000 B '
      + ' WHERE A.PERIODO = ' + QuotedStr(cboPeriodoCarteraSeleccionado.Text)
      + '   AND A.CFC_F = ''B'' '
      + '   AND ' + QuotedStr(edPeriodoAnterior.Text) + ' = B.PERIODO(+) '
      + '   AND A.ASOID = B.ASOID(+) '
      + 'UNION ALL '
      + 'SELECT /*+ rule */ ''C'' CAL_ACT, ''DUD'' CAL_ACT_DES, '
      + '       SUM(1) CANT_TOTAL_ACT, '
      + '       SUM(A.SALVEN) SALVEN_TOTAL_ACT, '
      + '       SUM(CASE WHEN B.CFC_F IN (''D'') THEN 1 ELSE 0 END) CANT_MEJORAS_ACT, '
      + '       SUM(CASE WHEN B.CFC_F IN (''D'') THEN A.SALVEN ELSE 0 END) SALVEN_MEJORAS_ACT, '
      + '       SUM(CASE WHEN B.CFC_F IN (''C'') THEN 1 ELSE 0 END) CANT_PERMANENCIAS_ACT, '
      + '       SUM(CASE WHEN B.CFC_F IN (''C'') THEN A.SALVEN ELSE 0 END) SALVEN_PERMANENCIAS_ACT, '
      + '       SUM(CASE WHEN B.CFC_F IN (''0'',''A'',''B'') THEN 1 ELSE 0 END) CANT_CAIDAS_ACT, '
      + '       SUM(CASE WHEN B.CFC_F IN (''0'',''A'',''B'') THEN A.SALVEN ELSE 0 END) SALVEN_CAIDAS_ACT, '
      + '       SUM(CASE WHEN B.CFC_F IS NULL THEN 1 ELSE 0 END) CANT_NUEVOS_ACT, '
      + '       SUM(CASE WHEN B.CFC_F IS NULL THEN A.SALVEN ELSE 0 END) CANT_NUEVOS_ACT '
      + '  FROM CFC000 A, CFC000 B '
      + ' WHERE A.PERIODO = ' + QuotedStr(cboPeriodoCarteraSeleccionado.Text)
      + '   AND A.CFC_F = ''C'' '
      + '   AND ' + QuotedStr(edPeriodoAnterior.Text) + ' = B.PERIODO(+) '
      + '   AND A.ASOID = B.ASOID(+) '
      + 'UNION ALL '
      + 'SELECT /*+ rule */ ''D'' CAL_ACT, ''PER'' CAL_ACT_DES, '
      + '       SUM(1) CANT_TOTAL_ACT, '
      + '       SUM(A.SALVEN) SALVEN_TOTAL_ACT, '
      + '       SUM(0) CANT_MEJORAS_ACT, '
      + '       SUM(0) SALVEN_MEJORAS_ACT, '
      + '       SUM(CASE WHEN B.CFC_F IN (''D'') THEN 1 ELSE 0 END) CANT_PERMANENCIAS_ACT, '
      + '       SUM(CASE WHEN B.CFC_F IN (''D'') THEN A.SALVEN ELSE 0 END) SALVEN_PERMANENCIAS_ACT, '
      + '       SUM(CASE WHEN B.CFC_F IN (''0'',''A'',''B'',''C'') THEN 1 ELSE 0 END) CANT_CAIDAS_ACT, '
      + '       SUM(CASE WHEN B.CFC_F IN (''0'',''A'',''B'',''C'') THEN A.SALVEN ELSE 0 END) SALVEN_CAIDAS_ACT, '
      + '       SUM(CASE WHEN B.CFC_F IS NULL THEN 1 ELSE 0 END) CANT_NUEVOS_ACT, '
      + '       SUM(CASE WHEN B.CFC_F IS NULL THEN A.SALVEN ELSE 0 END) SALVEN_NUEVOS_ACT '
      + '  FROM CFC000 A, CFC000 B '
      + ' WHERE A.PERIODO = ' + QuotedStr(cboPeriodoCarteraSeleccionado.Text)
      + '   AND A.CFC_F = ''D'' '
      + '   AND ' + QuotedStr(edPeriodoAnterior.Text) + ' = B.PERIODO(+) '
      + '   AND A.ASOID = B.ASOID(+) '
      + ' UNION ALL '
      + 'SELECT /*+ rule */ ''X'' CAL_ACT, ''CANCELADO'' CAL_ACT_DES, '
      + '       SUM(1) CANT_TOTAL_ACT, '
      + '       SUM(0) SALVEN_TOTAL_ACT, '
      + '       SUM(0) CANT_MEJORAS_ACT, '
      + '       SUM(0) SALVEN_MEJORAS_ACT, '
      + '       SUM(0) CANT_PERMANENCIAS_ACT, '
      + '       SUM(0) SALVEN_PERMANENCIAS_ACT, '
      + '       SUM(0) CANT_CAIDAS_ACT, '
      + '       SUM(0) SALVEN_CAIDAS_ACT, '
      + '       SUM(0) CANT_NUEVOS_ACT, '
      + '       SUM(0) SAL_NUEVOS_ACT '
      + '  FROM CFC000 A, CFC000 B  '
      + ' WHERE A.PERIODO = ' + QuotedStr(edPeriodoAnterior.Text)
      + '   AND ' + QuotedStr(cboPeriodoCarteraSeleccionado.Text) + ' = B.PERIODO(+) '
      + '   AND A.ASOID = B.ASOID(+) '
      + '   AND ''X'' = NVL(B.CFC_F,''X'')';
   // FIN: DPP_201207_GESCOB - F1

   DM1.cdsQry1.Close;
   DM1.cdsQry1.DataRequest(xsSQL);
   DM1.cdsQry1.Open;
   dbgResultados01.DataSource := DM1.dsQry1;

   TNumericField(DM1.cdsQry1.fieldbyname('CANT_CAIDAS_ACT')).DisplayFormat := '###,###';
   TNumericField(DM1.cdsQry1.fieldbyname('CANT_PERMANENCIAS_ACT')).DisplayFormat := '###,###';
   TNumericField(DM1.cdsQry1.fieldbyname('CANT_MEJORAS_ACT')).DisplayFormat := '###,###';
   TNumericField(DM1.cdsQry1.fieldbyname('CANT_NUEVOS_ACT')).DisplayFormat := '###,###';
   TNumericField(DM1.cdsQry1.fieldbyname('CANT_TOTAL_ACT')).DisplayFormat := '###,###';
   TNumericField(DM1.cdsQry1.fieldbyname('SALVEN_CAIDAS_ACT')).DisplayFormat := '###,###.#0';
   TNumericField(DM1.cdsQry1.fieldbyname('SALVEN_PERMANENCIAS_ACT')).DisplayFormat := '###,###.#0';
   TNumericField(DM1.cdsQry1.fieldbyname('SALVEN_MEJORAS_ACT')).DisplayFormat := '###,###.#0';
   TNumericField(DM1.cdsQry1.fieldbyname('SALVEN_NUEVOS_ACT')).DisplayFormat := '###,###.#0';
   TNumericField(DM1.cdsQry1.fieldbyname('SALVEN_TOTAL_ACT')).DisplayFormat := '###,###.#0';
   // INICIO: DPP_201207_GESCOB - F1
   xsSQL :=
      ' SELECT /*+ rule */ CFC_F_ANT CAL_ANT '
      + '      ,CASE WHEN CFC_F_ANT = ''0'' THEN ''NOR'' '
      + '           WHEN CFC_F_ANT = ''A'' THEN ''CPP'' '
      + '           WHEN CFC_F_ANT = ''B'' THEN ''DEF'' '
      + '           WHEN CFC_F_ANT = ''C'' THEN ''DUD'' '
      + '           WHEN CFC_F_ANT = ''D'' THEN ''PER'' '
      + '           WHEN CFC_F_ANT = ''X'' THEN ''CANCELADO'' '
      + '           WHEN CFC_F_ANT = ''Y'' THEN ''NUEVO'' '
      + '      END CAL_ANT_DES '
      + '       ,SUM(CASE WHEN CFC_F_ACT = ''0'' THEN CANT ELSE 0 END) CANT_NOR '
      + '       ,SUM(CASE WHEN CFC_F_ACT = ''0'' THEN SALVEN ELSE 0 END) SALVEN_NOR '
      + '       ,SUM(CASE WHEN CFC_F_ACT = ''A'' THEN CANT ELSE 0 END) CANT_CPP '
      + '       ,SUM(CASE WHEN CFC_F_ACT = ''A'' THEN SALVEN ELSE 0 END) SALVEN_CPP '
      + '       ,SUM(CASE WHEN CFC_F_ACT = ''B'' THEN CANT ELSE 0 END) CANT_DEF '
      + '       ,SUM(CASE WHEN CFC_F_ACT = ''B'' THEN SALVEN ELSE 0 END) SALVEN_DEF '
      + '       ,SUM(CASE WHEN CFC_F_ACT = ''C'' THEN CANT ELSE 0 END) CANT_DUD '
      + '       ,SUM(CASE WHEN CFC_F_ACT = ''C'' THEN SALVEN ELSE 0 END) SALVEN_DUD '
      + '       ,SUM(CASE WHEN CFC_F_ACT = ''D'' THEN CANT ELSE 0 END) CANT_PER '
      + '       ,SUM(CASE WHEN CFC_F_ACT = ''D'' THEN SALVEN ELSE 0 END) SALVEN_PER '
      + '       ,SUM(CASE WHEN CFC_F_ACT = ''X'' THEN CANT ELSE 0 END) CANT_CAN '
      + '       ,SUM(CASE WHEN CFC_F_ACT = ''X'' THEN SALVEN ELSE 0 END) SALVEN_CAN '
      + '       ,SUM(CASE WHEN CFC_F_ACT = ''Y'' THEN CANT ELSE 0 END) CANT_NUE '
      + '       ,SUM(CASE WHEN CFC_F_ACT = ''Y'' THEN SALVEN ELSE 0 END) SALVEN_NUE '
      + '  FROM (SELECT NVL(A.CFC_F, ''X'') CFC_F_ACT, NVL(B.CFC_F, ''Y'') CFC_F_ANT, SUM(1) CANT, '
      + '                SUM(NVL(A.SALVEN, 0)) SALVEN '
      + '           FROM CFC000 A, CFC000 B '
      + '          WHERE A.PERIODO = ' + QuotedStr(cboPeriodoCarteraSeleccionado.Text)
      + '            AND ' + QuotedStr(edPeriodoAnterior.Text) + ' = B.PERIODO(+) '
      + '            AND A.ASOID = B.ASOID(+) '
      + '          GROUP BY A.CFC_F, B.CFC_F '
      + '         UNION ALL '
      + '         SELECT NVL(A.CFC_F, ''X'') CFC_F_ACT, NVL(B.CFC_F, ''Y'') CFC_F_ANT, SUM(1) CANT, '
      + '                SUM(NVL(A.SALVEN, 0)) SALVEN '
      + '           FROM CFC000 B, CFC000 A '
      + '          WHERE B.PERIODO = ' + QuotedStr(edPeriodoAnterior.Text)
      + '            AND ' + QuotedStr(cboPeriodoCarteraSeleccionado.Text) + ' = A.PERIODO(+) '
      + '            AND B.ASOID = A.ASOID(+) '
      + '            AND A.CFC_F IS NULL '
      + '          GROUP BY A.CFC_F, B.CFC_F) '
      + ' GROUP BY CFC_F_ANT '
      + ' ORDER BY CASE WHEN CFC_F_ANT = ''0'' THEN 1 '
      + '               WHEN CFC_F_ANT = ''A'' THEN 2 '
      + '               WHEN CFC_F_ANT = ''B'' THEN 3 '
      + '               WHEN CFC_F_ANT = ''C'' THEN 4 '
      + '               WHEN CFC_F_ANT = ''D'' THEN 5 '
      + '               WHEN CFC_F_ANT = ''X'' THEN 6 '
      + '               WHEN CFC_F_ANT = ''Y'' THEN 7 '
      + '           END ';
   // FIN: DPP_201207_GESCOB - F1
   DM1.cdsQry2.Close;
   DM1.cdsQry2.DataRequest(xsSQL);
   DM1.cdsQry2.Open;
   dbgResultados02.DataSource := DM1.dsQry2;

   TNumericField(DM1.cdsQry2.fieldbyname('CANT_NOR')).DisplayFormat := '###,###';
   TNumericField(DM1.cdsQry2.fieldbyname('CANT_CPP')).DisplayFormat := '###,###';
   TNumericField(DM1.cdsQry2.fieldbyname('CANT_DEF')).DisplayFormat := '###,###';
   TNumericField(DM1.cdsQry2.fieldbyname('CANT_DUD')).DisplayFormat := '###,###';
   TNumericField(DM1.cdsQry2.fieldbyname('CANT_PER')).DisplayFormat := '###,###';
   TNumericField(DM1.cdsQry2.fieldbyname('CANT_CAN')).DisplayFormat := '###,###';
   TNumericField(DM1.cdsQry2.fieldbyname('CANT_NUE')).DisplayFormat := '###,###';

   TNumericField(DM1.cdsQry2.fieldbyname('SALVEN_NOR')).DisplayFormat := '###,###.#0';
   TNumericField(DM1.cdsQry2.fieldbyname('SALVEN_CPP')).DisplayFormat := '###,###.#0';
   TNumericField(DM1.cdsQry2.fieldbyname('SALVEN_DEF')).DisplayFormat := '###,###.#0';
   TNumericField(DM1.cdsQry2.fieldbyname('SALVEN_DUD')).DisplayFormat := '###,###.#0';
   TNumericField(DM1.cdsQry2.fieldbyname('SALVEN_PER')).DisplayFormat := '###,###.#0';
   TNumericField(DM1.cdsQry2.fieldbyname('SALVEN_CAN')).DisplayFormat := '###,###.#0';
   TNumericField(DM1.cdsQry2.fieldbyname('SALVEN_NUE')).DisplayFormat := '###,###.#0';

   rgMostrarClick(Nil);
   dbgResultados01RowChanged(Nil);

   Screen.Cursor := crDefault

End;

//******************************************************************************
// Nombre : dbgResultados01RowChanged
// Descripcion : sincronizar movimiento de las grillas
//******************************************************************************

Procedure TFCompararTraslados.dbgResultados01RowChanged(Sender : TObject);
Begin
   If (DM1.cdsQry1.State <> dsInactive) And (DM1.cdsQry1.RecordCount > 0)
      And (DM1.cdsQry2.State <> dsInactive) And (DM1.cdsQry2.RecordCount > 0) Then
      DM1.cdsQry2.RecNo := DM1.cdsQry1.RecNo;
End;

//******************************************************************************
// Nombre : dbgResultados01DrawDataCell
// Descripcion : pintar celdas en la grilla
//******************************************************************************
Procedure TFCompararTraslados.dbgResultados01DrawDataCell(Sender : TObject;
   Const Rect : TRect; Field : TField; State : TGridDrawState);
Begin
   dbgResultados01.Canvas.Font.Color := clBlack;
   If (gdFocused In State) Then
   Begin
      dbgResultados01.Canvas.Brush.Color := clNavy;
      dbgResultados01.Canvas.Font.Color := clWhite;
   End
   Else
   Begin
      If (Field.FieldName = 'CANT_MEJORAS_ACT') Or (Field.FieldName = 'SALVEN_MEJORAS_ACT') Then
         dbgResultados01.Canvas.Brush.Color := clMejora
      Else
         If (Field.FieldName = 'CANT_PERMANENCIAS_ACT') Or (Field.FieldName = 'SALVEN_PERMANENCIAS_ACT') Then
            dbgResultados01.Canvas.Brush.Color := clPermanencia
         Else
            If (Field.FieldName = 'CANT_CAIDAS_ACT') Or (Field.FieldName = 'SALVEN_CAIDAS_ACT') Then
               dbgResultados01.Canvas.Brush.Color := clCaida
            Else
               dbgResultados01.Canvas.Brush.Color := clWhite;
   End;
   dbgResultados01.DefaultDrawDataCell(Rect, Field, State);
End;

//******************************************************************************
// Nombre : dbgResultados02DrawDataCell
// Descripcion : pintar celdas en la grilla
//******************************************************************************

Procedure TFCompararTraslados.dbgResultados02DrawDataCell(Sender : TObject;
   Const Rect : TRect; Field : TField; State : TGridDrawState);
Begin
   dbgResultados02.Canvas.Font.Color := clBlack;
   If (gdFocused In State) Then
   Begin
      dbgResultados02.Canvas.Brush.Color := clNavy;
      dbgResultados02.Canvas.Font.Color := clWhite;
   End
   Else
   Begin
      If DM1.cdsQry2.FieldByName('CAL_ANT').AsString = '0' Then
      Begin
         If (Field.FieldName = 'CANT_NOR') Or (Field.FieldName = 'SALVEN_NOR') Then
            dbgResultados02.Canvas.Brush.Color := clPermanencia
         Else
            If (Field.FieldName = 'CANT_CPP') Or (Field.FieldName = 'SALVEN_CPP') Then
               dbgResultados02.Canvas.Brush.Color := clCaida
            Else
               If (Field.FieldName = 'CANT_DEF') Or (Field.FieldName = 'SALVEN_DEF') Then
                  dbgResultados02.Canvas.Brush.Color := clCaida
               Else
                  If (Field.FieldName = 'CANT_DUD') Or (Field.FieldName = 'SALVEN_DUD') Then
                     dbgResultados02.Canvas.Brush.Color := clCaida
                  Else
                     If (Field.FieldName = 'CANT_PER') Or (Field.FieldName = 'SALVEN_PER') Then
                        dbgResultados02.Canvas.Brush.Color := clCaida
                     Else
                        dbgResultados02.Canvas.Brush.Color := clWhite;
      End;
      If DM1.cdsQry2.FieldByName('CAL_ANT').AsString = 'A' Then
      Begin
         If (Field.FieldName = 'CANT_NOR') Or (Field.FieldName = 'SALVEN_NOR') Then
            dbgResultados02.Canvas.Brush.Color := clMejora
         Else
            If (Field.FieldName = 'CANT_CPP') Or (Field.FieldName = 'SALVEN_CPP') Then
               dbgResultados02.Canvas.Brush.Color := clPermanencia
            Else
               If (Field.FieldName = 'CANT_DEF') Or (Field.FieldName = 'SALVEN_DEF') Then
                  dbgResultados02.Canvas.Brush.Color := clCaida
               Else
                  If (Field.FieldName = 'CANT_DUD') Or (Field.FieldName = 'SALVEN_DUD') Then
                     dbgResultados02.Canvas.Brush.Color := clCaida
                  Else
                     If (Field.FieldName = 'CANT_PER') Or (Field.FieldName = 'SALVEN_PER') Then
                        dbgResultados02.Canvas.Brush.Color := clCaida
                     Else
                        dbgResultados02.Canvas.Brush.Color := clWhite;
      End;
      If DM1.cdsQry2.FieldByName('CAL_ANT').AsString = 'B' Then
      Begin
         If (Field.FieldName = 'CANT_NOR') Or (Field.FieldName = 'SALVEN_NOR') Then
            dbgResultados02.Canvas.Brush.Color := clMejora
         Else
            If (Field.FieldName = 'CANT_CPP') Or (Field.FieldName = 'SALVEN_CPP') Then
               dbgResultados02.Canvas.Brush.Color := clMejora
            Else
               If (Field.FieldName = 'CANT_DEF') Or (Field.FieldName = 'SALVEN_DEF') Then
                  dbgResultados02.Canvas.Brush.Color := clPermanencia
               Else
                  If (Field.FieldName = 'CANT_DUD') Or (Field.FieldName = 'SALVEN_DUD') Then
                     dbgResultados02.Canvas.Brush.Color := clCaida
                  Else
                     If (Field.FieldName = 'CANT_PER') Or (Field.FieldName = 'SALVEN_PER') Then
                        dbgResultados02.Canvas.Brush.Color := clCaida
                     Else
                        dbgResultados02.Canvas.Brush.Color := clWhite;
      End;
      If DM1.cdsQry2.FieldByName('CAL_ANT').AsString = 'C' Then
      Begin
         If (Field.FieldName = 'CANT_NOR') Or (Field.FieldName = 'SALVEN_NOR') Then
            dbgResultados02.Canvas.Brush.Color := clMejora
         Else
            If (Field.FieldName = 'CANT_CPP') Or (Field.FieldName = 'SALVEN_CPP') Then
               dbgResultados02.Canvas.Brush.Color := clMejora
            Else
               If (Field.FieldName = 'CANT_DEF') Or (Field.FieldName = 'SALVEN_DEF') Then
                  dbgResultados02.Canvas.Brush.Color := clMejora
               Else
                  If (Field.FieldName = 'CANT_DUD') Or (Field.FieldName = 'SALVEN_DUD') Then
                     dbgResultados02.Canvas.Brush.Color := clPermanencia
                  Else
                     If (Field.FieldName = 'CANT_PER') Or (Field.FieldName = 'SALVEN_PER') Then
                        dbgResultados02.Canvas.Brush.Color := clCaida
                     Else
                        dbgResultados02.Canvas.Brush.Color := clWhite;
      End;
      If DM1.cdsQry2.FieldByName('CAL_ANT').AsString = 'D' Then
      Begin
         If (Field.FieldName = 'CANT_NOR') Or (Field.FieldName = 'SALVEN_NOR') Then
            dbgResultados02.Canvas.Brush.Color := clMejora
         Else
            If (Field.FieldName = 'CANT_CPP') Or (Field.FieldName = 'SALVEN_CPP') Then
               dbgResultados02.Canvas.Brush.Color := clMejora
            Else
               If (Field.FieldName = 'CANT_DEF') Or (Field.FieldName = 'SALVEN_DEF') Then
                  dbgResultados02.Canvas.Brush.Color := clMejora
               Else
                  If (Field.FieldName = 'CANT_DUD') Or (Field.FieldName = 'SALVEN_DUD') Then
                     dbgResultados02.Canvas.Brush.Color := clMejora
                  Else
                     If (Field.FieldName = 'CANT_PER') Or (Field.FieldName = 'SALVEN_PER') Then
                        dbgResultados02.Canvas.Brush.Color := clPermanencia
                     Else
                        dbgResultados02.Canvas.Brush.Color := clWhite;
      End;
      If DM1.cdsQry2.FieldByName('CAL_ANT').AsString = 'X' Then
      Begin
         If (Field.FieldName = 'CANT_NOR') Or (Field.FieldName = 'SALVEN_NOR') Then
            dbgResultados02.Canvas.Brush.Color := clWhite
         Else
            If (Field.FieldName = 'CANT_CPP') Or (Field.FieldName = 'SALVEN_CPP') Then
               dbgResultados02.Canvas.Brush.Color := clWhite
            Else
               If (Field.FieldName = 'CANT_DEF') Or (Field.FieldName = 'SALVEN_DEF') Then
                  dbgResultados02.Canvas.Brush.Color := clWhite
               Else
                  If (Field.FieldName = 'CANT_DUD') Or (Field.FieldName = 'SALVEN_DUD') Then
                     dbgResultados02.Canvas.Brush.Color := clWhite
                  Else
                     If (Field.FieldName = 'CANT_PER') Or (Field.FieldName = 'SALVEN_PER') Then
                        dbgResultados02.Canvas.Brush.Color := clWhite
                     Else
                        dbgResultados02.Canvas.Brush.Color := clWhite;
      End;
   End;
   dbgResultados02.DefaultDrawDataCell(Rect, Field, State);
End;

//******************************************************************************
// Nombre : btnSalirClick
// Descripcion : cerrar grilla
//******************************************************************************

Procedure TFCompararTraslados.btnSalirClick(Sender : TObject);
Begin
   Close;
End;

//******************************************************************************
// Nombre : dbgResultados01DblClick
// Descripcion : mostrar detalle
//******************************************************************************

Procedure TFCompararTraslados.dbgResultados01DblClick(Sender : TObject);
Begin
   If (DM1.cdsQry1.State <> dsInactive) And (DM1.cdsQry1.RecordCount > 0) Then
   Begin
      FCompararTrasladosDpto := TFCompararTrasladosDpto.create(self);
      Try
         FCompararTrasladosDpto.edPeriodoActual.Text := cboPeriodoCarteraSeleccionado.Text;
         FCompararTrasladosDpto.edPeriodoAnterior.Text := edPeriodoAnterior.Text;
         FCompararTrasladosDpto.edCalificacion.Text := DM1.cdsQry1.fieldbyname('CAL_ACT').asstring;
         FCompararTrasladosDpto.edCalificacionDescripcion.Text := DM1.cdsQry1.fieldbyname('CAL_ACT_DES').asstring;
         FCompararTrasladosDpto.ShowModal();
      Finally
         FCompararTrasladosDpto.Free;
      End;
   End;
End;

//******************************************************************************
// Nombre : rgMostrarClick
// Descripcion : mostrar u ocultar campos
//******************************************************************************
Procedure TFCompararTraslados.rgMostrarClick(Sender : TObject);
Var
   xsSizeCant, xsSizeSalVen : String;
   xnCANT_CAIDAS_ACT, xnCANT_PERMANENCIAS_ACT,
      xnCANT_MEJORAS_ACT, xnCANT_NUEVOS_ACT, xnCANT_TOTAL_ACT : Integer;
   xnSALVEN_CAIDAS_ACT, xnSALVEN_PERMANENCIAS_ACT, xnSALVEN_MEJORAS_ACT,
      xnSALVEN_NUEVOS_ACT, xnSALVEN_TOTAL_ACT : Currency;
   xnCANT_NOR, xnCANT_CPP, xnCANT_DEF, xnCANT_DUD,
      xnCANT_PER, xnCANT_CAN : Integer;
   xnSALVEN_NOR, xnSALVEN_CPP, xnSALVEN_DEF, xnSALVEN_DUD,
      xnSALVEN_PER, xnSALVEN_CAN : Currency;
Begin
   Case rgMostrar.ItemIndex Of
      0 :
         Begin
            xsSizeCant := '15';
            xsSizeSalVen := '';
         End;
      1 :
         Begin
            xsSizeCant := '';
            xsSizeSalVen := '15';
         End;
      2 :
         Begin
            xsSizeCant := '7';
            xsSizeSalVen := '12';
         End;
   End;

   // CALIFICACIONES
   dbgCalificaciones.Selected.Clear;
   dbgCalificaciones.Selected.Add('PERIODO'#9'12'#9'PERIODO');
   If (rgMostrar.ItemIndex = 0) Or (rgMostrar.ItemIndex = 2) Then
      dbgCalificaciones.Selected.Add('CANT_NOR'#9'' + xsSizeCant + ''#9'CANT'#9'F'#9'NOR');
   If (rgMostrar.ItemIndex = 1) Or (rgMostrar.ItemIndex = 2) Then
      dbgCalificaciones.Selected.Add('SALVEN_NOR'#9'' + xsSizeSalVen + ''#9'SAL.VEN'#9'F'#9'NOR');
   If (rgMostrar.ItemIndex = 0) Or (rgMostrar.ItemIndex = 2) Then
      dbgCalificaciones.Selected.Add('CANT_CPP'#9'' + xsSizeCant + ''#9'CANT'#9'F'#9'CPP');
   If (rgMostrar.ItemIndex = 1) Or (rgMostrar.ItemIndex = 2) Then
      dbgCalificaciones.Selected.Add('SALVEN_CPP'#9'' + xsSizeSalVen + ''#9'SAL.VEN'#9'F'#9'CPP');
   If (rgMostrar.ItemIndex = 0) Or (rgMostrar.ItemIndex = 2) Then
      dbgCalificaciones.Selected.Add('CANT_DEF'#9'' + xsSizeCant + ''#9'CANT'#9'F'#9'DEF');
   If (rgMostrar.ItemIndex = 1) Or (rgMostrar.ItemIndex = 2) Then
      dbgCalificaciones.Selected.Add('SALVEN_DEF'#9'' + xsSizeSalVen + ''#9'SAL.VEN'#9'F'#9'DEF');
   If (rgMostrar.ItemIndex = 0) Or (rgMostrar.ItemIndex = 2) Then
      dbgCalificaciones.Selected.Add('CANT_DUD'#9'' + xsSizeCant + ''#9'CANT'#9'F'#9'DUD');
   If (rgMostrar.ItemIndex = 1) Or (rgMostrar.ItemIndex = 2) Then
      dbgCalificaciones.Selected.Add('SALVEN_DUD'#9'' + xsSizeSalVen + ''#9'SAL.VEN'#9'F'#9'DUD');
   If (rgMostrar.ItemIndex = 0) Or (rgMostrar.ItemIndex = 2) Then
      dbgCalificaciones.Selected.Add('CANT_PER'#9'' + xsSizeCant + ''#9'CANT'#9'F'#9'PER');
   If (rgMostrar.ItemIndex = 1) Or (rgMostrar.ItemIndex = 2) Then
      dbgCalificaciones.Selected.Add('SALVEN_PER'#9'' + xsSizeSalVen + ''#9'SAL.VEN'#9'F'#9'PER');
   dbgCalificaciones.ApplySelected;

   // movimientos
   pcPrincipal.ActivePage := tsMovimientos;
   dbgResultados01.Selected.Clear;
   dbgResultados01.Selected.Add('CAL_ACT_DES'#9'12'#9'CALIFICACION~(' + cboPeriodoCarteraSeleccionado.Text + ')');
   If (rgMostrar.ItemIndex = 0) Or (rgMostrar.ItemIndex = 2) Then
      dbgResultados01.Selected.Add('CANT_CAIDAS_ACT'#9'' + xsSizeCant + ''#9'CANT'#9'F'#9'DETERIOROS');
   If (rgMostrar.ItemIndex = 1) Or (rgMostrar.ItemIndex = 2) Then
      dbgResultados01.Selected.Add('SALVEN_CAIDAS_ACT'#9'' + xsSizeSalVen + ''#9'SAL.VEN'#9'F'#9'DETERIOROS');
   If (rgMostrar.ItemIndex = 0) Or (rgMostrar.ItemIndex = 2) Then
      dbgResultados01.Selected.Add('CANT_PERMANENCIAS_ACT'#9'' + xsSizeCant + ''#9'CANT'#9'F'#9'PERMANENCIAS');
   If (rgMostrar.ItemIndex = 1) Or (rgMostrar.ItemIndex = 2) Then
      dbgResultados01.Selected.Add('SALVEN_PERMANENCIAS_ACT'#9'' + xsSizeSalVen + ''#9'SAL.VEN'#9'F'#9'PERMANENCIAS');
   If (rgMostrar.ItemIndex = 0) Or (rgMostrar.ItemIndex = 2) Then
      dbgResultados01.Selected.Add('CANT_MEJORAS_ACT'#9'' + xsSizeCant + ''#9'CANT'#9'F'#9'MEJORAS');
   If (rgMostrar.ItemIndex = 1) Or (rgMostrar.ItemIndex = 2) Then
      dbgResultados01.Selected.Add('SALVEN_MEJORAS_ACT'#9'' + xsSizeSalVen + ''#9'SAL.VEN'#9'F'#9'MEJORAS');
   If (rgMostrar.ItemIndex = 0) Or (rgMostrar.ItemIndex = 2) Then
      dbgResultados01.Selected.Add('CANT_NUEVOS_ACT'#9'' + xsSizeCant + ''#9'CANT'#9'F'#9'NUEVOS');
   If (rgMostrar.ItemIndex = 1) Or (rgMostrar.ItemIndex = 2) Then
      dbgResultados01.Selected.Add('SALVEN_NUEVOS_ACT'#9'' + xsSizeSalVen + ''#9'SAL.VEN'#9'F'#9'NUEVOS');
   If (rgMostrar.ItemIndex = 0) Or (rgMostrar.ItemIndex = 2) Then
      dbgResultados01.Selected.Add('CANT_TOTAL_ACT'#9'' + xsSizeCant + ''#9'CANT'#9'F'#9'TOTAL');
   If (rgMostrar.ItemIndex = 1) Or (rgMostrar.ItemIndex = 2) Then
      dbgResultados01.Selected.Add('SALVEN_TOTAL_ACT'#9'' + xsSizeSalVen + ''#9'SAL.VEN'#9'F'#9'TOTAL');
   dbgResultados01.ApplySelected;

   xnCANT_CAIDAS_ACT := 0;
   xnCANT_PERMANENCIAS_ACT := 0;
   xnCANT_MEJORAS_ACT := 0;
   xnCANT_NUEVOS_ACT := 0;
   xnCANT_TOTAL_ACT := 0;
   xnSALVEN_CAIDAS_ACT := 0;
   xnSALVEN_PERMANENCIAS_ACT := 0;
   xnSALVEN_MEJORAS_ACT := 0;
   xnSALVEN_NUEVOS_ACT := 0;
   xnSALVEN_TOTAL_ACT := 0;
   DM1.cdsQry1.First;
   While Not DM1.cdsQry1.Eof Do
   Begin
      xnCANT_CAIDAS_ACT := xnCANT_CAIDAS_ACT + DM1.cdsQry1.fieldbyname('CANT_CAIDAS_ACT').Value;
      xnCANT_PERMANENCIAS_ACT := xnCANT_PERMANENCIAS_ACT + DM1.cdsQry1.fieldbyname('CANT_PERMANENCIAS_ACT').Value;
      xnCANT_MEJORAS_ACT := xnCANT_MEJORAS_ACT + DM1.cdsQry1.fieldbyname('CANT_MEJORAS_ACT').Value;
      xnCANT_NUEVOS_ACT := xnCANT_NUEVOS_ACT + DM1.cdsQry1.fieldbyname('CANT_NUEVOS_ACT').Value;
      xnCANT_TOTAL_ACT := xnCANT_TOTAL_ACT + DM1.cdsQry1.fieldbyname('CANT_TOTAL_ACT').Value;
      xnSALVEN_CAIDAS_ACT := xnSALVEN_CAIDAS_ACT + DM1.cdsQry1.fieldbyname('SALVEN_CAIDAS_ACT').Value;
      xnSALVEN_PERMANENCIAS_ACT := xnSALVEN_PERMANENCIAS_ACT + DM1.cdsQry1.fieldbyname('SALVEN_PERMANENCIAS_ACT').Value;
      xnSALVEN_MEJORAS_ACT := xnSALVEN_MEJORAS_ACT + DM1.cdsQry1.fieldbyname('SALVEN_MEJORAS_ACT').Value;
      xnSALVEN_NUEVOS_ACT := xnSALVEN_NUEVOS_ACT + DM1.cdsQry1.fieldbyname('SALVEN_NUEVOS_ACT').Value;
      xnSALVEN_TOTAL_ACT := xnSALVEN_TOTAL_ACT + DM1.cdsQry1.fieldbyname('SALVEN_TOTAL_ACT').Value;
      DM1.cdsQry1.Next;
   End;
   DM1.cdsQry1.First;

   dbgResultados01.ColumnByName('CAL_ACT_DES').FooterValue := 'Total : ';
   dbgResultados01.ColumnByName('CANT_CAIDAS_ACT').FooterValue := FloatToStrF(xnCANT_CAIDAS_ACT, ffNumber, 15, 0);
   dbgResultados01.ColumnByName('SALVEN_CAIDAS_ACT').FooterValue := FloatToStrF(xnSALVEN_CAIDAS_ACT, ffNumber, 15, 2);
   dbgResultados01.ColumnByName('CANT_PERMANENCIAS_ACT').FooterValue := FloatToStrF(xnCANT_PERMANENCIAS_ACT, ffNumber, 15, 0);
   dbgResultados01.ColumnByName('SALVEN_PERMANENCIAS_ACT').FooterValue := FloatToStrF(xnSALVEN_PERMANENCIAS_ACT, ffNumber, 15, 2);
   dbgResultados01.ColumnByName('CANT_MEJORAS_ACT').FooterValue := FloatToStrF(xnCANT_MEJORAS_ACT, ffNumber, 15, 0);
   dbgResultados01.ColumnByName('SALVEN_MEJORAS_ACT').FooterValue := FloatToStrF(xnSALVEN_MEJORAS_ACT, ffNumber, 15, 2);
   dbgResultados01.ColumnByName('CANT_NUEVOS_ACT').FooterValue := FloatToStrF(xnCANT_NUEVOS_ACT, ffNumber, 15, 0);
   dbgResultados01.ColumnByName('SALVEN_NUEVOS_ACT').FooterValue := FloatToStrF(xnSALVEN_NUEVOS_ACT, ffNumber, 15, 2);
   dbgResultados01.ColumnByName('CANT_TOTAL_ACT').FooterValue := FloatToStrF(xnCANT_TOTAL_ACT, ffNumber, 15, 0);
   dbgResultados01.ColumnByName('SALVEN_TOTAL_ACT').FooterValue := FloatToStrF(xnSALVEN_TOTAL_ACT, ffNumber, 15, 2);

   // matriz traslado
   dbgResultados02.Selected.Clear;
   dbgResultados02.Selected.Add('CAL_ANT_DES'#9'12'#9'CALIFICACION~(' + edPeriodoAnterior.Text + ')');
   If (rgMostrar.ItemIndex = 0) Or (rgMostrar.ItemIndex = 2) Then
      dbgResultados02.Selected.Add('CANT_NOR'#9'' + xsSizeCant + ''#9'CANT'#9'F'#9'NOR (' + cboPeriodoCarteraSeleccionado.Text + ')');
   If (rgMostrar.ItemIndex = 1) Or (rgMostrar.ItemIndex = 2) Then
      dbgResultados02.Selected.Add('SALVEN_NOR'#9'' + xsSizeSalVen + ''#9'SAL.VEN'#9'F'#9'NOR (' + cboPeriodoCarteraSeleccionado.Text + ')');
   If (rgMostrar.ItemIndex = 0) Or (rgMostrar.ItemIndex = 2) Then
      dbgResultados02.Selected.Add('CANT_CPP'#9'' + xsSizeCant + ''#9'CANT'#9'F'#9'CPP (' + cboPeriodoCarteraSeleccionado.Text + ')');
   If (rgMostrar.ItemIndex = 1) Or (rgMostrar.ItemIndex = 2) Then
      dbgResultados02.Selected.Add('SALVEN_CPP'#9'' + xsSizeSalVen + ''#9'SAL.VEN'#9'F'#9'CPP (' + cboPeriodoCarteraSeleccionado.Text + ')');
   If (rgMostrar.ItemIndex = 0) Or (rgMostrar.ItemIndex = 2) Then
      dbgResultados02.Selected.Add('CANT_DEF'#9'' + xsSizeCant + ''#9'CANT'#9'F'#9'DEF (' + cboPeriodoCarteraSeleccionado.Text + ')');
   If (rgMostrar.ItemIndex = 1) Or (rgMostrar.ItemIndex = 2) Then
      dbgResultados02.Selected.Add('SALVEN_DEF'#9'' + xsSizeSalVen + ''#9'SAL.VEN'#9'F'#9'DEF (' + cboPeriodoCarteraSeleccionado.Text + ')');
   If (rgMostrar.ItemIndex = 0) Or (rgMostrar.ItemIndex = 2) Then
      dbgResultados02.Selected.Add('CANT_DUD'#9'' + xsSizeCant + ''#9'CANT'#9'F'#9'DUD (' + cboPeriodoCarteraSeleccionado.Text + ')');
   If (rgMostrar.ItemIndex = 1) Or (rgMostrar.ItemIndex = 2) Then
      dbgResultados02.Selected.Add('SALVEN_DUD'#9'' + xsSizeSalVen + ''#9'SAL.VEN'#9'F'#9'DUD (' + cboPeriodoCarteraSeleccionado.Text + ')');
   If (rgMostrar.ItemIndex = 0) Or (rgMostrar.ItemIndex = 2) Then
      dbgResultados02.Selected.Add('CANT_PER'#9'' + xsSizeCant + ''#9'CANT'#9'F'#9'PER (' + cboPeriodoCarteraSeleccionado.Text + ')');
   If (rgMostrar.ItemIndex = 1) Or (rgMostrar.ItemIndex = 2) Then
      dbgResultados02.Selected.Add('SALVEN_PER'#9'' + xsSizeSalVen + ''#9'SAL.VEN'#9'F'#9'PER (' + cboPeriodoCarteraSeleccionado.Text + ')');
   If (rgMostrar.ItemIndex = 0) Or (rgMostrar.ItemIndex = 2) Then
      dbgResultados02.Selected.Add('CANT_CAN'#9'' + xsSizeCant + ''#9'CANT'#9'F'#9'CANCELADO (' + cboPeriodoCarteraSeleccionado.Text + ')');
   If (rgMostrar.ItemIndex = 1) Or (rgMostrar.ItemIndex = 2) Then
      dbgResultados02.Selected.Add('SALVEN_CAN'#9'' + xsSizeSalVen + ''#9'SAL.VEN'#9'F'#9'CANCELADO (' + cboPeriodoCarteraSeleccionado.Text + ')');
   dbgResultados02.ApplySelected;

   pcPrincipal.ActivePage := tsMatrizTraslado;
   xnCANT_NOR := 0;
   xnCANT_CPP := 0;
   xnCANT_DEF := 0;
   xnCANT_DUD := 0;
   xnCANT_PER := 0;
   xnCANT_CAN := 0;
   xnSALVEN_NOR := 0;
   xnSALVEN_CPP := 0;
   xnSALVEN_DEF := 0;
   xnSALVEN_DUD := 0;
   xnSALVEN_PER := 0;
   xnSALVEN_CAN := 0;
   DM1.cdsQry2.First;
   While Not DM1.cdsQry2.eof Do
   Begin
      xnCANT_NOR := xnCANT_NOR + DM1.cdsQry2.fieldbyname('CANT_NOR').Value;
      xnCANT_CPP := xnCANT_CPP + DM1.cdsQry2.fieldbyname('CANT_CPP').Value;
      xnCANT_DEF := xnCANT_DEF + DM1.cdsQry2.fieldbyname('CANT_DEF').Value;
      xnCANT_DUD := xnCANT_DUD + DM1.cdsQry2.fieldbyname('CANT_DUD').Value;
      xnCANT_PER := xnCANT_PER + DM1.cdsQry2.fieldbyname('CANT_PER').Value;
      xnCANT_CAN := xnCANT_CAN + DM1.cdsQry2.fieldbyname('CANT_CAN').Value;

      xnSALVEN_NOR := xnSALVEN_NOR + DM1.cdsQry2.fieldbyname('SALVEN_NOR').Value;
      xnSALVEN_CPP := xnSALVEN_CPP + DM1.cdsQry2.fieldbyname('SALVEN_CPP').Value;
      xnSALVEN_DEF := xnSALVEN_DEF + DM1.cdsQry2.fieldbyname('SALVEN_DEF').Value;
      xnSALVEN_DUD := xnSALVEN_DUD + DM1.cdsQry2.fieldbyname('SALVEN_DUD').Value;
      xnSALVEN_PER := xnSALVEN_PER + DM1.cdsQry2.fieldbyname('SALVEN_PER').Value;
      xnSALVEN_CAN := xnSALVEN_CAN + DM1.cdsQry2.fieldbyname('SALVEN_CAN').Value;
      DM1.cdsQry2.Next;
   End;
   DM1.cdsQry2.First;

   dbgResultados02.ColumnByName('CAL_ANT_DES').FooterValue := 'Total : ';
   dbgResultados02.ColumnByName('CANT_NOR').FooterValue := FloatToStrF(xnCANT_NOR, ffNumber, 15, 0);
   dbgResultados02.ColumnByName('CANT_CPP').FooterValue := FloatToStrF(xnCANT_CPP, ffNumber, 15, 0);
   dbgResultados02.ColumnByName('CANT_DEF').FooterValue := FloatToStrF(xnCANT_DEF, ffNumber, 15, 0);
   dbgResultados02.ColumnByName('CANT_DUD').FooterValue := FloatToStrF(xnCANT_DUD, ffNumber, 15, 0);
   dbgResultados02.ColumnByName('CANT_PER').FooterValue := FloatToStrF(xnCANT_PER, ffNumber, 15, 0);
   dbgResultados02.ColumnByName('CANT_CAN').FooterValue := FloatToStrF(xnCANT_CAN, ffNumber, 15, 0);

   dbgResultados02.ColumnByName('SALVEN_NOR').FooterValue := FloatToStrF(xnSALVEN_NOR, ffNumber, 15, 2);
   dbgResultados02.ColumnByName('SALVEN_CPP').FooterValue := FloatToStrF(xnSALVEN_CPP, ffNumber, 15, 2);
   dbgResultados02.ColumnByName('SALVEN_DEF').FooterValue := FloatToStrF(xnSALVEN_DEF, ffNumber, 15, 2);
   dbgResultados02.ColumnByName('SALVEN_DUD').FooterValue := FloatToStrF(xnSALVEN_DUD, ffNumber, 15, 2);
   dbgResultados02.ColumnByName('SALVEN_PER').FooterValue := FloatToStrF(xnSALVEN_PER, ffNumber, 15, 2);
   dbgResultados02.ColumnByName('SALVEN_CAN').FooterValue := FloatToStrF(xnSALVEN_CAN, ffNumber, 15, 2);
End;

//******************************************************************************
// Nombre : dbgResultados02RowChanged
// Descripcion : sincronizar movimiento de las grillas
//******************************************************************************

Procedure TFCompararTraslados.dbgResultados02RowChanged(Sender : TObject);
Begin
   If (DM1.cdsQry1.State <> dsInactive) And (DM1.cdsQry1.RecordCount > 0)
      And (DM1.cdsQry2.State <> dsInactive) And (DM1.cdsQry2.RecordCount > 0) Then
      DM1.cdsQry1.RecNo := DM1.cdsQry2.RecNo;
End;

//******************************************************************************
// Nombre : dbgResultados02DblClick
// Descripcion : mostrar traslados por asociado
//******************************************************************************
Procedure TFCompararTraslados.dbgResultados02DblClick(Sender : TObject);
Begin
   If (dbgResultados02.FieldName(dbgResultados02.GetActiveCol) = 'CANT_NOR')
      Or (dbgResultados02.FieldName(dbgResultados02.GetActiveCol) = 'SALVEN_NOR')
      Or (dbgResultados02.FieldName(dbgResultados02.GetActiveCol) = 'CANT_CPP')
      Or (dbgResultados02.FieldName(dbgResultados02.GetActiveCol) = 'SALVEN_CPP')
      Or (dbgResultados02.FieldName(dbgResultados02.GetActiveCol) = 'CANT_DEF')
      Or (dbgResultados02.FieldName(dbgResultados02.GetActiveCol) = 'SALVEN_DEF')
      Or (dbgResultados02.FieldName(dbgResultados02.GetActiveCol) = 'CANT_DUD')
      Or (dbgResultados02.FieldName(dbgResultados02.GetActiveCol) = 'SALVEN_DUD')
      Or (dbgResultados02.FieldName(dbgResultados02.GetActiveCol) = 'CANT_PER')
      Or (dbgResultados02.FieldName(dbgResultados02.GetActiveCol) = 'SALVEN_PER')
      Or (dbgResultados02.FieldName(dbgResultados02.GetActiveCol) = 'CANT_CAN')
      Or (dbgResultados02.FieldName(dbgResultados02.GetActiveCol) = 'SALVEN_CAN') Then
   Begin
      FCompararTrasladosAso := TFCompararTrasladosAso.create(self);
      Try
         FCompararTrasladosAso.edPeriodoActual.Text := cboPeriodoCarteraSeleccionado.Text;
         FCompararTrasladosAso.edPeriodoAnterior.Text := edPeriodoAnterior.Text;
         FCompararTrasladosAso.edCalificacionAnt.Text := DM1.cdsQry2.fieldbyname('CAL_ANT').asstring;
         FCompararTrasladosAso.edCalificacionDescripcionAnt.Text := DM1.cdsQry2.fieldbyname('CAL_ANT_DES').asstring;
         FCompararTrasladosAso.lblDepartamento.Visible := false;
         FCompararTrasladosAso.edDpto.Visible := false;
         FCompararTrasladosAso.edDptoDes.Visible := false;
         FCompararTrasladosAso.edDpto.Text := '';
         FCompararTrasladosAso.edDptoDes.Text := '';
         If (dbgResultados02.FieldName(dbgResultados02.GetActiveCol) = 'CANT_NOR')
            Or (dbgResultados02.FieldName(dbgResultados02.GetActiveCol) = 'SALVEN_NOR') Then
         Begin
            FCompararTrasladosAso.edCalificacion.Text := '0';
            FCompararTrasladosAso.edCalificacionDescripcion.Text := 'NOR';
         End;
         If (dbgResultados02.FieldName(dbgResultados02.GetActiveCol) = 'CANT_CPP')
            Or (dbgResultados02.FieldName(dbgResultados02.GetActiveCol) = 'SALVEN_CPP') Then
         Begin
            FCompararTrasladosAso.edCalificacion.Text := 'A';
            FCompararTrasladosAso.edCalificacionDescripcion.Text := 'CPP';
         End;
         If (dbgResultados02.FieldName(dbgResultados02.GetActiveCol) = 'CANT_DEF')
            Or (dbgResultados02.FieldName(dbgResultados02.GetActiveCol) = 'SALVEN_DEF') Then
         Begin
            FCompararTrasladosAso.edCalificacion.Text := 'B';
            FCompararTrasladosAso.edCalificacionDescripcion.Text := 'DEF';
         End;
         If (dbgResultados02.FieldName(dbgResultados02.GetActiveCol) = 'CANT_DUD')
            Or (dbgResultados02.FieldName(dbgResultados02.GetActiveCol) = 'SALVEN_DUD') Then
         Begin
            FCompararTrasladosAso.edCalificacion.Text := 'C';
            FCompararTrasladosAso.edCalificacionDescripcion.Text := 'DUD';
         End;
         If (dbgResultados02.FieldName(dbgResultados02.GetActiveCol) = 'CANT_PER')
            Or (dbgResultados02.FieldName(dbgResultados02.GetActiveCol) = 'SALVEN_PER') Then
         Begin
            FCompararTrasladosAso.edCalificacion.Text := 'D';
            FCompararTrasladosAso.edCalificacionDescripcion.Text := 'PER';
         End;
         If (dbgResultados02.FieldName(dbgResultados02.GetActiveCol) = 'CANT_CAN')
            Or (dbgResultados02.FieldName(dbgResultados02.GetActiveCol) = 'SALVEN_CAN') Then
         Begin
            FCompararTrasladosAso.edCalificacion.Text := 'X';
            FCompararTrasladosAso.edCalificacionDescripcion.Text := 'CANCELADO';
         End;
         FCompararTrasladosAso.ShowModal();
      Finally
         FCompararTrasladosAso.Free;
      End;
   End;
End;
//******************************************************************************
// Nombre : dbgResultados02MouseMove
// Descripcion : mostrar cursor de mouse cuando se pasa sobre la grilla
//******************************************************************************

Procedure TFCompararTraslados.dbgResultados02MouseMove(Sender : TObject;
   Shift : TShiftState; X, Y : Integer);
Begin
   If (Not (DM1.cdsQry2.State = dsInactive) And (DM1.cdsQry2.RecordCount > 0)) Then
   Begin
      If (dbgResultados02.FieldName(dbgResultados02.MouseCoord(X, Y).X) = 'CANT_NOR')
         Or (dbgResultados02.FieldName(dbgResultados02.MouseCoord(X, Y).X) = 'SALVEN_NOR')
         Or (dbgResultados02.FieldName(dbgResultados02.MouseCoord(X, Y).X) = 'CANT_CPP')
         Or (dbgResultados02.FieldName(dbgResultados02.MouseCoord(X, Y).X) = 'SALVEN_CPP')
         Or (dbgResultados02.FieldName(dbgResultados02.MouseCoord(X, Y).X) = 'CANT_DEF')
         Or (dbgResultados02.FieldName(dbgResultados02.MouseCoord(X, Y).X) = 'SALVEN_DEF')
         Or (dbgResultados02.FieldName(dbgResultados02.MouseCoord(X, Y).X) = 'CANT_DUD')
         Or (dbgResultados02.FieldName(dbgResultados02.MouseCoord(X, Y).X) = 'SALVEN_DUD')
         Or (dbgResultados02.FieldName(dbgResultados02.MouseCoord(X, Y).X) = 'CANT_PER')
         Or (dbgResultados02.FieldName(dbgResultados02.MouseCoord(X, Y).X) = 'SALVEN_PER') Then
         dbgResultados02.Cursor := crHandPoint
      Else
         dbgResultados02.Cursor := crDefault;
   End;
End;
//******************************************************************************
// Nombre : btnExportarClick
// Descripcion : exportar a excel
//******************************************************************************

Procedure TFCompararTraslados.btnExportarClick(Sender : TObject);
Begin
   Screen.Cursor := crHourGlass;

   Try
      With dbgCalificaciones, dbgCalificaciones.ExportOptions Do
      Begin
         ExportType := wwgetSYLK;
         FileName := 'COMTRAS00.slk';
         DM1.OpcionesExportExcel(dbgCalificaciones.ExportOptions);
         dbgCalificaciones.ExportOptions.TitleName := 'ComTras00';
         Save;
         If Not (esoClipboard In Options) Then
            ShellExecute(Handle, 'Open', PChar(dbgCalificaciones.exportoptions.Filename), Nil, Nil, sw_shownormal);
      End;
      Screen.Cursor := crDefault;
   Except
      Screen.Cursor := crDefault;
      showmessage('No se puede grabar el Archivo ' + chr(13) + 'Cierre todos los Archivos en Excel y vuelva a intentarlo');
   End;

   Try
      With dbgResultados01, dbgResultados01.ExportOptions Do
      Begin
         ExportType := wwgetSYLK;
         FileName := 'COMTRAS01.slk';
         DM1.OpcionesExportExcel(dbgResultados01.ExportOptions);
         dbgResultados01.ExportOptions.TitleName := 'ComTras01';
         Save;
         If Not (esoClipboard In Options) Then
            ShellExecute(Handle, 'Open', PChar(dbgResultados01.exportoptions.Filename), Nil, Nil, sw_shownormal);
      End;
      Screen.Cursor := crDefault;
   Except
      Screen.Cursor := crDefault;
      showmessage('No se puede grabar el Archivo ' + chr(13) + 'Cierre todos los Archivos en Excel y vuelva a intentarlo');
   End;

   Try
      With dbgResultados02, dbgResultados02.ExportOptions Do
      Begin
         ExportType := wwgetSYLK;
         FileName := 'COMTRAS02.slk';
         DM1.OpcionesExportExcel(dbgResultados02.ExportOptions);
         dbgResultados02.ExportOptions.TitleName := 'ComTras02';
         Save;
         If Not (esoClipboard In Options) Then
            ShellExecute(Handle, 'Open', PChar(dbgResultados02.exportoptions.Filename), Nil, Nil, sw_shownormal);
      End;
      Screen.Cursor := crDefault;
   Except
      Screen.Cursor := crDefault;
      showmessage('No se puede grabar el Archivo ' + chr(13) + 'Cierre todos los Archivos en Excel y vuelva a intentarlo');
   End;
End;

//******************************************************************************
// Nombre : btnImprimirClick
// Descripcion : imprimir reporte
//******************************************************************************

Procedure TFCompararTraslados.btnImprimirClick(Sender : TObject);
Begin
   dbpReporte.DataSource := DM1.dsQry1;
   dbpReporteDetalle.DataSource := DM1.dsQry2;
   dbpReporteCalificaciones.DataSource := DM1.dsQry8;
   ppLblTit.Caption := 'COMPARAR TRASLADOS EN LOS PERIODOS ' + cboPeriodoCarteraSeleccionado.Text + ' - ' + edPeriodoAnterior.Text;
   ppLblUser.Caption := 'Emitido Por :  ' + Trim(DM1.CrgDescrip('USERID=' + QuotedStr(Trim(DM1.wUsuario)), 'TGE006', 'USERNOM'));
   repReporte.Print;
   //desReporte.Show; // para editar en tiempo de ejecucion
End;

//******************************************************************************
// Nombre : ppDetailBand44BeforePrint
// Descripcion : mostrar puntos con colores en el reporte
//******************************************************************************

Procedure TFCompararTraslados.ppDetailBand44BeforePrint(Sender : TObject);
Begin
   ppsCaidas.Brush.Color := clCaida;
   ppsPermanencias.Brush.Color := clPermanencia;
   ppsMejoras.Brush.Color := clMejora;

End;

//******************************************************************************
// Nombre : ppDetailBand1BeforePrint
// Descripcion : mostrar puntos con colores en el reporte
//******************************************************************************

Procedure TFCompararTraslados.ppDetailBand1BeforePrint(Sender : TObject);
Begin
   If DM1.cdsQry2.FieldByName('CAL_ANT').AsString = '0' Then
   Begin
      ppsNOR.Brush.Color := clPermanencia;
      ppsCPP.Brush.Color := clCaida;
      ppsDEF.Brush.Color := clCaida;
      ppsDUD.Brush.Color := clCaida;
      ppsPER.Brush.Color := clCaida;
      ppsSIN.Brush.Color := clWhite;
   End;
   If DM1.cdsQry2.FieldByName('CAL_ANT').AsString = 'A' Then
   Begin
      ppsNOR.Brush.Color := clMejora;
      ppsCPP.Brush.Color := clPermanencia;
      ppsDEF.Brush.Color := clCaida;
      ppsDUD.Brush.Color := clCaida;
      ppsPER.Brush.Color := clCaida;
      ppsSIN.Brush.Color := clWhite;
   End;
   If DM1.cdsQry2.FieldByName('CAL_ANT').AsString = 'B' Then
   Begin
      ppsNOR.Brush.Color := clMejora;
      ppsCPP.Brush.Color := clMejora;
      ppsDEF.Brush.Color := clPermanencia;
      ppsDUD.Brush.Color := clCaida;
      ppsPER.Brush.Color := clCaida;
      ppsSIN.Brush.Color := clWhite;
   End;
   If DM1.cdsQry2.FieldByName('CAL_ANT').AsString = 'C' Then
   Begin
      ppsNOR.Brush.Color := clMejora;
      ppsCPP.Brush.Color := clMejora;
      ppsDEF.Brush.Color := clMejora;
      ppsDUD.Brush.Color := clPermanencia;
      ppsPER.Brush.Color := clCaida;
      ppsSIN.Brush.Color := clWhite;
   End;
   If DM1.cdsQry2.FieldByName('CAL_ANT').AsString = 'D' Then
   Begin
      ppsNOR.Brush.Color := clMejora;
      ppsCPP.Brush.Color := clMejora;
      ppsDEF.Brush.Color := clMejora;
      ppsDUD.Brush.Color := clMejora;
      ppsPER.Brush.Color := clPermanencia;
      ppsSIN.Brush.Color := clWhite;
   End;
   If DM1.cdsQry2.FieldByName('CAL_ANT').AsString = 'X' Then
   Begin
      ppsNOR.Brush.Color := clWhite;
      ppsCPP.Brush.Color := clWhite;
      ppsDEF.Brush.Color := clWhite;
      ppsDUD.Brush.Color := clWhite;
      ppsPER.Brush.Color := clWhite;
      ppsSIN.Brush.Color := clWhite;
   End;
   If DM1.cdsQry2.FieldByName('CAL_ANT').AsString = 'Y' Then
   Begin
      ppsNOR.Brush.Color := clWhite;
      ppsCPP.Brush.Color := clWhite;
      ppsDEF.Brush.Color := clWhite;
      ppsDUD.Brush.Color := clWhite;
      ppsPER.Brush.Color := clWhite;
      ppsSIN.Brush.Color := clWhite;
   End;
End;
(******************************************************************************)

Procedure TFCompararTraslados.fn_ocultar_datos();
Var
   xsSQL : String;
Begin
   edPeriodoAnterior.Text := '';
   xsSQL := 'SELECT ''0'' CAL_ACT, ''NOR'' CAL_ACT_DES, '
      + '       1.1 CANT_TOTAL_ACT, '
      + '       1.1 SALVEN_TOTAL_ACT, '
      + '       1.1 CANT_MEJORAS_ACT, '
      + '       1.1 SALVEN_MEJORAS_ACT, '
      + '       1.1 CANT_PERMANENCIAS_ACT, '
      + '       1.1 SALVEN_PERMANENCIAS_ACT, '
      + '       1.1 CANT_CAIDAS_ACT, '
      + '       1.1 SALVEN_CAIDAS_ACT, '
      + '       1.1 CANT_NUEVOS_ACT, '
      + '       1.1 SALVEN_NUEVOS_ACT '
      + '  FROM DUAL '
      + ' WHERE 1 = 2 ';

   DM1.cdsQry1.Close;
   DM1.cdsQry1.DataRequest(xsSQL);
   DM1.cdsQry1.Open;
   dbgResultados01.DataSource := DM1.dsQry1;

   xsSQL := 'SELECT ''X'' CAL_ANT, ''SIN CALIFICACION'' CAL_ANT_DES, '
      + '       1.1 CANT_NOR, '
      + '       1.1 SALVEN_NOR, '
      + '       1.1 CANT_CPP, '
      + '       1.1 SALVEN_CPP, '
      + '       1.1 CANT_DEF, '
      + '       1.1 SALVEN_DEF, '
      + '       1.1 CANT_DUD, '
      + '       1.1 SALVEN_DUD, '
      + '       1.1 CANT_PER, '
      + '       1.1 SALVEN_PER, '
      + '       1.1 CANT_SIN,  '
      + '       1.1 SALVEN_SIN  '
      + '  FROM DUAL '
      + ' WHERE 1 = 2 ';
   DM1.cdsQry2.Close;
   DM1.cdsQry2.DataRequest(xsSQL);
   DM1.cdsQry2.Open;
   dbgResultados02.DataSource := DM1.dsQry2;

   rgMostrar.enabled := false;
   btnExportar.enabled := false;
   btnImprimir.enabled := false;

End;
(******************************************************************************)

Procedure TFCompararTraslados.cboPeriodoCarteraSeleccionadoChange(
   Sender : TObject);
Var
   xsSQL : String;
Begin
   fn_ocultar_datos();
   xsSQL := 'SELECT MAX(PERIODO) MAX_PERIODO FROM CFC000 WHERE PERIODO < ' + QuotedStr(cboPeriodoCarteraSeleccionado.Text);
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xsSQL);
   DM1.cdsQry.Open;
   edPeriodoAnterior.Text := DM1.cdsQry.fieldbyname('MAX_PERIODO').AsString;
End;
(******************************************************************************)

End.
