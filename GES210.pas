// Inicio Uso Estándares: 01/08/2011
// Unidad : Gestión de Cobranzas
// Formulario : fGestExt
// Fecha de Creación :
// Autor : Equipo de Sistemas
// Objetivo :  visualizar el progreso de las gestiones externas
// Actualizaciones:
// HPC_201205_GESCOB 09/04/2012 validar el ingreso y la anulacion de los registros en la importacion de gestiones externas
// DPP_201205_GESCOB: Pase a producción a partir de los pases HPC_201205 y HPC_201206
// HPC_201209_GESCOB(F3) 22/10/2012 IMPLEMENTAR NEGOCIACION Y COMPROMISO DE PAGO
// SPP_201401_GESCOB: Importacion masiva interna y Mejoras del proceso de priorizacion
// SPP_201401_GESCOB: Se realiza el pase a producción a partir del HPC_201401_GESCOB
// HPC_201402_GESCOB : Mantenimiento a la gestion interna(filtros por domicilio y colegio) (1.1)
//                     crear el detalle historico de movimientos y gestiones de cobranza   (1.2)
//                     Incluir la distribucion de gestiones: asignadas, gestionadas, contactadas y cerrada por gestor (1.6)
//                     mantenimiento a la gestion interna (filtros domicilio y colegio)    (1.8)
// SPP_201402_GESCOB : Se realiza el pase a producción a partir del HPC_201402_GESCOB

Unit GES210;

Interface

Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, Buttons, ExtCtrls, Grids, Wwdbigrd, Wwdbgrid, wwdblook, Db,
   fcButton, fcImgBtn, fcShapeBtn, Mask, wwdbedit, Spin, Gauges, ComCtrls,
   DBGrids, wwclient, Wwdatsrc, DBClient, ppEndUsr, ppParameter, ppCtrls,
   ppBands, ppClass, ppVar, ppPrnabl, ppCache, ppProd, ppReport, ppComm,
   ppRelatv, ppDB, ppDBPipe, ppMemo, ppStrtch, ppSubRpt, Wwdbdlg, DBTables,
   ppRichTx;

Type
   TfGestExt = Class(TForm)
      GroupBox1: TGroupBox;
      BitSalir: TBitBtn;
      lblSeleccion: TLabel;
      Label7: TLabel;
      lblRotulo: TLabel;
      dtgData: TDBGrid;
      PageControl1: TPageControl;
      TabSheet1: TTabSheet;
      dtgGestion: TwwDBGrid;
      cdsH: TwwClientDataSet;
      dsH: TwwDataSource;
      sdGraba: TSaveDialog;
      Memo1: TMemo;
      sdGraba300: TSaveDialog;
      cdsPlanilla: TwwClientDataSet;
      dsPlanilla: TwwDataSource;
      DBGestiones: TppDBPipeline;
      ppr1: TppReport;
      ppHeaderBand1: TppHeaderBand;
      ppShape1: TppShape;
      ppLabel1: TppLabel;
      ppLabel2: TppLabel;
      ppLabel3: TppLabel;
      ppLabel4: TppLabel;
      ppLabel5: TppLabel;
      ppLabel6: TppLabel;
      ppLabel7: TppLabel;
      ppLabel8: TppLabel;
      ppLabel9: TppLabel;
      ppLabel10: TppLabel;
      ppLabel11: TppLabel;
      ppLabel12: TppLabel;
      ppLine1: TppLine;
      ppLine2: TppLine;
      ppLine3: TppLine;
      ppLine4: TppLine;
      ppLine5: TppLine;
      ppLabel13: TppLabel;
      ppSystemVariable1: TppSystemVariable;
      ppSystemVariable2: TppSystemVariable;
      ppLabel14: TppLabel;
      ppLabel15: TppLabel;
      ppLabel16: TppLabel;
      ppLabel19: TppLabel;
      LblGestorC: TppLabel;
      ppSystemVariable3: TppSystemVariable;
      ppDetailBand1: TppDetailBand;
      ppDBText1: TppDBText;
      ppDBText2: TppDBText;
      ppDBText3: TppDBText;
      ppDBText4: TppDBText;
      ppDBText5: TppDBText;
      ppDBText6: TppDBText;
      ppDBText7: TppDBText;
      ppDBText8: TppDBText;
      ppFooterBand1: TppFooterBand;
      ppSummaryBand1: TppSummaryBand;
      ppGroup1: TppGroup;
      ppGroupHeaderBand1: TppGroupHeaderBand;
      ppGroupFooterBand1: TppGroupFooterBand;
      ppShape2: TppShape;
      ppDBCalc1: TppDBCalc;
      ppLabel18: TppLabel;
      ppLabel21: TppLabel;
      LblGestorF: TppLabel;
      ppParameterList1: TppParameterList;
      ppd1: TppDesigner;
      pprCaPre0: TppReport;
      ppHeaderBand3: TppHeaderBand;
      ppDetailBand4: TppDetailBand;
      ppSubReport2: TppSubReport;
      ppChildReport2: TppChildReport;
      ppTitleBand2: TppTitleBand;
      ppImage2: TppImage;
      ppLabel43: TppLabel;
      ppLabel44: TppLabel;
      ppLine7: TppLine;
      ppLabel45: TppLabel;
      ppDetailBand5: TppDetailBand;
      ppLabel46: TppLabel;
      ppLabel48: TppLabel;
      ppLabel49: TppLabel;
      ppLabel50: TppLabel;
      ppLabel51: TppLabel;
      ppLabel52: TppLabel;
      ppLabel53: TppLabel;
      ppLabel54: TppLabel;
      ppMemo4: TppMemo;
      ppMemo5: TppMemo;
      ppLabel55: TppLabel;
      ppLabel56: TppLabel;
      ppLabel57: TppLabel;
      ppLabel60: TppLabel;
      ppLabel61: TppLabel;
      ppLabel62: TppLabel;
      ppLabel63: TppLabel;
      ppLabel64: TppLabel;
      ppDBText15: TppDBText;
      ppDBText17: TppDBText;
      pplDist1: TppLabel;
      pplProv1: TppLabel;
      pplDpto1: TppLabel;
      pplDir1: TppLabel;
      ppLabel65: TppLabel;
      ppLabel167: TppLabel;
      pplGestor1: TppLabel;
      ppLabel47: TppLabel;
      ppSystemVariable8: TppSystemVariable;
      ppSummaryBand3: TppSummaryBand;
      ppmOfides1: TppMemo;
      ppLabel166: TppLabel;
      ppFooterBand3: TppFooterBand;
      ppParameterList2: TppParameterList;
      ppdbC1: TppDBPipeline;
      pprCare1: TppReport;
      ppHeaderBand2: TppHeaderBand;
      ppDetailBand2: TppDetailBand;
      ppSubReport1: TppSubReport;
      ppChildReport1: TppChildReport;
      ppTitleBand1: TppTitleBand;
      ppImage1: TppImage;
      ppLabel17: TppLabel;
      ppLabel20: TppLabel;
      ppLine6: TppLine;
      ppLabel42: TppLabel;
      ppDetailBand3: TppDetailBand;
      ppLabel23: TppLabel;
      ppLabel29: TppLabel;
      ppLabel30: TppLabel;
      ppMemo2: TppMemo;
      ppSystemVariable4: TppSystemVariable;
      ppLabel89: TppLabel;
      ppLabel90: TppLabel;
      ppLabel91: TppLabel;
      ppLabel92: TppLabel;
      ppLabel93: TppLabel;
      ppLabel94: TppLabel;
      ppLabel95: TppLabel;
      ppMemo1: TppMemo;
      ppLabel22: TppLabel;
      ppLabel24: TppLabel;
      ppLabel25: TppLabel;
      ppLabel26: TppLabel;
      ppLabel27: TppLabel;
      ppLabel28: TppLabel;
      ppLabel37: TppLabel;
      ppLabel38: TppLabel;
      ppLabel39: TppLabel;
      ppLabel40: TppLabel;
      ppLabel41: TppLabel;
      ppDBText9: TppDBText;
      ppDBText10: TppDBText;
      pplDist2: TppLabel;
      pplProv2: TppLabel;
      pplDpto2: TppLabel;
      pplDir2: TppLabel;
      ppmOfides2: TppMemo;
      ppLabel31: TppLabel;
      ppLabel32: TppLabel;
      ppLabel33: TppLabel;
      pplCreRef: TppLabel;
      pplFecRef: TppLabel;
      ppLabel170: TppLabel;
      ppLabel36: TppLabel;
      pplGestor2: TppLabel;
      ppSummaryBand2: TppSummaryBand;
      ppLabel34: TppLabel;
      ppLabel96: TppLabel;
      ppLabel97: TppLabel;
      ppFooterBand2: TppFooterBand;
      ppdC1: TppDesigner;
      pprCare2: TppReport;
      ppHeaderBand4: TppHeaderBand;
      ppDetailBand6: TppDetailBand;
      ppSubReport3: TppSubReport;
      ppChildReport3: TppChildReport;
      ppTitleBand3: TppTitleBand;
      ppShape3: TppShape;
      ppImage3: TppImage;
      ppLabel66: TppLabel;
      ppLabel67: TppLabel;
      ppLabel68: TppLabel;
      ppLabel79: TppLabel;
      ppDetailBand7: TppDetailBand;
      ppLabel70: TppLabel;
      ppLabel76: TppLabel;
      ppLabel77: TppLabel;
      ppSystemVariable5: TppSystemVariable;
      ppLabel85: TppLabel;
      ppLabel86: TppLabel;
      ppLabel87: TppLabel;
      ppLabel88: TppLabel;
      ppLabel98: TppLabel;
      ppLabel99: TppLabel;
      ppLabel100: TppLabel;
      ppLabel107: TppLabel;
      ppLabel108: TppLabel;
      ppLabel109: TppLabel;
      ppLabel110: TppLabel;
      ppLabel111: TppLabel;
      ppLabel112: TppLabel;
      ppMemo7: TppMemo;
      ppLabel69: TppLabel;
      ppLabel71: TppLabel;
      ppLabel72: TppLabel;
      ppLabel73: TppLabel;
      ppLabel74: TppLabel;
      ppLabel75: TppLabel;
      ppLabel80: TppLabel;
      ppLabel81: TppLabel;
      ppLabel82: TppLabel;
      ppLabel83: TppLabel;
      ppLabel84: TppLabel;
      ppDBText11: TppDBText;
      ppDBText12: TppDBText;
      pplDist3: TppLabel;
      pplProv3: TppLabel;
      pplDpto3: TppLabel;
      pplDir3: TppLabel;
      ppLabel35: TppLabel;
      ppLabel58: TppLabel;
      ppLabel59: TppLabel;
      ppLabel172: TppLabel;
      pplGestor3: TppLabel;
      ppSummaryBand4: TppSummaryBand;
      ppLabel103: TppLabel;
      ppLabel105: TppLabel;
      ppLabel106: TppLabel;
      ppmOfides3: TppMemo;
      ppLabel78: TppLabel;
      ppFooterBand4: TppFooterBand;
      pprCave1: TppReport;
      ppHeaderBand5: TppHeaderBand;
      ppDetailBand8: TppDetailBand;
      ppSubReport4: TppSubReport;
      ppChildReport4: TppChildReport;
      ppTitleBand4: TppTitleBand;
      ppImage4: TppImage;
      ppLabel113: TppLabel;
      ppLabel114: TppLabel;
      ppLabel115: TppLabel;
      ppDetailBand9: TppDetailBand;
      ppLabel118: TppLabel;
      ppLabel124: TppLabel;
      ppLabel125: TppLabel;
      ppSystemVariable6: TppSystemVariable;
      ppLabel133: TppLabel;
      ppMemo8: TppMemo;
      ppLabel116: TppLabel;
      ppLabel132: TppLabel;
      ppLabel134: TppLabel;
      ppMemo11: TppMemo;
      ppMemo12: TppMemo;
      ppLabel117: TppLabel;
      ppLabel119: TppLabel;
      ppLabel120: TppLabel;
      ppLabel121: TppLabel;
      ppLabel122: TppLabel;
      ppLabel123: TppLabel;
      ppLabel127: TppLabel;
      ppLabel128: TppLabel;
      ppLabel129: TppLabel;
      ppLabel130: TppLabel;
      ppLabel131: TppLabel;
      ppDBText13: TppDBText;
      ppDBText14: TppDBText;
      pplDist4: TppLabel;
      pplProv4: TppLabel;
      pplDpto4: TppLabel;
      pplDir4: TppLabel;
      ppLabel101: TppLabel;
      ppLabel102: TppLabel;
      ppLabel104: TppLabel;
      ppLabel173: TppLabel;
      pplGestor4: TppLabel;
      pplCredito: TppLabel;
      ppSummaryBand5: TppSummaryBand;
      ppLabel147: TppLabel;
      ppLabel149: TppLabel;
      ppLabel150: TppLabel;
      ppLabel135: TppLabel;
      ppmOfides4: TppMemo;
      ppFooterBand5: TppFooterBand;
      pprCave2: TppReport;
      ppHeaderBand6: TppHeaderBand;
      ppDetailBand10: TppDetailBand;
      ppSubReport5: TppSubReport;
      ppChildReport5: TppChildReport;
      ppTitleBand5: TppTitleBand;
      ppShape4: TppShape;
      ppImage5: TppImage;
      ppLabel136: TppLabel;
      ppLabel137: TppLabel;
      ppLabel138: TppLabel;
      ppLabel139: TppLabel;
      ppDetailBand11: TppDetailBand;
      ppLabel141: TppLabel;
      ppLabel152: TppLabel;
      ppLabel153: TppLabel;
      ppSystemVariable7: TppSystemVariable;
      ppLabel160: TppLabel;
      ppLabel161: TppLabel;
      ppLabel162: TppLabel;
      ppLabel163: TppLabel;
      ppLabel164: TppLabel;
      ppLabel165: TppLabel;
      ppLabel168: TppLabel;
      ppLabel169: TppLabel;
      ppLabel171: TppLabel;
      ppMemo13: TppMemo;
      ppLabel140: TppLabel;
      ppLabel142: TppLabel;
      ppLabel143: TppLabel;
      ppLabel144: TppLabel;
      ppLabel148: TppLabel;
      ppLabel151: TppLabel;
      ppLabel155: TppLabel;
      ppLabel156: TppLabel;
      ppLabel157: TppLabel;
      ppLabel158: TppLabel;
      ppLabel159: TppLabel;
      ppDBText16: TppDBText;
      ppDBText18: TppDBText;
      pplDist5: TppLabel;
      pplProv5: TppLabel;
      pplDpto5: TppLabel;
      pplDir5: TppLabel;
      ppLabel126: TppLabel;
      ppLabel145: TppLabel;
      ppLabel146: TppLabel;
      ppLabel174: TppLabel;
      pplGestor5: TppLabel;
      ppSummaryBand6: TppSummaryBand;
      ppLabel175: TppLabel;
      ppLabel177: TppLabel;
      ppLabel178: TppLabel;
      ppmOfides5: TppMemo;
      ppLabel154: TppLabel;
      ppFooterBand6: TppFooterBand;
      ppdLog: TppDesigner;
      pprLog: TppReport;
      ppHeaderBand7: TppHeaderBand;
      ppLabel176: TppLabel;
      ppDBText24: TppDBText;
      ppLabel179: TppLabel;
      ppLabel180: TppLabel;
      ppDBText25: TppDBText;
      ppLine8: TppLine;
      ppLine9: TppLine;
      ppLabel181: TppLabel;
      ppLabel182: TppLabel;
      ppLabel183: TppLabel;
      ppLabel184: TppLabel;
      ppLabel185: TppLabel;
      ppLabel186: TppLabel;
      ppLabel187: TppLabel;
      ppDetailBand12: TppDetailBand;
      ppDBText19: TppDBText;
      ppDBText21: TppDBText;
      ppDBText22: TppDBText;
      ppDBCalc2: TppDBCalc;
      ppDBText23: TppDBText;
      ppDBText26: TppDBText;
      ppDBText20: TppDBText;
      ppFooterBand7: TppFooterBand;
      ppSummaryBand7: TppSummaryBand;
      ppLine10: TppLine;
      ppParameterList3: TppParameterList;
      ppdbLog: TppDBPipeline;
      bbtnDesmarcar: TBitBtn;
      pcPie: TPageControl;
      TabSheet4: TTabSheet;
      Bevel1: TBevel;
      Bevel2: TBevel;
      grpBusAso: TGroupBox;
      z2bbtnBuscar: TfcShapeBtn;
      edtBuscar: TEdit;
      BitBtn1: TBitBtn;
      BitExporta: TBitBtn;
      BitObsEsp: TBitBtn;
      BitBuscar: TBitBtn;
      bbtnTexto: TBitBtn;
      bbtnImporta: TBitBtn;
      ChkIndidual2: TCheckBox;
      bbtnImportacionMasiva: TBitBtn;
      bbtnLogImportacion: TBitBtn;
      tsCartas: TTabSheet;
      Label22: TLabel;
      rgCarta: TRadioGroup;
      BitBtn7: TBitBtn;
      bbtnExpCarta: TBitBtn;
      BitBtn2: TBitBtn;
      ChkIndidual: TCheckBox;
      dblcResponsable: TwwDBLookupComboDlg;
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
      pnlCab: TPanel;
      BitFiltrar: TBitBtn;
      Panel5: TPanel;
      lblRegistros: TLabel;
      pnlCab2: TPanel;
      Shape1: TShape;
      lblGestor: TLabel;
      Bevel8: TBevel;
      Bevel11: TBevel;
      Bevel10: TBevel;
      Bevel12: TBevel;
      Bevel13: TBevel;
      Bevel14: TBevel;
      pnlUser: TPanel;
      EdtUserNom: TEdit;
      dblUserExt: TwwDBLookupCombo;
      dblcDpto: TwwDBLookupCombo;
      Panel7: TPanel;
      edtDpto: TEdit;
      dblcProvin: TwwDBLookupCombo;
      Panel8: TPanel;
      edtProvin: TEdit;
      dblcDist: TwwDBLookupCombo;
      Panel9: TPanel;
      edtDist: TEdit;
      rgRefinanciados: TRadioGroup;
      Panel12: TPanel;
      Label21: TLabel;
      Panel10: TPanel;
      EdtCalifica: TEdit;
      dblcCalifica: TwwDBLookupCombo;
      pDias: TPanel;
      Label12: TLabel;
      Label13: TLabel;
      Label1: TLabel;
      Label20: TLabel;
      SpInicio: TSpinEdit;
      SpFin: TSpinEdit;
      ChkAntiguedad: TCheckBox;
      Panel11: TPanel;
      Label2: TLabel;
      Label3: TLabel;
      Label4: TLabel;
      ChkRango: TCheckBox;
      pRango: TPanel;
      Label14: TLabel;
      Label15: TLabel;
      SpFin_R: TSpinEdit;
      chkSaldo: TCheckBox;
      pnlMontos: TPanel;
      Label17: TLabel;
      Label18: TLabel;
      Label19: TLabel;
      dbeMtoIni: TwwDBEdit;
      dbeMtoFin: TwwDBEdit;
      chkSaldoTotal: TCheckBox;
      rbGestion: TRadioGroup;
      pnlAcuerdos: TPanel;
      DtpCompromisos: TDateTimePicker;
      rgSitua: TRadioGroup;
      chbxCompromisos: TCheckBox;
      cdsHojaRuta: TClientDataSet;
      cdsHojaRutanro: TIntegerField;
      cdsHojaRutaModular: TStringField;
      cdsHojaRutaDomicilio: TStringField;
      cdsHojaRutaDistrito: TStringField;
      cdsHojaRutaAsociado: TStringField;
      dsHojaRuta: TDataSource;
      ppDBHojaRuta: TppDBPipeline;
      ppDBHojaRutappField1: TppField;
      ppDBHojaRutappField2: TppField;
      ppDBHojaRutappField3: TppField;
      ppDBHojaRutappField4: TppField;
      ppDBHojaRutappField5: TppField;
      pprHojaRuta: TppReport;
      ppHeaderBand8: TppHeaderBand;
      ppShape5: TppShape;
      ppLabel189: TppLabel;
      ppLabel190: TppLabel;
      ppLine12: TppLine;
      ppLine14: TppLine;
      ppLine15: TppLine;
      ppSystemVariable9: TppSystemVariable;
      ppSystemVariable10: TppSystemVariable;
      ppLabel202: TppLabel;
      ppLabel203: TppLabel;
      ppLabel204: TppLabel;
      ppLabel205: TppLabel;
      pplblGestor: TppLabel;
      ppSystemVariable11: TppSystemVariable;
      pplblSupervisor: TppLabel;
      ppLine11: TppLine;
      ppLabel191: TppLabel;
      ppLabel192: TppLabel;
      ppLabel193: TppLabel;
      ppLabel194: TppLabel;
      ppLabel195: TppLabel;
      ppLabel196: TppLabel;
      ppSystemVariable12: TppSystemVariable;
      ppLabel197: TppLabel;
      pplblUsuario: TppLabel;
      ppLabel198: TppLabel;
      ppLabel199: TppLabel;
      ppDetailBand13: TppDetailBand;
      ppDBText27: TppDBText;
      ppDBText28: TppDBText;
      ppDBText29: TppDBText;
      ppDBText30: TppDBText;
      ppDBText31: TppDBText;
      ppLine13: TppLine;
      ppLine17: TppLine;
      ppLine18: TppLine;
      ppLine19: TppLine;
      ppLine20: TppLine;
      ppLine21: TppLine;
      ppLine22: TppLine;
      ppFooterBand8: TppFooterBand;
      ppRichText1: TppRichText;
      ppLine16: TppLine;
      ppLabel207: TppLabel;
      ppSummaryBand8: TppSummaryBand;
      ppParameterList4: TppParameterList;
      ppdHojaRuta: TppDesigner;
      tsHojaRuta: TTabSheet;
      btnImpHojaRuta: TBitBtn;
      btnExpHojaRuta: TBitBtn;
      Procedure FormKeyPress(Sender: TObject; Var Key: Char);
      Procedure dtgGestionDrawDataCell(Sender: TObject; Const Rect: TRect;
         Field: TField; State: TGridDrawState);
      Procedure dtgGestionDrawFooterCell(Sender: TObject; Canvas: TCanvas;
         FooterCellRect: TRect; Field: TField; FooterText: String;
         Var DefaultDrawing: Boolean);
      Procedure dtgGestionDrawTitleCell(Sender: TObject; Canvas: TCanvas;
         Field: TField; Rect: TRect; Var DefaultDrawing: Boolean);
      Procedure FormActivate(Sender: TObject);
      Procedure BitFiltrarClick(Sender: TObject);
      Procedure dtgGestionDblClick(Sender: TObject);
      Procedure edtBuscarChange(Sender: TObject);
      Procedure edtBuscarKeyPress(Sender: TObject; Var Key: Char);
      Procedure BitBuscarClick(Sender: TObject);
      Procedure BitObsEspClick(Sender: TObject);
      Procedure BitResGesClick(Sender: TObject);
      Procedure BitExportaClick(Sender: TObject);
      Procedure PageControl1Change(Sender: TObject);
      Procedure dtgGestionTitleButtonClick(Sender: TObject;
         AFieldName: String);
      Procedure dblUserExtChange(Sender: TObject);
      Procedure BitBtn1Click(Sender: TObject);
      Procedure dblcDptoChange(Sender: TObject);
      Procedure dblcProvinChange(Sender: TObject);
      Procedure dblcDistChange(Sender: TObject);
      Procedure dblUserExtExit(Sender: TObject);
      Procedure dblcProvinEnter(Sender: TObject);
      Procedure dblcDistEnter(Sender: TObject);
      Procedure chkSaldoClick(Sender: TObject);
      Procedure chkSaldoTotalClick(Sender: TObject);
      Procedure dbeMtoIniExit(Sender: TObject);
      Procedure dbeMtoIniKeyPress(Sender: TObject; Var Key: Char);
      Procedure dbeMtoFinKeyPress(Sender: TObject; Var Key: Char);
      Procedure dbeMtoFinExit(Sender: TObject);
      Procedure rgRefinanciadosClick(Sender: TObject);
      Procedure rbGestionClick(Sender: TObject);
      Procedure ppDetailBand5BeforePrint(Sender: TObject);
      Procedure ppDetailBand3BeforePrint(Sender: TObject);
      Procedure ppDetailBand7BeforePrint(Sender: TObject);
      Procedure ppDetailBand9BeforePrint(Sender: TObject);
      Procedure ppDetailBand11BeforePrint(Sender: TObject);
      Procedure rgSituaClick(Sender: TObject);
      Procedure BitSalirClick(Sender: TObject);
      Procedure dblGestionDetChange(Sender: TObject);
      Procedure bbtnTextoClick(Sender: TObject);
      Procedure bbtnImportaClick(Sender: TObject);
      Procedure BitBtn7Click(Sender: TObject);
      Procedure bbtnDesmarcarClick(Sender: TObject);
      Procedure bbtnExpCartaClick(Sender: TObject);
      Procedure bbtnImportacionMasivaClick(Sender: TObject);
      Procedure bbtnLogImportacionClick(Sender: TObject);
      Procedure chbxCompromisosClick(Sender: TObject);
      Procedure btnExpHojaRutaClick(Sender: TObject);
      Procedure btnImpHojaRutaClick(Sender: TObject);
   Private
    { Private declarations }
      xMsgSeleccionarRegistros: String;
      xPeriodoCartera: String;
      nTabSheet: Integer;
      xfilterProv: String;
      xfilterDist: String;
      xfilter: String;
      xRefinanciado: String;
      xSQLin: String;
      xSituacion: String;
      xUsuarioGestor, xTabla: String;
      Procedure FootersGrid(nGrid: Integer);
      Procedure CreateCDSImp;
      Function BuscaNroGes(xAsoId: String): String;
      Function GnrNroGest: String;
      Procedure CreateCDSImpMasiva;
      Procedure CreateCDS2;
      Procedure GrabaTexto(Datos: TDatasource; Fichero: String; Delimitador: char);
      Procedure ApliPagos(xAsoId, xCreDid: String);
      Procedure HeadersGrid();
      Procedure Footers(xSQL: String);
      Function isGeneroDataHojaRuta: boolean;
   Public
    { Public declarations }
      xsPeriodoGestionActual : string;
      Procedure LimpiarGrid;
      Procedure MstCabecera(xAsoid, xPeriodo: String);
      Procedure CargaSaldo(xAsoid, xPeriodo: String);
      Procedure MstAsociados;
      Procedure GrabaEnvio(Sender: TObject);
      Function SaldoFinal(xAsoId: String): Currency;
      Procedure CerraGestion(xAsoId: String);
   End;

Var
   fGestExt: TfGestExt;

Implementation

Uses GESDM1, GES210a, GES203h, GES203j, GES203, GES210b, GES001,
   GES210c, StrUtils;

{$R *.dfm}

(******************************************************************************)
Procedure TfGestExt.FormActivate(Sender: TObject);
Var
   xSQL: String;
Begin

   xsPeriodoGestionActual :=  DM1.fn_get_periodo_gestion_actual();

   xMsgSeleccionarRegistros := 'Debe Seleccionar/Marcar registros' + chr(13) + 'Para Marcar/Desmarcar uno o mas registros: ' + chr(13) + 'Presione la Tecla Control y de clic en el registro que desea Marcar/Desmarcar';
   DtpCompromisos.Enabled := chbxCompromisos.Checked;
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

   xSQL := 'select MAX(PERIODO) PERIODO from GES_COB_CAB';
   DM1.cdsQry1.Close;
   DM1.cdsQry1.DataRequest(xSQL);
   DM1.cdsQry1.Open;

   xPeriodoCartera := DM1.cdsQry1.FieldByname('PERIODO').AsString;

   xSQL := 'select RESUMEID, RESUMEDES, DIASINI, DIASFIN from COB113';
   DM1.cdsUPro.Close;
   DM1.cdsUPro.DataRequest(xSQL);
   DM1.cdsUPro.Open;

   nTabSheet := 1;
   LimpiarGrid;
   DM1.xSgr := '00';
   lblRotulo.Caption := '';
   DtpCompromisos.Date := DM1.FechaSys;
   If StrToInt(Copy(DM1.NivelUsuario(DM1.wUsuario), 2, 1)) >= 2 Then
      Begin
         dtpInicio.Date := DM1.FechaSys;
         dtpFin.Date := DM1.FechaSys;
         dtpInicio.Visible := True;
         dtpFin.Visible := True;
         lblInicio.Visible := True;
         lblFin.Visible := True;
         lblTitulo.Visible := True;
         dblGestionDet.Visible := True;
         pnlResGes.Visible := True;
         BitResGes.Visible := True;
         BitExporta.Visible := True;
      End;
   BitExporta.Visible := True;

   If DM1.NivelUsuario(DM1.wUsuario) = 'N1' Then
      Caption := 'Gestión Externa - Cartera Vencida - Tipo : ' + DM1.CrgDescrip('IDACT=' + QuotedStr(DM1.CrgDescrip('USERID=' + QuotedStr(Trim(DM1.wUsuario)), 'GES_NIV_USU_OTO', 'TIPACT')), DM1.ConsultaActividad, 'DESACT')
   Else
      Caption := 'Gestión Externa';

   xSQL := 'SELECT IDENTEXT USERID,DESENTEXT USERNOM,REGACT FROM GES_TIP_USU_EXT WHERE REGACT=''S''  ';
   DM1.cdsQry5.Close;
   DM1.cdsQry5.DataRequest(xSQL);
   DM1.cdsQry5.Open;

   xSQL := 'SELECT IDGTN,IDGTNDET,DESCRIPCION FROM GES_REF_SEG_DET WHERE IDGTN=''01'' ';
   DM1.cdsTipCreA.Close;
   DM1.cdsTipCreA.DataRequest(xSQL);
   DM1.cdsTipCreA.Open;
   If DM1.cdsTipCreA.RecordCount > 0 Then dblGestionDet.Enabled := True;
   PageControl1.ActivePageIndex := 0;

   rgSituaClick(rgSitua);
   dblcDpto.Text := ''; // para que active los controles de provincia y distrito
End;

(******************************************************************************)
Procedure TfGestExt.FormKeyPress(Sender: TObject; Var Key: Char);
Begin
   If Key = #13 Then
      Begin
         Key := #0;
         Perform(WM_NEXTDLGCTL, 0, 0);
      End
End;

(******************************************************************************)
Procedure TfGestExt.PageControl1Change(Sender: TObject);
Begin
   If TabSheet1.Showing Then
      Begin
         pnlCab.Enabled := True;
         pnlCab2.SendToBack;
         nTabSheet := 1;
         BitBuscar.Visible := True;
      End;
End;

(******************************************************************************)
Procedure TfGestExt.rgSituaClick(Sender: TObject);
Begin

   Screen.Cursor := crHourGlass;
   LimpiarGrid();
   grpBusAso.Visible := True;
   If rgSitua.ItemIndex = 0 Then
      Begin
         xSituacion := ''; //' AND A.ESTGES=''00'' ';
         DM1.xSgr := '00';
      End;
   If rgSitua.ItemIndex = 1 Then
      Begin
         xSituacion := ' AND A.ESTGES=''01'' ';
         DM1.xSgr := '01';
      End;
   If rgSitua.ItemIndex = 2 Then
      Begin
         xSituacion := ' AND A.ESTGES=''02'' ';
         DM1.xSgr := '02';
      End;
   If rgSitua.ItemIndex = 3 Then
      Begin
         xSituacion := ' AND A.ESTGES=''03'' ';
         DM1.xSgr := '03';
      End;
   Screen.Cursor := crDefault;
End;

(******************************************************************************)
Procedure TfGestExt.rbGestionClick(Sender: TObject);
Begin
   LimpiarGrid;
   If rbGestion.ItemIndex = 0 Then xTabla := 'GES_COB_IND';
   If rbGestion.ItemIndex = 1 Then xTabla := 'GES_COB_DOM';
End;
(******************************************************************************)
Procedure TfGestExt.rgRefinanciadosClick(Sender: TObject);
Begin
   Screen.Cursor := crHourGlass;
   LimpiarGrid;

   If rgRefinanciados.ItemIndex = 0 Then
      xRefinanciado := ' and EXISTS ( SELECT ASOID FROM CFC000 WHERE PERIODO=''' + xPeriodoCartera + ''' and A.ASOID=ASOID AND SALDOS_RT=0 ) '
   Else
      xRefinanciado := ' and EXISTS ( SELECT ASOID FROM CFC000 WHERE PERIODO=''' + xPeriodoCartera + ''' and a.ASOID=ASOID AND SALDOS_RT>0 ) ';
   Screen.Cursor := crDefault;
End;

(******************************************************************************)
Procedure TfGestExt.dblcDptoChange(Sender: TObject);
Begin
   DM1.cdsDist.Filtered := False;
   DM1.cdsDist.Filter := '(DPTOID = ''xyz'' AND CIUDID = ''xyz'' AND ZIPID = ''xyz'')';
   DM1.cdsDist.Filtered := true;
   dblcDist.enabled := false;
   dblcDist.text := '';
   edtDist.text := '';

   LimpiarGrid;
   If DM1.cdsDPTO.Locate('DPTOID', VarArrayof([dblcDpto.text]), []) Then
      Begin
         EdtDpto.Text := DM1.cdsDpto.FieldByName('DPTODES').Asstring;
         DM1.cdsProvin.Filtered := False;
         DM1.cdsProvin.Filter := 'DPTOID=''' + dblcDpto.text + ''' ' + xfilterProv;
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
               DM1.cdsProvin.Filter := 'DPTOID=''' + dblcDpto.text + ''' ' + xfilterProv;
               DM1.cdsProvin.Filtered := true;
               DM1.cdsDist.Filtered := False;
               DM1.cdsDist.Filter := 'DPTOID=''' + dblcDpto.text + ''' and CIUDID=''' + dblcProvin.text + '''';
               DM1.cdsDist.Filtered := true;
            End;
      End;
   dblcprovin.text := '';
   edtprovin.text := '';
End;

(******************************************************************************)
Procedure TfGestExt.dblcProvinChange(Sender: TObject);
Begin
   LimpiarGrid;
   If DM1.cdsProvin.Locate('CIUDID', VarArrayof([dblcProvin.text]), []) Then
      Begin
         Edtprovin.Text := DM1.cdsProvin.FieldByName('CIUDDES').Asstring;
         DM1.cdsDist.Filtered := False;
         DM1.cdsDist.Filter := 'DPTOID=''' + dblcDpto.text + ''' and CIUDID=''' + dblcProvin.text + ''' ' + xfilterDist;
         DM1.cdsDist.Filtered := true;
         dblcDist.Enabled := True;
      End
   Else
      Begin
         If Length(dblcProvin.Text) <> 2 Then
            Begin
               Beep;
               EdtProvin.Text := '';
            End;
      End;
   dblcDist.text := '';
   edtDist.text := '';
End;

(******************************************************************************)
Procedure TfGestExt.dblcProvinEnter(Sender: TObject);
Begin
   If dblcDpto.Text = '' Then
      Begin
         ShowMessage('Falta ingresar departamento');
         dblcDpto.SetFocus;
      End;
End;

(******************************************************************************)
Procedure TfGestExt.dblcDistChange(Sender: TObject);
Begin
   LimpiarGrid;
   If DM1.cdsDist.Locate('ZIPID', VarArrayof([dblcDist.text]), []) Then
      edtDist.Text := DM1.cdsDist.FieldByName('ZIPDES').Asstring
   Else
      If Length(dblcDist.Text) <> 2 Then
         Begin
            Beep;
            EdtDist.Text := '';
         End;
End;

(******************************************************************************)
Procedure TfGestExt.dblcDistEnter(Sender: TObject);
Begin
   If dblcProvin.Text = '' Then
      Begin
         ShowMessage('Falta ingresar Provincia');
         dblcProvin.SetFocus;
      End;
End;

(******************************************************************************)
Procedure TfGestExt.chkSaldoClick(Sender: TObject);
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

(******************************************************************************)
Procedure TfGestExt.chkSaldoTotalClick(Sender: TObject);
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

(******************************************************************************)
Procedure TfGestExt.dbeMtoIniExit(Sender: TObject);
Begin
   dbeMtoIni.Text := FloatToStrF(DM1.Valores(dbeMtoIni.Text), ffNumber, 15, 2);
   dbeMtoFin.Text := FloatToStrF(DM1.Valores(dbeMtoFin.Text), ffNumber, 15, 2);

End;
(******************************************************************************)
Procedure TfGestExt.dbeMtoIniKeyPress(Sender: TObject; Var Key: Char);
Begin
   If Key In [' ', 'A'..'Z', 'a'..'z', '°', '|', '!', '"', '#', '$', '%', '&', '/', '(', ')', '=', '?', '\', '¡', '¿', '@', '¨', '´', '*', '+', '~', '~', '[', ']', '{', '}', '^', '`', '<', '>', ';', ',', ':', '''', '-', '_'] Then
      Key := #0;
End;
(******************************************************************************)
Procedure TfGestExt.dbeMtoFinExit(Sender: TObject);
Begin
   dbeMtoIni.Text := FloatToStrF(DM1.Valores(dbeMtoIni.Text), ffNumber, 15, 2);
   dbeMtoFin.Text := FloatToStrF(DM1.Valores(dbeMtoFin.Text), ffNumber, 15, 2);

End;
(******************************************************************************)
Procedure TfGestExt.dbeMtoFinKeyPress(Sender: TObject; Var Key: Char);
Begin
   If Key In [' ', 'A'..'Z', 'a'..'z', '°', '|', '!', '"', '#', '$', '%', '&', '/', '(', ')', '=', '?', '\', '¡', '¿', '@', '¨', '´', '*', '+', '~', '~', '[', ']', '{', '}', '^', '`', '<', '>', ';', ',', ':', '''', '-', '_'] Then
      Key := #0;
End;

(******************************************************************************)
Procedure TfGestExt.dtgGestionDblClick(Sender: TObject);
Var
   xAsoId, xPeriodo: String;
Begin
   If dtgGestion.DataSource.DataSet.RecordCount = 0 Then Exit;
   Screen.Cursor := crHourGlass;
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
      fGesIndExt := TfGesIndExt.create(Self);
      MstAsociados;
      fGesIndExt.ShowModal;
   Finally
      fGesIndExt.Free;
   End;

   Screen.Cursor := crDefault;
End;
(******************************************************************************)
Procedure TfGestExt.dtgGestionDrawDataCell(Sender: TObject;
   Const Rect: TRect; Field: TField; State: TGridDrawState);
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
End;
(******************************************************************************)
Procedure TfGestExt.dtgGestionDrawFooterCell(Sender: TObject;
   Canvas: TCanvas; FooterCellRect: TRect; Field: TField;
   FooterText: String; Var DefaultDrawing: Boolean);
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
(******************************************************************************)
Procedure TfGestExt.dtgGestionDrawTitleCell(Sender: TObject;
   Canvas: TCanvas; Field: TField; Rect: TRect;
   Var DefaultDrawing: Boolean);
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
(******************************************************************************)
Procedure TfGestExt.dtgGestionTitleButtonClick(Sender: TObject;
   AFieldName: String);
Begin
   dtgGestion.SetActiveField(AFieldName);
   DM1.cdsMovCre.IndexFieldNames := AFieldName + ';ASOAPENOM';
End;

(******************************************************************************)
Procedure TfGestExt.BitBuscarClick(Sender: TObject);
Begin
   Try
      fBusGenAso := TfBusGenAso.create(Self);
      If StrToInt(Copy(DM1.NivelUsuario(DM1.wUsuario), 2, 1)) >= 2 Then fBusGenAso.BitAsigna.Enabled := False;

      fBusGenAso.sTipGesBus := '02';
      fBusGenAso.sTablaBus := xTabla;

      fBusGenAso.ShowModal;
   Finally
      fBusGenAso.Free;
   End;

End;

(******************************************************************************)
Procedure TfGestExt.BitObsEspClick(Sender: TObject);
Var
   xSQL: String;
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
Procedure TfGestExt.edtBuscarChange(Sender: TObject);
Begin
   If Length(Trim(edtBuscar.Text)) > 0 Then
      If DM1.cdsMovCre.RecordCount > 0 Then
         DM1.cdsMovCre.Locate('ASOAPENOM', VarArrayOf([TRIM(edtBuscar.Text)]), [loPartialKey])
End;
(******************************************************************************)
Procedure TfGestExt.edtBuscarKeyPress(Sender: TObject; Var Key: Char);
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
Procedure TfGestExt.dblUserExtChange(Sender: TObject);
Begin
   Screen.Cursor := crHourGlass;
   LimpiarGrid();
   dblcDpto.text := '';
   edtDpto.text := '';
   dblcprovin.text := '';
   edtprovin.text := '';
   dblcDist.text := '';
   edtDist.text := '';
   If DM1.cdsQry5.Locate('USERID', VarArrayof([dblUserExt.Text]), []) Then
      Begin
         EdtUserNom.Text := DM1.cdsQry5.fieldbyname('USERNOM').AsString;
      End
   Else
      Begin
         If Length(dblUserExt.Text) <> 1 Then
            Begin
               Beep;
               EdtUserNom.Text := '';
            End;
      End;
   Screen.Cursor := crDefault;
End;

(******************************************************************************)
Procedure TfGestExt.BitBtn1Click(Sender: TObject);
Var
   i: integer;
Begin
   LblGestorC.Caption := LBLGestor.Caption;
   LblGestorF.Caption := LBLGestor.Caption;

   cdsActivo := TwwClientDataSet.Create(SELF);
   dsActivo := TwwDataSource.Create(SELF);
   dsActivo.DataSet := cdsActivo;

   If ChkIndidual2.Checked Then
      Begin
         If dtgGestion.SelectedList.Count <= 0 Then
            Begin
               ShowMessage(xMsgSeleccionarRegistros);
               Exit;
            End;
         cdsActivo.Data := dm1.cdsMovCre.Data;
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
      End
   Else
      Begin
         xSQLin := 'ASOID IN ( ';
         cdsActivo.Data := dm1.cdsMovCre.Data;
         cdsActivo.First;
         While Not cdsActivo.eof Do
            Begin
               xSQLin := xSQLin + '''' + cdsActivo.fieldByname('ASOID').AsString + ''', ';
               cdsActivo.Next;
            End;
         xSQLin := Copy(xSQLin, 1, Length(xSQLin) - 2) + ' ) ';
      End;
   DBGestiones.DataSource := dsActivo;
   ppr1.Print;
End;
(******************************************************************************)
Procedure TfGestExt.BitExportaClick(Sender: TObject);
Var
   i: integer;
Begin
   cdsActivo := TwwClientDataSet.Create(SELF);
   dsActivo := TwwDataSource.Create(SELF);
   dsActivo.DataSet := cdsActivo;

   If ChkIndidual2.Checked Then
      Begin
         If dtgGestion.SelectedList.Count <= 0 Then
            Begin
               ShowMessage(xMsgSeleccionarRegistros);
               Exit;
            End;

         cdsActivo.Data := dm1.cdsMovCre.Data;
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
      End
   Else
      Begin
         xSQLin := 'ASOID IN ( ';
         cdsActivo.Data := dm1.cdsMovCre.Data;
         cdsActivo.First;
         While Not cdsActivo.eof Do
            Begin
               xSQLin := xSQLin + '''' + cdsActivo.fieldByname('ASOID').AsString + ''', ';
               cdsActivo.Next;
            End;
         xSQLin := Copy(xSQLin, 1, Length(xSQLin) - 2) + ' ) ';
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
            DM1.HojaExcel(lblSeleccion.Caption, dsActivo, dtgData);
         Except
            On Ex: Exception Do
               Application.MessageBox(PChar(Ex.Message), 'ERROR', 16);
         End;
      End;

   cdsActivo.Free;
   dsActivo.Free;
End;

(******************************************************************************)
Procedure TfGestExt.dblUserExtExit(Sender: TObject);
Begin
   Screen.Cursor := crHourGlass;
   If trim(edtusernom.text) <> '' Then
      Begin
         xUsuarioGestor := trim(dblUserExt.Text);
         xSQL := 'SELECT A.USERID, C.OFDESID, D.OFDESDIR, C.UserNom '
            + '     FROM TGE007 A, TGE006 C, APO110 D '
            + '    WHERE GRUPOID = ''GRPGESCOB'' '
            + '      AND C.OFDESID IS NOT NULL '
            + '      AND a.userid = ''' + xUsuarioGestor + ''' '
            + '      AND A.USERID = C.USERID(+) '
            + '      AND C.OFDESID = D.OFDESID '
            + '      AND C.FECEXP IS NULL';

         DM1.cdsQry11.close;
         DM1.cdsQry11.Datarequest(xSQL);
         DM1.cdsQry11.open;

         If DM1.CrgDescrip('IDENTEXT=' + QuotedStr(Trim(DM1.cdsQry5.FieldByName('USERID').AsString)), 'GES_TIP_USU_EXT', 'TIPACT') = '01' Then rbGestion.ItemIndex := 0;
         If DM1.CrgDescrip('IDENTEXT=' + QuotedStr(Trim(DM1.cdsQry5.FieldByName('USERID').AsString)), 'GES_TIP_USU_EXT', 'TIPACT') = '02' Then rbGestion.ItemIndex := 1;
         rbGestionClick(rbGestion); // coloca la tabla GES_COB_IND/GES_COB_DOM
         xfilter := '';
      End
   Else
      xUsuarioGestor := '';
   Screen.Cursor := crDefault;
End;
(******************************************************************************)
Procedure TfGestExt.ppDetailBand5BeforePrint(Sender: TObject);
Var
   sDpto, sProv, sDist, sSQL, sASO, sZIP: String;
Begin
   If Not ChkIndidual.Checked Then
      Begin
         sASO := DM1.cdsMovCre.FieldByName('ASOID').AsString;
         sZIP := DM1.cdsMovCre.FieldByName('ZIPID').AsString;
      End
   Else
      Begin
         sASO := cdsActivo.FieldByName('ASOID').AsString;
         sZIP := cdsActivo.FieldByName('ZIPID').AsString;
      End;

   sSQL := 'SELECT ASODIR,USUARIO,UBIGEO,ASOID,OBSTEL FROM GES_DOM_ASO WHERE ASOID=' + QuotedStr(sASO) + ' AND ACTIVO=''S'' ORDER BY HREG DESC';
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

   xSQL := 'SELECT A.USERID, C.OFDESID, D.OFDESDIR, C.UserNom '
      + 'FROM TGE007 A, TGE006 C, APO110 D '
      + 'WHERE GRUPOID=''GRPGESCOB'' AND C.OFDESID IS NOT NULL '
      + ' and a.userid=''' + dblUserExt.Text + ''' '
      + ' AND A.USERID=C.USERID(+) '
      + ' AND C.OFDESID=D.OFDESID '
      + ' AND C.FECEXP IS NULL';

   DM1.cdsQry11.CLOSE;
   DM1.cdsQry11.Datarequest(xSQL);
   DM1.cdsQry11.OPEN;

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

   pplGestor1.Caption := DM1.cdsQry11.FieldByname('USERNOM').AsString;
End;
(******************************************************************************)
Procedure TfGestExt.ppDetailBand3BeforePrint(Sender: TObject);
Var
   sDpto, sProv, sDist, sSQL, sASO, sZIP: String;
Begin
   If Not ChkIndidual.Checked Then
      Begin
         sASO := DM1.cdsMovCre.FieldByName('ASOID').AsString;
         sZIP := DM1.cdsMovCre.FieldByName('ZIPID').AsString;
      End
   Else
      Begin
         sASO := cdsActivo.FieldByName('ASOID').AsString;
         sZIP := cdsActivo.FieldByName('ZIPID').AsString;
      End;

   sSQL := 'SELECT ASODIR,USUARIO,UBIGEO,ASOID,OBSTEL FROM GES_DOM_ASO WHERE ASOID=' + QuotedStr(sASO) + ' AND ACTIVO=''S'' ORDER BY HREG DESC';
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

   pplGestor2.Caption := DM1.cdsQry11.FieldByname('USERNOM').AsString;

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
(******************************************************************************)
Procedure TfGestExt.ppDetailBand7BeforePrint(Sender: TObject);
Var
   sDpto, sProv, sDist, sSQL, sASO, sZIP: String;
Begin
   If Not ChkIndidual.Checked Then
      Begin
         sASO := DM1.cdsMovCre.FieldByName('ASOID').AsString;
         sZIP := DM1.cdsMovCre.FieldByName('ZIPID').AsString;
      End
   Else
      Begin
         sASO := cdsActivo.FieldByName('ASOID').AsString;
         sZIP := cdsActivo.FieldByName('ZIPID').AsString;
      End;

   sSQL := 'SELECT ASODIR,USUARIO,UBIGEO,ASOID,OBSTEL FROM GES_DOM_ASO WHERE ASOID=' + QuotedStr(sASO) + ' AND ACTIVO=''S'' ORDER BY HREG DESC';
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

   pplGestor3.Caption := DM1.cdsQry11.FieldByname('USERNOM').AsString;
End;
(******************************************************************************)
Procedure TfGestExt.ppDetailBand9BeforePrint(Sender: TObject);
Var
   sDpto, sProv, sDist, sSQL, sASO, sZIP: String;
Begin
   If Not ChkIndidual.Checked Then
      Begin
         sASO := DM1.cdsMovCre.FieldByName('ASOID').AsString;
         sZIP := DM1.cdsMovCre.FieldByName('ZIPID').AsString;
      End
   Else
      Begin
         sASO := cdsActivo.FieldByName('ASOID').AsString;
         sZIP := cdsActivo.FieldByName('ZIPID').AsString;
      End;

   sSQL := 'SELECT ASODIR,USUARIO,UBIGEO,ASOID,OBSTEL FROM GES_DOM_ASO WHERE ASOID=' + QuotedStr(sASO) + ' AND ACTIVO=''S'' ORDER BY HREG DESC';
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

   pplGestor4.Caption := DM1.cdsQry11.FieldByname('USERNOM').AsString;

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
(******************************************************************************)
Procedure TfGestExt.ppDetailBand11BeforePrint(Sender: TObject);
Var
   sDpto, sProv, sDist, sSQL, sASO, sZIP: String;
Begin
   If Not ChkIndidual.Checked Then
      Begin
         sASO := DM1.cdsMovCre.FieldByName('ASOID').AsString;
         sZIP := DM1.cdsMovCre.FieldByName('ZIPID').AsString;
      End
   Else
      Begin
         sASO := cdsActivo.FieldByName('ASOID').AsString;
         sZIP := cdsActivo.FieldByName('ZIPID').AsString;
      End;

   sSQL := 'SELECT ASODIR,USUARIO,UBIGEO,ASOID,OBSTEL FROM GES_DOM_ASO WHERE ASOID=' + QuotedStr(sASO) + ' AND ACTIVO=''S'' ORDER BY HREG DESC';
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

   pplGestor5.Caption := DM1.cdsQry11.FieldByname('USERNOM').AsString;
End;

(******************************************************************************)
Procedure TfGestExt.FootersGrid(nGrid: Integer);
Begin
   If nGrid = 1 Then
      Begin
         dtgGestion.ColumnByName('ASOAPENOM').FooterValue := 'Totales';
         dtgGestion.ColumnByName('SALTOT').FooterValue := FloatToStrF(DM1.OperClientDataSet(DM1.cdsMovCre, 'SUM(SALTOT)', ''), ffNumber, 15, 2);
         dtgGestion.ColumnByName('SALVEN').FooterValue := FloatToStrF(DM1.OperClientDataSet(DM1.cdsMovCre, 'SUM(SALVEN)', ''), ffNumber, 15, 2);
         dtgGestion.ColumnByName('SALPEN').FooterValue := FloatToStrF(DM1.OperClientDataSet(DM1.cdsMovCre, 'SUM(SALPEN)', ''), ffNumber, 15, 2);
         dtgGestion.ColumnByName('SALACT').FooterValue := FloatToStrF(DM1.OperClientDataSet(DM1.cdsMovCre, 'SUM(SALACT)', ''), ffNumber, 15, 2);
         lblRegistros.Caption := IntToStr(DM1.cdsMovCre.RecordCount) + ' Registros ';
      End
End;
(******************************************************************************)
Procedure TfGestExt.CreateCDSImp;
Var
   cSepara, sLine, SdATO: String;
   i, nPosF: Integer;

Begin
   With cdsPlanilla Do
      Begin
         Close;
         FieldDefs.Clear;

         FileName := ChangeFileExt(ExtractFileName(Application.ExeName), '.BAL');
         FieldDefs.Clear;

         FieldDefs.Add('USUARIO_EXT', ftString, 10, False);
         FieldDefs.Add('PERIODO', ftString, 8, False);
         FieldDefs.Add('DNI', ftString, 10, False);
         FieldDefs.Add('COD_MODULAR', ftString, 15, False);
         FieldDefs.Add('APELLIDOS_NOMBRES', ftString, 70, False);
         FieldDefs.Add('TELEFONOS', ftString, 30, False);
         FieldDefs.Add('SALDO_VENCIDO', ftFloat, 0, False);
         FieldDefs.Add('SALDO_TOTAL', ftFloat, 0, False);
         FieldDefs.Add('COD_ATE', ftString, 5, False);
         FieldDefs.Add('OBSERVACION', ftString, 60, False);
         FieldDefs.Add('FECHA_GES', ftString, 10, False);

         CreateDataSet;
         Open;
         EmptyDataSet;
      End;

   For i := 0 To Memo1.Lines.Count - 1 Do
      Begin
         cSepara := '|';

         sLine := Memo1.Lines[I];

         nPosF := Pos(cSepara, sLine);
         sDato := Copy(sLine, 1, nPosF - 1);

         If sDato = dblUserExt.Text Then
            Begin
               cdsPlanilla.Insert;
               cdsPlanilla.FieldByname('USUARIO_EXT').AsString := sDato;

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
            End;
      End;

End;
(******************************************************************************)
Function TfGestExt.BuscaNroGes(xAsoId: String): String;
Var
   xSQL, xEstGes: String;
Begin
   xEstGes := '';
   xSQL := 'SELECT ASOID,NVL(ESTGES,''00'') ESTGES, NROGEST FROM GES_INI_SEG ' +
      'WHERE ASOID=' + QuotedStr(xAsoId) + ' AND NVL(ESTGES,''00'')=''00'' ';
   DM1.cdsCEdu.Close;
   DM1.cdsCEdu.DataRequest(xSQL);
   DM1.cdsCEdu.Open;
   If DM1.cdsCEdu.RecordCount > 0 Then
      Begin
         xEstGes := DM1.cdsCEdu.FieldByname('NROGEST').AsString;
      End;
   DM1.cdsCEdu.Close;
   Result := xEstGes;
End;
(******************************************************************************)

// INICIO : SPP_201401_GESCOB
Function TfGestExt.GnrNroGest: String;
Var
   xCorrAct: Integer;
   xCorrExe, xSQL: String;
   xSQLUpdate : String;
Begin
   xSQL := 'SELECT CREAREA,TIPO,CRENUMCOMP,CORREANO, ROWID ROW_ID FROM CRE206 WHERE CREAREA=''COB'' AND  CORREANO=' + QuotedStr(Copy(Trim(DateToStr(DM1.FechaSys)), 7, 4)) + ' AND TIPO=''G'' AND CTACTE=''GT-CB'' ';
   DM1.cdsFEfec.Close;
   DM1.cdsFEfec.DataRequest(xSQL);
   DM1.cdsFEfec.Open;
   If DM1.cdsFEfec.RecordCount = 1 Then
      Begin
         xCorrAct := StrToInt(DM1.cdsFEfec.fieldbyname('CRENUMCOMP').AsString) + 1;
         xCorrExe := Format('%.6d', [xCorrAct]);
         xCorrExe := copy(xCorrExe, 1, 6);
         //DM1.cdsFEfec.Edit;
         //DM1.cdsFEfec.fieldbyname('CRENUMCOMP').AsString := xCorrExe;
         //DM1.cdsFEfec.ApplyUpdates(0);
         xSQLUpdate :=
           '   UPDATE CRE206 '
           + '    SET CRENUMCOMP = LPAD( '  + xCorrExe + ',6,''0'')'
           + '  WHERE ROWID = ' + QuotedStr(DM1.cdsFEfec.fieldbyname('ROW_ID').AsString);
         DM1.DCOM1.AppServer.EjecutaSql(xSQLUpdate);

         DM1.cdsQry.Close;
         DM1.cdsQry.DataRequest(xSQL);
         DM1.cdsQry.Open;
         If Trim(xCorrExe) > Trim(DM1.cdsQry.fieldbyname('CRENUMCOMP').AsString) Then xCorrExe := '';
         DM1.cdsQry.Close;
         Result := xCorrExe;
      End;
   DM1.cdsFEfec.Close;
End;
// FIN : SPP_201401_GESCOB

(******************************************************************************)
Procedure TfGestExt.CreateCDSImpMasiva;
Var
   cSepara, sLine, SdATO: String;
   i, nPosF: Integer;

Begin
   With cdsPlanilla Do
      Begin
         Close;
         FieldDefs.Clear;

         FileName := ChangeFileExt(ExtractFileName(Application.ExeName), '.BAL');
         FieldDefs.Clear;

         FieldDefs.Add('USUARIO_EXT', ftString, 5, False);
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
         // Inicio: SPP_201401_GESCOB
         FieldDefs.Add('TIPO_CAMPANHA', ftString, 10, False);      
         // Fin: SPP_201401_GESCOB   
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

         If sDato = dblUserExt.Text Then
            Begin
               cdsPlanilla.FieldByname('USUARIO_EXT').AsString := sDato;

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
// INICIO : SPP_201401_GESCOB
               sLine := Copy(sLine, nPosF + 1, Length(sLine));
               nPosF := Pos(cSepara, sLine);
               if nPosF > 0 then
                 sDato := Copy(sLine, 1, nPosF - 1)
               else
                 sDato := Copy(sLine, 1, Length(sLine));
               cdsPlanilla.FieldByname('TIPO_CAMPANHA').AsString := sDato;
// FIN : SPP_201401_GESCOB
            End;
      End;

End;
(******************************************************************************)
Procedure TfGestExt.CreateCDS2;
Var
   i: Integer;

Begin
   With cdsH Do
      Begin
         Close;
         FieldDefs.Clear;

         FileName := ChangeFileExt(ExtractFileName(Application.ExeName), '.BAL');
         FieldDefs.Clear;

         FieldDefs.Add('USUARIO_EXT', ftString, 10, False);
         FieldDefs.Add('PERIODO', ftString, 8, False);
         FieldDefs.Add('DNI', ftString, 10, False);
         FieldDefs.Add('COD_MODULAR', ftString, 15, False);
         FieldDefs.Add('APELLIDOS_NOMBRES', ftString, 70, False);
         FieldDefs.Add('TELEFONOS', ftString, 30, False);
         FieldDefs.Add('SALDO_VENCIDO', ftFloat, 0, False);
         FieldDefs.Add('SALDO_TOTAL', ftFloat, 0, False);
         FieldDefs.Add('COD_ATE', ftString, 5, False);
         FieldDefs.Add('OBSERVACION', ftString, 60, False);
         FieldDefs.Add('FECHA_GES', ftString, 10, False);
         CreateDataSet;
         Open;
         EmptyDataSet;
      End;

   cdsActivo := TwwClientDataSet.Create(SELF);
   dsActivo := TwwDataSource.Create(SELF);
   dsActivo.DataSet := cdsActivo;

   If ChkIndidual.Checked Then
      Begin
         If dtgGestion.SelectedList.Count <= 0 Then
            Begin
               ShowMessage(xMsgSeleccionarRegistros);
               Exit;
            End;

         cdsActivo.Data := dm1.cdsMovCre.Data;
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
      End
   Else
      Begin
         xSQLin := 'ASOID IN ( ';
         cdsActivo.Data := dm1.cdsMovCre.Data;
         cdsActivo.First;
         While Not cdsActivo.eof Do
            Begin
               xSQLin := xSQLin + '''' + cdsActivo.fieldByname('ASOID').AsString + ''', ';
               cdsActivo.Next;
            End;
         xSQLin := Copy(xSQLin, 1, Length(xSQLin) - 2) + ' ) ';
      End;

   If cdsActivo.RecordCount > 0 Then
      Begin
         cdsActivo.First;
         While Not cdsActivo.Eof Do
            Begin
               DM1.CrgDescrip('ASOID=' + QuotedStr(Trim(cdsActivo.FieldByName('ASOID').AsString)), 'APO201', 'ASODNI');
               cdsH.Append;
               cdsH.FieldByName('USUARIO_EXT').AsString := cdsActivo.fieldbyname('USUARIO').AsString;
               cdsH.FieldByName('PERIODO').AsString := cdsActivo.fieldbyname('PERIODO').AsString;
               cdsH.FieldByName('DNI').AsString := DM1.cdsQry.fieldbyname('ASODNI').AsString;
               cdsH.FieldByName('COD_MODULAR').AsString := DM1.cdsQry.fieldbyname('ASOCODMOD').AsString;
               cdsH.FieldByName('APELLIDOS_NOMBRES').AsString := DM1.cdsQry.fieldbyname('ASOAPENOMDNI').AsString;
               cdsH.FieldByName('TELEFONOS').AsString := DM1.cdsQry.fieldbyname('ASOTELF1').AsString + ' / ' + DM1.cdsQry.fieldbyname('ASOTELF1').AsString;
               cdsH.FieldByName('SALDO_VENCIDO').AsFloat := cdsActivo.fieldbyname('SALVEN').AsFloat;
               cdsH.FieldByName('SALDO_TOTAL').AsFloat := cdsActivo.fieldbyname('SALTOT').AsFloat;
               cdsH.FieldByName('APELLIDOS_NOMBRES').AsString := DM1.cdsQry.fieldbyname('ASOAPENOMDNI').AsString;
               cdsH.Post;
               cdsActivo.Next;
            End;
      End;
   cdsActivo.Free;
   dsActivo.Free;
End;
(******************************************************************************)
Procedure TfGestExt.GrabaTexto(Datos: TDatasource; Fichero: String; Delimitador: char);
Var
   f: textfile;
   Linea: String;
Begin

   AssignFile(f, Fichero);
   Rewrite(f);
   Linea := 'USUARIO_EXT|' + 'PERIODO|' + 'DNI|'
      + 'COD_MODULAR|' + 'APELLIDOS_NOMBRES|'
      + 'TELEFONOS|' + 'SALDO_VENCIDO|' + 'SALDO_TOTAL|';
   Memo1.Lines.Add(Linea);
   writeln(f, Linea);

   With Datos.DataSet Do
      Begin
         DisableControls;
         First;
         While Not Eof Do
            Begin
               Linea := Datos.DataSet.FieldByName('USUARIO_EXT').AsString + '|'
                  + Datos.DataSet.FieldByName('PERIODO').AsString + '|'
                  + Datos.DataSet.FieldByName('DNI').AsString + '|'
                  + Datos.DataSet.FieldByName('COD_MODULAR').AsString + '|'
                  + Datos.DataSet.FieldByName('APELLIDOS_NOMBRES').AsString + '|'
                  + Datos.DataSet.FieldByName('TELEFONOS').AsString + '|'
                  + Datos.DataSet.FieldByName('SALDO_VENCIDO').AsString + '|'
                  + Datos.DataSet.FieldByName('SALDO_TOTAL').AsString + '|';
               Memo1.Lines.Add(Linea);
               writeln(f, Linea);
               Next;
            End;
         EnableControls;
      End;
   CloseFile(f);
   MessageDlg(' Diskette Se Grabo Con Exito ', mtInformation, [mbOk], 0);
End;
(******************************************************************************)
Procedure TfGestExt.HeadersGrid();
Begin
   dtgGestion.Selected.Clear;
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
End;
(******************************************************************************)
Procedure TfGestExt.Footers(xSQL: String);
Begin
   xSQL := 'SELECT SUM(NVL(SALTOT,0)) SALTOT,SUM(NVL(SALVEN,0)) SALVEN,SUM(NVL(SALPEN,0)) SALPEN,SUM(NVL(SALACT,0)) SALACT FROM (' + xSQL + ')';
   DM1.cdsQry3.Close;
   DM1.cdsQry3.DataRequest(xSQL);
   DM1.cdsQry3.Open;
   dtgGestion.ColumnByName('ASOAPENOM').FooterValue := 'Totales';
   dtgGestion.ColumnByName('SALTOT').FooterValue := FloatToStrF(DM1.cdsQry3.FieldByName('SALTOT').AsCurrency, ffNumber, 15, 2);
   dtgGestion.ColumnByName('SALVEN').FooterValue := FloatToStrF(DM1.cdsQry3.FieldByName('SALVEN').AsCurrency, ffNumber, 15, 2);
   dtgGestion.ColumnByName('SALPEN').FooterValue := FloatToStrF(DM1.cdsQry3.FieldByName('SALPEN').AsCurrency, ffNumber, 15, 2);
   dtgGestion.ColumnByName('SALACT').FooterValue := FloatToStrF(DM1.cdsQry3.FieldByName('SALACT').AsCurrency, ffNumber, 15, 2);
   DM1.cdsQry3.Close;
   lblRegistros.Caption := IntToStr(DM1.cdsMovCre.RecordCount) + ' Registros ';
End;
(******************************************************************************)
Procedure TfGestExt.LimpiarGrid;
Var
   xSQL: String;
Begin
   xSQL := 'SELECT ''          '' ASOCODMOD, PERIODO,C.OFDESNOM,A.OFDESID,A.USEID, '
      + '          D.USENOM,A.UPAGOID,A.UPROID,CFC_F,CFC_N,CFC_R,ASOTIPID,ASOID, '
      + '          ASOAPENOM,NVL(SALVEN,0) SALVEN, NVL(SALPEN,0) SALPEN, '
      + '          NVL(SALTOT,0) SALTOT,CUOVEN,CUOPEN,0 CUOTOT,ESTDES,SALACT, '
      + '          RESGES,A.USUARIO,USUASIG,TO_DATE(FECASIG) FECASIG, ESTGES,TIPGES, '
      + '          ESTDEU,B.DESREF,VENACT,PENACT ,DIASTRANS '
      + '          ,'' '' DEPARTAMENTO, '' '' PROVINCIA, '' '' DISTRITO '
      + '     FROM GES_COB_IND A, GES_TIP_REF_DET B, APO110 C, APO101 D '
      + '    WHERE 1 = 2 '
      + '      AND A.ESTGES = B.CODREF(+) '
      + '      AND B.CODTIP = ''02'' '
      + '      AND A.OFDESID = C.OFDESID(+) '
      + '      AND A.USEID = D.USEID(+) '
      + '      AND A.UPAGOID = D.UPAGOID(+) '
      + '      AND A.UPROID = D.UPROID(+) '
      + 'ORDER BY ASOAPENOM ';

   DM1.cdsMovCre.Close;
   DM1.cdsMovCre.DataRequest(xSQL);
   DM1.cdsMovCre.Open;
   HeadersGrid();
   TNumericField(DM1.cdsMovCre.FieldByName('SALTOT')).DisplayFormat := '###,###,##0.#0';
   TNumericField(DM1.cdsMovCre.FieldByName('SALVEN')).DisplayFormat := '###,###,##0.#0';
   TNumericField(DM1.cdsMovCre.FieldByName('SALPEN')).DisplayFormat := '###,###,##0.#0';
   TNumericField(DM1.cdsMovCre.FieldByName('SALACT')).DisplayFormat := '###,###,##0.#0';
   Footers(xSQL);

End;
(******************************************************************************)
Procedure TfGestExt.MstCabecera(xAsoid, xPeriodo: String);
Var
   xSQL: String;
Begin
   xSQL := 'SELECT PERIODO, ASOID, NROGEST, FECHA, USUARIO, MASDAT, '
      + '          ANOGEST, ESTGES '
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
Procedure TfGestExt.CargaSaldo(xAsoid, xPeriodo: String);
Var
   xSQL, xCreDid: String;
Begin
   // INICIO : SPP_201402_GESCOB
   xSQL := 'INSERT INTO GES_DET_IND  (PERIODO,ASOID,CREFOTORG,CREDID,TIPCREID,TIPCREDES,SALVEN,SALPEN,SALTOT, SALDIF, CUODIF) ' +
      'SELECT PERIODO,ASOID,CREFOTORG,CREDID,TIPCREID,TIPCREDES,0.00,0.00,0.00,0.00,0 FROM SAL000 A WHERE ASOID=' + QuotedStr(xAsoId) + ' AND PERIODO=' + QuotedStr(xPeriodo) + ' ' +
      'AND NOT EXISTS (SELECT ASOID,CREDID,PERIODO FROM GES_DET_IND WHERE A.ASOID=ASOID AND A.CREDID=CREDID ) ';
   DM1.DCOM1.AppServer.EjecutaSql(xSQL);
   // FIN : SPP_201402_GESCOB

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
// INICIO : SPP_201402_GESCOB
Procedure TfGestExt.ApliPagos(xAsoId, xCreDid: String);
Var
   xSQL: String;
   xSalTot, xSalVen, xSalPen, xSalDif: Currency;
   xCuoTot, xCuoVen, xCuoPen, xCuoDif: Integer;
Begin
   xSalTot := 0;
   xSalVen := 0;
   xSalPen := 0;
   xSalDif := 0;
   xCuoTot := 0;
   xCuoVen := 0;
   xCuoPen := 0;
   xCuoDif := 0;
   xSQL := 'SELECT SUM(NVL(CREMTO,0)-NVL(CREMTOCOB,0) ) SALVEN, COUNT(*) CUOVEN FROM CRE302 WHERE ASOID=' + QuotedStr(xAsoId) + ' AND CREDID=' + QuotedStr(xCreDid) + ' AND ' +
      'CREESTID IN (''02'',''11'',''27'',''14'')  AND TO_CHAR(CREFVEN,''YYYYMM'') <= TO_CHAR(SYSDATE,''YYYYMM'')  ';
   DM1.cdsQry7.Close;
   DM1.cdsQry7.DataRequest(xSQL);
   DM1.cdsQry7.Open;
   If Length(Trim(DM1.cdsQry7.FieldByName('SALVEN').AsString)) > 0 Then
      Begin
         xSalVen := DM1.cdsQry7.FieldByName('SALVEN').AsCurrency;
         xCuoVen := DM1.cdsQry7.FieldByName('CUOVEN').AsInteger;
      End;
   DM1.cdsQry7.Close;

   xSQL := 'SELECT SUM(NVL(CREMTO,0)-NVL(CREMTOCOB,0) ) SALPEN, COUNT(*) CUOPEN FROM CRE302 WHERE ASOID=' + QuotedStr(xAsoId) + ' AND CREDID=' + QuotedStr(xCreDid) + ' AND ' +
      'CREESTID IN (''02'',''11'',''27'',''14'')  AND TO_CHAR(CREFVEN,''YYYYMM'') > TO_CHAR(SYSDATE,''YYYYMM'')  ';
   DM1.cdsQry7.Close;
   DM1.cdsQry7.DataRequest(xSQL);
   DM1.cdsQry7.Open;
   If Length(Trim(DM1.cdsQry7.FieldByName('SALPEN').AsString)) > 0 Then
      Begin
         xSalPen := DM1.cdsQry7.FieldByName('SALPEN').AsCurrency;
         xCuoPen := DM1.cdsQry7.FieldByName('CUOPEN').AsInteger;
      End;
   DM1.cdsQry7.Close;


   xSQL := 'SELECT SUM(NVL(CREMTO,0)-NVL(CREMTOCOB,0) ) SALDIF, COUNT(*) CUODIF FROM CRE302 WHERE ASOID=' + QuotedStr(xAsoId) + ' AND CREDID=' + QuotedStr(xCreDid) + ' AND ' +
      'CREESTID IN (''02'',''11'',''27'',''14'')  AND CREFVEN <> CREFVENINI ';
   DM1.cdsQry7.Close;
   DM1.cdsQry7.DataRequest(xSQL);
   DM1.cdsQry7.Open;
   If Length(Trim(DM1.cdsQry7.FieldByName('SALDIF').AsString)) > 0 Then
      Begin
         xSalDif := DM1.cdsQry7.FieldByName('SALDIF').AsCurrency;
         xCuoDif := DM1.cdsQry7.FieldByName('CUODIF').AsInteger;
      End;
   DM1.cdsQry7.Close;


   xSalTot := xSalVen + xSalPen;
   xCuoTot := xCuoVen + xCuoPen;
   xSQL := 'UPDATE GES_DET_IND  SET SALTOT=' + FloatToStr(xSalTot) + ',CUOTOT=' + FloatToStr(xCuoTot) + ',SALVEN=' + FloatToStr(xSalVen) + ',CUOVEN=' + FloatToStr(xCuoVen) + ',SALPEN=' + FloatToStr(xSalPen) + ',CUOPEN=' + FloatToStr(xCuoPen)
         + '       ,SALDIF=' + FloatToStr(xSalDif) + ',CUODIF=' + FloatToStr(xCuoDif)
         + ' WHERE ASOID=' + QuotedStr(xAsoId) + ' AND CREDID=' + QuotedStr(xCreDid);
   DM1.DCOM1.AppServer.EjecutaSql(xSQL);
End;
// FIN : SPP_201402_GESCOB
(******************************************************************************)
Procedure TfGestExt.MstAsociados();
Var
   xAsoId, xSQL, xPeriodo: String;
Begin
   xAsoId := cdsActivo.fieldByname('ASOID').AsString;
   xPeriodo := cdsActivo.fieldByname('PERIODO').AsString;
   CargaSaldo(xAsoid, xPeriodo);
   fGesIndExt.lblAsoNombres.Caption := cdsActivo.fieldByname('ASOAPENOM').AsString;
   fGesIndExt.lblDni.Caption := DM1.CrgDescrip('ASOID=' + QuotedStr(Trim(cdsActivo.fieldByname('ASOID').AsString)), 'APO201', 'ASODNI');
   fGesIndExt.lblDias.Caption := cdsActivo.fieldByname('DIASTRANS').AsString;
   fGesIndExt.lblTipAso.Caption := cdsActivo.fieldByname('ASOTIPID').AsString + '-' + DM1.CrgDescrip('ASOTIPID=' + QuotedStr(Trim(cdsActivo.fieldByname('ASOTIPID').AsString)), 'APO107', 'ASOTIPDES');
   fGesIndExt.lblCuenta.Caption := DM1.CrgDescrip('ASOID=' + QuotedStr(Trim(cdsActivo.fieldByname('ASOID').AsString)), 'APO201', 'ASONCTA') + ' (' + DM1.CrgDescrip('SITCTAID=' + QuotedStr(Trim(DM1.CrgDescrip('ASOID=' + QuotedStr(Trim(cdsActivo.fieldByname('ASOID').AsString)), 'APO201', 'SITCTA'))), 'COB103', 'SITCTADES') + ')';
   fGesIndExt.lblUses.Caption := cdsActivo.FieldByName('USENOM').AsString;
   fGesIndExt.lblUniPro.Caption := cdsActivo.FieldByName('OFDESNOM').AsString;
   fGesIndExt.lblDireccion.Caption := DM1.CrgDescrip('ASOID=' + QuotedStr(Trim(cdsActivo.fieldByname('ASOID').AsString)), 'APO201', 'ASODIR');
// telefno gestion

   xSQL := 'SELECT NROTELF,OBSTEL FROM GES_TEL_ASO WHERE ASOID=' + QuotedStr(xAsoId) + ' AND HREG IN (SELECT MAX(HREG) FROM GES_TEL_ASO WHERE ASOID=' + QuotedStr(xAsoId) + ') AND ACTIVO=''S''  ';
   If DM1.CountReg(xSQL) = 0 Then
      Begin
         fGesIndExt.lblTelefono.Caption := DM1.CrgDescrip('ASOID=' + QuotedStr(Trim(cdsActivo.fieldByname('ASOID').AsString)), 'APO201', 'ASOTELF1') + ' - ' + DM1.CrgDescrip('ASOID=' + QuotedStr(Trim(cdsActivo.fieldByname('ASOID').AsString)), 'APO201', 'ASOTELF2');
         fGesIndExt.lblTelefono.Font.Color := clNavy;
      End
   Else
      Begin
         DM1.cdsATransp.Close;
         DM1.cdsATransp.DataRequest(xSQL);
         DM1.cdsATransp.Open;
         fGesIndExt.lblTelefono.Caption := Trim(DM1.cdsATransp.FieldByName('NROTELF').AsString) + ' - ' + Trim(DM1.cdsATransp.FieldByName('OBSTEL').AsString);
         fGesIndExt.lblTelefono.Font.Color := clRed;
      End;

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
(******************************************************************************)
Function TfGestExt.SaldoFinal(xAsoId: String): Currency;
Var
   xSQL: String;
Begin
   xSQL := 'SELECT SALVEN FROM (SELECT NVL(SUM(NVL(SALVEN,0)),0) SALVEN FROM GES_DET_IND WHERE ASOID=' + QuotedStr(xAsoId) + ' ) ';
   DM1.cdsTransporte.Close;
   DM1.cdsTransporte.DataRequest(xSQL);
   DM1.cdsTransporte.Open;
   Result := DM1.Valores(DM1.cdsTransporte.FieldByName('SALVEN').AsString);
End;
(******************************************************************************)
Procedure TfGestExt.CerraGestion(xAsoId: String);
Var
   xSQL: String;
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

(******************************************************************************)
Procedure TfGestExt.GrabaEnvio;
Var
   xNroGest, XSQL, xOrden: String;
   xIdCarta: String;
Begin
   xIdCarta := '0' + inttostr(rgCarta.ItemIndex + 1);

   DM1.cdsMovCre.First;
   While Not DM1.cdsMovCre.Eof Do
      Begin
         If BuscaNroGes(DM1.cdsMovCre.fieldbyname('ASOID').AsString) = '' Then
            Begin
               xNroGest := GnrNroGest;
               xSQL := 'INSERT INTO GES_INI_SEG( PERIODO, ASOID, NROGEST, FECHA, USUARIO, MASDAT, ANOGEST ) '
                  + 'VALUES (' + QuotedStr(DM1.cdsMovCre.fieldByname('PERIODO').AsString) + ', '
                  + QuotedStr(DM1.cdsMovCre.fieldbyname('ASOID').AsString) + ', '
                  + QuotedStr(xNroGest) + ', SYSDATE, ' + QuotedStr(DM1.wUsuario) + ', '
                  + QuotedStr('ENVIO DE CARTA') + ', TO_CHAR(SYSDATE,''YYYY'')  )';
               DM1.DCOM1.AppServer.EjecutaSql(xSQL);
            End
         Else
            Begin
               xNroGest := BuscaNroGes(DM1.cdsMovCre.fieldbyname('ASOID').AsString);
            End;

         xOrden := fDetGestExt.OrdenGestion(DM1.cdsMovCre.fieldbyname('ASOID').AsString, DM1.cdsMovCre.fieldByname('PERIODO').AsString, xNroGest, Copy(DateToStr(DM1.FechaSys), 7, 4));

         xSQL := 'INSERT INTO GES_COB_SEG(PERIODO, ASOID, NROGEST, FECHA, HORA, USUARIO, IDGESTION, DETOBS, ANOGEST, ORDEN, IDGESTIONDET, IDCARTA ) '
            + 'VALUES (' + QuotedStr(DM1.cdsMovCre.fieldByname('PERIODO').AsString) + ', ' + QuotedStr(DM1.cdsMovCre.fieldbyname('ASOID').AsString) + ', '
            + QuotedStr(xNroGest) + ', ' + QuotedStr(DateToStr(DM1.FechaSys)) + ', ' + QuotedStr(DM1.HoraSys) + ', ' + QuotedStr(DM1.wUsuario) + ', '
            + QuotedStr('03') + ', ' + QuotedStr('ENVIO DE CARTA') + ', ' + QuotedStr(Copy(DateToStr(DM1.FechaSys), 7, 4)) + ', '
            + QuotedStr(xOrden) + ', ' + QuotedStr('312') + ', ' + QuotedStr(xIdCarta) + ' )';
         DM1.DCOM1.AppServer.EjecutaSql(xSQL);

         DM1.cdsMovCre.Next;
      End;

   xSQL := 'SELECT a.ASOID, asocodmod, asodni, ASOAPENOM, IDCARTA, DESREF, COUNT(*) CARTAS, a.usuario , a.idcarta, FECHA '
      + 'FROM GES_COB_SEG a, APO201 b, GES_TIP_REF_DET c '
      + 'WHERE IDGESTIONDET=''312'' and a.' + xSQLin + ' and a.idcarta=' + QuotedStr(xIdCarta)
      + ' AND a.asoid=b.asoid and c.codtip=''08'' and a.idcarta=c.CODREF '
      + 'GROUP BY a.ASOID, asocodmod, asodni, ASOAPENOM, IDCARTA, DESREF, a.usuario, a.idcarta, FECHA';
   DM1.cdsCartas.Close;
   DM1.cdsCartas.DataRequest(xSQL);
   DM1.cdsCartas.Open;

   pprLog.Print;

End;

(******************************************************************************)
Procedure TfGestExt.BitSalirClick(Sender: TObject);
Begin
   Close;
End;

(******************************************************************************)
Procedure TfGestExt.dblGestionDetChange(Sender: TObject);
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
Procedure TfGestExt.bbtnTextoClick(Sender: TObject);
Begin
   If Not sdGraba.Execute Then Exit;

   CreateCDS2;

   If cdsH.RecordCount > 0 Then
      GrabaTexto(dsH, sdGraba.FileName, '|')
   Else
      Begin
         ShowMessage('No existe detalle para generar archivo de Texto');
      End;
End;

(******************************************************************************)
Procedure TfGestExt.bbtnImportaClick(Sender: TObject);
Var
   xSQL, xNroGest, xOrden: String;
Begin
   If Not sdGraba300.Execute Then Exit;

   If sdGraba300.FileName = '' Then
      Begin
         ShowMessage('Error : Falta Seleccionar Archivo a Tranferir');
         Exit;
      End;

   If Not FileExists(sdGraba300.FileName) Then
      Begin
         ShowMessage('Error : Archivo Seleccionado No Existe ( ' + sdGraba300.FileName + ' ) ');
         Exit;
      End;

   Memo1.Lines.Clear;
   Memo1.Lines.LoadFromFile(sdGraba300.FileName);

   CreateCDSImp;

   cdsPlanilla.First;
   While Not cdsPlanilla.Eof Do
      Begin
         Try
            If dblUserExt.Text <> cdsPlanilla.FieldByName('USUARIO_EXT').AsString Then
               Begin
                  Showmessage('El Usuario ' + dblUserExt.Text + ' es diferente al usuario del archivo (' + cdsPlanilla.FieldByName('USUARIO_EXT').AsString + ')');
                  exit;
               End;
         Except
            ShowMessage('Error en Archivo del texto, revisar...');
            Exit;
         End;
         cdsPlanilla.Next;
      End;

   If MessageDlg('Transferir las Gestiones de Cobranzas.' + chr(13)
      + '         ¿ Esta Seguro ?    ', mtConfirmation, [mbYes, mbNo], 0) = mrNo Then exit;

   Screen.Cursor := crHourGlass;

   cdsPlanilla.First;
   While Not cdsPlanilla.Eof Do
      Begin
         If length(cdsPlanilla.fieldByname('COD_ATE').AsString) = 3 Then
            Begin
               DM1.CrgDescrip('ASODNI=' + QuotedStr(Trim(cdsPlanilla.FieldByName('DNI').AsString)), 'APO201', 'ASODNI');

               If BuscaNroGes(DM1.cdsQry.fieldbyname('ASOID').AsString) = '' Then
                  Begin
                     xNroGest := GnrNroGest;
                     DM1.CrgDescrip('ASODNI=' + QuotedStr(Trim(cdsPlanilla.FieldByName('DNI').AsString)), 'APO201', 'ASODNI');
                     xSQL := 'INSERT INTO GES_INI_SEG( PERIODO, ASOID, NROGEST, FECHA, USUARIO, MASDAT, ANOGEST ) '
                        + 'VALUES (' + QuotedStr(cdsPlanilla.fieldByname('PERIODO').AsString) + ','
                        + QuotedStr(DM1.cdsQry.fieldbyname('ASOID').AsString) + ',' + QuotedStr(xNroGest) + ','
                        + QuotedStr(cdsPlanilla.fieldByname('FECHA_GES').AsString) + ',' + QuotedStr(DM1.wUsuario) + ','
                        + QuotedStr(cdsPlanilla.fieldByname('OBSERVACION').AsString) + ',' + QuotedStr(Copy(cdsPlanilla.fieldByname('FECHA_GES').AsString, 7, 4)) + ')';
                     DM1.DCOM1.AppServer.EjecutaSql(xSQL);
                  End
               Else
                  Begin
                     xNroGest := BuscaNroGes(DM1.cdsQry.fieldbyname('ASOID').AsString);
                     DM1.CrgDescrip('ASODNI=' + QuotedStr(Trim(cdsPlanilla.FieldByName('DNI').AsString)), 'APO201', 'ASODNI');
                  End;

               xOrden := fDetGestExt.OrdenGestion(DM1.cdsQry.fieldbyname('ASOID').AsString, cdsPlanilla.fieldByname('PERIODO').AsString, xNroGest, Copy(DateToStr(DM1.FechaSys), 7, 4));

               xSQL := 'INSERT INTO GES_COB_SEG(PERIODO, ASOID, NROGEST, FECHA, HORA, USUARIO, IDGESTION, DETOBS, ANOGEST, ORDEN, IDGESTIONDET, USUIMP, FECIMP ) '
                  + 'VALUES (' + QuotedStr(cdsPlanilla.fieldByname('PERIODO').AsString) + ', ' + QuotedStr(DM1.cdsQry.fieldbyname('ASOID').AsString) + ', '
                  + QuotedStr(xNroGest) + ', ' + QuotedStr(cdsPlanilla.FieldByname('FECHA_GES').AsString) + ', ' + QuotedStr(DM1.HoraSys) + ', ' + QuotedStr(dblUserExt.text) + ', '
                  + QuotedStr('03') + ', ' + QuotedStr(cdsPlanilla.fieldByname('OBSERVACION').AsString) + ', ' + QuotedStr(Copy(DateToStr(DM1.FechaSys), 7, 4)) + ', '
                  + QuotedStr(xOrden) + ', ' + QuotedStr(cdsPlanilla.fieldByname('COD_ATE').AsString) + ', ' + QuotedStr(DM1.wUsuario) + ', SYSDATE )';
               DM1.DCOM1.AppServer.EjecutaSql(xSQL);

               xSQL := 'UPDATE GES_COB_IND SET ESTGES=''02'',ESTDES=''GESTIONADA'' WHERE ASOID=' + QuotedStr(DM1.cdsQry.fieldbyname('ASOID').AsString);
               DM1.DCOM1.AppServer.EjecutaSql(xSQL);
            End;
         cdsPlanilla.Next;
      End;
   Screen.Cursor := crDefault;

   ShowMessage('ok');

End;

(******************************************************************************)
Procedure TfGestExt.BitBtn7Click(Sender: TObject);
Var
   i: integer;
Begin

   If dblcResponsable.Text = '' Then
      Begin
         ShowMessage('Para Imprimir Cartas debe Seleccionar al Responsable');
         Exit;
      End;

   If rgRefinanciados.ItemIndex = 0 Then
      Begin
         If (rgCarta.ItemIndex = 1) Or (rgCarta.ItemIndex = 2) Then
            Begin
               ShowMessage('CaRe 1 y Care 2 son cartas para Asociados que tienen Créditos Refinanciados');
               Exit;
            End;
      End
   Else
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

   If ChkIndidual.Checked Then
      Begin
         If dtgGestion.SelectedList.Count <= 0 Then
            Begin
               ShowMessage(xMsgSeleccionarRegistros);
               Exit;
            End;

         ppdbC1.DataSource := dsActivo;

         cdsActivo.Data := dm1.cdsMovCre.Data;
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
      End
   Else
      Begin
         ppdbC1.DataSource := dm1.dsMovCre;

         xSQLin := 'ASOID IN ( ';
         cdsActivo.Data := dm1.cdsMovCre.Data;
         cdsActivo.First;
         While Not cdsActivo.eof Do
            Begin
               xSQLin := xSQLin + '''' + cdsActivo.fieldByname('ASOID').AsString + ''', ';
               cdsActivo.Next;
            End;
         xSQLin := Copy(xSQLin, 1, Length(xSQLin) - 2) + ' ) ';

         pprCaPre0.OnPrintingComplete := GrabaEnvio;
         pprCare1.OnPrintingComplete := GrabaEnvio;
         pprCare2.OnPrintingComplete := GrabaEnvio;
         pprCave1.OnPrintingComplete := GrabaEnvio;
         pprCave2.OnPrintingComplete := GrabaEnvio;
      End;

   If rgCarta.ItemIndex = 0 Then pprCaPre0.Print;
   If rgCarta.ItemIndex = 1 Then pprCare1.Print;
   If rgCarta.ItemIndex = 2 Then pprCare2.Print;
   If rgCarta.ItemIndex = 3 Then pprCave1.Print;
   If rgCarta.ItemIndex = 4 Then pprCave2.Print;

   cdsActivo.Free;
   dsActivo.Free;
End;
(******************************************************************************)
Procedure TfGestExt.bbtnDesmarcarClick(Sender: TObject);
Begin
   dtgGestion.SelectedList.clear; { Clear selected record list since they are all deleted}
   dtgGestion.RedrawGrid;
End;
(******************************************************************************)
Procedure TfGestExt.bbtnExpCartaClick(Sender: TObject);
Var
   i: integer;
Begin
   If rgRefinanciados.ItemIndex = 0 Then
      Begin
         If (rgCarta.ItemIndex = 1) Or (rgCarta.ItemIndex = 2) Then
            Begin
               ShowMessage('CaRe 1 y Care 2 son cartas para Asociados que tienen Créditos Refinanciados');
               Exit;
            End;
      End
   Else
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

   If ChkIndidual.Checked Then
      Begin
         If dtgGestion.SelectedList.Count <= 0 Then
            Begin
               ShowMessage(xMsgSeleccionarRegistros);
               Exit;
            End;
         cdsActivo.Data := dm1.cdsMovCre.Data;
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
      End
   Else
      Begin
         xSQLin := 'ASOID IN ( ';
         cdsActivo.Data := dm1.cdsMovCre.Data;
         cdsActivo.First;
         While Not cdsActivo.eof Do
            Begin
               xSQLin := xSQLin + '''' + cdsActivo.fieldByname('ASOID').AsString + ''', ';
               cdsActivo.Next;
            End;
         xSQLin := Copy(xSQLin, 1, Length(xSQLin) - 2) + ' ) ';
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
            DM1.HojaExcel(lblSeleccion.Caption, dsActivo, dtgData);
         Except
            On Ex: Exception Do
               Application.MessageBox(PChar(Ex.Message), 'ERROR', 16);
         End;
      End;

   cdsActivo.Free;
   dsActivo.Free;
End;
(******************************************************************************)
// INICIO : SPP_201401_GESCOB
Procedure TfGestExt.bbtnImportacionMasivaClick(Sender: TObject);
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
   (*
   Function registrarArchivo(): integer;
   Var
      xSQL: String;
      xIDArchivo: integer;
   Begin
      ( * si se elimina el ultimo registro de la tabla GES_COB_ARC_IMP, entonces cuando vuelva a insertar un registro,
        se volvera a tomar el mismo correlativo, y por ende se aumentara el numero de registros en la tabla
        GES_COB_LOG_IMP_MAS, como por progrma nunca se borran registros de la tabla GES_COB_ARC_IMP,
        solo se marca con el flag, si se necesita borrar, entonces se debe crear un correlativo en la tabla
        CRE206 * )
      xSQL := 'SELECT NVL(MAX(IDARCHIVO),0)+1 IDARCHIVO FROM GES_COB_ARC_IMP';
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest(xSQL);
      DM1.cdsQry.Open;
      xIDArchivo := DM1.cdsQry.FieldByName('IDARCHIVO').Value;

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
         + ',' + QuotedStr(Trim(cdsPlanilla.FieldByName('PERIODO').AsString))
         + ',' + QuotedStr(Trim(cdsPlanilla.FieldByName('USUARIO_EXT').AsString))
         + ', ''EXTERNA MASIVA'', '
         + QuotedStr(ExtractFileName(sdGraba300.FileName)) + ', NULL, 0, '
         + ' 0, 0, SYSDATE,'
         + QuotedStr(DM1.wUsuario) + ', NULL, NULL,'
         + ' NULL, NULL,'
         + ' ''TRUNCADO'', SYSDATE, ' + QuotedStr(DM1.wUsuario) + ' )';
      DM1.DCOM1.AppServer.EjecutaSql(xSQL);
      result := xIDArchivo;
   End;

   Function actualizarRegistroArchivo(xIDArchivo: integer): String;
   Var
      xSQL: String;
      xCad: String;
   Begin
      xSQL := 'SELECT SUM(CASE WHEN TIPO_RESULTADO = ''ERROR'' THEN 1 ELSE 0 END) ERROR, '
         + '          SUM(CASE WHEN TIPO_RESULTADO = ''CORRECTO'' THEN 1 ELSE 0 END) CORRECTO '
         + '     FROM GES_COB_LOG_IMP_MAS '
         + '    WHERE IDARCHIVO = ' + IntToStr(xIDArchivo)
         + '      AND TIPO_IMPORTACION = ''EXTERNA MASIVA'' ';
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest(xSQL);
      DM1.cdsQry.Open;

      xSQL := 'UPDATE GES_COB_ARC_IMP '
         + '      SET NUM_REG_COR = ' + IntToStr(DM1.cdsQry.FieldByName('CORRECTO').Value)
         + '         ,NUM_REG_ERR = ' + IntToStr(DM1.cdsQry.FieldByName('ERROR').Value)
         + '         ,NUM_REG_TOT = ' + IntToStr(DM1.cdsQry.FieldByName('CORRECTO').Value + DM1.cdsQry.FieldByName('ERROR').Value)
         + '         ,ESTADO = ''SUBIDO'' '
         + '    WHERE IDARCHIVO = ' + IntToStr(xIDArchivo);
      DM1.DCOM1.AppServer.EjecutaSql(xSQL);
      xCad := 'Se Procesaron ' + IntToStr(DM1.cdsQry.FieldByName('CORRECTO').Value + DM1.cdsQry.FieldByName('ERROR').Value) + ' Registros'
         + chr(13) + IntToStr(DM1.cdsQry.FieldByName('CORRECTO').Value) + ' Correctos'
         + chr(13) + IntToStr(DM1.cdsQry.FieldByName('ERROR').Value) + ' Con Errores'
         + chr(13) + 'Para mayor detalle Revise el Log';
      result := xCad;
   End;

   Function QuoteStrAll(ICadena: String): String;
   Begin
      result := QuotedStr(Trim(AnsiReplaceStr(ICadena, '`', '')));
   End;
   *)
   // INICIO : SPP_201402_GESCOB
   xnNivel : integer;
   // FIN : SPP_201402_GESCOB
Begin
   // INICIO : SPP_201402_GESCOB
   xnNivel := StrToInt(Copy(DM1.NivelUsuario(DM1.wUsuario), 2, 1));
   If (xnNivel < 3) Then
Begin
      MessageDlg('OPCION NO DISPONIBLE PARA ESTE NIVEL DE USUARIO!!!', mtError, [mbOk], 0);
      Exit;
   End;
   // FIN : SPP_201402_GESCOB

   If trim(dblUserExt.Text) = '' Then
      Begin
         showmessage('Por favor seleccione un Gestor Externo!');
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
         showmessage('No se han obtenido datos ' + chr(13) + 'Por favor verifique que el archivo pertenesca al Gestor Externo : ' + dblUserExt.Text);
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
      begin
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

            If dblUserExt.Text <> cdsPlanilla.FieldByName('USUARIO_EXT').AsString Then
               Begin
                  Showmessage('El Usuario ' + dblUserExt.Text + ' es diferente al usuario del archivo (' + cdsPlanilla.FieldByName('USUARIO_EXT').AsString + ')');
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


   If MessageDlg('Confirma que desea Importar las Gestiones Externas ?    ', mtConfirmation, [mbYes, mbNo], 0) = mrNo Then exit;

   Screen.Cursor := crHourGlass;

   cdsPlanilla.First;
   //xIDArchivo := registrarArchivo();
   xIDArchivo := DM1.registrarArchivoImp(Trim(cdsPlanilla.FieldByName('PERIODO').AsString),
                                     Trim(cdsPlanilla.FieldByName('USUARIO_EXT').AsString),
                                     'EXTERNA MASIVA',
                                     ExtractFileName(sdGraba300.FileName));

   cdsPlanilla.First;
   While Not cdsPlanilla.Eof Do
      Begin
         Try
            xSQL := 'BEGIN DB2ADMIN.SP_GES_COB_IMP_EXT(' + IntToStr(xIDArchivo) + ','
               + DM1.QuoteStrAll(cdsPlanilla.FieldByName('USUARIO_EXT').AsString) + ','
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
   //xMsgSubida := actualizarRegistroArchivo(xIDArchivo);
   xMsgSubida := DM1.actualizarRegistroArchivoImp(xIDArchivo, 'EXTERNA MASIVA');

   Screen.Cursor := crDefault;
   ShowMessage(xMsgSubida);
   BitFiltrarClick(BitFiltrar);
End;
// FIN : SPP_201401_GESCOB
(******************************************************************************)
Procedure TfGestExt.bbtnLogImportacionClick(Sender: TObject);
   // INICIO : SPP_201402_GESCOB
var
   xnNivel : integer;
   // FIN : SPP_201402_GESCOB
Begin
   // INICIO : SPP_201402_GESCOB
   xnNivel := StrToInt(Copy(DM1.NivelUsuario(DM1.wUsuario), 2, 1));
   If (xnNivel < 3) Then
Begin
      MessageDlg('OPCION NO DISPONIBLE PARA ESTE NIVEL DE USUARIO!!!', mtError, [mbOk], 0);
      Exit;
   End;
   // FIN : SPP_201402_GESCOB
   
   Try
      fLogImpMas := TfLogImpMas.create(Self);
      fLogImpMas.ShowModal;
   Finally
      fLogImpMas.Free;
   End;
End;

(******************************************************************************)

Procedure TfGestExt.BitFiltrarClick(Sender: TObject);
Var
   xSQL1, xSQL2, xSQL3, xSQL4, xSQL6, xSQL7, xSQL8, wSQL: String;
   xSQLZip: String;
   xCodAcuerdo, xSQLAcuerdo: String;
Begin
   If trim(dblUserExt.Text) = '' Then
      Begin
         showmessage('Seleccione un Gestor');
         exit;
      End;

   xSQLZip := '';
   If Length(Trim(edtDpto.Text)) <> 0 Then
      xSQLZip := 'a.ZIPID LIKE ''' + dblcDpto.text;
   If Length(Trim(edtProvin.Text)) <> 0 Then
      xSQLZip := xSQLZip + dblcProvin.text;
   If Length(Trim(edtDist.Text)) <> 0 Then
      xSQLZip := xSQLZip + dblcDist.text;
   If xSQLZip <> '' Then
      xSQLZip := xSQLZip + '%'' ';
   If (xSQLZip <> '') Then
      xSQLZip := ' and ' + xSQLZip;

   If Not chkSaldo.Checked Then
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
      End;

   xSQL7 := ' ';
   If dblcCalifica.Text <> '' Then
      Begin
         xSQL7 := ' AND CFC_F=' + QuotedStr(dblcCalifica.Text)
      End;

   If ChkAntiguedad.Checked Then
      Begin
         If DM1.Valores(SpInicio.Text) > DM1.Valores(SpFin.Text) Then
            Begin
               MessageDlg(' El Dias Inicial No Puede Ser Mayor Que Dias Final!!', mtError, [mbOk], 0);
               Exit;
            End;

         If DM1.Valores(SpInicio.Text) = 0 Then
            Begin
               MessageDlg(' El Dias No Puede Ser 0!!', mtError, [mbOk], 0);
               Exit;
            End;

         If DM1.Valores(SpFin.Text) = 0 Then
            Begin
               MessageDlg(' El Dias Final No Puede Ser 0!!', mtError, [mbOk], 0);
               Exit;
            End;

         xSQL7 := ' AND DIASTRANS BETWEEN ' + QuotedStr(SpInicio.Text) + ' AND ' + QuotedStr(SpFin.Text) + ' ';
      End;

   xSQL8 := '  ';
   If ChkRango.Checked Then
      Begin
         If DM1.Valores(SpFin_R.Text) = 0 Then
            Begin
               MessageDlg(' El Valor para Número de Registros No Puede Ser 0!!', mtError, [mbOk], 0);
               Exit;
            End;
         xSQL8 := ' AND ROWNUM <=' + QuotedStr(SpFin_R.Text) + ' ';
      End;

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

   Screen.Cursor := crHourGlass;
   LimpiarGrid;
   xSQL := 'SELECT E.ASOCODMOD, PERIODO,C.OFDESNOM,A.OFDESID,A.USEID,D.USENOM,A.UPAGOID,A.UPROID,CFC_F,CFC_N,CFC_R,A.ASOTIPID,A.ASOID,A.ASOAPENOM,NVL(SALVEN,0) SALVEN,NVL(SALPEN,0) SALPEN, '
      + '          NVL(SALTOT,0) SALTOT,CUOVEN,CUOPEN,NVL(CUOVEN,0)+NVL(CUOPEN,0) CUOTOT,ESTDES,SALACT,RESGES,A.USUARIO,USUASIG,TO_DATE(FECASIG) FECASIG, ESTGES,TIPGES,ESTDEU,B.DESREF,DIASTRANS, DIASTRANSACT, A.ZIPID, E.ASODIR  '
      + '          ,F.DPTODES DEPARTAMENTO, G.CIUDDES PROVINCIA, H.ZIPDES DISTRITO '
      + '     FROM ' + xTabla + ' A,GES_TIP_REF_DET B,APO110 C,APO101 D, APO201 E '
      + '          ,APO158 F, TGE121 G, TGE122 H'
      + '    WHERE A.TIPGES = ''02'' ' // GESTION EXTERNA
      + xSituacion // Situacion 01 pendiente - 02 FGestionada - 03 Cerrada
      + '      AND A.USUARIO = ' + QuotedStr(xUsuarioGestor)
      + xSQLAcuerdo
      + '      AND A.ESTGES = B.CODREF(+) '
      + '      AND B.CODTIP = ''02'' '
      + '      AND A.ASOID = E.ASOID(+) '
      + '      AND A.OFDESID = C.OFDESID(+) '
      + '      AND A.USEID = D.USEID(+)'
      + '      AND A.UPAGOID = D.UPAGOID(+)'
      + '      AND A.UPROID = D.UPROID(+) '
      + '      AND SUBSTR(A.ZIPID,1,2) = F.DPTOID(+)'
      + '      AND SUBSTR(A.ZIPID,1,2) = G.DPTOID(+)'
      + '      AND SUBSTR(A.ZIPID,3,2) = G.CIUDID(+)'
      + '      AND SUBSTR(A.ZIPID,1,2) = H.DPTOID(+)'
      + '      AND SUBSTR(A.ZIPID,3,2) = H.CIUDID(+)'
      + '      AND SUBSTR(A.ZIPID,5,2) = H.ZIPID(+)'
      + xSQL1 + xSQL2 + xSQL3 + xSQL4 + xSQL6 + xSQL7 + xSQL8 + xSQLZip + xRefinanciado
      + ' ORDER BY A.ASOAPENOM';
   DM1.cdsMovCre.Close;
   DM1.cdsMovCre.DataRequest(xSQL);
   DM1.cdsMovCre.Open;
   HeadersGrid();

   TNumericField(DM1.cdsMovCre.FieldByName('SALTOT')).DisplayFormat := '###,###,##0.#0';
   TNumericField(DM1.cdsMovCre.FieldByName('SALVEN')).DisplayFormat := '###,###,##0.#0';
   TNumericField(DM1.cdsMovCre.FieldByName('SALPEN')).DisplayFormat := '###,###,##0.#0';
   TNumericField(DM1.cdsMovCre.FieldByName('SALACT')).DisplayFormat := '###,###,##0.#0';
   FootersGrid(nTabSheet); //Footers(xSQL);
   Screen.Cursor := crDefault;

End;

Procedure TfGestExt.BitResGesClick(Sender: TObject);
Var
   xSQL: String;
Begin
   If Length(Trim(EdtDesGntDet.Text)) = 0 Then
      Begin
         MessageDlg('DEBE SELECCIONAR UN RESULTADO DE GESTION!!!', mtError, [mbOk], 0);
         Exit;
      End;
   LimpiarGrid;
   lblSeleccion.Caption := EdtDesGntDet.Text;
   grpBusAso.Visible := True; //BitAcuPago.Visible:=True;
   Screen.Cursor := crHourGlass;

   xSQL := 'SELECT PERIODO,C.OFDESNOM,A.OFDESID,A.USEID,D.USENOM,A.UPAGOID,A.UPROID,CFC_F,CFC_N,CFC_R,ASOTIPID,ASOID,ASOAPENOM,NVL(SALVEN,0) SALVEN, NVL(SALPEN,0) SALPEN, '
      + '          NVL(SALTOT,0) SALTOT,CUOVEN,CUOPEN,NVL(CUOVEN,0)+NVL(CUOPEN,0) CUOTOT,ESTDES,SALACT,RESGES,A.USUARIO,USUASIG,TO_DATE(FECASIG) FECASIG, ESTGES,TIPGES,ESTDEU,B.DESREF,VENACT,PENACT,DIASTRANS  '
      + '          ,F.DPTODES DEPARTAMENTO, G.CIUDDES PROVINCIA, H.ZIPDES DISTRITO '
      + '     FROM ' + xTabla + ' A,GES_TIP_REF_DET B,APO110 C,APO101 D '
      + '          ,APO158 F, TGE121 G, TGE122 H'
      + '    WHERE A.ESTGES = B.CODREF(+) '
      + '      AND B.CODTIP = ''02'' '
      + '      AND A.ESTGES = ''02'' '
      + '      AND ASOID IN (SELECT ASOID '
      + '                      FROM GES_COB_SEG '
      + '                     WHERE FECHA BETWEEN ' + QuotedStr(DateToStr(dtpInicio.Date)) + ' AND ' + QuotedStr(DateToStr(dtpFin.Date))
      + '                       AND USUARIO = ' + QuotedStr(xUsuarioGestor)
      + '                       AND IDGESTIONDET = ' + QuotedStr(dblGestionDet.Text)
      + '                   ) '
      + '      AND A.USUARIO = ' + QuotedStr(xUsuarioGestor)
      + '      AND A.OFDESID = C.OFDESID(+) '
      + '      AND A.USEID = D.USEID(+) '
      + '      AND A.UPAGOID = D.UPAGOID(+) '
      + '      AND A.UPROID = D.UPROID(+) '
      + '      AND SUBSTR(A.ZIPID,1,2) = F.DPTOID(+) '
      + '      AND SUBSTR(A.ZIPID,1,2) = G.DPTOID(+) '
      + '      AND SUBSTR(A.ZIPID,3,2) = G.CIUDID(+) '
      + '      AND SUBSTR(A.ZIPID,1,2) = H.DPTOID(+) '
      + '      AND SUBSTR(A.ZIPID,3,2) = H.CIUDID(+) '
      + '      AND SUBSTR(A.ZIPID,5,2) = H.ZIPID(+)'
      + '    ORDER BY ASOAPENOM ';

   DM1.cdsMovCre.Close;
   DM1.cdsMovCre.DataRequest(xSQL);
   DM1.cdsMovCre.Open;
   HeadersGrid();
   TNumericField(DM1.cdsMovCre.FieldByName('SALTOT')).DisplayFormat := '###,###,##0.#0';
   TNumericField(DM1.cdsMovCre.FieldByName('SALVEN')).DisplayFormat := '###,###,##0.#0';
   TNumericField(DM1.cdsMovCre.FieldByName('SALPEN')).DisplayFormat := '###,###,##0.#0';
   TNumericField(DM1.cdsMovCre.FieldByName('SALACT')).DisplayFormat := '###,###,##0.#0';
   Footers(xSQL);

   DM1.xSgr := '02';
   Screen.Cursor := crDefault;

End;

Procedure TfGestExt.chbxCompromisosClick(Sender: TObject);
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

(******************************************************************************)
Function TfGestExt.isGeneroDataHojaRuta: boolean;
Var
   i: integer;
   isGeneroData: boolean;
Begin
   isGeneroData := false;
   xSQLin := '';
   If dtgGestion.SelectedList.Count <= 0 Then
      Begin
         ShowMessage(xMsgSeleccionarRegistros);
         Exit;
      End;

   cdsHojaRuta.IndexFieldNames := '';
   cdsHojaRuta.Data := null;
   cdsHojaRuta.CreateDataSet;
   dm1.cdsMovCre.DisableControls;
   For i := 0 To dtgGestion.SelectedList.Count - 1 Do
      Begin
         dtgGestion.datasource.dataset.GotoBookmark(dtgGestion.SelectedList.items[i]);
         cdsHojaRuta.Insert;
         cdsHojaRuta.FieldByName('modular').AsString := DM1.cdsMovCre.fieldByname('ASOCODMOD').AsString;
         cdsHojaRuta.FieldByName('domicilio').AsString := DM1.cdsMovCre.fieldByname('ASODIR').AsString;
         cdsHojaRuta.FieldByName('distrito').AsString := DM1.cdsMovCre.fieldByname('DISTRITO').AsString;
         cdsHojaRuta.FieldByName('asociado').AsString := DM1.cdsMovCre.fieldByname('ASOAPENOM').AsString;
         cdsHojaRuta.Post;
      End;
   dm1.cdsMovCre.EnableControls;

   cdsHojaRuta.IndexFieldNames := 'asociado';
   cdsHojaRuta.First;
   i := 1;
   While Not cdsHojaRuta.Eof Do
      Begin
         cdsHojaRuta.edit;
         cdsHojaRuta.FieldByName('nro').AsInteger := i;
         cdsHojaRuta.Post;
         cdsHojaRuta.Next;
         i := i + 1;
      End;
   dtgData.DataSource := dsHojaRuta;
   isGeneroData := true;
   result := isGeneroData;
End;

(******************************************************************************)
Procedure TfGestExt.btnExpHojaRutaClick(Sender: TObject);
Begin
   If isGeneroDataHojaRuta() Then
      Begin
         Try
            DM1.HojaExcel('Hoja_Ruta', dsHojaRuta, dtgData);
         Except
            On Ex: Exception Do
               Application.MessageBox(PChar(Ex.Message), 'ERROR', 16);
         End;
      End;
End;

(******************************************************************************)
Procedure TfGestExt.btnImpHojaRutaClick(Sender: TObject);
Begin
   If isGeneroDataHojaRuta() Then
      Begin
         pplblUsuario.Text := dm1.wUsuario;
         pplblGestor.Text := xUsuarioGestor;
         dtgGestion.datasource.dataset.GotoBookmark(dtgGestion.SelectedList.items[0]);
         pplblSupervisor.Text := dm1.cdsMovCre.fieldbyname('USUASIG').asstring;
         pprHojaRuta.Print;
         //ppdHojaRuta.Show;
      End;
End;
(******************************************************************************)
End.


