// Inicio Uso Estándares: 01/08/2011
// Unidad : Gestión de Cobranzas
// Formulario : fGestInt
// Fecha de Creación :
// Autor : Equipo de Sistemas
// Objetivo : Gestion Interna de Asociados
// Actualizaciones:
// HPP_201112_GESCOB 06/06/2011 Mejoras Internas del Sistema (F4)
// HPC_201201_GESCOB 09/01/2012 Registrar Hojas de Rutas
// HPC_201202_GESCOB 27/01/2012 Colocar Matriz de Prioridades
// HPC_201203_GESCOB 02/02/2012 Permitir la Impresion de hojas de ruta para el nivel 3
// HPC_201205_GESCOB 10/04/2012 validar controles para evitar el error al momento crear el formulario en tiempo de ejecucion
// DPP_201205_GESCOB: Pase a producción a partir de los pases HPC_201205 y HPC_201206
// HPC_201301_GESCOB 21/02/2013 Se Creara Hoja de Ruta por Tipo : DOM / TEL
// SPP_201301_GESCOB: El pase a producción se realiza de acuerdo al HPC_201301_GESCOB
// HPC_201304_GESCOB: F1 21/05/2013 Se modificó para que la opción todos en estado no filtre
// SPP_201304_GESCOB: Se realiza el pase a producción a partir del HPC_201304_GESCOB
// SPP_201401_GESCOB: Importacion masiva interna y Mejoras del proceso de priorizacion
// SPP_201401_GESCOB: Se realiza el pase a producción a partir del HPC_201401_GESCOB
// HPC_201402_GESCOB: Mantenimiento a la gestion interna(filtros por domicilio y colegio) (1.1)
//                    crear el detalle historico de movimientos y gestiones de cobranza   (1.2)
//                    Incluir la distribucion de gestiones: asignadas, gestionadas, contactadas y cerrada por gestor (1.6)
//                    Re-Definicion de la emision de cartas a deudores (1.7)
//                    mantenimiento a la gestion interna (filtros domicilio y colegio)    (1.8)
// SPP_201402_GESCOB: Se realiza el pase a producción a partir del HPC_201402_GESCOB
// HPC_201404_GESCOB: CORRECCION DE REGLA DE COMPROMISOS INCUMPLIDOS 
// SPP_201403_GESCOB: Se realiza el pase a producción a partir del HPC_201404_GESCOB
// HPC_201501_GESCOB: mejoras al proceso depriorizacion de inicio de mes
// HPC_201702_GESCOB : Mejora del del reporte de direcciones y teléfonos centrales de riesgo
//                     y reglas para la impresión de la dirección de Hoja de ruta diaria. 
Unit GES203;

Interface

Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, Buttons, ExtCtrls, Grids, Wwdbigrd, Wwdbgrid, wwdblook, Db,
   fcButton, fcImgBtn, fcShapeBtn, Mask, wwdbedit, Spin, Gauges, ComCtrls,
   DBGrids, wwclient, ppBands, ppCache, ppClass, ppEndUsr, ppProd, ppReport,
   ppComm, ppRelatv, ppDB, ppDBPipe, ppCtrls, ppVar, ppPrnabl, ppParameter,
   fcOutlookList, fcClearPanel, fcButtonGroup, fcOutlookBar, ppMemo,
   ppStrtch, ppSubRpt, Wwdatsrc, DBClient, ppRichTx,
   wwExport, shellapi
   // INICIO : SPP_201402_GESCOB
   ,Wwdbdlg;
   // FIN : SPP_201402_GESCOB

Type
   TfGestInt = Class(TForm)
      // INICIO : SPP_201402_GESCOB
      GroupBox1 : TGroupBox;
      Label7 : TLabel;
      dtgData : TDBGrid;
      pcGestion : TPageControl;
      tsPersonal : TTabSheet;
      tsOtros : TTabSheet;
      dtgGestion : TwwDBGrid;
      dtgOtrasGest : TwwDBGrid;
      pnlCab : TPanel;
      BitFiltrar : TBitBtn;
      pnlCab2 : TPanel;
      Shape1 : TShape;
      lblGestor : TLabel;
      dblUserInt : TwwDBLookupCombo;
      pnlUser : TPanel;
      EdtUserNom : TEdit;
      Panel5 : TPanel;
      lblRegistros : TLabel;
      DBGestiones : TppDBPipeline;
      ppr1 : TppReport;
      ppd1 : TppDesigner;
      ppParameterList1 : TppParameterList;
      ppHeaderBand1 : TppHeaderBand;
      ppShape1 : TppShape;
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
      ppLabel11 : TppLabel;
      ppLabel12 : TppLabel;
      ppLine1 : TppLine;
      ppLine2 : TppLine;
      ppLine3 : TppLine;
      ppLine4 : TppLine;
      ppLine5 : TppLine;
      ppLabel13 : TppLabel;
      ppSystemVariable1 : TppSystemVariable;
      ppSystemVariable2 : TppSystemVariable;
      ppLabel14 : TppLabel;
      ppLabel15 : TppLabel;
      ppLabel16 : TppLabel;
      ppLabel19 : TppLabel;
      ppLblGestorC : TppLabel;
      ppSystemVariable3 : TppSystemVariable;
      ppDetailBand1 : TppDetailBand;
      ppDBText1 : TppDBText;
      ppDBText2 : TppDBText;
      ppDBText3 : TppDBText;
      ppDBText4 : TppDBText;
      ppDBText5 : TppDBText;
      ppDBText6 : TppDBText;
      ppDBText7 : TppDBText;
      ppDBText8 : TppDBText;
      ppFooterBand1 : TppFooterBand;
      ppSummaryBand1 : TppSummaryBand;
      ppGroup1 : TppGroup;
      ppGroupHeaderBand1 : TppGroupHeaderBand;
      ppGroupFooterBand1 : TppGroupFooterBand;
      ppShape2 : TppShape;
      ppDBCalc1 : TppDBCalc;
      ppLabel18 : TppLabel;
      ppLabel21 : TppLabel;
      ppLblGestorF : TppLabel;
      GroupBox2 : TGroupBox;
      z2bbtnBuscarOG : TfcShapeBtn;
      edtBuscarOG : TEdit;
      BitBtn2 : TBitBtn;
      BitAsigna : TBitBtn;
      rdbNombre : TRadioButton;
      rdbDni : TRadioButton;
      bbtnAsignar : TBitBtn;
      dblcDpto : TwwDBLookupCombo;
      Panel7 : TPanel;
      edtDpto : TEdit;
      dblcProvin : TwwDBLookupCombo;
      Panel8 : TPanel;
      edtProvin : TEdit;
      dblcDist : TwwDBLookupCombo;
      Panel9 : TPanel;
      edtDist : TEdit;
      dblcPrioridad : TwwDBLookupCombo;
      Panel10 : TPanel;
      EdtPrioridad : TEdit;
      rgRefinanciados : TRadioGroup;
      Panel11 : TPanel;
      Label17 : TLabel;
      Label18 : TLabel;
      Label19 : TLabel;
      pnlAcuerdos : TPanel;
      DtpCompromisos : TDateTimePicker;
      ppdbLog : TppDBPipeline;
      pprLog : TppReport;
      ppdLog : TppDesigner;
      ppParameterList3 : TppParameterList;
      ppHeaderBand7 : TppHeaderBand;
      ppLabel176 : TppLabel;
      ppDBText24 : TppDBText;
      ppLabel179 : TppLabel;
      ppLabel180 : TppLabel;
      ppDBText25 : TppDBText;
      ppLine8 : TppLine;
      ppLine9 : TppLine;
      ppLabel181 : TppLabel;
      ppLabel182 : TppLabel;
      ppLabel183 : TppLabel;
      ppLabel184 : TppLabel;
      ppLabel185 : TppLabel;
      ppLabel186 : TppLabel;
      ppLabel187 : TppLabel;
      ppDetailBand12 : TppDetailBand;
      ppDBText19 : TppDBText;
      ppDBText21 : TppDBText;
      ppDBText22 : TppDBText;
      ppDBCalc2 : TppDBCalc;
      ppDBText23 : TppDBText;
      ppDBText26 : TppDBText;
      ppDBText20 : TppDBText;
      ppFooterBand7 : TppFooterBand;
      ppSummaryBand7 : TppSummaryBand;
      ppLine10 : TppLine;
      ppLabel188 : TppLabel;
      pplRespon : TppLabel;
      rgSitua : TRadioGroup;
      chbxCompromisos : TCheckBox;
      Label21 : TLabel;
      ppdHojaRuta : TppDesigner;
      pprHojaRuta : TppReport;
      ppParameterList4 : TppParameterList;
      ppDBHojaRuta : TppDBPipeline;
      tsHojaRutaDia : TTabSheet;
      Panel1 : TPanel;
      gbBuscarHojaRuta : TGroupBox;
      fcShapeBtn1 : TfcShapeBtn;
      edtHojaRutaDiaBuscar : TEdit;
      dtgHojaRutaDia : TwwDBGrid;
      btnImpHojaRuta : TBitBtn;
      btnExpHojaRuta : TBitBtn;
      Panel2 : TPanel;
      btnHojaRutaDiaAddPersonal : TBitBtn;
      btnCerrarHojaRuta : TBitBtn;
      btnHojaRutaDiaDel : TBitBtn;
      Panel3 : TPanel;
      btnHojaRutaDiaAddOtros : TBitBtn;
      rgTipo: TRadioGroup;
      btnNuevaHojaRuta: TBitBtn;
      sdGraba300: TSaveDialog;
      Memo1: TMemo;
      cdsPlanilla: TwwClientDataSet;
      dsPlanilla: TwwDataSource;
      btnDesasignar: TBitBtn;
      pnlColegio: TPanel;
      Label12: TLabel;
      edtColegio: TEdit;
      rgUbigeo: TRadioGroup;
      dblcColegio: TwwDBLookupComboDlg;
      ppHeaderBand8 : TppHeaderBand;
      ppShape5 : TppShape;
      ppLabel189 : TppLabel;
      ppLabel190 : TppLabel;
    ppLine17: TppLine;
    ppLine18: TppLine;
    ppLine19: TppLine;
      ppSystemVariable9 : TppSystemVariable;
      ppSystemVariable10 : TppSystemVariable;
      ppLabel202 : TppLabel;
      ppLabel203 : TppLabel;
      ppLabel204 : TppLabel;
      ppLabel205 : TppLabel;
      pplblGestor : TppLabel;
      ppSystemVariable11 : TppSystemVariable;
      pplblSupervisor : TppLabel;
    ppLine20: TppLine;
      ppLabel191 : TppLabel;
      ppLabel192 : TppLabel;
      ppLabel193 : TppLabel;
      ppLabel194 : TppLabel;
      ppLabel195 : TppLabel;
      ppLabel196 : TppLabel;
      ppSystemVariable12 : TppSystemVariable;
      ppLabel197 : TppLabel;
      pplblUsuario : TppLabel;
      ppLabel198 : TppLabel;
      ppLabel199 : TppLabel;
    ppLine29: TppLine;
    ppLabel200: TppLabel;
      ppDetailBand13 : TppDetailBand;
      ppDBText27 : TppDBText;
      ppDBText28 : TppDBText;
      ppDBText29 : TppDBText;
      ppDBText30 : TppDBText;
      ppDBText31 : TppDBText;
      ppLine21 : TppLine;
      ppLine22 : TppLine;
    ppLine23: TppLine;
    ppLine24: TppLine;
    ppLine25: TppLine;
    ppLine26: TppLine;
    ppLine27: TppLine;
    ppLine30: TppLine;
    ppDBText32: TppDBText;
      ppFooterBand8 : TppFooterBand;
    ppRichText2: TppRichText;
    ppLine28: TppLine;
      ppLabel207 : TppLabel;
      ppSummaryBand8 : TppSummaryBand;
    pplblComInc: TppLabel;
    pplblNoCom: TppLabel;
    pplblComVig: TppLabel;
    ppDBHojaRutaDet: TppDBPipeline;
    ppDBHojaRutaDetppField1: TppField;
    ppDBHojaRutaDetppField2: TppField;
    ppDBHojaRutaDetppField3: TppField;
    ppDBHojaRutaDetppField4: TppField;
    ppDBHojaRutaDetppField5: TppField;
    ppDBHojaRutaDetppField6: TppField;
    ppDBHojaRutaDetppField7: TppField;
    ppDBHojaRutaDetppField8: TppField;
    ppDBHojaRutaDetppField9: TppField;
    ppDBHojaRutaDetppField10: TppField;
    ppDBHojaRutaDetppField11: TppField;
    ppDBHojaRutaDetppField12: TppField;
    ppDBHojaRutaDetppField13: TppField;
    ppDBHojaRutaDetppField14: TppField;
    ppDBHojaRutaDetppField15: TppField;
    ppDBHojaRutaDetppField16: TppField;
    ppDBHojaRutaDetppField17: TppField;
    ppDBHojaRutaDetppField18: TppField;
    pprHojaRutaDet: TppReport;
    ppParameterList5: TppParameterList;
    ppdHojaRutaDet: TppDesigner;
    DataSource7: TDataSource;
    Panel4: TPanel;
    pcPie: TPageControl;
    TabSheet4: TTabSheet;
    Bevel9: TBevel;
    BitExporta: TBitBtn;
    btnImprimir: TBitBtn;
    grpBusAso: TGroupBox;
    z2bbtnBuscar: TfcShapeBtn;
    edtBuscar: TEdit;
    BitBuscar: TBitBtn;
    BitObsEsp: TBitBtn;
    ChkIndidual2: TCheckBox;
      bbtnImportacionMasiva: TBitBtn;
      bbtnLogImportacion: TBitBtn;
    TabSheet6: TTabSheet;
    lblTitulo: TLabel;
    lblInicio: TLabel;
    lblFin: TLabel;
    dblGestionDet: TwwDBLookupCombo;
    pnlResGes: TPanel;
    EdtDesGntDet: TEdit;
    dtpInicio: TDateTimePicker;
    dtpFin: TDateTimePicker;
    BitResGes: TBitBtn;
    btnDesmarcarTodo: TBitBtn;
    BitSalir: TBitBtn;
    ppHeaderBand9: TppHeaderBand;
    ppSystemVariable13: TppSystemVariable;
    ppSystemVariable14: TppSystemVariable;
    ppLabel201: TppLabel;
    ppLabel206: TppLabel;
    ppLabel208: TppLabel;
    ppLabel209: TppLabel;
    ppSystemVariable15: TppSystemVariable;
    ppLabel210: TppLabel;
    ppLabel211: TppLabel;
    ppLabel212: TppLabel;
    ppLabel213: TppLabel;
    ppLabel214: TppLabel;
    ppSystemVariable16: TppSystemVariable;
    ppLabel215: TppLabel;
    ppLabel216: TppLabel;
    ppLabel217: TppLabel;
    ppLabel218: TppLabel;
    ppLabel219: TppLabel;
    ppDetailBand14: TppDetailBand;
    ppLine41: TppLine;
    ppLine42: TppLine;
    ppLabel220: TppLabel;
    ppDBText33: TppDBText;
    ppLabel221: TppLabel;
    ppDBText34: TppDBText;
    ppLabel222: TppLabel;
    ppDBText35: TppDBText;
    ppLine33: TppLine;
    ppLabel223: TppLabel;
    ppLabel224: TppLabel;
    ppLabel225: TppLabel;
    ppLabel226: TppLabel;
    ppLine34: TppLine;
    ppLine31: TppLine;
    ppLabel227: TppLabel;
    ppLabel228: TppLabel;
    ppLabel229: TppLabel;
    ppLabel230: TppLabel;
    ppLine32: TppLine;
    ppLine35: TppLine;
    ppLabel231: TppLabel;
    ppLabel232: TppLabel;
    ppLabel233: TppLabel;
    ppLabel234: TppLabel;
    ppLine36: TppLine;
    ppLine37: TppLine;
    ppLine38: TppLine;
    ppLine39: TppLine;
    ppLine40: TppLine;
    ppLine43: TppLine;
    ppLine45: TppLine;
    ppLine46: TppLine;
    ppLine47: TppLine;
    ppLine48: TppLine;
    ppLine49: TppLine;
    ppLine50: TppLine;
    ppLine51: TppLine;
    ppLine52: TppLine;
    ppLine53: TppLine;
    ppLine54: TppLine;
    ppLine55: TppLine;
    ppLine56: TppLine;
    ppLine57: TppLine;
    ppDBText36: TppDBText;
    ppDBText37: TppDBText;
    ppDBText38: TppDBText;
    ppDBText39: TppDBText;
    ppDBText40: TppDBText;
    ppDBText41: TppDBText;
    ppDBText42: TppDBText;
    ppDBText43: TppDBText;
    ppDBText44: TppDBText;
    ppDBText45: TppDBText;
    ppDBText46: TppDBText;
    ppDBText47: TppDBText;
    ppLine58: TppLine;
    ppLine59: TppLine;
    ppLine60: TppLine;
    ppLabel235: TppLabel;
    ppLabel236: TppLabel;
    ppLabel237: TppLabel;
    ppLabel238: TppLabel;
    ppLabel239: TppLabel;
    ppLabel240: TppLabel;
    ppLine61: TppLine;
    ppLine62: TppLine;
    ppLine63: TppLine;
    ppLabel241: TppLabel;
    ppLabel242: TppLabel;
    ppLine64: TppLine;
    ppLine65: TppLine;
    ppLine66: TppLine;
    pplblSaldoVencido: TppLabel;
    pplblSaldoDiferido: TppLabel;
    pplblCuotasSaldoVencido: TppLabel;
    pplblCuotasSaldoDiferido: TppLabel;
    pplblCuotasPactadas: TppLabel;
    pplblValorCuota: TppLabel;
    ppLine67: TppLine;
    ppLine68: TppLine;
    ppLabel243: TppLabel;
    ppLabel244: TppLabel;
    pplblUltDescargos_Des_01: TppLabel;
    pplblUltDescargos_Des_02: TppLabel;
    ppLabel245: TppLabel;
    ppLabel246: TppLabel;
    ppLine70: TppLine;
    ppLine71: TppLine;
    ppLine72: TppLine;
    pplblUltPagosDirectos_Des_01: TppLabel;
    pplblUltPagosDirectos_Des_02: TppLabel;
    ppLine73: TppLine;
    pplblUltDescargos_Mto_01: TppLabel;
    pplblUltDescargos_Mto_02: TppLabel;
    pplblUltPagosDirectos_Mto_01: TppLabel;
    pplblUltPagosDirectos_Mto_02: TppLabel;
    ppLine76: TppLine;
    ppLabel247: TppLabel;
    ppLabel248: TppLabel;
    ppLine77: TppLine;
    ppLine78: TppLine;
    pplblUltDescargos_Des_03: TppLabel;
    ppLabel249: TppLabel;
    pplblUltPagosDirectos_Des_03: TppLabel;
    ppLine84: TppLine;
    pplblUltDescargos_Mto_03: TppLabel;
    pplblUltPagosDirectos_Mto_03: TppLabel;
    ppLine69: TppLine;
    ppLabel256: TppLabel;
    ppLabel257: TppLabel;
    ppLabel258: TppLabel;
    ppLabel259: TppLabel;
    ppLabel260: TppLabel;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppLine13: TppLine;
    ppLine14: TppLine;
    ppLine16: TppLine;
    ppLine94: TppLine;
    ppLine15: TppLine;
    ppLine99: TppLine;
    ppLine100: TppLine;
    pplblGesNum_01: TppLabel;
    pplblGesNum_02: TppLabel;
    pplblGesNum_03: TppLabel;
    pplblGesNum_04: TppLabel;
    pplblGesTipo_01: TppLabel;
    pplblGesTipo_02: TppLabel;
    pplblGesTipo_03: TppLabel;
    pplblGesTipo_04: TppLabel;
    pplblGesResultado_01: TppLabel;
    pplblGesResultado_02: TppLabel;
    pplblGesResultado_03: TppLabel;
    pplblGesResultado_04: TppLabel;
    pplblGesGestionado_04: TppLabel;
    pplblGesGestionado_03: TppLabel;
    pplblGesGestionado_02: TppLabel;
    pplblGesGestionado_01: TppLabel;
    pplblGesFecHor_03: TppLabel;
    pplblGesFecHor_04: TppLabel;
    pplblGesFecHor_02: TppLabel;
    pplblGesFecHor_01: TppLabel;
    ppShape6: TppShape;
    ppFooterBand9: TppFooterBand;
    ppRichText3: TppRichText;
    ppLine44: TppLine;
    ppLabel255: TppLabel;
    ppSummaryBand10: TppSummaryBand;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppDBText53: TppDBText;
    ppLine93: TppLine;
    ppGroupFooterBand3: TppGroupFooterBand;
    Shape2: TShape;
    lblIndDeudoresAsignados: TLabel;
    Shape3: TShape;
    Shape9: TShape;
    Shape5: TShape;
    Shape6: TShape;
    Shape7: TShape;
    Shape10: TShape;
    Shape11: TShape;
    Shape12: TShape;
    Shape13: TShape;
    Shape14: TShape;
    Shape15: TShape;
    Shape16: TShape;
    Shape17: TShape;
    Shape18: TShape;
    Shape19: TShape;
    Shape20: TShape;
    Shape22: TShape;
    Shape23: TShape;
    Shape24: TShape;
    Shape25: TShape;
    Shape26: TShape;
    Shape27: TShape;
    Shape28: TShape;
    Shape29: TShape;
    Shape30: TShape;
    Shape31: TShape;
    Shape33: TShape;
    Shape34: TShape;
    Shape35: TShape;
    Shape36: TShape;
    Shape37: TShape;
    Shape40: TShape;
    Shape41: TShape;
    lblIndGestionados: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    lblIndNoGestionados: TLabel;
    lblIndContactados: TLabel;
    lblIndConCompromisos: TLabel;
    lblIndSinCompromisos: TLabel;
    lblIndCumplidos: TLabel;
    lblIndInCumplidos: TLabel;
    lblIndNoContactados: TLabel;
    lblIndProxVencer: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label20: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    ppDBText9: TppDBText;
    ppLabel17: TppLabel;
    ppLine6: TppLine;
    ppLine7: TppLine;
    btnContactabilidad: TBitBtn;
    Label1: TLabel;
    Shape4: TShape;
    Shape8: TShape;
    lblCantDomValidados: TLabel;
    lblCantDomPorValidar: TLabel;
    Shape21: TShape;
    Shape32: TShape;
    Label6: TLabel;
    ppLabel20: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    pplblValidado: TppLabel;
    pplblPorValidar: TppLabel;
    ppLabel24: TppLabel;
    pplblTelefonos: TppLabel;
      // FIN : SPP_201402_GESCOB
      Procedure BitSalirClick(Sender : TObject);
      Procedure FormKeyPress(Sender : TObject; Var Key : Char);
      Procedure dtgGestionDrawFooterCell(Sender : TObject; Canvas : TCanvas;
         FooterCellRect : TRect; Field : TField; FooterText : String;
         Var DefaultDrawing : Boolean);
      Procedure dtgGestionDrawTitleCell(Sender : TObject; Canvas : TCanvas;
         Field : TField; Rect : TRect; Var DefaultDrawing : Boolean);
      Procedure FormActivate(Sender : TObject);
      Procedure BitFiltrarClick(Sender : TObject);
      Procedure dtgGestionDblClick(Sender : TObject);
      Procedure edtBuscarChange(Sender : TObject);
      Procedure edtBuscarKeyPress(Sender : TObject; Var Key : Char);
      Procedure BitBuscarClick(Sender : TObject);
      Procedure dblUserIntChange(Sender : TObject);
      Procedure BitObsEspClick(Sender : TObject);
      // INICIO : SPP_201402_GESCOB
      //Procedure chkSaldoClick(Sender : TObject);
      //Procedure dbeMtoIniExit(Sender : TObject);
      Procedure dbeMtoIniKeyPress(Sender : TObject; Var Key : Char);
      Procedure dbeMtoFinKeyPress(Sender : TObject; Var Key : Char);
      //Procedure dbeMtoFinExit(Sender : TObject);
      //Procedure chkSaldoTotalClick(Sender : TObject);
      // FIN : SPP_201402_GESCOB
      Procedure dblGestionDetChange(Sender : TObject);
      Procedure BitResGesClick(Sender : TObject);
      Procedure BitExportaClick(Sender : TObject);
      Procedure dtgOtrasGestDblClick(Sender : TObject);
      Procedure dtgOtrasGestDrawDataCell(Sender : TObject; Const Rect : TRect;
         Field : TField; State : TGridDrawState);
      Procedure dtgGestionTitleButtonClick(Sender : TObject;
         AFieldName : String);
      Procedure dtgOtrasGestTitleButtonClick(Sender : TObject;
         AFieldName : String);
      Procedure dtgOtrasGestDrawTitleCell(Sender : TObject; Canvas : TCanvas;
         Field : TField; Rect : TRect; Var DefaultDrawing : Boolean);
      Procedure btnImprimirClick(Sender : TObject);
      Procedure z2bbtnBuscarOGClick(Sender : TObject);
      Procedure rdbNombreClick(Sender : TObject);
      Procedure rdbDniClick(Sender : TObject);
      Procedure dblcDptoChange(Sender : TObject);
      Procedure dblcProvinChange(Sender : TObject);
      Procedure dblcDistChange(Sender : TObject);
      Procedure dblcProvinEnter(Sender : TObject);
      Procedure dblcDistEnter(Sender : TObject);
      Procedure dblcPrioridadChange(Sender : TObject);
      Procedure rgRefinanciadosClick(Sender : TObject);
      // INICIO : SPP_201402_GESCOB
      //Procedure BitImpCartaClick(Sender : TObject);
      Procedure btnDesmarcarTodoClick(Sender : TObject);
      //Procedure bbtnExpCartaClick(Sender : TObject);
      Procedure rgSituaClick(Sender : TObject);
      Procedure dblUserIntExit(Sender : TObject);
      Procedure chbxCompromisosClick(Sender : TObject);
      Procedure FormClose(Sender : TObject; Var Action : TCloseAction);
      Procedure dtgGestionDrawDataCell(Sender : TObject; Const Rect : TRect;
         Field : TField; State : TGridDrawState);
      //Procedure ppDetailBand5BeforePrint(Sender : TObject);
      //Procedure ppDetailBand3BeforePrint(Sender : TObject);
      //Procedure ppDetailBand7BeforePrint(Sender : TObject);
      //Procedure ppDetailBand9BeforePrint(Sender : TObject);
      //Procedure ppDetailBand11BeforePrint(Sender : TObject);
      // FIN : SPP_201402_GESCOB
      Procedure ppHeaderBand7BeforePrint(Sender : TObject);
      Procedure btnImpHojaRutaClick(Sender : TObject);
      Procedure btnExpHojaRutaClick(Sender : TObject);
      Procedure edtHojaRutaDiaBuscarChange(Sender : TObject);
      Procedure edtHojaRutaDiaBuscarKeyPress(Sender : TObject; Var Key : Char);
      Procedure btnNuevaHojaRutaClick(Sender : TObject);
      Procedure btnCerrarHojaRutaClick(Sender : TObject);
      Procedure dtgHojaRutaDiaTitleButtonClick(Sender : TObject;
         AFieldName : String);
      Procedure dtgHojaRutaDiaDblClick(Sender : TObject);
      Procedure btnHojaRutaDiaDelClick(Sender : TObject);
      Procedure btnHojaRutaDiaAddPersonalClick(Sender : TObject);
      Procedure dtgHojaRutaDiaDrawDataCell(Sender : TObject;
         Const Rect : TRect; Field : TField; State : TGridDrawState);
      Procedure btnHojaRutaDiaAddOtrosClick(Sender : TObject);
      // INICIO : SPP_201402_GESCOB
      procedure bbtnLogImportacionClick(Sender: TObject);
      procedure bbtnImportacionMasivaClick(Sender: TObject);
      procedure btnDesasignarClick(Sender: TObject);
      procedure rgUbigeoClick(Sender: TObject);
      procedure dblcColegioChange(Sender: TObject);
      procedure ppDBText32GetText(Sender: TObject; var Text: String);
      procedure btnContactabilidadClick(Sender: TObject);
      procedure ppDetailBand14BeforePrint(Sender: TObject);
      // FIN : SPP_201402_GESCOB
   Private
    { Private declarations }
      // INICIO : SPP_201402_GESCOB
      xsZipIdCol : string;
      cdsHojRutDetTelf : TwwClientDataSet;
      dsHojRutDetTelf : TwwDataSource;
      cdsHojRutDetSaldos : TwwClientDataSet;
      dsHojRutDetSaldos : TwwDataSource;
      cdsHojRutDetDescargos : TwwClientDataSet;
      dsHojRutDetDescargos : TwwDataSource;
      cdsHojRutDetPagos : TwwClientDataSet;
      dsHojRutDetPagos : TwwDataSource;
      cdsHojRutDetGestiones : TwwClientDataSet;
      dsHojRutDetGestiones : TwwDataSource;
      // FIN : SPP_201402_GESCOB
      xMsgSeleccionarRegistros : String;
      xSQLin : String;
      xPeriodoCartera : String;
      xRefinanciado : String;
      xSituacion : String;
      xUsuarioGestor, xTabla, xIdGes : String;
      Procedure HeadersGrid();
      Procedure FootersGrid();
      Procedure ApliPagos(xAsoId, xCreDid : String);
      Function getFiltroUbigeo(ITipo : String; IDptoid : String; ICiudid : String) : String;
      Procedure LimpiarGrid;
      Procedure cargarFiltros;
      Procedure Asignadas();
      Procedure fn_cargar_hoja_ruta_dia();
      Function fn_confirma_activar_hoja_ruta : boolean;
      Procedure CreateCDSImpMasiva;
      function fn_existe_asociado_hoja_ruta_det(P_AsoId:STRING; P_Gestor : string; P_Periodo:String): boolean;
      function fn_existe_gestion(P_Periodo, P_AsoId: string): boolean;
      // INICIO : SPP_201402_GESCOB
      procedure fn_cargar_colegios;
      procedure fn_calcular_indicadores;
      // FIN : SPP_201402_GESCOB
   Public
      xsPeriodoGestionActual : string;
      Procedure MstCabecera(xAsoid, xPeriodo : String);
      Procedure CerraGestion(xAsoId : String);
      Procedure CargaSaldo(xAsoid, xPeriodo : String);
      Function SaldoFinal(xAsoId : String) : Currency;
      Procedure MstAsociados;
   End;

Var
   fGestInt : TfGestInt;

Implementation

// INICIO : SPP_201402_GESCOB
Uses GESDM1, GES203a, GES001, GES210b, GES203h, GES203j, GES203p, GES210c,
  GES203r, StrUtils, GES203c;
// FIN : SPP_201402_GESCOB

{$R *.dfm}

(******************************************************************************)
(************************* inicia frm *****************************************)
(*+++++++++++******************************************************************)
//******************************************************************************
// Nombre : FormActivate
// Descripcion : Inicializa Controles
//******************************************************************************

Procedure TfGestInt.FormActivate(Sender : TObject);
Var
   xSQL : String;
Begin
   Screen.Cursor := crHourGlass;
   // INICIO : SPP_201402_GESCOB
   lblIndDeudoresAsignados.Caption := '';
   lblIndGestionados.Caption := '';
   lblIndNoGestionados.Caption := '';
   lblIndContactados.Caption := '';
   lblIndNoContactados.Caption := '';
   lblIndConCompromisos.Caption := '';
   lblIndSinCompromisos.Caption := '';
   lblIndCumplidos.Caption := '';
   lblIndInCumplidos.Caption := '';
   lblIndProxVencer.Caption := '';

   pnlCab.Enabled := false;
   xsZipIdCol := ''; // POR DEFECTO ZIP DOMICILIO
   // FIN : SPP_201402_GESCOB
   xsPeriodoGestionActual :=  DM1.fn_get_periodo_gestion_actual();

   xSQL := 'SELECT DPTOID, DPTODES, DPTOABR FROM APO158 ORDER BY DPTOID';
   DM1.cdsDpto.Close;
   DM1.cdsDpto.DataRequest(xSQL);
   DM1.cdsDpto.Open;

   xSQL := 'SELECT CIUDID, CIUDDES, CIUDABR, DPTOID FROM TGE121 ORDER BY DPTOID, CIUDID';
   DM1.cdsProvin.Close;
   DM1.cdsProvin.DataRequest(xSQL);
   DM1.cdsProvin.Open;

   xSQL := 'SELECT ZIPABR,ZIPDES,ZIPID,CIUDID,DPTOID FROM TGE122 ORDER BY DPTOID, CIUDID, ZIPID';
   DM1.cdsDist.Close;
   DM1.cdsDist.DataRequest(xSQL);
   DM1.cdsDist.Open;

   // INICIO : SPP_201402_GESCOB
   fn_cargar_colegios();
   pnlColegio.Visible := rgUbigeo.ItemIndex = 1;
   // FIN : SPP_201402_GESCOB

   xSQL := 'SELECT DPTOID, ITEM, USUARIO, USUNOM, '
      + '          CIUDID, ZIPID, USUDIR, USUMAIL, USUTEL, '
      + '          USUCEL, FREG, USUREG, USUFAX, USUDIR2, '
      + '          USUDIR3, USUDIR4, USUDIR5 '
      + '     FROM GES_COB_USU';
   DM1.cdsGestor.Close;
   DM1.cdsGestor.DataRequest(xSQL);
   DM1.cdsGestor.Open;

   xMsgSeleccionarRegistros := 'Debe Seleccionar/Marcar registros' + chr(13) + 'Para Marcar/Desmarcar uno o mas registros: ' + chr(13) + 'Presione la Tecla Control y de clic en el registro que desea Marcar/Desmarcar';
   DtpCompromisos.Enabled := chbxCompromisos.Checked;
   pcGestion.ActivePage := tsPersonal;
   pcPie.ActivePageIndex := 0;
   xTabla := 'GES_COB_DOM'; // por defecto lo que mas se utiliza, la gestion domiciliaria
   dtpInicio.Date := DM1.FechaSys;
   dtpFin.Date := DM1.FechaSys;

   If StrToInt(Copy(DM1.NivelUsuario(DM1.wUsuario), 2, 1)) >= 2 Then
   Begin
      dtpInicio.Visible := True;
      dtpFin.Visible := True;
      lblInicio.Visible := True;
      lblFin.Visible := True;
      lblTitulo.Visible := True;
      dblGestionDet.Visible := True;
      pnlResGes.Visible := True;
      BitResGes.Visible := True;

      // INICIO : SPP_201402_GESCOB
      //pnlCab.Enabled := True;
      pnlCab2.Enabled := True;
      pcPie.Visible := False;
      pcPie.pages[1].TabVisible := True;
      // FIN : SPP_201402_GESCOB      
   End;

   // periodo procesado
   xSQL := 'SELECT MAX(PERIODO) PERIODO FROM GES_COB_CAB';
   DM1.cdsQry1.Close;
   DM1.cdsQry1.DataRequest(xSQL);
   DM1.cdsQry1.Open;
   xPeriodoCartera := DM1.cdsQry1.FieldByname('PERIODO').AsString;

   xSQL := 'SELECT C.CODIGO_PRIORIDAD, C.DESCRIPCION_PRIORIDAD '
      + '  FROM GES_COB_PRI C '
      + ' ORDER BY C.CODIGO_PRIORIDAD ';
   DM1.cdsUPro.Close;
   DM1.cdsUPro.DataRequest(xSQL);
   DM1.cdsUPro.Open;
   dblcPrioridad.LookupTable := DM1.cdsUPro;
   dblcPrioridad.LookupField := 'CODIGO_PRIORIDAD';
   dblcPrioridad.Enabled := (DM1.cdsUPro.RecordCount > 0);

// INICIO : SPP_201402_GESCOB
   //lblRotulo.Caption := '';
// FIN : SPP_201402_GESCOB
   DtpCompromisos.Date := DM1.FechaSys;

   //resultado de gestion
   xSQL := 'SELECT IDGTN,IDGTNDET,DESCRIPCION FROM GES_REF_SEG_DET WHERE IDGTN=''01'' ';
   DM1.cdsTipCreA.Close;
   DM1.cdsTipCreA.DataRequest(xSQL);
   DM1.cdsTipCreA.Open;
   dblGestionDet.LookupTable := DM1.cdsTipCreA;
   dblGestionDet.Enabled := (DM1.cdsTipCreA.RecordCount > 0);

   rgRefinanciadosClick(rgRefinanciados);

   // cargar usuarios
   fGestInt.dblUserInt.Visible := True;
   fGestInt.pnlUser.Visible := True;
   xSQL := 'SELECT USERNIV,A.USERID,B.USERNOM '
      + '     FROM GES_NIV_USU_OTO A,TGE006 B '
      + '    WHERE A.USERID = B.USERID '
      + '      AND REGACT = ''S'' '
      + '      AND USERNIV IN (''N1'') '
      + '    ORDER BY USERID';
   DM1.cdsQry6.Close;
   DM1.cdsQry6.DataRequest(xSQL);
   DM1.cdsQry6.Open;
   dblUserInt.Enabled := (DM1.cdsQry6.RecordCount > 0);
   If StrToInt(Copy(DM1.NivelUsuario(DM1.wUsuario), 2, 1)) = 1 Then
   Begin
      DM1.cdsQry6.Filtered := false;
      DM1.cdsQry6.Filter := 'USERID = ''' + DM1.wUsuario + '''';
      DM1.cdsQry6.Filtered := true;
      dblUserInt.Enabled := false;
      If DM1.cdsQry6.RecordCount > 0 Then
      Begin
         dblUserInt.Text := DM1.wUsuario;
         dblUserIntExit(dblUserInt);
      End;
   End;

   //departamento -- APO158 se abre en DM1
   //provincia -- TGE121  se abre en DM1
   //distrito -- TGE122  se abre en DM1

   xSituacion := '';
   Asignadas();
   //LimpiarGrid;
   fn_cargar_hoja_ruta_dia();
   Screen.Cursor := crDefault;
End;

(*+++++++++++******************************************************************)
// INICIO : SPP_201402_GESCOB
Procedure TfGestInt.LimpiarGrid;
Var
   xSQL : String;
Begin
   xSQL := 'SELECT ''          '' ASOCODMOD, PERIODO,C.OFDESNOM,A.OFDESID,A.USEID, '
      + '          D.USENOM,A.UPAGOID,A.UPROID,CFC_F,CFC_N,CFC_R,ASOTIPID,ASOID, '
      + '          ASOAPENOM,NVL(SALVEN,0) SALVEN, NVL(SALPEN,0) SALPEN, '
      + '          NVL(SALTOT,0) SALTOT,CUOVEN,CUOPEN,0 CUOTOT,ESTDES,SALACT,RESGES, '
      + '          A.USUARIO,USUASIG,TO_DATE(FECASIG) FECASIG, ESTGES,TIPGES,ESTDEU, '
      + '          B.DESREF,VENACT,PENACT ,DIASTRANS,DIASTRANSACT '
      + '          ,'' '' DEPARTAMENTO, '' '' PROVINCIA, '' '' DISTRITO '
      + '          ,''S'' PRI_ALTA '
      + '          ,''NORMAL'' PRIORIDAD '
      + '          ,NVL(SALDIF, 0 ) SALDIF, NVL(CUODIF, 0) CUODIF, '
      + '          ''XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'' DISOPE '
      + '     FROM ' + xTabla + ' A, GES_TIP_REF_DET B,APO110 C,APO101 D '
      + '    WHERE 1 = 2 '
      + '      AND A.ESTGES=B.CODREF(+) '
      + '      AND B.CODTIP=''02'' '
      + '      AND A.OFDESID=C.OFDESID(+) '
      + '      AND A.USEID=D.USEID(+) '
      + '      AND A.UPAGOID=D.UPAGOID(+) '
      + '      AND A.UPROID=D.UPROID(+)';

   DM1.cdsMovCre.Close;
   DM1.cdsMovCre.DataRequest(xSQL);
   DM1.cdsMovCre.Open;
   HeadersGrid();
   TNumericField(DM1.cdsMovCre.FieldByName('SALTOT')).DisplayFormat := '###,###,##0.#0';
   TNumericField(DM1.cdsMovCre.FieldByName('SALVEN')).DisplayFormat := '###,###,##0.#0';
   TNumericField(DM1.cdsMovCre.FieldByName('SALPEN')).DisplayFormat := '###,###,##0.#0';
   TNumericField(DM1.cdsMovCre.FieldByName('SALACT')).DisplayFormat := '###,###,##0.#0';
   FootersGrid();
End;
// FIN : SPP_201402_GESCOB
(*+++++++++++******************************************************************)

Procedure TfGestInt.FormKeyPress(Sender : TObject; Var Key : Char);
Begin
   If Key = #13 Then
   Begin
      Key := #0;
      Perform(WM_NEXTDLGCTL, 0, 0);
   End
End;

(*+++++++++++******************************************************************)
// INICIO : SPP_201402_GESCOB
Function TfGestInt.getFiltroUbigeo(ITipo : String; IDptoid : String; ICiudid : String) : String;
Var
   xFilter : String;
   xSQL : String;
Begin
   If (ITipo = 'DEPARTAMENTO') Then
   Begin
      CASE rgUbigeo.ItemIndex OF
        0 : BEGIN
              xSQL := 'SELECT DISTINCT SUBSTR(A.ZIPID,1,2) DPTOID '
                    + '     FROM ' + xTabla + ' A, GES_TIP_REF_DET B '
                    + '    WHERE A.TIPGES = ''01'' /*GESTION INTERNA*/'
                    + '      AND A.USUARIO = ' + QuotedStr(xUsuarioGestor)
                    + '      AND A.ESTGES = B.CODREF(+) '
                    + '      AND B.CODTIP =''02'' ';
            END;
        1:  BEGIN
              xSQL := 'SELECT DISTINCT SUBSTR(C.UBIGEO_DIR,1,2) DPTOID '
                    + '  FROM ' + xTabla + ' A '
                    + '      ,GES_TIP_REF_DET B '
                    + '      , ASO_CEN_EDU C '
                    + ' WHERE A.TIPGES = ''01'' /*GESTION INTERNA*/ '
                    + '   AND A.USUARIO = ' + QuotedStr(xUsuarioGestor)
                    + '   AND A.ESTGES = B.CODREF(+) '
                    + '   AND B.CODTIP = ''02'' '
                    + '   AND A.CENEDUID = C.CENEDUID '
           END;
       END;
      DM1.cdsQry1.Close;
      DM1.cdsQry1.DataRequest(xSQL);
      DM1.cdsQry1.Open;
      If DM1.cdsQry1.Recordcount > 0 Then
      Begin
         xfilter := '';
         While Not DM1.cdsQry1.Eof Do
         Begin
            If xfilter <> '' Then xfilter := xfilter + ', ';
            xfilter := xfilter + QuotedStr(DM1.cdsQry1.FieldByname('DPTOID').AsString);
            DM1.cdsQry1.Next;
         End;
         xfilter := 'DPTOID IN ( ' + xfilter + ' ) ';
      End
      Else
         xfilter := 'DPTOID = ''xyx''';
   End
   Else
      If (ITipo = 'PROVINCIA') Then
      Begin
         CASE rgUbigeo.ItemIndex OF
           0 : BEGIN
                 xSQL := 'SELECT SUBSTR(CIUDID, 1, 2) DPTOID, SUBSTR(CIUDID, 3, 2) CIUDID '
                       + '     FROM (SELECT DISTINCT SUBSTR(A.ZIPID,1,4) CIUDID '
                       + '             FROM ' + xTabla + ' A, GES_TIP_REF_DET B '
                       + '            WHERE A.TIPGES = ''01'' /*GESTION INTERNA*/'
                       + '              AND A.USUARIO = ' + QuotedStr(xUsuarioGestor)
                       + '              AND SUBSTR(A.ZIPID,1,2) = ' + QuotedStr(IDptoid)
                       + '              AND A.ESTGES = B.CODREF(+) '
                       + '              AND B.CODTIP =''02'' '
                       + '          )';
               END;
           1 : BEGIN
                 xSQL := 'SELECT SUBSTR(CIUDID, 1, 2) DPTOID '
                       + '      ,SUBSTR(CIUDID, 3, 2) CIUDID '
                       + '  FROM (SELECT DISTINCT SUBSTR(C.UBIGEO_DIR, 1, 4) CIUDID '
                       + '          FROM ' + xTabla + '     A '
                       + '              ,GES_TIP_REF_DET B '
                       + '              ,ASO_CEN_EDU C '
                       + '         WHERE A.TIPGES = ''01'' /*GESTION INTERNA*/ '
                       + '           AND A.USUARIO = ' + QuotedStr(xUsuarioGestor)
                       + '           AND SUBSTR(C.UBIGEO_DIR, 1, 2) = ' + QuotedStr(IDptoid)
                       + '           AND A.ESTGES = B.CODREF(+) '
                       + '           AND B.CODTIP = ''02'' '
                       + '           AND A.CENEDUID = C.CENEDUID) ';
               END;
         END;
         DM1.cdsQry1.Close;
         DM1.cdsQry1.DataRequest(xSQL);
         DM1.cdsQry1.Open;
         If DM1.cdsQry1.Recordcount > 0 Then
         Begin
            xfilter := '';
            While Not DM1.cdsQry1.Eof Do
            Begin
               If xfilter <> '' Then xfilter := xfilter + ' OR ';
               xfilter := xfilter + '(DPTOID = ' + QuotedStr(DM1.cdsQry1.FieldByname('DPTOID').AsString) + ' AND CIUDID = ' + QuotedStr(DM1.cdsQry1.FieldByname('CIUDID').AsString) + ')';
               DM1.cdsQry1.Next;
            End;
         End
         Else
            xfilter := '(DPTOID = ''xyz'' AND CIUDID = ''xyz'')';
      End
      Else
         If (ITipo = 'DISTRITO') Then
         Begin
            CASE rgUbigeo.ItemIndex OF
              0 : BEGIN
                      xSQL := 'SELECT SUBSTR(ZIPID, 1, 2) DPTOID, SUBSTR(ZIPID, 3, 2) CIUDID, SUBSTR(ZIPID, 5, 2) ZIPID '
                         + '     FROM (SELECT DISTINCT A.ZIPID '
                         + '             FROM ' + xTabla + ' A, GES_TIP_REF_DET B '
                         + '            WHERE A.TIPGES = ''01'' /*GESTION INTERNA*/'
                         + '              AND A.USUARIO = ' + QuotedStr(xUsuarioGestor)
                         + '              AND SUBSTR(A.ZIPID,1,2) = ' + QuotedStr(IDptoid)
                         + '              AND SUBSTR(A.ZIPID,3,2) = ' + QuotedStr(ICiudid)
                         + '              AND A.ESTGES = B.CODREF(+) '
                         + '              AND B.CODTIP =''02'' '
                         + '            )';
                   END;      
               1 : BEGIN
                      xSQL := 'SELECT SUBSTR(ZIPID, 1, 2) DPTOID '
                            + '      ,SUBSTR(ZIPID, 3, 2) CIUDID '
                            + '      ,SUBSTR(ZIPID, 5, 2) ZIPID '
                            + '  FROM (SELECT DISTINCT C.UBIGEO_DIR ZIPID '
                            + '          FROM ' + xTabla + '     A '
                            + '              ,GES_TIP_REF_DET B '
                            + '              ,ASO_CEN_EDU C '
                            + '         WHERE A.TIPGES = ''01'' /*GESTION INTERNA*/ '
                            + '           AND A.USUARIO = ' + QuotedStr(xUsuarioGestor)
                            + '           AND SUBSTR(C.UBIGEO_DIR, 1, 2) = ' + QuotedStr(IDptoid)
                            + '           AND SUBSTR(C.UBIGEO_DIR, 3, 2) = ' + QuotedStr(ICiudid)
                            + '           AND A.ESTGES = B.CODREF(+) '
                            + '           AND B.CODTIP = ''02'' '
                            + '           AND A.CENEDUID = C.CENEDUID) ';
                   END;
            END;
            DM1.cdsQry1.Close;
            DM1.cdsQry1.DataRequest(xSQL);
            DM1.cdsQry1.Open;
            If DM1.cdsQry1.Recordcount > 0 Then
            Begin
               xfilter := '';
               While Not DM1.cdsQry1.Eof Do
               Begin
                  If xfilter <> '' Then xfilter := xfilter + ' OR ';
                  xfilter := xfilter + '(DPTOID = ' + QuotedStr(DM1.cdsQry1.FieldByname('DPTOID').AsString) + ' AND CIUDID = ' + QuotedStr(DM1.cdsQry1.FieldByname('CIUDID').AsString) + ' AND ZIPID = ' + QuotedStr(DM1.cdsQry1.FieldByname('ZIPID').AsString) + ')';
                  DM1.cdsQry1.Next;
               End;
            End
            Else
               xfilter := '(DPTOID = ''xyz'' AND CIUDID = ''xyz'' AND ZIPID = ''xyz'')';
         End;
   result := xFilter;
End;
(*+++++++++++******************************************************************)
// FIN : SPP_201402_GESCOB

Procedure TfGestInt.cargarFiltros;
Begin
   //ubigeo
   DM1.cdsDist.Filtered := False;
   DM1.cdsDist.Filter := '(DPTOID = ''xyz'' AND CIUDID = ''xyz'' AND ZIPID = ''xyz'')';
   DM1.cdsDist.Filtered := true;
   dblcDist.enabled := false;
   dblcDist.text := '';
   edtDist.text := '';

   DM1.cdsProvin.Filtered := False;
   DM1.cdsProvin.Filter := '(DPTOID = ''xyz'' AND CIUDID = ''xyz'')';
   DM1.cdsProvin.Filtered := true;
   dblcProvin.enabled := false;
   dblcprovin.text := '';
   edtprovin.text := '';

   DM1.cdsDpto.Filtered := False;
   DM1.cdsDpto.Filter := getFiltroUbigeo('DEPARTAMENTO', '', '');
   DM1.cdsDpto.Filtered := true;
   dblcDpto.text := '';
   edtDpto.text := '';
End;

(******************************************************************************)
(****************** eventos ***************************************************)
(*+++++++++++******************************************************************)

Procedure TfGestInt.rgSituaClick(Sender : TObject);
Begin
   Screen.Cursor := crHourGlass;
   LimpiarGrid();
   If rgSitua.ItemIndex = 0 Then xSituacion := ''; //' AND A.ESTGES=''00'' ';
   If rgSitua.ItemIndex = 1 Then xSituacion := ' AND A.ESTGES=''01'' ';
   If rgSitua.ItemIndex = 2 Then xSituacion := ' AND A.ESTGES=''02'' ';
   If rgSitua.ItemIndex = 3 Then xSituacion := ' AND A.ESTGES=''03'' ';
   Screen.Cursor := crDefault;
End;

(*+++++++++++******************************************************************)

//******************************************************************************
// Nombre : dblUserIntExit
// Descripcion : Ubica datos del Gestor Interno Seleccionado
//******************************************************************************
// INICIO : SPP_201402_GESCOB
Procedure TfGestInt.dblUserIntExit(Sender : TObject);
Begin
   Screen.Cursor := crHourGlass;
   If trim(edtusernom.text) <> '' Then
   Begin
      Screen.Cursor := crHourGlass;
      xUsuarioGestor := trim(dblUserInt.Text);
      If DM1.CrgDescrip('USERID=' + QuotedStr(xUsuarioGestor), 'GES_NIV_USU_OTO', 'TIPACT') = '01' Then
      Begin
         xTabla := 'GES_COB_IND';
         xIdGes := '01';
         //pcPie.pages[1].TabVisible := False;
      End;
      If DM1.CrgDescrip('USERID=' + QuotedStr(xUsuarioGestor), 'GES_NIV_USU_OTO', 'TIPACT') = '02' Then
      Begin
         xTabla := 'GES_COB_DOM';
         xIdGes := '03';
         //pcPie.pages[1].TabVisible := True;
      End;
      self.Caption := 'Gestión Interna - Tipo : ' + DM1.CrgDescrip('IDACT=' + QuotedStr(DM1.CrgDescrip('USERID=' + QuotedStr(xUsuarioGestor), 'GES_NIV_USU_OTO', 'TIPACT')), DM1.ConsultaActividad, 'DESACT');
      lblGestor.Caption := 'Gestor(a) : ' + Trim(DM1.CrgDescrip('USERID=' + QuotedStr(xUsuarioGestor), 'TGE006', 'USERNOM'));
      grpBusAso.Visible := True;
      cargarFiltros();
      pnlCab.Enabled := True;
      //pnlCab2.Enabled := True;
      pcPie.Visible := true;
      Screen.Cursor := crDefault;
   End
   Else
      xUsuarioGestor := '';
   fn_cargar_hoja_ruta_dia();
   Screen.Cursor := crDefault;
End;
// FIN : SPP_201402_GESCOB
(*+++++++++++******************************************************************)
// INICIO : SPP_201402_GESCOB
Procedure TfGestInt.dblUserIntChange(Sender : TObject);
Begin
   Screen.Cursor := crHourGlass;
   LimpiarGrid();
   dblcDpto.text := '';
   edtDpto.text := '';
   dblcprovin.text := '';
   edtprovin.text := '';
   dblcDist.text := '';
   edtDist.text := '';
   edtusernom.text := '';

   If DM1.cdsQry6.Locate('USERID', VarArrayof([dblUserInt.Text]), []) Then
   begin
      EdtUserNom.Text := DM1.cdsQry6.fieldbyname('USERNOM').AsString;
      fn_calcular_indicadores;
   end
   Else
   Begin
      Beep;
      EdtUserNom.Text := '';
   End;
   Screen.Cursor := crDefault;
End;
// FIN : SPP_201402_GESCOB
(*+++++++++++******************************************************************)

Procedure TfGestInt.dblcDptoChange(Sender : TObject);
Begin
   // INICIO : SPP_201402_GESCOB
   Screen.Cursor := crHourGlass;
   LimpiarGrid;

   //ubigeo
   (*
   DM1.cdsDist.Filtered := False;
   DM1.cdsDist.Filter := '(DPTOID = ''xyz'' AND CIUDID = ''xyz'' AND ZIPID = ''xyz'')';
   DM1.cdsDist.Filtered := true;
   dblcDist.enabled := false;
   dblcDist.text := '';
   edtDist.text := '';
   *)
   If DM1.cdsDPTO.Locate('DPTOID', VarArrayof([dblcDpto.text]), []) Then
   Begin
      EdtDpto.Text := DM1.cdsDpto.FieldByName('DPTODES').Asstring;
      DM1.cdsProvin.Filtered := False;
      DM1.cdsProvin.Filter := getFiltroUbigeo('PROVINCIA', dblcDpto.text, '');
      DM1.cdsProvin.Filtered := true;
      dblcProvin.Enabled := True;
   End
   Else
   Begin
      If Length(dblcDpto.Text) <> 2 Then
      Begin
      Beep;
      EdtDpto.Text := '';
         DM1.cdsProvin.Filtered := False;
         DM1.cdsProvin.Filter := 'DPTOID=''' + dblcDpto.text + '''';
         DM1.cdsProvin.Filtered := true;
         DM1.cdsDist.Filtered := False;
         DM1.cdsDist.Filter := 'DPTOID=''' + dblcDpto.text + ''' and CIUDID=''' + dblcProvin.text + '''';
         DM1.cdsDist.Filtered := true;
      End;
   End;
   dblcprovin.text := '';
   edtprovin.text := '';
   dblcDist.text := '';
   edtDist.text := '';
   dblcColegio.Text := '';
   edtColegio.Text := '';
   Screen.Cursor := crDefault;
   // FIN : SPP_201402_GESCOB
End;

(*+++++++++++******************************************************************)

Procedure TfGestInt.dblcProvinChange(Sender : TObject);
Begin
   Screen.Cursor := crHourGlass;
   LimpiarGrid;
   If DM1.cdsProvin.Locate('CIUDID', VarArrayof([dblcProvin.text]), []) Then
   Begin
      Edtprovin.Text := DM1.cdsProvin.FieldByName('CIUDDES').Asstring;
      DM1.cdsDist.Filtered := False;
      DM1.cdsDist.Filter := getFiltroUbigeo('DISTRITO', dblcDpto.Text, dblcProvin.text);
      DM1.cdsDist.Filtered := True;
      dblcDist.Enabled := True;
   End
   Else
   Begin
      Beep;
      EdtProvin.Text := '';
   End;
   dblcDist.text := '';
   edtDist.text := '';
   Screen.Cursor := crDefault;
End;

(*+++++++++++******************************************************************)

Procedure TfGestInt.dblcProvinEnter(Sender : TObject);
Begin
   If dblcDpto.Text = '' Then
   Begin
      ShowMessage('Falta ingresar departamento');
      dblcDpto.SetFocus;
   End;
End;

(*+++++++++++******************************************************************)

Procedure TfGestInt.dblcDistChange(Sender : TObject);
Begin
   Screen.Cursor := crHourGlass;
   LimpiarGrid;
   If DM1.cdsDist.Locate('ZIPID', VarArrayof([dblcDist.text]), []) Then
   Begin
      edtDist.Text := DM1.cdsDist.FieldByName('ZIPDES').Asstring;
   End
   Else
   Begin
      If Length(dblcDist.Text) <> 2 Then
      Begin
         Beep;
         EdtDist.Text := '';
      End;
   End;
   // INICIO : SPP_201402_GESCOB
   fn_cargar_colegios();
   // FIN : SPP_201402_GESCOB
   Screen.Cursor := crDefault;
End;

(*+++++++++++******************************************************************)

Procedure TfGestInt.dblcDistEnter(Sender : TObject);
Begin
   If dblcProvin.Text = '' Then
   Begin
      ShowMessage('Falta ingresar Provincia');
      dblcProvin.SetFocus;
   End;
End;

(*+++++++++++******************************************************************)
// INICIO : SPP_201402_GESCOB
(*
Procedure TfGestInt.chkSaldoClick(Sender : TObject);
Begin
   If chkSaldo.Checked Then
   Begin
      chkSaldoTotal.Checked := False;
      pnlMontos.Enabled := True;
      dbeMtoIni.Text := '0.00';
      dbeMtoFin.Text := '0.00';
      lblRotulo.Caption := 'SALDOS VENCIDOS';
   End
   Else
   Begin
      pnlMontos.Enabled := False;
      dbeMtoIni.Text := '';
      dbeMtoFin.Text := '';
      lblRotulo.Caption := '';
   End
End;


Procedure TfGestInt.chkSaldoTotalClick(Sender : TObject);
Begin
   If chkSaldoTotal.Checked Then
   Begin
      chkSaldo.Checked := False;
      pnlMontos.Enabled := True;
      dbeMtoIni.Text := '0.00';
      dbeMtoFin.Text := '0.00';
      lblRotulo.Caption := 'SALDOS TOTALES';
   End
   Else
   Begin
      pnlMontos.Enabled := False;
      dbeMtoIni.Text := '';
      dbeMtoFin.Text := '';
      lblRotulo.Caption := '';
   End
End;
*)
// FIN : SPP_201402_GESCOB

(*+++++++++++******************************************************************)
Procedure TfGestInt.dblcPrioridadChange(Sender : TObject);
Begin
   If DM1.cdsUPro.Locate('CODIGO_PRIORIDAD', VarArrayof([dblcPrioridad.text]), []) Then
   Begin
      EdtPrioridad.Text := DM1.cdsUPro.FieldByName('DESCRIPCION_PRIORIDAD').Asstring;
   End
   Else
   Begin
      Beep;
      EdtPrioridad.Text := '';
   End
End;
(*+++++++++++******************************************************************)

Procedure TfGestInt.rgRefinanciadosClick(Sender : TObject);
Begin
   Screen.Cursor := crHourGlass;
   LimpiarGrid;
   Case rgRefinanciados.ItemIndex Of
      0 :
// se quita el filtro porque esta buscando en GES000 y solo están los del proceso automatico los que se asignan manualmente no están en esa tabla
         Begin
            // se quita el filtro porque esta buscando en GES000 y solo están los del proceso automatico los que se asignan manualmente no están en esa tabla
            xRefinanciado := ''; // ' and EXISTS ( SELECT ASOID FROM GES000 WHERE PERIODO=''' + xPeriodoCartera + ''' and a.ASOID=ASOID AND SALDOS_RT>=0 ) ';
         End;
      1 :
         Begin
            xRefinanciado := ' and EXISTS ( SELECT ASOID FROM GES000 WHERE PERIODO=''' + xPeriodoCartera + ''' and A.ASOID=ASOID AND SALDOS_RT=0 ) '
         End;
      2 :
         Begin
            xRefinanciado := ' and EXISTS ( SELECT ASOID FROM GES000 WHERE PERIODO=''' + xPeriodoCartera + ''' and a.ASOID=ASOID AND SALDOS_RT>0 ) ';
         End;
   End;

   Screen.Cursor := crDefault;
End;

(*+++++++++++******************************************************************)

// INICIO : SPP_201402_GESCOB
(*
Procedure TfGestInt.dbeMtoIniExit(Sender : TObject);
Begin
   dbeMtoIni.Text := FloatToStrF(DM1.Valores(dbeMtoIni.Text), ffNumber, 15, 2);
   dbeMtoFin.Text := FloatToStrF(DM1.Valores(dbeMtoFin.Text), ffNumber, 15, 2);
End;
*)
// FIN : SPP_201402_GESCOB

(*+++++++++++******************************************************************)

Procedure TfGestInt.dbeMtoIniKeyPress(Sender : TObject; Var Key : Char);
Begin
   If Key In [' ', 'A'..'Z', 'a'..'z', '°', '|', '!', '"', '#', '$', '%', '&', '/', '(', ')', '=', '?', '\', '¡', '¿', '@', '¨', '´', '*', '+', '~', '~', '[', ']', '{', '}', '^', '`', '<', '>', ';', ',', ':', '''', '-', '_'] Then
      Key := #0;
End;

(*+++++++++++******************************************************************)

// INICIO : SPP_201402_GESCOB
(*
Procedure TfGestInt.dbeMtoFinExit(Sender : TObject);
Begin
   dbeMtoIni.Text := FloatToStrF(DM1.Valores(dbeMtoIni.Text), ffNumber, 15, 2);
   dbeMtoFin.Text := FloatToStrF(DM1.Valores(dbeMtoFin.Text), ffNumber, 15, 2);
End;
*)
// FIN : SPP_201402_GESCOB

(*+++++++++++******************************************************************)

Procedure TfGestInt.dbeMtoFinKeyPress(Sender : TObject; Var Key : Char);
Begin
   If Key In [' ', 'A'..'Z', 'a'..'z', '°', '|', '!', '"', '#', '$', '%', '&', '/', '(', ')', '=', '?', '\', '¡', '¿', '@', '¨', '´', '*', '+', '~', '~', '[', ']', '{', '}', '^', '`', '<', '>', ';', ',', ':', '''', '-', '_'] Then
      Key := #0;
End;
(*+++++++++++******************************************************************)

Procedure TfGestInt.chbxCompromisosClick(Sender : TObject);
Begin
   Screen.Cursor := crHourGlass;
   LimpiarGrid();
   If chbxCompromisos.Checked Then
   Begin
      DtpCompromisos.Enabled := true;
      rgSitua.ItemIndex := 2;
      rgSitua.Enabled := false;
      grpBusAso.Visible := True;
   End
   Else
   Begin
      DtpCompromisos.Enabled := false;
      rgSitua.Enabled := true;
      grpBusAso.Visible := False;
   End;

   Screen.Cursor := crDefault;
End;

(*+++++++++++******************************************************************)

// INICIO : SPP_201402_GESCOB
Procedure TfGestInt.BitFiltrarClick(Sender : TObject);
Var
   xSQL, xSQL1, xSQL2, xSQL3, xSQL7 : String;
   xSQLZip : String;
   xCodAcuerdo, xSQLAcuerdo : String;
Begin
   xSQLZip := '';
   If Length(Trim(edtDpto.Text)) <> 0 Then
      xSQLZip := 'A.ZIPID'+xsZipIdCol+' LIKE ''' + dblcDpto.text;
   If Length(Trim(edtProvin.Text)) <> 0 Then
      xSQLZip := xSQLZip + dblcProvin.text;
   If Length(Trim(edtDist.Text)) <> 0 Then
      xSQLZip := xSQLZip + dblcDist.text;
   If xSQLZip <> '' Then
      xSQLZip := xSQLZip + '%'' ';
   If (xSQLZip <> '') Then
      xSQLZip := ' and ' + xSQLZip;

   IF (rgUbigeo.ItemIndex = 1) AND (edtColegio.Text <> '') then
   begin
      xSQLZip := xSQLZip + ' AND A.CENEDUID = ' + QuotedStr(edtColegio.Text)
   end;
{   If Not chkSaldo.Checked Then
      xSQL4 := ''
   Else
   Begin
      If DM1.Valores(dbeMtoIni.Text) > DM1.Valores(dbeMtoFin.Text) Then
      Begin
         MessageDlg(' El Monto Inicial No Puede Ser Mayor Que El Monto Final..!!!!', mtError, [mbOk], 0);
         Exit;
      End;

      If DM1.Valores(dbeMtoIni.Text) = 0 Then
      Begin
         MessageDlg(' El Monto Inicial No Puede Ser 0.00!!!!', mtError, [mbOk], 0);
         Exit;
      End;

      If DM1.Valores(dbeMtoFin.Text) = 0 Then
      Begin
         MessageDlg(' El Monto Final No Puede Ser 0.00!!!!', mtError, [mbOk], 0);
         Exit;
      End;

      xSQL4 := ' AND SALVEN BETWEEN ' + FloatToStr(DM1.Valores(dbeMtoIni.Text)) + ' AND ' + FloatToStr(DM1.Valores(dbeMtoFin.Text)) + ' ';
   End;

   If Not chkSaldoTotal.Checked Then
      xSQL6 := ''
   Else
   Begin
      If DM1.Valores(dbeMtoIni.Text) > DM1.Valores(dbeMtoFin.Text) Then
      Begin
         MessageDlg(' El Monto Inicial No Puede Ser Mayor Que El Monto Final..!!!!', mtError, [mbOk], 0);
         Exit;
      End;

      If DM1.Valores(dbeMtoIni.Text) = 0 Then
      Begin
         MessageDlg(' El Monto Inicial No Puede Ser 0.00!!!!', mtError, [mbOk], 0);
         Exit;
      End;

      If DM1.Valores(dbeMtoFin.Text) = 0 Then
      Begin
         MessageDlg(' El Monto Final No Puede Ser 0.00!!!!', mtError, [mbOk], 0);
         Exit;
      End;

      xSQL6 := ' AND SALTOT BETWEEN ' + FloatToStr(DM1.Valores(dbeMtoIni.Text)) + ' AND ' + FloatToStr(DM1.Valores(dbeMtoFin.Text)) + ' ';
   End;}

   xSQL7 := ' ';
   If dblcPrioridad.Text <> '' Then
   Begin
      xSQL7 := ' AND EXISTS(SELECT AA.CODIGO_REGLA '
         + '              FROM GES_COB_REG AA '
         + '             WHERE AA.CODIGO_PRIORIDAD = ' + QuotedStr(dblcPrioridad.Text)
         + '               AND AA.CODIGO_REGLA = A.CODIGO_REGLA ) '

   End;

{   xSQL8 := '  ';
   If ChkRango.Checked Then
   Begin
      If DM1.Valores(SpFin_R.Text) = 0 Then
      Begin
         MessageDlg(' El Valor para Número de Registros No Puede Ser 0!!', mtError, [mbOk], 0);
         Exit;
      End;
      xSQL8 := ' AND ROWNUM <=' + QuotedStr(SpFin_R.Text) + ' ';

   End;}
   Screen.Cursor := crHourGlass;
   LimpiarGrid;

   If chbxCompromisos.Checked Then
   Begin
      If xTabla = 'GES_COB_DOM' Then
         xCodAcuerdo := '313'
      Else
         xCodAcuerdo := '110';
      xSQLAcuerdo := ' AND A.ASOID IN ( SELECT ASOID '
         + '                              FROM (SELECT ASOID,TO_CHAR(FECHA,''DD/MM/YYYY'')||'' ''||HORA,IDGESTIONDET '
         + '                                      FROM GES_COB_SEG '
         + '                                     WHERE (ASOID,TO_CHAR(FECHA,''DD/MM/YYYY'')||'' ''||HORA) '
         + '                                           IN (SELECT ASOID,MAX(TO_CHAR(FECHA,''DD/MM/YYYY'')||'' ''||HORA) FECHA '
         + '                                                 FROM GES_COB_SEG '
         + '                                                WHERE USUARIO = ' + QuotedStr(xUsuarioGestor)
         + '                                                GROUP BY ASOID) '
         + '                                       AND IDGESTIONDET = ' + QuotedStr(xCodAcuerdo)
         + '                                       AND FECACU = ' + QuotedStr(DateToStr(DtpCompromisos.Date))
         + '                                   )'
         + '                          )  ';
   End
   Else
   Begin
      xCodAcuerdo := '';
      xSQLAcuerdo := '';
   End;
   // INICIO : HPC_201501_GESCOB
   xSQL := 'SELECT E.ASOCODMOD, A.PERIODO,C.OFDESNOM,A.OFDESID,A.USEID,D.USENOM, '
      + '          A.UPAGOID,A.UPROID,CFC_F,CFC_N,CFC_R,A.ASOTIPID,A.ASOID, '
      + '          A.ASOAPENOM,NVL(SALVEN,0) SALVEN,NVL(SALPEN,0) SALPEN, '
      + '          NVL(SALTOT,0) SALTOT, CUOVEN, CUOPEN, NVL(CUOVEN,0)+NVL(CUOPEN,0) CUOTOT, '
      + '          ESTDES,SALACT,RESGES,A.USUARIO,USUASIG,TO_DATE(FECASIG) FECASIG, '
      + '          ESTGES, TIPGES, ESTDEU, B.DESREF, DIASTRANS, DIASTRANSACT, A.ZIPID, E.ASODIR '
      + '          ,F.DPTODES DEPARTAMENTO, G.CIUDDES PROVINCIA, H.ZIPDES DISTRITO '
      + '          ,''S'' PRI_ALTA '
      + '          ,C1.DESCRIPCION_PRIORIDAD PRIORIDAD '
      + '          ,NVL(A.SALDIF, 0 ) SALDIF, NVL(A.CUODIF, 0) CUODIF'
      + '          ,A.DISOPE '
      + '     FROM (SELECT DISOPELAG DISOPE, '
      + '                  PERIODO, OFDESID, USEID, UPAGOID, UPROID, CFC_F, CFC_N, CFC_R, ASOTIPID, '
      + '                  ASOID, ASOAPENOM, SALVEN,SALPEN, SALTOT, CUOVEN, CUOPEN, ESTDES, SALACT, RESGES, '
      + '                  USUARIO,USUASIG, FECASIG, ESTGES, TIPGES, ESTDEU, DIASTRANS, DIASTRANSACT, ZIPID, SALDIF, CUODIF, CODIGO_REGLA, '
      + '                  ZIPIDCOL, CENEDUID'
      + '               FROM (SELECT F.DISOPELAG, '
      + '                           TRUNC(D.SALVEN / D.VALCUO, 1) CUOREA, '
      + '                           A.PERIODO, A.OFDESID, A.USEID, A.UPAGOID, A.UPROID, A.CFC_F, A.CFC_N, A.CFC_R, A.ASOTIPID, '
      + '                           A.ASOID, A.ASOAPENOM, A.SALVEN, A.SALPEN, A.SALTOT, A.CUOVEN, A.CUOPEN, A.ESTDES, A.SALACT, A.RESGES, '
      + '                           A.USUARIO, A.USUASIG, A.FECASIG, A.ESTGES, A.TIPGES, A.ESTDEU, A.DIASTRANS, A.DIASTRANSACT, A.ZIPID, A.SALDIF, A.CUODIF, A.CODIGO_REGLA, '
      + '                           A.ZIPIDCOL, A.CENEDUID '
      + '                       FROM ' + xTabla + ' A '
      + '                      ,(SELECT ASOID '
      + '                              ,PERIODO '
      + '                              ,CODDISOPE '
      + '                              ,VALCUO '
      + '                              ,SALVEN '
      + '                          FROM GES000_MOD_PRO '
      + '                         WHERE PERIODO = ' + QuotedStr(xsPeriodoGestionActual)
      + '                        UNION '
      + '                        SELECT ASOID '
      + '                              ,PERIODO '
      + '                              ,CODDISOPE '
      + '                              ,VALCUO '
      + '                              ,SALVEN '
      + '                          FROM GES000_MOD_PRO_HIS '
      + '                         WHERE PERIODO = ' + QuotedStr(xsPeriodoGestionActual) + ' ) D '
      + '                           ,GES000 E '
      + '                           ,GES_COB_DIS_OPE_CAB F '
      + '                      WHERE A.PERIODO = ' + QuotedStr(xsPeriodoGestionActual)
      + '                        AND A.ASOID = D.ASOID(+) '
      + '                        AND A.PERIODO = D.PERIODO(+) '
      + '                        AND A.ASOID = E.ASOID(+) '
      + '                        AND A.PERIODO = E.PERIODO(+) '
      + '                        AND D.CODDISOPE = F.CODDISOPE(+) '
      + '                    ) '
      + '           ) A, GES_TIP_REF_DET B, APO110 C, APO101 D, APO201 E '
      + '          ,APO158 F, TGE121 G, TGE122 H, GES_COB_REG B1, GES_COB_PRI C1 '
      + '    WHERE A.TIPGES = ''01'' ' // GESTION PREVENTIVA  - INTERNA
      + xSituacion // Situacion 01 pendiente - 02 FGestionada - 03 Cerrada
      + '      AND A.USUARIO = ' + QuotedStr(xUsuarioGestor)
      + xSQLAcuerdo
      + '      AND A.ESTGES = B.CODREF(+) '
      + '      AND B.CODTIP = ''02'' '
      + '      AND A.ASOID = E.ASOID(+) '
      + '      AND A.USEID = D.USEID(+) '
      + '      AND A.UPAGOID = D.UPAGOID(+) '
      + '      AND A.UPROID = D.UPROID(+) '
      + '      AND D.OFDESID = C.OFDESID(+) '
      + '      AND SUBSTR(A.ZIPID,1,2) = F.DPTOID(+) '
      + '      AND SUBSTR(A.ZIPID,1,2) = G.DPTOID(+) '
      + '      AND SUBSTR(A.ZIPID,3,2) = G.CIUDID(+) '
      + '      AND SUBSTR(A.ZIPID,1,2) = H.DPTOID(+) '
      + '      AND SUBSTR(A.ZIPID,3,2) = H.CIUDID(+) '
      + '      AND SUBSTR(A.ZIPID,5,2) = H.ZIPID(+) '
      + '      AND A.CODIGO_REGLA = B1.CODIGO_REGLA(+) AND B1.CODIGO_PRIORIDAD = C1.CODIGO_PRIORIDAD(+) '
      + xSQL1 + xSQL2 + xSQL3 + xSQL7 + xSQLZip + xRefinanciado
      + '    ORDER BY C1.CODIGO_PRIORIDAD, A.ASOAPENOM';
   // FIN : HPC_201501_GESCOB
   DM1.cdsMovCre.Close;
   dtgGestion.SelectedList.clear; { Clear selected record list since they are all deleted}
   DM1.cdsMovCre.DataRequest(xSQL);
   DM1.cdsMovCre.Open;

   grpBusAso.Visible := True;
   HeadersGrid();
   TNumericField(DM1.cdsMovCre.FieldByName('SALTOT')).DisplayFormat := '###,###,##0.#0';
   TNumericField(DM1.cdsMovCre.FieldByName('SALVEN')).DisplayFormat := '###,###,##0.#0';
   TNumericField(DM1.cdsMovCre.FieldByName('SALPEN')).DisplayFormat := '###,###,##0.#0';
   TNumericField(DM1.cdsMovCre.FieldByName('SALACT')).DisplayFormat := '###,###,##0.#0';
   FootersGrid();
   Screen.Cursor := crDefault;
End;
// FIN : SPP_201402_GESCOB
(*+++++++++++******************************************************************)

Procedure TfGestInt.dtgGestionDrawFooterCell(Sender : TObject;
   Canvas : TCanvas; FooterCellRect : TRect; Field : TField;
   FooterText : String; Var DefaultDrawing : Boolean);
Begin
   If Field.FieldName = 'SALVEN' Then
      dtgGestion.Canvas.Font.Color := clRed;

   If Field.FieldName = 'CUOVEN' Then
      dtgGestion.Canvas.Font.Color := clRed;

   If Field.FieldName = 'SALPEN' Then
      dtgGestion.Canvas.Font.Color := clGreen;

   If Field.FieldName = 'CUOPEN' Then
      dtgGestion.Canvas.Font.Color := clGreen;
End;

(*+++++++++++******************************************************************)

Procedure TfGestInt.dtgGestionDrawTitleCell(Sender : TObject;
   Canvas : TCanvas; Field : TField; Rect : TRect;
   Var DefaultDrawing : Boolean);
Begin
 // Color del Orden del Grid
   If Field.FieldName = Copy(DM1.cdsMovCre.IndexFieldNames, 1, Pos(';', DM1.cdsMovCre.IndexFieldNames) - 1) Then
      dtgGestion.Canvas.Font.Color := clBlue
   Else
   Begin
      If Field.FieldName = 'SALVEN' Then
         dtgGestion.Canvas.Font.Color := clRed;
      If Field.FieldName = 'CUOVEN' Then
         dtgGestion.Canvas.Font.Color := clRed;
      If Field.FieldName = 'SALPEN' Then
         dtgGestion.Canvas.Font.Color := clGreen;
      If Field.FieldName = 'CUOPEN' Then
         dtgGestion.Canvas.Font.Color := clGreen;
   End;
End;

(*+++++++++++******************************************************************)

Procedure TfGestInt.dtgGestionTitleButtonClick(Sender : TObject;
   AFieldName : String);
Begin
   dtgGestion.SetActiveField(AFieldName);
   DM1.cdsMovCre.IndexFieldNames := AFieldName + ';ASOAPENOM';
End;

(*+++++++++++******************************************************************)

Procedure TfGestInt.rdbNombreClick(Sender : TObject);
Begin
   Screen.Cursor := crHourGlass;
   edtBuscarOG.text := 'xyzXZY';
   Asignadas();
   edtBuscarOG.text := '';
   edtBuscarOG.MaxLength := 60;
   edtBuscarOG.Width := 316;
   z2bbtnBuscarOG.Left := 479;
   edtBuscarOG.Text := '';
   edtBuscarOG.SetFocus;
   Screen.Cursor := crDefault;
End;

(*+++++++++++******************************************************************)

Procedure TfGestInt.rdbDniClick(Sender : TObject);
Begin
   Screen.Cursor := crHourGlass;
   edtBuscarOG.text := 'xyzXZY';
   Asignadas();
   edtBuscarOG.text := '';
   edtBuscarOG.MaxLength := 8;
   edtBuscarOG.Width := 85;
   z2bbtnBuscarOG.Left := 250;
   edtBuscarOG.Text := '';
   edtBuscarOG.SetFocus;
   Screen.Cursor := crDefault;
End;

(*+++++++++++******************************************************************)

Procedure TfGestInt.z2bbtnBuscarOGClick(Sender : TObject);
Begin
   If Length(Trim(edtBuscarOG.Text)) = 0 Then
   Begin
      MessageDlg('Debe Digitar El Nombre o D.N.I. Del Asociado, Para Iniciar La Busqueda', mtError, [mbOk], 0);
      Exit;
   End;
   Asignadas();
End;

(*+++++++++++******************************************************************)

Procedure TfGestInt.dtgOtrasGestDrawDataCell(Sender : TObject;
   Const Rect : TRect; Field : TField; State : TGridDrawState);
Var
   xAsoId : String;
Begin
   xAsoId := DM1.cdsModelo.FieldByName('ASOID').AsString;
   dtgOtrasGest.Canvas.Font.Color := clNavy;
   dtgOtrasGest.DefaultDrawDataCell(rect, Field, State);
   If Field.FieldName = 'SALVEN' Then
   Begin
      dtgOtrasGest.Canvas.Font.Color := clRed;
      dtgOtrasGest.DefaultDrawDataCell(rect, Field, State);
   End;

   If Field.FieldName = 'CUOVEN' Then
   Begin
      dtgOtrasGest.Canvas.Font.Color := clRed;
      dtgOtrasGest.DefaultDrawDataCell(rect, Field, State);
   End;

   If Field.FieldName = 'SALPEN' Then
   Begin
      dtgOtrasGest.Canvas.Font.Color := clGreen;
      dtgOtrasGest.DefaultDrawDataCell(rect, Field, State);
   End;

   If Field.FieldName = 'CUOPEN' Then
   Begin
      dtgOtrasGest.Canvas.Font.Color := clGreen;
      dtgOtrasGest.DefaultDrawDataCell(rect, Field, State);
   End;

   If Field.FieldName = 'SALTOT' Then
   Begin
      dtgOtrasGest.Canvas.Font.Color := clBlack;
      dtgOtrasGest.DefaultDrawDataCell(rect, Field, State);
   End;

   If Field.FieldName = 'CUOTOT' Then
   Begin
      dtgOtrasGest.Canvas.Font.Color := clBlack;
      dtgOtrasGest.DefaultDrawDataCell(rect, Field, State);
   End;

   If Field.FieldName = 'PRIORIDAD' Then
   Begin
      If (DM1.cdsModelo.FieldByName('PRIORIDAD').asstring = 'ALTA') Then
      Begin
         dtgOtrasGest.Canvas.Font.Color := clRed;
         dtgOtrasGest.Canvas.Font.Style := [fsBold, fsUnderline];
         dtgOtrasGest.DefaultDrawDataCell(rect, Field, State);
      End;
   End;

End;

(*+++++++++++******************************************************************)

Procedure TfGestInt.dtgOtrasGestDrawTitleCell(Sender : TObject;
   Canvas : TCanvas; Field : TField; Rect : TRect;
   Var DefaultDrawing : Boolean);
Begin

   // Color del Orden del Grid
   If Field.FieldName = Copy(DM1.cdsModelo.IndexFieldNames, 1, Pos(';', DM1.cdsModelo.IndexFieldNames) - 1) Then
      dtgOtrasGest.Canvas.Font.Color := clBlue
   Else
   Begin
      If Field.FieldName = 'SALVEN' Then
      Begin
         dtgOtrasGest.Canvas.Font.Color := clRed;
      End;
      If Field.FieldName = 'CUOVEN' Then
      Begin
         dtgOtrasGest.Canvas.Font.Color := clRed;
      End;
      If Field.FieldName = 'SALPEN' Then
      Begin
         dtgOtrasGest.Canvas.Font.Color := clGreen;
      End;
   End;
End;

(*+++++++++++******************************************************************)

Procedure TfGestInt.dtgOtrasGestTitleButtonClick(Sender : TObject;
   AFieldName : String);
Begin
   dtgOtrasGest.SetActiveField(AFieldName);
   DM1.cdsModelo.IndexFieldNames := AFieldName + ';ASOAPENOM';
End;

(******************************************************************************)

Procedure TfGestInt.BitObsEspClick(Sender : TObject);
Var
   xSQL : String;
Begin
   If StrToInt(Copy(DM1.NivelUsuario(DM1.wUsuario), 2, 1)) >= 2 Then
   Begin
      If Length(Trim(EdtUserNom.Text)) = 0 Then
      Begin
         MessageDlg('DEBE SELECCIONAR UN GESTOR DE COBRANZAS!!!', mtError, [mbOk], 0);
         Exit;
      End;

      If dtgGestion.DataSource.DataSet.RecordCount = 0 Then
      Begin
         MessageDlg('DEBE CARGAR LAS GESTIONES DE COBRANZAS PENDIENTES!!!', mtError, [mbOk], 0);
         Exit;
      End;
   End;

   Try
      fObsNSup := TfObsNSup.create(Self);
      fObsNSup.xUsuarioGestor := self.xUsuarioGestor;
      xSQL := 'SELECT USERID,FECOBS,OBSSUP,HREG,USUSUP,PRIORIDAD FROM GES_OBS_SUP WHERE USERID=' + QuotedStr(xUsuarioGestor) + ' ORDER BY HREG DESC';
      DM1.cdsDSocioE.Close;
      DM1.cdsDSocioE.DataRequest(xSQL);
      DM1.cdsDSocioE.Open;
      fObsNSup.ShowModal;
   Finally
      fObsNSup.Free;
   End;

End;

(******************************************************************************)

Procedure TfGestInt.BitBuscarClick(Sender : TObject);
Begin
   Try
      fBusGenAso := TfBusGenAso.create(Self);
      If StrToInt(Copy(DM1.NivelUsuario(DM1.wUsuario), 2, 1)) >= 2 Then fBusGenAso.BitAsigna.Enabled := False;

      fBusGenAso.sTipGesBus := '01';
      fBusGenAso.sTablaBus := xTabla;

      fBusGenAso.ShowModal;
      BitFiltrarClick(BitFiltrar);
   Finally
      fBusGenAso.Free;
   End;

End;
(******************************************************************************)

Procedure TfGestInt.edtBuscarChange(Sender : TObject);
Begin
   If Length(Trim(edtBuscar.Text)) > 0 Then
   Begin
      If tsPersonal.Showing Then
         DM1.cdsMovCre.Locate('ASOAPENOM', VarArrayOf([TRIM(edtBuscar.Text)]), [loPartialKey])
      Else
         DM1.cdsModelo.Locate('ASOAPENOM', VarArrayOf([TRIM(edtBuscar.Text)]), [loPartialKey]);
   End;
End;
(******************************************************************************)

Procedure TfGestInt.edtBuscarKeyPress(Sender : TObject; Var Key : Char);
Begin
   If Key = #13 Then
   Begin
      If Length(Trim(edtBuscar.Text)) > 0 Then
      Begin
         dtgGestion.SetFocus;
         edtBuscar.Text := '';
      End
      Else
      Begin
         MessageDlg('Debe Digitar El Nombre Del Asociado, Para Iniciar La Busqueda', mtError, [mbOk], 0);
         edtBuscar.SetFocus;
      End;
   End;
End;
(******************************************************************************)

Procedure TfGestInt.btnImprimirClick(Sender : TObject);
Var
   i : integer;
Begin
   Screen.Cursor := crHourGlass;
   ppLblGestorC.Caption := LBLGestor.Caption;
   ppLblGestorF.Caption := LBLGestor.Caption;

   cdsActivo := TwwClientDataSet.Create(SELF);
   dsActivo := TwwDataSource.Create(SELF);
   dsActivo.DataSet := cdsActivo;
   cdsActivo.Data := dm1.cdsMovCre.Data;

   If ChkIndidual2.Checked Then
   Begin
      If dtgGestion.SelectedList.Count <= 0 Then
      Begin
         Screen.Cursor := crDefault;
         ShowMessage(xMsgSeleccionarRegistros);
         Exit;
      End;
      xSQLin := 'ASOID IN ( ';
      dm1.cdsMovCre.DisableControls;
      For i := 0 To dtgGestion.SelectedList.Count - 1 Do
      Begin
         dtgGestion.datasource.dataset.GotoBookmark(dtgGestion.SelectedList.items[i]);
         xSQLin := xSQLin + '''' + DM1.cdsMovCre.fieldByname('ASOID').AsString + ''', ';
      End;
      xSQLin := Copy(xSQLin, 1, Length(xSQLin) - 2) + ' ) ';
      dm1.cdsMovCre.EnableControls;

      cdsActivo.filtered := false;
      cdsActivo.filter := xSQLin;
      cdsActivo.filtered := true;
   End;
   DBGestiones.DataSource := dsActivo;
   //ppd1.ShowModal;
   ppr1.Print;
   Screen.Cursor := crDefault;
End;

(******************************************************************************)

Procedure TfGestInt.BitExportaClick(Sender : TObject);
Var
   i : integer;
Begin
   Screen.Cursor := crHourGlass;
   cdsActivo := TwwClientDataSet.Create(SELF);
   dsActivo := TwwDataSource.Create(SELF);
   dsActivo.DataSet := cdsActivo;
   cdsActivo.Data := dm1.cdsMovCre.Data;

   If ChkIndidual2.Checked Then
   Begin
      If dtgGestion.SelectedList.Count <= 0 Then
      Begin
         Screen.Cursor := crDefault;
         ShowMessage(xMsgSeleccionarRegistros);
         Exit;
      End;
      xSQLin := 'ASOID IN ( ';
      dm1.cdsMovCre.DisableControls;
      For i := 0 To dtgGestion.SelectedList.Count - 1 Do
      Begin
         dtgGestion.datasource.dataset.GotoBookmark(dtgGestion.SelectedList.items[i]);
         xSQLin := xSQLin + '''' + DM1.cdsMovCre.fieldByname('ASOID').AsString + ''', ';
      End;
      xSQLin := Copy(xSQLin, 1, Length(xSQLin) - 2) + ' ) ';
      dm1.cdsMovCre.EnableControls;

      cdsActivo.filtered := false;
      cdsActivo.filter := xSQLin;
      cdsActivo.filtered := true;
   End;
   // INICIO : SPP_201402_GESCOB
   (*
   cdsActivo.First;
   While Not cdsActivo.eof Do
   Begin
      sSQL := 'SELECT ASODIR,USUARIO,UBIGEO,ASOID,OBSTEL FROM GES_DOM_ASO '
         + 'WHERE ASOID=' + QuotedStr(cdsActivo.fieldByname('ASOID').AsString) + ' and ACTIVO=''S'' '
         + 'ORDER BY HREG DESC';
      DM1.cdsMGrupo.Close;
      DM1.cdsMGrupo.DataRequest(sSQL);
      DM1.cdsMGrupo.Open;
      If DM1.cdsMGrupo.RecordCount > 0 Then
      Begin
         cdsActivo.Edit;
         cdsActivo.FieldByName('ASODIR').AsString := DM1.cdsMGrupo.FieldByName('ASODIR').AsString;
         cdsActivo.FieldByName('ZIPID').AsString := DM1.cdsMGrupo.FieldByName('UBIGEO').AsString;
         cdsActivo.Post;
      End;
      cdsActivo.Next;
   End;
   *)
   // FIN : SPP_201402_GESCOB
   dtgData.DataSource := dsActivo;

   If cdsActivo.RecordCount > 0 Then
   Begin
      Try
         DM1.HojaExcel('Exportado', dsActivo, dtgData);
      Except
         On Ex : Exception Do
         Begin
            Screen.Cursor := crDefault;
            Application.MessageBox(PChar(Ex.Message), 'ERROR', 16);
         End
      End;
   End;

   cdsActivo.Free;
   dsActivo.Free;
   Screen.Cursor := crDefault;
End;

(******************************************************************************)
// INICIO : SPP_201402_GESCOB
(*
Procedure TfGestInt.BitImpCartaClick(Sender : TObject);
Var
   i : integer;
Begin
   If rgRefinanciados.ItemIndex = 0 Then
   Begin
      MessageDlg('Debe de Filtrar por el Estado : Normales o Refinanciados', mtWarning, [mbOk], 0);
      exit;
   End;

   DM1.cdsGestor.Filtered := False;
   DM1.cdsGestor.Filter := 'USUARIO=''' + xUsuarioGestor + '''';
   DM1.cdsGestor.Filtered := True;

   If rgRefinanciados.ItemIndex = 1 Then
   Begin
      If (rgCarta.ItemIndex = 1) Or (rgCarta.ItemIndex = 2) Then
      Begin
         ShowMessage('CaRe 1 y Care 2 son cartas para Asociados que tienen Créditos Refinanciados');
         Exit;
      End;
   End;

   If rgRefinanciados.ItemIndex = 2 Then
   Begin
      If (rgCarta.ItemIndex = 0) Or (rgCarta.ItemIndex = 3) Or (rgCarta.ItemIndex = 4) Then
      Begin
         ShowMessage('CaPre 0, CaVe 1 y CaVe 2 son cartas para Asociados con créditos Normales');
         Exit;
      End;
   End;

   cdsActivo := TwwClientDataSet.Create(SELF);
   dsActivo := TwwDataSource.Create(SELF);
   dsActivo.DataSet := cdsActivo;
   xSQLin := '';
   If pcGestion.ActivePage = tsPersonal Then
   Begin
      cdsActivo.Data := dm1.cdsMovCre.Data;
      If ChkIndidual.Checked Then
      Begin
         If dtgGestion.SelectedList.Count <= 0 Then
         Begin
            ShowMessage(xMsgSeleccionarRegistros);
            Exit;
         End;

         dm1.cdsMovCre.DisableControls;
         For i := 0 To dtgGestion.SelectedList.Count - 1 Do
         Begin
            dtgGestion.datasource.dataset.GotoBookmark(dtgGestion.SelectedList.items[i]);
            xSQLin := xSQLin + '''' + DM1.cdsMovCre.fieldByname('ASOID').AsString + ''', ';
         End;
         dm1.cdsMovCre.EnableControls;
      End
   End
   Else
   Begin
      cdsActivo.Data := DM1.cdsModelo.Data;
      If ChkIndidual2.Checked Then
      Begin
         If dtgOtrasGest.SelectedList.Count <= 0 Then
         Begin
            ShowMessage('Debe seleccionar registros');
            Exit;
         End;
         DM1.cdsModelo.DisableControls;
         For i := 0 To dtgOtrasGest.SelectedList.Count - 1 Do
         Begin
            dtgOtrasGest.datasource.dataset.GotoBookmark(dtgOtrasGest.SelectedList.items[i]);
            sSQL := 'SELECT ASODIR,USUARIO,UBIGEO,ASOID,OBSTEL FROM GES_DOM_ASO '
               + 'WHERE ASOID=' + QuotedStr(DM1.cdsModelo.fieldByname('ASOID').AsString) + ' and ACTIVO=''S'' '
               + 'ORDER BY HREG DESC';
            DM1.cdsMGrupo.Close;
            DM1.cdsMGrupo.DataRequest(sSQL);
            DM1.cdsMGrupo.Open;
            If DM1.cdsMGrupo.RecordCount > 0 Then
            Begin
               If Copy(DM1.cdsMGrupo.fieldByname('UBIGEO').AsString, 1, 2) = dblcDpto.Text Then
                  xSQLin := xSQLin + '''' + DM1.cdsModelo.fieldByname('ASOID').AsString + ''', ';
            End
            Else
            Begin
               If Copy(DM1.cdsModelo.fieldByname('ZIPID').AsString, 1, 2) = dblcDpto.Text Then
                  xSQLin := xSQLin + '''' + DM1.cdsModelo.fieldByname('ASOID').AsString + ''', ';
            End;
         End;
         dm1.cdsModelo.EnableControls;
      End
   End;

   If Not (xSQLin = '') Then // se agrega xq causa error cuando son muchos
      xSQLin := 'ASOID IN ( ' + Copy(xSQLin, 1, Length(xSQLin) - 2) + ' ) ';

   If xSQLin = '' Then
      cdsActivo.filtered := false // se agrega xq causa error cuando son muchos
   Else
   Begin
      cdsActivo.filtered := false;
      cdsActivo.filter := xSQLin;
      cdsActivo.filtered := true;
   End;

   If cdsActivo.RecordCount <= 0 Then Exit;

   ppdbC1.DataSource := dsActivo;

   If rgCarta.ItemIndex = 0 Then pprCaPre0.Print;
   If rgCarta.ItemIndex = 1 Then pprCare1.Print;
   If rgCarta.ItemIndex = 2 Then pprCare2.Print;
   If rgCarta.ItemIndex = 3 Then pprCave1.Print;
   If rgCarta.ItemIndex = 4 Then pprCave2.Print;

   cdsActivo.Free;
   dsActivo.Free;
End;
*)
// FIN : SPP_201402_GESCOB

(*+++++++++++******************************************************************)

Procedure TfGestInt.btnDesmarcarTodoClick(Sender : TObject);
Begin
   dtgGestion.SelectedList.clear;
   dtgGestion.RedrawGrid;
End;
(******************************************************************************)

// INICIO : SPP_201402_GESCOB
(*
Procedure TfGestInt.bbtnExpCartaClick(Sender : TObject);
Var
   i : integer;
Begin
   If rgRefinanciados.ItemIndex = 0 Then
   Begin
      MessageDlg('Debe de Filtrar por el Estado : Normales o Refinanciados', mtWarning, [mbOk], 0);
      exit;
   End;

   If rgRefinanciados.ItemIndex = 1 Then
   Begin
      If (rgCarta.ItemIndex = 1) Or (rgCarta.ItemIndex = 2) Then
      Begin
         ShowMessage('CaRe 1 y Care 2 son cartas para Asociados que tienen Créditos Refinanciados');
         Exit;
      End;
   End;

   If rgRefinanciados.ItemIndex = 2 Then
   Begin
      If (rgCarta.ItemIndex = 0) Or (rgCarta.ItemIndex = 3) Or (rgCarta.ItemIndex = 4) Then
      Begin
         ShowMessage('CaPre 0, CaVe 1 y CaVe 2 son cartas para Asociados con créditos Normales');
         Exit;
      End;
   End;

   cdsActivo := TwwClientDataSet.Create(SELF);
   dsActivo := TwwDataSource.Create(SELF);
   dsActivo.DataSet := cdsActivo;

   xSQLin := '';
   If pcGestion.ActivePage = tsPersonal Then
   Begin
      cdsActivo.Data := dm1.cdsMovCre.Data;
      If ChkIndidual.Checked Then
      Begin
         If dtgGestion.SelectedList.Count <= 0 Then
         Begin
            ShowMessage(xMsgSeleccionarRegistros);
            Exit;
         End;
         dm1.cdsMovCre.DisableControls;
         For i := 0 To dtgGestion.SelectedList.Count - 1 Do
         Begin
            dtgGestion.datasource.dataset.GotoBookmark(dtgGestion.SelectedList.items[i]);

            sSQL := 'SELECT ASODIR,USUARIO,UBIGEO,ASOID,OBSTEL FROM GES_DOM_ASO '
               + 'WHERE ASOID=' + QuotedStr(DM1.cdsMovCre.fieldByname('ASOID').AsString) + ' and ACTIVO=''S'' '
               + 'ORDER BY HREG DESC';
            DM1.cdsMGrupo.Close;
            DM1.cdsMGrupo.DataRequest(sSQL);
            DM1.cdsMGrupo.Open;
            If DM1.cdsMGrupo.RecordCount > 0 Then
               xSQLin := xSQLin + '''' + DM1.cdsMovCre.fieldByname('ASOID').AsString + ''', '
            Else
               xSQLin := xSQLin + '''' + DM1.cdsMovCre.fieldByname('ASOID').AsString + ''', ';
         End;
         dm1.cdsMovCre.EnableControls;
      End
   End;

   If Not (xSQLin = '') Then // se agrega xq causa error cuando son muchos
      xSQLin := 'ASOID IN ( ' + Copy(xSQLin, 1, Length(xSQLin) - 2) + ' ) ';

   If xSQLin = '' Then
      cdsActivo.Filtered := false // se agrega xq causa error cuando son muchos
   Else
   Begin
      cdsActivo.filtered := false;
      cdsActivo.filter := xSQLin;
      cdsActivo.filtered := true;
   End;

   cdsActivo.First;
   While Not cdsActivo.eof Do
   Begin
      sSQL := 'SELECT ASODIR,USUARIO,UBIGEO,ASOID,OBSTEL FROM GES_DOM_ASO '
         + 'WHERE ASOID=' + QuotedStr(cdsActivo.fieldByname('ASOID').AsString) + ' and ACTIVO=''S'' '
         + 'ORDER BY HREG DESC';
      DM1.cdsMGrupo.Close;
      DM1.cdsMGrupo.DataRequest(sSQL);
      DM1.cdsMGrupo.Open;
      If DM1.cdsMGrupo.RecordCount > 0 Then
      Begin
         cdsActivo.Edit;
         cdsActivo.FieldByName('ASODIR').AsString := DM1.cdsMGrupo.FieldByName('ASODIR').AsString;
         cdsActivo.FieldByName('ZIPID').AsString := DM1.cdsMGrupo.FieldByName('UBIGEO').AsString;
         cdsActivo.Post;
      End;
      cdsActivo.Next;
   End;

   dtgData.DataSource := dsActivo;

   If cdsActivo.RecordCount > 0 Then
   Begin
      Try
         DM1.HojaExcel('Exportado', dsActivo, dtgData);
      Except
         On Ex : Exception Do
            Application.MessageBox(PChar(Ex.Message), 'ERROR', 16);
      End;
   End;

   cdsActivo.Free;
   dsActivo.Free;
End;
*)
// FIN : SPP_201402_GESCOB

(*+++++++++++******************************************************************)

Procedure TfGestInt.dblGestionDetChange(Sender : TObject);
Begin
   If DM1.cdsTipCreA.Locate('IDGTNDET', VarArrayof([dblGestionDet.Text]), []) Then
   Begin
      EdtDesGntDet.Text := DM1.cdsTipCreA.fieldbyname('DESCRIPCION').AsString;
   End
   Else
   Begin
      If Length(dblGestionDet.Text) <> 2 Then
      Begin
         Beep;
         EdtDesGntDet.Text := '';
      End;
   End;
End;

(******************************************************************************)
// INICIO : SPP_201402_GESCOB
Procedure TfGestInt.BitResGesClick(Sender : TObject);
Var
   xSQL : String;
Begin
   If Length(Trim(EdtDesGntDet.Text)) = 0 Then
   Begin
      MessageDlg('DEBE SELECCIONAR UN RESULTADO DE GESTION!!!', mtError, [mbOk], 0);
      Exit;
   End;
   LimpiarGrid;
   grpBusAso.Visible := True;
   Screen.Cursor := crHourGlass;
   xSQL := 'SELECT PERIODO,C.OFDESNOM,A.OFDESID,A.USEID,D.USENOM,A.UPAGOID,A.UPROID,CFC_F,CFC_N,CFC_R,ASOTIPID,ASOID,ASOAPENOM,NVL(SALVEN,0) SALVEN, NVL(SALPEN,0) SALPEN, '
      + '          NVL(SALTOT,0) SALTOT,CUOVEN,CUOPEN,NVL(CUOVEN,0)+NVL(CUOPEN,0) CUOTOT,ESTDES,SALACT,RESGES,A.USUARIO,USUASIG,TO_DATE(FECASIG) FECASIG, ESTGES,TIPGES,ESTDEU,B.DESREF,VENACT,PENACT,DIASTRANS, DIASTRANSACT, A.ZIPID  '
      + '          ,F.DPTODES DEPARTAMENTO, G.CIUDDES PROVINCIA, H.ZIPDES DISTRITO '
      + '          ,NVL(SALDIF, 0 ) SALDIF, NVL(CUODIF, 0) CUODIF, '
      + '          ''XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'' DISOPE '
      + '     FROM ' + xTabla + ' A,GES_TIP_REF_DET B,APO110 C,APO101 D '
      + '          ,APO158 F, TGE121 G, TGE122 H'
      + '    WHERE A.ESTGES = B.CODREF(+) '
      + '      AND B.CODTIP=''02'' '
      + '      AND A.ESTGES=''02'' '
      + '      AND ASOID IN (SELECT ASOID '
      + '                      FROM GES_COB_SEG '
      + '                     WHERE FECHA BETWEEN ' + QuotedStr(DateToStr(dtpInicio.Date)) + ' AND ' + QuotedStr(DateToStr(dtpFin.Date))
      + '                       AND USUARIO=' + QuotedStr(xUsuarioGestor)
      + '                       AND IDGESTIONDET=' + QuotedStr(dblGestionDet.Text)
      + '                    ) '
      + '      AND A.USUARIO=' + QuotedStr(xUsuarioGestor)
      + '      AND A.OFDESID=C.OFDESID(+) '
      + '      AND A.USEID=D.USEID(+) '
      + '      AND A.UPAGOID=D.UPAGOID(+) '
      + '      AND A.UPROID=D.UPROID(+) '
      + '      AND SUBSTR(A.ZIPID,1,2) = F.DPTOID(+)'
      + '      AND SUBSTR(A.ZIPID,1,2) = G.DPTOID(+)'
      + '      AND SUBSTR(A.ZIPID,3,2) = G.CIUDID(+)'
      + '      AND SUBSTR(A.ZIPID,1,2) = H.DPTOID(+)'
      + '      AND SUBSTR(A.ZIPID,3,2) = H.CIUDID(+)'
      + '      AND SUBSTR(A.ZIPID,5,2) = H.ZIPID(+)'
      + ' ORDER BY ASOAPENOM ';
   DM1.cdsMovCre.Close;
   DM1.cdsMovCre.DataRequest(xSQL);
   DM1.cdsMovCre.Open;
   HeadersGrid();
   TNumericField(DM1.cdsMovCre.FieldByName('SALTOT')).DisplayFormat := '###,###,##0.#0';
   TNumericField(DM1.cdsMovCre.FieldByName('SALVEN')).DisplayFormat := '###,###,##0.#0';
   TNumericField(DM1.cdsMovCre.FieldByName('SALPEN')).DisplayFormat := '###,###,##0.#0';
   TNumericField(DM1.cdsMovCre.FieldByName('SALACT')).DisplayFormat := '###,###,##0.#0';
   FootersGrid();

   Screen.Cursor := crDefault;
End;
// FIN : SPP_201402_GESCOB
(******************************************************************************)

Procedure TfGestInt.BitSalirClick(Sender : TObject);
Begin
   Close;
End;

(******************************************************************************)
(**************** procedimientos llamados por los eventos *********************)
(*+++++++++++******************************************************************)

Procedure TfGestInt.HeadersGrid();
Begin
   If pcGestion.ActivePage = tsPersonal Then
   Begin
      dtgGestion.Selected.Clear;
      //dtgGestion.Selected.Add('ASOID'#9'-1'#9'ID');
      // INICIO : SPP_201402_GESCOB
      dtgGestion.Selected.Add('PRIORIDAD'#9'25'#9'DISTRIBUCIÓN~ESTRATÉGICA');
      dtgGestion.Selected.Add('DISOPE'#9'25'#9'DISTRIBUCIÓN~OPERATIVA');
      // FIN : SPP_201402_GESCOB
      dtgGestion.Selected.Add('ASOCODMOD'#9'10'#9'CODIGO~MODULAR');
      dtgGestion.Selected.Add('PERIODO'#9'6'#9'PERIODO');
      dtgGestion.Selected.Add('OFDESNOM'#9'15'#9'OFIDES');
      dtgGestion.Selected.Add('USENOM'#9'15'#9'UGEL');
      dtgGestion.Selected.Add('UPROID'#9'10'#9'UNIDAD~PROCESO');
      dtgGestion.Selected.Add('ASOTIPID'#9'10'#9'TIPO~ASOCIADO');
      dtgGestion.Selected.Add('ASOAPENOM'#9'30'#9'ASOCIADO');
      dtgGestion.Selected.Add('SALVEN'#9'15'#9'SALDO~VENCIDO');
      dtgGestion.Selected.Add('SALPEN'#9'15'#9'SALDO~PENDIENTE');
      dtgGestion.Selected.Add('SALTOT'#9'15'#9'SALDO~TOTAL');
      dtgGestion.Selected.Add('CUOVEN'#9'10'#9'CUOTAS~VENCIDAS');
      dtgGestion.Selected.Add('CUOPEN'#9'10'#9'CUOTAS~PENDIENTE');
      dtgGestion.Selected.Add('CUOTOT'#9'10'#9'CUOTAS~TOTALES');
      dtgGestion.Selected.Add('ESTDES'#9'10'#9'ESTADO~GESTION');
      dtgGestion.Selected.Add('SALACT'#9'10'#9'SALDO~ACTUAL');
      dtgGestion.Selected.Add('USUARIO'#9'10'#9'USUARIO');
      dtgGestion.Selected.Add('FECASIG'#9'10'#9'FECHA~ASIGNADA');
      dtgGestion.Selected.Add('DIASTRANS'#9'10'#9'DIASTRANS');
      dtgGestion.Selected.Add('DIASTRANSACT'#9'10'#9'DIASTRANSACT');
      dtgGestion.Selected.Add('ASODIR'#9'30'#9'DIRECCION');
      dtgGestion.Selected.Add('DEPARTAMENTO'#9'20'#9'DEPARTAMENTO');
      dtgGestion.Selected.Add('PROVINCIA'#9'20'#9'PROVINCIA');
      dtgGestion.Selected.Add('DISTRITO'#9'20'#9'DISTRITO');
      dtgGestion.ApplySelected;
   End
End;

(*+++++++++++******************************************************************)

Procedure TfGestInt.FootersGrid();
Begin
   // INICIO : SPP_201402_GESCOB
   lblRegistros.Caption := ' 0 Registros ';
   // FIN : SPP_201402_GESCOB
   If pcGestion.ActivePage = tsPersonal Then
   Begin
      If DM1.cdsMovCre.RecordCount > 0 Then
      Begin
         dtgGestion.ColumnByName('ASOAPENOM').FooterValue := 'Totales';
         dtgGestion.ColumnByName('SALTOT').FooterValue := FloatToStrF(DM1.OperClientDataSet(DM1.cdsMovCre, 'SUM(SALTOT)', ''), ffNumber, 15, 2);
         dtgGestion.ColumnByName('SALVEN').FooterValue := FloatToStrF(DM1.OperClientDataSet(DM1.cdsMovCre, 'SUM(SALVEN)', ''), ffNumber, 15, 2);
         dtgGestion.ColumnByName('SALPEN').FooterValue := FloatToStrF(DM1.OperClientDataSet(DM1.cdsMovCre, 'SUM(SALPEN)', ''), ffNumber, 15, 2);
         dtgGestion.ColumnByName('SALACT').FooterValue := FloatToStrF(DM1.OperClientDataSet(DM1.cdsMovCre, 'SUM(SALACT)', ''), ffNumber, 15, 2);
         lblRegistros.Caption := IntToStr(DM1.cdsMovCre.RecordCount) + ' Registros ';
      End;
   End
   Else
   Begin
      If DM1.cdsModelo.RecordCount > 0 Then
      Begin
         dtgOtrasGest.ColumnByName('ASOAPENOM').FooterValue := 'Totales';
         dtgOtrasGest.ColumnByName('SALTOT').FooterValue := FloatToStrF(DM1.OperClientDataSet(DM1.cdsModelo, 'SUM(SALTOT)', ''), ffNumber, 15, 2);
         dtgOtrasGest.ColumnByName('SALVEN').FooterValue := FloatToStrF(DM1.OperClientDataSet(DM1.cdsModelo, 'SUM(SALVEN)', ''), ffNumber, 15, 2);
         dtgOtrasGest.ColumnByName('SALPEN').FooterValue := FloatToStrF(DM1.OperClientDataSet(DM1.cdsModelo, 'SUM(SALPEN)', ''), ffNumber, 15, 2);
         dtgOtrasGest.ColumnByName('SALACT').FooterValue := FloatToStrF(DM1.OperClientDataSet(DM1.cdsModelo, 'SUM(SALACT)', ''), ffNumber, 15, 2);
      End;
   End;
End;
(******************************************************************************)

Procedure TfGestInt.MstCabecera(xAsoid, xPeriodo : String);
Var
   xSQL : String;
Begin
   xSQL := 'SELECT PERIODO, ASOID, NROGEST, FECHA, '
      + '          USUARIO, MASDAT, ANOGEST, ESTGES '
      + '     FROM GES_INI_SEG '
      + '    WHERE ASOID = ' + QuotedStr(xAsoId)
      + '    ORDER BY FECHA DESC, NROGEST DESC';
   DM1.cdsCambios.Close;
   DM1.cdsCambios.DataRequest(xSQL);
   DM1.cdsCambios.Open;
   DM1.cdsCambios.First;
   While Not DM1.cdsCambios.Eof Do
   Begin
      xSQL := 'SELECT FECHA, DETOBS, USUARIO '
         + '     FROM (SELECT ASOID, NROGEST, FECHA, DETOBS, USUARIO '
         + '             FROM GES_COB_SEG '
         + '            WHERE ASOID = ' + QuotedStr(DM1.cdsCambios.fieldbyname('ASOID').AsString)
         + '              AND NROGEST = ' + QuotedStr(DM1.cdsCambios.fieldbyname('NROGEST').AsString)
         + '              AND NOT (IDGESTIONDET = ''312'' AND IDCARTA IS NOT NULL) '
         + '            ORDER BY FECHA DESC, ORDEN DESC) '
         + '    WHERE ROWNUM = 1';
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest(xSQL);
      DM1.cdsQry.Open;
      If DM1.cdsQry.RecordCount > 0 Then
      Begin
         DM1.cdsCambios.Edit;
         DM1.cdsCambios.FieldByName('MASDAT').value := DM1.cdsQry.fieldbyname('DETOBS').AsString;
         DM1.cdsCambios.FieldByName('USUARIO').value := DM1.cdsQry.fieldbyname('USUARIO').AsString;
         DM1.cdsCambios.FieldByName('FECHA').value := DM1.cdsQry.fieldbyname('FECHA').Value;
         DM1.cdsCambios.Post;
      End;
      DM1.cdsCambios.Next;
   End;
   DM1.cdsCambios.First;
End;

(******************************************************************************)

Procedure TfGestInt.CerraGestion(xAsoId : String);
Var
   xSQL : String;
Begin
   If pcGestion.ActivePage = tsHojaRutaDia Then
   Begin
      If MessageDlg('El Saldo del Asociado : ' + TRIM(cdsActivo.FieldByname('ASOAPENOM').AsString) + ' es 0 (Cero). ¿ Desea Cerrar la Gestión ? ', mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
      Begin
         xSQL := 'UPDATE GES_COB_IND SET ESTGES=''03'',ESTDES=''CERRADA'',FHCIERRE=SYSDATE WHERE ASOID=' + QuotedStr(xAsoId);
         DM1.DCOM1.AppServer.EjecutaSql(xSQL);

         xSQL := 'UPDATE GES_COB_DOM SET ESTGES=''03'',ESTDES=''CERRADA'',FHCIERRE=SYSDATE WHERE ASOID=' + QuotedStr(xAsoId);
         DM1.DCOM1.AppServer.EjecutaSql(xSQL);

         xSQL := 'UPDATE GES_COB_CAB SET ESTGES=''03'' WHERE ASOID=' + QuotedStr(xAsoId);
         DM1.DCOM1.AppServer.EjecutaSql(xSQL);

         // se añade para ver como queda
         xSQL := 'UPDATE GES_INI_SEG SET ESTGES=''03'' WHERE ASOID=' + QuotedStr(xAsoId);
         DM1.DCOM1.AppServer.EjecutaSql(xSQL);
      End;
   End;
End;
(******************************************************************************)
// INICIO : SPP_201402_GESCOB
Procedure TfGestInt.CargaSaldo(xAsoid, xPeriodo : String);
Var
   xSQL, xCreDid : String;
Begin
   xSQL := 'INSERT INTO GES_DET_IND  (PERIODO,ASOID,CREFOTORG,CREDID,TIPCREID,TIPCREDES,SALVEN,SALPEN,SALTOT, SALDIF, CUODIF) ' +
      'SELECT PERIODO,ASOID,CREFOTORG,CREDID,TIPCREID,TIPCREDES,0.00,0.00,0.00, 0.00, 0 FROM SAL000 A WHERE ASOID=' + QuotedStr(xAsoId) + ' AND PERIODO=' + QuotedStr(xPeriodo) + ' ' +
      'AND NOT EXISTS (SELECT ASOID,CREDID,PERIODO FROM GES_DET_IND WHERE A.ASOID=ASOID AND A.CREDID=CREDID ) ';
   DM1.DCOM1.AppServer.EjecutaSql(xSQL);

   MstCabecera(xAsoId, xPeriodo);
   xSQL := 'SELECT PERIODO,ASOID,CREFOTORG,CREDID,TIPCREID,TIPCREDES,SALVEN,SALPEN,SALTOT,CUOVEN,CUOPEN,CUOTOT FROM GES_DET_IND WHERE ASOID=' + QuotedStr(xAsoId);
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSQL);
   DM1.cdsQry.Open;
   If DM1.cdsQry.RecordCount > 0 Then
   Begin
      DM1.cdsQry.First;
      While Not DM1.cdsQry.Eof Do
      Begin
         xCreDid := DM1.cdsQry.FieldByname('CREDID').AsString;
         ApliPagos(xAsoId, xCreDid);
         DM1.cdsQry.Next;
      End;
   End;
   DM1.cdsQry.Close;
   xSQL := 'UPDATE GES_COB_IND A SET (VENACT,PENACT,SALACT)= ' +
      '(SELECT SUM(NVL(CUOVEN,0)),SUM(NVL(CUOPEN,0)),SUM(NVL(SALTOT,0)) FROM GES_DET_IND  WHERE ASOID=A.ASOID)  WHERE ASOID=' + QuotedStr(xAsoId);
   DM1.DCOM1.AppServer.EjecutaSql(xSQL);
   xSQL := 'UPDATE GES_COB_DOM A SET (VENACT,PENACT,SALACT)= ' +
      '(SELECT SUM(NVL(CUOVEN,0)),SUM(NVL(CUOPEN,0)),SUM(NVL(SALTOT,0)) FROM GES_DET_IND  WHERE ASOID=A.ASOID)  WHERE ASOID=' + QuotedStr(xAsoId);
   DM1.DCOM1.AppServer.EjecutaSql(xSQL);

End;

(******************************************************************************)

Procedure TfGestInt.ApliPagos(xAsoId, xCreDid : String);
Var
   xSQL : String;
   xSalTot, xSalVen, xSalPen, xSalDif : Currency;
   xCuoTot, xCuoVen, xCuoPen, xCuoDif : Integer;
Begin
   xSalTot := 0;
   xSalVen := 0;
   xSalPen := 0;
   xSalDif := 0;
   xCuoVen := 0;
   xCuoPen := 0;
   xCuoDif := 0;
   xSQL := 'SELECT SUM(NVL(CREMTO,0)-NVL(CREMTOCOB,0) ) SALVEN, COUNT(*)CUOVEN FROM CRE302 WHERE ASOID = ' + QuotedStr(xAsoId) + ' And CREDID = ' + QuotedStr(xCreDid) + ' And ' +
      'CREESTID IN (''02'',''11'',''27'',''14'')  AND TO_CHAR(CREFVEN,''YYYYMM'') <= TO_CHAR(SYSDATE,''YYYYMM'')  ';
   DM1.cdsQry5.Close;
   DM1.cdsQry5.DataRequest(xSQL);
   DM1.cdsQry5.Open;
   If Length(Trim(DM1.cdsQry5.FieldByName('SALVEN').AsString)) > 0 Then
   Begin
      xSalVen := DM1.cdsQry5.FieldByName('SALVEN').AsCurrency;
      xCuoVen := DM1.cdsQry5.FieldByName('CUOVEN').AsInteger;
   End;
   DM1.cdsQry5.Close;
   xSQL := 'SELECT SUM(NVL(CREMTO,0)-NVL(CREMTOCOB,0) ) SALPEN, COUNT(*) CUOPEN FROM CRE302 WHERE ASOID=' + QuotedStr(xAsoId) + ' AND CREDID=' + QuotedStr(xCreDid) + ' AND ' +
      'CREESTID IN (''02'',''11'',''27'',''14'')  AND TO_CHAR(CREFVEN,''YYYYMM'') > TO_CHAR(SYSDATE,''YYYYMM'')  ';
   DM1.cdsQry5.Close;
   DM1.cdsQry5.DataRequest(xSQL);
   DM1.cdsQry5.Open;
   If Length(Trim(DM1.cdsQry5.FieldByName('SALPEN').AsString)) > 0 Then
   Begin
      xSalPen := DM1.cdsQry5.FieldByName('SALPEN').AsCurrency;
      xCuoPen := DM1.cdsQry5.FieldByName('CUOPEN').AsInteger;
   End;
   DM1.cdsQry5.Close;

   xSQL := 'SELECT SUM(NVL(CREMTO,0)-NVL(CREMTOCOB,0) ) SALDIF, COUNT(*) CUODIF FROM CRE302 WHERE ASOID=' + QuotedStr(xAsoId) + ' AND CREDID=' + QuotedStr(xCreDid) + ' AND ' +
      'CREESTID IN (''02'',''11'',''27'',''14'')  AND CREFVEN <> CREFVENINI  ';
   DM1.cdsQry5.Close;
   DM1.cdsQry5.DataRequest(xSQL);
   DM1.cdsQry5.Open;
   If Length(Trim(DM1.cdsQry5.FieldByName('SALDIF').AsString)) > 0 Then
   Begin
      xSalDif := DM1.cdsQry5.FieldByName('SALDIF').AsCurrency;
      xCuoDif := DM1.cdsQry5.FieldByName('CUODIF').AsInteger;
   End;
   DM1.cdsQry5.Close;

   xSalTot := xSalVen + xSalPen;
   xCuoTot := xCuoVen + xCuoPen;
   xSQL := 'UPDATE GES_DET_IND  SET SALTOT=' + FloatToStr(xSalTot) + ',CUOTOT=' + FloatToStr(xCuoTot) + ',SALVEN=' + FloatToStr(xSalVen) + ',CUOVEN=' + FloatToStr(xCuoVen) + ',SALPEN=' + FloatToStr(xSalPen) + ',CUOPEN=' + FloatToStr(xCuoPen) + ', '
         + '       SALDIF=' + FloatToStr(xSalDif) + ',CUODIF=' + FloatToStr(xCuoDif)
         + ' WHERE ASOID=' + QuotedStr(xAsoId) + ' AND CREDID=' + QuotedStr(xCreDid);
   DM1.DCOM1.AppServer.EjecutaSql(xSQL);
End;
// FIN : SPP_201402_GESCOB
(******************************************************************************)

Function TfGestInt.SaldoFinal(xAsoId : String) : Currency;
Var
   xSQL : String;
Begin
   xSQL := 'SELECT SALVEN FROM (SELECT NVL(SUM(NVL(SALVEN,0)),0) SALVEN FROM GES_DET_IND WHERE ASOID=' + QuotedStr(xAsoId) + ' ) ';
   DM1.cdsTransporte.Close;
   DM1.cdsTransporte.DataRequest(xSQL);
   DM1.cdsTransporte.Open;
   Result := DM1.Valores(DM1.cdsTransporte.FieldByName('SALVEN').AsString);
End;

(******************************************************************************)
// INICIO : SPP_201402_GESCOB
Procedure TfGestInt.MstAsociados();
Var
   xAsoId, xSQL, xPeriodo : String;
Begin
   xAsoId := cdsActivo.fieldByname('ASOID').AsString;
   xPeriodo := cdsActivo.fieldByname('PERIODO').AsString;
   CargaSaldo(xAsoid, xPeriodo);
   // SITUACION LABORAL SEGUN PADRON
   xSQL := 'SELECT B.DES_SIT SITUACION_PADRON '
         + '  FROM ASO_PAD_HIS         A '
         + '      ,ASO_PAD_SIT_ASO     B '
         + ' WHERE A.CODPAD = (SELECT MAX(CODPAD) FROM ASO_PAD_HIS) '
         + '   AND A.ASOID = ' + QuotedStr(Trim(cdsActivo.fieldByname('ASOID').AsString))
         + '   AND A.SITACT = B.COD_SIT '
         + '   AND B.COD_MAE = ''02'' '
         + '   AND B.COD_SIT NOT IN (''99'', ''00'') ';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSQL);
   DM1.cdsQry.Open;
   fGesIndInt.lblSitAsociado.Caption := DM1.cdsQry.fieldbyname('SITUACION_PADRON').AsString;

   // DIRECCION DEL COLEGIO
   xSQL := 'SELECT B.DIREC, B.UBIGEO_DIR, C.DPTODES DEPARTAMENTO, D.CIUDDES PROVINCIA, E.ZIPDES DISTRITO '
         + '  FROM APO201 A, ASO_CEN_EDU B, APO158 C, TGE121 D, TGE122 E '
         + ' WHERE A.ASOID = ' + QuotedStr(Trim(cdsActivo.fieldByname('ASOID').AsString))
         + '   AND A.CENEDUID = B.CENEDUID(+) '
         + '   AND SUBSTR(B.UBIGEO_DIR,1,2) = C.DPTOID(+) '
         + '   AND SUBSTR(B.UBIGEO_DIR,1,4) = D.DPTOID(+)||D.CIUDID(+) '
         + '   AND SUBSTR(B.UBIGEO_DIR,1,6) = E.DPTOID(+)||E.CIUDID(+)||E.ZIPID(+) ';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSQL);
   DM1.cdsQry.Open;
   fGesIndInt.lblDireccionDomLabAso.Caption := DM1.cdsQry.fieldByname('DIREC').AsString;
   fGesIndInt.lblDireccionDomLabAsoDist.Caption := DM1.cdsQry.fieldByname('DISTRITO').AsString;
   fGesIndInt.lblDireccionDomLabAsoProv.Caption := DM1.cdsQry.fieldByname('PROVINCIA').AsString;
   fGesIndInt.lblDireccionDomLabAsoDpto.Caption := DM1.cdsQry.fieldByname('DEPARTAMENTO').AsString;
   // DIRECCION DOMICILIO
   fGesIndInt.lblDireccionDomMaeAso.Caption := DM1.CrgDescrip('ASOID=' + QuotedStr(Trim(cdsActivo.fieldByname('ASOID').AsString)), 'APO201', 'ASODIR');
   fGesIndInt.lblDireccionDomMaeAsoDist.caption := cdsActivo.fieldByname('DISTRITO').AsString;
   fGesIndInt.lblDireccionDomMaeAsoProv.caption := cdsActivo.fieldByname('PROVINCIA').AsString;
   fGesIndInt.lblDireccionDomMaeAsoDpto.caption := cdsActivo.fieldByname('DEPARTAMENTO').AsString;
   // DIRECCION GESCOB

   xSQL := 'SELECT B.ASODIR, C.DPTODES DEPARTAMENTO, D.CIUDDES PROVINCIA, E.ZIPDES DISTRITO '
         + '  FROM (SELECT ASODIR, UBIGEO '
         + '              ,DENSE_RANK() OVER(PARTITION BY ASOID ORDER BY NVL(MODREG, HREG) DESC) DNRK '
         + '          FROM GES_DOM_ASO '
         + '         WHERE NVL(ACTIVO, ''N'') = ''S'' '
         + '           AND ASOID = ' +  QuotedStr(Trim(cdsActivo.fieldByname('ASOID').AsString))
         + '       ) B, APO158 C, TGE121 D, TGE122 E '
         + ' WHERE B.DNRK = 1 '
         + '   AND SUBSTR(B.UBIGEO,1,2) = C.DPTOID(+) '
         + '   AND SUBSTR(B.UBIGEO,1,4) = D.DPTOID(+)||D.CIUDID(+) '
         + '   AND SUBSTR(B.UBIGEO,1,6) = E.DPTOID(+)||E.CIUDID(+)||E.ZIPID(+) ';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSQL);
   DM1.cdsQry.Open;
   fGesIndInt.lblDireccionDomGesCob.caption := DM1.cdsQry.fieldbyname('ASODIR').asstring;
   fGesIndInt.lblDireccionDomGesCobDist.caption := DM1.cdsQry.fieldbyname('DISTRITO').asstring;
   fGesIndInt.lblDireccionDomGesCobProv.caption := DM1.cdsQry.fieldbyname('PROVINCIA').asstring;
   fGesIndInt.lblDireccionDomGesCobDpto.caption := DM1.cdsQry.fieldbyname('DEPARTAMENTO').asstring;


   fGesIndInt.lblAsoNombres.Caption := cdsActivo.fieldByname('ASOAPENOM').AsString;
   fGesIndInt.lblDni.Caption := DM1.CrgDescrip('ASOID=' + QuotedStr(Trim(cdsActivo.fieldByname('ASOID').AsString)), 'APO201', 'ASODNI');
   fGesIndInt.lblDias.Caption := cdsActivo.fieldByname('DIASTRANS').AsString;
   fGesIndInt.lblTipAso.Caption := cdsActivo.fieldByname('ASOTIPID').AsString + ' - ' + DM1.CrgDescrip('ASOTIPID = ' + QuotedStr(cdsActivo.fieldByname('ASOTIPID').AsString), 'APO107', 'ASOTIPDES');
   fGesIndInt.lblCodMod.Caption := cdsActivo.fieldByname('ASOCODMOD').AsString;
   fGesIndInt.lblCuenta.Caption := DM1.CrgDescrip('ASOID=' + QuotedStr(Trim(cdsActivo.fieldByname('ASOID').AsString)), 'APO201', 'ASONCTA') + ' (' + DM1.CrgDescrip('SITCTAID=' + QuotedStr(Trim(DM1.CrgDescrip('ASOID=' + QuotedStr(Trim(cdsActivo.fieldByname('ASOID').AsString)), 'APO201', 'SITCTA'))), 'COB103', 'SITCTADES') + ')';
   fGesIndInt.lblUses.Caption := cdsActivo.FieldByName('USENOM').AsString;
   fGesIndInt.lblUniPro.Caption := cdsActivo.FieldByName('OFDESNOM').AsString;
{   fGesIndInt.lblDireccion.Caption := DM1.CrgDescrip('ASOID=' + QuotedStr(Trim(cdsActivo.fieldByname('ASOID').AsString)), 'APO201', 'ASODIR');
   // telefno gestion

   xSQL := 'SELECT NROTELF,OBSTEL FROM GES_TEL_ASO WHERE ASOID=' + QuotedStr(xAsoId) + ' AND HREG IN (SELECT MAX(HREG) FROM GES_TEL_ASO WHERE ASOID=' + QuotedStr(xAsoId) + ') AND ACTIVO=''S''  ';
   If DM1.CountReg(xSQL) = 0 Then
   Begin
      fGesIndInt.lblTelefono.Caption := DM1.CrgDescrip('ASOID=' + QuotedStr(Trim(cdsActivo.fieldByname('ASOID').AsString)), 'APO201', 'ASOTELF1') + ' - ' + DM1.CrgDescrip('ASOID=' + QuotedStr(Trim(cdsActivo.fieldByname('ASOID').AsString)), 'APO201', 'ASOTELF2');
      fGesIndInt.lblTelefono.Font.Color := clNavy;
   End
   Else
   Begin
      DM1.cdsATransp.Close;
      DM1.cdsATransp.DataRequest(xSQL);
      DM1.cdsATransp.Open;
      fGesIndInt.lblTelefono.Caption := Trim(DM1.cdsATransp.FieldByName('NROTELF').AsString) + ' - ' + Trim(DM1.cdsATransp.FieldByName('OBSTEL').AsString);
      fGesIndInt.lblTelefono.Font.Color := clRed;
   End;	 }

   // TELEFONO MAESTRO ASOCIADOS
   // NO EXISTE UN CAMPO PARA DIFERENCIAR ENTRE CELULARES Y FIJOS
   fGesIndInt.lblTelefonoFijoMaeAso.Caption := DM1.CrgDescrip('ASOID=' + QuotedStr(Trim(cdsActivo.fieldByname('ASOID').AsString)), 'APO201', 'ASOTELF1') + ' - ' + DM1.CrgDescrip('ASOID=' + QuotedStr(Trim(cdsActivo.fieldByname('ASOID').AsString)), 'APO201', 'ASOTELF2');
   fGesIndInt.lblTelefonoCelMaeAso.Caption := '';

   // TELEFONO GESCOB
   xSQL := 'SELECT MAX(TEL_FIJO) TEL_FIJO, MAX(TEL_CEL) TEL_CEL '
         + '  FROM (SELECT TEL_FIJO, NULL TEL_CEL '
         + '          FROM (SELECT ASOID, NROTELF TEL_FIJO '
         + '                      ,DENSE_RANK() OVER(PARTITION BY ASOID ORDER BY HREG DESC) DNRK '
         + '                  FROM GES_TEL_ASO '
         + '                 WHERE ACTIVO = ''S'' '
         + '                   AND IDTIPTEL = ''01'' '
         + '                   AND ASOID = '+QuotedStr(Trim(cdsActivo.fieldByname('ASOID').AsString))+') '
         + '         WHERE DNRK = 1 '
         + '        UNION ALL '
         + '        SELECT NULL TEL_FIJO, TEL_CEL '
         + '          FROM (SELECT ASOID, NROTELF TEL_CEL '
         + '                      ,DENSE_RANK() OVER(PARTITION BY ASOID ORDER BY HREG DESC) DNRK '
         + '                  FROM GES_TEL_ASO '
         + '                 WHERE ACTIVO = ''S'' '
         + '                   AND IDTIPTEL = ''02'' '
         + '                   AND ASOID = '+QuotedStr(Trim(cdsActivo.fieldByname('ASOID').AsString))+') '
         + '         WHERE DNRK = 1 '
         + '       )';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSQL);
   DM1.cdsQry.Open;
   fGesIndInt.lblTelefonoFijoGesCob.Caption := DM1.cdsQry.fieldByname('TEL_FIJO').AsString;
   fGesIndInt.lblTelefonoCelGesCob.Caption := DM1.cdsQry.fieldByname('TEL_CEL').AsString;


   // SALDO INICIAL
   fGesIndInt.lblSalTotal.Caption := FormatFloat('###,###.#0', DM1.Valores(cdsActivo.fieldByname('SALTOT').AsString)) + ' [' + cdsActivo.fieldByname('CUOTOT').AsString + ']';
   fGesIndInt.lblSalVen.Caption := FormatFloat('###,###.#0', DM1.Valores(cdsActivo.fieldByname('SALVEN').AsString)) + ' [' + cdsActivo.fieldByname('CUOVEN').AsString + ']';
   fGesIndInt.lblSalPend.Caption := FormatFloat('###,###.#0', DM1.Valores(cdsActivo.fieldByname('SALPEN').AsString)) + ' [' + cdsActivo.fieldByname('CUOPEN').AsString + ']';
   fGesIndInt.lblSalDif.Caption := FormatFloat('###,###.#0', DM1.Valores(cdsActivo.fieldByname('SALDIF').AsString)) + ' [' + cdsActivo.fieldByname('CUODIF').AsString + ']';

   // SALDO ACTUAL
   xSQL := 'SELECT NVL(SUM(NVL(CREMTO, 0) - NVL(CREMTOCOB, 0)),0) SALTOT '
         + '      ,NVL(SUM(1),0) CUOTOT '
         + '      ,NVL(SUM(CASE WHEN CREFVEN <= TRUNC(SYSDATE) THEN NVL(CREMTO, 0) - NVL(CREMTOCOB, 0) ELSE 0 END ),0) SALVEN '
         + '      ,NVL(SUM(CASE WHEN CREFVEN <= TRUNC(SYSDATE) THEN 1 ELSE 0 END),0) CUOVEN '
         + '      ,NVL(SUM(CASE WHEN CREFVEN > TRUNC(SYSDATE) THEN NVL(CREMTO, 0) - NVL(CREMTOCOB, 0) ELSE 0 END ),0) SALPEN '
         + '      ,NVL(SUM(CASE WHEN CREFVEN > TRUNC(SYSDATE) THEN 1 ELSE 0 END),0) CUOPEN '
         + '      ,NVL(SUM(CASE WHEN CREFVEN <> CREFVENINI THEN NVL(CREMTO, 0) - NVL(CREMTOCOB, 0) ELSE 0 END ),0) SALDIF '
         + '      ,NVL(SUM(CASE WHEN CREFVEN <> CREFVENINI THEN 1 ELSE 0 END),0) CUODIF '
         + '  FROM CRE302 '
         + ' WHERE ASOID = ' + QuotedStr(Trim(cdsActivo.fieldByname('ASOID').AsString))
         + '   AND CREESTID IN (''02'', ''11'', ''27'', ''14'') ';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSQL);
   DM1.cdsQry.Open;
   fGesIndInt.lblSalTotalAct.Caption := FormatFloat('###,###.#0', DM1.Valores(DM1.cdsQry.fieldByname('SALTOT').AsString)) + ' [' + DM1.cdsQry.fieldByname('CUOTOT').AsString + ']';
   fGesIndInt.lblSalVenAct.Caption := FormatFloat('###,###.#0', DM1.Valores(DM1.cdsQry.fieldByname('SALVEN').AsString)) + ' [' + DM1.cdsQry.fieldByname('CUOVEN').AsString + ']';
   fGesIndInt.lblSalPendAct.Caption := FormatFloat('###,###.#0', DM1.Valores(DM1.cdsQry.fieldByname('SALPEN').AsString)) + ' [' + DM1.cdsQry.fieldByname('CUOPEN').AsString + ']';
   fGesIndInt.lblSalDifAct.Caption := FormatFloat('###,###.#0', DM1.Valores(DM1.cdsQry.fieldByname('SALDIF').AsString)) + ' [' + DM1.cdsQry.fieldByname('CUODIF').AsString + ']';



   xSQL := 'SELECT B.OFDESNOM,SUBSTR(CREDID,1,2) OFDESID,PERIODO,ASOID,CREFOTORG,CREDID,SUBSTR(CREDID,11,5)||''-''||SUBSTR(CREDID,3,4) NUMERO ,TIPCREID,TIPCREDES,NVL(SALVEN,0) SALVEN,NVL(SALPEN,0) SALPEN,NVL(SALTOT,0) SALTOT FROM GES_DET_IND A,APO110 B WHERE  ASOID=' + QuotedStr(xAsoId) + ' AND SUBSTR(A.CREDID,1,2)=B.OFDESID(+) ';
   DM1.cdsMovRec.Close;
   DM1.cdsMovRec.DataRequest(xSQL);
   DM1.cdsMovRec.Open;
   TNumericField(DM1.cdsMovRec.FieldByName('SALTOT')).DisplayFormat := '###,###,##0.#0';
   TNumericField(DM1.cdsMovRec.FieldByName('SALVEN')).DisplayFormat := '###,###,##0.#0';
   TNumericField(DM1.cdsMovRec.FieldByName('SALPEN')).DisplayFormat := '###,###,##0.#0';
   If SaldoFinal(xAsoId) = 0 Then
   Begin
      CerraGestion(xAsoId);
   End;

End;
// FIN : SPP_201402_GESCOB
(******************************************************************************)
// INICIO : SPP_201402_GESCOB
Procedure TfGestInt.Asignadas();
Var
   xSQL : String;
Begin
   grpBusAso.Visible := True;
   Screen.Cursor := crHourGlass;
   xSQL := 'SELECT E.ASOCODMOD, A.PERIODO,C.OFDESNOM,A.OFDESID,A.USEID,D.USENOM, '
      + '          A.UPAGOID,A.UPROID,CFC_F,CFC_N,CFC_R,A.ASOTIPID,A.ASOID, '
      + '          A.ASOAPENOM,NVL(SALVEN,0) SALVEN, NVL(SALPEN,0) SALPEN, '
      + '          NVL(SALTOT,0) SALTOT,CUOVEN,CUOPEN,NVL(CUOVEN,0)+NVL(CUOPEN,0) CUOTOT, '
      + '          ESTDES,SALACT,RESGES,A.USUARIO,USUASIG,TO_DATE(FECASIG) FECASIG, '
      + '          ESTGES,TIPGES,ESTDEU,B.DESREF,VENACT,PENACT,DIASTRANS, '
      + '          DIASTRANSACT, A.ZIPID, E.ASODIR  '
      + '          ,F.DPTODES DEPARTAMENTO, G.CIUDDES PROVINCIA, H.ZIPDES DISTRITO '
      + '          ,''S'' PRI_ALTA '
      + '          ,C1.DESCRIPCION_PRIORIDAD PRIORIDAD '
      + '          ,NVL(SALDIF, 0 ) SALDIF, NVL(CUODIF, 0) CUODIF, '
      + '          ''XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'' DISOPE '
      + '     FROM ' + xTabla + ' A, GES_TIP_REF_DET B, APO110 C, APO101 D, APO201 E '
      + '          ,APO158 F, TGE121 G, TGE122 H, GES_COB_REG B1, GES_COB_PRI C1 ';
   If edtBuscarOG.Text = '' Then
      xSQL := xSQL + ' WHERE 1 = 2 AND A.TIPGES=''01'' ' // GESTION INTERNA
   Else
      xSQL := xSQL + ' WHERE A.TIPGES = ''01'' '; // GESTION INTERNA
   xSQL := xSQL + ' AND A.USUARIO <> ' + QuotedStr(xUsuarioGestor)
      + '      AND A.ESTGES = B.CODREF(+) '
      + '      AND B.CODTIP =''02'' '
      + '      AND A.ASOID = E.ASOID(+) '
      + '      AND A.OFDESID = C.OFDESID(+) '
      + '      AND A.USEID = D.USEID(+) '
      + '      AND A.UPAGOID = D.UPAGOID(+) '
      + '      AND A.UPROID = D.UPROID(+) '
      + '      AND SUBSTR(A.ZIPID,1,2) = F.DPTOID(+) '
      + '      AND SUBSTR(A.ZIPID,1,2) = G.DPTOID(+) '
      + '      AND SUBSTR(A.ZIPID,3,2) = G.CIUDID(+) '
      + '      AND SUBSTR(A.ZIPID,1,2) = H.DPTOID(+) '
      + '      AND SUBSTR(A.ZIPID,3,2) = H.CIUDID(+) '
      + '      AND SUBSTR(A.ZIPID,5,2) = H.ZIPID(+) '
      + '      AND A.CODIGO_REGLA = B1.CODIGO_REGLA(+) AND B1.CODIGO_PRIORIDAD = C1.CODIGO_PRIORIDAD(+) ';
   If rdbNombre.Checked Then
      xSQL := xSQL + ' AND A.ASOAPENOM LIKE ' + QuotedStr(Trim(edtBuscarOG.Text) + '%') + ' ORDER BY C1.CODIGO_PRIORIDAD, A.ASOAPENOM';
   If rdbDni.Checked Then
      xSQL := xSQL + ' AND E.ASODNI LIKE ' + QuotedStr(Trim(edtBuscarOG.Text) + '%') + ' ORDER BY C1.CODIGO_PRIORIDAD, E.ASODNI';
   DM1.cdsModelo.Close;
   DM1.cdsModelo.DataRequest(xSQL);
   DM1.cdsModelo.Open;
   HeadersGrid();
   TNumericField(DM1.cdsModelo.FieldByName('SALTOT')).DisplayFormat := '###,###,##0.#0';
   TNumericField(DM1.cdsModelo.FieldByName('SALVEN')).DisplayFormat := '###,###,##0.#0';
   TNumericField(DM1.cdsModelo.FieldByName('SALPEN')).DisplayFormat := '###,###,##0.#0';
   TNumericField(DM1.cdsModelo.FieldByName('SALACT')).DisplayFormat := '###,###,##0.#0';
   FootersGrid();
   Screen.Cursor := crDefault;
End;
// FIN : SPP_201402_GESCOB
(******************************************************************************)

// INICIO : SPP_201402_GESCOB
Procedure TfGestInt.FormClose(Sender : TObject; Var Action : TCloseAction);
Begin
   DM1.cdsDpto.IndexFieldNames := '';
   DM1.cdsDpto.Filter := '';
   DM1.cdsDpto.Filtered := False;

   DM1.cdsProvin.IndexFieldNames := '';
   DM1.cdsProvin.Filter := '';
   DM1.cdsProvin.Filtered := False;

   DM1.cdsDist.IndexFieldNames := '';
   DM1.cdsDist.Filter := '';
   DM1.cdsDist.Filtered := False;

   cdsHojRutDetTelf.Free;
   dsHojRutDetTelf.Free;

   cdsHojRutDetSaldos.Free;
   dsHojRutDetSaldos.Free;

   cdsHojRutDetDescargos.Free;
   dsHojRutDetDescargos.Free;

   cdsHojRutDetPagos.Free;
   dsHojRutDetPagos.Free;

   cdsHojRutDetGestiones.Free;
   dsHojRutDetGestiones.Free;

   Action := caFree;
End;
(******************************************************************************)
// FIN : SPP_201402_GESCOB

Procedure TfGestInt.dtgGestionDrawDataCell(Sender : TObject;
   Const Rect : TRect; Field : TField; State : TGridDrawState);
Begin
   dtgGestion.Canvas.Font.Color := clNavy;
   dtgGestion.DefaultDrawDataCell(rect, Field, State);

   If Field.FieldName = 'SALVEN' Then
   Begin
      dtgGestion.Canvas.Font.Color := clRed;
      dtgGestion.DefaultDrawDataCell(rect, Field, State);
   End;

   If Field.FieldName = 'CUOVEN' Then
   Begin
      dtgGestion.Canvas.Font.Color := clRed;
      dtgGestion.DefaultDrawDataCell(rect, Field, State);
   End;

   If Field.FieldName = 'SALPEN' Then
   Begin
      dtgGestion.Canvas.Font.Color := clGreen;
      dtgGestion.DefaultDrawDataCell(rect, Field, State);
   End;

   If Field.FieldName = 'CUOPEN' Then
   Begin
      dtgGestion.Canvas.Font.Color := clGreen;
      dtgGestion.DefaultDrawDataCell(rect, Field, State);
   End;

   If Field.FieldName = 'PRIORIDAD' Then
   Begin
      If (DM1.cdsMovCre.FieldByName('PRIORIDAD').asstring = 'ALTA') Then
      Begin
         dtgGestion.Canvas.Font.Color := clRed;
         dtgGestion.Canvas.Font.Style := [fsBold, fsUnderline];
         dtgGestion.DefaultDrawDataCell(rect, Field, State);
      End;
   End;
End;

(******************************************************************************)
// INICIO : SPP_201402_GESCOB
(*
Procedure TfGestInt.ppDetailBand5BeforePrint(Sender : TObject);
Var
   sDpto, sProv, sDist, sSQL, sASO, sZIP : String;
Begin
   sASO := cdsActivo.FieldByName('ASOID').AsString;
   sZIP := cdsActivo.FieldByName('ZIPID').AsString;

   sSQL := 'SELECT ASODIR,USUARIO,UBIGEO,ASOID,OBSTEL FROM GES_DOM_ASO '
      + 'WHERE ASOID=' + QuotedStr(sASO) + ' and ACTIVO=''S'' and UBIGEO LIKE ''' + dblcDpto.Text + '%'' '
      + 'ORDER BY HREG DESC';
   DM1.cdsMGrupo.Close;
   DM1.cdsMGrupo.DataRequest(sSQL);
   DM1.cdsMGrupo.Open;

   If DM1.cdsMGrupo.recordcount > 0 Then
   Begin
      pplDir1.Caption := DM1.cdsMGrupo.FieldByName('ASODIR').AsString;
      sDpto := Copy(DM1.cdsMGrupo.FieldByname('UBIGEO').AsString, 1, 2);
      sProv := Copy(DM1.cdsMGrupo.FieldByname('UBIGEO').AsString, 3, 2);
      sDist := Copy(DM1.cdsMGrupo.FieldByname('UBIGEO').AsString, 5, 2);
      If sDpto = '' Then Exit;
   End
   Else
   Begin
      pplDir1.Caption := DM1.CrgDescrip('ASOID=' + QuotedStr(sASO), 'APO201', 'ASODIR');
      sDpto := Copy(sZIP, 1, 2);
      sProv := Copy(sZIP, 3, 2);
      sDist := Copy(sZIP, 5, 2);
      If sDpto = '' Then Exit;
   End;

   sSQL := 'Select DPTODES, CIUDDES, ZIPDES '
      + 'from APO158 A, TGE121 B, TGE122 C '
      + 'where A.DPTOID=''' + sDpto + ''' '
      + ' AND B.DPTOID=''' + sDpto + ''' AND B.CIUDID=''' + sProv + ''' '
      + ' AND C.DPTOID=''' + sDpto + ''' AND C.CIUDID=''' + sProv + ''' AND C.ZIPID=''' + sDist + '''';

   DM1.cdsQry10.Close;
   DM1.cdsQry10.DataRequest(sSQL);
   DM1.cdsQry10.Open;

   pplDpto1.Caption := DM1.cdsQry10.FieldByname('DPTODES').AsString;
   pplProv1.Caption := DM1.cdsQry10.FieldByname('CIUDDES').AsString;
   pplDist1.Caption := DM1.cdsQry10.FieldByname('ZIPDES').AsString;

   ppmOfides1.Lines.Clear;
   ppmOfides1.Lines.Add(DM1.cdsGestor.FieldByname('USUDIR').AsString);
   If DM1.cdsGestor.FieldByname('USUDIR2').AsString <> '' Then
      ppmOfides1.Lines.Add(DM1.cdsGestor.FieldByname('USUDIR2').AsString);
   If DM1.cdsGestor.FieldByname('USUDIR3').AsString <> '' Then
      ppmOfides1.Lines.Add(DM1.cdsGestor.FieldByname('USUDIR3').AsString);
   If DM1.cdsGestor.FieldByname('USUDIR4').AsString <> '' Then
      ppmOfides1.Lines.Add(DM1.cdsGestor.FieldByname('USUDIR4').AsString);
   If DM1.cdsGestor.FieldByname('USUDIR5').AsString <> '' Then
      ppmOfides1.Lines.Add(DM1.cdsGestor.FieldByname('USUDIR5').AsString);

   pplGestor1.Caption := DM1.cdsGestor.FieldByname('USUNOM').AsString;
End;

//******************************************************************************

Procedure TfGestInt.ppDetailBand3BeforePrint(Sender : TObject);
Var
   sDpto, sProv, sDist, sSQL, sASO, sZIP : String;
Begin
   sASO := cdsActivo.FieldByName('ASOID').AsString;
   sZIP := cdsActivo.FieldByName('ZIPID').AsString;

   sSQL := 'SELECT ASODIR,USUARIO,UBIGEO,ASOID,OBSTEL FROM GES_DOM_ASO '
      + 'WHERE ASOID=' + QuotedStr(sASO) + ' and ACTIVO=''S'' and UBIGEO LIKE ''' + dblcDpto.Text + '%'' '
      + 'ORDER BY HREG DESC';
   DM1.cdsMGrupo.Close;
   DM1.cdsMGrupo.DataRequest(sSQL);
   DM1.cdsMGrupo.Open;

   If DM1.cdsMGrupo.recordcount > 0 Then
   Begin
      pplDir2.Caption := DM1.cdsMGrupo.FieldByName('ASODIR').AsString;
      sDpto := Copy(DM1.cdsMGrupo.FieldByname('UBIGEO').AsString, 1, 2);
      sProv := Copy(DM1.cdsMGrupo.FieldByname('UBIGEO').AsString, 3, 2);
      sDist := Copy(DM1.cdsMGrupo.FieldByname('UBIGEO').AsString, 5, 2);
      If sDpto = '' Then Exit;
   End
   Else
   Begin
      pplDir2.Caption := DM1.CrgDescrip('ASOID=' + QuotedStr(Trim(sASO)), 'APO201', 'ASODIR');
      sDpto := Copy(sZIP, 1, 2);
      sProv := Copy(sZIP, 3, 2);
      sDist := Copy(sZIP, 5, 2);
      If sDpto = '' Then Exit;
   End;

   sSQL := 'Select DPTODES, CIUDDES, ZIPDES '
      + 'from APO158 A, TGE121 B, TGE122 C '
      + 'where A.DPTOID=''' + sDpto + ''' '
      + ' AND B.DPTOID=''' + sDpto + ''' AND B.CIUDID=''' + sProv + ''' '
      + ' AND C.DPTOID=''' + sDpto + ''' AND C.CIUDID=''' + sProv + ''' AND C.ZIPID=''' + sDist + '''';
   DM1.cdsQry10.Close;
   DM1.cdsQry10.DataRequest(sSQL);
   DM1.cdsQry10.Open;

   pplDpto2.Caption := DM1.cdsQry10.FieldByname('DPTODES').AsString;
   pplProv2.Caption := DM1.cdsQry10.FieldByname('CIUDDES').AsString;
   pplDist2.Caption := DM1.cdsQry10.FieldByname('ZIPDES').AsString;

   ppmOfides2.Lines.Clear;
   ppmOfides2.Lines.Add(DM1.cdsGestor.FieldByname('USUDIR').AsString);
   If DM1.cdsGestor.FieldByname('USUDIR2').AsString <> '' Then
      ppmOfides2.Lines.Add(DM1.cdsGestor.FieldByname('USUDIR2').AsString);
   If DM1.cdsGestor.FieldByname('USUDIR3').AsString <> '' Then
      ppmOfides2.Lines.Add(DM1.cdsGestor.FieldByname('USUDIR3').AsString);
   If DM1.cdsGestor.FieldByname('USUDIR4').AsString <> '' Then
      ppmOfides2.Lines.Add(DM1.cdsGestor.FieldByname('USUDIR4').AsString);
   If DM1.cdsGestor.FieldByname('USUDIR5').AsString <> '' Then
      ppmOfides2.Lines.Add(DM1.cdsGestor.FieldByname('USUDIR5').AsString);

   pplGestor2.Caption := DM1.cdsGestor.FieldByname('USUNOM').AsString;

   sSQL := 'select A.ASOID, A.CREDID, CREFOTORG, SUM( CREMTO)-SUM( CREMTOCOB) SALDO '
      + 'from CRE301 A, CRE302 B '
      + 'WHERE A.ASOID=' + QuotedStr(Trim(sASO)) + ' AND FLGREFI=''R'' '
      + ' AND A.ASOID=B.ASOID AND A.CREDID=B.CREDID '
      + ' AND NOT B.CREESTID IN (''13'',''04'') '
      + 'GROUP BY A.ASOID, A.CREDID, CREFOTORG '
      + 'ORDER BY SALDO DESC';
   DM1.cdsQry10.Close;
   DM1.cdsQry10.DataRequest(sSQL);
   DM1.cdsQry10.Open;
   pplCreRef.Caption := DM1.cdsQry10.FieldByname('CREDID').AsString;
   pplFecRef.Caption := DM1.cdsQry10.FieldByname('CREFOTORG').AsString;
End;

//******************************************************************************

Procedure TfGestInt.ppDetailBand7BeforePrint(Sender : TObject);
Var
   sDpto, sProv, sDist, sSQL, sASO, sZIP : String;
Begin
   sASO := cdsActivo.FieldByName('ASOID').AsString;
   sZIP := cdsActivo.FieldByName('ZIPID').AsString;

   sSQL := 'SELECT ASODIR,USUARIO,UBIGEO,ASOID,OBSTEL FROM GES_DOM_ASO '
      + 'WHERE ASOID=' + QuotedStr(sASO) + ' and ACTIVO=''S'' and UBIGEO LIKE ''' + dblcDpto.Text + '%'' '
      + 'ORDER BY HREG DESC';
   DM1.cdsMGrupo.Close;
   DM1.cdsMGrupo.DataRequest(sSQL);
   DM1.cdsMGrupo.Open;

   If DM1.cdsMGrupo.recordcount > 0 Then
   Begin
      pplDir3.Caption := DM1.cdsMGrupo.FieldByName('ASODIR').AsString;
      sDpto := Copy(DM1.cdsMGrupo.FieldByname('UBIGEO').AsString, 1, 2);
      sProv := Copy(DM1.cdsMGrupo.FieldByname('UBIGEO').AsString, 3, 2);
      sDist := Copy(DM1.cdsMGrupo.FieldByname('UBIGEO').AsString, 5, 2);
      If sDpto = '' Then Exit;
   End
   Else
   Begin
      pplDir3.Caption := DM1.CrgDescrip('ASOID=' + QuotedStr(Trim(sASO)), 'APO201', 'ASODIR');
      sDpto := Copy(sZIP, 1, 2);
      sProv := Copy(sZIP, 3, 2);
      sDist := Copy(sZIP, 5, 2);
      If sDpto = '' Then Exit;
   End;

   sSQL := 'Select DPTODES, CIUDDES, ZIPDES '
      + 'from APO158 A, TGE121 B, TGE122 C '
      + 'where A.DPTOID=''' + sDpto + ''' '
      + ' AND B.DPTOID=''' + sDpto + ''' AND B.CIUDID=''' + sProv + ''' '
      + ' AND C.DPTOID=''' + sDpto + ''' AND C.CIUDID=''' + sProv + ''' AND C.ZIPID=''' + sDist + '''';

   DM1.cdsQry10.Close;
   DM1.cdsQry10.DataRequest(sSQL);
   DM1.cdsQry10.Open;

   pplDpto3.Caption := DM1.cdsQry10.FieldByname('DPTODES').AsString;
   pplProv3.Caption := DM1.cdsQry10.FieldByname('CIUDDES').AsString;
   pplDist3.Caption := DM1.cdsQry10.FieldByname('ZIPDES').AsString;

   ppmOfides3.Lines.Clear;
   ppmOfides3.Lines.Add(DM1.cdsGestor.FieldByname('USUDIR').AsString);
   If DM1.cdsGestor.FieldByname('USUDIR2').AsString <> '' Then
      ppmOfides3.Lines.Add(DM1.cdsGestor.FieldByname('USUDIR2').AsString);
   If DM1.cdsGestor.FieldByname('USUDIR3').AsString <> '' Then
      ppmOfides3.Lines.Add(DM1.cdsGestor.FieldByname('USUDIR3').AsString);
   If DM1.cdsGestor.FieldByname('USUDIR4').AsString <> '' Then
      ppmOfides3.Lines.Add(DM1.cdsGestor.FieldByname('USUDIR4').AsString);
   If DM1.cdsGestor.FieldByname('USUDIR5').AsString <> '' Then
      ppmOfides3.Lines.Add(DM1.cdsGestor.FieldByname('USUDIR5').AsString);

   pplGestor3.Caption := DM1.cdsGestor.FieldByname('USUNOM').AsString;
End;

//******************************************************************************

Procedure TfGestInt.ppDetailBand9BeforePrint(Sender : TObject);
Var
   sDpto, sProv, sDist, sSQL, sASO, sZIP : String;
Begin
   sASO := cdsActivo.FieldByName('ASOID').AsString;
   sZIP := cdsActivo.FieldByName('ZIPID').AsString;

   sSQL := 'SELECT ASODIR,USUARIO,UBIGEO,ASOID,OBSTEL FROM GES_DOM_ASO '
      + 'WHERE ASOID=' + QuotedStr(sASO) + ' and ACTIVO=''S'' and UBIGEO LIKE ''' + dblcDpto.Text + '%'' '
      + 'ORDER BY HREG DESC';
   DM1.cdsMGrupo.Close;
   DM1.cdsMGrupo.DataRequest(sSQL);
   DM1.cdsMGrupo.Open;

   If DM1.cdsMGrupo.recordcount > 0 Then
   Begin
      pplDir4.Caption := DM1.cdsMGrupo.FieldByName('ASODIR').AsString;
      sDpto := Copy(DM1.cdsMGrupo.FieldByname('UBIGEO').AsString, 1, 2);
      sProv := Copy(DM1.cdsMGrupo.FieldByname('UBIGEO').AsString, 3, 2);
      sDist := Copy(DM1.cdsMGrupo.FieldByname('UBIGEO').AsString, 5, 2);
      If sDpto = '' Then Exit;
   End
   Else
   Begin
      pplDir4.Caption := DM1.CrgDescrip('ASOID=' + QuotedStr(Trim(sASO)), 'APO201', 'ASODIR');
      sDpto := Copy(sZIP, 1, 2);
      sProv := Copy(sZIP, 3, 2);
      sDist := Copy(sZIP, 5, 2);
      If sDpto = '' Then Exit;
   End;

   sSQL := 'Select DPTODES, CIUDDES, ZIPDES '
      + 'from APO158 A, TGE121 B, TGE122 C '
      + 'where A.DPTOID=''' + sDpto + ''' '
      + ' AND B.DPTOID=''' + sDpto + ''' AND B.CIUDID=''' + sProv + ''' '
      + ' AND C.DPTOID=''' + sDpto + ''' AND C.CIUDID=''' + sProv + ''' AND C.ZIPID=''' + sDist + '''';

   DM1.cdsQry10.Close;
   DM1.cdsQry10.DataRequest(sSQL);
   DM1.cdsQry10.Open;

   pplDpto4.Caption := DM1.cdsQry10.FieldByname('DPTODES').AsString;
   pplProv4.Caption := DM1.cdsQry10.FieldByname('CIUDDES').AsString;
   pplDist4.Caption := DM1.cdsQry10.FieldByname('ZIPDES').AsString;

   ppmOfides4.Lines.Clear;
   ppmOfides4.Lines.Add(DM1.cdsGestor.FieldByname('USUDIR').AsString);
   If DM1.cdsGestor.FieldByname('USUDIR2').AsString <> '' Then
      ppmOfides4.Lines.Add(DM1.cdsGestor.FieldByname('USUDIR2').AsString);
   If DM1.cdsGestor.FieldByname('USUDIR3').AsString <> '' Then
      ppmOfides4.Lines.Add(DM1.cdsGestor.FieldByname('USUDIR3').AsString);
   If DM1.cdsGestor.FieldByname('USUDIR4').AsString <> '' Then
      ppmOfides4.Lines.Add(DM1.cdsGestor.FieldByname('USUDIR4').AsString);
   If DM1.cdsGestor.FieldByname('USUDIR5').AsString <> '' Then
      ppmOfides4.Lines.Add(DM1.cdsGestor.FieldByname('USUDIR5').AsString);

   pplGestor4.Caption := DM1.cdsGestor.FieldByname('USUNOM').AsString;

   sSQL := 'select A.ASOID, A.CREDID, CREFOTORG, SUM( CREMTO)-SUM( CREMTOCOB) SALDO '
      + 'from CRE301 A, CRE302 B '
      + 'WHERE A.ASOID=' + QuotedStr(Trim(sASO))
      + ' AND A.ASOID=B.ASOID AND A.CREDID=B.CREDID '
      + ' AND NOT B.CREESTID IN (''13'',''04'') '
      + 'GROUP BY A.ASOID, A.CREDID, CREFOTORG '
      + 'ORDER BY SALDO DESC';
   DM1.cdsQry10.Close;
   DM1.cdsQry10.DataRequest(sSQL);
   DM1.cdsQry10.Open;
   pplCredito.Caption := DM1.cdsQry10.FieldByname('CREDID').AsString;
End;

//******************************************************************************

Procedure TfGestInt.ppDetailBand11BeforePrint(Sender : TObject);
Var
   sDpto, sProv, sDist, sSQL, sASO, sZIP : String;
Begin
   sASO := cdsActivo.FieldByName('ASOID').AsString;
   sZIP := cdsActivo.FieldByName('ZIPID').AsString;

   sSQL := 'SELECT ASODIR,USUARIO,UBIGEO,ASOID,OBSTEL FROM GES_DOM_ASO '
      + 'WHERE ASOID=' + QuotedStr(sASO) + ' and ACTIVO=''S'' and UBIGEO LIKE ''' + dblcDpto.Text + '%'' '
      + 'ORDER BY HREG DESC';
   DM1.cdsMGrupo.Close;
   DM1.cdsMGrupo.DataRequest(sSQL);
   DM1.cdsMGrupo.Open;

   If DM1.cdsMGrupo.recordcount > 0 Then
   Begin
      pplDir5.Caption := DM1.cdsMGrupo.FieldByName('ASODIR').AsString;
      sDpto := Copy(DM1.cdsMGrupo.FieldByname('UBIGEO').AsString, 1, 2);
      sProv := Copy(DM1.cdsMGrupo.FieldByname('UBIGEO').AsString, 3, 2);
      sDist := Copy(DM1.cdsMGrupo.FieldByname('UBIGEO').AsString, 5, 2);
      If sDpto = '' Then Exit;
   End
   Else
   Begin
      pplDir5.Caption := DM1.CrgDescrip('ASOID=' + QuotedStr(Trim(sASO)), 'APO201', 'ASODIR');
      sDpto := Copy(sZIP, 1, 2);
      sProv := Copy(sZIP, 3, 2);
      sDist := Copy(sZIP, 5, 2);
      If sDpto = '' Then Exit;
   End;

   sSQL := 'Select DPTODES, CIUDDES, ZIPDES '
      + 'from APO158 A, TGE121 B, TGE122 C '
      + 'where A.DPTOID=''' + sDpto + ''' '
      + ' AND B.DPTOID=''' + sDpto + ''' AND B.CIUDID=''' + sProv + ''' '
      + ' AND C.DPTOID=''' + sDpto + ''' AND C.CIUDID=''' + sProv + ''' AND C.ZIPID=''' + sDist + '''';

   DM1.cdsQry10.Close;
   DM1.cdsQry10.DataRequest(sSQL);
   DM1.cdsQry10.Open;

   pplDpto5.Caption := DM1.cdsQry10.FieldByname('DPTODES').AsString;
   pplProv5.Caption := DM1.cdsQry10.FieldByname('CIUDDES').AsString;
   pplDist5.Caption := DM1.cdsQry10.FieldByname('ZIPDES').AsString;

   ppmOfides5.Lines.Clear;
   ppmOfides5.Lines.Add(DM1.cdsGestor.FieldByname('USUDIR').AsString);
   If DM1.cdsGestor.FieldByname('USUDIR2').AsString <> '' Then
      ppmOfides5.Lines.Add(DM1.cdsGestor.FieldByname('USUDIR2').AsString);
   If DM1.cdsGestor.FieldByname('USUDIR3').AsString <> '' Then
      ppmOfides5.Lines.Add(DM1.cdsGestor.FieldByname('USUDIR3').AsString);
   If DM1.cdsGestor.FieldByname('USUDIR4').AsString <> '' Then
      ppmOfides5.Lines.Add(DM1.cdsGestor.FieldByname('USUDIR4').AsString);
   If DM1.cdsGestor.FieldByname('USUDIR5').AsString <> '' Then
      ppmOfides5.Lines.Add(DM1.cdsGestor.FieldByname('USUDIR5').AsString);

   pplGestor5.Caption := DM1.cdsGestor.FieldByname('USUNOM').AsString;
End;
*)
// FIN : SPP_201402_GESCOB

//******************************************************************************

Procedure TfGestInt.ppHeaderBand7BeforePrint(Sender : TObject);
Begin
   pplRespon.Caption := DM1.cdsGestor.FieldByname('USUNOM').AsString;
End;

// INICIO : SPP_201402_GESCOB
//******************************************************************************
// Nombre : fn_cargar_hoja_ruta_dia
// Descripcion : Muestra la hoja de ruta activa de un gestor
//******************************************************************************
Procedure TfGestInt.fn_cargar_hoja_ruta_dia();
Var
   xsSQL : String;
   xlNivelPermitido : Boolean;
   sTipoGestion : String;
Begin
   xlNivelPermitido := (StrToInt(Copy(DM1.NivelUsuario(DM1.wUsuario), 2, 1)) < 3);

   dtgHojaRutaDia.Enabled := false;
   gbBuscarHojaRuta.Enabled := false;
   btnNuevaHojaRuta.Enabled := false;
   btnImpHojaRuta.Enabled := false;
   btnExpHojaRuta.Enabled := false;
   btnCerrarHojaRuta.Enabled := false;
   btnHojaRutaDiaAddPersonal.Enabled := false;
   btnHojaRutaDiaAddOtros.Enabled := false;
   btnHojaRutaDiaDel.Enabled := false;
   btnContactabilidad.Enabled := false;

   xsSQL := 'SELECT IDCAB, PERIODO, FECHA, GESTOR, TIPO_GESTOR, ESTADO, '
      + '           FEC_CREA, USU_CREA, FEC_IMP, USU_IMP, FEC_CIE, USU_CIE, TIPO_GESTION '
      + '      FROM (SELECT IDCAB, PERIODO, FECHA, GESTOR, TIPO_GESTOR, ESTADO, '
      + '                   FEC_CREA, USU_CREA, FEC_IMP, USU_IMP, FEC_CIE, USU_CIE, TIPO_GESTION '
      + '              FROM GES_COB_HOJ_RUT_CAB '
      + '             WHERE FECHA = TRUNC(SYSDATE) '
      + '               AND GESTOR = ' + QuotedStr(xUsuarioGestor)
      + '               AND ESTADO <> ''CERRADA'' '
      + '             ORDER BY IDCAB DESC) '
      + '       WHERE ROWNUM = 1 ';
   DM1.cdsQry12.Close;
   DM1.cdsQry12.DataRequest(xsSQL);
   DM1.cdsQry12.Open;

   If DM1.cdsQry12.RecordCount > 0 Then
   Begin
      btnCerrarHojaRuta.Enabled := xlNivelPermitido;
      dtgHojaRutaDia.Enabled := True; // xlNivelPermitido;
      If DM1.cdsQry12.FieldByName('ESTADO').AsString = 'NUEVA' Then
      Begin
         btnHojaRutaDiaAddPersonal.Enabled := xlNivelPermitido;
         btnHojaRutaDiaAddOtros.Enabled := xlNivelPermitido;
      End;
      // INICIO HPC_201702_GESCOB : Mejora del del reporte de direcciones y teléfonos centrales de riesgo
      //                     y reglas para la impresión de la dirección de Hoja de ruta diaria. 
      xsSQL := 'SELECT IDCAB, ASOID, ESTADO, USU_ASIGNA, ASOCODMOD, '
         + '           ASODIR, ASOAPENOM, DISTRITO, '
         + '           FEC_CREA, USU_CREA, FEC_GES, USU_GES, USU_ORI, ROWNUM NRO, '
         + '           ' + QuotedStr(DM1.cdsQry12.fieldbyname('GESTOR').AsString) + ' GESTOR, '
         + '           ' + QuotedStr(DM1.cdsQry12.fieldbyname('PERIODO').AsString) + ' PERIODO, '
         + '           CASE NVL(ESTCOM,''N'') '
         + '                WHEN ''I'' THEN ''I : COMPROMISOS INCUMPLIDOS'' '
         + '                WHEN ''N'' THEN ''N : NO TIENEN COMPROMISOS'' '
         + '                WHEN ''V'' THEN ''V : COMPROMISOS VIGENTES'' '
         + '                ELSE ESTCOM '
         + '            END ESTCOM, '
         + '           VALIDADO'
         + '      FROM (SELECT A.IDCAB, A.ASOID, A.ESTADO, A.USU_ASIGNA, A.ASOCODMOD, '
         + '                   B.ASODIR , A.ASOAPENOM , B.DISTRITO, '
         + '                   A.FEC_CREA, A.USU_CREA, A.FEC_GES, A.USU_GES, A.USU_ORI, NVL(A.ESTCOM,''N'') ESTCOM, B.VALIDADO '
         + '              FROM GES_COB_HOJ_RUT_DET A, '
         + '                   (SELECT A.ASOID '
         + '                          ,CASE WHEN B.ASODIR IS NOT NULL THEN ''S'' ELSE ''N'' END VALIDADO '
         + '                          ,NVL(B.ASODIR, A.ASODIR) ASODIR '
         + '                          ,D.ZIPDES DISTRITO '
         + '                      FROM (SELECT A1.ASOID, B1.ASODIR, B1.ZIPID FROM GES_COB_HOJ_RUT_DET A1, APO201 B1 WHERE A1.IDCAB = ' + DM1.cdsQry12.fieldbyname('IDCAB').AsString + ' AND A1.ASOID = B1.ASOID) A '
         + '                          ,(SELECT A1.ASOID, B1.ASODIR, B1.UBIGEO, B1.HREG, B1.MODREG, DENSE_RANK() OVER(PARTITION BY B1.ASOID ORDER BY NVL(B1.MODREG, B1.HREG) DESC) DNRK FROM GES_COB_HOJ_RUT_DET A1, GES_DOM_ASO B1 WHERE A1.IDCAB = ' + DM1.cdsQry12.fieldbyname('IDCAB').AsString + ' AND A1.ASOID = B1.ASOID(+) AND ''S'' = NVL(B1.ACTIVO(+), ''N'')) B '
         + '                          ,TGE122 D '
         + '                     WHERE A.ASOID = B.ASOID(+) AND 1 =  B.DNRK(+) '
         + '                       AND NVL(B.UBIGEO, A.ZIPID) =  D.DPTOID||D.CIUDID||D.ZIPID) B '
         + '             WHERE A.ASOID = B.ASOID(+) '
         + '               AND A.IDCAB = ' + DM1.cdsQry12.fieldbyname('IDCAB').AsString
         + '             ORDER BY NVL(A.ESTCOM,''N'') ASC, A.ASOAPENOM ASC) ';
         // FIN HPC_201702_GESCOB : Mejora del del reporte de direcciones y teléfonos centrales de riesgo
         //                     y reglas para la impresión de la dirección de Hoja de ruta diaria. 
   End
   Else
   Begin
      If EdtUserNom.Text <> '' Then
         btnNuevaHojaRuta.Enabled := xlNivelPermitido;

      xsSQL := 'SELECT IDCAB, ASOID, ESTADO, USU_ASIGNA, ASOCODMOD, '
         + '           ASODIR, ASOAPENOM, DISTRITO, '
         + '           FEC_CREA, USU_CREA, FEC_GES, USU_GES, USU_ORI, ROWNUM NRO, '
         + '           ' + QuotedStr(DM1.cdsQry12.fieldbyname('GESTOR').AsString) + ' GESTOR, '
         + '           ' + QuotedStr(DM1.cdsQry12.fieldbyname('PERIODO').AsString) + ' PERIODO, '
         + '           ''N : NO TIENEN COMPROMISOS'' ESTCOM, '
         + '           ''N'' VALIDADO '
         + '      FROM GES_COB_HOJ_RUT_DET '
         + '     WHERE 1 = 2 ';
   End;

   DM1.cdsQry13.Close;
   DM1.cdsQry13.DataRequest(xsSQL);
   DM1.cdsQry13.Open;

   if DM1.cdsQry12.FieldByname('TIPO_GESTION').AsString='DOM' then sTipoGestion:='GESTION DOMICILIARIA';
   if DM1.cdsQry12.FieldByname('TIPO_GESTION').AsString='TEL' then sTipoGestion:='GESTION TELEFONICA';
   if DM1.cdsQry12.FieldByname('TIPO_GESTION').AsString=''    then sTipoGestion:='GESTION SIN DEFINIR';

   dtgHojaRutaDia.DataSource := DM1.dsQry13;
   dtgHojaRutaDia.Selected.Clear;
   dtgHojaRutaDia.Selected.Add('NRO'#9'5'#9'NRO'#9'F'#9''+sTipoGestion+'');
   dtgHojaRutaDia.Selected.Add('ESTADO'#9'17'#9'ESTADO'#9'F'#9''+sTipoGestion+'');
   dtgHojaRutaDia.Selected.Add('ASOAPENOM'#9'35'#9'ASOCIADO'#9'F'#9''+sTipoGestion+'');
   dtgHojaRutaDia.Selected.Add('ASOCODMOD'#9'10'#9'Código~Modular'#9'F'#9''+sTipoGestion+'');
   dtgHojaRutaDia.Selected.Add('DISTRITO'#9'20'#9'DISTRITO'#9'F'#9''+sTipoGestion+'');
   dtgHojaRutaDia.Selected.Add('VALIDADO'#9'5'#9'VALIDADO'#9'F'#9''+sTipoGestion+'');
   dtgHojaRutaDia.Selected.Add('ASODIR'#9'35'#9'DIRECCION'#9'F'#9''+sTipoGestion+'');
   dtgHojaRutaDia.Selected.Add('ESTCOM'#9'5'#9'ESTADO_COMPROMISO'#9'F'#9''+sTipoGestion+'');
   dtgHojaRutaDia.ApplySelected;

   If DM1.cdsQry13.RecordCount > 0 Then
   Begin
      If DM1.cdsQry12.FieldByName('ESTADO').AsString = 'NUEVA' Then
         btnHojaRutaDiaDel.Enabled := xlNivelPermitido;
      gbBuscarHojaRuta.Enabled := True; // xlNivelPermitido;
      btnImpHojaRuta.Enabled := True; // xlNivelPermitido;
      btnExpHojaRuta.Enabled := True; // xlNivelPermitido;
      btnContactabilidad.Enabled := true;

      // domicilios validados
      xsSQL := 'SELECT SUM(CANT_VALIDADOS)   CANT_VALIDADOS '
             + '      ,SUM(CANT_POR_VALIDAR) CANT_POR_VALIDAR '
             + '  FROM (SELECT MAX(CASE WHEN B1.ASOID IS NOT NULL THEN 1 ELSE 0 END) CANT_VALIDADOS '
             + '              ,MAX(CASE WHEN B1.ASOID IS NULL THEN 1 ELSE 0 END) CANT_POR_VALIDAR '
             + '          FROM GES_COB_HOJ_RUT_DET A1 '
             + '              ,GES_DOM_ASO         B1 '
             + '         WHERE A1.IDCAB = ' + DM1.cdsQry12.fieldbyname('IDCAB').AsString
             + '           AND A1.ASOID = B1.ASOID(+) '
             + '           AND ''S'' = NVL(B1.ACTIVO(+), ''N'') '
             + '         GROUP BY A1.ASOID '
             + '        ) ';
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest(xsSQL);
      DM1.cdsQry.Open;
      lblCantDomValidados.Caption  := FormatFloat('###,##0', DM1.cdsQry.fieldbyname('CANT_VALIDADOS').value);
      lblCantDomPorValidar.Caption := FormatFloat('###,##0', DM1.cdsQry.fieldbyname('CANT_POR_VALIDAR').value);
   End
   else
   begin
      lblCantDomValidados.Caption  := '0';
      lblCantDomPorValidar.Caption := '0';
   end;
   End;
// FIN : SPP_201402_GESCOB

//******************************************************************************
// Nombre : edtHojaRutaDiaBuscarChange
// Descripcion : Ubicar asociado dentro de la hoja de ruta
//******************************************************************************

Procedure TfGestInt.edtHojaRutaDiaBuscarChange(Sender : TObject);
Begin
   If Length(Trim(edtHojaRutaDiaBuscar.Text)) > 0 Then
      DM1.cdsQry13.Locate('ASOAPENOM', VarArrayOf([TRIM(edtHojaRutaDiaBuscar.Text)]), [loPartialKey]);
End;

//******************************************************************************
// Nombre : edtHojaRutaDiaBuscarKeyPress
// Descripcion : muestra u oculta el control para la busqueda de asociados
//******************************************************************************

Procedure TfGestInt.edtHojaRutaDiaBuscarKeyPress(Sender : TObject;
   Var Key : Char);
Begin
   If Key = #13 Then
   Begin
      If Length(Trim(edtHojaRutaDiaBuscar.Text)) > 0 Then
      Begin
         dtgHojaRutaDia.SetFocus;
         edtHojaRutaDiaBuscar.Text := '';
      End
      Else
      Begin
         MessageDlg('Debe Digitar El Nombre Del Asociado, Para Iniciar La Busqueda', mtError, [mbOk], 0);
         dtgHojaRutaDia.SetFocus;
      End;
   End;
End;

//******************************************************************************
// Nombre : btnNuevaHojaRutaClick
// Descripcion : Graba una nueva Hoja de Ruta
//******************************************************************************

Procedure TfGestInt.btnNuevaHojaRutaClick(Sender : TObject);
Var
   xsSQL : String;
   xTipoGes : String;
Begin
   if rgTipo.ItemIndex=0 then xTipoGes:='DOM' else xTipoGes:='TEL';

   if MessageDlg('Se Creara una Nueva Hoja de Ruta ( '+xTipoGes+' ). ¿ Esta Seguro ? ', mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
   begin
      xsSQL := 'BEGIN SP_GES_COB_HOJA_RUTA_ADD_CAB(' + QuotedStr(xPeriodoCartera) + ', ' + QuotedStr(xUsuarioGestor) + ', ''INTERNO'', '
                                                  + QuotedStr(DM1.wUsuario) + ', ' + QuotedStr(xTipoGes) + ' ); END;';
      DM1.DCOM1.AppServer.EjecutaSql(xsSQL);
      fn_cargar_hoja_ruta_dia();
      MessageDlg('Se ha Creado una Nueva Hoja de Ruta!', mtInformation, [mbOk], 0);
   end;
End;

//******************************************************************************
// Nombre : btnCerrarHojaRutaClick
// Descripcion : Cerrar una hoja de Ruta
//******************************************************************************

Procedure TfGestInt.btnCerrarHojaRutaClick(Sender : TObject);
Var
   xsSQL : String;
   xsObservacion : String;
   xxFrm : TFObservacion;
   (***************************************************************************)

   Procedure fn_cerrar_hoja_ruta();
   Begin
      xsSQL := 'UPDATE GES_COB_HOJ_RUT_CAB '
         + '       SET FEC_CIE = SYSDATE  '
         + '          ,USU_CIE = ' + QuotedStr(DM1.wUsuario)
         + '          ,ESTADO = ''CERRADA'' '
         + '          ,OBSERVACION =  SUBSTR(' + QuotedStr(xsObservacion) + ',1,100) '
         + '     WHERE IDCAB = ' + DM1.cdsQry12.fieldByName('IDCAB').AsString;
      DM1.DCOM1.AppServer.EjecutaSql(xsSQL);
      fn_cargar_hoja_ruta_dia();
      MessageDlg('Se ha Cerrado la Hoja de Ruta!', mtInformation, [mbOk], 0);
   End;
   (***************************************************************************)
Begin
   xsObservacion := '';
   If DM1.cdsQry13.Locate('ESTADO', VarArrayof(['NO GESTIONADO']), []) Then
   Begin
      xxFrm := TFObservacion.Create(self);
      Try
         xxFrm.lblMsg.Caption := 'Se encontraron Asociados "Sin Gestionar"'#13#10'Ingrese una observación al respecto!';
         If xxFrm.ShowModal = mrOk Then
         Begin
            xsObservacion := xxFrm.memObservacion.Text;
            fn_cerrar_hoja_ruta();
         End;
      Finally
         xxFrm.Free;
      End;
   End
   Else
   Begin
      If MessageDlg('Confirma que desea CERRAR la Hoja de Ruta ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
         fn_cerrar_hoja_ruta();
   End;
End;

//******************************************************************************
// Nombre : fn_confirma_activar_hoja_ruta
// Descripcion : activa una hoja de ruta cuando es impresa o exportada a excel
//******************************************************************************

// INICIO : SPP_201402_GESCOB
Function TfGestInt.fn_confirma_activar_hoja_ruta() : boolean;
Var
   xlResult : boolean;
   xsSQL : String;
   procedure fn_insertar_incumplimientos();
   begin
      // INICIO SPP_201403_GESCOB
      xsSQL := 'INSERT INTO GES_COB_HOJ_RUT_DET (IDCAB, ASOID, ESTADO, '
             + '                                 USU_ASIGNA, ASOCODMOD, ASODIR, ASOAPENOM, '
             + '                                 DISTRITO, FEC_CREA, USU_CREA, FREG, UREG, USU_ORI, '
             + '                                 ESTCOM, MONCOM, FECCOM, FECCON) '
             + ' SELECT '+DM1.cdsQry12.fieldByName('IDCAB').AsString+' IDCAB, ASOID, ''NO GESTIONADO'' ESTADO, '
             + '        USUASIG USU_ASIGNA, ASOCODMOD, ASODIR, ASOAPENOM, '
             + '        ZIPDES DISTRITO, SYSDATE FEC_CREA, '+QuotedStr(DM1.wUsuario)+' USU_CREA, '
             + '        SYSDATE FREG, '+QuotedStr(DM1.wUsuario)+' UREG, '
             + '        USUARIO USU_ORI, '
             + '        ''I'' ESTCOM, MONCOM, FEC_COMPROMISO FECCOM, FEC_CONTACTO FECCON '
             + '   FROM ( SELECT DISTINCT ASOID, MONCOM, FEC_COMPROMISO, FEC_CONTACTO, ASOAPENOM, ASOCODMOD, ASODIR, ZIPDES, USUARIO, USUASIG '
             + '            FROM (SELECT A.ASOID, A.MONCOM, A.FEC_COMPROMISO, A.FEC_CONTACTO, B.ASOAPENOM, '
             + '                         C.ASOCODMOD, C.ASODIR, D.ZIPDES, B.USUARIO, B.USUASIG, '
             + '                         DENSE_RANK() OVER(PARTITION BY A.ASOID ORDER BY A.FEC_COMPROMISO DESC, A.FREG DESC) DNRK '
             + '                    FROM GES_COB_COMPROMISO A, '+xTabla+' B '
             + '                         ,APO201 C, TGE122 D '
             + '                   WHERE A.COMPROMISO = ''S'' '
             + '                     AND A.PERIODO = ' + QuotedStr(xsPeriodoGestionActual)
             + '                     AND A.ASOID = B.ASOID '
             + '                     AND B.PERIODO = '+ QuotedStr(xsPeriodoGestionActual)
             + '                     AND B.USUARIO = ' + QuotedStr(xUsuarioGestor)
             + '                     AND B.ESTGES <> ''03'' '
           //+ '                     AND TRUNC(A.FEC_COMPROMISO) <= TRUNC(SYSDATE) - 3 ' 
             + '                     AND A.ASOID = C.ASOID '
             + '                     AND B.ZIPID = D.DPTOID(+)||D.CIUDID(+)||D.ZIPID(+) '
             + '                 ) '
             + '           WHERE DNRK = 1 '
             + '             AND TRUNC(FEC_COMPROMISO) <= TRUNC(SYSDATE) - 3 '
             + '        ) A '
             + '  WHERE NOT EXISTS (SELECT ASOID '
             + '                      FROM GES_COB_HOJ_RUT_DET '
             + '                     WHERE IDCAB = ' + DM1.cdsQry12.fieldByName('IDCAB').AsString
             + '                       AND ASOID = A.ASOID) '
             + '    AND (SELECT NVL(SUM(CREMTO - CREMTOCOB), 0) SALDO_VENCIDO '
             + '           FROM CRE302 B '
             + '          WHERE CREFVEN < SYSDATE '
             + '            AND CREESTID IN (''02'', ''11'', ''27'', ''14'') '
             + '            AND B.ASOID = A.ASOID) > 0 '
             + '    AND (SELECT CASE WHEN COUNT(ASOID) > 0 THEN ''SI'' ELSE ''NO'' END PAGO '
             + '           FROM CRE310 C '
             + '          WHERE FREG BETWEEN A.FEC_CONTACTO AND SYSDATE '
             + '            AND CREESTID NOT IN (''23'', ''04'', ''13'', ''99'') '
             + '            AND FORPAGID IN (''02'', ''03'') '
             + '            AND C.ASOID = A.ASOID) = ''NO'' ';
      // FIN SPP_201403_GESCOB
      DM1.DCOM1.AppServer.EjecutaSql(xsSQL);
   end;
Begin
   xlResult := false;
   If (StrToInt(Copy(DM1.NivelUsuario(DM1.wUsuario), 2, 1)) = 3) Then
   Begin
      fn_cargar_hoja_ruta_dia();
      xlResult := True;
   End
   Else
   Begin
      If DM1.cdsQry12.fieldByName('ESTADO').AsString = 'NUEVA' Then
      Begin
         If MessageDlg('Al Imprimir o Exportar la Hoja de Ruta, solo podra ingresar las Gestiones hasta el momento que decida Cerrar la Hoja de Ruta.' + chr(13) + 'Confirma que desea Imprimir/Exportar la Hoja de Ruta?', mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
         Begin
            fn_insertar_incumplimientos();
            xsSQL := 'UPDATE GES_COB_HOJ_RUT_CAB '
               + '       SET FEC_IMP = SYSDATE  '
               + '          ,USU_IMP = ' + QuotedStr(DM1.wUsuario)
               + '          ,ESTADO = ''ACTIVA'' '
               + '     WHERE IDCAB = ' + DM1.cdsQry12.fieldByName('IDCAB').AsString;
            DM1.DCOM1.AppServer.EjecutaSql(xsSQL);
            fn_cargar_hoja_ruta_dia();
            xlResult := True;
         End;
      End
      Else
         xlResult := True;
   End;
   result := xlResult;
End;

//******************************************************************************
// Nombre : btnImpHojaRutaClick
// Descripcion : Imprimir la hoja de Ruta
//******************************************************************************
Procedure TfGestInt.btnImpHojaRutaClick(Sender : TObject);
var xsSQL: string;
    procedure fn_cargar_detalles_hoja_ruta();
    begin
      (* TELEFONOS *)
      xsSQL := 'SELECT A.ASOID, NVL(B.TELEFONOS,NVL(C.TELEFONOS,D.TELEFONOS)) TELEFONOS '
             + '  FROM GES_COB_HOJ_RUT_DET A '
             + '      ,(SELECT E.ASOID, RTRIM(XMLAGG(XMLELEMENT(E, E.NROTELF || '' / '') ORDER BY E.NROTELF).EXTRACT(''//text()''), '' / '') TELEFONOS '
             + '         FROM (SELECT ASOID, NROTELF, DENSE_RANK() OVER(PARTITION BY ASOID ORDER BY NVL(MODREG, HREG) DESC) DNRK '
             + '                 FROM GES_TEL_ASO A '
             + '                WHERE EXISTS (SELECT A1.ASOID FROM GES_COB_HOJ_RUT_DET A1 WHERE A1.IDCAB = ' + DM1.cdsQry12.fieldbyname('IDCAB').AsString + ' AND A.ASOID = A1.ASOID) '
             + '                  AND NVL(ACTIVO, ''N'') = ''S'') E '
             + '        WHERE E.DNRK <= 3 '
             + '        GROUP BY E.ASOID) B '
             + '      ,(SELECT E.ASOID, RTRIM(XMLAGG(XMLELEMENT(E, E.NROTELF || '' / '') ORDER BY E.NROTELF).EXTRACT(''//text()''), '' / '') TELEFONOS '
             + '          FROM (SELECT ASOID, NROTELF, DENSE_RANK() OVER(PARTITION BY ASOID ORDER BY NVL(MODREG, HREG) DESC) DNRK '
             + '                  FROM GES_TEL_ASO A '
             + '                 WHERE EXISTS (SELECT A1.ASOID FROM GES_COB_HOJ_RUT_DET A1 WHERE A1.IDCAB = ' + DM1.cdsQry12.fieldbyname('IDCAB').AsString + ' AND A.ASOID = A1.ASOID) '
             + '                   AND NVL(ACTIVO, ''N'') = ''N'') E '
             + '         WHERE E.DNRK <= 3 '
             + '         GROUP BY E.ASOID) C '
             + '      ,(SELECT ASOID, ASOTELF1 || CASE WHEN TRIM(ASOTELF2) <> '''' AND ASOTELF2 IS NOT NULL THEN '' / '' END TELEFONOS '
             + '          FROM APO201 A '
             + '         WHERE EXISTS (SELECT A1.ASOID FROM GES_COB_HOJ_RUT_DET A1 WHERE A1.IDCAB = ' + DM1.cdsQry12.fieldbyname('IDCAB').AsString + ' AND A.ASOID = A1.ASOID) '
             + '           AND (ASOTELF1 IS NOT NULL OR ASOTELF2 IS NOT NULL)) D '
             + ' WHERE A.IDCAB = ' + DM1.cdsQry12.fieldbyname('IDCAB').AsString
             + '   AND A.ASOID = B.ASOID(+) '
             + '   AND A.ASOID = C.ASOID(+) '
             + '   AND A.ASOID = D.ASOID(+) ';
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest(xsSQL);
      DM1.cdsQry.Open;
      cdsHojRutDetTelf := TwwClientDataSet.Create(SELF);
      dsHojRutDetTelf := TwwDataSource.Create(SELF);
      dsHojRutDetTelf.DataSet := cdsHojRutDetTelf;
      cdsHojRutDetTelf.Data := dm1.cdsQry.Data;

      (* SALDOS *)
       xsSQL := 'SELECT ASOID'
              + '      ,MAX(SALVEN_MTO) SALVEN_MTO '
              + '      ,MAX(SALVEN_CANT_CUOTAS) SALVEN_CANT_CUOTAS '
              + '      ,MAX(SALDIF_MTO) SALDIF_MTO '
              + '      ,MAX(SALDIF_CANT_CUOTAS) SALDIF_CANT_CUOTAS '
              + '      ,MAX(PACTADAS) PACTADAS '
              + '      ,MAX(VALOR_CUOTA) VALOR_CUOTA '
              + '  FROM (SELECT ASOID'
              + '              ,NVL(SUM(CASE WHEN CREFVEN < SYSDATE THEN NVL(CREMTO, 0) - NVL(CREMTOCOB, 0) ELSE 0 END), 0) SALVEN_MTO '
              + '              ,NVL(SUM(CASE WHEN CREFVEN < SYSDATE THEN 1 ELSE 0 END), 0) SALVEN_CANT_CUOTAS '
              + '              ,NVL(SUM(CASE WHEN CREFVEN <> CREFVENINI THEN NVL(CREMTO, 0) - NVL(CREMTOCOB, 0) ELSE 0 END), 0) SALDIF_MTO '
              + '              ,NVL(SUM(CASE WHEN CREFVEN <> CREFVENINI THEN 1 ELSE 0 END), 0) SALDIF_CANT_CUOTAS '
              + '              ,0 PACTADAS '
              + '              ,0 VALOR_CUOTA '
              + '          FROM CRE302 B '
              + '         WHERE EXISTS (SELECT A1.ASOID FROM GES_COB_HOJ_RUT_DET A1 WHERE A1.IDCAB = ' + DM1.cdsQry12.fieldbyname('IDCAB').AsString + ' AND A1.ASOID = B.ASOID) '
              + '           AND CREESTID IN (''02'', ''11'', ''27'', ''14'') '
              + '         GROUP BY ASOID '
              + '        UNION ALL '
              + '        SELECT ASOID'
              + '              ,0 SALVEN_MTO '
              + '              ,0 SALVEN_CANT_CUOTAS '
              + '              ,0 SALDIF_MTO '
              + '              ,0 SALDIF_CANT_CUOTAS '
              + '              ,NVL(SUM(CRENUMCUO), 0) PACTADAS '
              + '              ,NVL(SUM(CRECUOTA), 0) VALOR_CUOTA '
              + '          FROM CRE301 B '
              + '         WHERE EXISTS (SELECT A1.ASOID FROM GES_COB_HOJ_RUT_DET A1 WHERE A1.IDCAB = ' + DM1.cdsQry12.fieldbyname('IDCAB').AsString + ' AND A1.ASOID = B.ASOID) '
              + '           AND CREESTID = ''02'' '
              + '         GROUP BY ASOID ) '
              + ' GROUP BY ASOID';
       DM1.cdsQry.Close;
       DM1.cdsQry.DataRequest(xsSQL);
       DM1.cdsQry.Open;
       cdsHojRutDetSaldos := TwwClientDataSet.Create(SELF);
       dsHojRutDetSaldos := TwwDataSource.Create(SELF);
       dsHojRutDetSaldos.DataSet := cdsHojRutDetSaldos;
       cdsHojRutDetSaldos.Data := dm1.cdsQry.Data;

      (* DESCARGOS *)
       xsSQL := 'SELECT ASOID, PERIODO, ''PLA ''|| TRIM(TO_CHAR(TO_DATE(PERIODO, ''YYYYMM''), ''MON'', ''NLS_DATE_LANGUAGE = ''''SPANISH'''''')) ||'' ''|| SUBSTR(PERIODO,1,4) DESCRIPCION, MONTO '
              + '  FROM (SELECT ASOID, PERIODO, MONTO, DENSE_RANK() OVER(PARTITION BY ASOID ORDER BY ASOID ASC, PERIODO DESC) DNRK '
              + '            FROM (SELECT ASOID, TO_CHAR(FREG, ''YYYYMM'') PERIODO, NVL(SUM(CREMTOCOB), 0) MONTO '
              + '                    FROM CRE310 B '
              + '                   WHERE EXISTS (SELECT A1.ASOID FROM GES_COB_HOJ_RUT_DET A1 WHERE A1.IDCAB = ' + DM1.cdsQry12.fieldbyname('IDCAB').AsString + ' AND A1.ASOID = B.ASOID) '
              + '                     AND CREESTID NOT IN (''04'', ''13'', ''99'') '
              + '                     AND FORPAGID IN (''01'', ''09'', ''22'') '
              + '                   GROUP BY ASOID, TO_CHAR(FREG, ''YYYYMM'') '
              + '                   ORDER BY ASOID, TO_CHAR(FREG, ''YYYYMM'') DESC)) '
              + ' WHERE DNRK <= 3 '
              + ' ORDER BY ASOID ASC, PERIODO DESC ';
       DM1.cdsQry.Close;
       DM1.cdsQry.DataRequest(xsSQL);
       DM1.cdsQry.Open;
       cdsHojRutDetDescargos := TwwClientDataSet.Create(SELF);
       dsHojRutDetDescargos := TwwDataSource.Create(SELF);
       dsHojRutDetDescargos.DataSet := cdsHojRutDetDescargos;
       cdsHojRutDetDescargos.Data := dm1.cdsQry.Data;
       cdsHojRutDetDescargos.AddIndex('IX_NOMBRE', 'PERIODO', [ixDescending], 'PERIODO');
       cdsHojRutDetDescargos.IndexName := 'IX_NOMBRE';

       (* PAGOS *)
       xsSQL := 'SELECT ASOID, FORPAGABR || '' '' || TO_CHAR(FREG, ''DD/MM/YYYY'') DESCRIPCION, CREMTOCOB MONTO, TO_CHAR(FREG,''YYYYMMDD'') ORDEN '
              + '  FROM (SELECT ASOID, FORPAGABR, FREG, CREMTOCOB, DENSE_RANK() OVER(PARTITION BY ASOID ORDER BY ASOID ASC, FREG DESC) DNRK '
              + '          FROM (SELECT ASOID, FORPAGABR, FREG, NVL(SUM(NVL(CREMTOCOB, 0)), 0) CREMTOCOB '
              + '                  FROM CRE310 B '
              + '                 WHERE EXISTS (SELECT A1.ASOID FROM GES_COB_HOJ_RUT_DET A1 WHERE A1.IDCAB = ' + DM1.cdsQry12.fieldbyname('IDCAB').AsString + ' AND A1.ASOID = B.ASOID ) '
              + '                   AND CREESTID NOT IN (''23'', ''04'', ''13'', ''99'') '
              + '                   AND FORPAGID IN (''02'', ''03'') '
              + '                 GROUP BY ASOID, FORPAGABR, FREG '
              + '                 ORDER BY ASOID, FREG DESC)) '
              + ' WHERE DNRK <= 3 '
              + ' ORDER BY ASOID, TO_CHAR(FREG,''YYYYMMDD'') DESC';
       DM1.cdsQry.Close;
       DM1.cdsQry.DataRequest(xsSQL);
       DM1.cdsQry.Open;
       cdsHojRutDetPagos := TwwClientDataSet.Create(SELF);
       dsHojRutDetPagos := TwwDataSource.Create(SELF);
       dsHojRutDetPagos.DataSet := cdsHojRutDetPagos;
       cdsHojRutDetPagos.Data := dm1.cdsQry.Data;
       cdsHojRutDetPagos.AddIndex('IX_NOMBRE', 'ORDEN', [ixDescending], 'ORDEN');
       cdsHojRutDetPagos.IndexName := 'IX_NOMBRE';

       (* GESTIONES*)

       xsSQL := 'SELECT ASOID, NUMERO, TIPO, RESULTADO, GESTIONADO, FECHA_HORA, DNRK '
              + '  FROM (SELECT ASOID, NUMERO, TIPO, RESULTADO, GESTIONADO, FECHA_HORA, DENSE_RANK() OVER(PARTITION BY ASOID ORDER BY ASOID, FECHA DESC, ORDEN DESC) DNRK '
              + '          FROM (SELECT GES_COB_SEG.NROGEST NUMERO, GES_REF_SEG.DESCRIPCION TIPO, GES_REF_SEG_DET.DESCRIPCION RESULTADO '
              + '                      ,GES_COB_SEG.USUARIO GESTIONADO, TO_CHAR(GES_COB_SEG.FECHA, ''DD/MM/YYYY'') || '' '' || GES_COB_SEG.HORA FECHA_HORA '
              + '                      ,GES_COB_SEG.FECHA, GES_COB_SEG.ORDEN, GES_COB_SEG.ASOID '
              + '                  FROM GES_COB_SEG, GES_REF_SEG, GES_REF_SEG_DET '
              + '                 WHERE GES_COB_SEG.IDGESTION = GES_REF_SEG.IDGTN '
              + '                   AND GES_COB_SEG.IDGESTION = GES_REF_SEG_DET.IDGTN '
              + '                   AND GES_COB_SEG.IDGESTIONDET = GES_REF_SEG_DET.IDGTNDET '
              + '                   AND EXISTS (SELECT A1.ASOID FROM GES_COB_HOJ_RUT_DET A1 WHERE A1.IDCAB = ' + DM1.cdsQry12.fieldbyname('IDCAB').AsString + ' AND A1.ASOID = GES_COB_SEG.ASOID) '
              + '                   AND NOT (GES_COB_SEG.IDGESTIONDET = ''312'' AND GES_COB_SEG.IDCARTA IS NOT NULL))) '
              + ' WHERE DNRK <= 4 '
              + ' ORDER BY ASOID, DNRK ';
       DM1.cdsQry.Close;
       DM1.cdsQry.DataRequest(xsSQL);
       DM1.cdsQry.Open;
       cdsHojRutDetGestiones := TwwClientDataSet.Create(SELF);
       dsHojRutDetGestiones := TwwDataSource.Create(SELF);
       dsHojRutDetGestiones.DataSet := cdsHojRutDetGestiones;
       cdsHojRutDetGestiones.Data := dm1.cdsQry.Data;
       cdsHojRutDetGestiones.AddIndex('IX_NOMBRE', 'DNRK', [ixDescending], 'DNRK');
       cdsHojRutDetGestiones.IndexName := 'IX_NOMBRE';
    end;
Begin
   If fn_confirma_activar_hoja_ruta() Then
   Begin
      (* HOJA DE RUTA *)
      Screen.Cursor := crHourGlass;
      xsSQL := 'SELECT ''I : COMPROMISOS INCUMPLIDOS ('' || SUM(COMINC)||'')'' COMINC '
             + '      ,''N : NO TIENEN COMPROMISOS ('' || SUM(NOCOM)||'')'' NOCOM '
             + '      ,''V : COMPROMISOS VIGENTES ('' || SUM(COMVIG)||'')'' COMVIG '
             + '  FROM (SELECT SUM(CASE NVL(ESTCOM, ''N'') WHEN ''I'' THEN 1 ELSE 0 END) COMINC '
             + '              ,SUM(CASE NVL(ESTCOM, ''N'') WHEN ''N'' THEN 1 ELSE 0 END) NOCOM '
             + '              ,SUM(CASE NVL(ESTCOM, ''N'') WHEN ''V'' THEN 1 ELSE 0 END) COMVIG '
             + '          FROM GES_COB_HOJ_RUT_DET '
             + '         WHERE IDCAB = ' + DM1.cdsQry12.fieldbyname('IDCAB').AsString
             + '         GROUP BY NVL(ESTCOM, ''N'') '
             + '       )';
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest(xsSQL);
      DM1.cdsQry.Open;

      pplblComInc.Caption := DM1.cdsQry.fieldbyname('COMINC').asstring;//'I : COMPROMISO INCUMPLIDO';
      pplblNoCom.Caption := DM1.cdsQry.fieldbyname('NOCOM').asstring;//'N : NO TIENE COMPROMISO';
      pplblComVig.Caption := DM1.cdsQry.fieldbyname('COMVIG').asstring;//'V : COMPROMISO VIGENTE';

      pplblValidado.Caption := 'S : VALIDADO (' + lblCantDomValidados.Caption + ')';
      pplblPorValidar.Caption := 'N : POR VALIDAR (' + lblCantDomPorValidar.Caption + ')';

      ppDBHojaRuta.DataSource := DM1.dsQry13;
      pplblUsuario.Text := DM1.wUsuario;
      pplblGestor.Text := xUsuarioGestor;
      pplblSupervisor.Text := DM1.cdsQry13.fieldbyname('USU_GES').asstring;
      Screen.Cursor := crDefault;
      pprHojaRuta.Print;

      (* DETALLE DE HOJA DE RUTA *)
      Screen.Cursor := crHourGlass;
      xsSQL := 'SELECT HOJA_RUTA.ASOID '
             + '      ,CASE NVL(HOJA_RUTA.ESTCOM,''N'') '
             + '            WHEN ''I'' THEN ''I : COMPROMISOS INCUMPLIDOS'' '
             + '            WHEN ''N'' THEN ''N : NO TIENEN COMPROMISOS'' '
             + '            WHEN ''V'' THEN ''V : COMPROMISOS VIGENTES'' '
             + '            ELSE HOJA_RUTA.ESTCOM '
             + '        END COMPROMISO '
             + '      ,HOJA_RUTA.FECCOM FECHA_COMPROMISO '
             + '      ,HOJA_RUTA.FECCON FECHA_GESTION '
             + '      ,HOJA_RUTA.MONCOM MONTO_COMPROMISO '
             + '      ,CANT_CRE.CANT_CRE_PEN_PAGO '
             + '      ,PADRON.SITUACION_PADRON '
             + '      ,ASOCIADO.ASODNI DNI '
             + '      ,HOJA_RUTA.ASOAPENOM APELLIDOS_NOMBRES '
             + '      ,ASOCIADO.ASOTIPID TIPO_ASOCIADO '
             + '      ,ASOCIADO.ASODIR DIRECCION_DOM '
             + '      ,DPTO_DOM.DPTODES DPTO_DOM '
             + '      ,PROV_DOM.CIUDDES PROV_DOM '
             + '      ,DIST_DOM.ZIPDES DIST_DOM '
             + '      ,COLEGIO.NOMCENEDU ||  CASE WHEN NIVEDU_DES IS NOT NULL THEN '' ('' || NIVEL_COL.NIVEDU_DES || '')'' END NOMCENEDU '
             + '      ,DPTO_COL.DPTODES DPTO_COL '
             + '      ,PROV_COL.CIUDDES PROV_COL '
             + '      ,DIST_COL.ZIPDES DIST_COL '
             + '  FROM GES_COB_HOJ_RUT_DET HOJA_RUTA, '
             + '       (SELECT A.ASOID '
             + '              ,SUM(CASE WHEN B.ASOID IS NOT NULL THEN 1 ELSE 0 END) CANT_CRE_PEN_PAGO '
             + '          FROM (SELECT DISTINCT ASOID '
             + '                  FROM GES_COB_HOJ_RUT_DET '
             + '                 WHERE IDCAB = '+DM1.cdsQry12.fieldbyname('IDCAB').AsString+') A '
             + '               ,CRE301 B '
             + '         WHERE A.ASOID = B.ASOID(+) '
             + '           AND ''02'' = B.CREESTID(+) '
             + '         GROUP BY A.ASOID '
             + '       ) CANT_CRE, '
             + '       (SELECT A.ASOID, B.DES_SIT SITUACION_PADRON '
             + '          FROM ASO_PAD_HIS     A '
             + '              ,ASO_PAD_SIT_ASO B '
             + '              ,GES_COB_HOJ_RUT_DET C '
             + '         WHERE A.CODPAD = (SELECT MAX(CODPAD) FROM ASO_PAD_HIS) '
             + '           AND A.ASODNI IS NOT NULL '
             + '           AND A.ASOID IS NOT NULL '
             + '           AND A.SITACT = B.COD_SIT '
             + '           AND B.COD_MAE = ''02'' '
             + '           AND B.COD_SIT NOT IN (''99'', ''00'') '
             + '           AND A.ASOID = C.ASOID '
             + '           AND C.IDCAB = ' + DM1.cdsQry12.fieldbyname('IDCAB').AsString
             + '       )PADRON, '
             + '       ( '
             + '         SELECT A.ASOID '
             + '               ,NVL(NVL(B.ASODIR, C.ASODIR), A.ASODIR) ASODIR '
             + '               ,NVL(NVL(B.UBIGEO, C.UBIGEO), A.ZIPID) ZIPID '
             + '               ,ASODNI, CENEDUID, ASOTIPID '
             + '           FROM (SELECT A1.ASOID, B1.ASODIR, B1.ZIPID, B1.ASODNI, B1.CENEDUID, B1.ASOTIPID FROM GES_COB_HOJ_RUT_DET A1, APO201 B1 WHERE A1.IDCAB = ' + DM1.cdsQry12.fieldbyname('IDCAB').AsString + ' AND A1.ASOID = B1.ASOID) A '
             + '               ,(SELECT A1.ASOID, B1.ASODIR, B1.UBIGEO, B1.HREG, B1.MODREG, DENSE_RANK() OVER(PARTITION BY B1.ASOID ORDER BY NVL(B1.MODREG, B1.HREG) DESC) DNRK FROM GES_COB_HOJ_RUT_DET A1, GES_DOM_ASO B1 WHERE A1.IDCAB = ' + DM1.cdsQry12.fieldbyname('IDCAB').AsString + ' AND A1.ASOID = B1.ASOID(+) AND ''S'' = NVL(B1.ACTIVO(+), ''N'')) B '
             + '               ,(SELECT A1.ASOID, B1.ASODIR, B1.UBIGEO, B1.HREG, B1.MODREG, DENSE_RANK() OVER(PARTITION BY B1.ASOID ORDER BY NVL(B1.MODREG, B1.HREG) DESC) DNRK FROM GES_COB_HOJ_RUT_DET A1, GES_DOM_ASO B1 WHERE A1.IDCAB = ' + DM1.cdsQry12.fieldbyname('IDCAB').AsString + ' AND A1.ASOID = B1.ASOID(+) AND ''N'' = NVL(B1.ACTIVO(+), ''N'')) C '
             + '               ,TGE122 D '
             + '          WHERE A.ASOID = B.ASOID(+) AND 1 =  B.DNRK(+) '
             + '            AND A.ASOID = C.ASOID(+) AND 1 = C.DNRK(+) '
             + '            AND NVL(NVL(B.UBIGEO, C.UBIGEO), A.ZIPID) =  D.DPTOID||D.CIUDID||D.ZIPID '
             + '       ) ASOCIADO, '
             + '       APO158 DPTO_DOM, '
             + '       TGE121 PROV_DOM, '
             + '       TGE122 DIST_DOM, '
             + '       ASO_CEN_EDU COLEGIO, '
             + '       NIV_CEN_EDU NIVEL_COL, '
             + '       APO158 DPTO_COL, '
             + '       TGE121 PROV_COL, '
             + '       TGE122 DIST_COL '
             + ' WHERE HOJA_RUTA.IDCAB = ' + DM1.cdsQry12.fieldbyname('IDCAB').AsString
             + '   AND HOJA_RUTA.ASOID = CANT_CRE.ASOID '
             + '   AND HOJA_RUTA.ASOID = PADRON.ASOID(+) '
             + '   AND HOJA_RUTA.ASOID = ASOCIADO.ASOID '
             + '   AND SUBSTR(ASOCIADO.ZIPID,1,2) = DPTO_DOM.DPTOID(+) '
             + '   AND SUBSTR(ASOCIADO.ZIPID,1,4) = PROV_DOM.DPTOID(+)||PROV_DOM.CIUDID(+) '
             + '   AND ASOCIADO.ZIPID = DIST_DOM.DPTOID(+)||DIST_DOM.CIUDID(+)||DIST_DOM.ZIPID(+) '
             + '   AND ASOCIADO.CENEDUID = COLEGIO.CENEDUID(+) '
             + '   AND COLEGIO.NIVEDU_ID = NIVEL_COL.NIVEDU_ID(+) '
             + '   AND SUBSTR(COLEGIO.UBIGEO_DIR,1,2) = DPTO_COL.DPTOID(+) '
             + '   AND SUBSTR(COLEGIO.UBIGEO_DIR,1,4) = PROV_COL.DPTOID(+)||PROV_COL.CIUDID(+) '
             + '   AND COLEGIO.UBIGEO_DIR = DIST_COL.DPTOID(+)||DIST_COL.CIUDID(+)||DIST_COL.ZIPID(+) '
             + 'ORDER BY NVL(HOJA_RUTA.ESTCOM,''N'') ASC, HOJA_RUTA.ASOAPENOM ASC ';

      DM1.cdsReporte.close;
      DM1.cdsReporte.datarequest(xsSQL);
      DM1.cdsReporte.open;

      ppDBHojaRutaDet.DataSource := DM1.dsReporte;
      ppLabel216.Text := DM1.wUsuario;
      ppLabel209.Text := xUsuarioGestor;
      ppLabel210.Text := DM1.cdsQry13.fieldbyname('USU_GES').asstring;
      fn_cargar_detalles_hoja_ruta();
      Screen.Cursor := crDefault;
      pprHojaRutaDet.Print;
      //ppdHojaRutaDet.ShowModal;
   End;
End;
// FIN : SPP_201402_GESCOB

//******************************************************************************
// Nombre : btnExpHojaRutaClick
// Descripcion : Exportar la hoja de Ruta
//******************************************************************************

Procedure TfGestInt.btnExpHojaRutaClick(Sender : TObject);
Begin
   If fn_confirma_activar_hoja_ruta() Then
   Begin
      Screen.Cursor := crHourGlass;
      Try
         With dtgHojaRutaDia, dtgHojaRutaDia.ExportOptions Do
         Begin
            ExportType := wwgetSYLK;
            FileName := 'Hoja_Ruta.slk';
            DM1.OpcionesExportExcel(dtgHojaRutaDia.ExportOptions);
            dtgHojaRutaDia.ExportOptions.TitleName := 'HojaRuta';
            Save;
            If Not (esoClipboard In Options) Then
               ShellExecute(Handle, 'Open', PChar(dtgHojaRutaDia.exportoptions.Filename), Nil, Nil, sw_shownormal);
         End;
         Screen.Cursor := crDefault;
      Except
         Screen.Cursor := crDefault;
         MessageDlg('No se puede grabar el Archivo ' + chr(13) + 'Cierre todos los Archivos en Excel y vuelva a intentarlo', mtWarning, [mbOk], 0);
      End;
   End;
End;

//******************************************************************************
// Nombre : dtgHojaRutaDiaTitleButtonClick
// Descripcion : Ordenar al dar clic en una columna de la grilla
//******************************************************************************

Procedure TfGestInt.dtgHojaRutaDiaTitleButtonClick(Sender : TObject;
   AFieldName : String);
Begin
   dtgHojaRutaDia.SetActiveField(AFieldName);
   DM1.cdsQry13.IndexFieldNames := AFieldName;
End;

//******************************************************************************
// Nombre : dtgHojaRutaDiaDblClick
// Descripcion : Ingresar las gestiones en la hoja de ruta
//******************************************************************************
// INICIO : SPP_201402_GESCOB
Procedure TfGestInt.dtgHojaRutaDiaDblClick(Sender : TObject);
Var
   xAsoId, xPeriodo : String;
   xsSQL : String;
Begin
   If (StrToInt(Copy(DM1.NivelUsuario(DM1.wUsuario), 2, 1)) = 3) Then
   Begin
      Exit;
   End;

   If DM1.cdsQry12.FieldByName('ESTADO').AsString <> 'ACTIVA' Then
   Begin
      MessageDlg('Antes de Ingresar las Gestiones, debe de Imprimir o Exportar la hoja de ruta!', mtInformation, [mbOk], 0);
      Exit;
   End;
   If DM1.cdsQry13.RecordCount <= 0 Then Exit;

   Screen.Cursor := crHourGlass;

   xAsoId       := DM1.cdsQry13.FieldByName('ASOID').AsString;
   xPeriodo     := DM1.cdsQry13.FieldByName('PERIODO').AsString;
   sCodAsociado := DM1.cdsQry13.FieldByName('ASOID').AsString;


   xsSQL := 'SELECT E.ASOCODMOD, A.PERIODO,C.OFDESNOM,A.OFDESID,A.USEID,D.USENOM, '
      + '          A.UPAGOID,A.UPROID,CFC_F,CFC_N,CFC_R,A.ASOTIPID,A.ASOID, '
      + '          A.ASOAPENOM,NVL(SALVEN,0) SALVEN,NVL(SALPEN,0) SALPEN, '
      + '          NVL(SALTOT,0) SALTOT, CUOVEN, CUOPEN, NVL(CUOVEN,0)+NVL(CUOPEN,0) CUOTOT, '
      + '          ESTDES,SALACT,RESGES,A.USUARIO,USUASIG,TO_DATE(FECASIG) FECASIG, '
      + '          ESTGES, TIPGES, ESTDEU, B.DESREF, DIASTRANS, DIASTRANSACT, A.ZIPID, E.ASODIR '
      + '          ,F.DPTODES DEPARTAMENTO, G.CIUDDES PROVINCIA, H.ZIPDES DISTRITO '
      + '          ,''S'' PRI_ALTA '
      + '          ,''NORMAL'' PRIORIDAD '
      + '          ,NVL(SALDIF, 0) SALDIF, NVL(CUODIF, 0) CUODIF, '
      + '          ''XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'' DISOPE '
      + '     FROM ' + xTabla + ' A, GES_TIP_REF_DET B, APO110 C, APO101 D, APO201 E '
      + '          ,APO158 F, TGE121 G, TGE122 H '
      + '    WHERE A.TIPGES = ''01'' ' // GESTION PREVENTIVA  - INTERNA
      + '      AND A.ESTGES = B.CODREF(+) '
      + '      AND B.CODTIP = ''02'' '
      + '      AND A.ASOID = E.ASOID(+) '
      + '      AND A.USEID = D.USEID(+) '
      + '      AND A.UPAGOID = D.UPAGOID(+) '
      + '      AND A.UPROID = D.UPROID(+) '
      + '      AND D.OFDESID = C.OFDESID(+) '
      + '      AND SUBSTR(A.ZIPID,1,2) = F.DPTOID(+) '
      + '      AND SUBSTR(A.ZIPID,1,2) = G.DPTOID(+) '
      + '      AND SUBSTR(A.ZIPID,3,2) = G.CIUDID(+) '
      + '      AND SUBSTR(A.ZIPID,1,2) = H.DPTOID(+) '
      + '      AND SUBSTR(A.ZIPID,3,2) = H.CIUDID(+) '
      + '      AND SUBSTR(A.ZIPID,5,2) = H.ZIPID(+) '
      + '      AND A.ASOID = ' + QuotedStr(DM1.cdsQry13.fieldbyname('ASOID').AsString);
   DM1.cdsQry14.Close;
   DM1.cdsQry14.DataRequest(xsSQL);
   DM1.cdsQry14.Open;

   cdsActivo := DM1.cdsQry14;
   DM1.VarRefencia := '';
   DM1.VarGestion := '';
   If StrToInt(Copy(DM1.NivelUsuario(DM1.wUsuario), 2, 1)) >= 2 Then
      MstCabecera(xAsoId, xPeriodo)
   Else
      CargaSaldo(xAsoid, xPeriodo);

   Try
      fGesIndInt := TfGesIndInt.create(Self);
      If StrToInt(Copy(DM1.NivelUsuario(DM1.wUsuario), 2, 1)) >= 2 Then
         fGesIndInt.dtgDetAsoCarIButton.Enabled := False;
      MstAsociados;

      fGesIndInt.BitAnterior.Enabled := false;
      fGesIndInt.BitSiguiente.Enabled := false;
      DM1.wlGraboGestion := false;
      fGesIndInt.ShowModal;
      If DM1.wlGraboGestion Then
      Begin
         xsSQL := 'UPDATE GES_COB_HOJ_RUT_DET '
            + '       SET ESTADO = ''GESTIONADO'' '
            + '          ,FEC_GES = SYSDATE '
            + '          ,USU_GES =  ' + QuotedStr(DM1.wUsuario)
            + '     WHERE IDCAB = ' + DM1.cdsQry12.fieldbyname('IDCAB').AsString
            + '       AND ASOID = ' + QuotedStr(DM1.cdsQry13.fieldbyname('ASOID').AsString);
         DM1.DCOM1.AppServer.EjecutaSql(xsSQL);
         fn_cargar_hoja_ruta_dia();
      End;
   Finally
      fGesIndInt.Free;
   End;
   fn_calcular_indicadores;
   Screen.Cursor := crDefault;
End;
// FIN : SPP_201402_GESCOB
//******************************************************************************
// Nombre : btnHojaRutaDiaDelClick
// Descripcion : Retira un asociado de la hoja de ruta
//******************************************************************************

Procedure TfGestInt.btnHojaRutaDiaDelClick(Sender : TObject);
Var
   xsSQL : String;
Begin
   xsSQL := 'DELETE FROM GES_COB_HOJ_RUT_DET  '
      + '     WHERE IDCAB = ' + DM1.cdsQry12.fieldbyname('IDCAB').AsString
      + '       AND ASOID = ' + QuotedStr(DM1.cdsQry13.fieldbyname('ASOID').AsString);
   DM1.DCOM1.AppServer.EjecutaSql(xsSQL);
   fn_cargar_hoja_ruta_dia();
End;

//******************************************************************************
// Nombre : btnHojaRutaDiaAddPersonalClick
// Descripcion : Inserta un asociado en la hoja de ruta
//******************************************************************************

// INICIO : SPP_201402_GESCOB
Procedure TfGestInt.btnHojaRutaDiaAddPersonalClick(Sender : TObject);
Var
   xsASOID, xsUSUASIG, xsASOCODMOD, xsASODIR, xsASOAPENOM,
      xsDISTRITO, xsUSUORI : String;  
   xsESTCOM, xsMONCOM, xsFECCOM, xsFECCON : String;
(****************************************************************************)
   Procedure fn_insertar_asociado_hoja_ruta_det();
   Var
      xsSQL : String;
   Begin
      xsSQL := 'INSERT INTO GES_COB_HOJ_RUT_DET (IDCAB, ASOID, ESTADO, USU_ASIGNA, '
         + '              ASOCODMOD, ASODIR, ASOAPENOM, DISTRITO, '
         + '              FEC_CREA, USU_CREA, FREG, UREG, USU_ORI, '
         + '              ESTCOM, MONCOM, FECCOM, FECCON) '
         + '    VALUES(' + DM1.cdsQry12.fieldbyname('IDCAB').AsString + ', '
         + QuotedStr(xsASOID) + ', '
         + '           ''NO GESTIONADO'', '
         + QuotedStr(xsUSUASIG) + ', '
         + QuotedStr(xsASOCODMOD) + ', '
         + QuotedStr(xsASODIR) + ', '
         + QuotedStr(xsASOAPENOM) + ', '
         + QuotedStr(xsDISTRITO) + ','
         + ' SYSDATE, '
         + QuotedStr(DM1.wUsuario) + ', '
         + ' SYSDATE, '
         + QuotedStr(DM1.wUsuario) + ', '
         + QuotedStr(xsUSUORI) + ','
         + xsESTCOM + ','
         + xsMONCOM + ','
         + xsFECCOM + ','
         + xsFECCON
         + ')';
      DM1.DCOM1.AppServer.EjecutaSql(xsSQL);
   End;
  (****************************************************************************)
  Procedure fn_obtener_datos_compromiso(xAsoid : String);
  Var
      xsSQL : String;
  begin
     // INICIO SPP_201403_GESCOB
     xsSQL := ' SELECT ASOID, MONCOM, '
            + '        TO_CHAR(FEC_COMPROMISO,''DD/MM/YYYY'') FEC_COMPROMISO, '
            + '        TO_CHAR(FEC_CONTACTO,''DD/MM/YYYY'') FEC_CONTACTO '
            + '   FROM ( SELECT DISTINCT ASOID, MONCOM, FEC_COMPROMISO, FEC_CONTACTO '
            + '            FROM (SELECT ASOID, NVL(MONCOM,0) MONCOM, '
            + '                         FEC_COMPROMISO, FEC_CONTACTO, '
            + '                         DENSE_RANK() OVER(PARTITION BY ASOID ORDER BY FEC_COMPROMISO DESC, FREG DESC) DNRK '
            + '                    FROM GES_COB_COMPROMISO A '
            + '                   WHERE A.COMPROMISO = ''S'' '
            + '                     AND A.PERIODO = ' + QuotedStr(xsPeriodoGestionActual)            
            + '                     AND A.ASOID = ' + QuotedStr(xAsoid)
         // + '                     AND TRUNC(A.FEC_COMPROMISO) <= TRUNC(SYSDATE) - 3 '
            + '                 ) '
            + '           WHERE DNRK = 1 '
            + '             AND TRUNC(FEC_COMPROMISO) <= TRUNC(SYSDATE) - 3 '
            + '        ) A '
            + '  WHERE (SELECT NVL(SUM(CREMTO - CREMTOCOB), 0) SALDO_VENCIDO '
            + '           FROM CRE302 B '
            + '          WHERE CREFVEN < SYSDATE /* FECHA DEL SISTEMA */ '
            + '            AND CREESTID IN (''02'', ''11'', ''27'', ''14'') '
            + '            AND B.ASOID = A.ASOID) > 0 '
            + '    AND (SELECT CASE WHEN COUNT(ASOID) > 0 THEN ''SI'' ELSE ''NO'' END PAGO '
            + '           FROM CRE310 C '
            + '          WHERE FREG BETWEEN A.FEC_CONTACTO AND SYSDATE /* FECHAS DE GESTION Y FECHA DE SYSTEMA */ '
            + '            AND CREESTID NOT IN (''23'', ''04'', ''13'', ''99'') '
            + '            AND FORPAGID IN (''02'', ''03'') '
            + '            AND C.ASOID = A.ASOID) = ''NO'' ';
     // FIN SPP_201403_GESCOB            
     DM1.cdsQry.Close;
     DM1.cdsQry.DataRequest(xsSQL);
     DM1.cdsQry.Open;
     if DM1.cdsQry.RecordCount > 0 then
     begin
          xsESTCOM := '''I''';
          xsMONCOM := DM1.cdsQry.fieldbyname('MONCOM').asstring;
          xsFECCOM := 'TO_DATE(' + QuotedStr(DM1.cdsQry.fieldbyname('FEC_COMPROMISO').asstring) + ',''DD/MM/YYYY'')';
          xsFECCON := 'TO_DATE(' + QuotedStr(DM1.cdsQry.fieldbyname('FEC_CONTACTO').asstring) + ',''DD/MM/YYYY'')';
     end
     else
     begin
         // INICIO SPP_201403_GESCOB
         xsSQL := ' SELECT ASOID, MONCOM, '
                + '        TO_CHAR(FEC_COMPROMISO,''DD/MM/YYYY'') FEC_COMPROMISO, '
                + '        TO_CHAR(FEC_CONTACTO,''DD/MM/YYYY'') FEC_CONTACTO '
                + '   FROM ( SELECT DISTINCT ASOID, MONCOM, FEC_COMPROMISO, FEC_CONTACTO '
                + '            FROM (SELECT ASOID, NVL(MONCOM,0) MONCOM, '
                + '                         FEC_COMPROMISO, FEC_CONTACTO, '
                + '                         DENSE_RANK() OVER(PARTITION BY ASOID ORDER BY FEC_COMPROMISO DESC, FREG DESC) DNRK '
                + '                    FROM GES_COB_COMPROMISO A '
                + '                   WHERE A.COMPROMISO = ''S'' '
                + '                     AND A.PERIODO = ' + QuotedStr(xsPeriodoGestionActual)
                + '                     AND A.ASOID = ' + QuotedStr(xAsoid)
             // + '                     AND TRUNC(A.FEC_COMPROMISO) > TRUNC(SYSDATE) - 3 '
                + '                 ) '
                + '           WHERE DNRK = 1 '
                + '             AND TRUNC(FEC_COMPROMISO) > TRUNC(SYSDATE) - 3 '
                + '        ) A ';
         // FIN SPP_201403_GESCOB
         DM1.cdsQry.Close;
         DM1.cdsQry.DataRequest(xsSQL);
         DM1.cdsQry.Open;
         if DM1.cdsQry.RecordCount > 0 then
         begin
             xsESTCOM := '''V''';
             xsMONCOM := DM1.cdsQry.fieldbyname('MONCOM').asstring;
             xsFECCOM := 'TO_DATE(' + QuotedStr(DM1.cdsQry.fieldbyname('FEC_COMPROMISO').asstring) + ',''DD/MM/YYYY'')';
             xsFECCON := 'TO_DATE(' + QuotedStr(DM1.cdsQry.fieldbyname('FEC_CONTACTO').asstring) + ',''DD/MM/YYYY'')';
         end
         else
         begin
             xsESTCOM := '''N''';
             xsMONCOM := '0';
             xsFECCOM :=  'NULL';
             xsFECCON := 'NULL';
         end
     end;
  end;
  (****************************************************************************)
Begin
   If pcGestion.ActivePage = tsPersonal Then
   Begin
      If DM1.cdsMovCre.RecordCount <= 0 Then
      Begin
         MessageDlg('Seleccione un Asociado!', mtInformation, [mbOk], 0);
         Exit;
      End;

      If dtgGestion.SelectedList.Count > 1 Then
      Begin
         MessageDlg('Por favor seleccione un Asociado a la vez', mtWarning, [mbOk], 0);
         Exit;
      End;

      xsASOID := DM1.cdsMovCre.fieldbyname('ASOID').AsString;
      xsUSUASIG := DM1.cdsMovCre.fieldbyname('USUASIG').AsString;
      xsASOCODMOD := DM1.cdsMovCre.fieldByname('ASOCODMOD').AsString;
      xsASODIR := DM1.cdsMovCre.fieldByname('ASODIR').AsString;
      xsASOAPENOM := DM1.cdsMovCre.fieldByname('ASOAPENOM').AsString;
      xsDISTRITO := DM1.cdsMovCre.fieldByname('DISTRITO').AsString;
      xsUSUORI := DM1.cdsMovCre.fieldByname('USUARIO').AsString;
   End;
   If pcGestion.ActivePage = tsOtros Then
   Begin
      If DM1.cdsModelo.RecordCount <= 0 Then
      Begin
         MessageDlg('Seleccione un Asociado!', mtInformation, [mbOk], 0);
         Exit;
      End;

      If dtgOtrasGest.SelectedList.Count > 1 Then
      Begin
         MessageDlg('Por favor seleccione un Asociado a la vez', mtWarning, [mbOk], 0);
         Exit;
      End;

      xsASOID := DM1.cdsModelo.fieldbyname('ASOID').AsString;
      xsUSUASIG := DM1.cdsModelo.fieldbyname('USUASIG').AsString;
      xsASOCODMOD := DM1.cdsModelo.fieldByname('ASOCODMOD').AsString;
      xsASODIR := DM1.cdsModelo.fieldByname('ASODIR').AsString;
      xsASOAPENOM := DM1.cdsModelo.fieldByname('ASOAPENOM').AsString;
      xsDISTRITO := DM1.cdsModelo.fieldByname('DISTRITO').AsString;
      xsUSUORI := DM1.cdsModelo.fieldByname('USUARIO').AsString;
   End;

   If Not fn_existe_asociado_hoja_ruta_det(xsASOID, xUsuarioGestor, xsPeriodoGestionActual) Then
   Begin
      fn_obtener_datos_compromiso(xsASOID);
      fn_insertar_asociado_hoja_ruta_det();
      fn_cargar_hoja_ruta_dia();
   End
   Else
   Begin
      MessageDlg('El Asociado ya esta en la Hoja de Ruta', mtWarning, [mbOk], 0);
      Exit;
   End;
End;
// FIN : SPP_201402_GESCOB

//******************************************************************************
// Nombre : dtgHojaRutaDiaDrawDataCell
// Descripcion : Cambia el color de la fuente en la grilla,
//               dependiendo si esta gestionado o no
//******************************************************************************

Procedure TfGestInt.dtgHojaRutaDiaDrawDataCell(Sender : TObject;
   Const Rect : TRect; Field : TField; State : TGridDrawState);
Begin
   dtgHojaRutaDia.Canvas.Font.Color := clNavy;
   dtgHojaRutaDia.DefaultDrawDataCell(rect, Field, State);

   If Field.FieldName = 'ESTADO' Then
   Begin
      If (DM1.cdsQry13.FieldByName('ESTADO').asstring = 'NO GESTIONADO') Then
      Begin
         dtgHojaRutaDia.Canvas.Font.Color := clRed;
         dtgHojaRutaDia.Canvas.Font.Style := [fsBold, fsUnderline];
         dtgHojaRutaDia.DefaultDrawDataCell(rect, Field, State);
      End;
   End;
End;

//******************************************************************************
// Nombre : btnHojaRutaDiaAddOtrosClick
// Descripcion : invoca a la funcion que agrega un asociado a la hoja de ruta
//               cuando gestiono a un asociado que estaba asignado a otro gestor
//******************************************************************************

Procedure TfGestInt.btnHojaRutaDiaAddOtrosClick(Sender : TObject);
Begin
   btnHojaRutaDiaAddPersonalClick(Sender);
End;

//******************************************************************************
// Nombre : dtgGestionDblClick
// Descripcion : visualiza los datos del asociado
//******************************************************************************
// INICIO : SPP_201402_GESCOB
Procedure TfGestInt.dtgGestionDblClick(Sender : TObject);
Var
   xAsoId, xPeriodo : String;
Begin
   If dtgGestion.DataSource.DataSet.RecordCount = 0 Then Exit;
   Screen.Cursor := crHourGlass;
   sCodAsociado := DM1.cdsMovCre.FieldByName('ASOID').AsString;
   xAsoId := DM1.cdsMovCre.FieldByName('ASOID').AsString;
   xPeriodo := DM1.cdsMovCre.FieldByName('PERIODO').AsString;
   cdsActivo := DM1.cdsMovCre;
   DM1.VarRefencia := '';
   DM1.VarGestion := '';
   If StrToInt(Copy(DM1.NivelUsuario(DM1.wUsuario), 2, 1)) >= 2 Then
      MstCabecera(xAsoId, xPeriodo)
   Else
      CargaSaldo(xAsoid, xPeriodo);

   Try
      fGesIndInt := TfGesIndInt.create(Self);
      fGesIndInt.dtgDetAsoCarIButton.Enabled := False;
      MstAsociados;
      fGesIndInt.ShowModal;
   Finally
      fGesIndInt.Free;
   End;
   fn_calcular_indicadores;
   Screen.Cursor := crDefault;
End;
// FIN : SPP_201402_GESCOB
//******************************************************************************
// Nombre : dtgOtrasGestDblClick
// Descripcion : visualiza los datos del asociado
//******************************************************************************
// INICIO : SPP_201402_GESCOB
Procedure TfGestInt.dtgOtrasGestDblClick(Sender : TObject);
Var
   xAsoId, xPeriodo : String;
Begin
   If dtgOtrasGest.DataSource.DataSet.RecordCount = 0 Then Exit;
   Screen.Cursor := crHourGlass;
   sCodAsociado := DM1.cdsModelo.FieldByName('ASOID').AsString;
   xAsoId := DM1.cdsModelo.FieldByName('ASOID').AsString;
   xPeriodo := DM1.cdsModelo.FieldByName('PERIODO').AsString;
   cdsActivo := DM1.cdsModelo;
   DM1.VarRefencia := '';
   DM1.VarGestion := '';
   If StrToInt(Copy(DM1.NivelUsuario(DM1.wUsuario), 2, 1)) >= 2 Then
      MstCabecera(xAsoId, xPeriodo)
   Else
   Begin
      CargaSaldo(xAsoid, xPeriodo);
      If SaldoFinal(xAsoId) = 0 Then
      Begin
         CerraGestion(xAsoId);
      End;
   End;

   Try
      fGesIndInt := TfGesIndInt.create(Self);
      fGesIndInt.dtgDetAsoCarIButton.Enabled := False;

      MstAsociados;
      fGesIndInt.ShowModal;
   Finally
      fGesIndInt.Free;
   End;
   fn_calcular_indicadores;
   Screen.Cursor := crDefault;
End;
// FIN : SPP_201402_GESCOB
(******************************************************************************)

procedure TfGestInt.bbtnLogImportacionClick(Sender: TObject);
   // INICIO : SPP_201402_GESCOB
var
   xnNivel : integer;
   // FIN : SPP_201402_GESCOB
Begin
   // INICIO : SPP_201402_GESCOB
   xnNivel := StrToInt(Copy(DM1.NivelUsuario(DM1.wUsuario), 2, 1));
   If (xnNivel < 3) Then
   Begin
      MessageDlg('OPCION DISPONIBLE SOLO PARA EL NIVEL 3!!!', mtInformation, [mbOk], 0);
      Exit;
   End;
   // FIN : SPP_201402_GESCOB
   Try
      fLogImpMas := TfLogImpMas.create(Self);
      fLogImpMas.ShowModal;
   Finally
      fLogImpMas.Free;
   End;
end;

(******************************************************************************)
procedure TfGestInt.bbtnImportacionMasivaClick(Sender: TObject);
Var
   xSQL: String;
   xIDArchivo: integer;
   xMsgSubida: String;
   xPeriodo: String;
   xTipo: String;
   xGestion: String;
   xUsuAsigna: String;
   xCont: integer;
   xsSQL : String;
   // INICIO : SPP_201402_GESCOB
   xnNivel : integer;
   // FIN : SPP_201402_GESCOB
Begin
   // INICIO : SPP_201402_GESCOB
   xnNivel := StrToInt(Copy(DM1.NivelUsuario(DM1.wUsuario), 2, 1));
   If (xnNivel < 3) Then
Begin
      MessageDlg('OPCION DISPONIBLE SOLO PARA EL NIVEL 3!!!', mtInformation, [mbOk], 0);
      Exit;
   End;
   // FIN : SPP_201402_GESCOB

   If trim(dblUserInt.Text) = '' Then
      Begin
         showmessage('Por favor seleccione un Gestor Interno!');
         exit;
      End;

   If Not sdGraba300.Execute Then Exit;

   If sdGraba300.FileName = '' Then
      Begin
         ShowMessage('Por favor seleccione el Archivo a Importar');
         Exit;
      End;

   If Not FileExists(sdGraba300.FileName) Then
      Begin
         ShowMessage('El Archivo Seleccionado No Existe ( ' + sdGraba300.FileName + ' ) ');
         Exit;
      End;

   Memo1.Lines.Clear;
   Memo1.Lines.LoadFromFile(sdGraba300.FileName);

   CreateCDSImpMasiva;
   If cdsPlanilla.RecordCount <= 0 Then
      Begin
         showmessage('No se han obtenido datos ' + chr(13) + 'Por favor verifique que el archivo pertenesca al Gestor Interno : ' + dblUserInt.Text);
         exit;
      End;
   // AQUI SE TIENE QUE VALIDAR LOS CAMPOS DE TODO LO QUE SE VA A IMPORTAR
   // ************
   // ************

   xPeriodo := '';
   xTipo := '';
   xGestion := '';
   xUsuAsigna := '';
   xCont := 0;
   cdsPlanilla.First;
   While Not cdsPlanilla.Eof Do
      Begin
         Try
            If Length(cdsPlanilla.FieldByName('COD_ATE').AsString) <> 3 Then
               Begin
                  Showmessage('El COD_ATE debe tener 3 caracteres');
                  Abort;
               End;

            If Length(cdsPlanilla.FieldByName('DNI').AsString) <> 8 Then
               Begin
                  Showmessage('El DNI debe tener 8 caracteres');
                  Abort;
               End;

            If xCont = 0 Then
               Begin
                  xPeriodo := cdsPlanilla.FieldByName('PERIODO').AsString;
                  xTipo := cdsPlanilla.FieldByName('TIPO').AsString;
                  xGestion := cdsPlanilla.FieldByName('GESTION').AsString;
                  xUsuAsigna := cdsPlanilla.FieldByName('USU_ASIGNA').AsString;
               End
            Else
               Begin
                  If xPeriodo <> cdsPlanilla.FieldByName('PERIODO').AsString Then
                     Begin
                        Showmessage('El campo PERIODO no es igual en todo el Archivo');
                        Abort;
                     End;

                  If xTipo <> cdsPlanilla.FieldByName('TIPO').AsString Then
                     Begin
                        Showmessage('El campo TIPO no es igual en todo el Archivo');
                        Abort;
                     End;

                  If xGestion <> cdsPlanilla.FieldByName('GESTION').AsString Then
                     Begin
                        Showmessage('El campo GESTION no es igual en todo el Archivo');
                        Abort;
                     End;

                  If xUsuAsigna <> cdsPlanilla.FieldByName('USU_ASIGNA').AsString Then
                     Begin
                        Showmessage('El campo USU_ASIGNA no es igual en todo el Archivo');
                        Abort;
                     End;
               End;

            If dblUserInt.Text <> cdsPlanilla.FieldByName('USUARIO_INT').AsString Then
               Begin
                  Showmessage('El Usuario ' + dblUserInt.Text + ' es diferente al usuario del archivo (' + cdsPlanilla.FieldByName('USUARIO_INT').AsString + ')');
                  Abort;
               End;
         Except
            ShowMessage('Error en Archivo del texto, revisar...');
            Abort;
         End;
         xCont := xCont + 1;
         cdsPlanilla.Next;
      End;


   if StrToInt(xPeriodo) > StrToInt(xsPeriodoGestionActual) then
   begin
      MessageDlg('EL PERIODO QUE DESEA INGRESAR ES MAYOR AL PERIODO ACTUAL!!!', mtError, [mbOk], 0);
      Exit;
   end;

   if StrToInt(xPeriodo) < (StrToInt(xsPeriodoGestionActual)-1) then
   begin
      MessageDlg('SOLO PUEDE INGRESAR LOS PERIODOS ACTUAL (N) Y EL ANTERIOR (N-1)!!!', mtError, [mbOk], 0);
      Exit;
   end;

   if StrToInt(xPeriodo) = (StrToInt(xsPeriodoGestionActual)-1) then
   begin
      xsSQL := 'SELECT TO_NUMBER(TO_CHAR(SYSDATE,''DD'')) DIA FROM DUAL';
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest(xsSQL);
      DM1.cdsQry.Open;
      if DM1.cdsQry.FieldByName('DIA').AsInteger > 5 then
      begin
         MessageDlg('SOLO TIENE HASTA EL DIA 5 PARA INGRESAR LAS GESTIONES DEL PERIODO ANTERIOR!!!', mtError, [mbOk], 0);
         Exit;
      end;
   end;

   If MessageDlg('Confirma que desea Importar las Gestiones Internas ?    ', mtConfirmation, [mbYes, mbNo], 0) = mrNo Then exit;

   Screen.Cursor := crHourGlass;

   cdsPlanilla.First;
   xIDArchivo := DM1.registrarArchivoImp(Trim(cdsPlanilla.FieldByName('PERIODO').AsString),
                                     Trim(cdsPlanilla.FieldByName('USUARIO_INT').AsString),
                                     'INTERNA MASIVA',
                                     ExtractFileName(sdGraba300.FileName));
   cdsPlanilla.First;
   While Not cdsPlanilla.Eof Do
      Begin
         Try
             xSQL := 'BEGIN DB2ADMIN.SP_GES_COB_IMP_INT(' + IntToStr(xIDArchivo) + ','
               + DM1.QuoteStrAll(cdsPlanilla.FieldByName('USUARIO_INT').AsString) + ','
               + DM1.QuoteStrAll(cdsPlanilla.FieldByName('PERIODO').AsString) + ','
               + DM1.QuoteStrAll(cdsPlanilla.FieldByName('DNI').AsString) + ','
               + DM1.QuoteStrAll(cdsPlanilla.FieldByName('TELEFONOS').AsString) + ','
               + DM1.QuoteStrAll(cdsPlanilla.FieldByName('COD_ATE').AsString) + ','
               + DM1.QuoteStrAll(cdsPlanilla.FieldByName('OBSERVACION').AsString) + ','
               + DM1.QuoteStrAll(cdsPlanilla.FieldByName('FECHA_GES').AsString) + ','
               + DM1.QuoteStrAll(cdsPlanilla.FieldByName('TIPO').AsString) + ','
               + DM1.QuoteStrAll(cdsPlanilla.FieldByName('USU_ASIGNA').AsString) + ','
               + DM1.QuoteStrAll(cdsPlanilla.FieldByName('FECHA_HORA_ASIG').AsString) + ','
               + DM1.QuoteStrAll(cdsPlanilla.FieldByName('COD_NEG').AsString) + ','
               + DM1.QuoteStrAll(cdsPlanilla.FieldByName('FECHA_COMPROMISO').AsString) + ','
               + DM1.QuoteStrAll(cdsPlanilla.FieldByName('OBSERVACION_COMPROMISO').AsString) + ','
               + DM1.QuoteStrAll(cdsPlanilla.FieldByName('TIPO_CAMPANHA').AsString)
               + '); END;';
             DM1.DCOM1.AppServer.EjecutaSql(xSQL);
            cdsPlanilla.Next;
         Except
            ShowMessage('Error en Archivo del texto' + chr(13) + 'Por favor Anule el Registro y Verifique el Archivo!');
            Abort;
         End;
      End;
   // xMsgSubida := actualizarRegistroArchivo(xIDArchivo);
   xMsgSubida := DM1.actualizarRegistroArchivoImp(xIDArchivo, 'INTERNA MASIVA');

   Screen.Cursor := crDefault;
   ShowMessage(xMsgSubida);
   BitFiltrarClick(BitFiltrar);
end;

(******************************************************************************)
Procedure TfGestInt.CreateCDSImpMasiva;
Var
   cSepara, sLine, sDato: String;
   i, nPosF: Integer;
Begin
   With cdsPlanilla Do
      Begin
         Close;
         FieldDefs.Clear;

         FileName := ChangeFileExt(ExtractFileName(Application.ExeName), '.BAL');
         FieldDefs.Clear;

         FieldDefs.Add('USUARIO_INT', ftString, 5, False);
         FieldDefs.Add('PERIODO', ftString, 6, False);
         FieldDefs.Add('DNI', ftString, 8, False);
         FieldDefs.Add('COD_MODULAR', ftString, 10, False);
         FieldDefs.Add('APELLIDOS_NOMBRES', ftString, 200, False);
         FieldDefs.Add('TELEFONOS', ftString, 200, False);
         FieldDefs.Add('SALDO_VENCIDO', ftFloat, 0, False);
         FieldDefs.Add('SALDO_TOTAL', ftFloat, 0, False);
         FieldDefs.Add('COD_ATE', ftString, 3, False);
         FieldDefs.Add('OBSERVACION', ftString, 200, False);
         FieldDefs.Add('FECHA_GES', ftString, 10, False);
         FieldDefs.Add('TIPO', ftString, 3, False);
         FieldDefs.Add('GESTION', ftString, 20, False);
         FieldDefs.Add('USU_ASIGNA', ftString, 20, False);
         FieldDefs.Add('FECHA_HORA_ASIG', ftString, 19, False);
         FieldDefs.Add('COD_NEG', ftString, 2, False);
         FieldDefs.Add('FECHA_COMPROMISO', ftString, 10, False);
         FieldDefs.Add('OBSERVACION_COMPROMISO', ftString, 200, False);
         FieldDefs.Add('TIPO_CAMPANHA', ftString, 10, False);
         CreateDataSet;
         Open;
         EmptyDataSet;
      End;

   For i := 0 To Memo1.Lines.Count - 1 Do
      Begin
         cSepara := '|';

         cdsPlanilla.Insert;

         sLine := Memo1.Lines[I];
         nPosF := Pos(cSepara, sLine);
         sDato := Copy(sLine, 1, nPosF - 1);

         If sDato = dblUserInt.Text Then
            Begin
               cdsPlanilla.FieldByname('USUARIO_INT').AsString := sDato;

               sLine := Copy(sLine, nPosF + 1, Length(sLine));
               nPosF := Pos(cSepara, sLine);
               sDato := Copy(sLine, 1, nPosF - 1);
               cdsPlanilla.FieldByname('PERIODO').AsString := sDato;

               sLine := Copy(sLine, nPosF + 1, Length(sLine));
               nPosF := Pos(cSepara, sLine);
               sDato := Copy(sLine, 1, nPosF - 1);
               cdsPlanilla.FieldByname('DNI').AsString := sDato;

               sLine := Copy(sLine, nPosF + 1, Length(sLine));
               nPosF := Pos(cSepara, sLine);
               sDato := Copy(sLine, 1, nPosF - 1);
               cdsPlanilla.FieldByname('COD_MODULAR').AsString := sDato;

               sLine := Copy(sLine, nPosF + 1, Length(sLine));
               nPosF := Pos(cSepara, sLine);
               sDato := Copy(sLine, 1, nPosF - 1);
               cdsPlanilla.FieldByname('APELLIDOS_NOMBRES').AsString := sDato;

               sLine := Copy(sLine, nPosF + 1, Length(sLine));
               nPosF := Pos(cSepara, sLine);
               sDato := Copy(sLine, 1, nPosF - 1);
               cdsPlanilla.FieldByname('TELEFONOS').AsString := sDato;

               sLine := Copy(sLine, nPosF + 1, Length(sLine));
               nPosF := Pos(cSepara, sLine);
               sDato := Copy(sLine, 1, nPosF - 1);

               sLine := Copy(sLine, nPosF + 1, Length(sLine));
               nPosF := Pos(cSepara, sLine);
               sDato := Copy(sLine, 1, nPosF - 1);

               sLine := Copy(sLine, nPosF + 1, Length(sLine));
               nPosF := Pos(cSepara, sLine);
               sDato := Copy(sLine, 1, nPosF - 1);
               cdsPlanilla.FieldByname('COD_ATE').AsString := sDato;

               sLine := Copy(sLine, nPosF + 1, Length(sLine));
               nPosF := Pos(cSepara, sLine);
               sDato := Copy(sLine, 1, nPosF - 1);
               cdsPlanilla.FieldByname('OBSERVACION').AsString := sDato;

               sLine := Copy(sLine, nPosF + 1, Length(sLine));
               nPosF := Pos(cSepara, sLine);
               sDato := Copy(sLine, 1, nPosF - 1);
               cdsPlanilla.FieldByname('FECHA_GES').AsString := sDato;

               sLine := Copy(sLine, nPosF + 1, Length(sLine));
               nPosF := Pos(cSepara, sLine);
               sDato := Copy(sLine, 1, nPosF - 1);
               cdsPlanilla.FieldByname('TIPO').AsString := sDato;

               sLine := Copy(sLine, nPosF + 1, Length(sLine));
               nPosF := Pos(cSepara, sLine);
               sDato := Copy(sLine, 1, nPosF - 1);
               cdsPlanilla.FieldByname('GESTION').AsString := sDato;

               sLine := Copy(sLine, nPosF + 1, Length(sLine));
               nPosF := Pos(cSepara, sLine);
               sDato := Copy(sLine, 1, nPosF - 1);
               cdsPlanilla.FieldByname('USU_ASIGNA').AsString := sDato;

               sLine := Copy(sLine, nPosF + 1, Length(sLine));
               nPosF := Pos(cSepara, sLine);
               sDato := Copy(sLine, 1, nPosF - 1);
               cdsPlanilla.FieldByname('FECHA_HORA_ASIG').AsString := sDato;

               sLine := Copy(sLine, nPosF + 1, Length(sLine));
               nPosF := Pos(cSepara, sLine);
               sDato := Copy(sLine, 1, nPosF - 1);
               cdsPlanilla.FieldByname('COD_NEG').AsString := sDato;

               sLine := Copy(sLine, nPosF + 1, Length(sLine));
               nPosF := Pos(cSepara, sLine);
               sDato := Copy(sLine, 1, nPosF - 1);
               cdsPlanilla.FieldByname('FECHA_COMPROMISO').AsString := sDato;

               sLine := Copy(sLine, nPosF + 1, Length(sLine));
               nPosF := Pos(cSepara, sLine);
               sDato := Copy(sLine, 1, nPosF - 1);
               cdsPlanilla.FieldByname('OBSERVACION_COMPROMISO').AsString := sDato;

               sLine := Copy(sLine, nPosF + 1, Length(sLine));
               nPosF := Pos(cSepara, sLine);
               sDato := Copy(sLine, 1, nPosF - 1);
               if nPosF > 0 then
                 sDato := Copy(sLine, 1, nPosF - 1)
               else
                 sDato := Copy(sLine, 1, Length(sLine));
               cdsPlanilla.FieldByname('TIPO_CAMPANHA').AsString := sDato;

            End;
      End;

End;

(******************************************************************************)
Function TfGestInt.fn_existe_asociado_hoja_ruta_det(P_AsoId:STRING; P_Gestor : string; P_Periodo:String) : boolean;
Var
   xlResult : boolean;
   xsSQL : String;
Begin
   xsSQL := 'SELECT COUNT(1) CANT '
          + '  FROM GES_COB_HOJ_RUT_CAB CAB, GES_COB_HOJ_RUT_DET DET '
          + ' WHERE CAB.IDCAB = DET.IDCAB '
          + '   AND CAB.ESTADO <> ''CERRADA'' '
          + '   AND CAB.GESTOR = ' + QuotedStr(P_Gestor)
          + '   AND CAB.PERIODO = ' + QuotedStr(P_Periodo)
          + '   AND DET.ASOID = ' + QuotedStr(P_AsoId);
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xsSQL);
   DM1.cdsQry.Open;
   result := DM1.cdsQry.FieldByName('CANT').AsInteger > 0;
End;

(******************************************************************************)
Function TfGestInt.fn_existe_gestion(P_Periodo:string; P_AsoId:string) : boolean;
Var
   xlResult : boolean;
   xsSQL : String;
Begin
   xsSQL := 'SELECT COUNT(1) CANT '
          + '  FROM (SELECT ASOID, PERIODO, USUARIO, TIPGES '
          + '           FROM GES_COB_DOM '
          + '          WHERE TIPGES = ''01'' ' //gestion interna
          + '            AND PERIODO = ' + QuotedStr(P_Periodo)
          + '            AND ASOID = ' + QuotedStr(P_AsoId)
          + '         UNION '
          + '         SELECT ASOID, PERIODO, USUARIO, TIPGES '
          + '           FROM GES_COB_IND '
          + '          WHERE TIPGES = ''01'' ' //gestion interna
          + '            AND PERIODO = ' + QuotedStr(P_Periodo)
          + '            AND ASOID = ' + QuotedStr(P_AsoId)
          + '        ) ASIGNADO, GES_COB_SEG  '
          + ' WHERE ASIGNADO.USUARIO = GES_COB_SEG.USUARIO '
          + '   AND ASIGNADO.PERIODO = GES_COB_SEG.PERIODO '
          + '   AND ASIGNADO.ASOID = GES_COB_SEG.ASOID ';

   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xsSQL);
   DM1.cdsQry.Open;
   result := DM1.cdsQry.FieldByName('CANT').AsInteger > 0;
End;
(******************************************************************************)

procedure TfGestInt.btnDesasignarClick(Sender: TObject);
var xsSQL : string;
begin
   If StrToInt(Copy(DM1.NivelUsuario(DM1.wUsuario), 2, 1)) < 2 Then
   begin
      MessageDlg('Solo pueden desasignar los Usuarios con Nivel mayor o igual a 2.', mtInformation, [mbOk], 0);
      exit;
   end;
   If pcGestion.ActivePage = tsPersonal Then
   Begin
      If DM1.cdsMovCre.RecordCount <= 0 Then
      Begin
         MessageDlg('Seleccione un Asociado!', mtInformation, [mbOk], 0);
         Exit;
      End;

      If dtgGestion.SelectedList.Count > 1 Then
      Begin
         MessageDlg('Por favor seleccione un Asociado a la vez', mtWarning, [mbOk], 0);
         Exit;
      End;

      If fn_existe_asociado_hoja_ruta_det(DM1.cdsMovCre.fieldbyname('ASOID').AsString, xUsuarioGestor, xsPeriodoGestionActual) Then
      Begin
         MessageDlg('El Asociado ya esta en la Hoja de Ruta', mtWarning, [mbOk], 0);
         Exit;
      End;

      If fn_existe_gestion(xsPeriodoGestionActual, DM1.cdsMovCre.fieldbyname('ASOID').AsString) Then
      Begin
         MessageDlg('El Asociado ya tiene gestiones para este periodo', mtWarning, [mbOk], 0);
         Exit;
      End;

      try
         FLibGesInd := TFLibGesInd.Create(self);
         FLibGesInd.xsAsoId := DM1.cdsMovCre.fieldbyname('ASOID').AsString;
         FLibGesInd.xsGestor := dblUserInt.text;
         FLibGesInd.lblGestorNombre.Caption := dblUserInt.Text + ' - ' + EdtUserNom.text;
         FLibGesInd.lblAsoNombres.Caption := DM1.cdsMovCre.fieldbyname('ASOID').AsString + ' - ' + DM1.cdsMovCre.fieldByname('ASOAPENOM').AsString;
         FLibGesInd.ShowModal;
         //if FLibGesInd.ShowModal = mrOK then
            BitFiltrarClick(BitFiltrar);
      finally
         FLibGesInd.Free;
      end;
   End;
end;
(******************************************************************************)
// INICIO : SPP_201402_GESCOB
procedure TfGestInt.rgUbigeoClick(Sender: TObject);
begin
// INICIO : SPP_201402_GESCOB
   cargarFiltros();
// FIN : SPP_201402_GESCOB
   IF rgUbigeo.ItemIndex = 0 then
      xsZipIdCol := ''
   else
      xsZipIdCol := 'COL';
  dblcDpto.Text := '';
  pnlColegio.Visible := rgUbigeo.ItemIndex = 1;
end;
(******************************************************************************)
procedure TfGestInt.fn_cargar_colegios();
var xSQL : String;
begin
   xSQL :='SELECT ACE.NOMCENEDU ||  '' ('' || NVE.NIVEDU_DES || '')'' NOMCENEDU, '
        + '       ACE.CENEDUID '
        + '  FROM ASO_CEN_EDU ACE, NIV_CEN_EDU NVE '
        + ' WHERE ACE.NIVEDU_ID = NVE.NIVEDU_ID(+) '
        + '   AND ACE.UBIGEO_DIR = ' + QuotedStr(dblcDpto.Text + dblcProvin.Text + dblcDist.Text)
        + ' ORDER BY NOMCENEDU, NIVEDU_DES';
   DM1.cdsColegio.Close;
   DM1.cdsColegio.DataRequest(xSQL);
   DM1.cdsColegio.Open;
   dblcColegio.LookupTable := DM1.cdsColegio;
   dblcColegio.LookupField := 'CENEDUID';
   dblcColegio.Selected.Clear;
   dblcColegio.Selected.Add('NOMCENEDU'#9'70'#9'Colegio');
end;
(******************************************************************************)
procedure TfGestInt.dblcColegioChange(Sender: TObject);
begin
   edtColegio.Text := '';
   If DM1.cdsColegio.Locate('NOMCENEDU', VarArrayof([dblcColegio.Text]), []) Then
      edtColegio.Text := DM1.cdsColegio.fieldbyname('CENEDUID').AsString;
end;

(******************************************************************************)

procedure TfGestInt.ppDetailBand14BeforePrint(Sender: TObject);
VAR xsSQL : string;
    xnCont : integer;
begin
  Screen.Cursor := crHourGlass;

  (* TELEFONOS *)
  pplblTelefonos.Caption := '';
  cdsHojRutDetTelf.Filtered := false;
  cdsHojRutDetTelf.Filter   := 'ASOID = ' + DM1.cdsReporte.fieldbyname('ASOID').AsString;
  cdsHojRutDetTelf.Filtered := true;
  IF cdsHojRutDetTelf.RecordCount > 0 THEN pplblTelefonos.Caption := cdsHojRutDetTelf.fieldbyname('TELEFONOS').AsString;

  (* SALDOS *)
  pplblSaldoVencido.Caption        := '';
  pplblCuotasSaldoVencido.Caption  := '';
  pplblSaldoDiferido.Caption       := '';
  pplblCuotasSaldoDiferido.Caption := '';
  pplblCuotasPactadas.Caption      := '';
  pplblValorCuota.Caption          := '';
  cdsHojRutDetSaldos.Filtered := false;
  cdsHojRutDetSaldos.Filter   := 'ASOID = ' + DM1.cdsReporte.fieldbyname('ASOID').AsString;
  cdsHojRutDetSaldos.Filtered := true;
  IF cdsHojRutDetSaldos.RecordCount > 0 THEN
  BEGIN
    pplblSaldoVencido.Caption        := FormatFloat('###,##0.#0', cdsHojRutDetSaldos.fieldbyname('SALVEN_MTO').Value);
    pplblCuotasSaldoVencido.Caption  := FormatFloat('###,##0'   , cdsHojRutDetSaldos.fieldbyname('SALVEN_CANT_CUOTAS').Value);
    pplblSaldoDiferido.Caption       := FormatFloat('###,##0.#0', cdsHojRutDetSaldos.fieldbyname('SALDIF_MTO').Value);
    pplblCuotasSaldoDiferido.Caption := FormatFloat('###,##0'   , cdsHojRutDetSaldos.fieldbyname('SALDIF_CANT_CUOTAS').Value);
    pplblCuotasPactadas.Caption      := FormatFloat('###,##0'   , cdsHojRutDetSaldos.fieldbyname('PACTADAS').Value);
    pplblValorCuota.Caption          := FormatFloat('###,##0.#0', cdsHojRutDetSaldos.fieldbyname('VALOR_CUOTA').Value);
  END;

  (* ULTIMOS TRES DESCARGOS *)
  pplblUltDescargos_Des_01.Caption := '';
  pplblUltDescargos_Mto_01.Caption := '';
  pplblUltDescargos_Des_02.Caption := '';
  pplblUltDescargos_Mto_02.Caption := '';
  pplblUltDescargos_Des_03.Caption := '';
  pplblUltDescargos_Mto_03.Caption := '';

  cdsHojRutDetDescargos.Filtered := false;
  cdsHojRutDetDescargos.Filter   := 'ASOID = ' + DM1.cdsReporte.fieldbyname('ASOID').AsString;
  cdsHojRutDetDescargos.Filtered := true;
  xnCont := 0;
  while not cdsHojRutDetDescargos.eof do
  begin
    xnCont := xnCont + 1;
    if xnCont = 1 then
      begin
         pplblUltDescargos_Des_01.Caption := cdsHojRutDetDescargos.fieldbyname('DESCRIPCION').AsString;
         pplblUltDescargos_Mto_01.Caption := cdsHojRutDetDescargos.fieldbyname('MONTO').AsString;
      end;
    if xnCont = 2 then
      begin
         pplblUltDescargos_Des_02.Caption := cdsHojRutDetDescargos.fieldbyname('DESCRIPCION').AsString;
         pplblUltDescargos_Mto_02.Caption := cdsHojRutDetDescargos.fieldbyname('MONTO').AsString;
      end;
    if xnCont = 3 then
      begin
         pplblUltDescargos_Des_03.Caption := cdsHojRutDetDescargos.fieldbyname('DESCRIPCION').AsString;
         pplblUltDescargos_Mto_03.Caption := cdsHojRutDetDescargos.fieldbyname('MONTO').AsString;
      end;
    cdsHojRutDetDescargos.next;
  end;



  (* ULTIMOS TRES PAGOS *)
  pplblUltPagosDirectos_Des_01.Caption := '';
  pplblUltPagosDirectos_Mto_01.Caption := '';
  pplblUltPagosDirectos_Des_02.Caption := '';
  pplblUltPagosDirectos_Mto_02.Caption := '';
  pplblUltPagosDirectos_Des_03.Caption := '';
  pplblUltPagosDirectos_Mto_03.Caption := '';
  cdsHojRutDetPagos.Filtered := false;
  cdsHojRutDetPagos.Filter   := 'ASOID = ' + DM1.cdsReporte.fieldbyname('ASOID').AsString;
  cdsHojRutDetPagos.Filtered := true;
  xnCont := 0;
  while not cdsHojRutDetPagos.eof do
  begin
    xnCont := xnCont + 1;
    if xnCont = 1 then
      begin
         pplblUltPagosDirectos_Des_01.Caption := cdsHojRutDetPagos.fieldbyname('DESCRIPCION').AsString;
         pplblUltPagosDirectos_Mto_01.Caption := cdsHojRutDetPagos.fieldbyname('MONTO').AsString;
      end;
    if xnCont = 2 then
      begin
         pplblUltPagosDirectos_Des_02.Caption := cdsHojRutDetPagos.fieldbyname('DESCRIPCION').AsString;
         pplblUltPagosDirectos_Mto_02.Caption := cdsHojRutDetPagos.fieldbyname('MONTO').AsString;
      end;
    if xnCont = 3 then
      begin
         pplblUltPagosDirectos_Des_03.Caption := cdsHojRutDetPagos.fieldbyname('DESCRIPCION').AsString;
         pplblUltPagosDirectos_Mto_03.Caption := cdsHojRutDetPagos.fieldbyname('MONTO').AsString;
      end;
    cdsHojRutDetPagos.next;
  end;

     (* ULTIMAS GESTIONES *)
  pplblGesNum_01.Caption := '';
  pplblGesNum_02.Caption := '';
  pplblGesNum_03.Caption := '';
  pplblGesNum_04.Caption := '';

  pplblGesTipo_01.Caption := '';
  pplblGesTipo_02.Caption := '';
  pplblGesTipo_03.Caption := '';
  pplblGesTipo_04.Caption := '';

  pplblGesResultado_01.Caption := '';
  pplblGesResultado_02.Caption := '';
  pplblGesResultado_03.Caption := '';
  pplblGesResultado_04.Caption := '';

  pplblGesGestionado_01.Caption := '';
  pplblGesGestionado_02.Caption := '';
  pplblGesGestionado_03.Caption := '';
  pplblGesGestionado_04.Caption := '';

  pplblGesFecHor_01.Caption := '';
  pplblGesFecHor_02.Caption := '';
  pplblGesFecHor_03.Caption := '';
  pplblGesFecHor_04.Caption := '';
  cdsHojRutDetGestiones.Filtered := false;
  cdsHojRutDetGestiones.Filter   := 'ASOID = ' + DM1.cdsReporte.fieldbyname('ASOID').AsString;
  cdsHojRutDetGestiones.Filtered := true;
  xnCont := 0;
  while not cdsHojRutDetGestiones.eof do
  begin
    xnCont := xnCont + 1;
    if xnCont = 1 then
      begin
         pplblGesNum_01.Caption := cdsHojRutDetGestiones.fieldbyname('NUMERO').AsString;
         pplblGesTipo_01.Caption := cdsHojRutDetGestiones.fieldbyname('TIPO').AsString;
         pplblGesResultado_01.Caption := cdsHojRutDetGestiones.fieldbyname('RESULTADO').AsString;
         pplblGesGestionado_01.Caption := cdsHojRutDetGestiones.fieldbyname('GESTIONADO').AsString;
         pplblGesFecHor_01.Caption := cdsHojRutDetGestiones.fieldbyname('FECHA_HORA').AsString;
      end;
    if xnCont = 2 then
      begin
         pplblGesNum_02.Caption := cdsHojRutDetGestiones.fieldbyname('NUMERO').AsString;
         pplblGesTipo_02.Caption := cdsHojRutDetGestiones.fieldbyname('TIPO').AsString;
         pplblGesResultado_02.Caption := cdsHojRutDetGestiones.fieldbyname('RESULTADO').AsString;
         pplblGesGestionado_02.Caption := cdsHojRutDetGestiones.fieldbyname('GESTIONADO').AsString;
         pplblGesFecHor_02.Caption := cdsHojRutDetGestiones.fieldbyname('FECHA_HORA').AsString;
      end;
    if xnCont = 3 then
      begin
         pplblGesNum_03.Caption := cdsHojRutDetGestiones.fieldbyname('NUMERO').AsString;
         pplblGesTipo_03.Caption := cdsHojRutDetGestiones.fieldbyname('TIPO').AsString;
         pplblGesResultado_03.Caption := cdsHojRutDetGestiones.fieldbyname('RESULTADO').AsString;
         pplblGesGestionado_03.Caption := cdsHojRutDetGestiones.fieldbyname('GESTIONADO').AsString;
         pplblGesFecHor_03.Caption := cdsHojRutDetGestiones.fieldbyname('FECHA_HORA').AsString;
      end;
    if xnCont = 4 then
      begin
         pplblGesNum_04.Caption := cdsHojRutDetGestiones.fieldbyname('NUMERO').AsString;
         pplblGesTipo_04.Caption := cdsHojRutDetGestiones.fieldbyname('TIPO').AsString;
         pplblGesResultado_04.Caption := cdsHojRutDetGestiones.fieldbyname('RESULTADO').AsString;
         pplblGesGestionado_04.Caption := cdsHojRutDetGestiones.fieldbyname('GESTIONADO').AsString;
         pplblGesFecHor_04.Caption := cdsHojRutDetGestiones.fieldbyname('FECHA_HORA').AsString;
      end;
    cdsHojRutDetGestiones.next;
  end;
  Screen.Cursor := crDefault;
end;
(******************************************************************************)
PROCEDURE TfGestInt.fn_calcular_indicadores();
var xsSQL : string;
BEGIN
  xsSQL := 'SELECT SUM(1) CANT_ASIGNADOS '
         + '      ,SUM(CASE WHEN GESTIONADO =  ''GESTIONADO'' THEN 1 ELSE 0 END)  CANT_GESTIONADO '
         + '      ,SUM(CASE WHEN GESTIONADO = ''NO GESTIONADO'' THEN 1 ELSE 0 END)  CANT_NO_GESTIONADO '
         + '      ,SUM(CASE WHEN GESTIONADO =  ''GESTIONADO'' AND CONTACTADO = ''S'' THEN 1 ELSE 0 END)  CANT_CONTACTADO '
         + '      ,SUM(CASE WHEN GESTIONADO =  ''GESTIONADO'' AND CONTACTADO = ''N'' THEN 1 ELSE 0 END)  CANT_NO_CONTACTADO '
         + '      ,SUM(CASE WHEN GESTIONADO =  ''GESTIONADO'' AND CONTACTADO = ''S'' AND COMPROMISO_PAGO = ''CON COMPROMISO'' THEN 1 ELSE 0 END)  CANT_CON_COMPROMISO '
         + '      ,SUM(CASE WHEN GESTIONADO =  ''GESTIONADO'' AND CONTACTADO = ''S'' AND COMPROMISO_PAGO = ''SIN COMPROMISO'' THEN 1 ELSE 0 END)  CANT_SIN_COMPROMISO '
         + '      ,SUM(CASE WHEN GESTIONADO =  ''GESTIONADO'' AND CONTACTADO = ''S'' AND COMPROMISO_PAGO = ''CON COMPROMISO'' AND ESTADO_ACUERDO = ''CUMPLIDO''   THEN 1 ELSE 0 END)   CANT_CUMPLIDOS '
         + '      ,SUM(CASE WHEN GESTIONADO =  ''GESTIONADO'' AND CONTACTADO = ''S'' AND COMPROMISO_PAGO = ''CON COMPROMISO'' AND ESTADO_ACUERDO = ''INCUMPLIDO'' THEN 1 ELSE 0 END)   CANT_INCUMPLIDOS '
         + '      ,SUM(CASE WHEN GESTIONADO =  ''GESTIONADO'' AND CONTACTADO = ''S'' AND COMPROMISO_PAGO = ''CON COMPROMISO'' AND (ESTADO_ACUERDO = ''MUY PROXIMO VENCER'' OR ESTADO_ACUERDO = ''PROXIMO VENCER'') THEN 1 ELSE 0 END) CANT_POR_VENCER '
         + '  FROM (SELECT GESTIONADO '
         + '              ,COMPROMISO_PAGO '
         + '              ,CASE WHEN MONTO_PAGADO > 0 THEN ''CUMPLIDO'' '
         + '                    WHEN (MONTO_PAGADO = 0) AND (TRUNC(SYSDATE) > FECHA_COMPROMISO) THEN ''INCUMPLIDO'' '
         + '                    WHEN (MONTO_PAGADO = 0) AND (TRUNC(SYSDATE) BETWEEN (FECHA_COMPROMISO - 3) AND FECHA_COMPROMISO) THEN ''MUY PROXIMO VENCER'' '
         + '                    WHEN (MONTO_PAGADO = 0) AND (TRUNC(SYSDATE) < (FECHA_COMPROMISO - 3)) THEN ''PROXIMO VENCER'' '
         + '               END ESTADO_ACUERDO '
         + '              ,CASE WHEN MONTO_PAGADO > 0 THEN 1 ELSE 0 END CANT_CUMPLIDOS '
         + '              ,CASE WHEN (MONTO_PAGADO = 0) AND (TRUNC(SYSDATE) > FECHA_COMPROMISO) THEN 1 ELSE 0 END CANT_INCUMPLIDOS '
         + '              ,CASE WHEN (MONTO_PAGADO = 0) AND (TRUNC(SYSDATE) BETWEEN (FECHA_COMPROMISO - 3) AND FECHA_COMPROMISO) THEN 1 ELSE 0 END CANT_MUY_PROX_INCUMPLIR '
         + '              ,CASE WHEN (MONTO_PAGADO = 0) AND (TRUNC(SYSDATE) < (FECHA_COMPROMISO - 3)) THEN 1 ELSE 0 END CANT_PROX_INCUMPLIR '
         + '              ,CONTACTADO '
         + '          FROM (SELECT A.USUARIO '
         + '                      ,CASE WHEN B.ASOID IS NOT NULL THEN ''GESTIONADO'' ELSE ''NO GESTIONADO'' END GESTIONADO '
         + '                      ,CASE WHEN G.ASOID IS NOT NULL THEN ''CON COMPROMISO'' ELSE ''SIN COMPROMISO'' END COMPROMISO_PAGO '
         + '                      ,G.FEC_COMPROMISO FECHA_COMPROMISO '
         + '                      ,NVL((SELECT SUM(CREMTOCOB) MONTO_PAGADO '
         + '                             FROM CRE310 C '
         + '                            WHERE CREESTID NOT IN (''23'', ''04'', ''13'', ''99'') '
         + '                              AND FORPAGID IN (''02'', ''03'') '
         + '                              AND FREG BETWEEN G.FEC_CONTACTO AND LAST_DAY(ADD_MONTHS(TO_DATE('+QuotedStr(xsPeriodoGestionActual)+', ''YYYYMM''), 1)) '
         + '                              AND ASOID = A.ASOID), 0) MONTO_PAGADO '
         + '                      ,H.CONTACTADO '
         + '                  FROM (SELECT PERIODO, USUARIO, ASOID '
         + '                          FROM GES_COB_DOM '
         + '                         WHERE CODIGO_REGLA IS NOT NULL AND PERIODO = ' + QuotedStr(xsPeriodoGestionActual)
         + '                        UNION ALL '
         + '                        SELECT PERIODO, USUARIO, ASOID '
         + '                          FROM GES_COB_DOM_HIS '
         + '                         WHERE CODIGO_REGLA IS NOT NULL AND PERIODO = ' + QuotedStr(xsPeriodoGestionActual)
         + '                           AND NVL(ASIGNADO, ''S'') = ''S'') A '
         + '                      ,(SELECT A.PERIODO, A.USUARIO, A.ASOID '
         + '                              ,DENSE_RANK() OVER(PARTITION BY A.PERIODO, A.ASOID ORDER BY A.NROGEST DESC, A.FECHA DESC, TO_DATE(A.HORA, ''HH24:MI:SS'') DESC) DNRK '
         + '                          FROM GES_COB_SEG     A, GES_REF_SEG     B, GES_REF_SEG_DET C '
         + '                         WHERE A.PERIODO = ' + QuotedStr(xsPeriodoGestionActual)
         + '                           AND A.IDGESTION = B.IDGTN(+) '
         + '                           AND A.IDGESTION = C.IDGTN(+) '
         + '                           AND A.IDGESTIONDET = C.IDGTNDET(+)) B '
         + '                      ,(SELECT PERIODO, ASOID, FEC_COMPROMISO, FEC_CONTACTO, GESTOR USUARIO '
         + '                              ,DENSE_RANK() OVER(PARTITION BY ASOID ORDER BY FEC_COMPROMISO DESC, FREG DESC) DNRK '
         + '                          FROM GES_COB_COMPROMISO '
         + '                         WHERE COMPROMISO = ''S'' '
         + '                           AND PERIODO = ' + QuotedStr(xsPeriodoGestionActual) + ') G '
         + '                      ,(SELECT A.PERIODO, A.USUARIO, A.ASOID, MAX(NVL(B.CONTACTADO, ''N'')) CONTACTADO /* S SIEMPRE SERA MAYOR QUE N */ '
         + '                          FROM GES_COB_SEG     A '
         + '                              ,GES_REF_SEG_DET B '
         + '                         WHERE A.PERIODO = ' + QuotedStr(xsPeriodoGestionActual)
         + '                           AND A.IDGESTION = B.IDGTN(+) '
         + '                           AND A.IDGESTIONDET = B.IDGTNDET(+) '
         + '                        GROUP BY A.PERIODO, A.USUARIO, A.ASOID) H '
         + '                 WHERE A.USUARIO = ' + QuotedStr(dblUserInt.Text)
         + '                   AND A.PERIODO = B.PERIODO(+) '
         + '                   AND A.USUARIO = B.USUARIO(+) '
         + '                   AND A.ASOID   = B.ASOID(+) '
         + '                   AND 1         = B.DNRK(+) '
         + '                   AND A.PERIODO = G.PERIODO(+) '
         + '                   AND A.USUARIO = G.USUARIO(+) '
         + '                   AND 1         = G.DNRK(+) '
         + '                   AND A.ASOID   = G.ASOID(+) '
         + '                   AND A.PERIODO = H.PERIODO(+) '
         + '                   AND A.USUARIO = H.USUARIO(+)'
         + '                   AND A.ASOID   = H.ASOID(+) ) '
         + ') ';
  DM1.cdsQry.Close;
  DM1.cdsQry.DataRequest(xsSQL);
  DM1.cdsQry.Open;

  lblIndDeudoresAsignados.Caption := DM1.cdsQry.fieldbyname('CANT_ASIGNADOS').AsString;
  lblIndGestionados.Caption := DM1.cdsQry.fieldbyname('CANT_GESTIONADO').AsString;
  lblIndNoGestionados.Caption := DM1.cdsQry.fieldbyname('CANT_NO_GESTIONADO').AsString;
  lblIndContactados.Caption := DM1.cdsQry.fieldbyname('CANT_CONTACTADO').AsString;
  lblIndNoContactados.Caption := DM1.cdsQry.fieldbyname('CANT_NO_CONTACTADO').AsString;
  lblIndConCompromisos.Caption := DM1.cdsQry.fieldbyname('CANT_CON_COMPROMISO').AsString;
  lblIndSinCompromisos.Caption := DM1.cdsQry.fieldbyname('CANT_SIN_COMPROMISO').AsString;
  lblIndCumplidos.Caption := DM1.cdsQry.fieldbyname('CANT_CUMPLIDOS').AsString;
  lblIndInCumplidos.Caption := DM1.cdsQry.fieldbyname('CANT_INCUMPLIDOS').AsString;
  lblIndProxVencer.Caption := DM1.cdsQry.fieldbyname('CANT_POR_VENCER').AsString;

END;
(******************************************************************************)

procedure TfGestInt.ppDBText32GetText(Sender: TObject; var Text: String);
begin
    Text := AnsiLeftStr(Text,1);
end;
(******************************************************************************)
procedure TfGestInt.btnContactabilidadClick(Sender: TObject);
VAR xbmRegistro : TBookmark;
begin
   xbmRegistro := DM1.cdsQry13.GetBookmark;
   Try
      fMasDatos := TfMasDatos.create(Self);
      fMasDatos.xsAsoId := DM1.cdsQry13.fieldbyname('ASOID').AsString;
      fMasDatos.ShowModal;
   Finally
      fMasDatos.Free;
   End;
   fn_cargar_hoja_ruta_dia();
   DM1.cdsQry13.GotoBookmark(xbmRegistro);
end;
(******************************************************************************)
// FIN : SPP_201402_GESCOB
End.
