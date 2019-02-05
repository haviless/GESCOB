// Inicio Uso Estándares: 01/08/2011
// Unidad : Gestión de Cobranzas
// Formulario : FPrincipal
// Fecha de Creación :
// Autor : Equipo de Sistemas
// Objetivo : Menu Principal
// Actualizaciones:
// HPC_201107_GESCOB 09/05/2011 Cambiar de Servidor de aplicaciones
// HPP_201112_GESCOB 06/06/2011 Mejoras Internas del Sistema (F4)
// HPC_201117_GESCOB 08/08/2011 Crear Reporte de Gestiones Realizadas(F1,F4)
// HPC_201119_GESCOB 19/09/2011 Acuerdo de Atencion 2011-02-V2.0
// HPC_201120_GESCOB 23/11/2011 reporte de direcciones y telefonos de centrales de riesgo
// HPC_201120_GESCOB 28/11/2011 reporte de indicadores de efectividad a nivel macro
// HPC_201121_GESCOB 20/12/2011 Indicadores de Control de Campañas
// HPC_201201_GESCOB 09/01/2012 Control de Metas por Gestor
// HPC_201203_GESCOB 03/02/2012 crear nivel 0 para consultas
// HPC_201203_GESCOB 13/02/2012 reporte de cantidad de asignados
// HPC_201203_GESCOB 14/02/2012 Resumen de Asignacion por Gestor
// HPC_201204_GESCOB 20/02/2012 permitir el acceso al Reporte de Gestiones Realizadas a los usuarios de nivel 1
// HPC_201205_GESCOB 19/07/2012 agregar cambios al menu
// DPP_201205_GESCOB: Pase a producción a partir de los pases HPC_201205 y HPC_201206
// HPC_201207_GESCOB - F2 12/09/2012 controlar el error que se muestra al salir de la aplicacion - aparce en forma ocacional
// DPP_201206_GESCOB: Pase a producción a partir de los pases HPC_201207
// HPC_201209_GESCOB(F3) 22/10/2012 IMPLEMENTAR NEGOCIACION Y COMPROMISO DE PAGO
// HPC_201212_GESCOB 14/12/2012 Reportes por Gestor
// HPC_201305_GESCOB: F4 04/06/2013 Se agregó variable para formulario "Alertas de Compromisos(GES555)"
// SPP_201305_GESCOB: Se realiza el pase a producción a partir del HPC_201305_GESCOB
// SPP_201401_GESCOB: Importacion masiva interna y Mejoras del proceso de priorizacion
// SPP_201401_GESCOB: Se realiza el pase a producción a partir del HPC_201401_GESCOB
// HPC_201402_GESCOB: Re-Definicion de la emision de cartas a deudores (1.7)
// SPP_201402_GESCOB: Se realiza el pase a producción a partir del HPC_201402_GESCOB
// HPC_201403_GESCOB: Distribución y Asignación de Cartera
//                        Registro de incidencias durante el periodo de gestión(2.1)
//                        Impacto de la gestión de cobranzas (saldos vencidos y contención del saldo total)(2.2)
//                        Histórico de ingresos por contacto efectivo(2.3)
//                        Cuadros comparativos para análisis(2.4)
// SPP_201404_GESCOB: Se realiza el pase a producción a partir del HPC_201403_GESCOB
// HPC_201501_GESCOB: mejoras al proceso depriorizacion de inicio de mes
// HPC_201502_GESCOB: automatizar la importacion de las asignaciones y gestiones
// HPC_201504_GESCOB : Liberar Deudores en forma masiva y Mantenimiento de Reportes Semanales / Mensuales
// HPC_201601_GESCOB : Mantenimiento de Reportes de FSC EC
// GESCOB_201901_HPC : Cambio de Versión

Unit GES001;
Interface

Uses
   Windows, Messages, SysUtils, Classes, fcLabel, StdCtrls,
   Controls, ExtCtrls, Buttons, ComCtrls, ToolWin, Forms, wwDBigrd, DB, dialogs, ppCtrls,
   DBCtrls, IniFiles, Grids, DBGrids, Wwdbgrid, Graphics,
   Mask, ppBands, jpeg, ppStrtch, ppMemo, ppPrnabl, ppClass, ppCache,
   ppComm, ppRelatv, ppProd, ppReport, wwdbedit, wwclient, Wwdatsrc;

Type
   TFPrincipal = Class(TForm)
      clbPrincipal : TCoolBar;
      tlbPrincipal : TToolBar;
      Z1sbReglas : TSpeedButton;
      Z1sbReportes : TSpeedButton;
      Z1sbSalida : TSpeedButton;
      pnlReferencias : TPanel;
      pnlProcesos : TPanel;
      Z1sbProcesos : TSpeedButton;
      lblVersion : TLabel;
      Z1sbCamPassw : TSpeedButton;
      Image1 : TImage;
      fcLabel3 : TfcLabel;
      StatusBar1 : TStatusBar;
      SpdCtrExt : TSpeedButton;
      spdBitGesCon : TSpeedButton;
      BitTipGest : TSpeedButton;
      fcLabel1 : TfcLabel;
      BitGestores : TSpeedButton;
      BitParGest : TSpeedButton;
      BitDisCar : TSpeedButton;
      Shape1 : TShape;
      pnlReportes : TPanel;
      rpCartasLoteC1 : TppReport;
      ppHeaderBand2 : TppHeaderBand;
      ppLabel15 : TppLabel;
      ppLabel16 : TppLabel;
      ppLabel17 : TppLabel;
      ppLabel18 : TppLabel;
      ppLabel19 : TppLabel;
      ppLabel20 : TppLabel;
      ppLabel21 : TppLabel;
      ppLabel22 : TppLabel;
      ppLabel23 : TppLabel;
      ppLabel24 : TppLabel;
      ppShape2 : TppShape;
      ppLabel25 : TppLabel;
      ppLabel26 : TppLabel;
      ppLabel27 : TppLabel;
      lblFecha01C1 : TppLabel;
      lblAsoApenom01C1 : TppLabel;
      lblAsodir01C1 : TppLabel;
      lblDistrito01C1 : TppLabel;
      lblProvincia01C1 : TppLabel;
      lblDpto01C1 : TppLabel;
      ppDetailBand2 : TppDetailBand;
      ppLabel28 : TppLabel;
      ppMemo4 : TppMemo;
      ppMemo5 : TppMemo;
      ppMemo6 : TppMemo;
      ppImage1 : TppImage;
      ppFooterBand2 : TppFooterBand;
      ppSummaryBand2 : TppSummaryBand;
      rpCartasC1 : TppReport;
      ppHeaderBand1 : TppHeaderBand;
      ppLabel1 : TppLabel;
      ppLabel2 : TppLabel;
      ppLabel3 : TppLabel;
      ppLabel4 : TppLabel;
      ppLabel5 : TppLabel;
      ppLabel6 : TppLabel;
      ppLabel7 : TppLabel;
      ppLabel8 : TppLabel;
      ppLabel9 : TppLabel;
      ppLabel10 : TppLabel;
      ppShape1 : TppShape;
      ppLabel11 : TppLabel;
      ppLabel12 : TppLabel;
      ppLabel13 : TppLabel;
      lblFechaC1 : TppLabel;
      lblAsoApenomC1 : TppLabel;
      lblAsodirC1 : TppLabel;
      lblDistritoC1 : TppLabel;
      lblProvinciaC1 : TppLabel;
      lblDptoC1 : TppLabel;
      ppDetailBand1 : TppDetailBand;
      ppLabel14 : TppLabel;
      ppMemo1 : TppMemo;
      ppMemo3 : TppMemo;
      ppMemo2 : TppMemo;
      ppImage2 : TppImage;
      ppFooterBand1 : TppFooterBand;
      ppSummaryBand1 : TppSummaryBand;
      SpeedButton2 : TSpeedButton;
      SpeedButton3 : TSpeedButton;
      bitGestorDpto : TSpeedButton;
      SpeedButton7 : TSpeedButton;
      SpeedButton8 : TSpeedButton;
      SpeedButton9 : TSpeedButton;
      spdGesCobCatRiesgo : TSpeedButton;
      gbPruebas : TGroupBox;
      lblTest : TLabel;
      txtUsuario : TEdit;
      btnCambiar : TButton;
      spdRptIngMen : TSpeedButton;
      spdRptTERPCRE : TSpeedButton;
      spdRptAsoCenEdu : TSpeedButton;
      btnRepGesRealizada : TSpeedButton;
      btnProProRepBas : TSpeedButton;
      btnComCat : TSpeedButton;
      SpeedButton1 : TSpeedButton;
      btnDirTelCenRie : TSpeedButton;
      btnControlCampanhas : TSpeedButton;
      btnConMetGes : TSpeedButton;
      btnCantidadAsignados : TSpeedButton;
      btnResAsigGestor : TSpeedButton;
      btnRepHojRut : TSpeedButton;
      btnRepAsigCar : TSpeedButton;
      btnAsigOfiPer : TSpeedButton;
      btnAlertaCompromisos : TSpeedButton;
      btnTiposZonas : TSpeedButton;
      SpeedButton4: TSpeedButton;
      // INICIO : SPP_201401_GESCOB
      spdSegControl: TSpeedButton;
      // INICIO : SPP_201402_GESCOB
      sbControlarImpresionCartas: TSpeedButton;
      sbMantenimientoOficinas: TSpeedButton;
      // FIN : SPP_201402_GESCOB
      // FIN : SPP_201401_GESCOB
      // INICIO : SPP_201404_GESCOB
      spbDistribucionCartera: TSpeedButton;
      sbTiposIncidentes: TSpeedButton;
      sbRegistroIncidencias: TSpeedButton;
      spbResultadosGestion: TSpeedButton;
      spbHistoricoIngresos: TSpeedButton;
      spbCuadrosComparativosAnalisis: TSpeedButton;
      // FIN : SPP_201404_GESCOB
	  // INICIO : HPC_201502_GESCOB
      sbImportarAsignacionesInternas: TSpeedButton;
      sbImportarGestionesInternas: TSpeedButton;
      sbCambiarAsignacionInterna: TSpeedButton;
    sbImportarGestionesExternas: TSpeedButton;
      // INICIO HPC_201504_GESCOB
      btnLiberarAsignaciones: TSpeedButton;
      btnMantReportesSemanalMensual: TSpeedButton;
      // INICIO HPC_201601_GESCOB
	  // DECLARACION DE VARIABLES
      btnMantenimientoComisiones: TSpeedButton;
      btnMantReportesFSCEC: TSpeedButton;
      // FIN HPC_201601_GESCOB
      // FIN HPC_201504_GESCOB
      // FIN : HPC_201502_GESCOB
      Procedure FormShow(Sender : TObject);
      Procedure Z1sbReglasMouseMove(Sender : TObject; Shift : TShiftState; X, Y : Integer);
      Procedure Z1sbReportesMouseMove(Sender : TObject; Shift : TShiftState; X, Y : Integer);
      Procedure SacaMenu(Sender : TObject);
      Procedure Z1sbSalidaClick(Sender : TObject);
      Procedure Z1sbSalidaMouseMove(Sender : TObject; Shift : TShiftState; X, Y : Integer);
      Procedure FormMouseMove(Sender : TObject; Shift : TShiftState; X, Y : Integer);
      Procedure Z1sbProcesosMouseMove(Sender : TObject; Shift : TShiftState; X, Y : Integer);
      Procedure FormClose(Sender : TObject; Var Action : TCloseAction);
      Procedure FormActivate(Sender : TObject);
      Procedure FormKeyPress(Sender : TObject; Var Key : Char);
      Procedure Accesos;
      Procedure Z1sbReglasClick(Sender : TObject);
      Procedure Z1sbProcesosClick(Sender : TObject);
      Procedure Z1sbReportesClick(Sender : TObject);
      Procedure BitDisCarClick(Sender : TObject);
      Procedure spdBitGesConClick(Sender : TObject);
      Procedure BitTipGestClick(Sender : TObject);
      Procedure BitParGestClick(Sender : TObject);
      Procedure BitGestoresClick(Sender : TObject);
      Procedure SpdCtrExtClick(Sender : TObject);
      Procedure SpeedButton2Click(Sender : TObject);
      Procedure SpeedButton3Click(Sender : TObject);
      Procedure bitGestorDptoClick(Sender : TObject);
      Procedure SpeedButton7Click(Sender : TObject);
      Procedure SpeedButton8Click(Sender : TObject);
      Procedure SpeedButton9Click(Sender : TObject);
      Procedure spdGesCobCatRiesgoClick(Sender : TObject);
      Procedure btnCambiarClick(Sender : TObject);
      Procedure spdRptIngMenClick(Sender : TObject);
      Procedure lblTestClick(Sender : TObject);
      Procedure spdRptTERPCREClick(Sender : TObject);
      Procedure Z1sbCamPasswClick(Sender : TObject);
      Procedure spdRptAsoCenEduClick(Sender : TObject);
      Procedure btnRepGesRealizadaClick(Sender : TObject);
      Procedure btnProProRepBasClick(Sender : TObject);
      Procedure btnComCatClick(Sender : TObject);
      Procedure SpeedButton1Click(Sender : TObject);
      Procedure btnDirTelCenRieClick(Sender : TObject);
      Procedure btnControlCampanhasClick(Sender : TObject);
      Procedure btnConMetGesClick(Sender : TObject);
      Procedure btnCantidadAsignadosClick(Sender : TObject);
      Procedure btnResAsigGestorClick(Sender : TObject);
      Procedure btnRepHojRutClick(Sender : TObject);
      Procedure btnRepAsigCarClick(Sender : TObject);
      Procedure btnAsigOfiPerClick(Sender : TObject);
      Procedure btnAlertaCompromisosClick(Sender : TObject);
      Procedure btnTiposZonasClick(Sender : TObject);
      procedure SpeedButton4Click(Sender: TObject);
      // INICIO : SPP_201401_GESCOB
      procedure spdSegControlClick(Sender: TObject);
      // INICIO : SPP_201402_GESCOB
      procedure sbControlarImpresionCartasClick(Sender: TObject);
      procedure sbMantenimientoOficinasClick(Sender: TObject);
      // FIN : SPP_201402_GESCOB
      // FIN : SPP_201401_GESCOB
      // INICIO : SPP_201404_GESCOB
      procedure spbDistribucionCarteraClick(Sender: TObject);
      procedure sbTiposIncidentesClick(Sender: TObject);
      procedure sbRegistroIncidenciasClick(Sender: TObject);
      procedure spbResultadosGestionClick(Sender: TObject);
      procedure spbHistoricoIngresosClick(Sender: TObject);
      procedure spbCuadrosComparativosAnalisisClick(Sender: TObject);
      // FIN : SPP_201404_GESCOB
      // INICIO : HPC_201502_GESCOB
      procedure sbImportarAsignacionesInternasClick(Sender: TObject);
      procedure sbImportarGestionesInternasClick(Sender: TObject);
      procedure sbCambiarAsignacionInternaClick(Sender: TObject);
      procedure sbImportarGestionesExternasClick(Sender: TObject);
      // INICIO HPC_201504_GESCOB
      procedure btnLiberarAsignacionesClick(Sender: TObject);
      procedure btnMantReportesSemanalMensualClick(Sender: TObject);
      // INICIO HPC_201601_GESCOB
	  // DECLARACION DE EVENTOS
      procedure btnMantenimientoComisionesClick(Sender: TObject);
      procedure btnMantReportesFSCECClick(Sender: TObject);
      // FIN HPC_201601_GESCOB
      // FIN HPC_201504_GESCOB
      // FIN : HPC_201502_GESCOB

   Private
    { Private declarations }
      Function VerificaVersion : Boolean;
   Public
      xSQL : String;
      CAxuRep : String;
      Procedure ListaComponentes(xForm : TForm);
      Procedure MueveMouse(xObjeto : TObject; Shift : TShiftState; X, Y : Integer);
   End;

Var
   FPrincipal : TFPrincipal;
   D, M, Y : Word;
   xBusAso, FIni, xSQL2, xSQL, sSQL : String;
   xFechasys : TDate;
   xDiaSys, xAnoSys, xMesSys : Word;
   cdsActivo : TwwClientDataSet;
   dsActivo : TwwDataSource;
// Inicio: SPP_201305_GESCOB F4 variable para formulario "Alertas de Compromisos(GES555)"
   sInicioPri: String;
// Fin: SPP_201305_GESCOB

Implementation

Uses GESDM1,
   GES102, GES101, GES103,
   GES211, GES212, GES104,
   GES105, GES312, GES313, GES316,
   GES230, GES203, COB925, GES210, GES318, GES003, GES320,
   GES500, GES505, GES510, GES515, GES520, GES525, GES526,
   GES530, GES535, GES540,
   GES545, GES550, GES005, FSQL,
   GES555, GES010,
// INICIO : SPP_201401_GESCOB
// INICIO : SPP_201402_GESCOB
// INICIO : HPC_2001403_GESCOB
   GES560, GES201, GES563, GES564,
// INICIO : HPC_201502_GESCOB
   GES565, GES566, GES567, GES568, GES570, GES571, GES302, GES300, GES301,
   // INICIO HPC_201504_GESCOB
   // INICIO HPC_201601_GESCOB
   // REFERENCIA A FORMULARIOS
   GES304, GES307, GES308, GES573, GES309;
   // FIN HPC_201601_GESCOB
   // FIN HPC_201504_GESCOB
// FIN : HPC_201502_GESCOB
// FIN : HPC_2001403_GESCOB
// FIN : SPP_201402_GESCOB
// FIN : SPP_201401_GESCOB
{$R *.DFM}

Procedure TFPrincipal.FormActivate(Sender : TObject);
Var
   xFecha : String;
Begin

   // ABRIR DESDE UN SOLO IP A LA VEZ
   sSQL := 'SELECT IPCLIENTE , ESTADO '
      + '     FROM (SELECT IPCLIENTE, '
      + '                  CASE WHEN FECHORREGOUT IS NULL THEN ''ABIERTO'' '
      + '                       ELSE ''CERRADO'' '
      + '                   END ESTADO '
      + '             FROM ACCESOS_LOG '
      + '            WHERE USUCLIENTE = ' + QuotedStr(DM1.wUsuario)
      + '              AND APLCLIENTE = ''GES'' '
      + '              AND FECHORREGOUT IS NULL '
      + '              AND IDEREG <> ' + QuotedStr(DM1.ideconex)
      + '            ORDER BY FECHORREGING DESC) '
      + '    WHERE ROWNUM = 1';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(sSQL);
   DM1.cdsQry.Open;
   If DM1.cdsQry.RecordCount > 0 Then
   Begin
      If (DM1.cdsQry.FieldByName('ESTADO').Value = 'ABIERTO') And (DM1.cdsQry.FieldByName('IPCLIENTE').Value <> dm1.cIP) Then
      Begin
         showmessage('El Usuario "' + DM1.wUsuario + '" tiene abierto el Modulo de GESCOB en la PC con IP :' + DM1.cdsQry.FieldByName('IPCLIENTE').AsString);
         close;
      End;
   End;

   sSQL := 'SELECT TO_CHAR(SYSDATE, ''DD/MM/YYYY'') FECHA FROM DUAL';
   DM1.cdsReporte.Close;
   DM1.cdsReporte.DataRequest(sSQL);
   DM1.cdsReporte.Open;

   xFecha := DM1.cdsReporte.FieldByName('FECHA').AsString;
   xFechasys := StrToDate(xFecha);
   xFechasys := Date;
   DecodeDate(xFechaSys, xAnoSys, xMesSys, xDiaSys);
   VerificaVersion;
   lblVersion.Height := 13;
   lblVersion.Left := 8;
   lblVersion.Top := 504;
   DM1.xOfiDes := DM1.CrgDescrip('USERID=' + QuotedStr(Trim(DM1.wUsuario)), 'TGE006', 'OFDESID');
   DM1.wOfiNombre := DM1.CrgDescrip('OFDESID=' + QuotedStr(DM1.xOfiDes), 'APO110', 'OFDESNOM');
   Statusbar1.Panels[1].Text := 'Usuario : ' + DM1.wUsuario + ' -   ' + Trim(DM1.CrgDescrip('USERID=' + QuotedStr(Trim(DM1.wUsuario)), 'TGE006', 'USERNOM'));
   Statusbar1.Panels[2].Text := 'Origen de Operaciones   :   ' + DM1.xOfiDes + ' -  ' + DM1.CrgDescrip('OFDESID=' + QuotedStr(Trim(DM1.xOfiDes)), 'APO110', 'OFDESNOM');
   DM1.wEsSupervisor := (DM1.xOfiDes = '01');
   sSQL := 'select NIVEL from USERTABLE where USERID=' + quotedstr(DM1.wUsuario);
   DM1.cdsQry4.Close;
   DM1.cdsQry4.DataRequest(sSQL);
   DM1.cdsQry4.Open;
   If DM1.cdsQry4.RecordCount = 0 Then
      DM1.wNivelUsu := '01'
   Else
      DM1.wNivelUsu := DM1.cdsQry4.FieldByName('NIVEL').AsString;

   If DM1.NivelUsuario(DM1.wUsuario) = '' Then
   Begin
      MessageDlg('No tiene un Nivel de Usuario Asignado.' + chr(13) + 'Comuniquese con el Nivel 3', mtInformation, [mbOk], 0);
      Close;
   End;

// INICIO : SPP_201401_GESCOB
   // muestra la etiqueta que indica que se esta apuntando al ambiente de test
   //gbPruebas.Visible := (DM1.wIpServer = '192.168.20.27');
   //gbPruebas.Visible := (DM1.wIpServer = '192.168.20.23');
   gbPruebas.Visible := (DM1.wIpServer = '10.10.11.177');
// FIN : SPP_201401_GESCOB
End;


Procedure TFPrincipal.FormShow(Sender : TObject);
Var
   xsSQL : String;
   xsSQLGestor : String;
   xsGestor : String;
   xsPeriodo : String;
Begin
   // INICIO : HPC_201501_GESCOB
   (*
   Screen.Cursor := CrDefault;

   xsPeriodo := DM1.fn_get_periodo_gestion_actual();
   If xsGestor = '' Then
      xsSQLGestor := ''
   Else
      xsSQLGestor := ' AND A.GESTOR = ' + QuotedStr(xsGestor);

   xsSQL :=
      '   SELECT COUNT(A.ASOID) CANT_ACUERDOS_INCUMPL '
      + '  FROM GES_COB_COMPROMISO A, GES_REF_SEG B, GES_REF_SEG_DET C, GES_COB_NEGOCIACION D, APO201 E '
      + ' WHERE A.PERIODO = ' + QuotedStr(xsPeriodo)
      + '   AND A.ESTADO = ''INCUMPLIDO'' '
      + '   AND A.COMPROMISO = ''S'' '
      + '   AND TRUNC(A.FEC_COMPROMISO) < TRUNC(SYSDATE) '
      + xsSQlGestor
      + '   AND A.IDGTN = B.IDGTN '
      + '   AND A.IDGTNDET = C.IDGTNDET '
      + '   AND A.COD_NEG = D.COD_NEG '
      + '   AND A.ASOID = E.ASOID '
      + '   AND NOT EXISTS (SELECT ASOID '
      + '          FROM GES_COB_COMPROMISO '
      + '         WHERE PERIODO = ' + QuotedStr(xsPeriodo)
      + '           AND ESTADO = ''NUEVO'' '
      + '           AND COMPROMISO = ''S'' '
      + '           AND TRUNC(FEC_COMPROMISO) >= TRUNC(SYSDATE) '
      + '           AND GESTOR = A.GESTOR '
      + '           AND ASOID = A.ASOID) ';

   DM1.cdsQry1.Close;
   DM1.cdsQry1.DataRequest(xsSQL);
   DM1.cdsQry1.Open;

   If DM1.cdsQry1.RecordCount > 0 Then
      btnAlertaCompromisosClick(btnAlertaCompromisos);
   *)
   // FIN : HPC_201501_GESCOB
End;

Procedure TFPrincipal.Z1sbReglasMouseMove(Sender : TObject; Shift : TShiftState; X, Y : Integer);
Begin
   pnlReferencias.Left := TSpeedButton(Sender).Left + 10;
   pnlReferencias.Top := TSpeedButton(Sender).Top + TSpeedButton(Sender).Height;
   pnlReferencias.Visible := True;
   pnlProcesos.Visible := False;
   pnlReportes.Visible := False;

End;

Procedure TFPrincipal.Z1sbReportesMouseMove(Sender : TObject; Shift : TShiftState; X, Y : Integer);
Begin
   pnlReportes.Left := TSpeedButton(Sender).Left + 10;
   pnlReportes.Top := TSpeedButton(Sender).Top + TSpeedButton(Sender).Height;
   pnlReferencias.Visible := False;
   pnlProcesos.Visible := False;
   pnlReportes.Visible := True;
End;

Procedure TFPrincipal.SacaMenu(Sender : TObject);
Begin
   clbPrincipal.Enabled := True;
   pnlReferencias.Visible := False;
   pnlProcesos.Visible := False;
   pnlReportes.Visible := False;
End;

Procedure TFPrincipal.Z1sbSalidaClick(Sender : TObject);
Begin
   pnlReportes.visible := false;
   Close;
End;

Procedure TFPrincipal.Z1sbSalidaMouseMove(Sender : TObject; Shift : TShiftState; X, Y : Integer);
Begin
   pnlProcesos.Visible := False;
   pnlReportes.Visible := False;
End;

Procedure TFPrincipal.FormMouseMove(Sender : TObject; Shift : TShiftState; X, Y : Integer);
Begin
   Sacamenu(Self)
End;

Procedure TFPrincipal.Z1sbProcesosMouseMove(Sender : TObject; Shift : TShiftState; X, Y : Integer);
Begin
   pnlProcesos.Left := TSpeedButton(Sender).Left + 10;
   pnlProcesos.Top := TSpeedButton(Sender).Top + TSpeedButton(Sender).Height;
   pnlReferencias.Visible := False;
   pnlProcesos.Visible := True;
   pnlReportes.Visible := False;
End;

Procedure TFPrincipal.FormClose(Sender : TObject; Var Action : TCloseAction);
Begin
   Action := caFree;
   Application.Terminate;
End;

Procedure TFPrincipal.FormKeyPress(Sender : TObject; Var Key : Char);
Begin
   If key = #13 Then
   Begin
      If Self.ActiveControl Is TDBMemo Then Exit;
      key := #0;
      perform(CM_DialogKey, VK_TAB, 0);
   End;
End;

Procedure TFPrincipal.Accesos;
Begin
   xSQL2 := 'SELECT * FROM TGE004 '
      + 'WHERE MODULOID=' + '''' + DM1.wModulo + ''''
      + ' AND  USERID=' + '''' + DM1.wUsuario + '''';
   DM1.cdsAcceso.Close;
   DM1.cdsAcceso.DataRequest(xSQL2);
   DM1.cdsAcceso.Open;

   sSQL := 'SELECT UBIGEOID, UBIGEODES, UBIGEODPTO, UBIGEOPROV, UBIGEODIST FROM TGE147 ' +
      'WHERE UBIGEODIST IS NOT NULL ORDER BY UBIGEODIST';
   DM1.FiltraCDS(DM1.cdsUbigeo, sSQL);
   DM1.FiltraTabla(DM1.cdsProf, 'TGE124', 'PROFID');
   sSQL := 'SELECT UBIGEOID, UBIGEODES, UBIGEODPTO, UBIGEOPROV, UBIGEODIST FROM TGE147 ' +
      'WHERE UBIGEODIST IS NOT NULL ORDER BY UBIGEODIST';
   DM1.FiltraCDS(DM1.cdsLugNac, sSQL);
   DM1.FiltraTabla(DM1.cdsTRela, 'TGE149', 'PARENID');
   DM1.FiltraTabla(DM1.cdsTDoc, 'TGE159', 'TIPDOCCOD');
   DM1.FiltraTabla(DM1.cdsBcos, 'TGE105', 'BANCOID');
   DM1.FiltraTabla(DM1.cdsCuentas, 'TGE106', 'CCBCOID');
   DM1.FiltraTabla(DM1.cdsFormaPago, 'COB101', 'FORPAGOID');
   DM1.FiltraTabla(DM1.cdsSitCta, 'COB103', 'SITCTAID');
   DM1.FiltraTabla(DM1.cdsSitRepr, 'COB104', 'REPRSITID');
   DM1.FiltraTabla(DM1.cdsFRepr, 'COB105', 'FORREPRID');
   DM1.AbreCDS(DM1.cdsFPago, 'SELECT * FROM TGE112');
   DM1.FiltraTabla(DM1.cdsTMoneda, 'TGE103', 'TMONID');
End;

Function TFPrincipal.VerificaVersion : Boolean;
Begin
   Result := False;
   xSQL := 'SELECT * FROM TGE600 WHERE CODIGO=''' + DM1.wModulo + '''';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSQL);
   DM1.cdsQry.Open;
   If lblVersion.caption = DM1.cdsQry.FieldByName('VERSION').AsString Then
      Result := True
   Else
   Begin
      ShowMessage('Para poder continuar, es necesario que actualice la Versión');
      Application.Terminate;
   End;
End;

Procedure TFPrincipal.ListaComponentes(xForm : TForm);
Var
   i : integer;
Begin
   For i := 0 To xForm.ComponentCount - 1 Do
   Begin

      If xForm.Components[i].ClassName = 'TPanel' Then
         TPanel(xForm.components[i]).OnMouseMove := MueveMouse;
      // para botones
      If xForm.Components[i].ClassName = 'TButton' Then
         TButton(xForm.components[i]).OnMouseMove := MueveMouse;
      // para bitbuttons
      If xForm.Components[i].ClassName = 'TBitBtn' Then
         TBitBtn(xForm.components[i]).OnMouseMove := MueveMouse;
      // para speedbuttons
      If xForm.Components[i].ClassName = 'TSpeedButton' Then
         TSpeedButton(xForm.components[i]).OnMouseMove := MueveMouse;
      // Boton de Grid
      If xForm.Components[i].ClassName = 'TwwIButton' Then
         TwwIButton(xForm.components[i]).OnMouseMove := MueveMouse;
      // para la forma
      xForm.onMouseMove := MueveMouse;
   End;
End;

Procedure TFPrincipal.MueveMouse(xObjeto : TObject; Shift : TShiftState; X,
   Y : Integer);
Var
   xComponente : String;
   xForma : TForm;
Begin
   xForma := Screen.ActiveForm;
   xComponente := xForma.Name;

   If xObjeto Is TForm Then
   Else
   Begin
      xComponente := xComponente + '.' + TControl(xObjeto).Name;

      DM1.wObjetoForma := xForma.Name;
      DM1.wObjetoNombr := TControl(xObjeto).Name;
      If Copy(DM1.wObjetoNombr, 2, 1) = '2' Then
         DM1.wObjetoDescr := DM1.wObjetoDesPr + ' - ' + TControl(xObjeto).Hint
      Else
      Begin
         DM1.wObjetoDescr := TControl(xObjeto).Hint;
      End;
   End;
End;

Procedure TFPrincipal.Z1sbReglasClick(Sender : TObject);
Begin
   pnlReferencias.Left := TSpeedButton(Sender).Left + 10;
   pnlReferencias.Top := TSpeedButton(Sender).Top + TSpeedButton(Sender).Height;
   pnlReferencias.Visible := True;
   pnlProcesos.Visible := False;
   pnlReportes.Visible := False;

End;

Procedure TFPrincipal.Z1sbProcesosClick(Sender : TObject);
Begin
   pnlProcesos.Left := TSpeedButton(Sender).Left + 10;
   pnlProcesos.Top := TSpeedButton(Sender).Top + TSpeedButton(Sender).Height;
   pnlReferencias.Visible := False;
   pnlProcesos.Visible := True;
   pnlReportes.Visible := False;
End;

Procedure TFPrincipal.Z1sbReportesClick(Sender : TObject);
Begin
   pnlReportes.Left := TSpeedButton(Sender).Left + 10;
   pnlReportes.Top := TSpeedButton(Sender).Top + TSpeedButton(Sender).Height;
   pnlReferencias.Visible := False;
   pnlProcesos.Visible := False;
   pnlReportes.Visible := True;
End;
(******************************************************************************)

Procedure TFPrincipal.BitParGestClick(Sender : TObject);
Var
   xSQL : String;
   xnNivel : integer;
Begin
   DM1.limpiarTodosCDS();
   xnNivel := StrToInt(Copy(DM1.NivelUsuario(DM1.wUsuario), 2, 1));
   If (xnNivel < 3) Then
   Begin
      MessageDlg('OPCION NO DISPONIBLE PARA ESTE NIVEL DE USUARIO!!!', mtError, [mbOk], 0);
      Exit;
   End;
   SacaMenu(Sender);
   Try
      fParGest := TfParGest.create(Self);
      xSQL := 'SELECT CODTIP,DESTIP FROM GES_TIP_REF_CAB ORDER BY CODTIP';
      DM1.cdsCredito.Close;
      DM1.cdsCredito.DataRequest(xSQL);
      DM1.cdsCredito.Open;
      fParGest.dtgCab.DataSource := DM1.dsCredito;
      fParGest.MstDetalles;
      fParGest.ShowModal;
   Finally
      fParGest.Free;
   End;
End;

Procedure TFPrincipal.BitTipGestClick(Sender : TObject);
Var
   xSQL : String;
   xnNivel : integer;
Begin
   DM1.limpiarTodosCDS();
   xnNivel := StrToInt(Copy(DM1.NivelUsuario(DM1.wUsuario), 2, 1));
   If (xnNivel < 3) Then
   Begin
      MessageDlg('OPCION NO DISPONIBLE PARA ESTE NIVEL DE USUARIO!!!', mtError, [mbOk], 0);
      Exit;
   End;
   SacaMenu(Sender);
   Try
      fNivUsu := TfNivUsu.create(Self);
      xSQL := 'SELECT OFDESID,OFDESNOM, OFDESDIR, OFDESMAIL, OFDESTEL, OFDESFAX FROM APO110 WHERE SUBSTR(OFDESID,1,1)<>''M'' ORDER BY OFDESID';
      DM1.cdsUSES.Close;
      DM1.cdsUSES.DataRequest(xSQL);
      DM1.cdsUSES.Open;
      fNivUsu.ShowModal;
   Finally
      fNivUsu.Free;
   End;
End;

Procedure TFPrincipal.BitGestoresClick(Sender : TObject);
Var
   xSQL : String;
   xnNivel : integer;
Begin
   DM1.limpiarTodosCDS();
   xnNivel := StrToInt(Copy(DM1.NivelUsuario(DM1.wUsuario), 2, 1));
   If (xnNivel < 3) Then
   Begin
      MessageDlg('OPCION NO DISPONIBLE PARA ESTE NIVEL DE USUARIO!!!', mtError, [mbOk], 0);
      Exit;
   End;
   SacaMenu(Sender);
   Try
      fMatrizGestCob := TfMatrizGestCob.create(Self);
      xSQL := 'SELECT USERNIV,A.USERID,B.USERNOM,NVL(REGACT,''N'') REGACT FROM GES_NIV_USU_OTO A,TGE006 B WHERE A.USERID=B.USERID AND TIPACT=''01'' ';
      DM1.cdsDLabo.Close;
      DM1.cdsDLabo.DataRequest(xSQL);
      DM1.cdsDLabo.Open;

      xSQL := 'SELECT IDENTEXT,DESENTEXT,NVL(REGACT,''N'') REGACT FROM GES_TIP_USU_EXT WHERE TIPACT=''01''';
      DM1.cdsDocPago.Close;
      DM1.cdsDocPago.DataRequest(xSQL);
      DM1.cdsDocPago.Open;

      fMatrizGestCob.ShowModal;
   Finally
      fMatrizGestCob.Free;
   End;
End;

Procedure TFPrincipal.bitGestorDptoClick(Sender : TObject);
Var
   xSQL : String;
   xnNivel : integer;
Begin
   DM1.limpiarTodosCDS();
   xnNivel := StrToInt(Copy(DM1.NivelUsuario(DM1.wUsuario), 2, 1));
   If (xnNivel < 3) Then
   Begin
      MessageDlg('OPCION NO DISPONIBLE PARA ESTE NIVEL DE USUARIO!!!', mtError, [mbOk], 0);
      Exit;
   End;
   SacaMenu(Sender);
   Try
      fUsuDpto := TfUsuDpto.create(Self);
      xSQL := 'SELECT OFDESID,OFDESNOM, OFDESDIR, OFDESMAIL, OFDESTEL, OFDESFAX FROM APO110 WHERE SUBSTR(OFDESID,1,1)<>''M'' ORDER BY OFDESID';

      xSQL := 'Select * from APO158 order by dptodes';

      DM1.cdsUSES.Close;
      DM1.cdsUSES.DataRequest(xSQL);
      DM1.cdsUSES.Open;
      fUsuDpto.ShowModal;
   Finally
      fUsuDpto.Free;
      xSQL := 'SELECT OFDESID,OFDESNOM, OFDESDIR, OFDESMAIL, OFDESTEL, OFDESFAX FROM APO110 WHERE SUBSTR(OFDESID,1,1)<>''M'' ORDER BY OFDESID';
      DM1.cdsUSES.Close;
      DM1.cdsUSES.DataRequest(xSQL);
      DM1.cdsUSES.Open;

   End;
End;

Procedure TFPrincipal.SpeedButton7Click(Sender : TObject);
Var
   xSQL : String;
   xnNivel : integer;
Begin
   DM1.limpiarTodosCDS();
   xnNivel := StrToInt(Copy(DM1.NivelUsuario(DM1.wUsuario), 2, 1));
   If (xnNivel < 3) Then
   Begin
      MessageDlg('OPCION NO DISPONIBLE PARA ESTE NIVEL DE USUARIO!!!', mtError, [mbOk], 0);
      Exit;
   End;
   SacaMenu(Sender);
   Try
      fMatriz := TfMatriz.create(Self);
      xSQL := 'SELECT IDGTN, DESCRIPCION FROM GES_REF_SEG ORDER BY IDGTN';
      DM1.cdsCredito.Close;
      DM1.cdsCredito.DataRequest(xSQL);
      DM1.cdsCredito.Open;
      fMatriz.dtgCab.DataSource := DM1.dsCredito;
      fMatriz.MstDetalles;
      fMatriz.ShowModal;
   Finally
      fMatriz.Free;
   End;
End;

Procedure TFPrincipal.BitDisCarClick(Sender : TObject);
Var
   xSQL : String;
   xnNivel : integer;
Begin
   DM1.limpiarTodosCDS();
   xnNivel := StrToInt(Copy(DM1.NivelUsuario(DM1.wUsuario), 2, 1));
   If (xnNivel < 3) Then
   Begin
      MessageDlg('OPCION NO DISPONIBLE PARA ESTE NIVEL DE USUARIO!!!', mtError, [mbOk], 0);
      Exit;
   End;
   SacaMenu(Sender);
   Try
      fDistCart1 := TfDistCart1.create(Self);

      xSQL := 'SELECT OFDESID,OFDESNOM FROM APO110 WHERE SUBSTR(OFDESID,1,1)<>''M'' ORDER BY OFDESID ';
      DM1.cdsDFam.Close;
      DM1.cdsDFam.DataRequest(xSQL);
      DM1.cdsDFam.Open;
      fDistCart1.dblOriOto.LookupTable := DM1.cdsDFam;

      xSQL := 'SELECT ASOTIPID,ASOTIPDES FROM APO107 WHERE ASOTIPID IN (''DO'',''CE'',''CO'')';
      DM1.cdsTAso.Close;
      DM1.cdsTAso.DataRequest(xSQL);
      DM1.cdsTAso.Open;
      fDistCart1.dblTipAso.LookupTable := DM1.cdsTAso;

      fDistCart1.ShowModal;
   Finally
      fDistCart1.Free;
   End;

End;

Procedure TFPrincipal.SpeedButton2Click(Sender : TObject);
Var
   xnNivel : integer;
Begin
   DM1.limpiarTodosCDS();
   xnNivel := StrToInt(Copy(DM1.NivelUsuario(DM1.wUsuario), 2, 1));
   If (xnNivel < 3) Then
   Begin
      MessageDlg('OPCION NO DISPONIBLE PARA ESTE NIVEL DE USUARIO!!!', mtError, [mbOk], 0);
      Exit;
   End;
   SacaMenu(Sender);
   Try
      DM1.cdsQry6.Close;
      FLiberaGes := TFLiberaGes.create(Self);
      FLiberaGes.ShowModal;
   Finally
      FLiberaGes.Free;
   End;
End;

Procedure TFPrincipal.SpeedButton3Click(Sender : TObject);
Var
   xnNivel : integer;
Begin
   DM1.limpiarTodosCDS();
   xnNivel := StrToInt(Copy(DM1.NivelUsuario(DM1.wUsuario), 2, 1));
   If (xnNivel < 3) Then
   Begin
      MessageDlg('OPCION NO DISPONIBLE PARA ESTE NIVEL DE USUARIO!!!', mtError, [mbOk], 0);
      Exit;
   End;
   SacaMenu(Sender);
   Try
      DM1.cdsQry6.Close;
      FGenPeriodo := TFGenPeriodo.create(Self);
      FGenPeriodo.ShowModal;
   Finally
      FGenPeriodo.Free;
   End;
End;

Procedure TFPrincipal.spdBitGesConClick(Sender : TObject);
Var
   xnNivel : integer;
Begin
   DM1.limpiarTodosCDS();
   xnNivel := StrToInt(Copy(DM1.NivelUsuario(DM1.wUsuario), 2, 1));
   If (xnNivel <= 0) Then
   Begin
      MessageDlg('OPCION NO DISPONIBLE PARA ESTE NIVEL DE USUARIO!!!', mtError, [mbOk], 0);
      Exit;
   End;
   SacaMenu(Sender);
   Try
      fGestInt := TfGestInt.create(Self);
      fGestInt.ShowModal;
   Finally
      fGestInt.Free;
   End;
End;

Procedure TFPrincipal.SpdCtrExtClick(Sender : TObject);
Var
   xSQL : String;
   xnNivel : integer;
Begin
   DM1.limpiarTodosCDS();
   xnNivel := StrToInt(Copy(DM1.NivelUsuario(DM1.wUsuario), 2, 1));
   If (xnNivel < 3) Then
   Begin
      MessageDlg('OPCION NO DISPONIBLE PARA ESTE NIVEL DE USUARIO!!!', mtError, [mbOk], 0);
      Exit;
   End;
   SacaMenu(Sender);
   Try
      fGestExt := TfGestExt.create(Self);
      If StrToInt(Copy(DM1.NivelUsuario(DM1.wUsuario), 2, 1)) >= 2 Then
      Begin
         fGestExt.dblUserExt.Visible := True;
         fGestExt.pnlUser.Visible := True;
         xSQL := 'SELECT USERNIV,A.USERID,B.USERNOM FROM GES_NIV_USU_OTO A,TGE006 B WHERE A.USERID=B.USERID AND REGACT=''S'' AND USERNIV IN (''N1'') ';
         DM1.cdsQry6.Close;
         DM1.cdsQry6.DataRequest(xSQL);
         DM1.cdsQry6.Open;
      End;

      xSQL := 'SELECT B.DPTODES, A.* FROM GES_COB_USU A, APO158 B '
         + 'WHERE A.DPTOID=B.DPTOID '
         + 'ORDER BY B.DPTODES, USUARIO';
      DM1.cdsGestor.Close;
      DM1.cdsGestor.Filtered := False;
      DM1.cdsGestor.DataRequest(xSQL);
      DM1.cdsGestor.Open;

      fGestExt.ShowModal;

   Finally
      fGestExt.Free;
   End;
End;

Procedure TFPrincipal.SpeedButton9Click(Sender : TObject);
Var
   xnNivel : integer;
Begin
   DM1.limpiarTodosCDS();
   xnNivel := StrToInt(Copy(DM1.NivelUsuario(DM1.wUsuario), 2, 1));
   If (xnNivel < 3) Then
   Begin
      MessageDlg('OPCION NO DISPONIBLE PARA ESTE NIVEL DE USUARIO!!!', mtError, [mbOk], 0);
      Exit;
   End;
   SacaMenu(Sender);
   Try
      FProgProcRpteCon := TFProgProcRpteCon.create(Self);
      FProgProcRpteCon.ShowModal;
   Finally
      FProgProcRpteCon.Free;
   End;
End;

Procedure TFPrincipal.spdGesCobCatRiesgoClick(Sender : TObject);
Var
   xnNivel : integer;
Begin
   DM1.limpiarTodosCDS();
   xnNivel := StrToInt(Copy(DM1.NivelUsuario(DM1.wUsuario), 2, 1));
   If (xnNivel < 3) Then
   Begin
      MessageDlg('OPCION NO DISPONIBLE PARA ESTE NIVEL DE USUARIO!!!', mtError, [mbOk], 0);
      Exit;
   End;
   SacaMenu(Sender);
   Try
      fGestCob := TfGestCob.create(Self);
      fGestCob.ShowModal;
   Finally
      fGestCob.Free;
   End;
End;

Procedure TFPrincipal.SpeedButton8Click(Sender : TObject);
Var
   xnNivel : integer;
Begin
   DM1.limpiarTodosCDS();
   xnNivel := StrToInt(Copy(DM1.NivelUsuario(DM1.wUsuario), 2, 1));
   If Not ((xnNivel = 0) Or (xnNivel = 3)) Then
   Begin
      MessageDlg('OPCION NO DISPONIBLE PARA ESTE NIVEL DE USUARIO!!!', mtError, [mbOk], 0);
      Exit;
   End;
   SacaMenu(Sender);
   Try
      fRepConsolidadoAsignacion := TfRepConsolidadoAsignacion.create(Self);
      fRepConsolidadoAsignacion.ShowModal;
   Finally
      fRepConsolidadoAsignacion.Free;
   End;
End;

Procedure TFPrincipal.spdRptIngMenClick(Sender : TObject);
Var
   xnNivel : integer;
Begin
   DM1.limpiarTodosCDS();
   xnNivel := StrToInt(Copy(DM1.NivelUsuario(DM1.wUsuario), 2, 1));
   If Not ((xnNivel = 0) Or (xnNivel = 3)) Then
   Begin
      MessageDlg('OPCION NO DISPONIBLE PARA ESTE NIVEL DE USUARIO!!!', mtError, [mbOk], 0);
      Exit;
   End;
   SacaMenu(Sender);
   Try
      fRepIngMen := TfRepIngMen.create(Self);
      fRepIngMen.ShowModal;
   Finally
      fRepIngMen.Free;
   End;
End;

Procedure TFPrincipal.btnCambiarClick(Sender : TObject);
Begin
   DM1.wUsuario := UpperCase(txtUsuario.Text);
   gbPruebas.Height := 40;
   txtUsuario.Text := '';
   showmessage('Se realizo el cambio');
End;

Procedure TFPrincipal.lblTestClick(Sender : TObject);
Begin
   If gbPruebas.Height >= 200 Then
      gbPruebas.Height := 40
   Else
   Begin
      gbPruebas.Height := 200;
      txtUsuario.SetFocus;
   End;
End;
(******************************************************************************)

Procedure TFPrincipal.spdRptTERPCREClick(Sender : TObject);
Var
   xnNivel : integer;
Begin
   DM1.limpiarTodosCDS();
   xnNivel := StrToInt(Copy(DM1.NivelUsuario(DM1.wUsuario), 2, 1));
   If Not ((xnNivel = 0) Or (xnNivel = 3)) Then
   Begin
      MessageDlg('OPCION NO DISPONIBLE PARA ESTE NIVEL DE USUARIO!!!', mtError, [mbOk], 0);
      Exit;
   End;
   SacaMenu(Sender);
   fRptTERPCRE := TfRptTERPCRE.create(self);
   Try
      fRptTERPCRE.ShowModal();
   Finally
      fRptTERPCRE.Free;
   End;
End;

(******************************************************************************)

Procedure TFPrincipal.Z1sbCamPasswClick(Sender : TObject);
Begin
   SacaMenu(Sender);
   FCambioContrasena := TFCambioContrasena.create(self);
   Try
      FCambioContrasena.ShowModal;
   Finally
      FCambioContrasena.Free;
   End;
End;
(******************************************************************************)

Procedure TFPrincipal.spdRptAsoCenEduClick(Sender : TObject);
Var
   xnNivel : integer;
Begin
   DM1.limpiarTodosCDS();
   xnNivel := StrToInt(Copy(DM1.NivelUsuario(DM1.wUsuario), 2, 1));
   If Not ((xnNivel = 0) Or (xnNivel = 3)) Then
   Begin
      MessageDlg('OPCION NO DISPONIBLE PARA ESTE NIVEL DE USUARIO!!!', mtError, [mbOk], 0);
      Exit;
   End;
   SacaMenu(Sender);
   fRptAsoCenEdu := TfRptAsoCenEdu.create(self);
   Try
      fRptAsoCenEdu.ShowModal();
   Finally
      fRptAsoCenEdu.Free;
   End;
End;

//******************************************************************************
// Nombre : btnRepGesRealizadaClick
// Descripcion : Evento que se dispara al dar clic en el boton "btnRepGesRealizadaClick"
//               Muestra en forma Modal la forma "FRepGesRealizada" para filtrar
//               los datos del reporte de Gestiones Realizadas
//******************************************************************************

Procedure TFPrincipal.btnRepGesRealizadaClick(Sender : TObject);
Var
   xnNivel : integer;
Begin
   DM1.limpiarTodosCDS();
   xnNivel := StrToInt(Copy(DM1.NivelUsuario(DM1.wUsuario), 2, 1));
   If Not ((xnNivel = 0) Or (xnNivel = 1) Or (xnNivel = 3)) Then
   Begin
      MessageDlg('OPCION NO DISPONIBLE PARA ESTE NIVEL DE USUARIO!!!', mtError, [mbOk], 0);
      Exit;
   End;

   If (xnNivel = 0) And (Not DM1.fn_is_hora_acceso_permitido(18)) Then // A PARTIR DE LAS 6 PM
   Begin
      MessageDlg('ESTA OPCION DEMANDA DEMASIADO TIEMPO DE PROCESO, POR FAVOR INTENTELO A APARTIR DE LAS 6 PM.!!!', mtError, [mbOk], 0);
      Exit;
   End;

   SacaMenu(Sender);
   FRepGesRealizada := TFRepGesRealizada.Create(self);
   Try
      FRepGesRealizada.ShowModal();
   Finally
      FRepGesRealizada.Free;
   End;

End;

Procedure TFPrincipal.btnProProRepBasClick(Sender : TObject);
Var
   xnNivel : integer;
Begin
   DM1.limpiarTodosCDS();
   xnNivel := StrToInt(Copy(DM1.NivelUsuario(DM1.wUsuario), 2, 1));
   If Not ((xnNivel = 0) Or (xnNivel = 3)) Then
   Begin
      MessageDlg('OPCION NO DISPONIBLE PARA ESTE NIVEL DE USUARIO!!!', mtError, [mbOk], 0);
      Exit;
   End;
   SacaMenu(Sender);
   Try
      FProProRepBas := TFProProRepBas.create(Self);
      FProProRepBas.ShowModal;
   Finally
      FProProRepBas.Free;
   End;
End;

Procedure TFPrincipal.btnComCatClick(Sender : TObject);
Var
   xnNivel : integer;
Begin
   DM1.limpiarTodosCDS();
   xnNivel := StrToInt(Copy(DM1.NivelUsuario(DM1.wUsuario), 2, 1));
   If Not ((xnNivel = 0) Or (xnNivel = 3)) Then
   Begin
      MessageDlg('OPCION NO DISPONIBLE PARA ESTE NIVEL DE USUARIO!!!', mtError, [mbOk], 0);
      Exit;
   End;
   If (xnNivel = 0) And (Not DM1.fn_is_hora_acceso_permitido(18)) Then // A PARTIR DE LAS 6 PM
   Begin
      MessageDlg('ESTA OPCION DEMANDA DEMASIADO TIEMPO DE PROCESO, POR FAVOR INTENTELO A APARTIR DE LAS 6 PM.!!!', mtError, [mbOk], 0);
      Exit;
   End;
   SacaMenu(Sender);
   FComCat := TFComCat.create(self);
   Try
      FComCat.ShowModal();
   Finally
      FComCat.Free;
   End;
End;

Procedure TFPrincipal.SpeedButton1Click(Sender : TObject);
Var
   xnNivel : integer;
Begin
   DM1.limpiarTodosCDS();
   xnNivel := StrToInt(Copy(DM1.NivelUsuario(DM1.wUsuario), 2, 1));
   If Not ((xnNivel = 0) Or (xnNivel = 3)) Then
   Begin
      MessageDlg('OPCION NO DISPONIBLE PARA ESTE NIVEL DE USUARIO!!!', mtError, [mbOk], 0);
      Exit;
   End;
   SacaMenu(Sender);
   FCompararTraslados := TFCompararTraslados.create(self);
   Try
      FCompararTraslados.ShowModal();
   Finally
      FCompararTraslados.Free;
   End;
End;

//******************************************************************************
// Nombre : btnDirTelCenRieClick
// Descripcion : cargar formulario de direcciones y telefonos
//               de centrales de riesgo
//******************************************************************************

Procedure TFPrincipal.btnDirTelCenRieClick(Sender : TObject);
Var
   xnNivel : integer;
Begin
   DM1.limpiarTodosCDS();
   xnNivel := StrToInt(Copy(DM1.NivelUsuario(DM1.wUsuario), 2, 1));
   If Not ((xnNivel = 0) Or (xnNivel = 3)) Then
   Begin
      MessageDlg('OPCION NO DISPONIBLE PARA ESTE NIVEL DE USUARIO!!!', mtError, [mbOk], 0);
      Exit;
   End;
   SacaMenu(Sender);
   FDirTelCenRie := TFDirTelCenRie.create(self);
   Try
      FDirTelCenRie.ShowModal();
   Finally
      FDirTelCenRie.Free;
   End;
End;

//******************************************************************************
// Nombre : btnControlCampanhasClick
// Descripcion : cargar formulario de Control de Campañas
//******************************************************************************

Procedure TFPrincipal.btnControlCampanhasClick(Sender : TObject);
Var
   xnNivel : integer;
Begin
   DM1.limpiarTodosCDS();
   xnNivel := StrToInt(Copy(DM1.NivelUsuario(DM1.wUsuario), 2, 1));
   If Not ((xnNivel = 0) Or (xnNivel = 3)) Then
   Begin
      MessageDlg('OPCION NO DISPONIBLE PARA ESTE NIVEL DE USUARIO!!!', mtError, [mbOk], 0);
      Exit;
   End;
   SacaMenu(Sender);
   FRepControlCampanhas := TFRepControlCampanhas.create(self);
   Try
      FRepControlCampanhas.ShowModal();
   Finally
      FRepControlCampanhas.Free;
   End;
End;

//******************************************************************************
// Nombre : btnConMetGesClick
// Descripcion : cargar formulario de Control de Metas por Gestor
//******************************************************************************

Procedure TFPrincipal.btnConMetGesClick(Sender : TObject);
Var
   xxFrm : TFConMetGes;
   xnNivel : integer;
Begin
   DM1.limpiarTodosCDS();
   xnNivel := StrToInt(Copy(DM1.NivelUsuario(DM1.wUsuario), 2, 1));
   If Not ((xnNivel = 0) Or (xnNivel = 3)) Then
   Begin
      MessageDlg('OPCION NO DISPONIBLE PARA ESTE NIVEL DE USUARIO!!!', mtError, [mbOk], 0);
      Exit;
   End;
   SacaMenu(Sender);
   xxFrm := TFConMetGes.Create(self);
   Try
      xxFrm.showModal;
   Finally
      xxFrm.Free;
   End;
End;

//******************************************************************************
// Nombre : btnCantidadAsignadosClick
// Descripcion : Reporte de Cantidad de Asignados
//******************************************************************************

Procedure TFPrincipal.btnCantidadAsignadosClick(Sender : TObject);
Var
   xxFrm : TFCantidadAsignados;
   xnNivel : integer;
Begin
   DM1.limpiarTodosCDS();
   xnNivel := StrToInt(Copy(DM1.NivelUsuario(DM1.wUsuario), 2, 1));
   If Not ((xnNivel = 0) Or (xnNivel = 3)) Then
   Begin
      MessageDlg('OPCION NO DISPONIBLE PARA ESTE NIVEL DE USUARIO!!!', mtError, [mbOk], 0);
      Exit;
   End;
   SacaMenu(Sender);
   xxFrm := TFCantidadAsignados.Create(self);
   Try
      xxFrm.showModal;
   Finally
      xxFrm.Free;
   End;
End;

//******************************************************************************
// Nombre : btnResAsigGestorClick
// Descripcion : Reporte Resumen de Asignados por Gestor
//******************************************************************************

Procedure TFPrincipal.btnResAsigGestorClick(Sender : TObject);
Var
   xxFrm : TFResAsigGestor;
   xnNivel : integer;
Begin
   DM1.limpiarTodosCDS();
   xnNivel := StrToInt(Copy(DM1.NivelUsuario(DM1.wUsuario), 2, 1));
   If Not ((xnNivel = 0) Or (xnNivel = 3)) Then
   Begin
      MessageDlg('OPCION NO DISPONIBLE PARA ESTE NIVEL DE USUARIO!!!', mtError, [mbOk], 0);
      Exit;
   End;
   SacaMenu(Sender);
   xxFrm := TFResAsigGestor.Create(self);
   Try
      xxFrm.showModal;
   Finally
      xxFrm.Free;
   End;
End;

//******************************************************************************
// Nombre : btnRepHojRutClick
// Descripcion : Reporte de Hojas de Ruta
//******************************************************************************

Procedure TFPrincipal.btnRepHojRutClick(Sender : TObject);
Var
   xxFrm : TFRepHojRut;
   xnNivel : integer;
Begin
   DM1.limpiarTodosCDS();
   xnNivel := StrToInt(Copy(DM1.NivelUsuario(DM1.wUsuario), 2, 1));
   If Not ((xnNivel = 0) Or (xnNivel = 3)) Then
   Begin
      MessageDlg('OPCION NO DISPONIBLE PARA ESTE NIVEL DE USUARIO!!!', mtError, [mbOk], 0);
      Exit;
   End;
   SacaMenu(Sender);
   xxFrm := TFRepHojRut.Create(self);
   Try
      xxFrm.showModal;
   Finally
      xxFrm.Free;
   End;
End;

Procedure TFPrincipal.btnRepAsigCarClick(Sender : TObject);
Var
   xxFrm : TFRepAsiCar;
   xnNivel : integer;
Begin
   DM1.limpiarTodosCDS();
   xnNivel := StrToInt(Copy(DM1.NivelUsuario(DM1.wUsuario), 2, 1));
   If Not ((xnNivel = 0) Or (xnNivel = 3)) Then
   Begin
      MessageDlg('OPCION NO DISPONIBLE PARA ESTE NIVEL DE USUARIO!!!', mtError, [mbOk], 0);
      Exit;
   End;
   SacaMenu(Sender);
   xxFrm := TFRepAsiCar.Create(self);
   Try
      xxFrm.showModal;
   Finally
      xxFrm.Free;
   End;
End;

Procedure TFPrincipal.btnAsigOfiPerClick(Sender : TObject);
Var
   xnNivel : integer;
Begin
   DM1.limpiarTodosCDS();
   xnNivel := StrToInt(Copy(DM1.NivelUsuario(DM1.wUsuario), 2, 1));
   If (xnNivel < 3) Then
   Begin
      MessageDlg('OPCION NO DISPONIBLE PARA ESTE NIVEL DE USUARIO!!!', mtError, [mbOk], 0);
      Exit;
   End;
   SacaMenu(Sender);
   Try
      FAsigOfiPer := TFAsigOfiPer.create(Self);
      FAsigOfiPer.ShowModal;
   Finally
      FAsigOfiPer.Free;
   End;
End;


Procedure TFPrincipal.btnAlertaCompromisosClick(Sender : TObject);
Var
   xxFrm : TFrmAlertaAcuerdos;
   xnNivel : integer;
Begin
   DM1.limpiarTodosCDS();
   xnNivel := StrToInt(Copy(DM1.NivelUsuario(DM1.wUsuario), 2, 1));
   // INICIO : HPC_201501_GESCOB
   If (xnNivel = 1) Then
   begin
      MessageDlg('OPCION NO DISPONIBLE PARA ESTE NIVEL DE USUARIO!!!', mtError, [mbOk], 0);
      exit;
   end;
   // FIN : HPC_201501_GESCOB
   SacaMenu(Sender);
   Try
      xxFrm := TFrmAlertaAcuerdos.create(Self);
      If (xnNivel = 1) Then
         xxFrm.xsGestor := DM1.wUsuario
      Else
         xxFrm.xsGestor := '';
      xxFrm.ShowModal;
   Finally
      xxFrm.Free;
   End;
End;

Procedure TFPrincipal.btnTiposZonasClick(Sender : TObject);
Var
   xxFrm : TFrmTipoZona;
   xnNivel : integer;
Begin
   DM1.limpiarTodosCDS();
   xnNivel := StrToInt(Copy(DM1.NivelUsuario(DM1.wUsuario), 2, 1));
   If (xnNivel < 3) Then
   Begin
      MessageDlg('OPCION NO DISPONIBLE PARA ESTE NIVEL DE USUARIO!!!', mtError, [mbOk], 0);
      Exit;
   End;
   SacaMenu(Sender);
   Try
      xxFrm := TFrmTipoZona.create(Self);
      xxFrm.ShowModal;
   Finally
      xxFrm.Free;
   End;
End;

procedure TFPrincipal.SpeedButton4Click(Sender: TObject);
Var
   xxFrm : TFRepGestor;
   xnNivel : integer;
Begin
   DM1.limpiarTodosCDS();
   xnNivel := StrToInt(Copy(DM1.NivelUsuario(DM1.wUsuario), 2, 1));
   SacaMenu(Sender);
   Try
      xxFrm := TFRepGestor.create(Self);
      xxFrm.ShowModal;
   Finally
      xxFrm.Free;
   End;
end;

// INICIO : SPP_201401_GESCOB
(******************************************************************************)
procedure TFPrincipal.spdSegControlClick(Sender: TObject);
begin
   DM1.limpiarTodosCDS();
   SacaMenu(Sender);
   try
      fSegControl := TfSegControl.create(Self);
      fSegControl.ShowModal;
   Finally
      fSegControl.Free;
   End;
end;
(******************************************************************************)
// FIN : SPP_201401_GESCOB
// INICIO : SPP_201402_GESCOB
procedure TFPrincipal.sbControlarImpresionCartasClick(Sender: TObject);
begin
   DM1.limpiarTodosCDS();
   SacaMenu(Sender);
   try
      FControlarImpresionCartas := TFControlarImpresionCartas.create(Self);
      FControlarImpresionCartas.ShowModal;
   Finally
      FControlarImpresionCartas.Free;
   End;
end;
(******************************************************************************)
// FIN : SPP_201402_GESCOB

// INICIO : SPP_201402_GESCOB
procedure TFPrincipal.sbMantenimientoOficinasClick(Sender: TObject);
Var
   xnNivel : integer;
Begin
   DM1.limpiarTodosCDS();
   xnNivel := StrToInt(Copy(DM1.NivelUsuario(DM1.wUsuario), 2, 1));
   If (xnNivel < 3) Then
   Begin
      MessageDlg('OPCION NO DISPONIBLE PARA ESTE NIVEL DE USUARIO!!!', mtError, [mbOk], 0);
      Exit;
   End;
   SacaMenu(Sender);
   Try
      FMantenimientoOficinas := TFMantenimientoOficinas.create(Self);
      FMantenimientoOficinas.ShowModal;
   Finally
      FMantenimientoOficinas.Free;
   End;
end;
(******************************************************************************)
// FIN : SPP_201402_GESCOB

// INICIO : SPP_201404_GESCOB
procedure TFPrincipal.spbDistribucionCarteraClick(Sender: TObject);
begin
   If (StrToInt(Copy(DM1.NivelUsuario(DM1.wUsuario), 2, 1)) < 3) Then
   Begin
      MessageDlg('OPCION DISPONIBLE SOLO PARA EL NIVEL 3!!!', mtInformation, [mbOk], 0);
      Exit;
   End;
   DM1.limpiarTodosCDS();
   SacaMenu(Sender);
   Try
      FDisAsiCar := TFDisAsiCar.create(Self);
      FDisAsiCar.ShowModal;
   Finally
      FDisAsiCar.Free;
   End;
end;
(******************************************************************************)
procedure TFPrincipal.sbTiposIncidentesClick(Sender: TObject);
begin
   If (StrToInt(Copy(DM1.NivelUsuario(DM1.wUsuario), 2, 1)) < 3) Then
   Begin
      MessageDlg('OPCION DISPONIBLE SOLO PARA EL NIVEL 3!!!', mtInformation, [mbOk], 0);
      Exit;
   End;
   DM1.limpiarTodosCDS();
   SacaMenu(Sender);
   Try
      FMantTiposIncidentes := TFMantTiposIncidentes.create(Self);
      FMantTiposIncidentes.ShowModal;
   Finally
      FMantTiposIncidentes.Free;
   End;
end;
(******************************************************************************)
procedure TFPrincipal.sbRegistroIncidenciasClick(Sender: TObject);
begin
   If (StrToInt(Copy(DM1.NivelUsuario(DM1.wUsuario), 2, 1)) < 3) Then
   Begin
      MessageDlg('OPCION DISPONIBLE SOLO PARA EL NIVEL 3!!!', mtInformation, [mbOk], 0);
      Exit;
   End;
   DM1.limpiarTodosCDS();
   SacaMenu(Sender);
   Try
      FRegistroIncidencias := TFRegistroIncidencias.create(Self);
      FRegistroIncidencias.ShowModal;
   Finally
      FRegistroIncidencias.Free;
   End;
end;
(******************************************************************************)
procedure TFPrincipal.spbResultadosGestionClick(Sender: TObject);
begin
   If (StrToInt(Copy(DM1.NivelUsuario(DM1.wUsuario), 2, 1)) < 3) Then
   Begin
      MessageDlg('OPCION DISPONIBLE SOLO PARA EL NIVEL 3!!!', mtInformation, [mbOk], 0);
      Exit;
   End;
   DM1.limpiarTodosCDS();
   SacaMenu(Sender);
   Try
      FResultadosGestion := TFResultadosGestion.create(Self);
      FResultadosGestion.ShowModal;
   Finally
      FResultadosGestion.Free;
   End;
end;
(******************************************************************************)

procedure TFPrincipal.spbHistoricoIngresosClick(Sender: TObject);
begin
   If (StrToInt(Copy(DM1.NivelUsuario(DM1.wUsuario), 2, 1)) < 3) Then
   Begin
      MessageDlg('OPCION DISPONIBLE SOLO PARA EL NIVEL 3!!!', mtInformation, [mbOk], 0);
      Exit;
   End;
   DM1.limpiarTodosCDS();
   SacaMenu(Sender);
   Try
      FHistoricoIngresos := TFHistoricoIngresos.create(Self);
      FHistoricoIngresos.ShowModal;
   Finally
      FHistoricoIngresos.Free;
   End;
end;
(******************************************************************************)

procedure TFPrincipal.spbCuadrosComparativosAnalisisClick(Sender: TObject);
begin
   If (StrToInt(Copy(DM1.NivelUsuario(DM1.wUsuario), 2, 1)) < 3) Then
   Begin
      MessageDlg('OPCION DISPONIBLE SOLO PARA EL NIVEL 3!!!', mtInformation, [mbOk], 0);
      Exit;
   End;
   DM1.limpiarTodosCDS();
   SacaMenu(Sender);
   Try
      FCuadrosComparativoAnalisis := TFCuadrosComparativoAnalisis.create(Self);
      FCuadrosComparativoAnalisis.ShowModal;
   Finally
      FCuadrosComparativoAnalisis.Free;
   End;
end;
(******************************************************************************)
// FIN : SPP_201404_GESCOB
// INICIO : HPC_201502_GESCOB
procedure TFPrincipal.sbImportarAsignacionesInternasClick(Sender: TObject);
begin
   If (StrToInt(Copy(DM1.NivelUsuario(DM1.wUsuario), 2, 1)) < 3) Then
   Begin
      MessageDlg('OPCION DISPONIBLE SOLO PARA EL NIVEL 3!!!', mtInformation, [mbOk], 0);
      Exit;
   End;
   DM1.limpiarTodosCDS();
   SacaMenu(Sender);
   Try
      FrmImportarAsignacionesInt := TFrmImportarAsignacionesInt.create(Self);
      FrmImportarAsignacionesInt.ShowModal;
   Finally
      FrmImportarAsignacionesInt.Free;
   End;
end;
(******************************************************************************)

procedure TFPrincipal.sbImportarGestionesInternasClick(Sender: TObject);
begin
   If (StrToInt(Copy(DM1.NivelUsuario(DM1.wUsuario), 2, 1)) < 3) Then
   Begin
      MessageDlg('OPCION DISPONIBLE SOLO PARA EL NIVEL 3!!!', mtInformation, [mbOk], 0);
      Exit;
   End;
   DM1.limpiarTodosCDS();
   SacaMenu(Sender);
   Try
      FrmImportarGestionesInt := TFrmImportarGestionesInt.create(Self);
      FrmImportarGestionesInt.ShowModal;
   Finally
      FrmImportarGestionesInt.Free;
   End;
end;
(******************************************************************************)

procedure TFPrincipal.sbCambiarAsignacionInternaClick(Sender: TObject);
begin
   If (StrToInt(Copy(DM1.NivelUsuario(DM1.wUsuario), 2, 1)) < 3) Then
   Begin
      MessageDlg('OPCION DISPONIBLE SOLO PARA EL NIVEL 3!!!', mtInformation, [mbOk], 0);
      Exit;
   End;
   DM1.limpiarTodosCDS();
   SacaMenu(Sender);
   Try
      FrmCambioAsignacionInt := TFrmCambioAsignacionInt.create(Self);
      FrmCambioAsignacionInt.ShowModal;
   Finally
      FrmCambioAsignacionInt.Free;
   End;
end;
(******************************************************************************)
procedure TFPrincipal.sbImportarGestionesExternasClick(Sender: TObject);
begin
   If (StrToInt(Copy(DM1.NivelUsuario(DM1.wUsuario), 2, 1)) < 3) Then
   Begin
      MessageDlg('OPCION DISPONIBLE SOLO PARA EL NIVEL 3!!!', mtInformation, [mbOk], 0);
      Exit;
   End;
   DM1.limpiarTodosCDS();
   SacaMenu(Sender);
   Try
      FrmImportarGestionesExt := TFrmImportarGestionesExt.create(Self);
      FrmImportarGestionesExt.ShowModal;
   Finally
      FrmImportarGestionesExt.Free;
   End;
end;
(******************************************************************************)
// FIN : HPC_201502_GESCOB
// INICIO HPC_201504_GESCOB
(******************************************************************************)
procedure TFPrincipal.btnLiberarAsignacionesClick(Sender: TObject);
begin
   If (StrToInt(Copy(DM1.NivelUsuario(DM1.wUsuario), 2, 1)) < 3) Then
   Begin
      MessageDlg('OPCION DISPONIBLE SOLO PARA NIVELES MAYOR O IGUAL A 3!!!', mtInformation, [mbOk], 0);
      Exit;
   End;
   DM1.limpiarTodosCDS();
   SacaMenu(Sender);
   Try
      FLiberarAsignaciones := TFLiberarAsignaciones.create(Self);
      FLiberarAsignaciones.ShowModal;
   Finally
      FLiberarAsignaciones.Free;
   End;
end;
(******************************************************************************)

procedure TFPrincipal.btnMantReportesSemanalMensualClick(Sender: TObject);
begin
   If (StrToInt(Copy(DM1.NivelUsuario(DM1.wUsuario), 2, 1)) < 3) Then
   Begin
      MessageDlg('OPCION DISPONIBLE SOLO PARA NIVELES MAYOR O IGUAL A 3!!!', mtInformation, [mbOk], 0);
      Exit;
   End;
   DM1.limpiarTodosCDS();
   SacaMenu(Sender);
   Try
      FMantReportesSemanalesMensuales := TFMantReportesSemanalesMensuales.create(Self);
      FMantReportesSemanalesMensuales.ShowModal;
   Finally
      FMantReportesSemanalesMensuales.Free;
   End;
end;
(******************************************************************************)

// FIN HPC_201504_GESCOB
// INICIO HPC_201601_GESCOB
// EVENTOS PARA INVOCAR A LOS NUEVOS FORMULARIOS
procedure TFPrincipal.btnMantenimientoComisionesClick(Sender: TObject);
Var
   xnNivel : integer;
Begin
   DM1.limpiarTodosCDS();
   xnNivel := StrToInt(Copy(DM1.NivelUsuario(DM1.wUsuario), 2, 1));
   If (xnNivel < 3) Then
   Begin
      MessageDlg('OPCION DISPONIBLE SOLO PARA NIVELES MAYOR O IGUAL A 3!!!', mtError, [mbOk], 0);
      Exit;
   End;
   SacaMenu(Sender);
   Try
      FMantenimientoComision := TFMantenimientoComision.create(Self);
      FMantenimientoComision.ShowModal;
   Finally
      FMantenimientoComision.Free;
   End;
end;


procedure TFPrincipal.btnMantReportesFSCECClick(Sender: TObject);
begin
   If (StrToInt(Copy(DM1.NivelUsuario(DM1.wUsuario), 2, 1)) < 3) Then
   Begin
      MessageDlg('OPCION DISPONIBLE SOLO PARA NIVELES MAYOR O IGUAL A 3!!!', mtInformation, [mbOk], 0);
      Exit;
   End;
   DM1.limpiarTodosCDS();
   SacaMenu(Sender);
   Try
      FMantReportesFSC := TFMantReportesFSC.create(Self);
      FMantReportesFSC.ShowModal;
   Finally
      FMantReportesFSC.Free;
   End;
end;
// FIN HPC_201601_GESCOB

Initialization
   registerclasses([TLabel, TBevel, TppLabel]);
End.
