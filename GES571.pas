// Inicio Uso Est�ndares: 01/08/2011
// Unidad : Gesti�n de Cobranzas
// Formulario : FCuadrosComparativoAnalisis
// Fecha de Creaci�n : 17/10/2014
// Autor : Equipo de Sistemas
// Objetivo : Medir el impacto de la gestion de cobranza
// Actualizaciones:
// HPC_201403_GESCOB:  Cuadros comparativos para an�lisis(2.4)
// SPP_201404_GESCOB: Se realiza el pase a producci�n a partir del HPC_201403_GESCOB

unit GES571;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, wwdblook, Grids, Wwdbigrd, Wwdbgrid, db,
  TeEngine, Series, TeeProcs, Chart, DbChart, ppEndUsr, ppDB, ppDBPipe,
  ppParameter, ppBands, ppVar, ppCtrls, ppPrnabl, ppClass, ppCache, ppComm,
  ppRelatv, ppProd, ppReport, ppStrtch, ppSubRpt, ComCtrls;

type
  TFCuadrosComparativoAnalisis = class(TForm)
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
    dbgCabecera: TwwDBGrid;
    rgTipoIndicador: TRadioGroup;
    GroupBox1: TGroupBox;
    edCantMeses: TEdit;
    UpDown1: TUpDown;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnSalirClick(Sender: TObject);
    procedure btnExportarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnProcesarClick(Sender: TObject);
    procedure cboPeriodoChange(Sender: TObject);
    procedure rgTipoIndicadorClick(Sender: TObject);
    procedure edCantMesesChange(Sender: TObject);
    procedure dbgCabeceraDblClick(Sender: TObject);
  private
    { Private declarations }
    xsTituloPeriodo : array of String;
    procedure fn_cargar_grid(psLimpiar: string);
  public
    { Public declarations }
  end;

var
  FCuadrosComparativoAnalisis: TFCuadrosComparativoAnalisis;

implementation

uses GESDM1, GES569, Math, GES572, StrUtils;

{$R *.dfm}

(******************************************************************************)
procedure TFCuadrosComparativoAnalisis.FormShow(Sender: TObject);
begin
   Screen.Cursor := crHourGlass;
  
   // CARGAR TIPO DE CARTERA
   DM1.fn_cargar_tipo_cartera_combo(cboTipoCartera, DM1.cdsQry2);
   cboTipoCartera.Text := DM1.cdsQry2.fieldbyname('TIPCAR').asstring;

   // CARGAR PERIODO
   DM1.fn_cargar_periodos_combo(cboPeriodo, DM1.cdsQry1);
   cboPeriodo.Text := DM1.cdsQry1.fieldbyname('PERIODO').asstring;

   Screen.Cursor := crDefault;
end;

(******************************************************************************)
procedure TFCuadrosComparativoAnalisis.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;
(******************************************************************************)

procedure TFCuadrosComparativoAnalisis.btnSalirClick(Sender: TObject);
begin
  Close;
end;
(******************************************************************************)
procedure TFCuadrosComparativoAnalisis.btnProcesarClick(Sender: TObject);
Var xsSQL : string;
begin
 if  (cboPeriodO.Text = '') or (cboTipoCartera.Text = '') then exit;
 Screen.Cursor := crHourGlass;
 WITH dbgCabecera DO
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
    END;
    fn_cargar_grid('');
  end;
 Screen.Cursor := crDefault;
end;
(******************************************************************************)
procedure TFCuadrosComparativoAnalisis.fn_cargar_grid(psLimpiar : string);
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
          Selected.Add('OFDESNOM'#9'30'#9'ORIGEN DE OPERACION');
          for xnContador := xnCantColumnas-1 downto 0 do Selected.Add('BLO01_MES_N_'+inttostr(xnContador)+''#9'15'#9''+xsTituloPeriodo[xnContador]+''#9'F'#9''+ psTitulo_01);
          //for xnContador := xnCantColumnas-1 downto 0 do Selected.Add('BLO01_MES_N_'+inttostr(xnContador)+''#9'15'#9'MES N-'+inttostr(xnContador)+''#9'F'#9''+ psTitulo_01);
          Selected.Add('BLO01_VARIACION'#9'15'#9'VARIACI�N~%'#9'F'#9''+ psTitulo_01);
          for xnContador := xnCantColumnas-1 downto 0 do Selected.Add('BLO02_MES_N_'+inttostr(xnContador)+''#9'15'#9''+xsTituloPeriodo[xnContador]+''#9'F'#9''+ psTitulo_02);
          //for xnContador := xnCantColumnas-1 downto 0 do Selected.Add('BLO02_MES_N_'+inttostr(xnContador)+''#9'15'#9'MES N-'+inttostr(xnContador)+''#9'F'#9''+ psTitulo_02);
          Selected.Add('BLO02_VARIACION'#9'15'#9'VARIACI�N~%'#9'F'#9''+ psTitulo_02);
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
          ColumnByName('OFDESNOM').FooterValue  := 'TOTAL';
          for xnContador := xnCantColumnas-1 downto 0 do ColumnByName('BLO01_MES_N_'+inttostr(xnContador)).FooterValue := FormatCurr(pxFormato_01, xnBlo01[xnContador]);
          if rgTipoIndicador.ItemIndex = 0 then
          begin
            if xnBlo01[1] > 0 then xnBlo01Variacion := (xnBlo01[0]/xnBlo01[1])*100 else xnBlo01Variacion := 0;
          end
          else if rgTipoIndicador.ItemIndex = 1 then
            xnBlo01Variacion := xnBlo01[0] - xnBlo01[1];

          ColumnByName('BLO01_VARIACION').FooterValue := FormatCurr('###,##0.#0', xnBlo01Variacion);

          for xnContador := xnCantColumnas-1 downto 0 do ColumnByName('BLO02_MES_N_'+inttostr(xnContador)).FooterValue := FormatCurr(pxFormato_02, xnBlo02[xnContador]);
          if rgTipoIndicador.ItemIndex = 0 then
          begin
            if xnBlo02[1] > 0 then xnBlo02Variacion := (xnBlo02[0]/xnBlo02[1])*100 else xnBlo02Variacion := 0;
          end
          else if rgTipoIndicador.ItemIndex = 1 then
            xnBlo02Variacion := xnBlo02[0] - xnBlo02[1];

          ColumnByName('BLO02_VARIACION').FooterValue := FormatCurr('###,##0.#0', xnBlo02Variacion);

          DataSource.DataSet.first;
       end;
    end;
begin
 if  (cboPeriodO.Text = '') or (cboTipoCartera.Text = '') then exit;
 Screen.Cursor := crHourGlass;
 DM1.cdsQry2.Locate('TIPCAR', VarArrayof([cboTipoCartera.Text]), []);
 xnCantColumnas := strtoint(edCantMeses.Text);

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
 CASE rgTipoIndicador.ItemIndex OF
  0 :BEGIN
       xsSQL := 'SELECT AAA.OFDESID, BBB.OFDESNOM ';
       for xnCont := xnCantColumnas-1 downto 0 do xsSQL := xsSQL + ' ,AAA.BLO01_MES_N_' + inttostr(xnCont) + ' ';
       xsSQL := xsSQL + '      ,ROUND(CASE WHEN AAA.BLO01_MES_N_1 > 0 THEN (AAA.BLO01_MES_N_0/AAA.BLO01_MES_N_1) * 100 ELSE 0 END, 2) BLO01_VARIACION ';
       for xnCont := xnCantColumnas-1 downto 0 do xsSQL := xsSQL + ' ,AAA.BLO02_MES_N_' + inttostr(xnCont) + ' ';
       xsSQL := xsSQL + '      ,ROUND(CASE WHEN AAA.BLO02_MES_N_1 > 0 THEN (AAA.BLO02_MES_N_0/AAA.BLO02_MES_N_1) * 100 ELSE 0 END, 2) BLO02_VARIACION ';
       xsSQL := xsSQL
              + ' FROM(SELECT AA.OFDESID '
              + '            ,SUM(CASE WHEN AA.PERIODO = TO_CHAR(ADD_MONTHS(TO_DATE(' + QuotedStr(cboPeriodo.Text) + ',''YYYYMM''), -5),''YYYYMM'') AND NVL(AA.MONCOB, 0) > 0 THEN 1 ELSE 0 END) BLO01_MES_N_5 '
              + '            ,SUM(CASE WHEN AA.PERIODO = TO_CHAR(ADD_MONTHS(TO_DATE(' + QuotedStr(cboPeriodo.Text) + ',''YYYYMM''), -4),''YYYYMM'') AND NVL(AA.MONCOB, 0) > 0 THEN 1 ELSE 0 END) BLO01_MES_N_4 '
              + '            ,SUM(CASE WHEN AA.PERIODO = TO_CHAR(ADD_MONTHS(TO_DATE(' + QuotedStr(cboPeriodo.Text) + ',''YYYYMM''), -3),''YYYYMM'') AND NVL(AA.MONCOB, 0) > 0 THEN 1 ELSE 0 END) BLO01_MES_N_3 '
              + '            ,SUM(CASE WHEN AA.PERIODO = TO_CHAR(ADD_MONTHS(TO_DATE(' + QuotedStr(cboPeriodo.Text) + ',''YYYYMM''), -2),''YYYYMM'') AND NVL(AA.MONCOB, 0) > 0 THEN 1 ELSE 0 END) BLO01_MES_N_2 '
              + '            ,SUM(CASE WHEN AA.PERIODO = TO_CHAR(ADD_MONTHS(TO_DATE(' + QuotedStr(cboPeriodo.Text) + ',''YYYYMM''), -1),''YYYYMM'') AND NVL(AA.MONCOB, 0) > 0 THEN 1 ELSE 0 END) BLO01_MES_N_1 '
              + '            ,SUM(CASE WHEN AA.PERIODO = TO_CHAR(ADD_MONTHS(TO_DATE(' + QuotedStr(cboPeriodo.Text) + ',''YYYYMM''),  0),''YYYYMM'') AND NVL(AA.MONCOB, 0) > 0 THEN 1 ELSE 0 END) BLO01_MES_N_0 '
              + '            ,SUM(CASE WHEN AA.PERIODO = TO_CHAR(ADD_MONTHS(TO_DATE(' + QuotedStr(cboPeriodo.Text) + ',''YYYYMM''), -5),''YYYYMM'') AND NVL(AA.MONCOB, 0) > 0 THEN NVL(AA.MONCOB, 0) ELSE 0 END) BLO02_MES_N_5 '
              + '            ,SUM(CASE WHEN AA.PERIODO = TO_CHAR(ADD_MONTHS(TO_DATE(' + QuotedStr(cboPeriodo.Text) + ',''YYYYMM''), -4),''YYYYMM'') AND NVL(AA.MONCOB, 0) > 0 THEN NVL(AA.MONCOB, 0) ELSE 0 END) BLO02_MES_N_4 '
              + '            ,SUM(CASE WHEN AA.PERIODO = TO_CHAR(ADD_MONTHS(TO_DATE(' + QuotedStr(cboPeriodo.Text) + ',''YYYYMM''), -3),''YYYYMM'') AND NVL(AA.MONCOB, 0) > 0 THEN NVL(AA.MONCOB, 0) ELSE 0 END) BLO02_MES_N_3 '
              + '            ,SUM(CASE WHEN AA.PERIODO = TO_CHAR(ADD_MONTHS(TO_DATE(' + QuotedStr(cboPeriodo.Text) + ',''YYYYMM''), -2),''YYYYMM'') AND NVL(AA.MONCOB, 0) > 0 THEN NVL(AA.MONCOB, 0) ELSE 0 END) BLO02_MES_N_2 '
              + '            ,SUM(CASE WHEN AA.PERIODO = TO_CHAR(ADD_MONTHS(TO_DATE(' + QuotedStr(cboPeriodo.Text) + ',''YYYYMM''), -1),''YYYYMM'') AND NVL(AA.MONCOB, 0) > 0 THEN NVL(AA.MONCOB, 0) ELSE 0 END) BLO02_MES_N_1 '
              + '            ,SUM(CASE WHEN AA.PERIODO = TO_CHAR(ADD_MONTHS(TO_DATE(' + QuotedStr(cboPeriodo.Text) + ',''YYYYMM''),  0),''YYYYMM'') AND NVL(AA.MONCOB, 0) > 0 THEN NVL(AA.MONCOB, 0) ELSE 0 END) BLO02_MES_N_0 '
              + '       FROM (SELECT B.PERIODO, NVL(B.MONCOBEFE,0) +  NVL(B.MONCOBBAN,0) MONCOB, B.OFDESID '
              + '               FROM GES_COB_UNI_IMP_COB_GTT B '
              + '              WHERE B.ASIGNADO   = ''S'' '
              + '                AND B.GESTIONADO = ''S'' '
              + '                AND B.CONTACTADO = ''S'' '
              + '                AND B.DIRECTO    = ''S'' '
              + '                AND (NVL(B.MONCOBEFE, 0) + NVL(B.MONCOBBAN, 0)) > 0 '
              + '                AND CASE WHEN ' + QuotedStr(DM1.cdsQry2.Fieldbyname('CODTIPCAR').AsString) + ' = ''00'' THEN B.CODTIPCAR ELSE ' + QuotedStr(DM1.cdsQry2.Fieldbyname('CODTIPCAR').AsString) + ' END = B.CODTIPCAR '
              +                  psLimpiar
              + '            ) AA '
              + '       GROUP BY AA.OFDESID '
              + '    ) AAA, APO110 BBB '
              + '   WHERE AAA.OFDESID = BBB.OFDESID(+) '
              + ' ORDER BY BBB.OFDESNOM ';
       DM1.cdsQry4.Close;
       DM1.cdsQry4.DataRequest(xsSQL);
       DM1.cdsQry4.Open;
       dbgCabecera.DataSource := DM1.dsQry4;
       fn_cargar_pintar_grid(dbgCabecera, 'OPERACIONES', '###,##0', 'MONTO COBRADO (S/.)', '###,##0.#0');
     END;
  1 :BEGIN
       xsSQL := 'SELECT AA.OFDESID, BB.OFDESNOM ';
       for xnCont := xnCantColumnas-1 downto 0 do xsSQL := xsSQL + ' ,BLO01_MES_N_' + inttostr(xnCont) + ' ';
       xsSQL := xsSQL + '      ,(BLO01_MES_N_0 - BLO01_MES_N_1) BLO01_VARIACION ';
       for xnCont := xnCantColumnas-1 downto 0 do xsSQL := xsSQL + ' ,BLO02_MES_N_' + inttostr(xnCont) + ' ';
       xsSQL := xsSQL + '      ,(BLO02_MES_N_0 - BLO02_MES_N_1) BLO02_VARIACION ';
       xsSQL := xsSQL
              + 'FROM (SELECT OFDESID '
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
              + '        FROM (SELECT OFDESID '
              + '                     ,SUM(CASE WHEN PERIODO = TO_CHAR(ADD_MONTHS(TO_DATE(' + QuotedStr(cboPeriodo.Text) + ',''YYYYMM''), -5),''YYYYMM'') AND GESTIONADO > 0 THEN GESTIONADO ELSE 0 END) GESTIONADO_N_5 '
              + '                     ,SUM(CASE WHEN PERIODO = TO_CHAR(ADD_MONTHS(TO_DATE(' + QuotedStr(cboPeriodo.Text) + ',''YYYYMM''), -4),''YYYYMM'') AND GESTIONADO > 0 THEN GESTIONADO ELSE 0 END) GESTIONADO_N_4 '
              + '                     ,SUM(CASE WHEN PERIODO = TO_CHAR(ADD_MONTHS(TO_DATE(' + QuotedStr(cboPeriodo.Text) + ',''YYYYMM''), -3),''YYYYMM'') AND GESTIONADO > 0 THEN GESTIONADO ELSE 0 END) GESTIONADO_N_3 '
              + '                     ,SUM(CASE WHEN PERIODO = TO_CHAR(ADD_MONTHS(TO_DATE(' + QuotedStr(cboPeriodo.Text) + ',''YYYYMM''), -2),''YYYYMM'') AND GESTIONADO > 0 THEN GESTIONADO ELSE 0 END) GESTIONADO_N_2 '
              + '                     ,SUM(CASE WHEN PERIODO = TO_CHAR(ADD_MONTHS(TO_DATE(' + QuotedStr(cboPeriodo.Text) + ',''YYYYMM''), -1),''YYYYMM'') AND GESTIONADO > 0 THEN GESTIONADO ELSE 0 END) GESTIONADO_N_1 '
              + '                     ,SUM(CASE WHEN PERIODO = TO_CHAR(ADD_MONTHS(TO_DATE(' + QuotedStr(cboPeriodo.Text) + ',''YYYYMM''), -0),''YYYYMM'') AND GESTIONADO > 0 THEN GESTIONADO ELSE 0 END) GESTIONADO_N_0 '
              + '                     ,SUM(CASE WHEN PERIODO = TO_CHAR(ADD_MONTHS(TO_DATE(' + QuotedStr(cboPeriodo.Text) + ',''YYYYMM''), -5),''YYYYMM'') AND CONTACTADO > 0 THEN CONTACTADO ELSE 0 END) CONTACTADO_N_5 '
              + '                     ,SUM(CASE WHEN PERIODO = TO_CHAR(ADD_MONTHS(TO_DATE(' + QuotedStr(cboPeriodo.Text) + ',''YYYYMM''), -4),''YYYYMM'') AND CONTACTADO > 0 THEN CONTACTADO ELSE 0 END) CONTACTADO_N_4 '
              + '                     ,SUM(CASE WHEN PERIODO = TO_CHAR(ADD_MONTHS(TO_DATE(' + QuotedStr(cboPeriodo.Text) + ',''YYYYMM''), -3),''YYYYMM'') AND CONTACTADO > 0 THEN CONTACTADO ELSE 0 END) CONTACTADO_N_3 '
              + '                     ,SUM(CASE WHEN PERIODO = TO_CHAR(ADD_MONTHS(TO_DATE(' + QuotedStr(cboPeriodo.Text) + ',''YYYYMM''), -2),''YYYYMM'') AND CONTACTADO > 0 THEN CONTACTADO ELSE 0 END) CONTACTADO_N_2 '
              + '                     ,SUM(CASE WHEN PERIODO = TO_CHAR(ADD_MONTHS(TO_DATE(' + QuotedStr(cboPeriodo.Text) + ',''YYYYMM''), -1),''YYYYMM'') AND CONTACTADO > 0 THEN CONTACTADO ELSE 0 END) CONTACTADO_N_1 '
              + '                     ,SUM(CASE WHEN PERIODO = TO_CHAR(ADD_MONTHS(TO_DATE(' + QuotedStr(cboPeriodo.Text) + ',''YYYYMM''), -0),''YYYYMM'') AND CONTACTADO > 0 THEN CONTACTADO ELSE 0 END) CONTACTADO_N_0 '
              + '                     ,SUM(CASE WHEN PERIODO = TO_CHAR(ADD_MONTHS(TO_DATE(' + QuotedStr(cboPeriodo.Text) + ',''YYYYMM''), -5),''YYYYMM'') AND CONTACTO_EFECTIVO > 0 THEN CONTACTO_EFECTIVO ELSE 0 END) CONTACTO_EFECTIVO_N_5 '
              + '                     ,SUM(CASE WHEN PERIODO = TO_CHAR(ADD_MONTHS(TO_DATE(' + QuotedStr(cboPeriodo.Text) + ',''YYYYMM''), -4),''YYYYMM'') AND CONTACTO_EFECTIVO > 0 THEN CONTACTO_EFECTIVO ELSE 0 END) CONTACTO_EFECTIVO_N_4 '
              + '                     ,SUM(CASE WHEN PERIODO = TO_CHAR(ADD_MONTHS(TO_DATE(' + QuotedStr(cboPeriodo.Text) + ',''YYYYMM''), -3),''YYYYMM'') AND CONTACTO_EFECTIVO > 0 THEN CONTACTO_EFECTIVO ELSE 0 END) CONTACTO_EFECTIVO_N_3 '
              + '                     ,SUM(CASE WHEN PERIODO = TO_CHAR(ADD_MONTHS(TO_DATE(' + QuotedStr(cboPeriodo.Text) + ',''YYYYMM''), -2),''YYYYMM'') AND CONTACTO_EFECTIVO > 0 THEN CONTACTO_EFECTIVO ELSE 0 END) CONTACTO_EFECTIVO_N_2 '
              + '                     ,SUM(CASE WHEN PERIODO = TO_CHAR(ADD_MONTHS(TO_DATE(' + QuotedStr(cboPeriodo.Text) + ',''YYYYMM''), -1),''YYYYMM'') AND CONTACTO_EFECTIVO > 0 THEN CONTACTO_EFECTIVO ELSE 0 END) CONTACTO_EFECTIVO_N_1 '
              + '                     ,SUM(CASE WHEN PERIODO = TO_CHAR(ADD_MONTHS(TO_DATE(' + QuotedStr(cboPeriodo.Text) + ',''YYYYMM''), -0),''YYYYMM'') AND CONTACTO_EFECTIVO > 0 THEN CONTACTO_EFECTIVO ELSE 0 END) CONTACTO_EFECTIVO_N_0 '
              + '                 FROM(SELECT PERIODO '
              + '                           ,OFDESID '
              + '                           ,SUM(CASE WHEN ASIGNADO = ''S'' AND GESTIONADO = ''S'' THEN 1 ELSE 0 END) GESTIONADO '
              + '                           ,SUM(CASE WHEN ASIGNADO = ''S'' AND GESTIONADO = ''S'' AND CONTACTADO = ''S'' AND DIRECTO = ''S'' THEN 1 ELSE 0 END) CONTACTADO '
              + '                           ,SUM(CASE WHEN ASIGNADO = ''S'' AND GESTIONADO = ''S'' AND CONTACTADO = ''S'' AND DIRECTO = ''S'' AND (NVL(MONCOBEFE,0) + NVL(MONCOBBAN,0)) > 0 THEN 1 ELSE 0 END) CONTACTO_EFECTIVO '
              + '                       FROM GES_COB_UNI_IMP_COB_GTT '
              + '                      WHERE ASIGNADO = ''S'' '
              + '                        AND GESTIONADO = ''S'' '              
              + '                        AND CASE WHEN ' + QuotedStr(DM1.cdsQry2.Fieldbyname('CODTIPCAR').AsString) + ' = ''00'' THEN CODTIPCAR ELSE ' + QuotedStr(DM1.cdsQry2.Fieldbyname('CODTIPCAR').AsString) + ' END = CODTIPCAR '
              +                          psLimpiar              
              + '                      GROUP BY PERIODO, OFDESID '
              + '                    ) '
              + '                GROUP BY OFDESID '
              + '            ) '
              + '      ) AA , APO110 BB '
              + 'WHERE AA.OFDESID = BB.OFDESID(+) '
              + 'ORDER BY BB.OFDESNOM ';

       DM1.cdsQry4.Close;
       DM1.cdsQry4.DataRequest(xsSQL);
       DM1.cdsQry4.Open;
       dbgCabecera.DataSource := DM1.dsQry4;
       fn_cargar_pintar_grid(dbgCabecera, 'TASA DE CURA (%)', '###,##0.#0', 'TASA DE EFECTIVIDAD (%)', '###,##0.#0');
     END;
  END;
 Screen.Cursor := crDefault;
end;

(******************************************************************************)
procedure TFCuadrosComparativoAnalisis.btnExportarClick(Sender: TObject);
VAR xxExcApp: OleVariant;
begin
   Screen.Cursor := crHourGlass;
   xxExcApp := DM1.fn_ExpXLS(dbgCabecera.DataSource.DataSet, 'CUACOMANA');
   Screen.Cursor := crDefault;
end;
(******************************************************************************)

procedure TFCuadrosComparativoAnalisis.cboPeriodoChange(Sender: TObject);
begin
  fn_cargar_grid(' AND 1 = 2 ');
end;
(******************************************************************************)

procedure TFCuadrosComparativoAnalisis.rgTipoIndicadorClick(
  Sender: TObject);
begin
  cboPeriodoChange(nil);
end;
(******************************************************************************)

procedure TFCuadrosComparativoAnalisis.edCantMesesChange(Sender: TObject);
begin
  cboPeriodoChange(nil);
end;
(******************************************************************************)

procedure TFCuadrosComparativoAnalisis.dbgCabeceraDblClick(
  Sender: TObject);
begin
   With dbgCabecera do
   begin
     if DataSource.DataSet.RecordCount <= 0 then exit;
     Try
        FCuadrosComparativoAnalisisDet := TFCuadrosComparativoAnalisisDet.create(Self);
        FCuadrosComparativoAnalisisDet.xsPeriodoGestion := cboPeriodo.Text;
        FCuadrosComparativoAnalisisDet.xsTipoCarteraCod := DM1.cdsQry2.Fieldbyname('CODTIPCAR').AsString;
        FCuadrosComparativoAnalisisDet.xnTipoIndicadorCod := rgTipoIndicador.itemindex;
        FCuadrosComparativoAnalisisDet.xsUltimosMeses := edCantMeses.text;
        FCuadrosComparativoAnalisisDet.xsOfdesid := DataSource.DataSet.fieldbyname('OFDESID').AsString;
        FCuadrosComparativoAnalisisDet.lblPeriodoGestion.Caption := cboPeriodo.Text;
        FCuadrosComparativoAnalisisDet.lblTipoCartera.Caption := cboTipoCartera.Text;
        FCuadrosComparativoAnalisisDet.lblTipoIndicador.Caption := AnsiUpperCase(rgTipoIndicador.Items[rgTipoIndicador.itemindex]);
        FCuadrosComparativoAnalisisDet.lblUltimosMeses.Caption := edCantMeses.Text;
        FCuadrosComparativoAnalisisDet.lblOrigenOperacion.Caption := DataSource.DataSet.fieldbyname('OFDESNOM').AsString;
        FCuadrosComparativoAnalisisDet.ShowModal;
     Finally
        FCuadrosComparativoAnalisisDet.Free;
     End;
   end;
end;
(******************************************************************************)
end.