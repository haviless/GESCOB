// Inicio Uso Estándares: 01/08/2011
// Unidad : Gestión de Cobranzas
// Formulario : fSegControl
// Fecha de Creación :
// Autor : Equipo de Sistemas
// Objetivo : Seguimiento y control
// Actualizaciones:
// SPP_201401_GESCOB: Importacion masiva interna y Mejoras del proceso de priorizacion
// SPP_201401_GESCOB: Se realiza el pase a producción a partir del HPC_201401_GESCOB
// HPC_201501_GESCOB: mejoras al proceso depriorizacion de inicio de mes
unit GES201;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, Wwdbigrd, Wwdbgrid, wwExport,
  StdCtrls, Buttons, ExtCtrls, TeEngine, Series, TeeProcs, Chart,
  DbChart, DB, wwClient, ComCtrls, Spin, wwdblook, ppComm, ppRelatv,
  ppProd, ppClass, ppReport, ppPrnabl, ppCtrls, ppBands, ppCache, fcLabel,
  Menus, jpeg,
  Mask, wwdbedit, Wwdbspin, BubbleCh, CheckLst, fcButton, fcImgBtn,
  fcShapeBtn, DBGrids,shellapi;

type
  TfSegControl = class(TForm)
    pnlBusqueda: TPanel;
    lblTitulo: TLabel;
    lbl1: TLabel;
    cboPeriodoCartera: TwwDBLookupCombo;
    btnExportar: TBitBtn;
    SaveDialog1: TSaveDialog;
    dbgData: TwwDBGrid;
    pnlGraficos: TPanel;
    DBChart01: TDBChart;
    DBChart03: TDBChart;
    DBChart02: TDBChart;
    procedure FormActivate(Sender: TObject);
    procedure DBChart01ClickSeries(Sender: TCustomChart;
      Series: TChartSeries; ValueIndex: Integer; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure DBChart02ClickSeries(Sender: TCustomChart;
      Series: TChartSeries; ValueIndex: Integer; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cboPeriodoCarteraChange(Sender: TObject);
    procedure btnExportarClick(Sender: TObject);
    procedure DBChart03ClickSeries(Sender: TCustomChart;
      Series: TChartSeries; ValueIndex: Integer; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
    xSufijoHis : string;
    Procedure CreaGrafico(xTipoGrafico : Integer; xCds : TwwClientDataSet; xChart : TDBChart; xMens01, xMens02, xMstSerie : String; xPrefijo_Nombre : String );
    procedure fn_cargar_periodos_cartera;
    function fn_consultar_resumen(P_OriOpe:string; P_TipCam:string):string;
    procedure fn_generar_data;
    procedure fn_get_asignados(p_Gestor: string);
    procedure fn_get_contactados(p_Gestor: string);
    procedure fn_get_gestionados(p_Gestor: string);
    procedure fn_get_resultados(p_Gestor: string);
  public
    { Public declarations }
  end;

var
  fSegControl: TfSegControl;

implementation

uses GESDM1, GES202;

{$R *.dfm}

{ TfSegControl }

(******************************************************************************)
procedure TfSegControl.fn_cargar_periodos_cartera();
Var
   xSQL : String;
Begin
   xSQL:='SELECT PERIODO FROM GES_COB_COMPROMISO A GROUP BY PERIODO ORDER BY PERIODO DESC';
   DM1.cdsQry1.Close;
   DM1.cdsQry1.DataRequest(xSQL);
   DM1.cdsQry1.Open;
   cboPeriodoCartera.LookupTable := DM1.cdsQry1;
   cboPeriodoCartera.LookupField := 'PERIODO';
   cboPeriodoCartera.Selected.Clear;
   cboPeriodoCartera.Selected.Add('PERIODO'#9'8'#9'Periodo');
   cboPeriodoCartera.Text := DM1.fn_get_periodo_gestion_actual();
   //cboPeriodoCartera.Text := DM1.fn_get_periodo_gestion_anterior(DM1.fn_get_periodo_gestion_actual());
end;
(******************************************************************************)
procedure TfSegControl.fn_generar_data();
var xSQL : string;
begin
     // GENERA LA DATA
     // INICIO : HPC_201501_GESCOB
     xSQL := ' DECLARE '
            +'    P_PERIODO VARCHAR2(6) ::= ' + QuotedStr(cboPeriodoCartera.Text) + '; '
            +'    V_PERIODO_ANT VARCHAR2(6); '
            +'    V_PRIMER_DIA_SIG_MES DATE; '
            +'    V_ULTIMO_DIA_SIG_MES DATE; '
            +' BEGIN '
            +'    V_PRIMER_DIA_SIG_MES ::= ADD_MONTHS(TO_DATE(P_PERIODO,''YYYYMM''),1); '
            +'    V_ULTIMO_DIA_SIG_MES ::= LAST_DAY(V_PRIMER_DIA_SIG_MES); '
            +'  EXECUTE IMMEDIATE ''TRUNCATE TABLE DB2ADMIN.COB_IND_EFE_COB_GTT''; '
            +'  INSERT INTO COB_IND_EFE_COB_GTT '
            +'   (ASOID, ASOAPENOM, SALVEN, SALTOT, VALCUO, CUOREA, '
            +'    CODIGO_PRIORIDAD, DISEST, CFC_FIN, '
            +'    DISOPE, PESO, GESTOR, ASIGNADO, GESTIONADO, '
            +'    CONTACTADO, PAGADO, TOTPAG, OFIGES, TIPCAM) '
            +'  SELECT ASOID, ASOAPENOM, SALVEN, SALTOT, VALCUO, CUOREA, CODIGO_PRIORIDAD, '
            +'     DESCRIPCION_PRIORIDAD DISEST, CFC_FIN, '
            +'     DISOPE, '
            +'     CASE '
            +'       WHEN CUOREA >= 1.5 AND CUOREA <= 2 THEN 2 '
            +'       WHEN CUOREA > 2 AND CFC_FIN IN (''0'', ''A'', ''B'', ''C'') THEN 3 '
            +'       WHEN CUOREA > 1 AND CFC_FIN IN (''C2'', ''D'') THEN 4 '
            +'       ELSE 1 '
            +'     END PESO, GESTOR, ASIGNADO, GESTIONADO, CONTACTADO, PAGADO, TOTPAG, OFIGES, NVL(TIPCAM,''NORMAL'') TIPCAM '
            +'    FROM (SELECT A.PERIODO, A.ASOID, A.ASOAPENOM, A.USUARIO, A.CODIGO_REGLA, B.CODIGO_PRIORIDAD, '
            +'         C.DESCRIPCION_PRIORIDAD, DD.SALVEN, '
            +'       (NVL(DD.SALVEN, 0) + NVL(DD.SALPEN, 0)) SALTOT, DD.VALCUO, '
            +'       E.SALDOS_FV, SALDOS_FT, E.CFC_F, E.DIASTRANS, '
            +'       ROUND(SALDOS_FV / SALDOS_FT, 0) FACTOR, '
            +'       CASE '
            +'          WHEN (E.CFC_F = ''C'' AND ROUND(SALDOS_FV / SALDOS_FT, 0) = 1) THEN ''C2'' '
            +'          WHEN (E.CFC_F = ''C'' AND ROUND(SALDOS_FV / SALDOS_FT, 0) <> 1) THEN E.CFC_F '
            +'          WHEN (E.CFC_F <> ''C'') THEN E.CFC_F '
            +'         END CFC_FIN, TRUNC(DD.SALVEN / DD.VALCUO, 1) CUOREA, '
            +'       G.USUARIO GESTOR, G.ASIGNADO, G.GESTIONADO, G.CONTACTADO, '
            +'       G.PAGADO, G.TOTPAG, OFIGES, A.TIPCAM, D.DISOPE '
            +'          FROM GES_COB_DOM'+xSufijoHis+' A, GES_COB_REG B, GES_COB_PRI C, '
            +'               (SELECT A.ASOID '
            +'                      ,A.PERIODO '
            +'                      ,B.DISOPELAG DISOPE '
            +'                  FROM GES000_MOD_PRO      A '
            +'                      ,GES_COB_DIS_OPE_CAB B '
            +'                 WHERE A.PERIODO = P_PERIODO '
            +'                   AND A.CODDISOPE = B.CODDISOPE '
            +'                UNION '
            +'                SELECT A.ASOID '
            +'                      ,A.PERIODO '
            +'                      ,B.DISOPELAG DISOPE '
            +'                  FROM GES000_MOD_PRO_HIS  A '
            +'                      ,GES_COB_DIS_OPE_CAB B '
            +'                 WHERE A.PERIODO = P_PERIODO '
            +'                   AND A.CODDISOPE = B.CODDISOPE) D, '
            +'           GES_COB_RPT_ING_MEN DD, GES000'+xSufijoHis+' E, '
            +'        (SELECT A.PERIODO, A.ASOID, A.USUARIO, ''S'' ASIGNADO, '
            +'             CASE WHEN D.ASOID IS NOT NULL THEN ''S'' ELSE ''N'' END GESTIONADO, '
            +'             NVL(CONTACTADO, ''N'') CONTACTADO, '
            +'             CASE WHEN NVL(TOTPAG, 0) > 0 THEN ''S'' ELSE ''N'' END PAGADO, '
            +'             NVL(TOTPAG, 0) TOTPAG, OFIGES '
            +'          FROM GES_COB_DOM'+xSufijoHis+' A, GES_COB_REG B, GES_COB_PRI C, '
            +'             (SELECT ASOID, MAX(IDGESTION) IDGESTION, MAX(IDGESTIONDET) IDGESTIONDET, MAX(OFIPRI) OFIGES '
            +'             FROM GES_COB_SEG X, APO110 Y '
            +'              WHERE PERIODO = P_PERIODO '
            +'              AND X.OFDESID = Y.OFDESID(+) '
            +'              GROUP BY ASOID) D, GES_REF_SEG E, '
            +'             GES_REF_SEG_DET F, '
            +'             (SELECT ASOID, SUM(NVL(CREMTOCOB, 0)) TOTPAG '
            +'             FROM CRE310 '
            +'              WHERE TRUNC(FREG) BETWEEN TRUNC(V_PRIMER_DIA_SIG_MES) AND TRUNC(V_ULTIMO_DIA_SIG_MES) '
            +'              AND FORPAGID IN (''02'', ''03'') '
            +'              AND CREESTID NOT IN (''23'', ''04'', ''13'', ''99'') '
            +'              GROUP BY ASOID) G '
            +'           WHERE A.PERIODO = P_PERIODO '
            +'           AND A.CODIGO_REGLA IS NOT NULL '
            +'           AND A.CODIGO_REGLA = B.CODIGO_REGLA(+) '
            +'           AND B.CODIGO_PRIORIDAD = C.CODIGO_PRIORIDAD(+) '
            +'           AND A.ASOID = D.ASOID(+) '
            +'           AND D.IDGESTION = E.IDGTN(+) '
            +'           AND D.IDGESTION = F.IDGTN(+) '
            +'           AND D.IDGESTIONDET = F.IDGTNDET(+) '
            +'           AND A.ASOID = G.ASOID(+)) G '
            +'       WHERE A.PERIODO = P_PERIODO '
            +'       AND A.ASOID = G.ASOID(+) '
            +'       AND A.CODIGO_REGLA = B.CODIGO_REGLA(+) '
            +'       AND B.CODIGO_PRIORIDAD = C.CODIGO_PRIORIDAD(+) '
            +'       AND A.ASOID = D.ASOID(+) '
            +'       AND A.PERIODO = D.PERIODO(+) '
            +'       AND A.ASOID = DD.ASOID(+) '
            +'       AND A.PERIODO = DD.PERIODO(+) '
            +'       AND A.ASOID = E.ASOID(+) '
            +'       AND A.PERIODO = E.PERIODO(+) '
            +'       AND A.CODIGO_REGLA IS NOT NULL '
            +'      ); '
            +'       COMMIT; '
            +' END; ';
     // FIN : HPC_201501_GESCOB            
     DM1.DCOM1.AppServer.EjecutaSql(xSQL);
end;
(******************************************************************************)
function TfSegControl.fn_consultar_resumen(P_OriOpe:string; P_TipCam:string): string;
var xSQL: string;
begin
(*
     xSQL := 'SELECT A.GESTOR, FAC_01 + FAC_02 + FAC_03 + FAC_04 FAC_TOT '
          + '   FROM (SELECT GESTOR, PON_RC, ROWNUM FAC_01, ORIOPE, TIPCAM '
          + '      FROM (SELECT GESTOR, SUM(PON_RC) PON_RC, MAX(ORIOPE) ORIOPE, MAX(TIPCAM) TIPCAM '
          + '         FROM (SELECT GESTOR, DISOPE, '
          + '             SUM(PON_RC) PON_RC, SUM(PON_CN) PON_CN, SUM(PON_PG) PON_PG, '
          + '             SUM(DEUPAG) * MAX(PESO) PON_CT, MAX(ORIOPE) ORIOPE, MAX(TIPCAM) TIPCAM '
          + '           FROM (SELECT GESTOR, DISOPE, SALVEN, SALTOT, '
          + '               CASE WHEN PAGADO = ''S'' THEN 1 ELSE 0 END DEUPAG, TOTPAG, PESO, '
          + '               (SALVEN * PESO) PON_RC, '
          + '               CASE WHEN PESO = 3 THEN (SALTOT * PESO) ELSE 0 END PON_CN, (TOTPAG * PESO) PON_PG '
          + '               ,CASE WHEN OFIGES = ''01'' THEN ''LIMA'' ELSE ''PROVINCIA'' END ORIOPE '
          + '               ,NVL(TIPCAM,''NORMAL'') TIPCAM '
          + '              FROM COB_IND_EFE_COB_GTT '
          + '             WHERE ASIGNADO = ''S'' AND GESTIONADO = ''S'' AND CONTACTADO = ''S'' AND PAGADO = ''S'' '
          + '            ) '
          + '          GROUP BY GESTOR, DISOPE) '
          + '       GROUP BY GESTOR '
          + '       ORDER BY PON_RC)) A, '
          // CONSULTA 2
          + '   (SELECT GESTOR, PON_CN, ROWNUM FAC_02, ORIOPE, TIPCAM '
          + '     FROM (SELECT GESTOR, SUM(PON_CN) PON_CN, MAX(ORIOPE) ORIOPE, MAX(TIPCAM) TIPCAM '
          + '        FROM (SELECT GESTOR, DISOPE, '
          + '            SUM(PON_RC) PON_RC, SUM(PON_CN) PON_CN, '
          + '            SUM(PON_PG) PON_PG, SUM(DEUPAG) * MAX(PESO) PON_CT, MAX(ORIOPE) ORIOPE, MAX(TIPCAM) TIPCAM '
          + '           FROM (SELECT GESTOR, DISOPE, SALVEN, SALTOT, '
          + '              CASE WHEN PAGADO = ''S'' THEN 1 ELSE 0 END DEUPAG, TOTPAG, PESO, (SALVEN * PESO) PON_RC, '
          + '              CASE WHEN PESO = 3 THEN (SALTOT * PESO) ELSE 0 END PON_CN, (TOTPAG * PESO) PON_PG '
          + '              ,CASE WHEN OFIGES = ''01'' THEN ''LIMA'' ELSE ''PROVINCIA'' END ORIOPE '
          + '              ,NVL(TIPCAM,''NORMAL'') TIPCAM '
          + '             FROM COB_IND_EFE_COB_GTT '
          + '            WHERE ASIGNADO = ''S'' AND GESTIONADO = ''S'' AND CONTACTADO = ''S'' AND PAGADO = ''S'' '
          + '            ) '
          + '          GROUP BY GESTOR, DISOPE) '
          + '       GROUP BY GESTOR '
          + '       ORDER BY PON_CN)) B, '
          // CONSULTA 3
          + '   (SELECT GESTOR, PON_PG, ROWNUM FAC_03, ORIOPE, TIPCAM '
          + '     FROM (SELECT GESTOR, SUM(PON_PG) PON_PG, MAX(ORIOPE) ORIOPE, MAX(TIPCAM) TIPCAM '
          + '        FROM (SELECT GESTOR, DISOPE, '
          + '            SUM(PON_RC) PON_RC, SUM(PON_CN) PON_CN, SUM(PON_PG) PON_PG, '
          + '            SUM(DEUPAG) * MAX(PESO) PON_CT, MAX(ORIOPE) ORIOPE, MAX(TIPCAM) TIPCAM '
          + '           FROM (SELECT GESTOR, DISOPE, SALVEN, SALTOT, '
          + '               CASE WHEN PAGADO = ''S'' THEN 1 ELSE 0 END DEUPAG, TOTPAG, PESO, (SALVEN * PESO) PON_RC, '
          + '               CASE WHEN PESO = 3 THEN (SALTOT * PESO) ELSE 0 END PON_CN, (TOTPAG * PESO) PON_PG '
          + '               ,CASE WHEN OFIGES = ''01'' THEN ''LIMA'' ELSE ''PROVINCIA'' END ORIOPE '
          + '               ,NVL(TIPCAM,''NORMAL'') TIPCAM '
          + '              FROM COB_IND_EFE_COB_GTT '
          + '             WHERE ASIGNADO = ''S'' AND GESTIONADO = ''S'' AND CONTACTADO = ''S'' AND PAGADO = ''S'' ) '
          + '          GROUP BY GESTOR, DISOPE) '
          + '       GROUP BY GESTOR '
          + '       ORDER BY PON_PG)) C, '
          // CONSULTA 4
          + '   (SELECT GESTOR, PON_CT, ROWNUM FAC_04, ORIOPE, TIPCAM '
          + '     FROM (SELECT GESTOR, SUM(PON_CT) PON_CT, MAX(ORIOPE) ORIOPE, MAX(TIPCAM) TIPCAM '
          + '        FROM (SELECT GESTOR, DISOPE, '
          + '            SUM(PON_RC) PON_RC, SUM(PON_CN) PON_CN, SUM(PON_PG) PON_PG, '
          + '            SUM(DEUPAG) * MAX(PESO) PON_CT, MAX(ORIOPE) ORIOPE, MAX(TIPCAM) TIPCAM '
          + '           FROM (SELECT GESTOR, DISOPE, SALVEN, SALTOT, '
          + '               CASE WHEN PAGADO = ''S'' THEN 1 ELSE 0 END DEUPAG, TOTPAG, PESO, (SALVEN * PESO) PON_RC, '
          + '               CASE WHEN PESO = 3 THEN (SALTOT * PESO) ELSE 0 END PON_CN, (TOTPAG * PESO) PON_PG '
          + '               ,CASE WHEN OFIGES = ''01'' THEN ''LIMA'' ELSE ''PROVINCIA'' END ORIOPE '
          + '               ,NVL(TIPCAM,''NORMAL'') TIPCAM '
          + '              FROM COB_IND_EFE_COB_GTT '
          + '             WHERE ASIGNADO = ''S'' AND GESTIONADO = ''S'' AND CONTACTADO = ''S'' AND PAGADO = ''S'' ) '
          + '          GROUP BY GESTOR, DISOPE) '
          + '       GROUP BY GESTOR '
          + '       ORDER BY PON_CT)) D '
          + ' WHERE A.GESTOR = B.GESTOR '
          + '   AND A.GESTOR = C.GESTOR '
          + '   AND A.GESTOR = D.GESTOR '
          + '   AND A.ORIOPE ' + P_OriOpe
          + '   AND A.TIPCAM ' + P_TipCam
          + ' ORDER BY FAC_01 + FAC_02 + FAC_03 + FAC_04 DESC ';
*)
     xSQL := 'SELECT GESTOR, FAC_01 + FAC_02 + FAC_03 + FAC_04 FAC_TOT '
           + '  FROM (SELECT GESTOR, '
           + '               ROW_NUMBER() OVER(PARTITION BY TIPCAM ORDER BY PON_RC ) FAC_01, '
           + '               ROW_NUMBER() OVER(PARTITION BY TIPCAM ORDER BY PON_CN, PON_RC ) FAC_02, '
           + '               ROW_NUMBER() OVER(PARTITION BY TIPCAM ORDER BY PON_PG, PON_RC ) FAC_03, '
           + '               ROW_NUMBER() OVER(PARTITION BY TIPCAM ORDER BY PON_CT, PON_RC ) FAC_04 '
           + '           FROM (SELECT GESTOR, SUM(PON_RC) PON_RC, SUM(PON_CN) PON_CN, SUM(PON_PG) PON_PG, '
           + '                        SUM(PON_CT) PON_CT, MAX(TIPCAM) TIPCAM '
           + '                   FROM (SELECT GESTOR, DISOPE, SUM(PON_RC) PON_RC, SUM(PON_CN) PON_CN, '
           + '                                SUM(PON_PG) PON_PG, SUM(DEUPAG) * MAX(PESO) PON_CT, '
           + '                                MAX(ORIOPE) ORIOPE, MAX(TIPCAM) TIPCAM '
           + '                           FROM (SELECT GESTOR, DISOPE, SALVEN, SALTOT, '
           + '                                        CASE WHEN PAGADO = ''S'' THEN 1 ELSE 0 END DEUPAG, TOTPAG, '
           + '                                        PESO, (SALVEN * PESO) PON_RC, '
           + '                                        CASE WHEN PESO = 3 THEN (SALTOT * PESO) ELSE 0 END PON_CN, '
           + '                                        (TOTPAG * PESO) PON_PG, '
           + '                                        CASE WHEN OFIGES = ''01'' THEN ''LIMA'' ELSE ''PROVINCIA'' END ORIOPE, '
           + '                                        NVL(TIPCAM, ''NORMAL'') TIPCAM '
           + '                                   FROM COB_IND_EFE_COB_GTT '
           + '                                  WHERE ASIGNADO = ''S'' '
           + '                                    AND GESTIONADO = ''S'' '
           + '                                    AND CONTACTADO = ''S'' '
           + '                                    AND PAGADO = ''S'' '
           + '                                    AND CASE WHEN OFIGES = ''01'' THEN ''LIMA'' ELSE ''PROVINCIA'' END ' + P_OriOpe
           + '                                    AND NVL(TIPCAM, ''NORMAL'') ' + P_TipCam
           + '                                    ) '
           + '                                  GROUP BY GESTOR, DISOPE) '
           + '                          GROUP BY GESTOR)) '
           + '  ORDER BY FAC_01 + FAC_02 + FAC_03 + FAC_04 DESC ';
  result := xSQL;
end;
(******************************************************************************)
procedure TfSegControl.cboPeriodoCarteraChange(Sender: TObject);
var xSQL : string;
begin
     // colocar sufijo para historicos
   if cboPeriodoCartera.Text = DM1.fn_get_periodo_gestion_actual() then
      xSufijoHis := ''
   else
      xSufijoHis := '_HIS';

   IF (cboPeriodoCartera.Text) <>'' THEN
   BEGIN
     Screen.Cursor := crHourGlass;

     // ETIQUETA EL PERIDO QUE SE ESTA PROCESANDO
     xSQL:='SELECT ''CARTERA '' || CARTERA || ''  /  GESTIONADO '' || GESTION TITULO '
         + '  FROM (SELECT TO_CHAR(TO_DATE(' + QuotedStr(cboPeriodoCartera.Text) + ', ''YYYYMM''), ''MON-YYYY'') CARTERA, '
         + '               TO_CHAR(ADD_MONTHS(TO_DATE(' + QuotedStr(cboPeriodoCartera.Text) + ', ''YYYYMM''), 1), ''MON-YYYY'') GESTION '
         + '          FROM DUAL) ';
     DM1.cdsQry2.Close;
     DM1.cdsQry2.DataRequest(xSQL);
     DM1.cdsQry2.Open;
     lblTitulo.Caption := DM1.cdsQry2.fieldbyname('TITULO').AsString;

     fn_generar_data();

     //CONSULTA PARA LOS GRAFICOS
     DM1.cdsQry3.Close;
     DM1.cdsQry3.DataRequest(fn_consultar_resumen(' = ''LIMA''', ' = ''NORMAL'''));
     DM1.cdsQry3.Open;
     CreaGrafico(1, DM1.cdsQry3, DBChart01, 'INDICADOR DE EFECTIVIDAD - LIMA (Promedio Ponderado)','', 'S', 'LIM_');

     DM1.cdsQry4.close;
     DM1.cdsQry4.DataRequest(fn_consultar_resumen(' <> ''LIMA''', ' = ''NORMAL'''));
     DM1.cdsQry4.Open;
     CreaGrafico(1, DM1.cdsQry4, DBChart02, 'INDICADOR DE EFECTIVIDAD - PROVINCIAS (Promedio Ponderado)','', 'S', 'PRO_');

     DM1.cdsQry12.close;
     DM1.cdsQry12.DataRequest(fn_consultar_resumen(' IN ( ''LIMA'' , ''PROVINCIA'' )',' = ''CAMPAÑA'''));
     DM1.cdsQry12.Open;
     CreaGrafico(1, DM1.cdsQry12, DBChart03, 'INDICADOR DE EFECTIVIDAD - CAMPAÑAS (Promedio Ponderado)','', 'S', 'CAM_');

     Screen.Cursor := crDefault;
   END;
end;

(******************************************************************************)

procedure TfSegControl.FormActivate(Sender: TObject);
begin
   xSufijoHis := '';
   fn_cargar_periodos_cartera();
end;
(******************************************************************************)
(******************************************************************************)

procedure TfSegControl.CreaGrafico(xTipoGrafico: Integer;
  xCds: TwwClientDataSet; xChart: TDBChart; xMens01, xMens02,
  xMstSerie: String ; xPrefijo_Nombre : String );
const
   Color_01 : Array[0..0] Of Integer = (16747804);
   Color_02 : Array[0..0] Of Integer = (5855743);
   Color_03 : Array[0..2] Of TColor = (5855743, 16747804, 40704);
   Color_04 : Array[0..0] Of TColor = (16747804);
   Color_05 : Array[0..0] Of TColor = (40704);
   Color_06 : Array[0..4] Of TColor = (40704,16747804,5212415,16742911,5855743);
   Color_07 : Array[0..3] Of TColor = (40704,16747804,5212415,16742911);
   Color_08 : Array[0..1] Of TColor = (5855743, 16747804);
var
   xFieldDefList : TFieldDefList;
   i, i2, xMark, xColor, xTitle : integer;
   MySerie : TChartSeries;
   xIndex : String;
Begin
   Randomize;
   xChart.FreeAllSeries;
   xChart.Title.Text.Clear;
   xChart.Title.Text.Add(xMens01);
   IF xMens02 <> '' THEN xChart.Title.Text.Add(xMens02);
   xFieldDefList := xCds.FieldDefList;
   xIndex := xFieldDefList.FieldDefs[0].Name;
   i2 := 0;
   xMark := 5;
   xTitle := StrToInt(Copy(DateToStr(DM1.FechaSys), 7, 4)) - 1;
   For i := 0 To xFieldDefList.Count - 1 Do
   Begin
      If xFieldDefList.FieldDefs[i].Name <> xIndex Then
      Begin
         Case xTipoGrafico Of
            1 :Begin
                  xChart.AddSeries(TBarSeries.Create(Self));
                  TBarSeries(xChart.Series[i2]).BarPen.Visible := True;
               End;
            2 :Begin
                  xChart.AddSeries(TLineSeries.Create(Self));
                  TLineSeries(xChart.Series[i2]).LinePen.Width := 3;
                  TLineSeries(xChart.Series[i2]).Pointer.Visible := True;
               End;
            3 :Begin
                  xChart.AddSeries(TAreaSeries.Create(Self));
               End;
            4 :Begin
                  xChart.AddSeries(TPieSeries.Create(self));
                  TPieSeries(xChart.Series[i2]).Marks.Style:= smsPercent;
                  TPieSeries(xChart.Series[i2]).Marks.Font.Size:=11;
               End;
            5:Begin
                  xChart.AddSeries(TBubbleSeries.Create(self));
              End;
            6:Begin
                  xChart.AddSeries(THorizBarSeries.Create(self));
              End;
         End;
         xChart.Series[i2].DataSource := xCds;
         xChart.Series[i2].XLabelsSource := xIndex;
         //xChart.Series[i2].YValueS.ValueSource := xFieldDefList.FieldDefs[i].Name;

         if xTipoGrafico = 6 then
           xChart.Series[i2].XValues.ValueSource := xFieldDefList.FieldDefs[i].Name
         else
           xChart.Series[i2].YValueS.ValueSource := xFieldDefList.FieldDefs[i].Name;

         xChart.Series[i2].Name := xPrefijo_Nombre + xFieldDefList.FieldDefs[i].Name;
         xChart.Series[i2].Marks.Visible := False;
         xChart.Series[i2].Marks.Style := smsValue;
         xChart.Series[i2].Marks.ArrowLength := xMark;
         xChart.Series[i2].Marks.BackColor := clYellow;
         xChart.Series[i2].Marks.Arrow.Width := 2;
         xChart.Series[i2].Marks.Arrow.Color := clBlack;
         If xTipoGrafico=4 Then
            Begin
                xChart.Series[i2].valueFormat := '##,###,##0';
                xChart.Series[i2].Marks.Visible := False;
                xChart.Series[i2].Marks.Style := smsValue;
            End;
         If (xMstSerie='S') Or (Copy(xMstSerie,1,1)='W') Then
            xChart.Series[i2].Title := xFieldDefList.FieldDefs[i].Name
         Else
            xChart.Series[i2].Title := IntToStr(xTitle);

         xTitle := xTitle + 1;

         If i2 = 0 Then
            If xMstSerie = 'X' Then
               xChart.Series[i2].SeriesColor := Color_01[Random(1)]
            Else If xMstSerie = 'S' Then
               xChart.Series[i2].SeriesColor := Color_03[i2]
            Else If xMstSerie = 'R' Then
               xChart.Series[i2].SeriesColor := Color_04[i2]
            Else If xMstSerie = 'N' Then
               xChart.Series[i2].SeriesColor := Color_05[i2]
            Else
               xChart.Series[i2].SeriesColor := Color_01[Random(1)]
         Else
            If xMstSerie = 'S' Then
               xChart.Series[i2].SeriesColor := Color_03[i2]
            Else
               xChart.Series[i2].SeriesColor := Color_02[Random(1)];

         If Copy(xMstSerie,1,1)='W' Then
            Begin
              xChart.Series[i2].SeriesColor := Color_06[StrToInt(Copy(xMstSerie,2,1))];
            End;

         If xMstSerie='A' Then
            Begin
              xChart.Series[i2].SeriesColor := Color_08[i2];
            End;

         xChart.Series[i2].Marks.Visible:=True;

         xMark := xMark + 25;

         i2 := i2 + 1;

         If i2 > 1 Then
            xChart.Legend.Visible := True
         Else
            xChart.Legend.Visible := False;

         If xMstSerie = 'X' Then
         Begin
            xTipoGrafico := xTipoGrafico + 1;
            xChart.Legend.Visible := False;
         End;

      End;
   End;
   xChart.AllowPanning:=pmNone;
   xChart.AllowZoom:=False;
   xChart.Legend.Font.Size:=12;
   If xTipoGrafico=4 Then
      Begin
        xChart.Legend.Visible := True;
        xChart.Legend.TextStyle:=ltsPlain;
        xChart.Legend.Font.Size:=12;
      End;

   xChart.RefreshData;
end;
(******************************************************************************)
procedure TfSegControl.fn_get_asignados(p_Gestor:string);
var xSQL : string;
begin
      xSQL:='SELECT CODIGO_PRIORIDAD, DISEST, DISOPE, COUNT(*) DEUDORES '
          + '  FROM COB_IND_EFE_COB_GTT '
          + ' WHERE GESTOR = ' + QuotedStr(p_Gestor)
          + '   AND ASIGNADO = ''S'' '
          + ' GROUP BY CODIGO_PRIORIDAD, DISEST, DISOPE '
          + ' ORDER BY CODIGO_PRIORIDAD ';

      DM1.cdsQry5.Close;
      DM1.cdsQry5.DataRequest(xSQL);
      DM1.cdsQry5.Open;
end;
(******************************************************************************)
procedure TfSegControl.fn_get_gestionados(p_Gestor:string);
var xSQL : string;
begin
      xSQL:='SELECT CODIGO_PRIORIDAD, DISEST, DISOPE, COUNT(*) DEUDORES '
          + '  FROM COB_IND_EFE_COB_GTT '
          + ' WHERE GESTOR = ' + QuotedStr(p_Gestor)
          + '   AND ASIGNADO = ''S'' '
          + '   AND GESTIONADO = ''S'' '
          + ' GROUP BY CODIGO_PRIORIDAD, DISEST, DISOPE '
          + ' ORDER BY CODIGO_PRIORIDAD ';

      DM1.cdsQry6.Close;
      DM1.cdsQry6.DataRequest(xSQL);
      DM1.cdsQry6.Open;
end;

(******************************************************************************)
procedure TfSegControl.fn_get_contactados(p_Gestor:string);
var xSQL : string;
begin
      xSQL:='SELECT CODIGO_PRIORIDAD, DISEST, DISOPE, COUNT(*) DEUDORES '
          + '  FROM COB_IND_EFE_COB_GTT '
          + ' WHERE GESTOR = ' + QuotedStr(p_Gestor)
          + '   AND ASIGNADO = ''S'' '
          + '   AND GESTIONADO = ''S'' '
          + '   AND CONTACTADO = ''S'' '
          + ' GROUP BY CODIGO_PRIORIDAD, DISEST, DISOPE '
          + ' ORDER BY CODIGO_PRIORIDAD ';

      DM1.cdsQry7.Close;
      DM1.cdsQry7.DataRequest(xSQL);
      DM1.cdsQry7.Open;
end;

(******************************************************************************)
procedure TfSegControl.fn_get_resultados(p_Gestor:string);
var xSQL : string;
begin
      xSQL:='SELECT CODIGO_PRIORIDAD, DISEST, DISOPE, COUNT(*) DEUDORES, SUM(NVL(TOTPAG, 0)) EFEBAN '
          + '  FROM COB_IND_EFE_COB_GTT '
          + ' WHERE GESTOR = ' + QuotedStr(p_Gestor)
          + '   AND ASIGNADO = ''S'' '
          + '   AND GESTIONADO = ''S'' '
          + '   AND CONTACTADO = ''S'' '
          + '   AND PAGADO = ''S''  '
          + ' GROUP BY CODIGO_PRIORIDAD, DISEST, DISOPE '
          + ' ORDER BY CODIGO_PRIORIDAD ';
      DM1.cdsQry8.Close;
      DM1.cdsQry8.DataRequest(xSQL);
      DM1.cdsQry8.Open;
      TNumericField(DM1.cdsQry8.FieldByName('EFEBAN')).DisplayFormat := '###,##0.#0';
end;

(******************************************************************************)

procedure TfSegControl.DBChart01ClickSeries(Sender: TCustomChart;
                                            Series: TChartSeries; ValueIndex: Integer; Button: TMouseButton;
                                            Shift: TShiftState; X, Y: Integer);
var xSQL:String;
begin
      Screen.Cursor := crHourGlass;
      fn_get_asignados(DBChart01.Series[0].XLabel[ValueIndex]);
      fn_get_gestionados(DBChart01.Series[0].XLabel[ValueIndex]);
      fn_get_contactados(DBChart01.Series[0].XLabel[ValueIndex]);
      fn_get_resultados(DBChart01.Series[0].XLabel[ValueIndex]);
      Screen.Cursor := crDefault;
      Try
         fDetSeguimiento := TfDetSeguimiento.create(Self);
         fDetSeguimiento.lblGest.Caption:=DBChart01.Series[0].XLabel[ValueIndex];
         fDetSeguimiento.lblGestor.Caption:=DBChart01.Series[0].XLabel[ValueIndex]+' - '+DM1.CrgDescrip('USERID='+QuotedStr(DBChart01.Series[0].XLabel[ValueIndex]), 'TGE006', 'USERNOM');
         fDetSeguimiento.lblPonderado.Caption:=FloatToStr( DBChart01.Series[0].YValue[ValueIndex]);
         fDetSeguimiento.lblPeriodo.Caption := cboPeriodoCartera.Text;
         fDetSeguimiento.xSufijoHis := self.xSufijoHis;
         fDetSeguimiento.ShowModal;
      Finally
         fDetSeguimiento.Free;
      End;

end;

(******************************************************************************)

procedure TfSegControl.DBChart02ClickSeries(Sender: TCustomChart;
                                            Series: TChartSeries; ValueIndex: Integer; Button: TMouseButton;
                                            Shift: TShiftState; X, Y: Integer);
var xSQL:String;
begin
      Screen.Cursor := crHourGlass;
      fn_get_asignados(DBChart02.Series[0].XLabel[ValueIndex]);
      fn_get_gestionados(DBChart02.Series[0].XLabel[ValueIndex]);
      fn_get_contactados(DBChart02.Series[0].XLabel[ValueIndex]);
      fn_get_resultados(DBChart02.Series[0].XLabel[ValueIndex]);
       Screen.Cursor := crDefault;
      Try
         fDetSeguimiento := TfDetSeguimiento.create(Self);
         fDetSeguimiento.lblGest.Caption:=DBChart02.Series[0].XLabel[ValueIndex];
         fDetSeguimiento.lblGestor.Caption:=DBChart02.Series[0].XLabel[ValueIndex]+' - '+DM1.CrgDescrip('USERID='+QuotedStr(DBChart02.Series[0].XLabel[ValueIndex]), 'TGE006', 'USERNOM');
         fDetSeguimiento.lblPonderado.Caption:=FloatToStr( DBChart02.Series[0].YValue[ValueIndex]);
         fDetSeguimiento.lblPeriodo.Caption := cboPeriodoCartera.Text;
         fDetSeguimiento.xSufijoHis := self.xSufijoHis;
         fDetSeguimiento.ShowModal;
      Finally
         fDetSeguimiento.Free;
      End;
end;
(******************************************************************************)
procedure TfSegControl.DBChart03ClickSeries(Sender: TCustomChart;
  Series: TChartSeries; ValueIndex: Integer; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var xSQL:String;
begin
      Screen.Cursor := crHourGlass;
      fn_get_asignados(DBChart03.Series[0].XLabel[ValueIndex]);
      fn_get_gestionados(DBChart03.Series[0].XLabel[ValueIndex]);
      fn_get_contactados(DBChart03.Series[0].XLabel[ValueIndex]);
      fn_get_resultados(DBChart03.Series[0].XLabel[ValueIndex]);
      Screen.Cursor := crDefault;
      Try
         fDetSeguimiento := TfDetSeguimiento.create(Self);
         fDetSeguimiento.lblGest.Caption:=DBChart03.Series[0].XLabel[ValueIndex];
         fDetSeguimiento.lblGestor.Caption:=DBChart03.Series[0].XLabel[ValueIndex]+' - '+DM1.CrgDescrip('USERID='+QuotedStr(DBChart03.Series[0].XLabel[ValueIndex]), 'TGE006', 'USERNOM');
         fDetSeguimiento.lblPonderado.Caption:=FloatToStr( DBChart03.Series[0].YValue[ValueIndex]);
         fDetSeguimiento.lblPeriodo.Caption := cboPeriodoCartera.Text;
         fDetSeguimiento.xSufijoHis := self.xSufijoHis;
         fDetSeguimiento.ShowModal;
      Finally
         fDetSeguimiento.Free;
      End;
end;
(******************************************************************************)
procedure TfSegControl.btnExportarClick(Sender: TObject);
var xSQL : string;
begin
   Try
      SaveDialog1.FileName := 'SeguimientoControl.slk';
      if SaveDialog1.Execute then
      begin
        Screen.Cursor := crHourGlass;
        xSQL:='SELECT ASOID CODIGO_ASOCIADO, ASOAPENOM APELLIDOS_NOMBRES, SALVEN SALDO_VENCIDO, SALTOT SALDO_TOTAL, '
            + '       VALCUO VALOR_CUOTA, CUOREA CUOTA_REAL, CODIGO_PRIORIDAD, '
            + '       DISEST DISTRIBUCION_ESTRATEGICA, CFC_FIN CFC, DISOPE DISTRIBUCION_OPERATIVA, PESO, GESTOR, ASIGNADO, GESTIONADO, '
            + '       CONTACTADO, PAGADO, TOTPAG TOTAL_PAGADO, OFIGES OFICINA_GESTION, TIPCAM TIPO_CAMPAÑA '
            + '  FROM COB_IND_EFE_COB_GTT ';
        DM1.cdsQry11.Close;
        DM1.cdsQry11.DataRequest(xSQL);
        DM1.cdsQry11.Open;
        dbgData.DataSource := DM1.dsQry11;

        With dbgData, dbgData.ExportOptions Do
        Begin
           ExportType := wwgetSYLK;
           FileName := SaveDialog1.FileName;// 'SeguimientoControl.slk';
           DM1.OpcionesExportExcel(dbgData.ExportOptions);
           TitleName := 'SeguimientoControl';
           Save;
           If Not (esoClipboard In Options) Then
              ShellExecute(Handle, 'Open', PChar(dbgData.exportoptions.Filename), Nil, Nil, sw_shownormal);
        End;
        Screen.Cursor := crDefault;
      end;
     Except
      Screen.Cursor := crDefault;
      MessageDlg('No se puede grabar el Archivo ' + chr(13) + 'Asegurece que tiene permiso de escritura en la carpeta C:\SOLExes ' + chr(13) + 'Cierre todos los Archivos en Excel y vuelva a intentarlo', mtWarning, [mbOk], 0);
   End;
end;
(******************************************************************************)
procedure TfSegControl.FormResize(Sender: TObject);
begin
  DBChart01.Height := round(pnlGraficos.Height/3);
  DBChart02.Height := DBChart01.Height;
end;
(******************************************************************************)
end.
