// Inicio Uso Estándares: 01/08/2011
// Unidad : Gestión de Cobranzas
// Formulario : FCuadrosComparativoAnalisisDet
// Fecha de Creación : 17/10/2014
// Autor : Equipo de Sistemas
// Objetivo : Medir el impacto de la gestion de cobranza - Detalle
// Actualizaciones:
// HPC_201403_GESCOB :  Cuadros comparativos para análisis(2.4)
// SPP_201404_GESCOB: Se realiza el pase a producción a partir del HPC_201403_GESCOB

unit GES572;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, wwdblook, Grids, Wwdbigrd, Wwdbgrid, db,
  TeEngine, Series, TeeProcs, Chart, DbChart, ppEndUsr, ppDB, ppDBPipe,
  ppParameter, ppBands, ppVar, ppCtrls, ppPrnabl, ppClass, ppCache, ppComm,
  ppRelatv, ppProd, ppReport, ppStrtch, ppSubRpt, ComCtrls;

type
  TFCuadrosComparativoAnalisisDet = class(TForm)
    pnl1: TPanel;
    btnSalir: TBitBtn;
    pnlIzquierdoSuperior: TPanel;
    lbl1: TLabel;
    Label1: TLabel;
    btnExportar: TBitBtn;
    pnlReporte: TPanel;
    dbgCabecera: TwwDBGrid;
    lblPeriodoGestion: TLabel;
    lblTipoCartera: TLabel;
    Label2: TLabel;
    lblTipoIndicador: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    lblUltimosMeses: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    lblOrigenOperacion: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnSalirClick(Sender: TObject);
    procedure btnExportarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    procedure fn_cargar_grid();
    { Private declarations }
  public
    { Public declarations }
    xsPeriodoGestion : string;
    xsTipoCarteraCod : string;
    xnTipoIndicadorCod : integer;
    xsUltimosMeses : string;
    xsOfdesid : string;
    xsTituloPeriodo : array of String;
  end;

var
  FCuadrosComparativoAnalisisDet: TFCuadrosComparativoAnalisisDet;

implementation

uses GESDM1, GES569, Math;

{$R *.dfm}

(******************************************************************************)
procedure TFCuadrosComparativoAnalisisDet.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;
(******************************************************************************)

procedure TFCuadrosComparativoAnalisisDet.btnSalirClick(Sender: TObject);
begin
  Close;
end;
(******************************************************************************)

procedure TFCuadrosComparativoAnalisisDet.fn_cargar_grid();
Var xsSQL : string;
    xnCantColumnas : integer;
    xnCont : integer;

    procedure fn_cargar_pintar_grid(pxDBG : TwwDBGrid; psTitulo_01 : String; pxFormato_01 : String; psTitulo_02 : String; pxFormato_02 : String);
    var
       xnBlo01: array of Double;
       xnBlo02: array of Double;
       xnBlo01Variacion : Double;
       xnBlo02Variacion : Double;
       xnContador : integer;
    begin
      SetLength(xnBlo01, xnCantColumnas);
      SetLength(xnBlo02, xnCantColumnas);
      WITH pxDBG DO
      begin
          Selected.Clear;
          Selected.Add('GESTOR'#9'30'#9'GESTOR');
          for xnContador := xnCantColumnas-1 downto 0 do Selected.Add('BLO01_MES_N_'+inttostr(xnContador)+''#9'15'#9''+xsTituloPeriodo[xnContador]+''#9'F'#9''+ psTitulo_01);
          Selected.Add('BLO01_VARIACION'#9'15'#9'VARIACIÓN~%'#9'F'#9''+ psTitulo_01);
          for xnContador := xnCantColumnas-1 downto 0 do Selected.Add('BLO02_MES_N_'+inttostr(xnContador)+''#9'15'#9''+xsTituloPeriodo[xnContador]+''#9'F'#9''+ psTitulo_02);
          Selected.Add('BLO02_VARIACION'#9'15'#9'VARIACIÓN~%'#9'F'#9''+ psTitulo_02);
          ApplySelected;

          //
          for xnContador := xnCantColumnas-1 downto 0 do xnBlo01[xnContador] := 0;
          for xnContador := xnCantColumnas-1 downto 0 do xnBlo02[xnContador] := 0;
          DataSource.DataSet.first;
          while not DataSource.DataSet.eof do
          begin
              for xnContador := xnCantColumnas-1 downto 0 do xnBlo01[xnContador] := xnBlo01[xnContador] + DataSource.DataSet.FieldByName('BLO01_MES_N_'+ inttostr(xnContador)).Value;
              for xnContador := xnCantColumnas-1 downto 0 do xnBlo02[xnContador] := xnBlo02[xnContador] + DataSource.DataSet.FieldByName('BLO02_MES_N_'+ inttostr(xnContador)).Value;
              DataSource.DataSet.next;
          end;

          //
          for xnContador := xnCantColumnas-1 downto 0 do TNumericField(DataSource.DataSet.FieldByName('BLO01_MES_N_'+ inttostr(xnContador))).DisplayFormat := pxFormato_01;
          TNumericField(DataSource.DataSet.FieldByName('BLO01_VARIACION')).DisplayFormat := '###,##0.#0';
          for xnContador := xnCantColumnas-1 downto 0 do TNumericField(DataSource.DataSet.FieldByName('BLO02_MES_N_'+ inttostr(xnContador))).DisplayFormat := pxFormato_02;
          TNumericField(DataSource.DataSet.FieldByName('BLO02_VARIACION')).DisplayFormat := '###,##0.#0';

          //
          ColumnByName('GESTOR').FooterValue  := 'TOTAL';
          for xnContador := xnCantColumnas-1 downto 0 do ColumnByName('BLO01_MES_N_'+inttostr(xnContador)).FooterValue := FormatCurr(pxFormato_01, xnBlo01[xnContador]);
          if xnTipoIndicadorCod = 0 then
          begin
            if xnBlo01[1] > 0 then xnBlo01Variacion := (xnBlo01[0]/xnBlo01[1])*100 else xnBlo01Variacion := 0;
          end
          else if xnTipoIndicadorCod = 1 then
            xnBlo01Variacion := xnBlo01[0] - xnBlo01[1];

          ColumnByName('BLO01_VARIACION').FooterValue := FormatCurr('###,##0.#0', xnBlo01Variacion);

          for xnContador := xnCantColumnas-1 downto 0 do ColumnByName('BLO02_MES_N_'+inttostr(xnContador)).FooterValue := FormatCurr(pxFormato_02, xnBlo02[xnContador]);
          if xnTipoIndicadorCod = 0 then
          begin
            if xnBlo02[1] > 0 then xnBlo02Variacion := (xnBlo02[0]/xnBlo02[1])*100 else xnBlo02Variacion := 0;
          end
          else if xnTipoIndicadorCod = 1 then
            xnBlo02Variacion := xnBlo02[0] - xnBlo02[1];

          ColumnByName('BLO02_VARIACION').FooterValue := FormatCurr('###,##0.#0', xnBlo02Variacion);

          DataSource.DataSet.first;
       end;
    end;
begin
 Screen.Cursor := crHourGlass;
 xnCantColumnas := strtoint(xsUltimosMeses);

 // cargar las cabeceras
 xsSQL := 'SELECT SUBSTR(TO_CHAR(TO_DATE(SUBSTR(PERIODO, 5, 2), ''MM''), ''MONTH'', ''NLS_DATE_LANGUAGE=SPANISH''), 1, 3) || '' '' || SUBSTR(PERIODO, 1, 4) MES '
        + '  FROM (SELECT TO_CHAR(ADD_MONTHS(TO_DATE(''201409'', ''YYYYMM''), 1 - LEVEL), ''YYYYMM'') PERIODO FROM DUAL CONNECT BY LEVEL BETWEEN 1 AND ' + inttostr(xnCantColumnas) + ') '
        + ' ORDER BY PERIODO DESC ';
 DM1.cdsQry.Close;
 DM1.cdsQry.DataRequest(xsSQL);
 DM1.cdsQry.Open;
 SetLength(xsTituloPeriodo, xnCantColumnas);
 DM1.cdsQry.First;
 while not DM1.cdsQry.Eof do
 begin
    xsTituloPeriodo[DM1.cdsQry.RecNo-1] := DM1.cdsQry.fieldbyname('MES').AsString;
    DM1.cdsQry.Next;
 end;

 // CARGAR GRILLA
 CASE xnTipoIndicadorCod OF
  0 :BEGIN
       xsSQL := 'SELECT AAA.OFDESID, BBB.OFDESNOM, AAA.GESTOR ';
       for xnCont := xnCantColumnas-1 downto 0 do xsSQL := xsSQL + ' ,AAA.BLO01_MES_N_' + inttostr(xnCont) + ' ';
       xsSQL := xsSQL + '      ,ROUND(CASE WHEN AAA.BLO01_MES_N_1 > 0 THEN (AAA.BLO01_MES_N_0/AAA.BLO01_MES_N_1) * 100 ELSE 0 END, 2) BLO01_VARIACION ';
       for xnCont := xnCantColumnas-1 downto 0 do xsSQL := xsSQL + ' ,AAA.BLO02_MES_N_' + inttostr(xnCont) + ' ';
       xsSQL := xsSQL + '      ,ROUND(CASE WHEN AAA.BLO02_MES_N_1 > 0 THEN (AAA.BLO02_MES_N_0/AAA.BLO02_MES_N_1) * 100 ELSE 0 END, 2) BLO02_VARIACION ';
       xsSQL := xsSQL
              + ' FROM(SELECT AA.OFDESID, AA.GESTOR '
              + '            ,SUM(CASE WHEN AA.PERIODO = TO_CHAR(ADD_MONTHS(TO_DATE(' + QuotedStr(xsPeriodoGestion) + ',''YYYYMM''), -5),''YYYYMM'') AND NVL(AA.MONCOB, 0) > 0 THEN 1 ELSE 0 END) BLO01_MES_N_5 '
              + '            ,SUM(CASE WHEN AA.PERIODO = TO_CHAR(ADD_MONTHS(TO_DATE(' + QuotedStr(xsPeriodoGestion) + ',''YYYYMM''), -4),''YYYYMM'') AND NVL(AA.MONCOB, 0) > 0 THEN 1 ELSE 0 END) BLO01_MES_N_4 '
              + '            ,SUM(CASE WHEN AA.PERIODO = TO_CHAR(ADD_MONTHS(TO_DATE(' + QuotedStr(xsPeriodoGestion) + ',''YYYYMM''), -3),''YYYYMM'') AND NVL(AA.MONCOB, 0) > 0 THEN 1 ELSE 0 END) BLO01_MES_N_3 '
              + '            ,SUM(CASE WHEN AA.PERIODO = TO_CHAR(ADD_MONTHS(TO_DATE(' + QuotedStr(xsPeriodoGestion) + ',''YYYYMM''), -2),''YYYYMM'') AND NVL(AA.MONCOB, 0) > 0 THEN 1 ELSE 0 END) BLO01_MES_N_2 '
              + '            ,SUM(CASE WHEN AA.PERIODO = TO_CHAR(ADD_MONTHS(TO_DATE(' + QuotedStr(xsPeriodoGestion) + ',''YYYYMM''), -1),''YYYYMM'') AND NVL(AA.MONCOB, 0) > 0 THEN 1 ELSE 0 END) BLO01_MES_N_1 '
              + '            ,SUM(CASE WHEN AA.PERIODO = TO_CHAR(ADD_MONTHS(TO_DATE(' + QuotedStr(xsPeriodoGestion) + ',''YYYYMM''),  0),''YYYYMM'') AND NVL(AA.MONCOB, 0) > 0 THEN 1 ELSE 0 END) BLO01_MES_N_0 '
              + '            ,SUM(CASE WHEN AA.PERIODO = TO_CHAR(ADD_MONTHS(TO_DATE(' + QuotedStr(xsPeriodoGestion) + ',''YYYYMM''), -5),''YYYYMM'') AND NVL(AA.MONCOB, 0) > 0 THEN NVL(AA.MONCOB, 0) ELSE 0 END) BLO02_MES_N_5 '
              + '            ,SUM(CASE WHEN AA.PERIODO = TO_CHAR(ADD_MONTHS(TO_DATE(' + QuotedStr(xsPeriodoGestion) + ',''YYYYMM''), -4),''YYYYMM'') AND NVL(AA.MONCOB, 0) > 0 THEN NVL(AA.MONCOB, 0) ELSE 0 END) BLO02_MES_N_4 '
              + '            ,SUM(CASE WHEN AA.PERIODO = TO_CHAR(ADD_MONTHS(TO_DATE(' + QuotedStr(xsPeriodoGestion) + ',''YYYYMM''), -3),''YYYYMM'') AND NVL(AA.MONCOB, 0) > 0 THEN NVL(AA.MONCOB, 0) ELSE 0 END) BLO02_MES_N_3 '
              + '            ,SUM(CASE WHEN AA.PERIODO = TO_CHAR(ADD_MONTHS(TO_DATE(' + QuotedStr(xsPeriodoGestion) + ',''YYYYMM''), -2),''YYYYMM'') AND NVL(AA.MONCOB, 0) > 0 THEN NVL(AA.MONCOB, 0) ELSE 0 END) BLO02_MES_N_2 '
              + '            ,SUM(CASE WHEN AA.PERIODO = TO_CHAR(ADD_MONTHS(TO_DATE(' + QuotedStr(xsPeriodoGestion) + ',''YYYYMM''), -1),''YYYYMM'') AND NVL(AA.MONCOB, 0) > 0 THEN NVL(AA.MONCOB, 0) ELSE 0 END) BLO02_MES_N_1 '
              + '            ,SUM(CASE WHEN AA.PERIODO = TO_CHAR(ADD_MONTHS(TO_DATE(' + QuotedStr(xsPeriodoGestion) + ',''YYYYMM''),  0),''YYYYMM'') AND NVL(AA.MONCOB, 0) > 0 THEN NVL(AA.MONCOB, 0) ELSE 0 END) BLO02_MES_N_0 '
              + '       FROM (SELECT B.PERIODO, NVL(B.MONCOBEFE,0) +  NVL(B.MONCOBBAN,0) MONCOB, B.OFDESID, B.GESTOR '
              + '               FROM GES_COB_UNI_IMP_COB_GTT B '
              + '              WHERE B.OFDESID = ' + QuotedStr(xsOfdesid)
              + '                AND B.ASIGNADO   = ''S'' '
              + '                AND B.GESTIONADO = ''S'' '
              + '                AND B.CONTACTADO = ''S'' '
              + '                AND B.DIRECTO    = ''S'' '
              + '                AND (NVL(B.MONCOBEFE, 0) + NVL(B.MONCOBBAN, 0)) > 0 '
              + '                AND CASE WHEN ' + QuotedStr(xsTipoCarteraCod) + ' = ''00'' THEN B.CODTIPCAR ELSE ' + QuotedStr(xsTipoCarteraCod) + ' END = B.CODTIPCAR '
              + '            ) AA '
              + '       GROUP BY AA.OFDESID, AA.GESTOR '
              + '    ) AAA, APO110 BBB '
              + '   WHERE AAA.OFDESID = BBB.OFDESID(+) '
              + ' ORDER BY BBB.OFDESNOM, AAA.GESTOR ';
       DM1.cdsQry5.Close;
       DM1.cdsQry5.DataRequest(xsSQL);
       DM1.cdsQry5.Open;
       dbgCabecera.DataSource := DM1.dsQry5;
       fn_cargar_pintar_grid(dbgCabecera, 'OPERACIONES', '###,##0', 'MONTO COBRADO (S/.)', '###,##0.#0');
     END;
  1 :BEGIN
       xsSQL := 'SELECT AA.OFDESID, BB.OFDESNOM, AA.GESTOR ';
       for xnCont := xnCantColumnas-1 downto 0 do xsSQL := xsSQL + ' ,BLO01_MES_N_' + inttostr(xnCont) + ' ';
       xsSQL := xsSQL + '      ,(BLO01_MES_N_0 - BLO01_MES_N_1) BLO01_VARIACION ';
       for xnCont := xnCantColumnas-1 downto 0 do xsSQL := xsSQL + ' ,BLO02_MES_N_' + inttostr(xnCont) + ' ';
       xsSQL := xsSQL + '      ,(BLO02_MES_N_0 - BLO02_MES_N_1) BLO02_VARIACION ';
       xsSQL := xsSQL
              + 'FROM (SELECT OFDESID, GESTOR '
              + '             ,CASE WHEN GESTIONADO_N_5 = 0 THEN 0 ELSE ROUND((CONTACTO_EFECTIVO_N_5 / GESTIONADO_N_5)*100, 2) END BLO01_MES_N_5 '
              + '             ,CASE WHEN GESTIONADO_N_4 = 0 THEN 0 ELSE ROUND((CONTACTO_EFECTIVO_N_4 / GESTIONADO_N_4)*100, 2) END BLO01_MES_N_4 '
              + '             ,CASE WHEN GESTIONADO_N_3 = 0 THEN 0 ELSE ROUND((CONTACTO_EFECTIVO_N_3 / GESTIONADO_N_3)*100, 2) END BLO01_MES_N_3 '
              + '             ,CASE WHEN GESTIONADO_N_2 = 0 THEN 0 ELSE ROUND((CONTACTO_EFECTIVO_N_2 / GESTIONADO_N_2)*100, 2) END BLO01_MES_N_2 '
              + '             ,CASE WHEN GESTIONADO_N_1 = 0 THEN 0 ELSE ROUND((CONTACTO_EFECTIVO_N_1 / GESTIONADO_N_1)*100, 2) END BLO01_MES_N_1 '
              + '             ,CASE WHEN GESTIONADO_N_0 = 0 THEN 0 ELSE ROUND((CONTACTO_EFECTIVO_N_0 / GESTIONADO_N_0)*100, 2) END BLO01_MES_N_0 '
              + '             ,CASE WHEN CONTACTADO_N_5 = 0 THEN 0 ELSE ROUND((CONTACTO_EFECTIVO_N_5 / CONTACTADO_N_5)*100, 2) END BLO02_MES_N_5 '
              + '             ,CASE WHEN CONTACTADO_N_4 = 0 THEN 0 ELSE ROUND((CONTACTO_EFECTIVO_N_4 / CONTACTADO_N_4)*100, 2) END BLO02_MES_N_4 '
              + '             ,CASE WHEN CONTACTADO_N_3 = 0 THEN 0 ELSE ROUND((CONTACTO_EFECTIVO_N_3 / CONTACTADO_N_3)*100, 2) END BLO02_MES_N_3 '
              + '             ,CASE WHEN CONTACTADO_N_2 = 0 THEN 0 ELSE ROUND((CONTACTO_EFECTIVO_N_2 / CONTACTADO_N_2)*100, 2) END BLO02_MES_N_2 '
              + '             ,CASE WHEN CONTACTADO_N_1 = 0 THEN 0 ELSE ROUND((CONTACTO_EFECTIVO_N_1 / CONTACTADO_N_1)*100, 2) END BLO02_MES_N_1 '
              + '             ,CASE WHEN CONTACTADO_N_0 = 0 THEN 0 ELSE ROUND((CONTACTO_EFECTIVO_N_0 / CONTACTADO_N_0)*100, 2) END BLO02_MES_N_0 '
              + '        FROM (SELECT OFDESID, GESTOR '
              + '                     ,SUM(CASE WHEN PERIODO = TO_CHAR(ADD_MONTHS(TO_DATE(' + QuotedStr(xsPeriodoGestion) + ',''YYYYMM''), -5),''YYYYMM'') AND GESTIONADO > 0 THEN GESTIONADO ELSE 0 END) GESTIONADO_N_5 '
              + '                     ,SUM(CASE WHEN PERIODO = TO_CHAR(ADD_MONTHS(TO_DATE(' + QuotedStr(xsPeriodoGestion) + ',''YYYYMM''), -4),''YYYYMM'') AND GESTIONADO > 0 THEN GESTIONADO ELSE 0 END) GESTIONADO_N_4 '
              + '                     ,SUM(CASE WHEN PERIODO = TO_CHAR(ADD_MONTHS(TO_DATE(' + QuotedStr(xsPeriodoGestion) + ',''YYYYMM''), -3),''YYYYMM'') AND GESTIONADO > 0 THEN GESTIONADO ELSE 0 END) GESTIONADO_N_3 '
              + '                     ,SUM(CASE WHEN PERIODO = TO_CHAR(ADD_MONTHS(TO_DATE(' + QuotedStr(xsPeriodoGestion) + ',''YYYYMM''), -2),''YYYYMM'') AND GESTIONADO > 0 THEN GESTIONADO ELSE 0 END) GESTIONADO_N_2 '
              + '                     ,SUM(CASE WHEN PERIODO = TO_CHAR(ADD_MONTHS(TO_DATE(' + QuotedStr(xsPeriodoGestion) + ',''YYYYMM''), -1),''YYYYMM'') AND GESTIONADO > 0 THEN GESTIONADO ELSE 0 END) GESTIONADO_N_1 '
              + '                     ,SUM(CASE WHEN PERIODO = TO_CHAR(ADD_MONTHS(TO_DATE(' + QuotedStr(xsPeriodoGestion) + ',''YYYYMM''), -0),''YYYYMM'') AND GESTIONADO > 0 THEN GESTIONADO ELSE 0 END) GESTIONADO_N_0 '
              + '                     ,SUM(CASE WHEN PERIODO = TO_CHAR(ADD_MONTHS(TO_DATE(' + QuotedStr(xsPeriodoGestion) + ',''YYYYMM''), -5),''YYYYMM'') AND CONTACTADO > 0 THEN CONTACTADO ELSE 0 END) CONTACTADO_N_5 '
              + '                     ,SUM(CASE WHEN PERIODO = TO_CHAR(ADD_MONTHS(TO_DATE(' + QuotedStr(xsPeriodoGestion) + ',''YYYYMM''), -4),''YYYYMM'') AND CONTACTADO > 0 THEN CONTACTADO ELSE 0 END) CONTACTADO_N_4 '
              + '                     ,SUM(CASE WHEN PERIODO = TO_CHAR(ADD_MONTHS(TO_DATE(' + QuotedStr(xsPeriodoGestion) + ',''YYYYMM''), -3),''YYYYMM'') AND CONTACTADO > 0 THEN CONTACTADO ELSE 0 END) CONTACTADO_N_3 '
              + '                     ,SUM(CASE WHEN PERIODO = TO_CHAR(ADD_MONTHS(TO_DATE(' + QuotedStr(xsPeriodoGestion) + ',''YYYYMM''), -2),''YYYYMM'') AND CONTACTADO > 0 THEN CONTACTADO ELSE 0 END) CONTACTADO_N_2 '
              + '                     ,SUM(CASE WHEN PERIODO = TO_CHAR(ADD_MONTHS(TO_DATE(' + QuotedStr(xsPeriodoGestion) + ',''YYYYMM''), -1),''YYYYMM'') AND CONTACTADO > 0 THEN CONTACTADO ELSE 0 END) CONTACTADO_N_1 '
              + '                     ,SUM(CASE WHEN PERIODO = TO_CHAR(ADD_MONTHS(TO_DATE(' + QuotedStr(xsPeriodoGestion) + ',''YYYYMM''), -0),''YYYYMM'') AND CONTACTADO > 0 THEN CONTACTADO ELSE 0 END) CONTACTADO_N_0 '
              + '                     ,SUM(CASE WHEN PERIODO = TO_CHAR(ADD_MONTHS(TO_DATE(' + QuotedStr(xsPeriodoGestion) + ',''YYYYMM''), -5),''YYYYMM'') AND CONTACTO_EFECTIVO > 0 THEN CONTACTO_EFECTIVO ELSE 0 END) CONTACTO_EFECTIVO_N_5 '
              + '                     ,SUM(CASE WHEN PERIODO = TO_CHAR(ADD_MONTHS(TO_DATE(' + QuotedStr(xsPeriodoGestion) + ',''YYYYMM''), -4),''YYYYMM'') AND CONTACTO_EFECTIVO > 0 THEN CONTACTO_EFECTIVO ELSE 0 END) CONTACTO_EFECTIVO_N_4 '
              + '                     ,SUM(CASE WHEN PERIODO = TO_CHAR(ADD_MONTHS(TO_DATE(' + QuotedStr(xsPeriodoGestion) + ',''YYYYMM''), -3),''YYYYMM'') AND CONTACTO_EFECTIVO > 0 THEN CONTACTO_EFECTIVO ELSE 0 END) CONTACTO_EFECTIVO_N_3 '
              + '                     ,SUM(CASE WHEN PERIODO = TO_CHAR(ADD_MONTHS(TO_DATE(' + QuotedStr(xsPeriodoGestion) + ',''YYYYMM''), -2),''YYYYMM'') AND CONTACTO_EFECTIVO > 0 THEN CONTACTO_EFECTIVO ELSE 0 END) CONTACTO_EFECTIVO_N_2 '
              + '                     ,SUM(CASE WHEN PERIODO = TO_CHAR(ADD_MONTHS(TO_DATE(' + QuotedStr(xsPeriodoGestion) + ',''YYYYMM''), -1),''YYYYMM'') AND CONTACTO_EFECTIVO > 0 THEN CONTACTO_EFECTIVO ELSE 0 END) CONTACTO_EFECTIVO_N_1 '
              + '                     ,SUM(CASE WHEN PERIODO = TO_CHAR(ADD_MONTHS(TO_DATE(' + QuotedStr(xsPeriodoGestion) + ',''YYYYMM''), -0),''YYYYMM'') AND CONTACTO_EFECTIVO > 0 THEN CONTACTO_EFECTIVO ELSE 0 END) CONTACTO_EFECTIVO_N_0 '
              + '                 FROM(SELECT PERIODO '
              + '                            ,OFDESID '
              + '                            ,GESTOR '
              + '                            ,SUM(CASE WHEN ASIGNADO = ''S'' AND GESTIONADO = ''S'' THEN 1 ELSE 0 END) GESTIONADO '
              + '                            ,SUM(CASE WHEN ASIGNADO = ''S'' AND GESTIONADO = ''S'' AND CONTACTADO = ''S'' AND DIRECTO = ''S'' THEN 1 ELSE 0 END) CONTACTADO '
              + '                            ,SUM(CASE WHEN ASIGNADO = ''S'' AND GESTIONADO = ''S'' AND CONTACTADO = ''S'' AND DIRECTO = ''S'' AND (NVL(MONCOBEFE,0) + NVL(MONCOBBAN,0)) > 0 THEN 1 ELSE 0 END) CONTACTO_EFECTIVO '
              + '                       FROM GES_COB_UNI_IMP_COB_GTT '
              + '                      WHERE OFDESID = ' + QuotedStr(xsOfdesid)
              + '                        AND ASIGNADO = ''S'' '
              + '                        AND GESTIONADO = ''S'' '
              + '                        AND CASE WHEN ' + QuotedStr(xsTipoCarteraCod) + ' = ''00'' THEN CODTIPCAR ELSE ' + QuotedStr(xsTipoCarteraCod) + ' END = CODTIPCAR '
              + '                      GROUP BY PERIODO, OFDESID, GESTOR '
              + '                    ) '
              + '                GROUP BY OFDESID, GESTOR '
              + '            ) '
              + '      ) AA , APO110 BB '
              + 'WHERE AA.OFDESID = BB.OFDESID(+) '
              + 'ORDER BY BB.OFDESNOM, AA.GESTOR ';

       DM1.cdsQry5.Close;
       DM1.cdsQry5.DataRequest(xsSQL);
       DM1.cdsQry5.Open;
       dbgCabecera.DataSource := DM1.dsQry5;
       fn_cargar_pintar_grid(dbgCabecera, 'TASA DE CURA (%)', '###,##0.#0', 'TASA DE EFECTIVIDAD (%)', '###,##0.#0');
     END;
  END;
 Screen.Cursor := crDefault;
end;

(******************************************************************************)
procedure TFCuadrosComparativoAnalisisDet.btnExportarClick(Sender: TObject);
VAR xxExcApp: OleVariant;
begin
   Screen.Cursor := crHourGlass;
   xxExcApp := DM1.fn_ExpXLS(dbgCabecera.DataSource.DataSet, 'CUACOMANADET');
   Screen.Cursor := crDefault;
end;
(******************************************************************************)

procedure TFCuadrosComparativoAnalisisDet.FormShow(Sender: TObject);
begin
   fn_cargar_grid();
end;
(******************************************************************************)
end.