// Inicio Uso Estándares: 01/08/2011
// Unidad : Gestión de Cobranzas
// Formulario : FCompararTrasladosAso
// Fecha de Creación :
// Autor : Equipo de Sistemas
// Objetivo : Comparar Traslados Detallado por Asociado
// Actualizaciones:
// HPC_201119_GESCOB 26/10/2011 Acuerdo de Atencion 2011-02-V2.0
// HPC_201203_GESCOB 15/02/2012 Evitar Mensajes de error en tiempo de diseño
// HPC_201206_GESCOB - F2 21/08/2012 MODIFICAR COMPARACION DE TRASLADO PARA QUE SE ASEMEJE A LA MATRIZ DE TRASLADO DEL MODULO DE RIESGOS
// DPP_201205_GESCOB: Pase a producción a partir de los pases HPC_201205 y HPC_201206
// HPC_201208_GESCOB - F1 14/09/2012 OPTIMIZACION DE CONSULTAS DE COMPARACION DE TRASLADOS
// DPP_201207_GESCOB: Pase a producción a partir de los pases HPC_201208
// HPC_201303_GESCOB: F2 06/05/2013 Cambios en la sección "Resumen de Gestiones Realizadas"
// SPP_201303_GESCOB: Se realiza el pase a producción a partir del HPC_201303_GESCOB

Unit GES517;

Interface

Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, Grids, Wwdbigrd, Wwdbgrid, StdCtrls, Buttons, ExtCtrls, DB, wwExport, shellapi,
   ppEndUsr, ppDB, ppDBPipe, ppParameter, ppBands, ppCtrls, ppVar, ppPrnabl,
   ppClass, ppCache, ppComm, ppRelatv, ppProd, ppReport;

Type
   TFCompararTrasladosAso = Class(TForm)
      gbFiltro : TGroupBox;
      Label2 : TLabel;
      Label1 : TLabel;
      Label3 : TLabel;
      edPeriodoActual : TEdit;
      edPeriodoAnterior : TEdit;
      edCalificacion : TEdit;
      edCalificacionDescripcion : TEdit;
      gbSimbologia : TGroupBox;
      shCaidas : TShape;
      Label4 : TLabel;
      shPermanencias : TShape;
      Label5 : TLabel;
      shMejoras : TShape;
      Label6 : TLabel;
      dbgResultados01 : TwwDBGrid;
      lblDepartamento : TLabel;
      edDpto : TEdit;
      edDptoDes : TEdit;
      lblCalificaionAnt : TLabel;
      edCalificacionAnt : TEdit;
      edCalificacionDescripcionAnt : TEdit;
      pnlControles : TPanel;
      btnImprimir : TBitBtn;
      btnSalir : TBitBtn;
      btnExportar : TBitBtn;
      repReporte : TppReport;
      ppParameterList1 : TppParameterList;
      dbpReporte : TppDBPipeline;
      desReporte : TppDesigner;
      ppHeaderBand41 : TppHeaderBand;
      ppLine1 : TppLine;
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
      ppLabel5 : TppLabel;
      ppLabel6 : TppLabel;
      ppLabel7 : TppLabel;
      ppLabel17 : TppLabel;
      ppLabel29 : TppLabel;
      ppLabel30 : TppLabel;
      ppLabel2 : TppLabel;
      ppLabel3 : TppLabel;
      ppLine2 : TppLine;
      ppLine3 : TppLine;
      ppLine4 : TppLine;
      ppLine5 : TppLine;
      ppLine6 : TppLine;
      ppLine7 : TppLine;
      ppLine8 : TppLine;
      ppLine9 : TppLine;
      ppLine10 : TppLine;
      ppLine11 : TppLine;
      ppDetailBand44 : TppDetailBand;
      ppDBText1 : TppDBText;
      ppDBText2 : TppDBText;
      ppDBText3 : TppDBText;
      ppDBText4 : TppDBText;
      ppDBText5 : TppDBText;
      ppDBText6 : TppDBText;
      ppDBText7 : TppDBText;
      ppFooterBand36 : TppFooterBand;
      ppSummaryBand41 : TppSummaryBand;
      ppLblUser : TppLabel;
      ppGroup1 : TppGroup;
      ppGroupHeaderBand1 : TppGroupHeaderBand;
      ppDBText340 : TppDBText;
      ppGroupFooterBand1 : TppGroupFooterBand;
      ppDBCalc1 : TppDBCalc;
      ppLabel4 : TppLabel;
      ppLabel31 : TppLabel;
      ppDBCalc2 : TppDBCalc;
      ppDBCalc3 : TppDBCalc;
      ppDBCalc4 : TppDBCalc;
      ppDBCalc5 : TppDBCalc;
      ppLine12 : TppLine;
      pnlResumen : TPanel;
      lblResTitulo : TLabel;
      lbl2 : TLabel;
      lbl3 : TLabel;
      lbl4 : TLabel;
      lbl5 : TLabel;
      Shape1 : TShape;
      lbl6 : TLabel;
      lblResGesTelIntAct : TLabel;
      lblResGesTelExtAct : TLabel;
      lblResGesDomIntAct : TLabel;
      lblResGesDomExtAct : TLabel;
      lblResGesTotAct : TLabel;
      Bevel1 : TBevel;
      lbl20 : TLabel;
      lbl7 : TLabel;
      lblResGestoresExtAct : TLabel;
      lblResGestoresIntAct : TLabel;
      lbl10 : TLabel;
      lblResGestoresTotAct : TLabel;
      Shape2 : TShape;
      wgPPImage : TppImage;
      imgCapturarPanel : TImage;
      ppTitleBand1 : TppTitleBand;
      ppLabel8 : TppLabel;
      ppLabel9 : TppLabel;
      ppLabel10 : TppLabel;
      ppLabel11 : TppLabel;
      ppLabel12 : TppLabel;
      ppSystemVariable1 : TppSystemVariable;
      ppSystemVariable2 : TppSystemVariable;
      ppSystemVariable3 : TppSystemVariable;
      ppLblTit01 : TppLabel;
      ppLabel14 : TppLabel;
      ppLabel15 : TppLabel;
      ppLabel16 : TppLabel;
      lblResTituloAct : TLabel;
      lblResTituloAnt : TLabel;
      lbl8 : TLabel;
      lbl9 : TLabel;
      lbl11 : TLabel;
      lbl12 : TLabel;
      Shape3 : TShape;
      lbl13 : TLabel;
      lblResGesTotAnt : TLabel;
      lblResGesDomExtAnt : TLabel;
      lblResGesDomIntAnt : TLabel;
      lblResGesTelExtAnt : TLabel;
      lblResGesTelIntAnt : TLabel;
      lbl19 : TLabel;
      lbl21 : TLabel;
      lblResGestoresIntAnt : TLabel;
      lblResGestoresExtAnt : TLabel;
      lblResGestoresTotAnt : TLabel;
      lbl25 : TLabel;
      Shape4 : TShape;
      Shape5 : TShape;
      Procedure btnSalirClick(Sender : TObject);
      Procedure dbgResultados01DrawDataCell(Sender : TObject;
         Const Rect : TRect; Field : TField; State : TGridDrawState);
      Procedure dbgResultados01DblClick(Sender : TObject);
      Procedure btnExportarClick(Sender : TObject);
      Procedure btnImprimirClick(Sender : TObject);
      Procedure FormShow(Sender : TObject);
      Procedure pnlResumenDblClick(Sender : TObject);
   Private
    { Private declarations }
   Public
    { Public declarations }
   End;

Var
   FCompararTrasladosAso : TFCompararTrasladosAso;

Implementation
Uses GESDM1, GES518, GES519;
{$R *.dfm}

//******************************************************************************
// Nombre : FormShow
// Descripcion :  mosrtar datos en la grilla
//******************************************************************************

Procedure TFCompararTrasladosAso.FormShow(Sender : TObject);
Var
   xsSQL : String;
   xnCANT_GES_ACT, xnCANT_GES_ANT, xnCantAso : integer;
   xnSALVEN_ACT, xnSALVEN_ANT : currency;

   Function fn_sql_universo_vacio(wgPeriodoGestion : String) : String;
   Var
      xsSQLFn : String;
   Begin
      xsSQLFn :=
         ' SELECT TO_CHAR(ADD_MONTHS(TO_DATE(' + QuotedStr(wgPeriodoGestion) + ', ''YYYYMM''), 1), ''DD/MM/YYYY'') PRIMER_DIA_PERIODO, '
         + '      TO_CHAR(LAST_DAY(ADD_MONTHS(TO_DATE(' + QuotedStr(wgPeriodoGestion) + ', ''YYYYMM''), 1)), ''DD/MM/YYYY'') ULTIMO_DIA_PERIODO, '
         + '      0 CANT_GES_TEL_INT, 0 CANT_GES_TEL_EXT, 0 CANT_GES_DOM_INT, 0 CANT_GES_DOM_EXT, '
         + '      0 CANT_GES_TOT '
         + ' FROM DUAL';
      result := xsSQLFn;
   End;

   Function fn_sql_universo_gestiones(wgPeriodoGestion : String) : String;
   Var
      xsSQLFn : String;
   Begin
      // INICIO: DPP_201207_GESCOB - F1
      xsSQLFn :=
         '       SELECT /*+ rule */ TO_CHAR(ADD_MONTHS(TO_DATE(GES.PERIODO,''YYYYMM''),1),''DD/MM/YYYY'') PRIMER_DIA_PERIODO '
         + '           ,TO_CHAR(LAST_DAY(ADD_MONTHS(TO_DATE(GES.PERIODO,''YYYYMM''),1)),''DD/MM/YYYY'') ULTIMO_DIA_PERIODO '
// Inicio: SPP_201303_GESCOB - se cambio de 1 a 5 el valor de igualdad para considerar gestiones telefónicas internas
         + '           ,NVL(SUM(CASE WHEN (SUBSTR(GES.IDGESTIONDET,1,1) = 5) AND (SUBSTR(GES.USUARIO,1,2) <> ''00'') THEN 1 ELSE 0 END),0) CANT_GES_TEL_INT '
// Fin: SPP_201303_GESCOB
         + '           ,NVL(SUM(CASE WHEN (SUBSTR(GES.IDGESTIONDET,1,1) = 1) AND (SUBSTR(GES.USUARIO,1,2)  = ''00'') THEN 1 ELSE 0 END),0) CANT_GES_TEL_EXT '
         + '           ,NVL(SUM(CASE WHEN (SUBSTR(GES.IDGESTIONDET,1,1) = 3) AND (SUBSTR(GES.USUARIO,1,2) <> ''00'') THEN 1 ELSE 0 END),0) CANT_GES_DOM_INT '
         + '           ,NVL(SUM(CASE WHEN (SUBSTR(GES.IDGESTIONDET,1,1) = 3) AND (SUBSTR(GES.USUARIO,1,2)  = ''00'') THEN 1 ELSE 0 END),0) CANT_GES_DOM_EXT '
         + '           ,NVL(SUM(1),0) CANT_GES_TOT ';
      If edCalificacion.Text = 'X' Then
      Begin
         xsSQLFn := xsSQLFn
            + '   FROM CFC000 B, CFC000 A, GES_COB_SEG GES '
            + '  WHERE B.PERIODO = ' + QuotedStr(edPeriodoAnterior.Text)
            + '    AND ' + QuotedStr(edPeriodoActual.Text) + ' = A.PERIODO(+) '
            + '    AND B.ASOID = A.ASOID(+) '
            + '    AND ' + QuotedStr(edCalificacion.Text) + '= NVL(A.CFC_F,''X'') '
            + '    AND B.ASOID = GES.ASOID '
            + '    AND ' + QuotedStr(wgPeriodoGestion) + ' = GES.PERIODO '
            + '    AND GES.FECHA BETWEEN TRUNC(ADD_MONTHS(TO_DATE(GES.PERIODO, ''YYYYMM''), 1)) AND '
            + '        LAST_DAY(TRUNC(ADD_MONTHS(TO_DATE(GES.PERIODO, ''YYYYMM''), 1))) ';
         If edDpto.Visible Then
            xsSQLFn := xsSQLFn
               + ' AND B.DPTOID = ' + QuotedStr(edDpto.Text);
         If edCalificacionAnt.Visible Then
            xsSQLFn := xsSQLFn
               + ' AND B.CFC_F = ' + QuotedStr(edCalificacionAnt.Text);
      End
      Else
      Begin
         xsSQLFn := xsSQLFn
            + '   FROM CFC000 A, CFC000 B, GES_COB_SEG GES '
            + '  WHERE A.PERIODO = ' + QuotedStr(edPeriodoActual.Text)
            + '    AND A.CFC_F = ' + QuotedStr(edCalificacion.Text)
            + '    AND ' + QuotedStr(edPeriodoAnterior.Text) + ' = B.PERIODO(+) '
            + '    AND A.ASOID = B.ASOID(+) '
            + '    AND A.ASOID = GES.ASOID '
            + '    AND ' + QuotedStr(wgPeriodoGestion) + ' = GES.PERIODO '
            + '    AND GES.FECHA BETWEEN TRUNC(ADD_MONTHS(TO_DATE(GES.PERIODO, ''YYYYMM''), 1)) AND '
            + '        LAST_DAY(TRUNC(ADD_MONTHS(TO_DATE(GES.PERIODO, ''YYYYMM''), 1))) ';
         If edDpto.Visible Then
            xsSQLFn := xsSQLFn
               + ' AND A.DPTOID = ' + QuotedStr(edDpto.Text);
         If edCalificacionAnt.Visible Then
            xsSQLFn := xsSQLFn
               + ' AND B.CFC_F = ' + QuotedStr(edCalificacionAnt.Text);
      End;
      xsSQLFn := xsSQLFn
         + '     GROUP BY GES.PERIODO ';
      // FIN: DPP_201207_GESCOB - F1
      result := xsSQLFn;
   End;

   Procedure fn_cargar_resumen_gestiones();
   Var
// Inicio: SPP_201303_GESCOB - variables para periodos de gestiones
      xsPeriodoActual : String;
      xsPeriodoAnterior : String;
// Fin: SPP_201303_GESCOB
   Begin

// Inicio: SPP_201303_GESCOB - captura periodos para gestiones, las gestiones seran del mismo mes que el periodo de cierre de la cartera
   xsPeriodoActual := edPeriodoAnterior.Text;

   // captura el perido inmediato inferior disponible en la base de datos
   xsSQL := 'SELECT MAX(PERIODO) MAX_PERIODO FROM CFC000 WHERE PERIODO < ' + QuotedStr(xsPeriodoActual);
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xsSQL);
   DM1.cdsQry.Open;
   xsPeriodoAnterior := DM1.cdsQry.fieldbyname('MAX_PERIODO').AsString;
// Fin: SPP_201303_GESCOB

      DM1.cdsQry.Close;
// Inicio: SPP_201303_GESCOB - modificado para usar los nuevos periodos (n-1)
//      DM1.cdsQry.DataRequest(fn_sql_universo_gestiones(edPeriodoAnterior.Text));
      DM1.cdsQry.DataRequest(fn_sql_universo_gestiones(xsPeriodoAnterior));
// Fin: SPP_201303_GESCOB
      DM1.cdsQry.Open;

      If DM1.cdsQry.RecordCount <= 0 Then
      Begin
         DM1.cdsQry.Close;
         DM1.cdsQry.DataRequest(fn_sql_universo_vacio(edPeriodoAnterior.Text));
         DM1.cdsQry.Open;
      End;
      lblResTituloAnt.caption := 'del ' + DM1.cdsQry.fieldbyname('PRIMER_DIA_PERIODO').asstring + ' al ' + DM1.cdsQry.fieldbyname('ULTIMO_DIA_PERIODO').asstring;
      lblResGesTelIntAnt.caption := DM1.FormatoNumerosEnteros(DM1.cdsQry.fieldbyname('CANT_GES_TEL_INT').asstring);
      lblResGesTelExtAnt.caption := DM1.FormatoNumerosEnteros(DM1.cdsQry.fieldbyname('CANT_GES_TEL_EXT').asstring);
      lblResGesDomIntAnt.caption := DM1.FormatoNumerosEnteros(DM1.cdsQry.fieldbyname('CANT_GES_DOM_INT').asstring);
      lblResGesDomExtAnt.caption := DM1.FormatoNumerosEnteros(DM1.cdsQry.fieldbyname('CANT_GES_DOM_EXT').asstring);
      lblResGesTotAnt.caption := DM1.FormatoNumerosEnteros(DM1.cdsQry.fieldbyname('CANT_GES_TOT').asstring);

      DM1.cdsQry.Close;
// Inicio: SPP_201303_GESCOB - modificado para usar los nuevos periodos (n)
//      DM1.cdsQry.DataRequest(fn_sql_universo_gestiones(edPeriodoActual.Text));
      DM1.cdsQry.DataRequest(fn_sql_universo_gestiones(xsPeriodoActual));
// Fin: SPP_201303_GESCOB
      DM1.cdsQry.Open;

      If DM1.cdsQry.RecordCount <= 0 Then
      Begin
         DM1.cdsQry.Close;
         DM1.cdsQry.DataRequest(fn_sql_universo_vacio(edPeriodoActual.Text));
         DM1.cdsQry.Open;
      End;

      lblResTituloAct.caption := 'del ' + DM1.cdsQry.fieldbyname('PRIMER_DIA_PERIODO').asstring + ' al ' + DM1.cdsQry.fieldbyname('ULTIMO_DIA_PERIODO').asstring;
      lblResGesTelIntAct.caption := DM1.FormatoNumerosEnteros(DM1.cdsQry.fieldbyname('CANT_GES_TEL_INT').asstring);
      lblResGesTelExtAct.caption := DM1.FormatoNumerosEnteros(DM1.cdsQry.fieldbyname('CANT_GES_TEL_EXT').asstring);
      lblResGesDomIntAct.caption := DM1.FormatoNumerosEnteros(DM1.cdsQry.fieldbyname('CANT_GES_DOM_INT').asstring);
      lblResGesDomExtAct.caption := DM1.FormatoNumerosEnteros(DM1.cdsQry.fieldbyname('CANT_GES_DOM_EXT').asstring);
      lblResGesTotAct.caption := DM1.FormatoNumerosEnteros(DM1.cdsQry.fieldbyname('CANT_GES_TOT').asstring);

   End;

   Function fn_sql_universo_gestores(wgPeriodoGestion : String) : String;
   Var
      xsSQLFn : String;
   Begin
      // INICIO: DPP_201207_GESCOB - F1
      xsSQLFn :=
         '  SELECT /*+ rule */ NVL(SUM(CASE WHEN SUBSTR(USUARIO,1,2) = ''00'' THEN 1 ELSE 0 END),0) CANT_GES_EXT '
         + '      ,NVL(SUM(CASE WHEN SUBSTR(USUARIO,1,2) <> ''00'' THEN 1 ELSE 0 END),0) CANT_GES_INT '
         + '      ,NVL(SUM(1),0) CANT_GES_TOT '
         + '  FROM (SELECT DISTINCT GES.USUARIO ';
      If edCalificacion.Text = 'X' Then
      Begin
         xsSQLFn := xsSQLFn
            + '   FROM CFC000 B, CFC000 A, GES_COB_SEG GES '
            + '  WHERE B.PERIODO = ' + QuotedStr(edPeriodoAnterior.Text)
            + '    AND ' + QuotedStr(edPeriodoActual.Text) + ' = A.PERIODO(+) '
            + '    AND B.ASOID = A.ASOID(+) '
            + '    AND ' + QuotedStr(edCalificacion.Text) + '= NVL(A.CFC_F,''X'') '
            + '    AND B.ASOID = GES.ASOID '
            + '    AND ' + QuotedStr(wgPeriodoGestion) + ' = GES.PERIODO '
            + '    AND GES.FECHA BETWEEN TRUNC(ADD_MONTHS(TO_DATE(GES.PERIODO, ''YYYYMM''), 1)) AND '
            + '        LAST_DAY(TRUNC(ADD_MONTHS(TO_DATE(GES.PERIODO, ''YYYYMM''), 1))) ';
         If edDpto.Visible Then
            xsSQLFn := xsSQLFn
               + ' AND B.DPTOID = ' + QuotedStr(edDpto.Text);
         If edCalificacionAnt.Visible Then
            xsSQLFn := xsSQLFn
               + ' AND B.CFC_F = ' + QuotedStr(edCalificacionAnt.Text);
      End
      Else
      Begin
         xsSQLFn := xsSQLFn
            + '   FROM CFC000 A, CFC000 B, GES_COB_SEG GES '
            + '  WHERE A.PERIODO = ' + QuotedStr(edPeriodoActual.Text)
            + '    AND A.CFC_F = ' + QuotedStr(edCalificacion.Text)
            + '    AND ' + QuotedStr(edPeriodoAnterior.Text) + ' = B.PERIODO(+) '
            + '    AND A.ASOID = B.ASOID(+) '
            + '    AND A.ASOID = GES.ASOID '
            + '    AND ' + QuotedStr(wgPeriodoGestion) + ' = GES.PERIODO '
            + '    AND GES.FECHA BETWEEN TRUNC(ADD_MONTHS(TO_DATE(GES.PERIODO, ''YYYYMM''), 1)) AND '
            + '        LAST_DAY(TRUNC(ADD_MONTHS(TO_DATE(GES.PERIODO, ''YYYYMM''), 1))) ';
         If edDpto.Visible Then
            xsSQLFn := xsSQLFn
               + ' AND A.DPTOID = ' + QuotedStr(edDpto.Text);
         If edCalificacionAnt.Visible Then
            xsSQLFn := xsSQLFn
               + ' AND B.CFC_F = ' + QuotedStr(edCalificacionAnt.Text);
      End;
      xsSQLFn := xsSQLFn
         + ' ) ';
      // FIN: DPP_201207_GESCOB - F1
      result := xsSQLFn;
   End;

   Procedure fn_cargar_resumen_gestores();
   Begin
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest(fn_sql_universo_gestores(edPeriodoAnterior.Text));
      DM1.cdsQry.Open;

      lblResGestoresIntAnt.caption := DM1.FormatoNumerosEnteros(DM1.cdsQry.fieldbyname('CANT_GES_INT').asstring);
      lblResGestoresExtAnt.caption := DM1.FormatoNumerosEnteros(DM1.cdsQry.fieldbyname('CANT_GES_EXT').asstring);
      lblResGestoresTotAnt.caption := DM1.FormatoNumerosEnteros(DM1.cdsQry.fieldbyname('CANT_GES_TOT').asstring);

      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest(fn_sql_universo_gestores(edPeriodoActual.Text));
      DM1.cdsQry.Open;

      lblResGestoresIntAct.caption := DM1.FormatoNumerosEnteros(DM1.cdsQry.fieldbyname('CANT_GES_INT').asstring);
      lblResGestoresExtAct.caption := DM1.FormatoNumerosEnteros(DM1.cdsQry.fieldbyname('CANT_GES_EXT').asstring);
      lblResGestoresTotAct.caption := DM1.FormatoNumerosEnteros(DM1.cdsQry.fieldbyname('CANT_GES_TOT').asstring);

   End;

Begin
   Screen.Cursor := crHourGlass;
   //cargar detalle por asociado
   // INICIO: DPP_201207_GESCOB - F1
   xsSQL :=
      '  SELECT /*+ rule */ NVL(CFC.DPTOID,''99'') DPTOID, CFC.ASOID, CFC.ASOAPENOM, CFC.CFC_F_ACT, '
      + '       CFC.CFC_F_ACT_DES, CFC.CFC_F_ANT, CFC.SALVEN_ACT, '
      + '       CFC.CFC_F_ANT_DES, CFC.SALVEN_ANT, CFC.CANT_GES_ACT, '
      + '       CFC.CANT_GES_ANT, '
      + '       NVL(DPTO.DPTODES,''~SIN DEPARTAMENTO~'') DEPARTAMENTO '
      + '  FROM (SELECT NVL(A.CFC_F,''X'') CFC_F_ACT, '
      + '               CASE WHEN NVL(B.CFC_F, ''Y'') = ''0'' THEN ''NOR'' '
      + '                    WHEN NVL(B.CFC_F, ''Y'') = ''A'' THEN ''CPP'' '
      + '                    WHEN NVL(B.CFC_F, ''Y'') = ''B'' THEN ''DEF'' '
      + '                    WHEN NVL(B.CFC_F, ''Y'') = ''C'' THEN ''DUD'' '
      + '                    WHEN NVL(B.CFC_F, ''Y'') = ''D'' THEN ''PER'' '
      + '                    WHEN NVL(B.CFC_F, ''Y'') = ''X'' THEN ''CANCELADO'' '
      + '                    WHEN NVL(B.CFC_F, ''Y'') = ''Y'' THEN ''NUEVO'' '
      + '                END CFC_F_ANT_DES, '
      + '               NVL(B.CFC_F, ''Y'') CFC_F_ANT, '
      + '               NVL(A.SALVEN, 0) SALVEN_ACT, '
      + '               NVL(B.SALVEN, 0) SALVEN_ANT '
      + '              ,NVL(CANT_GES_ACT,0) CANT_GES_ACT '
      + '              ,NVL(CANT_GES_ANT,0) CANT_GES_ANT, ';
   If edCalificacion.Text = 'X' Then
   Begin
      xsSQL := xsSQL
         + '               CASE WHEN NVL(A.CFC_F,''X'') = ''0'' THEN ''NOR'' '
         + '                    WHEN NVL(A.CFC_F,''X'') = ''A'' THEN ''CPP'' '
         + '                    WHEN NVL(A.CFC_F,''X'') = ''B'' THEN ''DEF'' '
         + '                    WHEN NVL(A.CFC_F,''X'') = ''C'' THEN ''DUD'' '
         + '                    WHEN NVL(A.CFC_F,''X'') = ''D'' THEN ''PER'' '
         + '                    WHEN NVL(A.CFC_F,''X'') = ''X'' THEN ''CANCELADO'' '
         + '                    WHEN NVL(A.CFC_F,''X'') = ''Y'' THEN ''NUEVO'' '
         + '                END CFC_F_ACT_DES, '
         + '               B.DPTOID, B.ASOID, B.ASOAPENOM '
         + '          FROM CFC000 B, CFC000 A '
         + '              ,(WITH CTE AS '
         + '                 (SELECT PERIODO, ASOID, '
         + '                         SUM(1) OVER(PARTITION BY PERIODO, ASOID ORDER BY PERIODO, ASOID) CANT_GES, '
         + '                         ROW_NUMBER() OVER(PARTITION BY PERIODO, ASOID ORDER BY PERIODO, ASOID) RN '
         + '                    FROM GES_COB_SEG '
         + '                   WHERE PERIODO <= ' + QuotedStr(edPeriodoActual.Text)
         + '                     AND PERIODO >= ' + QuotedStr(edPeriodoAnterior.Text)
         + '                     AND FECHA BETWEEN TRUNC(ADD_MONTHS(TO_DATE(PERIODO, ''YYYYMM''), 1)) '
         + '                                   AND LAST_DAY(TRUNC(ADD_MONTHS(TO_DATE(PERIODO, ''YYYYMM''), 1))) '
         + '                 ) '
         + '                SELECT ASOID '
         + '                      ,SUM(CASE WHEN PERIODO = ' + QuotedStr(edPeriodoActual.Text) + ' THEN CANT_GES ELSE 0 END) CANT_GES_ACT '
         + '                      ,SUM(CASE WHEN PERIODO = ' + QuotedStr(edPeriodoAnterior.Text) + ' THEN CANT_GES ELSE 0 END) CANT_GES_ANT '
         + '                  FROM CTE '
         + '                 WHERE RN = 1 '
         + '                 GROUP BY ASOID '
         + '               ) GESTIONES '
         + '         WHERE B.PERIODO = ' + QuotedStr(edPeriodoAnterior.Text)
         + '           AND B.ASOID = GESTIONES.ASOID(+) '
         + '           AND ' + QuotedStr(edPeriodoActual.Text) + ' = A.PERIODO(+) '
         + '           AND B.ASOID = A.ASOID(+) '
         + '           AND ' + QuotedStr(edCalificacion.Text) + '= NVL(A.CFC_F,''X'')';
      If edDpto.Visible Then
         xsSQL := xsSQL
            + '        AND B.DPTOID = ' + QuotedStr(edDpto.Text);
      If edCalificacionAnt.Visible Then
         xsSQL := xsSQL
            + '        AND NVL(B.CFC_F,''Y'') = ' + QuotedStr(edCalificacionAnt.Text);
   End
   Else
   Begin
      xsSQL := xsSQL
         + '               CASE WHEN A.CFC_F = ''0'' THEN ''NOR'' '
         + '                    WHEN A.CFC_F = ''A'' THEN ''CPP'' '
         + '                    WHEN A.CFC_F = ''B'' THEN ''DEF'' '
         + '                    WHEN A.CFC_F = ''C'' THEN ''DUD'' '
         + '                    WHEN A.CFC_F = ''D'' THEN ''PER'' '
         + '                    WHEN A.CFC_F = ''X'' THEN ''CANCELADO'' '
         + '                    WHEN A.CFC_F = ''Y'' THEN ''NUEVO'' '
         + '                END CFC_F_ACT_DES, '
         + '               A.DPTOID, A.ASOID, A.ASOAPENOM '
         + '          FROM CFC000 A, CFC000 B '
         + '              ,(WITH CTE AS '
         + '                 (SELECT PERIODO, ASOID, '
         + '                         SUM(1) OVER(PARTITION BY PERIODO, ASOID ORDER BY PERIODO, ASOID) CANT_GES, '
         + '                         ROW_NUMBER() OVER(PARTITION BY PERIODO, ASOID ORDER BY PERIODO, ASOID) RN '
         + '                    FROM GES_COB_SEG '
         + '                   WHERE PERIODO <= ' + QuotedStr(edPeriodoActual.Text)
         + '                     AND PERIODO >= ' + QuotedStr(edPeriodoAnterior.Text)
         + '                     AND FECHA BETWEEN TRUNC(ADD_MONTHS(TO_DATE(PERIODO, ''YYYYMM''), 1)) '
         + '                                   AND LAST_DAY(TRUNC(ADD_MONTHS(TO_DATE(PERIODO, ''YYYYMM''), 1))) '
         + '                 ) '
         + '                SELECT ASOID '
         + '                      ,SUM(CASE WHEN PERIODO = ' + QuotedStr(edPeriodoActual.Text) + ' THEN CANT_GES ELSE 0 END) CANT_GES_ACT '
         + '                      ,SUM(CASE WHEN PERIODO = ' + QuotedStr(edPeriodoAnterior.Text) + ' THEN CANT_GES ELSE 0 END) CANT_GES_ANT '
         + '                  FROM CTE '
         + '                 WHERE RN = 1 '
         + '                 GROUP BY ASOID '
         + '               ) GESTIONES '
         + '         WHERE A.PERIODO = ' + QuotedStr(edPeriodoActual.Text)
         + '           AND NVL(A.CFC_F,''X'') = ' + QuotedStr(edCalificacion.Text)
         + '           AND A.ASOID = GESTIONES.ASOID(+) ';
      If edDpto.Visible Then
         xsSQL := xsSQL
            + '        AND A.DPTOID = ' + QuotedStr(edDpto.Text);
      xsSQL := xsSQL
         + '           AND ' + QuotedStr(edPeriodoAnterior.Text) + ' = B.PERIODO(+) '
         + '           AND A.ASOID = B.ASOID(+) ';
      If edCalificacionAnt.Visible Then
         xsSQL := xsSQL
            + '        AND NVL(B.CFC_F,''Y'') = ' + QuotedStr(edCalificacionAnt.Text);
   End;

   xsSQL := xsSQL
      + '       )CFC, TGE158 DPTO'
      + ' WHERE CFC.DPTOID = DPTO.DPTOID(+) '
      + ' ORDER BY CFC.DPTOID, CFC.ASOAPENOM ';
   // FIN: DPP_201207_GESCOB - F1
   DM1.cdsQry4.Close;
   DM1.cdsQry4.DataRequest(xsSQL);
   DM1.cdsQry4.Open;
   dbgResultados01.DataSource := DM1.dsQry4;
   dbgResultados01.GroupFieldName := 'DEPARTAMENTO';

   dbgResultados01.Selected.Clear;
   dbgResultados01.Selected.Add('DEPARTAMENTO'#9'18'#9'DEPARTAMENTO');
   dbgResultados01.Selected.Add('ASOAPENOM'#9'40'#9'ASOCIADO');
   dbgResultados01.Selected.Add('CFC_F_ACT_DES'#9'8'#9'CALIF'#9'F'#9'ACTUAL');
   dbgResultados01.Selected.Add('CANT_GES_ACT'#9'8'#9'CANT.GES'#9'F'#9'ACTUAL');
   dbgResultados01.Selected.Add('SALVEN_ACT'#9'12'#9'SAL.VEN'#9'F'#9'ACTUAL');
   dbgResultados01.Selected.Add('CFC_F_ANT_DES'#9'8'#9'CALIF'#9'F'#9'ANTERIOR');
   dbgResultados01.Selected.Add('CANT_GES_ANT'#9'8'#9'CANT.GES'#9'F'#9'ANTERIOR');
   dbgResultados01.Selected.Add('SALVEN_ANT'#9'12'#9'SAL.VEN'#9'F'#9'ANTERIOR');
   dbgResultados01.ApplySelected;

   TNumericField(DM1.cdsQry4.fieldbyname('CANT_GES_ACT')).DisplayFormat := '###,###';
   TNumericField(DM1.cdsQry4.fieldbyname('CANT_GES_ANT')).DisplayFormat := '###,###';
   TNumericField(DM1.cdsQry4.fieldbyname('SALVEN_ACT')).DisplayFormat := '###,###.#0';
   TNumericField(DM1.cdsQry4.fieldbyname('SALVEN_ANT')).DisplayFormat := '###,###.#0';

   xnCANT_GES_ACT := 0;
   xnCANT_GES_ANT := 0;
   xnSALVEN_ACT := 0;
   xnSALVEN_ANT := 0;
   xnCantAso := 0;
   DM1.cdsQry4.First;
   While Not DM1.cdsQry4.Eof Do
   Begin
      xnCANT_GES_ACT := xnCANT_GES_ACT + DM1.cdsQry4.fieldbyname('CANT_GES_ACT').value;
      xnCANT_GES_ANT := xnCANT_GES_ANT + DM1.cdsQry4.fieldbyname('CANT_GES_ANT').value;
      xnSALVEN_ACT := xnSALVEN_ACT + DM1.cdsQry4.fieldbyname('SALVEN_ACT').value;
      xnSALVEN_ANT := xnSALVEN_ANT + DM1.cdsQry4.fieldbyname('SALVEN_ANT').value;
      xnCantAso := xnCantAso + 1;
      DM1.cdsQry4.Next;
   End;
   DM1.cdsQry4.First;

   dbgResultados01.ColumnByName('DEPARTAMENTO').FooterValue := 'Total : ';
   dbgResultados01.ColumnByName('ASOAPENOM').FooterValue := FloatToStrF(xnCantAso, ffNumber, 15, 0) + ' Asociados';
   dbgResultados01.ColumnByName('CANT_GES_ACT').FooterValue := FloatToStrF(xnCANT_GES_ACT, ffNumber, 15, 0);
   //dbgResultados01.ColumnByName('CANT_GES_ACT').FooterValue := FloatToStrF(xnCANT_GES_ACT, ffNumber, 15, 0);
   dbgResultados01.ColumnByName('CANT_GES_ANT').FooterValue := FloatToStrF(xnCANT_GES_ANT, ffNumber, 15, 0);
   dbgResultados01.ColumnByName('SALVEN_ACT').FooterValue := FloatToStrF(xnSALVEN_ACT, ffNumber, 15, 2);
   dbgResultados01.ColumnByName('SALVEN_ANT').FooterValue := FloatToStrF(xnSALVEN_ANT, ffNumber, 15, 2);

   shCaidas.Brush.Color := clCaida;
   shPermanencias.Brush.Color := clPermanencia;
   shMejoras.Brush.Color := clMejora;
   fn_cargar_resumen_gestiones();
   fn_cargar_resumen_gestores();
   Screen.Cursor := crDefault;
End;

//******************************************************************************
// Nombre : dbgResultados01DrawDataCell
// Descripcion :  pintar celdas de la grilla
//******************************************************************************

Procedure TFCompararTrasladosAso.dbgResultados01DrawDataCell(
   Sender : TObject; Const Rect : TRect; Field : TField;
   State : TGridDrawState);
Begin
   dbgResultados01.Canvas.Font.Color := clBlack;
   If (gdFocused In State) Then
   Begin
      dbgResultados01.Canvas.Brush.Color := clNavy;
      dbgResultados01.Canvas.Font.Color := clWhite;
      dbgResultados01.DefaultDrawDataCell(Rect, Field, State);
   End
   Else
   Begin
      If (Field.FieldName = 'ASOAPENOM')
         Or (Field.FieldName = 'CFC_F_ACT_DES')
         Or (Field.FieldName = 'SALVEN_ACT')
         Or (Field.FieldName = 'CANT_GES_ACT')
         Or (Field.FieldName = 'CFC_F_ANT_DES')
         Or (Field.FieldName = 'SALVEN_ANT')
         Or (Field.FieldName = 'CANT_GES_ANT') Then
      Begin
         If (DM1.cdsQry4.FieldByName('CFC_F_ACT').AsString = '0') Then
         Begin
            If (DM1.cdsQry4.FieldByName('CFC_F_ANT').AsString = '0') Then
               dbgResultados01.Canvas.Brush.Color := clPermanencia
            Else
               If (DM1.cdsQry4.FieldByName('CFC_F_ANT').AsString = 'A') Then
                  dbgResultados01.Canvas.Brush.Color := clMejora
               Else
                  If (DM1.cdsQry4.FieldByName('CFC_F_ANT').AsString = 'B') Then
                     dbgResultados01.Canvas.Brush.Color := clMejora
                  Else
                     If (DM1.cdsQry4.FieldByName('CFC_F_ANT').AsString = 'C') Then
                        dbgResultados01.Canvas.Brush.Color := clMejora
                     Else
                        If (DM1.cdsQry4.FieldByName('CFC_F_ANT').AsString = 'D') Then
                           dbgResultados01.Canvas.Brush.Color := clMejora
                        Else
                           If (DM1.cdsQry4.FieldByName('CFC_F_ANT').AsString = 'X') Then
                              dbgResultados01.Canvas.Brush.Color := clWhite
                           Else
                              If (DM1.cdsQry4.FieldByName('CFC_F_ANT').AsString = 'Y') Then
                                 dbgResultados01.Canvas.Brush.Color := clWhite;

         End;
         If (DM1.cdsQry4.FieldByName('CFC_F_ACT').AsString = 'A') Then
         Begin
            If (DM1.cdsQry4.FieldByName('CFC_F_ANT').AsString = '0') Then
               dbgResultados01.Canvas.Brush.Color := clCaida
            Else
               If (DM1.cdsQry4.FieldByName('CFC_F_ANT').AsString = 'A') Then
                  dbgResultados01.Canvas.Brush.Color := clPermanencia
               Else
                  If (DM1.cdsQry4.FieldByName('CFC_F_ANT').AsString = 'B') Then
                     dbgResultados01.Canvas.Brush.Color := clMejora
                  Else
                     If (DM1.cdsQry4.FieldByName('CFC_F_ANT').AsString = 'C') Then
                        dbgResultados01.Canvas.Brush.Color := clMejora
                     Else
                        If (DM1.cdsQry4.FieldByName('CFC_F_ANT').AsString = 'D') Then
                           dbgResultados01.Canvas.Brush.Color := clMejora
                        Else
                           If (DM1.cdsQry4.FieldByName('CFC_F_ANT').AsString = 'X') Then
                              dbgResultados01.Canvas.Brush.Color := clWhite
                           Else
                              If (DM1.cdsQry4.FieldByName('CFC_F_ANT').AsString = 'Y') Then
                                 dbgResultados01.Canvas.Brush.Color := clWhite;
         End;
         If (DM1.cdsQry4.FieldByName('CFC_F_ACT').AsString = 'B') Then
         Begin
            If (DM1.cdsQry4.FieldByName('CFC_F_ANT').AsString = '0') Then
               dbgResultados01.Canvas.Brush.Color := clCaida
            Else
               If (DM1.cdsQry4.FieldByName('CFC_F_ANT').AsString = 'A') Then
                  dbgResultados01.Canvas.Brush.Color := clCaida
               Else
                  If (DM1.cdsQry4.FieldByName('CFC_F_ANT').AsString = 'B') Then
                     dbgResultados01.Canvas.Brush.Color := clPermanencia
                  Else
                     If (DM1.cdsQry4.FieldByName('CFC_F_ANT').AsString = 'C') Then
                        dbgResultados01.Canvas.Brush.Color := clMejora
                     Else
                        If (DM1.cdsQry4.FieldByName('CFC_F_ANT').AsString = 'D') Then
                           dbgResultados01.Canvas.Brush.Color := clMejora
                        Else
                           If (DM1.cdsQry4.FieldByName('CFC_F_ANT').AsString = 'X') Then
                              dbgResultados01.Canvas.Brush.Color := clWhite
                           Else
                              If (DM1.cdsQry4.FieldByName('CFC_F_ANT').AsString = 'Y') Then
                                 dbgResultados01.Canvas.Brush.Color := clWhite;
         End;
         If (DM1.cdsQry4.FieldByName('CFC_F_ACT').AsString = 'C') Then
         Begin
            If (DM1.cdsQry4.FieldByName('CFC_F_ANT').AsString = '0') Then
               dbgResultados01.Canvas.Brush.Color := clCaida
            Else
               If (DM1.cdsQry4.FieldByName('CFC_F_ANT').AsString = 'A') Then
                  dbgResultados01.Canvas.Brush.Color := clCaida
               Else
                  If (DM1.cdsQry4.FieldByName('CFC_F_ANT').AsString = 'B') Then
                     dbgResultados01.Canvas.Brush.Color := clCaida
                  Else
                     If (DM1.cdsQry4.FieldByName('CFC_F_ANT').AsString = 'C') Then
                        dbgResultados01.Canvas.Brush.Color := clPermanencia
                     Else
                        If (DM1.cdsQry4.FieldByName('CFC_F_ANT').AsString = 'D') Then
                           dbgResultados01.Canvas.Brush.Color := clMejora
                        Else
                           If (DM1.cdsQry4.FieldByName('CFC_F_ANT').AsString = 'X') Then
                              dbgResultados01.Canvas.Brush.Color := clWhite
                           Else
                              If (DM1.cdsQry4.FieldByName('CFC_F_ANT').AsString = 'Y') Then
                                 dbgResultados01.Canvas.Brush.Color := clWhite;
         End;
         If (DM1.cdsQry4.FieldByName('CFC_F_ACT').AsString = 'D') Then
         Begin
            If (DM1.cdsQry4.FieldByName('CFC_F_ANT').AsString = '0') Then
               dbgResultados01.Canvas.Brush.Color := clCaida
            Else
               If (DM1.cdsQry4.FieldByName('CFC_F_ANT').AsString = 'A') Then
                  dbgResultados01.Canvas.Brush.Color := clCaida
               Else
                  If (DM1.cdsQry4.FieldByName('CFC_F_ANT').AsString = 'B') Then
                     dbgResultados01.Canvas.Brush.Color := clCaida
                  Else
                     If (DM1.cdsQry4.FieldByName('CFC_F_ANT').AsString = 'C') Then
                        dbgResultados01.Canvas.Brush.Color := clCaida
                     Else
                        If (DM1.cdsQry4.FieldByName('CFC_F_ANT').AsString = 'D') Then
                           dbgResultados01.Canvas.Brush.Color := clPermanencia
                        Else
                           If (DM1.cdsQry4.FieldByName('CFC_F_ANT').AsString = 'X') Then
                              dbgResultados01.Canvas.Brush.Color := clWhite
                           Else
                              If (DM1.cdsQry4.FieldByName('CFC_F_ANT').AsString = 'Y') Then
                                 dbgResultados01.Canvas.Brush.Color := clWhite;
         End;
         dbgResultados01.DefaultDrawDataCell(Rect, Field, State);
      End;
   End;
End;

//******************************************************************************
// Nombre : dbgResultados01DblClick
// Descripcion :  mostar gestiones de un asociado
//******************************************************************************

Procedure TFCompararTrasladosAso.dbgResultados01DblClick(Sender : TObject);
Begin
   If (DM1.cdsQry4.State <> dsInactive) And (DM1.cdsQry4.RecordCount > 0) Then
   Begin
      FCompararTrasladosGes := TFCompararTrasladosGes.create(self);
      Try
         FCompararTrasladosGes.edPeriodoActual.Text := edPeriodoActual.Text;
         FCompararTrasladosGes.edPeriodoAnterior.Text := edPeriodoAnterior.Text;
         FCompararTrasladosGes.edCalificacion.Text := edCalificacion.Text;
         FCompararTrasladosGes.edCalificacionDescripcion.Text := edCalificacionDescripcion.Text;
         FCompararTrasladosGes.edDpto.Text := DM1.cdsQry4.fieldbyname('DPTOID').asstring;
         FCompararTrasladosGes.edDptoDes.Text := DM1.cdsQry4.fieldbyname('DEPARTAMENTO').asstring;
         FCompararTrasladosGes.edAsoid.Text := DM1.cdsQry4.fieldbyname('ASOID').asstring;
         FCompararTrasladosGes.edAsociado.Text := DM1.cdsQry4.fieldbyname('ASOAPENOM').asstring;
         FCompararTrasladosGes.ShowModal();
      Finally
         FCompararTrasladosGes.Free;
      End;
   End;
End;

//******************************************************************************
// Nombre : btnSalirClick
// Descripcion :  cerrar formulario
//******************************************************************************

Procedure TFCompararTrasladosAso.btnSalirClick(Sender : TObject);
Begin
   Close;
End;

//******************************************************************************
// Nombre : btnExportarClick
// Descripcion :  exportar a excel
//******************************************************************************

Procedure TFCompararTrasladosAso.btnExportarClick(Sender : TObject);
Begin
   Screen.Cursor := crHourGlass;
   Try
      With dbgResultados01, dbgResultados01.ExportOptions Do
      Begin
         ExportType := wwgetSYLK;
         FileName := 'COMTRASASO.slk';
         DM1.OpcionesExportExcel(dbgResultados01.ExportOptions);
         dbgResultados01.ExportOptions.TitleName := 'ComTrasAso';
         Save;
         If Not (esoClipboard In Options) Then
            ShellExecute(Handle, 'Open', PChar(dbgResultados01.exportoptions.Filename), Nil, Nil, sw_shownormal);
      End;
      Screen.Cursor := crDefault;
   Except
      Screen.Cursor := crDefault;
      showmessage('No se puede grabar el Archivo ' + chr(13) + 'Cierre todos los Archivos en Excel y vuelva a intentarlo');
   End;
End;

//******************************************************************************
// Nombre : btnImprimirClick
// Descripcion :  imprimir reporte
//******************************************************************************

Procedure TFCompararTrasladosAso.btnImprimirClick(Sender : TObject);

   Procedure fn_colocar_imagen_reporte();
   Begin
      imgCapturarPanel.Height := pnlResumen.Height;
      imgCapturarPanel.Width := pnlResumen.Width;
      imgCapturarPanel.Canvas.CopyRect(imgCapturarPanel.ClientRect, TPanelGrafico(pnlResumen).Canvas, pnlResumen.ClientRect);
      wgPPImage.Picture := imgCapturarPanel.Picture;
   End;
Begin
   dbpReporte.DataSource := DM1.dsQry4;
   fn_colocar_imagen_reporte();
   ppLblTit.Caption := 'COMPARAR TRASLADOS : POR ASOCIADOS EN LOS PERIODOS ' + edPeriodoActual.Text + ' - ' + edPeriodoAnterior.Text;
   ppLblTit01.Caption := ppLblTit.Caption;
   ppLblUser.Caption := 'Emitido Por :  ' + Trim(DM1.CrgDescrip('USERID=' + QuotedStr(Trim(DM1.wUsuario)), 'TGE006', 'USERNOM'));
   repReporte.Print;
   //desReporte.Show; // para editar en tiempo de ejecucion
End;

(******************************************************************************)

Procedure TFCompararTrasladosAso.pnlResumenDblClick(Sender : TObject);
Var
   xxFrm : TFCompararTrasladosTodasGes;
   xsSQL : String;
Begin
   If (DM1.cdsQry4.State <> dsInactive) And (DM1.cdsQry4.RecordCount > 0) Then
   Begin
      xxFrm := TFCompararTrasladosTodasGes.create(self);
      Try
         xxFrm.edPeriodoActual.Text := edPeriodoActual.Text;
         xxFrm.edPeriodoAnterior.Text := edPeriodoAnterior.Text;
         xxFrm.edCalificacion.Text := edCalificacion.Text;
         xxFrm.edCalificacionDescripcion.Text := edCalificacionDescripcion.Text;
         xxFrm.edCalificacionAnt.Text := edCalificacionAnt.Text;
         xxFrm.edCalificacionDescripcionAnt.Text := edCalificacionDescripcionAnt.Text;
         xxFrm.edDpto.Text := edDpto.Text;
         xxFrm.edDptoDes.Text := edDptoDes.Text;

         xsSQL :=
            ' SELECT TO_CHAR(ADD_MONTHS(TO_DATE(' + QuotedStr(edPeriodoAnterior.Text) + ', ''YYYYMM''), 1), ''DD/MM/YYYY'') PRIMER_DIA_PERIODO, '
            + '      TO_CHAR(LAST_DAY(ADD_MONTHS(TO_DATE(' + QuotedStr(edPeriodoActual.Text) + ', ''YYYYMM''), 1)), ''DD/MM/YYYY'') ULTIMO_DIA_PERIODO '
            + ' FROM DUAL';
         DM1.cdsQry.Close;
         DM1.cdsQry.DataRequest(xsSQL);
         DM1.cdsQry.Open;

         xxFrm.edTituloResumen.Text := lblResTitulo.Caption + ' del ' + DM1.cdsQry.fieldbyname('PRIMER_DIA_PERIODO').asstring + ' al ' + DM1.cdsQry.fieldbyname('ULTIMO_DIA_PERIODO').asstring;

         xxFrm.lblCalificaionAnt.Visible := lblCalificaionAnt.Visible;
         xxFrm.edCalificacionAnt.Visible := edCalificacionAnt.Visible;
         xxFrm.edCalificacionDescripcionAnt.Visible := edCalificacionDescripcionAnt.Visible;
         xxFrm.lblDepartamento.Visible := lblDepartamento.Visible;
         xxFrm.edDpto.Visible := edDpto.Visible;
         xxFrm.edDptoDes.Visible := edDptoDes.Visible;

         xxFrm.ShowModal();
      Finally
         xxFrm.Free;
      End;
   End;

End;
(******************************************************************************)
End.
