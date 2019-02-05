// Inicio Uso Estándares: 01/08/2011
// Unidad : Gestión de Cobranzas
// Formulario : FRepAsiCar
// Fecha de Creación : 17/07/2012
// Autor : Equipo de Sistemas
// Objetivo :  Mostrar Reporte de Asignacion de Cartera de Asociados a Gestionar
// Actualizaciones:
// HPC_201205_GESCOB 17/07/2012 Crear Reporte de Asignacion de Cartera de Asociados a Gestionar(nuevo)
// DPP_201205_GESCOB: Pase a producción a partir de los pases HPC_201205 y HPC_201206
// HPC_201304_GESCOB: F1 21/05/2013 Se agregó columna número asignaciones sin código de prioridad
// SPP_201304_GESCOB: Se realiza el pase a producción a partir del HPC_201304_GESCOB
// HPC_201305_GESCOB: F2 04/06/2013 Se modificó las consultas a la BD, para incluir la nueva marca asociada al motivo de liberación porque la BD fue actualizada
// SPP_201305_GESCOB: Se realiza el pase a producción a partir del HPC_201305_GESCOB

Unit GES550;

Interface

Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, ExtCtrls, StdCtrls, wwdblook, ComCtrls, Buttons, Grids,
   Wwdbigrd, Wwdbgrid, DB, wwExport, shellapi, ppParameter, ppCtrls,
   ppBands, ppVar, ppPrnabl, ppClass, ppCache, ppProd, ppReport, ppRelatv,
   ppDB, ppDBPipe, ppComm, ppEndUsr, GES551, DBClient, wwclient;

Type
   TFRepAsiCar = Class(TForm)
      pcPrincipal : TPageControl;
      tsLimaMetropolitana : TTabSheet;
      gbFiltro : TGroupBox;
      cboPeriodoCartera : TwwDBLookupCombo;
      lbl1 : TLabel;
      pnl1 : TPanel;
      btnExportar : TBitBtn;
      btnImprimir : TBitBtn;
      btnSalir : TBitBtn;
      tsProvincias : TTabSheet;
      desRptVisor : TppDesigner;
      dbpRptPipeline : TppDBPipeline;
      repReport : TppReport;
      ppParameterList1 : TppParameterList;
      ppHeaderBand1 : TppHeaderBand;
      ppShape1 : TppShape;
      ppLabel7 : TppLabel;
      ppLabel8 : TppLabel;
      ppLabel9 : TppLabel;
      ppLabel10 : TppLabel;
      ppLabel11 : TppLabel;
      ppSystemVariable1 : TppSystemVariable;
      ppSystemVariable2 : TppSystemVariable;
      ppSystemVariable3 : TppSystemVariable;
      ppLblTit01 : TppLabel;
      ppLabel12 : TppLabel;
      ppLabel13 : TppLabel;
      ppLabel14 : TppLabel;
      ppLblTit02 : TppLabel;
      ppLabel2 : TppLabel;
      ppLabel3 : TppLabel;
      ppLabel4 : TppLabel;
      ppLine3 : TppLine;
      ppLine4 : TppLine;
      ppLine5 : TppLine;
      ppLine6 : TppLine;
      ppLine7 : TppLine;
      ppLine1 : TppLine;
      ppLine2 : TppLine;
      ppLine8 : TppLine;
      ppLabel1 : TppLabel;
      ppLabel5 : TppLabel;
      ppLabel15 : TppLabel;
      ppLabel16 : TppLabel;
      ppLabel17 : TppLabel;
      ppLabel18 : TppLabel;
      ppLabel19 : TppLabel;
      ppLabel20 : TppLabel;
      ppLabel21 : TppLabel;
      ppLine12 : TppLine;
      ppLine24 : TppLine;
      ppLine25 : TppLine;
      ppDetailBand1 : TppDetailBand;
      ppLine10 : TppLine;
      ppLine11 : TppLine;
      ppLine13 : TppLine;
      ppLine14 : TppLine;
      ppLine15 : TppLine;
      ppLine16 : TppLine;
      ppLine17 : TppLine;
      ppLine18 : TppLine;
      ppLine19 : TppLine;
      ppDBText1 : TppDBText;
      ppDBText2 : TppDBText;
      ppDBText3 : TppDBText;
      ppDBText4 : TppDBText;
      ppDBText5 : TppDBText;
      ppDBText6 : TppDBText;
      ppDBText7 : TppDBText;
      ppDBText8 : TppDBText;
      ppDBText9 : TppDBText;
      ppDBText10 : TppDBText;
      ppDBText11 : TppDBText;
      ppDBText12 : TppDBText;
      ppLine20 : TppLine;
      ppLine21 : TppLine;
      ppLine22 : TppLine;
      ppLine23 : TppLine;
      ppFooterBand1 : TppFooterBand;
      ppLblUser : TppLabel;
      ppSummaryBand1 : TppSummaryBand;
      ppShape2 : TppShape;
      ppLabel6 : TppLabel;
      ppDBCalc1 : TppDBCalc;
      ppDBCalc2 : TppDBCalc;
      ppDBCalc3 : TppDBCalc;
      ppDBCalc4 : TppDBCalc;
      ppDBCalc5 : TppDBCalc;
      ppDBCalc6 : TppDBCalc;
      ppDBCalc7 : TppDBCalc;
      ppDBCalc8 : TppDBCalc;
      ppDBCalc9 : TppDBCalc;
      ppDBCalc10 : TppDBCalc;
      ppGroup1 : TppGroup;
      ppGroupHeaderBand1 : TppGroupHeaderBand;
      ppGroupFooterBand1 : TppGroupFooterBand;
      ppLine9 : TppLine;
      pcLimaMetropolitana : TPageControl;
      tsLimMetAsig : TTabSheet;
      tsLimMetGesDom : TTabSheet;
      dbgLimMetAsig : TwwDBGrid;
      pnl2 : TPanel;
      dbgLimMetGesDom : TwwDBGrid;
      pcProvincias : TPageControl;
      tsProvAsig : TTabSheet;
      tsProvGesDom : TTabSheet;
      dbgProvAsig : TwwDBGrid;
      dbgProvGesDom : TwwDBGrid;
      wwClientDataSet1 : TwwClientDataSet;
      Procedure FormCreate(Sender : TObject);
      Procedure btnSalirClick(Sender : TObject);
      Procedure cboPeriodoCarteraChange(Sender : TObject);
      Procedure btnExportarClick(Sender : TObject);
      Procedure btnImprimirClick(Sender : TObject);
      Procedure FormShow(Sender : TObject);
      Procedure dbgLimMetAsigDblClick(Sender : TObject);
      Procedure dbgProvAsigDblClick(Sender : TObject);
      Procedure dbgLimMetGesDomDblClick(Sender : TObject);
      Procedure dbgProvGesDomDblClick(Sender : TObject);
   Private
    { Private declarations }
   Public
    { Public declarations }
   End;

Var
   FRepAsiCar : TFRepAsiCar;

Implementation

Uses GESDM1;

{$R *.dfm}
(******************************************************************************)

Procedure TFRepAsiCar.FormCreate(Sender : TObject);
Var
   xsSQL : String;
Begin
   xsSQL := 'SELECT DISTINCT PERIODO'
      + '      FROM GES_COB_CFC000_CAB '
      + '     ORDER BY PERIODO DESC ';
   DM1.cdsQry3.Close;
   DM1.cdsQry3.DataRequest(xsSQL);
   DM1.cdsQry3.Open;
   cboPeriodoCartera.LookupTable := DM1.cdsQry3;
   cboPeriodoCartera.LookupField := 'PERIODO';

   cboPeriodoCartera.Selected.Clear;
   cboPeriodoCartera.Selected.Add('PERIODO'#9'8'#9'Periodo');
End;
(******************************************************************************)

Procedure TFRepAsiCar.FormShow(Sender : TObject);
Begin
   // SE MUESTRAN LOS DOS PARA QUE APARESCA EL PIE DE LOS GRIDS
   pcPrincipal.ActivePage := tsProvincias;
   pcProvincias.ActivePage := tsProvGesDom;
   pcProvincias.ActivePage := tsProvAsig;

   pcPrincipal.ActivePage := tsLimaMetropolitana;
   pcLimaMetropolitana.ActivePage := tsLimMetGesDom;
   pcLimaMetropolitana.ActivePage := tsLimMetAsig;

   btnExportar.Enabled := False;
   btnImprimir.Enabled := False;
End;

(******************************************************************************)

Procedure TFRepAsiCar.cboPeriodoCarteraChange(Sender : TObject);

   Procedure fn_cargar_formato_grid(wgCDS : TwwClientDataSet; wgDG : TwwDBGrid);
   Var
      xnPRI_0101 : integer;
      xnPRI_0102 : integer;
      xnPRI_0103 : integer;
      xnPRI_0201 : integer;
      xnPRI_0202 : integer;
      xnPRI_0203 : integer;
      xnPRI_0301 : integer;
      xnPRI_0302 : integer;
      xnPRI_0303 : integer;
// Inicio: SPP_201304_GESCOB columna número de asignaciones sin código de prioridad
      xnSin_Pri : integer;
// Fin: SPP_201304_GESCOB

      xnTOTAL : integer;
   Begin
      xnPRI_0101 := 0;
      xnPRI_0102 := 0;
      xnPRI_0103 := 0;

      xnPRI_0201 := 0;
      xnPRI_0202 := 0;
      xnPRI_0203 := 0;

      xnPRI_0301 := 0;
      xnPRI_0302 := 0;
      xnPRI_0303 := 0;

// Inicio: SPP_201304_GESCOB columna número de asignaciones sin código de prioridad
      xnSin_Pri := 0;
// Fin: SPP_201304_GESCOB

      xnTOTAL := 0;
      With wgCDS Do
      Begin
         wgCDS.First;
         While Not wgCDS.Eof Do
         Begin
            xnPRI_0101 := xnPRI_0101 + fieldbyname('PRI_0101').Value;
            xnPRI_0102 := xnPRI_0102 + fieldbyname('PRI_0102').Value;
            xnPRI_0103 := xnPRI_0103 + fieldbyname('PRI_0103').Value;

            xnPRI_0201 := xnPRI_0201 + fieldbyname('PRI_0201').Value;
            xnPRI_0202 := xnPRI_0202 + fieldbyname('PRI_0202').Value;
            xnPRI_0203 := xnPRI_0203 + fieldbyname('PRI_0203').Value;

            xnPRI_0301 := xnPRI_0301 + fieldbyname('PRI_0301').Value;
            xnPRI_0302 := xnPRI_0302 + fieldbyname('PRI_0302').Value;
            xnPRI_0303 := xnPRI_0303 + fieldbyname('PRI_0303').Value;

// Inicio: SPP_201304_GESCOB columna número de asignaciones sin código de prioridad
            xnSin_Pri := xnSin_Pri + fieldbyname('SIN_PRI').Value;
// Fin: SPP_201304_GESCOB

            xnTOTAL := xnTOTAL + fieldbyname('TOTAL').Value;
            Next;
         End;
         First;
      End;

      With wgDG, wgDG.DataSource.DataSet Do
      Begin
         Selected.Clear;

         Selected.Add('OFDESNOM'#9'25'#9'OFIDES');
         Selected.Add('USUARIO'#9'15'#9'USUARIO');

         Selected.Add('PRI_0101'#9'10'#9'PRI_0101');
         Selected.Add('PRI_0102'#9'10'#9'PRI_0102');
         Selected.Add('PRI_0103'#9'10'#9'PRI_0103');

         Selected.Add('PRI_0201'#9'10'#9'PRI_0201');
         Selected.Add('PRI_0202'#9'10'#9'PRI_0202');
         Selected.Add('PRI_0203'#9'10'#9'PRI_0203');

         Selected.Add('PRI_0301'#9'10'#9'PRI_0301');
         Selected.Add('PRI_0302'#9'10'#9'PRI_0302');
         Selected.Add('PRI_0303'#9'10'#9'PRI_0303');

// Inicio: SPP_201304_GESCOB columna número de asignaciones sin código de prioridad
         Selected.Add('SIN_PRI'#9'10'#9'SIN_PRI');
// Fin: SPP_201304_GESCOB

         Selected.Add('TOTAL'#9'10'#9'TOTAL');
         ApplySelected;

         TNumericField(FieldByName('PRI_0101')).DisplayFormat := '###,##0';
         TNumericField(FieldByName('PRI_0102')).DisplayFormat := '###,##0';
         TNumericField(FieldByName('PRI_0103')).DisplayFormat := '###,##0';

         TNumericField(FieldByName('PRI_0201')).DisplayFormat := '###,##0';
         TNumericField(FieldByName('PRI_0202')).DisplayFormat := '###,##0';
         TNumericField(FieldByName('PRI_0203')).DisplayFormat := '###,##0';

         TNumericField(FieldByName('PRI_0301')).DisplayFormat := '###,##0';
         TNumericField(FieldByName('PRI_0302')).DisplayFormat := '###,##0';
         TNumericField(FieldByName('PRI_0303')).DisplayFormat := '###,##0';

         ColumnByName('USUARIO').FooterValue := 'Totales';
         ColumnByName('PRI_0101').FooterValue := FormatCurr('###,##0', xnPRI_0101);
         ColumnByName('PRI_0102').FooterValue := FormatCurr('###,##0', xnPRI_0102);
         ColumnByName('PRI_0103').FooterValue := FormatCurr('###,##0', xnPRI_0103);

         ColumnByName('PRI_0201').FooterValue := FormatCurr('###,##0', xnPRI_0201);
         ColumnByName('PRI_0202').FooterValue := FormatCurr('###,##0', xnPRI_0202);
         ColumnByName('PRI_0203').FooterValue := FormatCurr('###,##0', xnPRI_0203);

         ColumnByName('PRI_0301').FooterValue := FormatCurr('###,##0', xnPRI_0301);
         ColumnByName('PRI_0302').FooterValue := FormatCurr('###,##0', xnPRI_0302);
         ColumnByName('PRI_0303').FooterValue := FormatCurr('###,##0', xnPRI_0303);

// Inicio: SPP_201304_GESCOB columna número de asignaciones sin código de prioridad
         ColumnByName('SIN_PRI').FooterValue := FormatCurr('###,##0', xnSin_Pri);
// Fin: SPP_201304_GESCOB

         ColumnByName('TOTAL').FooterValue := FormatCurr('###,##0', xnTOTAL);
      End;
   End;

   Procedure fn_cargar_lim_met_asig();
   Var
      xsSQL : String;
   Begin
      xsSQL :=
         ' SELECT OFI.OFDESNOM, ASIG.USERID USUARIO '
         + '     ,SUM(CASE WHEN REG.CODIGO_PRIORIDAD = ''0101'' THEN 1 ELSE 0 END) PRI_0101 '
         + '     ,SUM(CASE WHEN REG.CODIGO_PRIORIDAD = ''0102'' THEN 1 ELSE 0 END) PRI_0102 '
         + '     ,SUM(CASE WHEN REG.CODIGO_PRIORIDAD = ''0103'' THEN 1 ELSE 0 END) PRI_0103 '
         + '     ,SUM(CASE WHEN REG.CODIGO_PRIORIDAD = ''0201'' THEN 1 ELSE 0 END) PRI_0201 '
         + '     ,SUM(CASE WHEN REG.CODIGO_PRIORIDAD = ''0202'' THEN 1 ELSE 0 END) PRI_0202 '
         + '     ,SUM(CASE WHEN REG.CODIGO_PRIORIDAD = ''0203'' THEN 1 ELSE 0 END) PRI_0203 '
         + '     ,SUM(CASE WHEN REG.CODIGO_PRIORIDAD = ''0301'' THEN 1 ELSE 0 END) PRI_0301 '
         + '     ,SUM(CASE WHEN REG.CODIGO_PRIORIDAD = ''0302'' THEN 1 ELSE 0 END) PRI_0302 '
         + '     ,SUM(CASE WHEN REG.CODIGO_PRIORIDAD = ''0303'' THEN 1 ELSE 0 END) PRI_0303 '
// Inicio: SPP_201304_GESCOB columna número de asignaciones sin código de prioridad
         + '     ,SUM(CASE WHEN REG.CODIGO_PRIORIDAD IS NULL THEN 1 ELSE 0 END) SIN_PRI '
// Fin: SPP_201304_GESCOB
         + '     ,SUM(CASE WHEN UNI.ASOID IS NOT NULL THEN 1 ELSE 0 END) TOTAL '
         + ' FROM GES_COB_USU_OFI_PER ASIG, APO110 OFI,'
         + '      (SELECT DISTINCT USUARIO, ASOID, CODIGO_REGLA '
         + '         FROM GES_COB_DOM '
         + '        WHERE PERIODO = ' + QuotedStr(cboPeriodoCartera.Text)
         + '        UNION '
         + '       SELECT DISTINCT USUARIO, ASOID, CODIGO_REGLA '
         + '         FROM GES_COB_DOM_HIS '
         + '        WHERE PERIODO = ' + QuotedStr(cboPeriodoCartera.Text)
// Inicio: SPP_201305_GESCOB F2 nuevo campo en la BD
         + '              AND ASIGNADO = ''S'' '
// Fin: SPP_201305_GESCOB
         + '        UNION '
         + '       SELECT DISTINCT USUARIO, ASOID, CODIGO_REGLA '
         + '         FROM GES_COB_IND '
         + '        WHERE PERIODO = ' + QuotedStr(cboPeriodoCartera.Text)
         + '        UNION '
         + '       SELECT DISTINCT USUARIO, ASOID, CODIGO_REGLA '
         + '         FROM GES_COB_IND_HIS '
         + '        WHERE PERIODO = ' + QuotedStr(cboPeriodoCartera.Text)
// Inicio: SPP_201305_GESCOB F2 nuevo campo en la BD
         + '              AND ASIGNADO = ''S'' '
// Fin: SPP_201305_GESCOB
         + ' ) UNI, GES_COB_REG REG '
         + ' WHERE ASIG.PERIODO = ' + QuotedStr(cboPeriodoCartera.Text)
         + '   AND ASIG.OFDESID = OFI.OFDESID '
         + '   AND OFI.DPTOID = ''15'' '
         + '   AND OFI.IDCONOFI = ''S'' '
         + '   AND OFI.OFIPRI = ''01'' '
// Inicio: SPP_201305_GESCOB F2 error, retornaba un registro cuando el gestor no tiene asignaciones, además debe ser igual para que tome solo los registros del Gestor
         + '   AND ASIG.USERID = UNI.USUARIO  '           // (+) '
// Fin: SPP_201305_GESCOB
         + '   AND UNI.CODIGO_REGLA = REG.CODIGO_REGLA(+) '
// Inicio: SPP_201304_GESCOB columna número de asignaciones sin código de prioridad
//         + '   AND UNI.CODIGO_REGLA IS NOT NULL '
// Fin: SPP_201304_GESCOB
         + ' GROUP BY OFI.OFDESNOM, ASIG.USERID '
         + ' ORDER BY OFI.OFDESNOM, ASIG.USERID ';

      DM1.cdsQry4.Close;
      DM1.cdsQry4.DataRequest(xsSQL);
      DM1.cdsQry4.Open;
      dbgLimMetAsig.DataSource := DM1.dsQry4;
      dbgLimMetAsig.GroupFieldName := 'OFDESNOM';
      fn_cargar_formato_grid(DM1.cdsQry4, dbgLimMetAsig);
   End;

   Procedure fn_cargar_lim_met_ges_dom();
   Var
      xsSQL : String;
   Begin
      xsSQL :=
         ' SELECT OFI.OFDESNOM, ASIG.USERID USUARIO '
         + '     ,SUM(CASE WHEN REG.CODIGO_PRIORIDAD = ''0101'' AND SEG.ASOID IS NOT NULL THEN 1 ELSE 0 END) PRI_0101 '
         + '     ,SUM(CASE WHEN REG.CODIGO_PRIORIDAD = ''0102'' AND SEG.ASOID IS NOT NULL THEN 1 ELSE 0 END) PRI_0102 '
         + '     ,SUM(CASE WHEN REG.CODIGO_PRIORIDAD = ''0103'' AND SEG.ASOID IS NOT NULL THEN 1 ELSE 0 END) PRI_0103 '
         + '     ,SUM(CASE WHEN REG.CODIGO_PRIORIDAD = ''0201'' AND SEG.ASOID IS NOT NULL THEN 1 ELSE 0 END) PRI_0201 '
         + '     ,SUM(CASE WHEN REG.CODIGO_PRIORIDAD = ''0202'' AND SEG.ASOID IS NOT NULL THEN 1 ELSE 0 END) PRI_0202 '
         + '     ,SUM(CASE WHEN REG.CODIGO_PRIORIDAD = ''0203'' AND SEG.ASOID IS NOT NULL THEN 1 ELSE 0 END) PRI_0203 '
         + '     ,SUM(CASE WHEN REG.CODIGO_PRIORIDAD = ''0301'' AND SEG.ASOID IS NOT NULL THEN 1 ELSE 0 END) PRI_0301 '
         + '     ,SUM(CASE WHEN REG.CODIGO_PRIORIDAD = ''0302'' AND SEG.ASOID IS NOT NULL THEN 1 ELSE 0 END) PRI_0302 '
         + '     ,SUM(CASE WHEN REG.CODIGO_PRIORIDAD = ''0303'' AND SEG.ASOID IS NOT NULL THEN 1 ELSE 0 END) PRI_0303 '
// Inicio: SPP_201304_GESCOB columna número de asignaciones sin código de prioridad
         + '     ,SUM(CASE WHEN REG.CODIGO_PRIORIDAD IS NULL THEN 1 ELSE 0 END) SIN_PRI '
// Fin: SPP_201304_GESCOB
         + '     ,SUM(CASE WHEN SEG.ASOID IS NOT NULL THEN 1 ELSE 0 END) TOTAL '
         + ' FROM GES_COB_USU_OFI_PER ASIG, APO110 OFI,'
         + '      (SELECT DISTINCT USUARIO, ASOID, CODIGO_REGLA, ''DOMICILIARIA'' TIPO_GESTION '
         + '         FROM GES_COB_DOM '
         + '        WHERE PERIODO = ' + QuotedStr(cboPeriodoCartera.Text)
         + '        UNION '
         + '       SELECT DISTINCT USUARIO, ASOID, CODIGO_REGLA, ''DOMICILIARIA'' TIPO_GESTION '
         + '         FROM GES_COB_DOM_HIS '
         + '        WHERE PERIODO = ' + QuotedStr(cboPeriodoCartera.Text)
// Inicio: SPP_201305_GESCOB F2 nuevo campo en la BD
         + '              AND ASIGNADO = ''S'' '
// Fin: SPP_201305_GESCOB
         + '        UNION '
         + '       SELECT DISTINCT USUARIO, ASOID, CODIGO_REGLA, ''TELEFONICA'' TIPO_GESTION '
         + '         FROM GES_COB_IND '
         + '        WHERE PERIODO = ' + QuotedStr(cboPeriodoCartera.Text)
         + '        UNION '
         + '       SELECT DISTINCT USUARIO, ASOID, CODIGO_REGLA, ''TELEFONICA'' TIPO_GESTION '
         + '         FROM GES_COB_IND_HIS '
         + '        WHERE PERIODO = ' + QuotedStr(cboPeriodoCartera.Text)
// Inicio: SPP_201305_GESCOB F2 nuevo campo en la BD
         + '              AND ASIGNADO = ''S'' '
// Fin: SPP_201305_GESCOB
         + ' ) UNI, GES_COB_REG REG, '
         + ' (SELECT PERIODO, ASOID, USUARIO, IDGESTIONDET '
         + '           FROM (SELECT PERIODO, ASOID, USUARIO, IDGESTIONDET, '
         + '                        DENSE_RANK() OVER(PARTITION BY PERIODO, ASOID, USUARIO ORDER BY PERIODO, ASOID, FECHA DESC, HORA DESC) DRNK '
         + '                    FROM GES_COB_SEG '
         + '                   WHERE PERIODO = ' + QuotedStr(cboPeriodoCartera.Text)
         + '                ) '
         + '          WHERE DRNK = 1 '
         + ' ) SEG '
         + ' WHERE ASIG.PERIODO = ' + QuotedStr(cboPeriodoCartera.Text)
         + '   AND ASIG.OFDESID = OFI.OFDESID '
         + '   AND OFI.DPTOID = ''15'' '
         + '   AND OFI.IDCONOFI = ''S'' '
         + '   AND OFI.OFIPRI = ''01'' '
// Inicio: SPP_201305_GESCOB F2 error, retornaba un registro cuando el gestor no tiene asignaciones, además debe ser igual para que tome solo los registros del Gestor
         + '   AND ASIG.USERID = UNI.USUARIO  '           // (+) '
// Fin: SPP_201305_GESCOB
         + '   AND UNI.CODIGO_REGLA = REG.CODIGO_REGLA(+) '
// Inicio: SPP_201304_GESCOB columna número de asignaciones sin código de prioridad
//         + '   AND UNI.CODIGO_REGLA IS NOT NULL '
// Fin: SPP_201304_GESCOB
         + '   AND UNI.TIPO_GESTION = ''DOMICILIARIA'' '
         + '   AND UNI.USUARIO = SEG.USUARIO(+) '
         + '   AND UNI.ASOID = SEG.ASOID(+) '
         + '   AND ' + QuotedStr(cboPeriodoCartera.Text) + ' = SEG.PERIODO(+) '
         + '   AND CASE WHEN UNI.TIPO_GESTION = ''DOMICILIARIA'' THEN ''3'' '
         + '            WHEN UNI.TIPO_GESTION = ''TELEFONICA'' THEN ''1'' '
         + '        END = SUBSTR(SEG.IDGESTIONDET(+), 1, 1) '
         + ' GROUP BY UNI.TIPO_GESTION, OFI.OFDESNOM, ASIG.USERID '
         + ' ORDER BY UNI.TIPO_GESTION, OFI.OFDESNOM, ASIG.USERID ';

      DM1.cdsQry8.Close;
      DM1.cdsQry8.DataRequest(xsSQL);
      DM1.cdsQry8.Open;
      dbgLimMetGesDom.DataSource := DM1.dsQry8;
      dbgLimMetGesDom.GroupFieldName := 'OFDESNOM';

      fn_cargar_formato_grid(DM1.cdsQry8, dbgLimMetGesDom);
   End;

   Procedure fn_cargar_prov_asig();
   Var
      xsSQL : String;
   Begin
      xsSQL :=
         ' SELECT OFI.OFDESNOM, ASIG.USERID USUARIO '
         + '     ,SUM(CASE WHEN REG.CODIGO_PRIORIDAD = ''0101'' THEN 1 ELSE 0 END) PRI_0101 '
         + '     ,SUM(CASE WHEN REG.CODIGO_PRIORIDAD = ''0102'' THEN 1 ELSE 0 END) PRI_0102 '
         + '     ,SUM(CASE WHEN REG.CODIGO_PRIORIDAD = ''0103'' THEN 1 ELSE 0 END) PRI_0103 '
         + '     ,SUM(CASE WHEN REG.CODIGO_PRIORIDAD = ''0201'' THEN 1 ELSE 0 END) PRI_0201 '
         + '     ,SUM(CASE WHEN REG.CODIGO_PRIORIDAD = ''0202'' THEN 1 ELSE 0 END) PRI_0202 '
         + '     ,SUM(CASE WHEN REG.CODIGO_PRIORIDAD = ''0203'' THEN 1 ELSE 0 END) PRI_0203 '
         + '     ,SUM(CASE WHEN REG.CODIGO_PRIORIDAD = ''0301'' THEN 1 ELSE 0 END) PRI_0301 '
         + '     ,SUM(CASE WHEN REG.CODIGO_PRIORIDAD = ''0302'' THEN 1 ELSE 0 END) PRI_0302 '
         + '     ,SUM(CASE WHEN REG.CODIGO_PRIORIDAD = ''0303'' THEN 1 ELSE 0 END) PRI_0303 '
// Inicio: SPP_201304_GESCOB columna número de asignaciones sin código de prioridad
         + '     ,SUM(CASE WHEN REG.CODIGO_PRIORIDAD IS NULL THEN 1 ELSE 0 END) SIN_PRI '
// Fin: SPP_201304_GESCOB
         + '     ,SUM(CASE WHEN UNI.ASOID IS NOT NULL THEN 1 ELSE 0 END) TOTAL '
         + ' FROM GES_COB_USU_OFI_PER ASIG, APO110 OFI,'
         + '      (SELECT DISTINCT USUARIO, ASOID, CODIGO_REGLA '
         + '         FROM GES_COB_DOM '
         + '        WHERE PERIODO = ' + QuotedStr(cboPeriodoCartera.Text)
         + '        UNION '
         + '       SELECT DISTINCT USUARIO, ASOID, CODIGO_REGLA '
         + '         FROM GES_COB_DOM_HIS '
         + '        WHERE PERIODO = ' + QuotedStr(cboPeriodoCartera.Text)
// Inicio: SPP_201305_GESCOB F2 nuevo campo en la BD
         + '              AND ASIGNADO = ''S'' '
// Fin: SPP_201305_GESCOB
         + '        UNION '
         + '       SELECT DISTINCT USUARIO, ASOID, CODIGO_REGLA '
         + '         FROM GES_COB_IND '
         + '        WHERE PERIODO = ' + QuotedStr(cboPeriodoCartera.Text)
         + '        UNION '
         + '       SELECT DISTINCT USUARIO, ASOID, CODIGO_REGLA '
         + '         FROM GES_COB_IND_HIS '
         + '        WHERE PERIODO = ' + QuotedStr(cboPeriodoCartera.Text)
// Inicio: SPP_201305_GESCOB F2 nuevo campo en la BD
         + '              AND ASIGNADO = ''S'' '
// Fin: SPP_201305_GESCOB
         + ' ) UNI, GES_COB_REG REG '
         + ' WHERE ASIG.PERIODO = ' + QuotedStr(cboPeriodoCartera.Text)
         + '   AND ASIG.OFDESID = OFI.OFDESID '
         + '   AND OFI.DPTOID <> ''15'' '
// Inicio: SPP_201305_GESCOB F2 error, retornaba un registro cuando el gestor no tiene asignaciones, además debe ser igual para que tome solo los registros del Gestor
         + '   AND ASIG.USERID = UNI.USUARIO  '           // (+) '
// Fin: SPP_201305_GESCOB
         + '   AND UNI.CODIGO_REGLA = REG.CODIGO_REGLA(+) '
// Inicio: SPP_201304_GESCOB columna número de asignaciones sin código de prioridad
//         + '   AND UNI.CODIGO_REGLA IS NOT NULL '
// Fin: SPP_201304_GESCOB
         + ' GROUP BY OFI.OFDESNOM, ASIG.USERID '
         + ' ORDER BY OFI.OFDESNOM, ASIG.USERID ';

      DM1.cdsQry5.Close;
      DM1.cdsQry5.DataRequest(xsSQL);
      DM1.cdsQry5.Open;
      dbgProvAsig.DataSource := DM1.dsQry5;
      dbgProvAsig.GroupFieldName := 'OFDESNOM';
      fn_cargar_formato_grid(DM1.cdsQry5, dbgProvAsig);
   End;

   Procedure fn_cargar_prov_ges_dom();
   Var
      xsSQL : String;
   Begin
      xsSQL :=
         ' SELECT OFI.OFDESNOM, ASIG.USERID USUARIO '
         + '     ,SUM(CASE WHEN REG.CODIGO_PRIORIDAD = ''0101'' AND SEG.ASOID IS NOT NULL THEN 1 ELSE 0 END) PRI_0101 '
         + '     ,SUM(CASE WHEN REG.CODIGO_PRIORIDAD = ''0102'' AND SEG.ASOID IS NOT NULL THEN 1 ELSE 0 END) PRI_0102 '
         + '     ,SUM(CASE WHEN REG.CODIGO_PRIORIDAD = ''0103'' AND SEG.ASOID IS NOT NULL THEN 1 ELSE 0 END) PRI_0103 '
         + '     ,SUM(CASE WHEN REG.CODIGO_PRIORIDAD = ''0201'' AND SEG.ASOID IS NOT NULL THEN 1 ELSE 0 END) PRI_0201 '
         + '     ,SUM(CASE WHEN REG.CODIGO_PRIORIDAD = ''0202'' AND SEG.ASOID IS NOT NULL THEN 1 ELSE 0 END) PRI_0202 '
         + '     ,SUM(CASE WHEN REG.CODIGO_PRIORIDAD = ''0203'' AND SEG.ASOID IS NOT NULL THEN 1 ELSE 0 END) PRI_0203 '
         + '     ,SUM(CASE WHEN REG.CODIGO_PRIORIDAD = ''0301'' AND SEG.ASOID IS NOT NULL THEN 1 ELSE 0 END) PRI_0301 '
         + '     ,SUM(CASE WHEN REG.CODIGO_PRIORIDAD = ''0302'' AND SEG.ASOID IS NOT NULL THEN 1 ELSE 0 END) PRI_0302 '
         + '     ,SUM(CASE WHEN REG.CODIGO_PRIORIDAD = ''0303'' AND SEG.ASOID IS NOT NULL THEN 1 ELSE 0 END) PRI_0303 '
// Inicio: SPP_201304_GESCOB columna número de asignaciones sin código de prioridad
         + '     ,SUM(CASE WHEN REG.CODIGO_PRIORIDAD IS NULL THEN 1 ELSE 0 END) SIN_PRI '
// Fin: SPP_201304_GESCOB
         + '     ,SUM(CASE WHEN SEG.ASOID IS NOT NULL THEN 1 ELSE 0 END) TOTAL '
         + ' FROM GES_COB_USU_OFI_PER ASIG, APO110 OFI,'
         + '      (SELECT DISTINCT USUARIO, ASOID, CODIGO_REGLA, ''DOMICILIARIA'' TIPO_GESTION '
         + '         FROM GES_COB_DOM '
         + '        WHERE PERIODO = ' + QuotedStr(cboPeriodoCartera.Text)
         + '        UNION '
         + '       SELECT DISTINCT USUARIO, ASOID, CODIGO_REGLA, ''DOMICILIARIA'' TIPO_GESTION '
         + '         FROM GES_COB_DOM_HIS '
         + '        WHERE PERIODO = ' + QuotedStr(cboPeriodoCartera.Text)
// Inicio: SPP_201305_GESCOB F2 nuevo campo en la BD
         + '              AND ASIGNADO = ''S'' '
// Fin: SPP_201305_GESCOB
         + '        UNION '
         + '       SELECT DISTINCT USUARIO, ASOID, CODIGO_REGLA, ''TELEFONICA'' TIPO_GESTION '
         + '         FROM GES_COB_IND '
         + '        WHERE PERIODO = ' + QuotedStr(cboPeriodoCartera.Text)
         + '        UNION '
         + '       SELECT DISTINCT USUARIO, ASOID, CODIGO_REGLA, ''TELEFONICA'' TIPO_GESTION '
         + '         FROM GES_COB_IND_HIS '
         + '        WHERE PERIODO = ' + QuotedStr(cboPeriodoCartera.Text)
// Inicio: SPP_201305_GESCOB F2 nuevo campo en la BD
         + '              AND ASIGNADO = ''S'' '
// Fin: SPP_201305_GESCOB
         + ' ) UNI, GES_COB_REG REG, '
         + ' (SELECT PERIODO, ASOID, USUARIO, IDGESTIONDET '
         + '           FROM (SELECT PERIODO, ASOID, USUARIO, IDGESTIONDET, '
         + '                        DENSE_RANK() OVER(PARTITION BY PERIODO, ASOID, USUARIO ORDER BY PERIODO, ASOID, FECHA DESC, HORA DESC) DRNK '
         + '                    FROM GES_COB_SEG '
         + '                   WHERE PERIODO = ' + QuotedStr(cboPeriodoCartera.Text)
         + '                ) '
         + '          WHERE DRNK = 1 '
         + ' ) SEG '
         + ' WHERE ASIG.PERIODO = ' + QuotedStr(cboPeriodoCartera.Text)
         + '   AND ASIG.OFDESID = OFI.OFDESID '
         + '   AND OFI.DPTOID <> ''15'' '
// Inicio: SPP_201305_GESCOB F2 error, retornaba un registro cuando el gestor no tiene asignaciones, además debe ser igual para que tome solo los registros del Gestor
         + '   AND ASIG.USERID = UNI.USUARIO  '           // (+) '
// Fin: SPP_201305_GESCOB
         + '   AND UNI.CODIGO_REGLA = REG.CODIGO_REGLA(+) '
// Inicio: SPP_201304_GESCOB columna número de asignaciones sin código de prioridad
//         + '   AND UNI.CODIGO_REGLA IS NOT NULL '
// Fin: SPP_201304_GESCOB
         + '   AND UNI.TIPO_GESTION = ''DOMICILIARIA'' '
         + '   AND UNI.USUARIO = SEG.USUARIO(+) '
         + '   AND UNI.ASOID = SEG.ASOID(+) '
         + '   AND ' + QuotedStr(cboPeriodoCartera.Text) + ' = SEG.PERIODO(+) '
         + '   AND CASE WHEN UNI.TIPO_GESTION = ''DOMICILIARIA'' THEN ''3'' '
         + '            WHEN UNI.TIPO_GESTION = ''TELEFONICA'' THEN ''1'' '
         + '        END = SUBSTR(SEG.IDGESTIONDET(+), 1, 1) '
         + ' GROUP BY UNI.TIPO_GESTION, OFI.OFDESNOM, ASIG.USERID '
         + ' ORDER BY UNI.TIPO_GESTION, OFI.OFDESNOM, ASIG.USERID ';

      DM1.cdsQry7.Close;
      DM1.cdsQry7.DataRequest(xsSQL);
      DM1.cdsQry7.Open;
      dbgProvGesDom.DataSource := DM1.dsQry7;
      dbgProvGesDom.GroupFieldName := 'OFDESNOM';

      fn_cargar_formato_grid(DM1.cdsQry7, dbgProvGesDom);
   End;
Begin
   If trim(cboPeriodoCartera.Text) <> '' Then
   Begin
      Screen.Cursor := crHourGlass;
      fn_cargar_lim_met_asig();
      fn_cargar_lim_met_ges_dom();
      fn_cargar_prov_asig();
      fn_cargar_prov_ges_dom();
      Screen.Cursor := crDefault;
   End;
   btnExportar.Enabled := (trim(cboPeriodoCartera.Text) <> '');
   btnImprimir.Enabled := btnExportar.Enabled;

End;
(******************************************************************************)

Procedure TFRepAsiCar.btnExportarClick(Sender : TObject);
Begin
   Screen.Cursor := crHourGlass;
   Try
      If pcPrincipal.ActivePage = tsLimaMetropolitana Then
      Begin
         If pcLimaMetropolitana.ActivePage = tsLimMetAsig Then
         Begin
            With dbgLimMetAsig, dbgLimMetAsig.ExportOptions Do
            Begin
               ExportType := wwgetSYLK;
               FileName := 'LimaMetAsig.slk';
               DM1.OpcionesExportExcel(dbgLimMetAsig.ExportOptions);
               dbgLimMetAsig.ExportOptions.TitleName := 'LMAsig';
               Save;
               If Not (esoClipboard In Options) Then
                  ShellExecute(Handle, 'Open', PChar(dbgLimMetAsig.exportoptions.Filename), Nil, Nil, sw_shownormal);
            End;
         End;
         If pcLimaMetropolitana.ActivePage = tsLimMetGesDom Then
         Begin
            With dbgLimMetGesDom, dbgLimMetGesDom.ExportOptions Do
            Begin
               ExportType := wwgetSYLK;
               FileName := 'LimaMetGesDom.slk';
               DM1.OpcionesExportExcel(dbgLimMetGesDom.ExportOptions);
               dbgLimMetGesDom.ExportOptions.TitleName := 'LMGDom';
               Save;
               If Not (esoClipboard In Options) Then
                  ShellExecute(Handle, 'Open', PChar(dbgLimMetGesDom.exportoptions.Filename), Nil, Nil, sw_shownormal);
            End;
         End;
      End;
      If pcPrincipal.ActivePage = tsProvincias Then
      Begin
         If pcProvincias.ActivePage = tsProvAsig Then
         Begin
            With dbgProvAsig, dbgProvAsig.ExportOptions Do
            Begin
               ExportType := wwgetSYLK;
               FileName := 'ProvAsig.slk';
               DM1.OpcionesExportExcel(dbgProvAsig.ExportOptions);
               dbgProvAsig.ExportOptions.TitleName := 'PAsig';
               Save;
               If Not (esoClipboard In Options) Then
                  ShellExecute(Handle, 'Open', PChar(dbgProvAsig.exportoptions.Filename), Nil, Nil, sw_shownormal);
            End;
         End;
         If pcProvincias.ActivePage = tsProvGesDom Then
         Begin
            With dbgProvGesDom, dbgProvGesDom.ExportOptions Do
            Begin
               ExportType := wwgetSYLK;
               FileName := 'ProvGesDom.slk';
               DM1.OpcionesExportExcel(dbgProvGesDom.ExportOptions);
               dbgProvGesDom.ExportOptions.TitleName := 'PGDom';
               Save;
               If Not (esoClipboard In Options) Then
                  ShellExecute(Handle, 'Open', PChar(dbgProvGesDom.exportoptions.Filename), Nil, Nil, sw_shownormal);
            End;
         End;

      End;
      Screen.Cursor := crDefault;
   Except
      Screen.Cursor := crDefault;
      MessageDlg('No se puede grabar el Archivo ' + chr(13) + 'Cierre todos los Archivos en Excel y vuelva a intentarlo', mtWarning, [mbOk], 0);
   End;
End;
(******************************************************************************)

Procedure TFRepAsiCar.btnImprimirClick(Sender : TObject);
Begin
   If pcPrincipal.ActivePage = tsLimaMetropolitana Then
   Begin
      If pcLimaMetropolitana.ActivePage = tsLimMetAsig Then
      Begin
         If DM1.cdsQry4.RecordCount > 0 Then
         Begin
            ppLblTit01.Text := 'ASIGNACION DE CARTERA PARA LIMA METROPOLITANA - ' + cboPeriodoCartera.Text;
            ppLblTit02.Text := '';
            ppLblUser.Caption := 'Emitido Por :  ' + Trim(DM1.CrgDescrip('USERID=' + QuotedStr(Trim(DM1.wUsuario)), 'TGE006', 'USERNOM'));
            dbpRptPipeline.DataSource := DM1.dsQry4;
            repReport.Print;
            //desRptVisor.Show;
         End;
      End;
      If pcLimaMetropolitana.ActivePage = tsLimMetGesDom Then
      Begin
         If DM1.cdsQry8.RecordCount > 0 Then
         Begin
            ppLblTit01.Text := 'GESTIONES DOMICILIARIAS DE CARTERA PARA LIMA METROPOLITANA - ' + cboPeriodoCartera.Text;
            ppLblTit02.Text := '';
            ppLblUser.Caption := 'Emitido Por :  ' + Trim(DM1.CrgDescrip('USERID=' + QuotedStr(Trim(DM1.wUsuario)), 'TGE006', 'USERNOM'));
            dbpRptPipeline.DataSource := DM1.dsQry8;
            repReport.Print;
            //desRptVisor.Show;
         End;
      End;
   End;
   If pcPrincipal.ActivePage = tsProvincias Then
   Begin
      If pcProvincias.ActivePage = tsProvAsig Then
      Begin
         If DM1.cdsQry5.RecordCount > 0 Then
         Begin
            ppLblTit01.Text := 'ASIGNACION DE CARTERA PARA PROVINCIAS(OFIDES) - ' + cboPeriodoCartera.Text;
            ppLblTit02.Text := '';
            ppLblUser.Caption := 'Emitido Por :  ' + Trim(DM1.CrgDescrip('USERID=' + QuotedStr(Trim(DM1.wUsuario)), 'TGE006', 'USERNOM'));
            dbpRptPipeline.DataSource := DM1.dsQry5;
            repReport.Print;
            //desRptVisor.Show;
         End;
      End;
      If pcProvincias.ActivePage = tsProvGesDom Then
      Begin
         If DM1.cdsQry7.RecordCount > 0 Then
         Begin
            ppLblTit01.Text := 'GESTIONES DOMICILIARIAS DE CARTERA PARA PROVINCIAS(OFIDES) - ' + cboPeriodoCartera.Text;
            ppLblTit02.Text := '';
            ppLblUser.Caption := 'Emitido Por :  ' + Trim(DM1.CrgDescrip('USERID=' + QuotedStr(Trim(DM1.wUsuario)), 'TGE006', 'USERNOM'));
            dbpRptPipeline.DataSource := DM1.dsQry7;
            repReport.Print;
            //desRptVisor.Show;
         End;
      End;

   End;
End;

(******************************************************************************)

Procedure TFRepAsiCar.dbgLimMetAsigDblClick(Sender : TObject);
Var
   xxFrm : TFRepAsiCarDet;
Begin
   xxFrm := TFRepAsiCarDet.Create(self, tcRACDLimMetAsig, cboPeriodoCartera.Text, DM1.cdsQry4.fieldbyname('USUARIO').asstring);
   Try
      xxFrm.showmodal();
   Finally
      xxFrm.Free;
   End;
End;

(******************************************************************************)

Procedure TFRepAsiCar.dbgLimMetGesDomDblClick(Sender : TObject);
Var
   xxFrm : TFRepAsiCarDet;
Begin
   xxFrm := TFRepAsiCarDet.Create(self, tcRACDLimMetGesDom, cboPeriodoCartera.Text, DM1.cdsQry8.fieldbyname('USUARIO').asstring);
   Try
      xxFrm.showmodal();
   Finally
      xxFrm.Free;
   End;
End;

(******************************************************************************)

Procedure TFRepAsiCar.dbgProvAsigDblClick(Sender : TObject);
Var
   xxFrm : TFRepAsiCarDet;
Begin
   xxFrm := TFRepAsiCarDet.Create(self, tcRACDProvAsig, cboPeriodoCartera.Text, DM1.cdsQry5.fieldbyname('USUARIO').asstring);
   Try
      xxFrm.showmodal();
   Finally
      xxFrm.Free;
   End;
End;
(******************************************************************************)

Procedure TFRepAsiCar.dbgProvGesDomDblClick(Sender : TObject);
Var
   xxFrm : TFRepAsiCarDet;
Begin
   xxFrm := TFRepAsiCarDet.Create(self, tcRACDProvGesDom, cboPeriodoCartera.Text, DM1.cdsQry7.fieldbyname('USUARIO').asstring);
   Try
      xxFrm.showmodal();
   Finally
      xxFrm.Free;
   End;
End;

(******************************************************************************)

Procedure TFRepAsiCar.btnSalirClick(Sender : TObject);
Begin
   close;
End;

(******************************************************************************)

End.

