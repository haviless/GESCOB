// Inicio Uso Estándares: 01/08/2011
// Unidad : Gestión de Cobranzas
// Formulario :
// Fecha de Creación :
// Autor : Equipo de Sistemas
// Objetivo : Data Modulo
// Actualizaciones:
// HPC_201119_GESCOB 19/09/2011 Acuerdo de Atencion 2011-02-V2.0
// HPC_201120_GESCOB 23/11/2011 reporte de direcciones y telefonos de centrales de riesgo
// HPC_201121_GESCOB 20/12/2011 Indicadores de Control de Campañas
// HPC_201201_GESCOB 09/01/2012 Control de Metas por Gestor
// HPC_201205_GESCOB 19/07/2012 agregar formularios modificados
// DPP_201205_GESCOB: Pase a producción a partir de los pases HPC_201205 y HPC_201206

Program GES000;
uses
  Forms,
  Windows,
  Controls,
  Msgdlgs,
  GESDM1 in 'GESDM1.pas' {DM1: TDataModule},
  GES001 in 'GES001.pas' {FPrincipal},
  GES101 in 'GES101.pas' {fParGest},
  GES102 in 'GES102.pas' {fNivUsu},
  GES103 in 'GES103.pas' {fMatrizGestCob},
  GES104 in 'GES104.pas' {fUsuDpto},
  GES105 in 'GES105.pas' {fMatriz},
  GES203 in 'GES203.pas' {fGestInt},
  GES203a in 'GES203a.pas' {fGesIndInt},
  GES203b in 'GES203b.pas' {fDetGest},
  GES203c in 'GES203c.pas' {fMasDatos},
  GES203d in 'GES203d.pas' {fCronoPag},
  GES203e in 'GES203e.pas' {fDetPagos},
  GES203g in 'GES203g.pas' {fSalPagAct},
  GES203h in 'GES203h.pas' {fBusGenAso},
  GES203i in 'GES203i.pas' {fProPago},
  GES203j in 'GES203j.pas' {fObsNSup},
  GES203k in 'GES203k.pas' {fIngObsSup},
  GES203l in 'GES203l.pas' {fInfmImp},
  GES203m in 'GES203m.pas' {fInfDirecc},
  GES203n in 'GES203n.pas' {fRegApor},
  GES203o in 'GES203o.pas' {fAtenVen},
  GES205a in 'GES205a.pas' {fNueAcuerdo},
  GES205b in 'GES205b.pas' {fCronoAcu},
  GES205c in 'GES205c.pas' {fRegPago},
  GES205d in 'GES205d.pas' {fDetPagAcu},
  GES206e in 'GES206e.pas' {fDetGetInd},
  GES206g in 'GES206g.pas' {fInfPlanilla},
  GES210 in 'GES210.pas' {fGestExt},
  GES210a in 'GES210a.pas' {fGesIndExt},
  GES210b in 'GES210b.pas' {fDetGestExt},
  GES210c in 'GES210c.pas' {fLogImpMas},
  GES210d in 'GES210d.pas' {fLogImpMasDetalle},
  GES211 in 'GES211.pas' {FLiberaGes},
  GES212 in 'GES212.pas' {FGenPeriodo},
  GES230 in 'GES230.pas' {fDistCart1},
  GES240 in 'GES240.pas' {fDetRegG},
  GES303 in 'GES303.pas' {fDatReniec},
  GES312 in 'GES312.pas' {fRepConsolidadoAsignacion},
  GES315 in 'GES315.pas' {fDetRepConAsig},
  GES316 in 'GES316.pas' {fRepIngMen},
  GES317 in 'GES317.pas' {fRepIngMenDet},
  COB925 in 'COB925.pas' {fGestCob},
  COB926 in 'COB926.pas' {fCtrlGest},
  COB928 in 'COB928.pas' {fDatGes},
  COB935 in 'COB935.pas' {fDatComple},
  COB944 in 'COB944.pas' {fDistGestion},
  COB945 in 'COB945.pas' {fCamGest},
  COB946 in 'COB946.pas' {fSelGest},
  COB958 in 'COB958.pas' {fGesTel},
  GES318 in 'GES318.pas' {fRptTERPCRE},
  GES319 in 'GES319.pas' {fRptTERPCREDet},
  GES003 in 'GES003.pas' {FCambioContrasena},
  GES002 in 'GES002.pas' {FCtrlAcceso},
  GES320 in 'GES320.pas' {fRptAsoCenEdu},
  GES500 in 'GES500.pas' {FRepGesRealizada},
  GES506 in 'GES506.pas' {FVisRepBas},
  GES501 in 'GES501.pas' {FRepGesRealizadaDet},
  GES511 in 'GES511.pas' {FComCatDet},
  GES510 in 'GES510.pas' {FComCat},
  GES515 in 'GES515.pas' {FCompararTraslados},
  GES516 in 'GES516.pas' {FCompararTrasladosDpto},
  GES517 in 'GES517.pas' {FCompararTrasladosAso},
  GES519 in 'GES519.pas' {FCompararTrasladosTodasGes},
  GES520 in 'GES520.pas' {FDirTelCenRie},
  GES521 in 'GES521.pas' {FDirTelCenRieDet},
  GES314 in 'GES314.pas' {FProgProcCon},
  GES313 in 'GES313.pas' {FProgProcRpteCon},
  GES525 in 'GES525.pas' {FRepControlCampanhas},
  GES526 in 'GES526.pas' {FMantControlCampanhas},
  GES527 in 'GES527.pas' {FMantControlCampanhasUbigeo},
  GES528 in 'GES528.pas' {FMantControlCampanhasMetas},
  GES529 in 'GES529.pas' {FMantControlCampanhasMetasDet},
  GES203p in 'GES203p.pas' {FObservacion},
  GES530 in 'GES530.pas' {FConMetGes},
  GES531 in 'GES531.pas' {FMetGes},
  GES532 in 'GES532.pas' {FConMetGesAvance},
  GES541 in 'GES541.pas' {FDetAsigGestor},
  GES546 in 'GES546.pas' {FRepHojRutDet},
  GES505 in 'GES505.pas' {FProProRepBas},
  GES533 in 'GES533.pas' {FConMetGesDetalle},
  GES540 in 'GES540.pas' {FResAsigGestor},
  GES535 in 'GES535.pas' {FCantidadAsignados},
  GES545 in 'GES545.pas' {FRepHojRut},
  GES550 in 'GES550.pas' {FRepAsiCar},
  GES005 in 'GES005.pas' {FAsigOfiPer},
  GES006 in 'GES006.pas' {FSelOficina},
  GES551 in 'GES551.pas' {FRepAsiCarDet},
  GES536 in 'GES536.pas' {FCantidadIdentificados},
  FSQL in 'FSQL.pas' {FRMSQL},
  GES518 in 'GES518.pas' {FCompararTrasladosGes},
  GES534 in 'GES534.pas' {FConMetGesRes},
  GES555 in 'GES555.pas' {FrmAlertaAcuerdos},
  GES010 in 'GES010.pas' {FrmTipoZona},
  GES560 in 'GES560.pas' {FRepGestor},
  GES562 in 'GES562.pas' {FRepGestorDet},
  GES203r in 'GES203r.pas' {fLibGesInd},
  GES201 in 'GES201.pas' {fSegControl},
  GES202 in 'GES202.pas' {fDetSeguimiento},
  GES207 in 'GES207.pas' {fGestRealizadas},
  GES203s in 'GES203s.pas' {fInfCorreo},
  GES563 in 'GES563.pas' {FControlarImpresionCartas},
  GES564 in 'GES564.pas' {FMantenimientoOficinas},
  GES565 in 'GES565.pas' {FDisAsiCar},
  GES566 in 'GES566.pas' {FMantTiposIncidentes},
  GES567 in 'GES567.pas' {FRegistroIncidencias},
  GES568 in 'GES568.pas' {FResultadosGestion},
  GES569 in 'GES569.pas' {FResultadosGestionDet},
  GES570 in 'GES570.pas' {FHistoricoIngresos},
  GES571 in 'GES571.pas' {FCuadrosComparativoAnalisis},
  GES572 in 'GES572.pas' {FCuadrosComparativoAnalisisDet},
  GES300 in 'GES300.pas' {FrmImportarGestionesInt},
  GES301 in 'GES301.pas' {FrmCambioAsignacionInt},
  GES302 in 'GES302.pas' {FrmImportarAsignacionesInt},
  GES304 in 'GES304.pas' {FrmImportarGestionesExt},
  GES307 in 'GES307.pas' {FLiberarAsignaciones},
  GES308 in 'GES308.pas' {FMantReportesSemanalesMensuales},
  GES309 in 'GES309.pas' {FMantReportesFSC},
  GES573 in 'GES573.pas' {FMantenimientoComision};

{$R *.RES}
Var
   HMutex : THandle;
Begin
   HMutex := CreateMutex(Nil, False, 'OneCopyMutexGES');

   If (WaitForSingleObject(HMutex, 0) <> wait_TimeOut) Then
   Begin
      Application.Initialize;
      Application.Title := 'Gestión De Cobranzas    ';
      Application.CreateForm(TDM1, DM1);
  FCtrlAcceso := TFCtrlAcceso.Create(Nil);
      Try
         If FCtrlAcceso.ShowModal = mrOk Then
            Application.CreateForm(TFPrincipal, FPrincipal);
      Finally
         FCtrlAcceso.Free;
      End;
      Application.Run;
   End
   Else
      ErrorMsg('Modulo de Gestión De Cobranzas', 'El Modulo ya se Encuentra en ejecución');
End.

