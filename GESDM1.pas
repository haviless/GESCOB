// Inicio Uso Estándares: 01/08/2011
// Unidad : Gestión de Cobranzas
// Formulario : DM
// Fecha de Creación :
// Autor : Equipo de Sistemas
// Objetivo : Data Modulo
// Actualizaciones:
// HPP_201112_GESCOB 06/06/2011 Mejoras Internas del Sistema (F4)
// HPC_201117_GESCOB 08/08/2011 Crear Reporte de Gestiones Realizadas(F1)
// HPC_201119_GESCOB 19/09/2011 Acuerdo de Atencion 2011-02-V2.0
// HPC_201120_GESCOB 28/11/2011 reporte de indicadores de efectividad a nivel macro
// HPC_201121_GESCOB 20/12/2011 Indicadores de Control de Campañas
// HPC_201201_GESCOB 09/01/2012 Registrar Hojas de Rutas
// HPC_201202_GESCOB 26/01/2012 Mejoras en calculo e impresion de graficos (pagos >= 50%, estaba como >50%, pero segun el rescate ampliado es >=50%)
// HPC_201203_GESCOB 03/02/2012 crear nivel 0 para consultas
// HPC_201205_GESCOB 06/03/2012 liberar memoria al imprimir los distintos graficos estadisticos
// HPC_201205_GESCOB 09/04/2012 validar el ingreso y la anulacion de los registros en la importacion de gestiones externas
// HPC_201206_GESCOB - F2 21/08/2012 MODIFICAR COMPARACION DE TRASLADO PARA QUE SE ASEMEJE A LA MATRIZ DE TRASLADO DEL MODULO DE RIESGOS
// DPP_201205_GESCOB: Pase a producción a partir de los pases HPC_201205 y HPC_201206
// HPC_201207_GESCOB - F1 12/09/2012 validar control de metas por gestor
// DPP_201206_GESCOB: Pase a producción a partir de los pases HPC_201207
// HPC_201209_GESCOB(F3) 22/10/2012 IMPLEMENTAR NEGOCIACION Y COMPROMISO DE PAGO
// HPC_201303_GESCOB: Se agregó las funciones "verificahorario" y "diferenciafechas"
// SPP_201303_GESCOB: Se realiza el pase a producción a partir del HPC_201303_GESCOB
// HPC_201305_GESCOB: Se crearon nuevos CDS, Reportes por gestores
// SPP_201305_GESCOB: Se realiza el pase a producción a partir del HPC_201305_GESCOB
// SPP_201401_GESCOB: Importacion masiva interna y Mejoras del proceso de priorizacion
// SPP_201401_GESCOB: Se realiza el pase a producción a partir del HPC_201401_GESCOB
// HPC_201402_GESCOB: Información de Contactabilidad (Direcciones, teléfonos y correos electrónicos) (1.9)
// SPP_201402_GESCOB: Se realiza el pase a producción a partir del HPC_201402_GESCOB
// HPC_201403_GESCOB :  Distribución y Asignación de Cartera
// SPP_201404_GESCOB: Se realiza el pase a producción a partir del HPC_201403_GESCOB
// HPC_201502_GESCOB: automatizar la importacion de las asignaciones y gestiones
// HPC_201504_GESCOB : Liberar Deudores en forma masiva y Mantenimiento de Reportes Semanales / Mensuales
// HPC_201703_GESCOB : Mejoras funcionales en el registro de la atención del asociado
Unit GESDM1;

Interface

Uses
   Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   Db, DBClient, MConnect, Wwdatsrc, wwclient, Provider, comctrls,
   StdCtrls, wwdblook, ExtCtrls, Mask, wwdbedit, IniFiles, Buttons, Wwdbdlg,
   wwdbdatetimepicker, DBCtrls, wwSpeedButton, wwDBNavigator, Grids,
   Wwdbigrd, Wwdbgrid, dbiProcs, Wwdotdot, Wwdbcomb,
   variants, RecError, Menus, Math, Excel2000, OleServer, DBGrids,
   // INICIO : HPC_201502_GESCOB
   ExcelXP, Jpeg, (*RxGif,*) IdBaseComponent, IdComponent, IdTCPConnection,
   // FIN : HPC_201502_GESCOB
   // INICIO : SPP_201404_GESCOB
   IdTCPClient, IdFTP, wwExport, SConnect, winsock, shellapi;
   // FIN : SPP_201404_GESCOB

Type
   TPanelGrafico = Class(ExtCtrls.TPanel) // para poder capturar el canvas del TPanel y grabarlo en un archivo
   Public
      Property Canvas;
   End;

   TEDetRepConAsig = (trGestor, trUbigeo, trCalificacion);
   TMFormulario = (tmAdd, tmEdit); // Tipo de formulario : Add(Agregar), Edit(Editar)
   TDM1 = Class(TDataModule)
      DCOM1 : TSocketConnection;
      cdsUsuarios : TwwClientDataSet;
      dsUsuarios : TwwDataSource;
      cdsGrupos : TwwClientDataSet;
      dsGrupos : TwwDataSource;
      cdsMGrupo : TwwClientDataSet;
      dsMGrupo : TwwDataSource;
      cdsAcceso : TwwClientDataSet;
      dsAcceso : TwwDataSource;
      cdsDLabo : TwwClientDataSet;
      dsDLabo : TwwDataSource;
      cdsDFam : TwwClientDataSet;
      dsDFam : TwwDataSource;
      cdsEjecuta : TwwClientDataSet;
      dsEjecuta : TwwDataSource;
      cdsAso : TwwClientDataSet;
      dsAso : TwwDataSource;
      cdsCtasBco : TwwClientDataSet;
      dsCtasBco : TwwDataSource;
      cdsResol : TwwClientDataSet;
      dsResol : TwwDataSource;
      cdsDSocioE : TwwClientDataSet;
      dsDSocioE : TwwDataSource;
      cdsUSES : TwwClientDataSet;
      dsUSES : TwwDataSource;
      cdsUPro : TwwClientDataSet;
      dsUPro : TwwDataSource;
      cdsUPago : TwwClientDataSet;
      dsUPago : TwwDataSource;
      cdsTResol : TwwClientDataSet;
      dsTResol : TwwDataSource;
      cdsTPension : TwwClientDataSet;
      dsTPension : TwwDataSource;
      cdsTAso : TwwClientDataSet;
      dsTAso : TwwDataSource;
      cdsSAso : TwwClientDataSet;
      dsSAso : TwwDataSource;
      cdsCEdu : TwwClientDataSet;
      dsCEdu : TwwDataSource;
      cdsCAso : TwwClientDataSet;
      dsCAso : TwwDataSource;
      cdsTUSE : TwwClientDataSet;
      dsTUSE : TwwDataSource;
      cdsOfDes : TwwClientDataSet;
      dsOfDes : TwwDataSource;
      cdsCViv : TwwClientDataSet;
      dsCViv : TwwDataSource;
      cdsQry : TwwClientDataSet;
      dsQry : TwwDataSource;
      cdsDpto : TwwClientDataSet;
      cdsTVia : TwwClientDataSet;
      cdsDist : TwwClientDataSet;
      cdsTZona : TwwClientDataSet;
      cdsTDoc : TwwClientDataSet;
      cdsUbigeo : TwwClientDataSet;
      cdsProvin : TwwClientDataSet;
      cdsEstCiv : TwwClientDataSet;
      cdsBcos : TwwClientDataSet;
      dsTDoc : TwwDataSource;
      dsEstCiv : TwwDataSource;
      dsUbigeo : TwwDataSource;
      dsProvin : TwwDataSource;
      dsDpto : TwwDataSource;
      dsBcos : TwwDataSource;
      dsTVia : TwwDataSource;
      dsDist : TwwDataSource;
      dsTZona : TwwDataSource;
      cdsPais : TwwClientDataSet;
      dsPais : TwwDataSource;
      cdsGradoI : TwwClientDataSet;
      dsGradoI : TwwDataSource;
      cdsGradoA : TwwClientDataSet;
      dsGradoA : TwwDataSource;
      cdsProf : TwwClientDataSet;
      dsProf : TwwDataSource;
      cdsTRela : TwwClientDataSet;
      cdsCtasAso : TwwClientDataSet;
      dsCtasAso : TwwDataSource;
      cdsAportes : TwwClientDataSet;
      dsAportes : TwwDataSource;
      cdsSexo : TwwClientDataSet;
      dsSexo : TwwDataSource;
      cdsLugNac : TwwClientDataSet;
      dsLugNac : TwwDataSource;
      cdsTViaTIPVIADES : TStringField;
      cdsTViaTIPVIAID : TStringField;
      cdsTMoneda : TwwClientDataSet;
      cdsRepresentante : TwwClientDataSet;
      cdsCuentas : TwwClientDataSet;
      dsCuentas : TwwDataSource;
      dsTMoneda : TwwDataSource;
      dsRepresentante : TwwDataSource;
      cdsFPago : TwwClientDataSet;
      dsFPago : TwwDataSource;
      cdsDetRegCob : TwwClientDataSet;
      dsDetRegCob : TwwDataSource;
      cdsRegCob : TwwClientDataSet;
      cdsSitRepr : TwwClientDataSet;
      cdsFRepr : TwwClientDataSet;
      dsSitRepr : TwwDataSource;
      dsFRepr : TwwDataSource;
      cdsRepresentante1 : TwwClientDataSet;
      dsRepresentante1 : TwwDataSource;
      cdsSitCta : TwwClientDataSet;
      dsSitCta : TwwDataSource;
      cdsFormaPago : TwwClientDataSet;
      dsFormaPago : TwwDataSource;
      cdsModelo : TwwClientDataSet;
      cdsPlantilla : TwwClientDataSet;
      cdsPlanDet : TwwClientDataSet;
      dsModelo : TwwDataSource;
      dsPlantilla : TwwDataSource;
      dsPlandet : TwwDataSource;
      cdsDetalle : TwwClientDataSet;
      dsDetalle : TwwDataSource;
      cdsCambios : TwwClientDataSet;
      dsCambios : TwwDataSource;
      tbOrigen : TwwClientDataSet;
      ds1 : TwwDataSource;
      cdsEstado : TwwClientDataSet;
      dsEstado : TwwDataSource;
      cdsConvenio : TwwClientDataSet;
      dsConvenio : TwwDataSource;
      cdsCuotas : TwwClientDataSet;
      dsCuotas : TwwDataSource;
      cdsDcuotas : TwwClientDataSet;
      dsDcuotas : TwwDataSource;
      cdsCredito : TwwClientDataSet;
      dsCredito : TwwDataSource;
      CdsCBcos : TwwClientDataSet;
      dsCBcos : TwwDataSource;
      cdsReclamo : TwwClientDataSet;
      dsReclamo : TwwDataSource;
      cdsReclamoDCob : TwwClientDataSet;
      dsReclamoDCob : TwwDataSource;
      cdsTransacciones : TwwClientDataSet;
      dstransacciones : TwwDataSource;
      cdsAsociados1 : TwwClientDataSet;
      dsAsociados1 : TwwDataSource;
      cdsReclamoMotiv : TwwClientDataSet;
      dsReclamoMotiv : TwwDataSource;
      cdsTCredito : TwwClientDataSet;
      dsTcredito : TwwDataSource;
      cdsReclamo1 : TwwClientDataSet;
      dsReclamo1 : TwwDataSource;
      cdsAsoX : TwwClientDataSet;
      dsAsoX : TwwDataSource;
      cdsAsociados : TwwClientDataSet;
      dsAsociados : TwwDataSource;
      cdsDevolucionCob : TwwClientDataSet;
      cdsTransDevol : TwwClientDataSet;
      cdsAgenciaBco : TwwClientDataSet;
      dsAgenciaBco : TwwDataSource;
      cdsTmone : TwwClientDataSet;
      dsTmone : TwwDataSource;
      cdsTtransaccion : TwwClientDataSet;
      cdsReporte : TwwClientDataSet;
      dsReporte : TwwDataSource;
      cdsATransp : TwwClientDataSet;
      cdsRecauda : TwwClientDataSet;
      cdsLiquid : TwwClientDataSet;
      cdsPersRep : TwwClientDataSet;
      dsATransp : TwwDataSource;
      dsRecauda : TwwDataSource;
      dsLiquid : TwwDataSource;
      dsPersRep : TwwDataSource;
      cdsDetRegGlob : TwwClientDataSet;
      dsDetRegGlob : TwwDataSource;
      cdsQry2 : TwwClientDataSet;
      cdsCobxUse : TwwClientDataSet;
      dsCobxUse : TwwDataSource;
      cdsReporte1 : TwwClientDataSet;
      dsReporte1 : TwwDataSource;
      cdsAutdisk : TwwClientDataSet;
      cdsTransferencia : TwwClientDataSet;
      dsTransferencia : TwwDataSource;
      cdsCtaCtes : TwwClientDataSet;
      cdsPeriodo : TwwClientDataSet;
      dsPeriodo : TwwDataSource;
      cdsBancos : TwwClientDataSet;
      dsBancos : TwwDataSource;
      cdsTRecauda : TwwClientDataSet;
      dsTRecauda : TwwDataSource;
      cdsCuentaEst : TwwClientDataSet;
      dsCuentaEst : TwwDataSource;
      cdsPadre : TwwClientDataSet;
      dsPadre : TwwDataSource;
      cdsHijo : TwwClientDataSet;
      dsHijo : TwwDataSource;
      cdsNieto : TwwClientDataSet;
      dsNieto : TwwDataSource;
      cdsDevolucion : TwwClientDataSet;
      cdsCia : TwwClientDataSet;
      cdsSQL : TwwClientDataSet;
      cdsRTransporte : TwwClientDataSet;
      dsRTransporte : TwwDataSource;
      cdsTransporte : TwwClientDataSet;
      dsTransporte : TwwDataSource;
      cdsRRepresentante : TwwClientDataSet;
      dsRRepresentante : TwwDataSource;
      wwDataSource1 : TwwDataSource;
      cdsCCosto : TwwClientDataSet;
      dsCCosto : TwwDataSource;
      cdsBoletaDCob : TwwClientDataSet;
      dsBoletaDCob : TwwDataSource;
      cdsBoletaCob : TwwClientDataSet;
      dsBoletaCob : TwwDataSource;
      cdsconcepto : TwwClientDataSet;
      dsconcepto : TwwDataSource;
      cdsTipBoleta : TwwClientDataSet;
      dsTipBoleta : TwwDataSource;
      cdsReprCtaCte : TwwClientDataSet;
      dsReprCtaCte : TwwDataSource;
      cdssitreclamo : TwwClientDataSet;
      dssitreclamo : TwwDataSource;
      cdsQry3 : TwwClientDataSet;
      dsQry3 : TwwDataSource;
      cdsQry1 : TwwClientDataSet;
      cdsSolicitudes : TwwClientDataSet;
      dsSolicitudes : TwwDataSource;
      cdsListaCred : TwwClientDataSet;
      dsListaCred : TwwDataSource;
      cdsSolicitudA : TwwClientDataSet;
      cdsSolicitud : TwwClientDataSet;
      cdsConcre : TwwClientDataSet;
      dsConcre : TwwDataSource;
      cdsListaCreA : TwwClientDataSet;
      dsListaCreA : TwwDataSource;
      cdsTipCreA : TwwClientDataSet;
      dsTipCreA : TwwDataSource;
      cdsRelCapCuo : TwwClientDataSet;
      dsRelCapCuo : TwwDataSource;
      cdsCompromiso : TwwClientDataSet;
      dsCompromiso : TwwDataSource;
      cdsConsulta : TwwClientDataSet;
      dsConsulta : TwwDataSource;
      cdsParam : TwwClientDataSet;
      dsParam : TwwDataSource;
      cdsCob336 : TwwClientDataSet;
      dsCob336 : TwwDataSource;
      cdsSobrino : TwwClientDataSet;
      dsSobrino : TwwDataSource;
      cdsQry5 : TwwClientDataSet;
      dsqry5 : TwwDataSource;
      cdsResultSet : TwwClientDataSet;
      cdsMovCre : TwwClientDataSet;
      dsMovCre : TwwDataSource;
      cdsAbonoCuotas : TwwClientDataSet;
      dsAbonoCuotas : TwwDataSource;
      cdsUser : TwwClientDataSet;
      cdsBancoEgr : TwwClientDataSet;
      cdsCCBco : TwwClientDataSet;
      dsCCBco : TwwDataSource;
      cdsFormPago : TwwClientDataSet;
      dsFormPago : TwwDataSource;
      cdsRec : TwwClientDataSet;
      dsRec : TwwDataSource;
      cdsClaseAux : TwwClientDataSet;
      cdsAux : TwwClientDataSet;
      cdsTMon : TwwClientDataSet;
      dsTMon : TwwDataSource;
      cdsProvCta : TwwClientDataSet;
      dsProvCta : TwwDataSource;
      cdsEquiv : TwwClientDataSet;
      dsEquiv : TwwDataSource;
      cdsCnpEgr : TwwClientDataSet;
      dsCnpEgr : TwwDataSource;
      cdsFEfec : TwwClientDataSet;
      cdsMovRec : TwwClientDataSet;
      dsMovRec : TwwDataSource;
      cdsDocPago : TwwClientDataSet;
      dsDocPago : TwwDataSource;
      cdsDetRegCob1 : TwwClientDataSet;
      dsDetRegCob1 : TwwDataSource;
      dsQry1 : TwwDataSource;
      dsTtransaccion : TwwDataSource;
      dsDevolucionCob : TwwDataSource;
      dsTransDevol : TwwDataSource;
      dsQry2 : TwwDataSource;
      dsUser : TwwDataSource;
      dsSolicitud : TwwDataSource;
      dsTRela : TwwDataSource;
      dsRegCob : TwwDataSource;
      dsAutdisk : TwwDataSource;
      dsDevolucion : TwwDataSource;
      dsCtaCtes : TwwDataSource;
      dsSolicitudA : TwwDataSource;
      MainMenu1 : TMainMenu;
      ExcelApp : TExcelApplication;
      ExcelBook : TExcelWorkbook;
      WS : TExcelWorksheet;
      cdsQry6 : TwwClientDataSet;
      dsQry6 : TwwDataSource;
      cdsMovCnt1 : TwwClientDataSet;
      dsMovCnt1 : TwwDataSource;
      cdsTipDesem : TwwClientDataSet;
      dsTipdesem : TwwDataSource;
      IdFTP1 : TIdFTP;
      cdsQry7 : TwwClientDataSet;
      dsQry7 : TwwDataSource;
      cdsQry10 : TwwClientDataSet;
      dsQry10 : TwwDataSource;
      cdsQry11 : TwwClientDataSet;
      dsQry11 : TwwDataSource;
      cdsCartas : TwwClientDataSet;
      dsCartas : TwwDataSource;
      cdsGestor : TwwClientDataSet;
      dsGestor : TwwDataSource;
      cdsQryHoraSys : TwwClientDataSet;
      dsQryHoraSys : TwwDataSource;
      cdsQrySalAct : TwwClientDataSet;
      dsQrySalAct : TwwDataSource;
      cdsQryNroAcu : TwwClientDataSet;
      dsQryNroAcu : TwwDataSource;
      cdsQry12 : TwwClientDataSet;
      dsQry12 : TwwDataSource;
      cdsQry13 : TwwClientDataSet;
      dsQry13 : TwwDataSource;
      cdsQry14 : TwwClientDataSet;
      dsQry14 : TwwDataSource;
      cdsQry4 : TwwClientDataSet;
      dsQry4 : TwwDataSource;
      cdsQry8 : TwwClientDataSet;
      dsQry8 : TwwDataSource;
      cdsQryMeta : TwwClientDataSet;
      dsQryMeta : TwwDataSource;
      cdsQry15 : TwwClientDataSet;
      dsQry15 : TwwDataSource;

      cdsGesDetCob: TwwClientDataSet;
      dsGesDetCob: TwwDataSource;
      cdsMotivosLib: TwwClientDataSet;
      dsMotivosLib: TwwDataSource;
      cdsGestores: TwwClientDataSet;
      dsGestores: TwwDataSource;
      cdsCampannas: TwwClientDataSet;
      dsCampannas: TwwDataSource;
      cdsGesCobExiste: TwwClientDataSet;
      dsGesCobExiste: TwwDataSource;
      // INICIO : SPP_201401_GESCOB
      dsColegio: TwwDataSource;
      cdsColegio: TwwClientDataSet;
      // FIN : SPP_201401_GESCOB
      Procedure DataModuleCreate(Sender : TObject);
      Procedure DataModuleDestroy(Sender : TObject);
      Procedure cdsEjecutaReconcileError(DataSet : TCustomClientDataSet;
         E : EReconcileError; UpdateKind : TUpdateKind;
         Var Action : TReconcileAction);
   Private
   Public
      wlGraboGestion : boolean;
      FormatCel : Array Of OleVariant;
      cIP : String;
      widepc : String;
      ideconex : String;
      fechorcon : String;
      wObjetoDescr : String;
      wCodigoError : Integer;
      wObjetoForma : String;
      wObjetoNombr : String;
      wObjetoDesPr : String;
      wGrupoTmp : String;
      wAdmin, wRepFecServ : String;
      wAreaPersonal : String; // variable que toma el nombre de departamento
      wciades : String; // variable que toma el nombre de Compañia
      wComponente : TControl;
      wTipoCambioUsar,
         sClose, wSRV, wTDatos, wModulo,
         wUsuario, wPWDAnt, wGrupo, xSgr : String;
      wIpServer : String;
      wMonedaNac, wMonedaExt, wModo : String;
      wTMonExt, wTMonLoc : String;
      wTCCompra, wTCVenta : String;
      xArea, xCnd, xSal, xGrabaExc, xOfiDes, xNuevo, xMstRn : String;
      JpgFoto, JpgFirma : TJpegImage;
      // INICIO : HPC_201502_GESCOB
      (*GifFoto, GifFirma : TGIFImage;*)
      // FIN : HPC_201502_GESCOB
      StreamFoto, StreamFirma : TMemoryStream;
      VarRefencia, VarGestion : String;
      wOfiNombre, wNivelUsu : String;
      wEsSupervisor : boolean;
      Procedure AbreCDS(xxCds : TwwClientDataSet; xxSelect : String);
      Procedure FiltraTabla(xxCds : TwwClientDataSet; xxArchivo, xxCampo : String);
      Procedure FiltraCDS(xxCds : TwwClientDataSet; xxSQL : String);
      Function CrgDescrip(xCondicion, xTabla, xCampo : String) : String;
      Function Registros(xSQL : String) : Int64;
      Function ConsultaBase : String;
      Function FechaSys(wgFormato : String) : String; Overload;
      Function FechaSys() : tDateTime; Overload;
      Function NivelUsuario(xUser : String) : String;
      Function ConsultaAtenciones : String;
      Procedure HojaExcel(Tit : String; TDs : TDataSource; TDb : TDBGrid);
      Function Valores(Texto : String) : Currency;
      Function DisplayDescrip(wPrv, wTabla, wCampos, wWhere, wResult : String) : String;
      Function RecuperaDatos(xTabla, xCampo, xVariable, xRecupera : String) : String;
      Function SaldoActual(xAsoId, xCreDid, xTip : String) : Currency;
      Procedure CargaCronograma(xAsoId, xCreDid : String);
      Function OperClientDataSet(cdsOrigen : TwwClientDataSet; wExpresion, wCondicion : String) : Double;
      Procedure AccesosUsuarios(xxModulo, xxUsuario, xxTipo, xxForma : String);
      Function FechasOutPut(xFInput : tDateTime) : tDateTime;
      Function BuscaObjeto(Const xNombre : String; xForm : TForm) : TControl;
      Function CrgArea(xUsuario : String) : String;
      Procedure CrgLisFrmPag();
      Procedure MstAcuerdos(xAsoId : String);
      Function UltimoDia(xMes : Integer; xAno : Integer) : String;
      Procedure CargaImagenes;
      Procedure FormatosCeldas(N : Integer; TDs : TDataSource);
      Procedure limpiarTodosCDS;
      Function DesMes(xMes : Integer; xAbr : String) : String;
      Function UsrConsulta(xUsuario : String) : Boolean;
      Function FormatoNumeros(xTexto : String) : String;
      Function FormatoNumerosEnteros(xTexto : String) : String;
      Procedure CargaDatosReniecExt(xDNI : String);
      Function ConsultaActividad : String;
      Procedure CargasLista(xDNI : String);
      Procedure CargaDatosReniec(xDNI : String);
      Function HoraSys : String;
      Procedure OpcionesExportExcel(AOptions : TwwExportOptions);
      Function ConsultaAsignaciones(xFecIni, xFecFin : String) : String;
      Function StrZero(wNumero : String; wLargo : Integer) : String;
      Function CountReg(xSQL : String) : Integer;
      Function ObtenerIpdeNetbios(Host : String) : String;
      Function ComputerName : String;
      Function isAlfanumerico(ICad : String) : boolean;
      Function fn_is_hora_acceso_permitido(wgHoraInicio : integer) : boolean;
      Procedure fn_grabar_img_panel(wgImagen : TImage; wgPanel : TPanel; wgArchivo : String);
      Function fn_get_periodo_gestion_actual : String;
      Procedure fn_ordenar_grilla(Sender : TObject; AFieldName : String);
      Function fn_is_asigno_meta_defecto(xsGestor : String; xsPeriodo : String) : boolean;
      Function verificahorario: Boolean;
      Function diferenciafechas(xdFecIni : TDate; xdFecFin : TDate) : Integer;

      // INICIO : SPP_201401_GESCOB
      Function registrarArchivoImp(ps_periodo: string; ps_usuario: string; ps_tipoImportacion : string; ps_nombreArchivo : string): integer;
      Function actualizarRegistroArchivoImp(pi_IDArchivo: integer; ps_tipoImportacion : string): String;
      Function QuoteStrAll(ps_Cadena: String): String;
      // FIN : SPP_201401_GESCOB
      // INICIO : SPP_201401_GESCOB
      function fn_get_periodo_gestion_anterior(P_PERIODO : string): String;
      // FIN : SPP_201401_GESCOB
      // INICIO :SPP_201402_GESCOB
      function fn_valida_email(p_cadena: string): boolean;
      // FIN :SPP_201402_GESCOB
      // INICIO :SPP_201404_GESCOB
      Procedure fn_exportar_grid(pxDBGrid : TwwDBGrid; psNombre : string);
      procedure fn_ExpXLSLong(xxDataSet: TDataSet; xsFileName: string);      
      function fn_ExpXLS(xxDataSet: TDataSet; xsNombreHoja : string) : OleVariant; overload;
      function fn_ExpXLS(xxDataSet: TDataSet; xsNombreHoja : string;  var pxExcApp: OleVariant) : OleVariant; overload;
      procedure fn_ExpHTML(xxDataSet: TDataSet; xsArchivo : string);
      procedure fn_ExpTXT(xxDataSet: TDataSet; xsArchivo : string);
      procedure fn_ExpXML(xxDataSet: TDataSet; xsArchivo : string);
      procedure fn_ExpDOC(xxDataSet: TDataSet; xsArchivo : string);
      procedure fn_SaveAsCSV(xxDataSet: TDataSet; xsFileName: string);
      procedure fn_CsvToExcel(psArchivoCSV: String);
      function fn_TStrings_String(pxTStrings: TStrings): string;
      procedure fn_cargar_periodos_combo(var pxCombo : TwwDBLookupCombo; var pxCDS : TwwClientDataSet);
      procedure fn_cargar_tipo_cartera_combo(var pxCombo: TwwDBLookupCombo; var pxCDS: TwwClientDataSet);
      // FIN :SPP_201404_GESCOB
      // INICIO : HPC_201502_GESCOB
      procedure fn_exportar_listview(pxListView: TListView);
      function fn_validar_periodo_asignacion_actual(): string;
      // FIN : HPC_201502_GESCOB
      // INICIO HPC_201504_GESCOB
      procedure FG_CONECTA_CDS(var pxCdsQry: TwwClientDataSet; var pxDsQry: TwwDataSource);
      // FIN HPC_201504_GESCOB
   End;
Var
   DM1 : TDM1;
   // Asociado Global
   sCodAsociado : String;
   sCodCartasInt, sCodCartasExt : String; // Gestión interna y externa de cartas
   SRV_E, SRV_D, SRV_V : String;
   xFec_Sis, xHor_Sis, wRutaFTP, wFormatFecha, wFormatHoras, wReplacCeros, wRepFecServi, wRepTimeServi, wRepFuncDate, wRepFuncChar : String;
   wCiaDef, wTipoCambio : String;
   xBorrar : String;
   xLogAsoid, xLogCodMo : Integer;
   wRptCia, wRutaRpt, wUrqCia : String;

Const
   clMejora = TColor($CCFFCC);
   clCaida = TColor($CCCCFF);
   clPermanencia = TColor($FFCCCC);
   clRieNoAplica = TColor($FFFFFF);

   clRie0101 = TColor($003737FF); // ROJO 0000FF
   clRie0102 = TColor($007979FF);
   clRie0103 = TColor($00B9B9FF);

   clRie0201 = TColor($0000F4F4); // AMARILLO 00FFFF
   clRie0202 = TColor($009BFFFF);
   clRie0203 = TColor($00B7FFFF);

   clRie0301 = TColor($00DFFFBF);
   clRie0302 = TColor($00ADFF5B);
   clRie0303 = TColor($0074E800); // VERDE 008000

Implementation

Uses GES001, GES203d, GES203a, GES210a, GES303
    ,GES531
    // INICIO : SPP_201401_GESCOB
// INICIO : SPP_201404_GESCOB
    ,StrUtils,
    dbWeb, ComObj, XMLDoc, XMLIntf;
// FIN : SPP_201404_GESCOB
    // FIN : SPP_201401_GESCOB

{$R *.DFM}

Procedure TDM1.DataModuleCreate(Sender : TObject);
Var
   IniFile : TIniFile;
   xPortServer : String;
Begin
   // obtiene la direccion IP del servidor
   IniFile := TIniFile.Create('C:\SOLExes\DemaConf.ini');
   wIpServer := IniFile.ReadString('TCPIP', 'ADDRESS', '');
   xPortServer := IniFile.ReadString('TCPIP', 'PORT', '');
   If (Length(Trim(wIpServer)) = 0) Or (Length(Trim(xPortServer)) = 0) Then
   Begin
      Showmessage('No tiene la Direccion de IP/PUERTO del Servidor.');
      Application.Terminate;
   End;

   // coloca el ip del servidor
   DM1.DCOM1.Address := wIpServer;
   DM1.DCOM1.Port := StrToInt(xPortServer);
   Try
      DCOM1.Connected := true;
   Except
      Showmessage('No hay comunicación con el Servidor de Aplicaciones');
      Application.Terminate;
   End;
End;

Function TDM1.CrgDescrip(xCondicion, xTabla, xCampo : String) : String;
Begin
   cdsQry.Close;
   cdsQry.DataRequest('Select * From ' + xTabla + ' Where ' + xCondicion);
   cdsQry.Open;
   If cdsQry.RecordCount = 1 Then
      Result := cdsQry.fieldbyname(xCampo).AsString
   Else
      Result := '';

End;

Function TDM1.Registros(xSQL : String) : Int64;
Var
   xRegistros : Int64;
Begin
   cdsQry2.Close;
   cdsQry2.DataRequest(xSQL);
   cdsQry2.Open;
   If cdsQry2.RecordCount > 0 Then
   Begin
      xRegistros := cdsQry2.RecordCount;
   End
   Else
   Begin
      xRegistros := 0;
   End;
   cdsQry2.Close;
   Result := xRegistros;
End;

Function TDM1.ConsultaBase : String;
Begin
   Result := 'SELECT DIAS_O,DIAS,OFDESID,OFDESNOM,USENOM,ASOTIPID, ' +
      'SUM(NUMASO) NUMASO,SUM(ASIGNADO_N) ASIGNADO_N,SUM(ASIGNADO_S) ASIGNADO_S,SUM(SALTOT) SALTOT, ' +
      'SUM(SALVEN) SALVEN,SUM(SALPEN) SALPEN FROM (SELECT DIASTRANS,A.OFDESID,OFDESNOM,A.UPROID,A.UPAGOID, ' +
      'A.USEID,C.USENOM,ASOTIPID,1 NUMASO,NVL(SALTOT,0) SALTOT,NVL(SALVEN,0) SALVEN, ' +
      'NVL(SALPEN,0) SALPEN,NVL(ESTGES,''00'') ESTGES, CASE WHEN DIASTRANS BETWEEN  9 AND  31 THEN ''A''  ' +
      'WHEN DIASTRANS BETWEEN 32 AND  62 THEN ''B'' WHEN DIASTRANS BETWEEN 63 AND  93 THEN ''C''  ' +
      'WHEN DIASTRANS BETWEEN 94 AND 123 THEN ''D'' WHEN DIASTRANS > 123 THEN ''E'' END DIAS_O,   ' +
      'CASE WHEN DIASTRANS BETWEEN  9 AND  31 THEN ''DE  9 A  31 DIAS'' WHEN DIASTRANS BETWEEN 32 AND  62 THEN ''DE 32 A  62 DIAS'' ' +
      'WHEN DIASTRANS BETWEEN 63 AND  93 THEN ''DE 63 A  93 DIAS''  WHEN DIASTRANS BETWEEN 94 AND 123 THEN ''DE 94 A 123 DIAS'' ' +
      'WHEN DIASTRANS > 123 THEN ''DE 124 DIAS A MAS'' END DIAS, CASE WHEN NVL(ESTGES,''00'')= ''00'' THEN 1 ELSE 0 END ASIGNADO_N, ' +
      'CASE WHEN NVL(ESTGES,''00'')<>''00'' THEN 1 ELSE 0 END ASIGNADO_S FROM GES_COB_CAB A,APO110 B,APO101 C ' +
      'WHERE A.OFDESID=B.OFDESID(+) AND A.UPROID=C.UPROID(+) AND A.UPAGOID=C.UPAGOID(+) AND A.USEID=C.USEID(+) AND NVL(DIASTRANS,0)>8 ) ' +
      'GROUP BY DIAS_O,DIAS,OFDESID,OFDESNOM,USENOM,ASOTIPID';
End;

//******************************************************************************
// Nombre : FechaSys
// Descripcion : Obtener la fecha del sistema de acuerdo al formato que se pasa
//               como parametro. El resultado se obtiene en una cadena.
//               Si se le pasa como parametro una cadena vacia, tomara como
//               formato 'DD/MM/YYYY HH24:MI:SS'
//******************************************************************************

Function TDM1.FechaSys(wgFormato : String) : String;
Var
   xsFormato : String;
Begin
   If wgFormato = '' Then
      xsFormato := 'DD/MM/YYYY HH24:MI:SS'
   Else
      xsFormato := wgFormato;
   cdsQry.Close;
   cdsQry.DataRequest('SELECT TO_CHAR(SYSDATE,''' + xsFormato + ''') AS FECHA FROM DUAL');
   cdsQry.Open;
   If cdsQry.RecordCount > 0 Then
      Result := cdsQry.fieldbyname('FECHA').AsString
   Else
      Result := '';
   cdsQry.Close;
End;

Function TDM1.FechaSys : tDateTime;
Var
   FormatoFecha : PChar;
Begin
   FormatoFecha := 'dd/MM/yyyy';
   SetLocaleInfo(LOCALE_SYSTEM_DEFAULT, LOCALE_SSHORTDATE, FormatoFecha);
   cdsAux.Close;
   cdsAux.DataRequest('SELECT TO_CHAR(SYSDATE,''dd/mm/yyyy'') AS FECHA FROM DUAL');
   cdsAux.Open;
   If cdsAux.RecordCount > 0 Then
      Result := FechasOutPut(cdsAux.fieldbyname('FECHA').AsDateTime)
   Else
      Result := FechasOutPut(Date);
   cdsAux.Close;
End;

Function TDM1.NivelUsuario(xUser : String) : String;
Var
   xSQL : String;
Begin
   xSQL := 'SELECT USERNIV FROM GES_NIV_USU_OTO WHERE USERID=' + QuotedStr(xUser);
   DM1.cdsNieto.Close;
   DM1.cdsNieto.DataRequest(xSQL);
   DM1.cdsNieto.Open;
   Result := '';
   If DM1.cdsNieto.RecordCount > 0 Then
   Begin
      Result := DM1.cdsNieto.FieldByName('USERNIV').AsString;
   End;
   DM1.cdsNieto.Close;
End;

Function TDM1.ConsultaAtenciones : String;
Begin
   Result := 'SELECT CODATE,DESCRIPCION,USUARIO,USERNOM,FREG,1 REGISTROS '
      + '       FROM (SELECT CODATE,DESCRIPCION,ASOID,ASOAPENOM,ASODNI,OBSATE, A.USUARIO,HREG,FREG '
      + '               FROM COB_ATE_ASO A, GES_REF_SEG_DET B '
      + '              WHERE A.CODATE = B.IDGTNDET(+) AND B.IDGTN=''02'')  A,TGE006 B '
      + '      WHERE A.USUARIO=B.USERID(+) ';

End;

//******************************************************************************
// Nombre : HojaExcel
// Descripcion : Exportar datagrid a un archivo de excel
//******************************************************************************

Procedure TDM1.HojaExcel(Tit : String; TDs : TDataSource; TDb : TDBGrid);
Var
   Lcid, C, CH, CH1, I, W, X, Y, TotHoja : Integer;
   Bk : TBookmarkStr;
   Tabla : Variant;
   L, A : OleVariant;
   HH : Extended;
Begin
   If Not TDs.DataSet.Active Then Exit;
   If TDs.DataSet.RecordCount = 0 Then Exit;

   Lcid := GetUserDefaultLCID;
   C := TDb.Columns.Count;
   CH := 1;
   If TDs.DataSet.RecordCount > 65000 Then
   Begin
      HH := TDs.DataSet.RecordCount / 65000;
      CH := Trunc(HH);
      If Frac(HH) > 0 Then CH := CH + 1;
   End;

   ExcelApp.Visible[Lcid] := True;
   ExcelApp.Caption := 'Consultas en EXCEL';
   ExcelBook.ConnectTo(ExcelApp.Workbooks.Add(1, Lcid));
   If CH > 1 Then
   Begin
      ExcelBook.Worksheets.Add(NULL, NULL, (CH - 1), NULL, Lcid);
      For I := 1 To CH Do
      Begin
         WS.ConnectTo(ExcelBook.Worksheets[I] As _Worksheet);
         WS.Name := Tit + '_' + IntToStr(I);
      End;
   End;

   WS.ConnectTo(ExcelBook.Worksheets[1] As _Worksheet);
   WS.Activate(Lcid);
   If CH = 1 Then WS.Name := Tit;
   ExcelApp.ScreenUpdating[Lcid] := False;
   For X := 1 To CH Do
   Begin
      WS.ConnectTo(ExcelBook.Worksheets[X] As _Worksheet);
      WS.Activate(Lcid);
      For I := 0 To (C - 1) Do
      Begin
         L := WS.Cells.Item[1, I + 1];
         WS.Range[L, L].Value2 := TDb.Columns[I].Title.Caption;
      End;
   End;

   WS.ConnectTo(ExcelBook.Worksheets[1] As _Worksheet);
   WS.Activate(Lcid);

   CH1 := 1;
   W := 2;
   I := 1;
   Y := 1;
   TotHoja := 0;
   TDs.DataSet.DisableControls;
   Bk := TDs.DataSet.Bookmark;

   Tabla := VarArrayCreate([1, 5000, 0, C], varVariant);
   TDs.DataSet.First;
   While Not TDs.DataSet.Eof Do
   Begin
      For X := 0 To (C - 1) Do
//Inicio HPC_201703_GESCOB
//Mejoras funcionales en el registro de la atención del asociado
         Tabla[Y, X] := ''''+TDs.DataSet.Fields[X].AsString;
//Fin HPC_201703_GESCOB
      If Y = 5000 Then
      Begin
         L := 'A' + IntToStr(W);
         WS.Range[L, WS.Cells.Item[I + 1, C]].Value2 := Tabla;
         Try
            Tabla := Unassigned;
         Finally
            Tabla := VarArrayCreate([1, 5000, 0, C], varVariant);
         End;

         Y := 0;
         W := I + 2;
      End;
      Inc(Y, 1);
      Inc(I, 1);
      Inc(TotHoja, 1);
      If TotHoja = 65000 Then
      Begin
         L := 'A' + IntToStr(W);
         WS.Range[L, WS.Cells.Item[I, C]].Value2 := Tabla;

         Try
            Tabla := Unassigned;
         Finally
            Tabla := VarArrayCreate([1, 5000, 0, C], varVariant);
         End;

         CH1 := CH1 + 1;
         WS.ConnectTo(ExcelBook.Worksheets[CH1] As _Worksheet);
         WS.Activate(Lcid);

         Y := 1;
         W := 2;
         I := 1;
         TotHoja := 0;
      End;
      Application.ProcessMessages;
      TDs.DataSet.Next;
   End;
   CH1 := I;
   Try
      WS.Range['A' + IntToStr(W), WS.Cells.Item[CH1, C]].Value2 := Tabla;
   Finally
      Tabla := Unassigned;
   End;
   For X := 1 To CH Do
   Begin
      WS.ConnectTo(ExcelBook.Worksheets[X] As _Worksheet);
      WS.Activate(Lcid);

      SetLength(FormatCel, C + 1);
      FormatosCeldas(C, TDs);
      For I := 1 To C Do
      Begin
         L := WS.Cells.Item[1, I];
         WS.Range[L, L].EntireColumn.NumberFormat := FormatCel[I];
      End;

      For I := 0 To (C - 1) Do
      Begin
         L := WS.Cells.Item[1, I + 1];
         Y := TDs.DataSet.Fields[I].DisplayWidth;
         If Length(TDb.Columns[I].Title.Caption) > Y Then
            Y := Length(TDb.Columns[I].Title.Caption);
         WS.Range[L, L].EntireColumn.ColumnWidth := Y + 2;
         If TDb.Columns[I].Alignment = taLeftJustify Then A := 2;
         If TDb.Columns[I].Alignment = taCenter Then A := 3;
         If TDb.Columns[I].Alignment = taRightJustify Then A := 4;
         WS.Range[L, L].EntireColumn.HorizontalAlignment := A;
      End;

      L := WS.Cells.Item[1, C];
      WS.Range['A1', L].HorizontalAlignment := 3;
      WS.Range['A1', L].Interior.Color := clMaroon;
      WS.Range['A1', L].Font.Color := clWhite;
      WS.Range['A1', L].Font.Bold := True;

      If CH = 1 Then
         W := TDs.DataSet.RecordCount + 1
      Else
         If (CH > 1) And (X < CH) Then
            W := 65001
         Else
            If (CH > 1) And (X = CH) Then W := CH1;

      WS.PageSetup.PrintGridlines := True;
      WS.PageSetup.PrintTitleRows := '1:1';

      WS.DefaultInterface.Set_DisplayAutomaticPageBreaks(Lcid, True);
   End;

   WS.ConnectTo(ExcelBook.Worksheets[1] As _Worksheet);
   WS.Activate(Lcid);

   ExcelApp.ScreenUpdating[Lcid] := True;

   TDs.DataSet.EnableControls;
   TDs.DataSet.Bookmark := Bk;

End;

Function TDM1.ConsultaAsignaciones(xFecIni, xFecFin : String) : String;
Var
   xSQL, xFecIniGes, xFecFinGes : String;
Begin
   xSQL := 'SELECT MIN(FECHA) FECINI,MAX(FECHA) FECFIN FROM GES_COB_SEG WHERE ' +
      'ASOID IN (SELECT ASOID FROM GES_COB_IND WHERE TO_DATE(TO_CHAR(FECASIG,''DD/MM/YYYY''))  ' +
      'BETWEEN ' + QuotedStr(xFecIni) + ' AND ' + QuotedStr(xFecFin) + ') AND IDGESTIONDET IN (''103'',''105'',''107'',''110'',''111'',''112'')';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSQL);
   DM1.cdsQry.Open;
   xFecIniGes := '';
   xFecFinGes := '';
   If DM1.cdsQry.RecordCount > 0 Then
   Begin
      xFecIniGes := DM1.cdsQry.FieldByName('FECINI').AsString;
      xFecFinGes := DM1.cdsQry.FieldByName('FECFIN').AsString;
   End;
   DM1.cdsQry.Close;
   Result := 'SELECT DESCAT,FECASIG,USUARIO,OFDESNOM,ASOTIPID,SUM(REGISTROS) REGTOT, ' +
      'SUM(SALDOS_FT) SALDOS_FT,SUM(SALDOS_FV) SALDOS_FV,SUM(SALDOS_FP) SALDOS_FP, ' +
      'NVL(SUM(NUMGES),0) NUMGES,NVL(SUM(EFE),0) EFE,NVL(SUM(BAN),0) BAN,NVL(SUM(NUMEFE),0) NUMEFE,  ' +
      'NVL(SUM(NUMBAN),0) NUMBAN, NVL(SUM(NUMBAN),0)+NVL(SUM(NUMEFE),0) NUMTOT, NVL(SUM(BAN),0)+NVL(SUM(EFE),0) MONTOT ' +
      'FROM (SELECT CATEGORIA,DESCAT,FECASIG,USUARIO,OFDESID,OFDESNOM,ASOTIPID,SALDOS_FT,SALDOS_FV,SALDOS_FP,REGISTROS, ' +
      'NUMGES,EFE,BAN,NUMEFE,NUMBAN FROM (SELECT CASE WHEN A.DIASTRANS BETWEEN 9 AND 31 THEN ''A'' WHEN A.DIASTRANS BETWEEN 32 AND 62 THEN ''B'' ' +
      'WHEN A.DIASTRANS BETWEEN 63 AND 93 THEN ''C'' WHEN A.DIASTRANS BETWEEN 94 AND 123 THEN ''D'' WHEN A.DIASTRANS > 123 THEN ''E'' END CATEGORIA, ' +
      'CASE WHEN A.DIASTRANS BETWEEN 9 AND 31 THEN ''DE 9 A 31 DIAS'' WHEN A.DIASTRANS BETWEEN 32 AND 62 THEN ''DE 32 A 62 DIAS'' ' +
      'WHEN A.DIASTRANS BETWEEN 63 AND 93 THEN ''DE 63 A 93 DIAS'' WHEN A.DIASTRANS BETWEEN 94 AND 123 THEN ''DE 94 A 123 DIAS'' ' +
      'WHEN A.DIASTRANS > 123 THEN ''MAS DE 124 DIAS'' END DESCAT, A.DIASTRANS,A.ASOID,A.USUARIO,TO_DATE(TO_CHAR(FECASIG,''DD/MM/YYYY'')) FECASIG,A.OFDESID,E.OFDESNOM, ' +
      'A.ASOTIPID,1 REGISTROS,B.SALDOS_FT,B.SALDOS_FP,B.SALDOS_FV, A.SALTOT,A.SALPEN,A.SALVEN,IDGESTIONDET, CASE WHEN IDGESTIONDET IS NOT NULL THEN ''SG'' ELSE ''NG'' END GESTION, ' +
      'CASE WHEN IDGESTIONDET IS NOT NULL THEN 1 ELSE 0 END NUMGES,C.FECHA FECGES,D.EFE,D.BAN,D.NUMEFE,D.NUMBAN FROM GES_COB_IND A,GES_COB_CAB B, (SELECT ASOID,MAX(IDGESTIONDET) IDGESTIONDET,MIN(FECHA) FECHA ' +
      'FROM GES_COB_SEG WHERE IDGESTIONDET  IN (''103'',''105'',''107'',''110'',''111'',''112'') GROUP BY ASOID) C, ' +
      '(SELECT ASOID,SUM(EFE) EFE,SUM(NUMEFE) NUMEFE,SUM(BAN) BAN,SUM(NUMBAN) NUMBAN FROM (SELECT ASOID,CREFPAG,FORPAGID,FORPAGABR,SUM(CREMTOCOB) CREMTOCOB, CASE WHEN FORPAGID=''02'' THEN  SUM(CREMTOCOB) ELSE 0 END EFE, ' +
      'CASE WHEN FORPAGID=''02'' AND SUM(CREMTOCOB)>0 THEN 1 ELSE 0 END NUMEFE, CASE WHEN FORPAGID=''03'' THEN  SUM(CREMTOCOB) ELSE 0 END BAN, CASE WHEN FORPAGID=''03'' AND SUM(CREMTOCOB)>0 THEN 1 ELSE 0 END NUMBAN ' +
      'FROM CRE310 WHERE CREFPAG BETWEEN ' + QuotedStr(xFecIniGes) + ' AND ' + QuotedStr(xFecFinGes) + ' AND  FORPAGID IN (''02'',''03'') AND CREESTID NOT IN (''04'',''13'') AND ASOID IN ' +
      '(SELECT ASOID FROM GES_COB_SEG WHERE FECHA BETWEEN ' + QuotedStr(xFecIniGes) + ' AND ' + QuotedStr(xFecFinGes) + ') ' +
      'GROUP BY ASOID,CREFPAG,FORPAGID,FORPAGABR) GROUP BY ASOID) D,APO110 E WHERE A.ASOID=B.ASOID(+) AND A.ASOID=C.ASOID(+) ' +
      'AND A.ASOID=D.ASOID(+) AND A.OFDESID=E.OFDESID(+))) WHERE FECASIG ' +
      'BETWEEN ' + QuotedStr(xFecIni) + ' AND ' + QuotedStr(xFecFin) + ' ' +
      'GROUP BY DESCAT,USUARIO,FECASIG,OFDESNOM,ASOTIPID ORDER BY DESCAT,USUARIO,FECASIG,OFDESNOM,ASOTIPID ';

End;

Function TDM1.StrZero(wNumero : String; wLargo : Integer) : String;
Var
   i : integer;
   s, xTemp : String;
Begin
   s := '';
   For i := 1 To wLargo Do
      s := s + '0';
   s := s + trim(wNumero);
   xTemp := copy(s, length(s) - (wLargo - 1), wLargo);
   result := xTemp;
End;

Function TDM1.Valores(Texto : String) : Currency;
Var
   xMont, xValor : String;
   I : Integer;
Begin
   For I := 1 To Length(Trim(Texto)) Do
   Begin
      xMont := Copy(Texto, I, 1);
      If xMont <> ',' Then
         xValor := Trim(xValor) + Trim(xMont);
   End;
   Result := StrToFloat(xValor);
End;

Procedure TDM1.OpcionesExportExcel(AOptions : TwwExportOptions);
Begin
   AOptions.Options := [esoDblQuoteFields, esoShowFooter];
   AOptions.Options := AOptions.Options + [esoShowTitle];
   AOptions.Options := AOptions.Options + [esoShowHeader];
   AOptions.Options := AOptions.Options + [esoShowRecordNo];
   AOptions.Options := AOptions.Options + [esoEmbedURL];
   AOptions.Options := AOptions.Options + [esoDynamicColors];
   AOptions.Options := AOptions.Options + [esoShowAlternating];
End;

Function TDM1.HoraSys : String;
Begin
   cdsQryHoraSys.Close;
   cdsQryHoraSys.DataRequest('SELECT TO_CHAR(SYSDATE,''HH24:MI:SS'') AS HORA FROM DUAL');
   cdsQryHoraSys.Open;
   If cdsQryHoraSys.RecordCount > 0 Then
      Result := cdsQryHoraSys.fieldbyname('HORA').AsString
   Else
      Result := '';
   cdsQryHoraSys.Close;

End;

Function TDM1.CountReg(xSQL : String) : Integer;
Var
   xCount : Integer;
Begin
   cdsQry.Close;
   cdsQry.DataRequest(xSQL);
   cdsQry.Open;
   xCount := cdsQry.RecordCount;
   cdsQry.Close;
   Result := xCount;

End;

Function TDM1.DisplayDescrip(wPrv, wTabla, wCampos, wWhere, wResult : String) : String;
Var
   xSQL : String;
Begin
   xSQL := '';
   xSQL := 'SELECT ' + wCampos + ' FROM ' + wTabla;
   If length(wWhere) > 0 Then xSQL := xSQL + ' WHERE ' + wWhere;
   cdsQry.Close;
   cdsQry.IndexFieldNames := '';
   cdsQry.DataRequest(xSQL);
   cdsQry.Open;
   result := cdsQry.FieldByName(wResult).Asstring;
End;

Function TDM1.RecuperaDatos(xTabla, xCampo, xVariable, xRecupera : String) : String;
Begin
   cdsQry2.Close;
   cdsQry2.DataRequest('Select * From ' + xTabla + ' WHERE ' + xCampo + '=' + QuotedStr(Trim(xVariable)));
   cdsQry2.Open;
   If cdsQry2.RecordCount = 1 Then
      Result := cdsQry2.fieldbyname(xRecupera).AsString
   Else
      Result := '';
   cdsQry2.Close;

End;

Function TDM1.SaldoActual(xAsoId, xCreDid, xTip : String) : Currency;
Var
   xSaldo : Currency;
Begin
   xSaldo := 0;
   cdsQrySalAct.Close;
   If xTip = '0' Then
      cdsQrySalAct.DataRequest('SELECT ASOID,CREDID,CREMTOCOB,CREMTO FROM CRE302 Where ASOID =' + QuotedStr(Trim(xAsoId)) + ' And CREDID=' + QuotedStr(Trim(xCreDid)) + ' And CREESTID IN (''02'',''11'',''27'',''14'')')
   Else
      cdsQrySalAct.DataRequest('SELECT ASOID,CREDID,CREMTOCOB,CREMTO FROM CRE302 Where ASOID =' + QuotedStr(Trim(xAsoId)) + ' And CREDID=' + QuotedStr(Trim(xCreDid)) + ' And CREESTID IN (''02'',''11'',''27'') ');

   cdsQrySalAct.Open;
   If cdsQrySalAct.RecordCount > 0 Then
   Begin
      cdsQrySalAct.First;
      While Not cdsQrySalAct.Eof Do
      Begin
         xSaldo := xSaldo + (cdsQrySalAct.fieldbyname('CREMTO').AsFloat - cdsQrySalAct.fieldbyname('CREMTOCOB').AsFloat);
         cdsQrySalAct.Next;
      End;
   End;
   Result := xSaldo;
   cdsQrySalAct.Close;
End;

Procedure TDM1.CargaDatosReniec(xDNI : String);
Var
   xSQL : String;
Begin
   JpgFoto := Nil;
   StreamFoto := Nil;
   JpgFirma := Nil;
   StreamFirma := Nil;
   xSQL := 'SELECT DNI, NUMLIB, APEPAT, APEMAT, NOMBRE, OTRDOC, LUGNAC, NOMPAD, NOMMAD, FECNAC, ' +
      'ESTATURA, SEXO, ESTCIV, GRAINS, LUGDOM, RESTRICCIONES, FECINS, STAVOT, FECEMIDOC, ' +
      'DIRECCION, FOTO, FIRMA, USUACT, FECACT, OFIACT, EQUUSU FROM INF_RENIEC_CAP WHERE DNI=' + QuotedStr(xDNI) + ' AND ' +
      'FECACT IN (SELECT MAX(FECACT) FROM INF_RENIEC_CAP WHERE DNI=' + QuotedStr(xDNI) + ' ) ';
   DM1.cdsQry4.Close;
   DM1.cdsQry4.DataRequest(xSQL);
   DM1.cdsQry4.Open;
   If DM1.cdsQry4.RecordCount = 1 Then
   Begin
      DM1.CargaImagenes;
      If xMstRn = 'Sol' Then
      Begin
      End
      Else
         If xMstRn = 'Cuo' Then
         Begin
         End
         Else
            If xMstRn = 'Ges' Then
            Begin
               fGesIndInt.ImagAso.Picture.Assign(DM1.JpgFoto);
               fGesIndInt.ImaFirma.Picture.Assign(DM1.JpgFirma);
            End
            Else
               If xMstRn = 'Efe' Then
               Begin
               End;
   End;

   DM1.cdsQry4.Close;
End;

Procedure TDM1.CargaCronograma(xAsoId, xCreDid : String);
Var
   xCondicion : String;
Begin
   cdsAso.Close;
   cdsAso.DataRequest('SELECT * FROM APO201 WHERE ASOID=' + QuotedStr(xAsoId) + ' ');
   cdsAso.Open;
   cdsCuotas.Close;
   cdsCuotas.DataRequest('SELECT ASOID,CREDID,CREANO,CREMES,CREFVEN,CREFVENINI,CRECAPITAL,CREMTOINT,CREMTOFLAT,NVL(CREMTOCOB,0) AS CREMTOCOB,NVL(CREMTO,0) AS CREMTO,CRECUOTA,CREESTADO,CREESTID,CREAMORT,CREFLAT,FLAGVAR,PERCOB FROM CRE302 Where ASOID =' + QuotedStr(Trim(xAsoId)) + ' And CREDID=' + QuotedStr(Trim(xCreDid)) + '   Order By CREDID,CRECUOTA ');
   cdsCuotas.Open;
   TNumericField(cdsCuotas.fieldbyname('CRECAPITAL')).DisplayFormat := '###,###.#0';
   TNumericField(cdsCuotas.fieldbyname('CREMTOINT')).DisplayFormat := '###,###.#0';
   TNumericField(cdsCuotas.fieldbyname('CREMTOFLAT')).DisplayFormat := '###,###.#0';
   TNumericField(cdsCuotas.fieldbyname('CREMTOCOB')).DisplayFormat := '###,###.#0';
   TNumericField(cdsCuotas.fieldbyname('CREMTO')).DisplayFormat := '###,###.#0';
   fCronoPag.EdtCodMod.Text := DM1.cdsSolicitud.FieldByName('ASOCODMOD').AsString;
   fCronoPag.EdtFecPre.Text := DM1.cdsSolicitud.FieldByName('CREFOTORG').asString;
   fCronoPag.EdtFecDes.Text := DM1.cdsSolicitud.FieldByName('CREFDES').asString;
   fCronoPag.EdtMonto.Text := FormatFloat('###,###.#0', DM1.cdsSolicitud.FieldByName('CREMTOOTOR').AsFloat);
   xCondicion := 'UPROID=' + QuotedStr(Trim(DM1.cdsAso.fieldbyname('UPROID').AsString)) + ' AND USEID=' + QuotedStr(Trim(DM1.cdsAso.fieldbyname('USEID').AsString)) + ' AND UPAGOID=' + QuotedStr(Trim(DM1.cdsAso.fieldbyname('UPAGOID').AsString));
   fCronoPag.EdtDesUse.Text := DM1.cdsAso.fieldbyname('USEID').AsString + ' - ' + DM1.CrgDescrip(xCondicion, 'APO101', 'USENOM');
   fCronoPag.EdtCreDid.Text := DM1.cdsSolicitud.FieldByName('CREDID').AsString;
   If DM1.cdsSolicitud.FieldByName('TMONID').AsString = 'N' Then
      fCronoPag.EdtMoneda.Text := 'S/.'
   Else
      fCronoPag.EdtMoneda.Text := 'US$';
   fCronoPag.EdtNumCuo.Text := DM1.cdsSolicitud.FieldByName('CRENUMCUO').AsString;
   fCronoPag.EdtNomGen.Text := DM1.cdsAso.FieldByName('ASOAPENOMDNI').AsString;
   xCondicion := 'TIPCREID=' + QuotedStr(Trim(DM1.cdsSolicitud.FieldByName('TIPCREID').AsString));
   fCronoPag.EdtDesTip.Text := DM1.cdsSolicitud.FieldByName('TIPCREID').AsString + ' - ' + DM1.CrgDescrip(xCondicion, 'CRE110', 'TIPCREDES');
   fCronoPag.lblEstado.Caption := DM1.cdsSolicitud.fieldbyname('CREESTADO').AsString;
   xCondicion := 'ASOID=' + QuotedStr(Trim(DM1.cdsSolicitud.fieldbyname('ASOID').AsString)) + ' AND CREDID=' + QuotedStr(Trim(DM1.cdsSolicitud.fieldbyname('CREDID').AsString));
   fCronoPag.EdtTipDes.Text := DM1.CrgDescrip('FORPAGOID=' + QuotedStr(DM1.CrgDescrip(xCondicion, 'CRE301', 'FORPAGOID')), 'COB101', 'FORPAGODES');

End;

Procedure TDM1.CargasLista(xDNI : String);
Var
   xSQL : String;
Begin
   xSQL := 'SELECT DNI, NUMLIB, APEPAT, APEMAT, NOMBRE, OTRDOC, LUGNAC, NOMPAD, NOMMAD, FECNAC, ' +
      'ESTATURA, SEXO, ESTCIV, GRAINS, LUGDOM, RESTRICCIONES, FECINS, STAVOT, FECEMIDOC, ' +
      'DIRECCION, FOTO, FIRMA, USUACT, FECACT, OFIACT, EQUUSU FROM INF_RENIEC_CAP WHERE DNI=' + QuotedStr(xDNI) + ' AND ' +
      'FECACT IN (SELECT MAX(FECACT) FROM INF_RENIEC_CAP WHERE DNI=' + QuotedStr(xDNI) + ' ) ';
   DM1.cdsQry5.Close;
   DM1.cdsQry5.DataRequest(xSQL);
   DM1.cdsQry5.Open;
   If DM1.cdsQry5.RecordCount = 1 Then
   Begin
      fDatReniec.ListaDatos.InsertRow('Nro. de Libro', DM1.cdsQry5.FieldByName('NUMLIB').AsString, True);
      fDatReniec.ListaDatos.InsertRow('Libreta Electoral/DNI', DM1.cdsQry5.FieldByName('DNI').AsString, True);
      fDatReniec.ListaDatos.InsertRow('Apellido Paterno', DM1.cdsQry5.FieldByName('APEPAT').AsString, True);
      fDatReniec.ListaDatos.InsertRow('Apellido Materno', DM1.cdsQry5.FieldByName('APEMAT').AsString, True);
      fDatReniec.ListaDatos.InsertRow('Nombres', DM1.cdsQry5.FieldByName('NOMBRE').AsString, True);
      fDatReniec.ListaDatos.InsertRow('Documento Sustentatorio', DM1.cdsQry5.FieldByName('OTRDOC').AsString, True);
      fDatReniec.ListaDatos.InsertRow('Lugar de Nacimiento', DM1.cdsQry5.FieldByName('LUGNAC').AsString, True);
      fDatReniec.ListaDatos.InsertRow('Nombre del Padre', DM1.cdsQry5.FieldByName('NOMPAD').AsString, True);
      fDatReniec.ListaDatos.InsertRow('Nombre de la Madre', DM1.cdsQry5.FieldByName('NOMMAD').AsString, True);
      fDatReniec.ListaDatos.InsertRow('Fecha de Nacimiento', DM1.cdsQry5.FieldByName('FECNAC').AsString, True);
      fDatReniec.ListaDatos.InsertRow('Estatura', DM1.cdsQry5.FieldByName('ESTATURA').AsString, True);
      fDatReniec.ListaDatos.InsertRow('Sexo', DM1.cdsQry5.FieldByName('SEXO').AsString, True);
      fDatReniec.ListaDatos.InsertRow('Estado Civil', DM1.cdsQry5.FieldByName('ESTCIV').AsString, True);
      fDatReniec.ListaDatos.InsertRow('Grado de Instrucción', DM1.cdsQry5.FieldByName('GRAINS').AsString, True);
      fDatReniec.ListaDatos.InsertRow('Lugar de Domicilio', DM1.cdsQry5.FieldByName('LUGDOM').AsString, True);
      fDatReniec.ListaDatos.InsertRow('Restricciones', DM1.cdsQry5.FieldByName('RESTRICCIONES').AsString, True);
      fDatReniec.ListaDatos.InsertRow('Fechade Inscripción', DM1.cdsQry5.FieldByName('FECINS').AsString, True);
      fDatReniec.ListaDatos.InsertRow('Constancia de Votación', DM1.cdsQry5.FieldByName('STAVOT').AsString, True);
      fDatReniec.ListaDatos.InsertRow('Fecha de Emisión Docum.', DM1.cdsQry5.FieldByName('FECEMIDOC').AsString, True);
      fDatReniec.ListaDatos.InsertRow('Dirección', DM1.cdsQry5.FieldByName('DIRECCION').AsString, True);
   End;
   DM1.cdsQry5.Close;

End;

Function TDM1.OperClientDataSet(cdsOrigen : TwwClientDataSet; wExpresion, wCondicion : String) : Double;
Var
   cdsClone : TwwClientDataSet;
   bmk : TBookmark;
   Agg : TAggregate;
Begin
   result := 0;
   If trim(wExpresion) = '' Then Exit;
   bmk := cdsOrigen.GetBookmark;
   cdsClone := TwwClientDataSet.Create(Nil);
   Try
      With cdsClone Do
      Begin
         CloneCursor(cdsOrigen, True);

         Agg := Aggregates.Add;
         Agg.AggregateName := 'OPER';
         Agg.Expression := wExpresion;
         Agg.Active := True;

         If Trim(wCondicion) <> '' Then
         Begin
            Filtered := False;
            Filter := wCondicion;
            Filtered := True;
         End;
         If Aggregates.Items[Aggregates.IndexOf('OPER')].Value <> NULL Then
            result := Aggregates.Items[Aggregates.IndexOf('OPER')].Value;
         Aggregates.Clear;
      End;
      cdsOrigen.GotoBookmark(bmk);
      cdsOrigen.FreeBookmark(bmk);
   Finally
      cdsClone.Free;
   End;
End;

Function TDM1.ConsultaActividad : String;
Begin
   Result := '(SELECT ''01'' IDACT,''TELEFONICA'' DESACT FROM DUAL UNION SELECT ''02'' IDACT,''DOMICILIARIA'' DESACT FROM DUAL) ';
End;

Procedure TDM1.CargaDatosReniecExt(xDNI : String);
Var
   xSQL : String;
Begin
   JpgFoto := Nil;
   StreamFoto := Nil;
   JpgFirma := Nil;
   StreamFirma := Nil;
   xSQL := 'SELECT DNI, NUMLIB, APEPAT, APEMAT, NOMBRE, OTRDOC, LUGNAC, NOMPAD, NOMMAD, FECNAC, ' +
      'ESTATURA, SEXO, ESTCIV, GRAINS, LUGDOM, RESTRICCIONES, FECINS, STAVOT, FECEMIDOC, ' +
      'DIRECCION, FOTO, FIRMA, USUACT, FECACT, OFIACT, EQUUSU FROM INF_RENIEC_CAP WHERE DNI=' + QuotedStr(xDNI) + ' AND ' +
      'FECACT IN (SELECT MAX(FECACT) FROM INF_RENIEC_CAP WHERE DNI=' + QuotedStr(xDNI) + ' ) ';
   DM1.cdsQry4.Close;
   DM1.cdsQry4.DataRequest(xSQL);
   DM1.cdsQry4.Open;
   If DM1.cdsQry4.RecordCount = 1 Then
   Begin
      DM1.CargaImagenes;
      If xMstRn = 'Sol' Then
      Begin
      End
      Else
         If xMstRn = 'Cuo' Then
         Begin
         End
         Else
            If xMstRn = 'Ges' Then
            Begin
               fGesIndExt.ImagAso.Picture.Assign(DM1.JpgFoto);
               fGesIndExt.ImaFirma.Picture.Assign(DM1.JpgFirma);
            End
            Else
               If xMstRn = 'Efe' Then
               Begin
               End;
   End;

   DM1.cdsQry4.Close;
End;

Function TDM1.FormatoNumerosEnteros(xTexto : String) : String;
Begin
   If TRIM(xTexto) <> '' Then
   Begin
      Try
         Result := FormatFloat('###,##0', DM1.Valores(xTexto));
      Except
         Result := '';
      End;
   End
   Else
      Result := '0';
End;

Function TDM1.FormatoNumeros(xTexto : String) : String;
Begin
   Try
      Result := FormatFloat('###,##0.#0', DM1.Valores(xTexto));
   Except
   End;

End;

Function TDM1.UsrConsulta(xUsuario : String) : Boolean;
Var
   xSQL : String;
Begin
   xSQL := 'SELECT USERID,NIVEL FROM USERTABLE WHERE USERID=' + QuotedStr(xUsuario) + ' AND NIVEL=''99'' ';
   DM1.cdsRepresentante.Close;
   DM1.cdsRepresentante.DataRequest(xSQL);
   DM1.cdsRepresentante.Open;
   If DM1.cdsRepresentante.RecordCount > 0 Then
   Begin
      Result := True;
   End
   Else
   Begin
      Result := False;
   End;
   DM1.cdsRepresentante.Close
End;

Function TDM1.DesMes(xMes : Integer; xAbr : String) : String;
Const
   NomMes : Array[1..12] Of String = ('ENERO', 'FEBRERO', 'MARZO', 'ABRIL', 'MAYO', 'JUNIO', 'JULIO', 'AGOSTO', 'SETIEMBRE', 'OCTUBRE', 'NOVIEMBRE', 'DICIEMBRE');
Begin
   If xAbr = 'S' Then
      Result := Copy(NomMes[xMes], 1, 3)
   Else
      Result := NomMes[xMes];
End;

Procedure TDM1.AccesosUsuarios(xxModulo, xxUsuario, xxTipo, xxForma : String);
Begin
   If Trim(cdsUsuarios.FieldByName('GRUPOID').AsString) = '' Then
   Begin
      cdsUsuarios.SetKey;
      cdsUsuarios.FieldByName('USERID').AsString := xxUsuario;
      If Not cdsUsuarios.GotoKey Then Exit;
   End;

   DM1.cdsGrupos.Filter := '';
   If xxTipo = '1' Then
   Begin
      cdsGrupos.Filter := 'GRUPOID=' + '''' + cdsUsuarios.FieldByName('GRUPOID').AsString + '''' + ' AND '
         + 'MODULOID=' + '''' + xxModulo + '''' + ' AND '
         + 'TIPO=' + '''' + xxTipo + '''';
      cdsGrupos.Filtered := True;
      cdsGrupos.First;
      While Not cdsGrupos.Eof Do
      Begin
         wComponente := BuscaObjeto(cdsGrupos.FieldByName('OBJETO').AsString, Screen.ActiveForm);
         wComponente.Enabled := False;
         cdsGrupos.Next;
      End;
   End;

   If xxTipo = '2' Then
   Begin
      cdsGrupos.Filter := 'GRUPOID=' + '''' + cdsUsuarios.FieldByName('GRUPOID').AsString + '''' + ' AND '
         + 'MODULOID=' + '''' + xxModulo + '''' + ' AND '
         + 'FORMA=' + '''' + xxForma + '''' + ' AND '
         + 'TIPO=' + '''' + xxTipo + '''';
      cdsGrupos.Filtered := True;
      cdsGrupos.First;
      While Not cdsGrupos.Eof Do
      Begin
         wComponente := BuscaObjeto(cdsGrupos.FieldByName('OBJETO').AsString, Screen.ActiveForm);
         If (wComponente.Name = 'Z2bbtnModifica') Or
            (wComponente.Name = 'Z2bbtnConsulta') Then
            wComponente.Enabled := False
         Else
         Begin
            wComponente.Visible := False;
         End;
         cdsGrupos.Next;
      End;
   End;
End;

Procedure TDM1.limpiarTodosCDS();

   Procedure LimpiaClientDataset(cds : TwwClientDataSet);
   Begin
      cds.IndexFieldNames := '';
      cds.Filter := '';
      cds.Filtered := False;
      If cds.active Then
         cds.Close;
   End;
Begin
   // no se hace un bucle que recorra todos los controles
   // xq existen algunos controles como el DM1.cdsDpto que ya tienen por defecto un select
   // y se abre por defecto
   LimpiaClientDataset(self.cdsATransp);
   LimpiaClientDataset(self.cdsCambios);
   LimpiaClientDataset(self.cdsDFam);
   LimpiaClientDataset(self.cdsDist);
   LimpiaClientDataset(self.cdsDpto);
   LimpiaClientDataset(self.cdsDSocioE);
   LimpiaClientDataset(self.cdsGestor);
   LimpiaClientDataset(self.cdsMGrupo);
   LimpiaClientDataset(self.cdsModelo);
   LimpiaClientDataset(self.cdsMovCre);
   LimpiaClientDataset(self.cdsProvin);
   LimpiaClientDataset(self.cdsQry);
   LimpiaClientDataset(self.cdsQry1);
   LimpiaClientDataset(self.cdsQry10);
   LimpiaClientDataset(self.cdsQry11);
   LimpiaClientDataset(self.cdsQry12);
   LimpiaClientDataset(self.cdsQry13);
   LimpiaClientDataset(self.cdsQry14);
   LimpiaClientDataset(self.cdsQry15);
   LimpiaClientDataset(self.cdsQry2);
   LimpiaClientDataset(self.cdsQry3);
   LimpiaClientDataset(self.cdsQry4);
   LimpiaClientDataset(self.cdsQry5);
   LimpiaClientDataset(self.cdsQry6);
   LimpiaClientDataset(self.cdsQry7);
   LimpiaClientDataset(self.cdsQry8);
   LimpiaClientDataset(self.cdsTipCreA);
   LimpiaClientDataset(self.cdsTransporte);
   LimpiaClientDataset(self.cdsUPro);

End;

Function TDM1.FechasOutPut(xFInput : tDateTime) : tDateTime;
Begin
   Result := StrToDate(Copy(DateToStr(xFInput), 1, 10));
End;

//******************************************************************************
// Nombre : FormatosCeldas
// Descripcion : Da formato a las celdas al Exportar datagrid
//               a un archivo de excel
//******************************************************************************

Procedure TDM1.FormatosCeldas(N : Integer; TDs : TDataSource);
Var
   I : Integer;
   F : TFieldDef;
Begin
   For I := 1 To N Do
   Begin
      F := TDs.DataSet.FieldDefs.Items[I - 1];
      Case F.DataType Of
         ftString : FormatCel[I] := DM1.StrZero('0', Length(TDs.DataSet.Fields[I - 1].AsString));
         ftDate : FormatCel[I] := 'dd/mm/yyyy';
         ftDateTime : FormatCel[I] := 'dd/mm/yyyy';
         ftTimeStamp : FormatCel[I] := 'dd/mm/yyyy';
         ftUnknown : FormatCel[I] := DM1.StrZero('0', Length(TDs.DataSet.Fields[I - 1].AsString));
         ftFMTBcd : FormatCel[I] := '@';
      Else
         FormatCel[I] := DM1.StrZero('0', Length(TDs.DataSet.Fields[I - 1].AsString));
         ;
      End;
   End;
End;

Procedure TDM1.CargaImagenes;
Begin
   Begin
      JpgFoto := Nil;
      StreamFoto := Nil;
      JpgFirma := Nil;
      StreamFirma := Nil;
      Try
         StreamFoto := TMemoryStream.Create;
         TBlobField(DM1.cdsQry4.FieldByName('FOTO')).SaveToStream(StreamFoto);
         StreamFirma := TMemoryStream.Create;
         TBlobField(DM1.cdsQry4.FieldByName('FIRMA')).SaveToStream(StreamFirma);

         If StreamFoto.Size > 0 Then
         Begin
            JpgFoto := TJpegImage.Create;
            StreamFoto.Position := 0;
            JpgFoto.LoadFromStream(StreamFoto);
         End
         Else
            JpgFoto := Nil;

         If StreamFirma.Size > 0 Then
         Begin
            JpgFirma := TJpegImage.Create;
            StreamFirma.Position := 0;
            JpgFirma.LoadFromStream(StreamFirma);
         End
         Else
            JpgFirma := Nil;
      Except
         JpgFoto := Nil;
         JpgFirma := Nil;
      End;
   End;

End;

Function TDM1.BuscaObjeto(Const xNombre : String; xForm : TForm) : TControl;
Var
   ic : Integer;
Begin
   ic := xForm.ComponentCount - 1;
   While (xForm.Components[ic].Name <> xNombre) And (ic > -1) Do
   Begin
      Dec(ic);
   End;
   If xForm.Components[ic].Name = xNombre Then
      Result := TControl(xForm.Components[ic])
   Else
      Result := Nil;
End;

Procedure TDM1.Filtracds(xxCds : TwwClientDataSet; xxSQL : String);
Begin
   If Length(xxSQL) > 0 Then
   Begin
      xxCds.Close;
      xxCds.DataRequest(xxSQL);
   End;
   xxCds.Open;
End;

//******************************************************************************
// Nombre : DataModuleDestroy
// Descripcion : Cerrar el DataModulo
//******************************************************************************

Procedure TDM1.DataModuleDestroy(Sender : TObject);
Begin
   cdsUsuarios.Close;
   cdsGrupos.Close;
   cdsMGRupo.Close;
   cdsAcceso.Close;
   Try
      If DM1.DCOM1.Connected Then
      Begin
         DM1.DCOM1.AppServer.ConexionOFF(DM1.wUsuario, DM1.ideconex, DM1.wModulo);
      End;
   Except
      ShowMessage('Salida Repentina de la Aplicación');
   End;
End;

Procedure TDM1.FiltraTabla(xxCds : TwwClientDataSet; xxArchivo, xxCampo : String);
Var
   xFiltro, xSQL2 : String;
Begin
   DM1.cdsAcceso.Open;
   DM1.cdsAcceso.Filtered := False;
   DM1.cdsAcceso.Filter := '';
   DM1.cdsAcceso.Filter := 'NTABLA=' + '''' + xxArchivo + '''';
   DM1.cdsAcceso.Filtered := True;
   xFiltro := '';
   DM1.cdsAcceso.First;
   While Not DM1.cdsAcceso.Eof Do
   Begin
      If Length(xFiltro) = 0 Then
         xFiltro := xxCampo + '=' + '''' + DM1.cdsAcceso.FieldByName('CODIGO').AsString + ''''
      Else
         xFiltro := xFiltro + ' OR ' + xxCampo + '=' + '''' + DM1.cdsAcceso.FieldByName('CODIGO').AsString + '''';
      DM1.cdsAcceso.Next;
   End;

   xSQL2 := 'SELECT * FROM ' + xxArchivo;

   If Length(xFiltro) > 0 Then
      xSQL2 := xSQL2 + ' WHERE ' + xFiltro;

   If Length(xxCampo) > 0 Then
      xSQL2 := xSQL2 + ' ORDER BY ' + xxCampo;

   xxCds.Close;
   xxCds.DataRequest(xSQL2);
   xxCds.Open;

End;

Procedure TDM1.AbreCDS(xxCds : TwwClientDataSet; xxSelect : String);
Begin
   xxCds.Close;
   xxCds.DataRequest(xxSelect);
   xxCds.Open;
End;

Procedure TDM1.cdsEjecutaReconcileError(DataSet : TCustomClientDataSet;
   E : EReconcileError; UpdateKind : TUpdateKind;
   Var Action : TReconcileAction);
Begin
   Action := HandleReconcileError(DataSet, UpdateKind, E);
End;

Function TDM1.UltimoDia(xMes, xAno : Integer) : String;
Const
   FinDia : Array[1..13] Of String = ('31', '28', '31', '30', '31', '30', '31', '31', '30', '31', '30', '31', '29');
Begin
   If xAno Mod 4 = 0 Then
   Begin
      If xMes = 2 Then
         xMes := 13;
   End;
   Result := FinDia[xMes];

End;

Procedure TDM1.MstAcuerdos(xAsoId : String);
Var
   xSQL : String;
Begin
   xSQL := 'SELECT NROACU, ASOID, ASOAPENOM, FECACU, SALTOT, SALVEN, CUOINI, NUMCUO, MONCUO, SALACT, CREESTID, CREESTADO, HREG, USUARIO, OFDESID FROM GES_ACU_PAG_CAB WHERE ASOID=' + QuotedStr(xAsoId) + ' ORDER BY FECACU DESC';
   DM1.cdsListaCred.Close;
   DM1.cdsListaCred.DataRequest(xSQL);
   DM1.cdsListaCred.Open;
   TNumericField(DM1.cdsListaCred.FieldByName('SALTOT')).DisplayFormat := '###,###,##0.#0';
   TNumericField(DM1.cdsListaCred.FieldByName('SALVEN')).DisplayFormat := '###,###,##0.#0';
   TNumericField(DM1.cdsListaCred.FieldByName('CUOINI')).DisplayFormat := '###,###,##0.#0';
   TNumericField(DM1.cdsListaCred.FieldByName('MONCUO')).DisplayFormat := '###,###,##0.#0';
   TNumericField(DM1.cdsListaCred.FieldByName('SALACT')).DisplayFormat := '###,###,##0.#0';
   TNumericField(DM1.cdsListaCred.FieldByName('NUMCUO')).DisplayFormat := '##0';
End;

Procedure TDM1.CrgLisFrmPag;
Var
   xSql, xOfiDes : String;
Begin
   xArea := Copy(CrgArea(DM1.wUsuario), 1, 3);
   xOfiDes := Copy(CrgArea(DM1.wUsuario), 4, 2);
   If (xArea = 'CRE') And (xOfiDes > '01') Then
      xSql := 'Select * From COB101 WHERE FORPAGOID IN (''03'') Order By FORPAGOID'
   Else
      If xArea = 'COB' Then
         xSql := 'Select * From COB101 WHERE FORPAGOID IN (''02'',''03'',''06'',''09'',''15'',''22'',''23'',''07'',''18'',''01'',''29'') Order By FORPAGOID'
      Else
         If xArea = 'CAJ' Then
            xSql := 'Select * From COB101 WHERE FORPAGOID IN (''02'') Order By FORPAGOID'
         Else
            If xArea = 'PRE' Then
               xSql := 'Select * From COB101 WHERE FORPAGOID IN (''05'') Order By FORPAGOID'
            Else
               If xArea = 'SIS' Then
                  xSql := 'Select * From COB101 Order By FORPAGOID'
               Else
                  xSql := 'Select * From COB101 Where FORPAGOID IN (''XX'') Order By FORPAGOID';

   DM1.cdsFormaPago.Close;
   DM1.cdsFormaPago.DataRequest(xSql);
   DM1.cdsFormaPago.Open;

End;

Function TDM1.CrgArea(xUsuario : String) : String;
Begin
   cdsUser.Close;
   cdsUser.DataRequest('SELECT USERID,USERNOM,AREA,ORIGEN,NIVEL FROM USERTABLE WHERE USERID=' + QuotedStr(Trim(xUsuario)));
   cdsUser.Open;
   If cdsUser.RecordCount = 1 Then
      Result := cdsUser.fieldByname('AREA').AsString + cdsUser.fieldByname('ORIGEN').AsString + cdsUser.fieldByname('NIVEL').AsString
   Else
      Result := '';
   cdsUser.Close
End;

Function TDM1.ComputerName : String;
Var
   Buffer : Array[0..100] Of Char;
   MaxSize : Cardinal;
Begin
   MaxSize := SizeOf(Buffer);
   If Not GetComputerName(@Buffer, MaxSize) Then
      Raise Exception.Create('No puedo determinar el nombre de la máquina');
   Result := StrPas(@Buffer);
End;

Function TDM1.ObtenerIpdeNetbios(Host : String) : String;
Var
   WSAData : TWSADATA;
   HostEnt : phostent;
Begin
   Result := '';
   If WSAStartup(MAKEWORD(1, 1), WSADATA) = 0 Then
   Begin
      HostEnt := gethostbyname(PChar(Host));
      If HostEnt <> Nil Then
         Result := String(inet_ntoa(PInAddr(HostEnt.h_addr_list^)^));
      WSACleanup;
   End;
End;

Function TDM1.isAlfanumerico(ICad : String) : boolean;
Var
   i : integer;
   valor : char;
Begin
   For i := 1 To Length(ICad) Do
   Begin
      valor := ICad[i];
      If Not ((valor In ['A'..'Z'])
         Or (valor In ['a'..'z'])
         Or (valor In ['0'..'9'])) Then
      Begin
         Result := False;
         exit;
      End;
   End;
   Result := True;
End;

//******************************************************************************
// Nombre : fn_is_hora_acceso_permitido
// Descripcion : funcion que permite el acceso
//               despues de la hora que es pasada como parametro
//******************************************************************************

Function TDM1.fn_is_hora_acceso_permitido(wgHoraInicio : integer) : boolean;
Var
   xsSQL : String;
   xlResult : boolean;
Begin
   xsSQL := 'SELECT TO_NUMBER(TO_CHAR(SYSDATE, ''HH24'')) - ' + inttostr(wgHoraInicio) + ' FALTAN FROM DUAL';
   cdsQry.Close;
   cdsQry.DataRequest(xsSQL);
   cdsQry.Open;
   If cdsQry.fieldbyname('FALTAN').asinteger >= 0 Then
      xlResult := True
   Else
      xlResult := False;
   cdsQry.Close;
   Result := xlResult;
End;

//******************************************************************************
// Nombre : fn_grabar_img_panel
// Descripcion : funcion para grabar un TPanel como una imagen
//******************************************************************************

Procedure TDM1.fn_grabar_img_panel(wgImagen : TImage; wgPanel : TPanel; wgArchivo : String);
Begin
   wgImagen.Height := wgPanel.Height;
   wgImagen.Width := wgPanel.Width;
   wgImagen.Canvas.CopyRect(wgImagen.ClientRect, TPanelGrafico(wgPanel).Canvas, wgPanel.ClientRect);
   wgImagen.Picture.SaveToFile(wgArchivo);
End;

//******************************************************************************
// Nombre : fn_get_periodo_gestion_actual
// Descripcion : funcion que devuelve el periodo de gestion actual
//******************************************************************************

Function TDM1.fn_get_periodo_gestion_actual() : String;
Var
   xsSQL : String;
   xxCursor : TCursor;
Begin
   xxCursor := Screen.Cursor;
   Screen.Cursor := crHourGlass;
   xsSQL := 'SELECT MAX(PERIODO) PERIODO FROM GES_COB_CAB';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xsSQL);
   DM1.cdsQry.Open;
   Screen.Cursor := xxCursor;
   result := DM1.cdsQry.FieldByname('PERIODO').AsString;
End;

(******************************************************************************)

Procedure TDM1.fn_ordenar_grilla(Sender : TObject; AFieldName : String);
Var
   xnIndexName : String;
Begin
   Try
      TwwDBGrid(Sender).SetActiveField(AFieldName);
      With TwwClientDataSet(TwwDBGrid(Sender).DataSource.DataSet) Do
      Begin
         xnIndexName := IndexName;
         IndexDefs.Clear;
         AddIndex('___ASC_' + AFieldName, AFieldName, [ixCaseInsensitive], ''); // ASCENDENTE
         AddIndex('___DESC' + AFieldName, AFieldName, [ixCaseInsensitive], AFieldName); // DESCENDENTE
         If xnIndexName = '___DESC' + AFieldName Then
            IndexName := ''
         Else
            If xnIndexName = '___ASC_' + AFieldName Then
               IndexName := '___DESC' + AFieldName
            Else
               IndexName := '___ASC_' + AFieldName;
      End;
   Except
   End;
End;
(******************************************************************************)

Function TDM1.fn_is_asigno_meta_defecto(xsGestor : String; xsPeriodo : String) : boolean;
Var
   xlResult : boolean;
   xsSQL : String;
   xxFrm : TFMetGes;
Begin
   xlResult := false;

   Screen.Cursor := crHourGlass;
   xsSQL :=
      '  SELECT CASE WHEN COUNT(A.USERID) > 0 THEN ''SI'' ELSE ''NO'' END TIENE_META_ASIGNADA '
      + '  FROM GES_NIV_USU_OTO A, GES_COB_MET_GES C '
      + ' WHERE A.USERID = ' + quotedstr(xsGestor)
      + '   AND A.USERID = C.USERID '
      + '   AND C.PERIODO = ' + quotedstr(xsPeriodo)
      + '   AND C.ESTADO = ''ACTIVA'' ';
   DM1.cdsQryMeta.Close;
   DM1.cdsQryMeta.DataRequest(xsSQL);
   DM1.cdsQryMeta.Open;
   Screen.Cursor := crDefault;

   If (DM1.cdsQryMeta.FieldByName('TIENE_META_ASIGNADA').AsString = 'SI') Then
      xlResult := true
   Else
   Begin
      xxFrm := TFMetGes.create(self);
      Try
         xxFrm.tmFormulario := tmAdd;
         xxFrm.xsPeriodoGestion := xsPeriodo;
         xxFrm.xsGestor := xsGestor;
         If (xxFrm.ShowModal = mrOk) Then
            xlResult := true;
      Finally
         xxFrm.Free;
      End;
   End;
   result := xlResult;
End;
(******************************************************************************)

// Inicio: SPP_201303_GESCOB - Implementación funciones "verificahorario" y "diferenciafechas"
Function TDM1.verificahorario: Boolean;
Var xSql, xhora, xhorini, xhorfin, xdia:String;
Begin
  Result := True;

  xSql := 'SELECT TO_CHAR(SYSDATE, ''HH24MI'') HORA, TO_CHAR(SYSDATE, ''DAY'') DIA  FROM DUAL';
  DM1.cdsQry.Close;
  DM1.cdsQry.DataRequest(xSql);
  DM1.cdsQry.Open;

  xhora := DM1.cdsQry.FieldByName('HORA').AsString;
  xdia  := Trim(DM1.cdsQry.FieldByName('DIA').AsString);

  if xdia = 'MONDAY' Then xdia := 'LUNES';
  if xdia = 'TUESDAY' Then xdia := 'MARTES';
  if xdia = 'WEDNESDAY' Then xdia := 'MIERCOLES';
  if xdia = 'THURSDAY' Then xdia := 'JUEVES';
  if xdia = 'FRIDAY' Then xdia := 'VIERNES';
  if xdia = 'SATURDAY' Then xdia := 'SABADO';
  if xdia = 'FRIDAY' Then xdia := 'DOMINGO';


  xSql := 'SELECT * FROM CAS_HOR_RES WHERE DIA = '+QuotedStr(xdia);
  DM1.cdsQry2.Close;
  DM1.cdsQry2.DataRequest(xSql);
  DM1.cdsQry2.Open;
  xhorini := DM1.cdsQry2.FieldByName('HORINIRES').AsString;
  xhorfin := DM1.cdsQry2.FieldByName('HORFINRES').AsString;

  If (xhorini = '') And (xhorfin = '') Then
  Begin
    Result := True;
    Exit;
  End;

  If (xhora >= xhorini) And (xhora <= xhorfin) Then
  Begin
    Result := False;
    Exit;
  End;

End;

Function TDM1.diferenciafechas(xdFecIni : Tdate; xdFecFin : Tdate) : Integer;
Var
   xnNroDias : integer;

Begin

   xnNroDias := strtoint(floattostr(xdFecFin-xdFecIni));

   Result := xnNroDias;
End;
// Fin: SPP_201303_GESCOB

(******************************************************************************)
// INICIO : SPP_201401_GESCOB
//******************************************************************************
// Nombre : registrarArchivoImp
// Descripcion : funcion que permite insertar la cabecera de un archivo importado
//******************************************************************************
Function TDM1.registrarArchivoImp(ps_periodo: string; ps_usuario: string;
                                  ps_tipoImportacion : string; ps_nombreArchivo : string): integer;
Var
   xSQL: String;
      xIDArchivo: integer;
Begin
   (* si se elimina el ultimo registro de la tabla GES_COB_ARC_IMP, entonces cuando vuelva a insertar un registro,
     se volvera a tomar el mismo correlativo, y por ende se aumentara el numero de registros en la tabla
     GES_COB_LOG_IMP_MAS, como por progrma nunca se borran registros de la tabla GES_COB_ARC_IMP,
     solo se marca con el flag, si se necesita borrar, entonces se debe crear un correlativo en la tabla
     CRE206 *)
   xSQL := 'SELECT NVL(MAX(IDARCHIVO),0)+1 IDARCHIVO FROM GES_COB_ARC_IMP';
   cdsQry.Close;
   cdsQry.DataRequest(xSQL);
   cdsQry.Open;
   xIDArchivo := cdsQry.FieldByName('IDARCHIVO').Value;
   xSQL := 'INSERT INTO GES_COB_ARC_IMP(IDARCHIVO, '
      + '                               PERIODO, '
      + '                               USU_GES, '
      + '                               TIPO_IMPORTACION, '
      + '                               NOMBRE, TAMANHO, NUM_REG_COR, '
      + '                               NUM_REG_ERR, NUM_REG_TOT, FEC_SUBIDA,'
      + '                               USU_SUBIDA, FEC_ANULACION, USU_ANULACION,'
      + '                               FEC_CIERRE, USU_CIERRE,'
      + '                               ESTADO, FREG, UREG) VALUES ('
      + IntToStr(xIDArchivo)
      + ',' + QuotedStr(ps_periodo)
      + ',' + QuotedStr(ps_usuario)
      + ',' + QuotedStr(ps_tipoImportacion)
      + ',' + QuotedStr(ps_nombreArchivo)
      + ', NULL, 0, '
      + ' 0, 0, SYSDATE,'
      + QuotedStr(wUsuario) + ', NULL, NULL,'
      + ' NULL, NULL,'
      + ' ''TRUNCADO'', SYSDATE, ' + QuotedStr(wUsuario) + ' )';
   DCOM1.AppServer.EjecutaSql(xSQL);
   result := xIDArchivo;
End;

(******************************************************************************)
//******************************************************************************
// Nombre : actualizarRegistroArchivoImp
// Descripcion : funcion que permite actualizar la cabecera de un archivo importado
//******************************************************************************
Function TDM1.actualizarRegistroArchivoImp(pi_IDArchivo: integer;
                                           ps_tipoImportacion : string): String;
Var
   xSQL: String;
   xCad: String;
Begin
   xSQL := 'SELECT SUM(CASE WHEN TIPO_RESULTADO = ''ERROR'' THEN 1 ELSE 0 END) ERROR, '
      + '          SUM(CASE WHEN TIPO_RESULTADO = ''CORRECTO'' THEN 1 ELSE 0 END) CORRECTO '
      + '     FROM GES_COB_LOG_IMP_MAS '
      + '    WHERE IDARCHIVO = ' + IntToStr(pi_IDArchivo)
      + '      AND TIPO_IMPORTACION = ' + QuotedStr(ps_tipoImportacion);
   cdsQry.Close;
   cdsQry.DataRequest(xSQL);
   cdsQry.Open;

   xSQL := 'UPDATE GES_COB_ARC_IMP '
      + '      SET NUM_REG_COR = ' + IntToStr(cdsQry.FieldByName('CORRECTO').Value)
      + '         ,NUM_REG_ERR = ' + IntToStr(cdsQry.FieldByName('ERROR').Value)
      + '         ,NUM_REG_TOT = ' + IntToStr(cdsQry.FieldByName('CORRECTO').Value + cdsQry.FieldByName('ERROR').Value)
      + '         ,ESTADO = ''SUBIDO'' '
      + '    WHERE IDARCHIVO = ' + IntToStr(pi_IDArchivo);
   DCOM1.AppServer.EjecutaSql(xSQL);

   xCad := 'Se Procesaron ' + IntToStr(cdsQry.FieldByName('CORRECTO').Value + cdsQry.FieldByName('ERROR').Value) + ' Registros'
      + chr(13) + IntToStr(cdsQry.FieldByName('CORRECTO').Value) + ' Correctos'
      + chr(13) + IntToStr(cdsQry.FieldByName('ERROR').Value) + ' Con Errores'
      + chr(13) + 'Para mayor detalle Revise el Log';

   result := xCad;
End;

(******************************************************************************)
//******************************************************************************
// Nombre : QuoteStrAll
// Descripcion : funcion que permite colocar comillas a las cadenas que se
//               utilizaran en un script de sql
//******************************************************************************
Function TDM1.QuoteStrAll(ps_Cadena: String): String;
Begin
   result := QuotedStr(Trim(AnsiReplaceStr(ps_Cadena, '`', '')));
End;

(******************************************************************************)
//******************************************************************************
// Nombre : fn_get_periodo_gestion_anterior
// Descripcion : funcion que devuelve el periodo de gestion anterior
//******************************************************************************
Function TDM1.fn_get_periodo_gestion_anterior(P_PERIODO : string) : String;
Var
   xsSQL : String;
   xxCursor : TCursor;
Begin
   xxCursor := Screen.Cursor;
   Screen.Cursor := crHourGlass;
   xsSQL := 'SELECT TO_CHAR(ADD_MONTHS(TO_DATE('+QuotedStr(P_PERIODO)+',''YYYYMM''),-1),''YYYYMM'') PERIODO FROM DUAL';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xsSQL);
   DM1.cdsQry.Open;
   Screen.Cursor := xxCursor;
   result := DM1.cdsQry.FieldByname('PERIODO').AsString;
End;
// FIN : SPP_201401_GESCOB

// INICIO :SPP_201402_GESCOB
(******************************************************************************)
function TDM1.fn_valida_email(p_cadena : string): boolean;
  // Valida la dirección de email
  FUNCTION CheckAllowed(CONST s: String): boolean;
  VAR i: Integer;
  BEGIN
    Result:= False;
    FOR i:= 1 TO Length(s) DO // illegal char in s -> no valid address
    IF NOT (s[i] IN ['a'..'z','A'..'Z','0'..'9','_','-','.']) THEN Exit;
    Result:= true;
  END;
VAR
  i,len: Integer;
  namePart, serverPart: String;
BEGIN // of IsValidEmail
  Result:= False;
  i:= Pos('@', p_cadena);
  IF (i=0) OR (Pos('..',p_cadena) > 0) THEN Exit;
  namePart:= Copy(p_cadena, 1, i - 1);
  serverPart:= Copy(p_cadena,i+1,Length(p_cadena));
  len:=Length(serverPart);
  // must have dot and at least 3 places from end, 2 places from begin
  IF (len<4) OR
     (Pos('.',serverPart)=0) OR
     (serverPart[1]='.') OR
     (serverPart[len]='.') OR
     (serverPart[len-1]='.') THEN Exit;
  Result:= CheckAllowed(namePart) AND CheckAllowed(serverPart);
end;
(******************************************************************************)
// FIN :SPP_201402_GESCOB

// INICIO :SPP_201404_GESCOB
Procedure TDM1.fn_exportar_grid(pxDBGrid : TwwDBGrid; psNombre : string);
Begin
   Screen.Cursor := crHourGlass;
   Try
      With pxDBGrid, pxDBGrid.ExportOptions Do
      Begin
         ExportType := wwgetSYLK;
         FileName := psNombre+'.slk';
         DM1.OpcionesExportExcel(pxDBGrid.ExportOptions);
         pxDBGrid.ExportOptions.TitleName := psNombre;
         Save;
         If Not (esoClipboard In Options) Then
            ShellExecute(Handle, 'Open', PChar(pxDBGrid.exportoptions.Filename), Nil, Nil, sw_shownormal);
      End;
      Screen.Cursor := crDefault;
   Except
      Screen.Cursor := crDefault;
      showmessage('No se puede grabar el Archivo ' + chr(13) + 'Cierre todos los Archivos en Excel y vuelva a intentarlo');
   End;
End;

(******************************************************************************)
procedure TDM1.fn_SaveAsCSV(xxDataSet: TDataSet; xsFileName: string);
var
  xxTextFile: TextFile;
  i: integer;
  s: string;
  xxBookMark : TBookmark;
begin
  try
    AssignFile(xxTextFile, xsFileName);
    Rewrite(xxTextFile);
    s := '';
    for i := 0 to xxDataSet.FieldCount - 1 do
      begin
        s := s + Format('%s|', [xxDataSet.Fields[i].FieldName]);
      end;
    Writeln(xxTextFile, s);
    xxBookMark := xxDataSet.GetBookmark;
    xxDataSet.First;
    while not xxDataSet.Eof do
      begin
        s := '';
        for i := 0 to xxDataSet.FieldCount - 1 do
          begin
            s := s + Format('%s|', [xxDataSet.Fields[i].AsString]);
          end;
        Writeln(xxTextfile, s);
        xxDataSet.Next;
      end;
    xxDataSet.GotoBookmark(xxBookMark);  
  finally
    CloseFile(xxTextFile);
  end;
end;

(******************************************************************************)

procedure TDM1.fn_CsvToExcel(psArchivoCSV: String);
VAR sExcel: TExcelApplication;
    sWorkbook: TExcelWorkbook;
    sSheet : TExcelWorksheet;
    intlcid: integer;
begin
  intlcid:= GetUserDefaultLCID;
  sExcel:= TExcelApplication.Create(nil);
  sWorkbook:= TExcelWorkbook.Create(nil);
  sSheet:= TExcelWorksheet.Create(nil);
  sWorkbook.ConnectTo(sExcel.Workbooks.Open(psArchivoCSV, false, true, 6,
                                            emptyparam, emptyparam, emptyparam, emptyparam,
                                            '|', emptyparam, emptyparam, emptyparam, emptyparam,
                                            emptyparam, emptyparam, intlcid));
  sSheet.ConnectTo(sWorkbook.Worksheets[1] as _Worksheet);
  sExcel.Visible[intlcid] := True;
  sExcel.WindowState[intlcid] := xlMaximized;

  sSheet.Free;
  sWorkbook.Free;
  sExcel.Free;
end;
(******************************************************************************)

PROCEDURE TDM1.fn_ExpXLSLong(xxDataSet: TDataSet; xsFileName: string);
BEGIN
  fn_SaveAsCSV(xxDataSet, xsFileName);
  fn_CsvToExcel(xsFileName);
END;

(******************************************************************************)
function TDM1.fn_ExpXLS(xxDataSet: TDataSet; xsNombreHoja: string) : OleVariant;
var
  ExcApp: OleVariant;
begin
  ExcApp := CreateOleObject('Excel.Application');
  ExcApp.Visible := True;
  ExcApp.WorkBooks.Add;
  result := fn_ExpXLS(xxDataSet, xsNombreHoja, ExcApp);
end;

(******************************************************************************)
function TDM1.fn_ExpXLS(xxDataSet: TDataSet; xsNombreHoja: string; var pxExcApp: OleVariant) : OleVariant;
var
  i,l: integer;
  xnNroPagina : integer;
  xxSheet : Variant;
  xxWorkBook : Variant;
  xxBookMark : TBookmark;
begin
  xxWorkBook := pxExcApp.WorkBooks[1];
  xxWorkBook.Worksheets.Add(After := xxWorkBook.Worksheets[xxWorkBook.Worksheets.Count]);
  xxWorkBook.WorkSheets[xxWorkBook.Worksheets.Count].Name :=  xsNombreHoja;
  xxSheet := xxWorkBook.WorkSheets[xsNombreHoja];
  l := 1;
  for i := 0 to xxDataSet.Fields.Count - 1 do
      xxSheet.Cells[l,i + 1] := xxDataSet.Fields[i].DisplayLabel;

  l := l + 1;
  xxBookMark := xxDataSet.GetBookmark;
  xxDataSet.First;
  while not xxDataSet.EOF do
  begin
    for i := 0 to xxDataSet.Fields.Count - 1 do
      xxSheet.Cells[l,i + 1] := xxDataSet.Fields[i].DisplayText;
    xxDataSet.Next;
    l := l + 1;
  end;
  xxDataSet.GotoBookmark(xxBookMark);
  //ExcApp.WorkBooks[1].SaveAs(xsArchivo);
  result := pxExcApp;
end;

(******************************************************************************)
procedure TDM1.fn_ExpHTML(xxDataSet: TDataSet; xsArchivo : string);
var
  sl: TStringList;
  dp: TDataSetTableProducer;
begin
  sl := TStringList.Create;
  try
    dp := TDataSetTableProducer.Create(nil);
    try
      xxDataSet.First;
      dp.DataSet := xxDataSet;
      dp.TableAttributes.Border := 1;
      sl.Text := dp.Content;
      sl.SaveToFile(xsArchivo);
    finally
      dp.free;
    end;
  finally
    sl.free;
  end;
end;
(******************************************************************************)
procedure TDM1.fn_ExpTXT(xxDataSet: TDataSet; xsArchivo :  string);
var
  i: integer;
  sl: TStringList;
  st: string;
begin
  xxDataSet.First;
  sl := TStringList.Create;
  try
    st := '';
    for i := 0 to xxDataSet.Fields.Count - 1 do
      st := st + xxDataSet.Fields[i].DisplayLabel + ';';
    sl.Add(st);
    xxDataSet.First;
    while not xxDataSet.Eof do
    begin
      st := '';
      for i := 0 to xxDataSet.Fields.Count - 1 do
        st := st + xxDataSet.Fields[i].DisplayText + ';';
      sl.Add(st);
      xxDataSet.Next;
    end;
    sl.SaveToFile(xsArchivo);
  finally
     sl.free;
  end;
end;

(******************************************************************************)
procedure TDM1.fn_ExpDOC(xxDataSet: TDataSet; xsArchivo: string);
var
  WordApp,WordDoc,WordTable,WordRange: Variant;
  Row,Column: integer;
begin
  WordApp := CreateOleobject('Word.basic');
  WordApp.Appshow;
  WordDoc := CreateOleobject('Word.Document');
  WordRange := WordDoc.Range;
  WordTable := WordDoc.tables.Add(WordDoc.Range,1,xxDataSet.FieldCount);
  for Column:=0 to xxDataSet.FieldCount-1 do
    WordTable.cell(1,Column+1).range.text:= xxDataSet.Fields.Fields[Column].FieldName;
  Row := 2;
  xxDataSet.First;
  while not xxDataSet.Eof do
  begin
     WordTable.Rows.Add;
     for Column:=0 to xxDataSet.FieldCount-1 do
       WordTable.cell(Row,Column+1).range.text := xxDataSet.Fields.Fields[Column].DisplayText;
     xxDataSet.next;
     Row := Row+1;
  end;
  WordDoc.SaveAs(xsArchivo);
  WordDoc := unAssigned;
end;
(******************************************************************************)
procedure TDM1.fn_ExpXML(xxDataSet : TDataSet; xsArchivo : string);
var
  i: integer;
  xml: TXMLDocument;
  reg, campo: IXMLNode;
begin
  xml := TXMLDocument.Create(nil);
  try
    xml.Active := True;
    xxDataSet.First;
    xml.DocumentElement :=
      xml.CreateElement('DataSet','');
    xxDataSet.First;
    while not xxDataSet.Eof do
    begin
      reg := xml.DocumentElement.AddChild('row');
      for i := 0 to xxDataSet.Fields.Count - 1 do
      begin
        campo := reg.AddChild(xxDataSet.Fields[i].DisplayLabel);
        campo.Text := xxDataSet.Fields[i].DisplayText;
      end;
      xxDataSet.Next;
    end;
    xml.SaveToFile(xsArchivo);
  finally
    xml.free;
  end;
end;
(******************************************************************************)
function TDM1.fn_TStrings_String(pxTStrings : TStrings) : string;
var xsString : string;
    xsContador : integer;
begin
  if pxTStrings.Count > 0 then
  begin
     xsString := '';
     for xsContador:=0 to pxTStrings.Count-1 do
     begin
       if Length(xsString) > 0 then xsString := xsString + ' ';
       xsString := xsString + pxTStrings.Strings[xsContador];
     end;
     xsString := Trim(xsString);
  end
  else
    xsString := '';
  result := xsString;
end;
(******************************************************************************)
PROCEDURE TDM1.fn_cargar_periodos_combo(var pxCombo : TwwDBLookupCombo; var pxCDS : TwwClientDataSet);
var xsSQL : string;
begin
   // CARGAR LOS PERIODOS PARA SELECCIONAR
   xsSQL:='SELECT DISTINCT PERIODO FROM GES_COB_CFC000_CAB ORDER BY PERIODO DESC';
   pxCDS.Close;
   pxCDS.DataRequest(xsSQL);
   pxCDS.Open;
   pxCDS.First;
   pxCombo.LookupTable := pxCDS;
   pxCombo.LookupField := 'PERIODO';
   pxCombo.Selected.Clear;
   pxCombo.Selected.Add('PERIODO'#9'8'#9'Periodo');
end;
(******************************************************************************)
PROCEDURE TDM1.fn_cargar_tipo_cartera_combo(var pxCombo : TwwDBLookupCombo; var pxCDS : TwwClientDataSet);
var xsSQL : string;
begin
   xsSQL:='SELECT ''00'' CODTIPCAR, ''GENERAL'' TIPCAR, 0 ORDEN FROM DUAL '
        + ' UNION ALL '
        + 'SELECT CODTIPCAR, TIPCAR, ORDEN FROM GES_COB_TIP_CAR_CAT '
        + 'ORDER BY ORDEN ';
   pxCDS.Close;
   pxCDS.DataRequest(xsSQL);
   pxCDS.Open;
   pxCDS.First;
   pxCombo.LookupTable := pxCDS;
   pxCombo.LookupField := 'CODTIPCAR';
   pxCombo.Selected.Clear;
   pxCombo.Selected.Add('TIPCAR'#9'15'#9'TIPO DE CARTERA');
end;
(******************************************************************************)

// FIN :SPP_201404_GESCOB
// INICIO : HPC_201502_GESCOB
procedure TDM1.fn_exportar_listview(pxListView : TListView);
var
  ExcelApplication1, ExcelWorkbook1: oleVariant;
  i, j : Integer;
begin
  try
    ExcelApplication1 := CreateOleObject ('Excel.Application');
    ExcelWorkbook1 := CreateOleObject ('Excel.sheet');
  except
    MessageDlg('NO ES POSIBLE CREAR EL ARCHIVO DE XLS, COMPRUEBE QUE TIENE INSTALADO EL EXCEL!', mtInformation, [mbOk], 0);
    exit;
  end;
  ExcelWorkbook1:= ExcelApplication1.WorkBooks.Add;
  ExcelApplication1.Visible:= false;
  try
    Screen.Cursor := crHourGlass;
    for j := 0 to pxListView.Columns.Count - 1 do
        ExcelWorkbook1.WorkSheets[1].Cells[1, 1 + j].Value := pxListView.Column[j].Caption;
    for i := 0 to pxListView.Items.Count - 1 do begin
      for j := 0 to pxListView.Columns.Count - 1 do begin
        if j = 0 then
          ExcelWorkbook1.WorkSheets[1].Cells[2 + i, 1 + j].Value := pxListView.Items.Item[i].Caption
        else
          ExcelWorkbook1.WorkSheets[1].Cells[2 + i, 1 + j].Value := pxListView.Items[i].SubItems.Strings[j-1];
      end;
    end;
    MessageDlg('FIN DE LA EXPORTACION!', mtInformation, [mbOk], 0);
    ExcelApplication1.Visible:= true;
  except
    MessageDlg('OCURRIO UN ERROR Y NO SE TERMINO DE EXPORTAR LOS DATOS!', mtInformation, [mbOk], 0);
  end;
  Screen.Cursor := crDefault;
  ExcelApplication1:= Unassigned;
end;
(******************************************************************************)
function TDM1.fn_validar_periodo_asignacion_actual(): string;
var xsSQL : string;
begin
   xsSQL:='SELECT CASE WHEN PERIODO_ACTUAL = PERIODO_REAL THEN ''TRUE'' ELSE ''FALSE'' END HABILITAR '
        + '  FROM (SELECT TO_CHAR(ADD_MONTHS(SYSDATE,-1), ''YYYYMM'') PERIODO_ACTUAL, '
        + '	    		 NVL(MAX(PERIODO), ''999999'') PERIODO_REAL '
        + '        	FROM GES000 '
        + '         WHERE ROWNUM = 1) ';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xsSQL);
   DM1.cdsQry.Open;
   Result := cdsQry.fieldbyname('HABILITAR').AsString;
end;
(******************************************************************************)
// FIN : HPC_201502_GESCOB

// INICIO HPC_201504_GESCOB
(******************************************************************************)
procedure TDM1.FG_CONECTA_CDS(var pxCdsQry : TwwClientDataSet; var pxDsQry : TwwDataSource);
begin
  pxCdsQry := TwwClientDataSet.Create(self);
  pxCdsQry.ProviderName := 'dspQRY1';
  pxCdsQry.RemoteServer := DCOM1;
  pxDsQry := TwwDataSource.Create(self);
  pxDsQry.DataSet := pxCdsQry;
end;
(******************************************************************************)
// FIN HPC_201504_GESCOB

End.
