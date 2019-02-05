// Inicio Uso Estándares: 01/08/2011
// Unidad : Gestión de Cobranzas
// Formulario : fRepIngMen
// Fecha de Creación :
// Autor : Equipo de Sistemas
// Objetivo : Reporte de Ingresos Mensuales
// Actualizaciones:
// HPC_201119_GESCOB 13/10/2011 Acuerdo de Atencion 2011-02-V2.0
// HPC_201501_GESCOB: mejoras al proceso depriorizacion de inicio de mes
Unit GES316;

Interface

Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   ppEndUsr, ppParameter, ppCtrls, ppBands, ppClass, ppVar, ppPrnabl,
   ppCache, ppProd, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, Grids,
   Wwdbigrd, Wwdbgrid, StdCtrls, Buttons, ExtCtrls,
   Dialogs, wwExport, shellapi, DB, wwdblook;

Type
   TfRepIngMen = Class(TForm)
      pnlFiltro : TPanel;
      ppdbpPrincipal : TppDBPipeline;
      ppReport1 : TppReport;
      ppDesigner1 : TppDesigner;
      ppParameterList1 : TppParameterList;
      Panel2 : TPanel;
      btnExcel : TBitBtn;
      btnImprimir : TBitBtn;
      BitSalir : TBitBtn;
      ppHeaderBand1 : TppHeaderBand;
      ppLabel880 : TppLabel;
      ppLabel881 : TppLabel;
      ppLabel892 : TppLabel;
      ppLabel893 : TppLabel;
      ppLabel894 : TppLabel;
      ppSystemVariable89 : TppSystemVariable;
      ppSystemVariable90 : TppSystemVariable;
      ppSystemVariable91 : TppSystemVariable;
      ppLabel895 : TppLabel;
      ppLabel896 : TppLabel;
      ppLabel897 : TppLabel;
      lblTit01 : TppLabel;
      lblTit02 : TppLabel;
      ppLabel1 : TppLabel;
      ppLabel2 : TppLabel;
      ppLine1 : TppLine;
      ppLabel4 : TppLabel;
      ppLabel5 : TppLabel;
      ppLabel6 : TppLabel;
      ppLabel7 : TppLabel;
      ppLabel8 : TppLabel;
      ppLabel9 : TppLabel;
      ppLabel10 : TppLabel;
      ppLabel11 : TppLabel;
      ppLabel12 : TppLabel;
      ppLabel13 : TppLabel;
      ppLabel14 : TppLabel;
      ppLabel15 : TppLabel;
      ppLabel16 : TppLabel;
      ppLabel17 : TppLabel;
      ppLabel18 : TppLabel;
      ppDetailBand1 : TppDetailBand;
      ppDBText2 : TppDBText;
      ppDBText4 : TppDBText;
      ppDBText5 : TppDBText;
      ppDBText6 : TppDBText;
      ppDBText7 : TppDBText;
      ppDBText8 : TppDBText;
      ppDBText9 : TppDBText;
      ppDBText10 : TppDBText;
      ppDBText3 : TppDBText;
      ppFooterBand1 : TppFooterBand;
      ppGroup1 : TppGroup;
      ppGroupHeaderBand1 : TppGroupHeaderBand;
      ppDBText1 : TppDBText;
      ppLine3 : TppLine;
      ppGroupFooterBand1 : TppGroupFooterBand;
      ppLine2 : TppLine;
      ppDBCalc1 : TppDBCalc;
      ppDBCalc2 : TppDBCalc;
      ppLabel3 : TppLabel;
      ppDBCalc3 : TppDBCalc;
      ppDBCalc4 : TppDBCalc;
      ppDBCalc5 : TppDBCalc;
      ppDBCalc6 : TppDBCalc;
      ppDBCalc7 : TppDBCalc;
      ppDBCalc8 : TppDBCalc;
      ppLabel19 : TppLabel;
      ppLabel20 : TppLabel;
      ppDBText11 : TppDBText;
      ppDBCalc9 : TppDBCalc;
      dbgPrincipal : TwwDBGrid;
      ppLabel21 : TppLabel;
      ppLabel22 : TppLabel;
      ppDBText12 : TppDBText;
      ppDBCalc10 : TppDBCalc;
      ppLabel23 : TppLabel;
      ppLabel24 : TppLabel;
      ppDBText13 : TppDBText;
      ppDBCalc11 : TppDBCalc;
      lblPeriodo : TLabel;
      cboPeriodo : TwwDBLookupCombo;
      rgMovimientos : TRadioGroup;
      btnFiltrar : TBitBtn;
      Procedure rgMovimientosClick(Sender : TObject);
      Procedure btnExcelClick(Sender : TObject);
      Procedure BitSalirClick(Sender : TObject);
      Procedure FormClose(Sender : TObject; Var Action : TCloseAction);
      Procedure dbgPrincipalDblClick(Sender : TObject);
      Procedure FormActivate(Sender : TObject);
      Procedure btnImprimirClick(Sender : TObject);
      Procedure btnFiltrarClick(Sender : TObject);
      Procedure cboPeriodoChange(Sender : TObject);
   Private
      xPeriodo : String;
      Procedure cargarGrilla;
      Procedure cargarFormatoGrilla;
      Procedure limpiarGrilla; // HPC_201119_GESCOB

   Public
    { Public declarations }
   End;

Var
   fRepIngMen : TfRepIngMen;

Implementation
Uses GESDM1, GES317;
{$R *.dfm}

(******************************************************************************)

Procedure TfRepIngMen.FormActivate(Sender : TObject);
Var
   xSQL : String;

   Procedure bloquearControles();
   Begin
      pnlFiltro.Enabled := false;
      btnExcel.Enabled := false;
      btnImprimir.Enabled := false;
   End;
Begin

   Screen.Cursor := crHourGlass;
   xSQL := 'SELECT COUNT(ASOID) CANT '
      + '     FROM GES_COB_RPT_ING_MEN ';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSQL);
   DM1.cdsQry.Open;
   If (DM1.cdsQry.FieldByName('CANT').Value <= 0) Then
   Begin
      Screen.Cursor := crDefault;
      bloquearControles();
      lblPeriodo.Caption := 'No existe informacion procesada para generar los reportes!';
      ShowMessage(lblPeriodo.Caption);
      exit;
   End;

   //Inicio HPC_201119_GESCOB
   xSQL := 'SELECT DISTINCT PERIODO '
      + '     FROM GES_COB_RPT_ING_MEN '
      + '    ORDER BY PERIODO DESC ';
   DM1.cdsQry4.Close;
   DM1.cdsQry4.DataRequest(xSQL);
   DM1.cdsQry4.Open;
   cboPeriodo.LookupTable := DM1.cdsQry4;
   cboPeriodo.LookupField := 'PERIODO';
   //Fin HPC_201119_GESCOB

   rgMovimientos.Items.Clear;
   rgMovimientos.Columns := 3;
   rgMovimientos.Items.Add('Con Movimientos');
   rgMovimientos.Items.Add('Sin Movimientos');
   rgMovimientos.Items.Add('Todos');
   rgMovimientos.ItemIndex := 0; // este invoca al evento onclic

   Screen.Cursor := crDefault;
End;

(******************************************************************************)
//Inicio HPC_201119_GESCOB

Procedure TfRepIngMen.rgMovimientosClick(Sender : TObject);
Begin
   //cargarGrilla();
   limpiarGrilla();
End;
//Fin HPC_201119_GESCOB
(******************************************************************************)

Procedure TfRepIngMen.btnExcelClick(Sender : TObject);
Begin
   Screen.Cursor := crHourGlass;
   Try
      With dbgPrincipal, dbgPrincipal.ExportOptions Do
      Begin
         ExportType := wwgetSYLK;
         FileName := 'IngresosMensuales.slk';
         DM1.OpcionesExportExcel(dbgPrincipal.ExportOptions);
         dbgPrincipal.ExportOptions.TitleName := 'Ingresos Mensuales';
         Save;
         If Not (esoClipboard In Options) Then
            ShellExecute(Handle, 'Open', PChar(dbgPrincipal.exportoptions.Filename), Nil, Nil, sw_shownormal);
      End;
      Screen.Cursor := crDefault;
   Except
      Screen.Cursor := crDefault;
      showmessage('No se puede grabar el Archivo ' + chr(13) + 'Cierre todos los Archivos en Excel y vuelva a intentarlo');
   End;

End;
(******************************************************************************)

Procedure TfRepIngMen.BitSalirClick(Sender : TObject);
Begin
   Close;
End;

(******************************************************************************)

Procedure TfRepIngMen.FormClose(Sender : TObject;
   Var Action : TCloseAction);
Begin
   Action := caFree;
End;
(******************************************************************************)
//Inicio HPC_201119_GESCOB
Procedure TfRepIngMen.cargarGrilla();
Var
   xSQL : String;
Begin
   Screen.Cursor := crHourGlass;
   btnExcel.Enabled := false;
   btnImprimir.Enabled := false;
   xPeriodo := cboPeriodo.Text;

   If (xPeriodo = '') Then
   Begin
      Screen.Cursor := crDefault;
      MessageDlg('Por favor seleccione un Periodo!', mtInformation, [mbOk], 0);
      exit;
   End;

   xSQL := ' SELECT NVL(SUM(1) - SUM(CASE WHEN FLG = ''S'' THEN 1 ELSE 0 END), 0) XPROCESAR '
      + '   FROM GES_COB_RPT_ING_MEN '
      + '  WHERE PERIODO = ' + QuotedStr(xPeriodo);
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSQL);
   DM1.cdsQry.Open;

   If (DM1.cdsQry.FieldByName('XPROCESAR').Value > 0) Then
   Begin
      Screen.Cursor := crDefault;
      MessageDlg('El Periodo ' + xPeriodo + ' aun se esta procesando, por favor intentelo en otro momento!', mtInformation, [mbOk], 0);
      exit;
   End;
   // INICIO : HPC_201501_GESCOB
   xSQL := 'SELECT DPTO, PROV, SUM(1) TOTASO, SUM(VALCUO) VALCUO, SUM(TOTEFE) TOTEFE, SUM(TOTBAN) TOTBAN, '
      + '          SUM(TOTNAB) TOTNAB, SUM(TOTREF) TOTREF, SUM(TOTPLA) TOTPLA, '
      + '          SUM(TOTBEN) TOTBEN, SUM(TOTAL) TOTAL, SUM(SALVEN) SALVEN, SUM(SALDIF) SALDIF '
      + '         ,SUM(SALTOT) SALTOT '
      + '         ,SUM(SALPEN) SALPEN '
      + '         ,SUM(SALVENACT) SALVENACT '
      + '         ,SUM(AMOVENACT) AMOVENACT '
      + '         ,SUM(INTVENACT) INTVENACT '
      + '         ,SUM(GASVENACT) GASVENACT '
      + '         ,SUM(DESVENACT) DESVENACT '
      + '         ,SUM(AMOPAGACT) AMOPAGACT '
      + '         ,SUM(INTPAGACT) INTPAGACT '
      + '         ,SUM(GASPAGACT) GASPAGACT '
      + '         ,SUM(DESPAGACT) DESPAGACT '
      + '     FROM GES_COB_RPT_ING_MEN '
      + '    WHERE PERIODO = ' + QuotedStr(xPeriodo);
   // FIN : HPC_201501_GESCOB

   Case rgMovimientos.ItemIndex Of
      0 : xSQL := xSQL + ' AND TOTAL > 0 ';
      1 : xSQL := xSQL + ' AND TOTAL = 0 ';
      2 : xSQL := xSQL + '';
   End;
   xSQL := xSQL + ' GROUP BY DPTO, PROV ';
   xSQL := xSQL + ' ORDER BY DPTO, PROV ';

   DM1.cdsQry2.Close;
   DM1.cdsQry2.DataRequest(xSQL);
   DM1.cdsQry2.Open;
   If DM1.cdsQry2.RecordCount > 0 Then
   Begin
      btnExcel.Enabled := true;
      btnImprimir.Enabled := true;
   End;
   cargarFormatoGrilla();
   Screen.Cursor := crDefault;
End;
//Fin HPC_201119_GESCOB
(******************************************************************************)

Procedure TfRepIngMen.cargarFormatoGrilla();
Var
   XVALCUO, XTOTEFE, XTOTBAN, XTOTNAB, XTOTREF,
      XTOTPLA, XTOTBEN, XTOTAL, XTOTASO, XSALVEN, XSALDIF : Currency;
   // INICIO : HPC_201501_GESCOB
   xnSALTOT, xnSALPEN, xnSALVENACT, xnAMOVENACT, xnINTVENACT, xnGASVENACT,
   xnDESVENACT, xnAMOPAGACT, xnINTPAGACT, xnGASPAGACT, xnDESPAGACT : Currency;
   // FIN : HPC_201501_GESCOB
Begin

   XVALCUO := 0;
   XTOTEFE := 0;
   XTOTBAN := 0;
   XTOTNAB := 0;
   XTOTREF := 0;
   XTOTPLA := 0;
   XTOTBEN := 0;
   XTOTAL := 0;
   XTOTASO := 0;
   XSALVEN := 0;
   XSALDIF := 0;
   // INICIO : HPC_201501_GESCOB
   xnSALTOT := 0;
   xnSALPEN := 0;
   xnSALVENACT := 0;
   xnAMOVENACT := 0;
   xnINTVENACT := 0;
   xnGASVENACT := 0;
   xnDESVENACT := 0;
   xnAMOPAGACT := 0;
   xnINTPAGACT := 0;
   xnGASPAGACT := 0;
   xnDESPAGACT := 0;
   // FIN : HPC_201501_GESCOB
   DM1.cdsQry2.First;
   While Not DM1.cdsQry2.Eof Do
   Begin
      XVALCUO := XVALCUO + Dm1.cdsQry2.fieldbyname('VALCUO').AsCurrency;
      XTOTEFE := XTOTEFE + Dm1.cdsQry2.fieldbyname('TOTEFE').AsCurrency;
      XTOTBAN := XTOTBAN + Dm1.cdsQry2.fieldbyname('TOTBAN').AsCurrency;
      XTOTNAB := XTOTNAB + Dm1.cdsQry2.fieldbyname('TOTNAB').AsCurrency;
      XTOTREF := XTOTREF + Dm1.cdsQry2.fieldbyname('TOTREF').AsCurrency;
      XTOTPLA := XTOTPLA + Dm1.cdsQry2.fieldbyname('TOTPLA').AsCurrency;
      XTOTBEN := XTOTBEN + Dm1.cdsQry2.fieldbyname('TOTBEN').AsCurrency;
      XTOTAL := XTOTAL + Dm1.cdsQry2.fieldbyname('TOTAL').AsCurrency;
      XTOTASO := XTOTASO + Dm1.cdsQry2.fieldbyname('TOTASO').AsCurrency;
      XSALVEN := XSALVEN + Dm1.cdsQry2.fieldbyname('SALVEN').AsCurrency;
      XSALDIF := XSALDIF + Dm1.cdsQry2.fieldbyname('SALDIF').AsCurrency;
      // INICIO : HPC_201501_GESCOB
      xnSALTOT    := xnSALTOT    + Dm1.cdsQry2.fieldbyname('SALTOT').AsCurrency;
      xnSALPEN    := xnSALPEN    + Dm1.cdsQry2.fieldbyname('SALPEN').AsCurrency;
      xnSALVENACT := xnSALVENACT + Dm1.cdsQry2.fieldbyname('SALVENACT').AsCurrency;
      xnAMOVENACT := xnAMOVENACT + Dm1.cdsQry2.fieldbyname('AMOVENACT').AsCurrency;
      xnINTVENACT := xnINTVENACT + Dm1.cdsQry2.fieldbyname('INTVENACT').AsCurrency;
      xnGASVENACT := xnGASVENACT + Dm1.cdsQry2.fieldbyname('GASVENACT').AsCurrency;
      xnDESVENACT := xnDESVENACT + Dm1.cdsQry2.fieldbyname('DESVENACT').AsCurrency;
      xnAMOPAGACT := xnAMOPAGACT + Dm1.cdsQry2.fieldbyname('AMOPAGACT').AsCurrency;
      xnINTPAGACT := xnINTPAGACT + Dm1.cdsQry2.fieldbyname('INTPAGACT').AsCurrency;
      xnGASPAGACT := xnGASPAGACT + Dm1.cdsQry2.fieldbyname('GASPAGACT').AsCurrency;
      xnDESPAGACT := xnDESPAGACT + Dm1.cdsQry2.fieldbyname('DESPAGACT').AsCurrency;
      // FIN : HPC_201501_GESCOB
      DM1.cdsQry2.Next;
   End;
   DM1.cdsQry2.First;

   dbgPrincipal.DataSource := DM1.dsQry2;
   dbgPrincipal.GroupFieldName := 'DPTO';
   //Inicio HPC_201119_GESCOB
   dbgPrincipal.Selected.Clear;
   dbgPrincipal.Selected.Add('DPTO'#9'15'#9'DEPARTAMENTO');
   dbgPrincipal.Selected.Add('PROV'#9'15'#9'PROVINCIA');
   dbgPrincipal.Selected.Add('VALCUO'#9'15'#9'TOTAL~VAL.CUO');
   dbgPrincipal.Selected.Add('SALVEN'#9'15'#9'TOTAL~SAL.VEN');
   dbgPrincipal.Selected.Add('SALDIF'#9'15'#9'TOTAL~SAL.DIF');
   dbgPrincipal.Selected.Add('TOTEFE'#9'15'#9'TOTAL~EFECT');
   dbgPrincipal.Selected.Add('TOTBAN'#9'15'#9'TOTAL~BANCO');
   dbgPrincipal.Selected.Add('TOTNAB'#9'15'#9'TOTAL~N.ABO');
   dbgPrincipal.Selected.Add('TOTREF'#9'15'#9'TOTAL~REFIN');
   dbgPrincipal.Selected.Add('TOTPLA'#9'15'#9'TOTAL~PLANI');
   dbgPrincipal.Selected.Add('TOTBEN'#9'15'#9'TOTAL~BENEF');
   dbgPrincipal.Selected.Add('TOTAL'#9'15'#9'TOTAL~PAGOS');
   dbgPrincipal.Selected.Add('TOTASO'#9'15'#9'TOTAL~ASOCIADOS');
   // INICIO : HPC_201501_GESCOB
   dbgPrincipal.Selected.Add('SALTOT'#9'15'#9'SALDO~TOTAL');
   dbgPrincipal.Selected.Add('SALPEN'#9'15'#9'SALDO~NO VENCIDO');
   dbgPrincipal.Selected.Add('SALVENACT'#9'15'#9'SALDO~VENCIDO ACTUAL');
   dbgPrincipal.Selected.Add('AMOVENACT'#9'15'#9'AMORTIZACIÓN~VENCIDA ACTUAL');
   dbgPrincipal.Selected.Add('INTVENACT'#9'15'#9'INTERÉS~VENCIDO ACTUAL');
   dbgPrincipal.Selected.Add('GASVENACT'#9'15'#9'GASTO~VENCIDO ACTUAL');
   dbgPrincipal.Selected.Add('DESVENACT'#9'15'#9'DESGRAVAMEN~VENCIDO ACTUAL');
   dbgPrincipal.Selected.Add('AMOPAGACT'#9'15'#9'AMORTIZACION~PAGADA ACTUAL');
   dbgPrincipal.Selected.Add('INTPAGACT'#9'15'#9'INTERES~PAGADO ACTUAL');
   dbgPrincipal.Selected.Add('GASPAGACT'#9'15'#9'GASTO~PAGADO ACTUAL');
   dbgPrincipal.Selected.Add('DESPAGACT'#9'15'#9'DESGRAVAMEN~PAGADO ACTUAL');
   // FIN : HPC_201501_GESCOB
   dbgPrincipal.ApplySelected;
   //Fin HPC_201119_GESCOB

   TNumericField(Dm1.cdsQry2.fieldbyname('VALCUO')).DisplayFormat := '###,###.#0';
   TNumericField(Dm1.cdsQry2.fieldbyname('SALVEN')).DisplayFormat := '###,###.#0';
   TNumericField(Dm1.cdsQry2.fieldbyname('SALDIF')).DisplayFormat := '###,###.#0';
   TNumericField(Dm1.cdsQry2.fieldbyname('TOTEFE')).DisplayFormat := '###,###.#0';
   TNumericField(Dm1.cdsQry2.fieldbyname('TOTBAN')).DisplayFormat := '###,###.#0';
   TNumericField(Dm1.cdsQry2.fieldbyname('TOTNAB')).DisplayFormat := '###,###.#0';
   TNumericField(Dm1.cdsQry2.fieldbyname('TOTREF')).DisplayFormat := '###,###.#0';
   TNumericField(Dm1.cdsQry2.fieldbyname('TOTPLA')).DisplayFormat := '###,###.#0';
   TNumericField(Dm1.cdsQry2.fieldbyname('TOTBEN')).DisplayFormat := '###,###.#0';
   TNumericField(Dm1.cdsQry2.fieldbyname('TOTAL')).DisplayFormat := '###,###.#0';
   TNumericField(Dm1.cdsQry2.fieldbyname('TOTASO')).DisplayFormat := '###,##0';
   // INICIO : HPC_201501_GESCOB
   TNumericField(Dm1.cdsQry2.fieldbyname('SALTOT')).DisplayFormat    := '###,###.#0';
   TNumericField(Dm1.cdsQry2.fieldbyname('SALPEN')).DisplayFormat    := '###,###.#0';
   TNumericField(Dm1.cdsQry2.fieldbyname('SALVENACT')).DisplayFormat := '###,###.#0';
   TNumericField(Dm1.cdsQry2.fieldbyname('AMOVENACT')).DisplayFormat := '###,###.#0';
   TNumericField(Dm1.cdsQry2.fieldbyname('INTVENACT')).DisplayFormat := '###,###.#0';
   TNumericField(Dm1.cdsQry2.fieldbyname('GASVENACT')).DisplayFormat := '###,###.#0';
   TNumericField(Dm1.cdsQry2.fieldbyname('DESVENACT')).DisplayFormat := '###,###.#0';
   TNumericField(Dm1.cdsQry2.fieldbyname('AMOPAGACT')).DisplayFormat := '###,###.#0';
   TNumericField(Dm1.cdsQry2.fieldbyname('INTPAGACT')).DisplayFormat := '###,###.#0';
   TNumericField(Dm1.cdsQry2.fieldbyname('GASPAGACT')).DisplayFormat := '###,###.#0';
   TNumericField(Dm1.cdsQry2.fieldbyname('DESPAGACT')).DisplayFormat := '###,###.#0';
   // FIN : HPC_201501_GESCOB

   dbgPrincipal.ColumnByName('VALCUO').FooterValue := FloatToStrF(XVALCUO, ffNumber, 15, 2);
   dbgPrincipal.ColumnByName('SALVEN').FooterValue := FloatToStrF(XSALVEN, ffNumber, 15, 2);
   dbgPrincipal.ColumnByName('SALDIF').FooterValue := FloatToStrF(XSALDIF, ffNumber, 15, 2);
   dbgPrincipal.ColumnByName('TOTEFE').FooterValue := FloatToStrF(XTOTEFE, ffNumber, 15, 2);
   dbgPrincipal.ColumnByName('TOTBAN').FooterValue := FloatToStrF(XTOTBAN, ffNumber, 15, 2);
   dbgPrincipal.ColumnByName('TOTNAB').FooterValue := FloatToStrF(XTOTNAB, ffNumber, 15, 2);
   dbgPrincipal.ColumnByName('TOTREF').FooterValue := FloatToStrF(XTOTREF, ffNumber, 15, 2);
   dbgPrincipal.ColumnByName('TOTPLA').FooterValue := FloatToStrF(XTOTPLA, ffNumber, 15, 2);
   dbgPrincipal.ColumnByName('TOTBEN').FooterValue := FloatToStrF(XTOTBEN, ffNumber, 15, 2);
   dbgPrincipal.ColumnByName('TOTAL').FooterValue := FloatToStrF(XTOTAL, ffNumber, 15, 2);
   dbgPrincipal.ColumnByName('TOTASO').FooterValue := FloatToStrF(XTOTASO, ffNumber, 15, 0);
   // INICIO : HPC_201501_GESCOB
   dbgPrincipal.ColumnByName('SALTOT').FooterValue    := FloatToStrF(xnSALTOT,    ffNumber, 15, 2);
   dbgPrincipal.ColumnByName('SALPEN').FooterValue    := FloatToStrF(xnSALPEN,    ffNumber, 15, 2);
   dbgPrincipal.ColumnByName('SALVENACT').FooterValue := FloatToStrF(xnSALVENACT, ffNumber, 15, 2);
   dbgPrincipal.ColumnByName('AMOVENACT').FooterValue := FloatToStrF(xnAMOVENACT, ffNumber, 15, 2);
   dbgPrincipal.ColumnByName('INTVENACT').FooterValue := FloatToStrF(xnINTVENACT, ffNumber, 15, 2);
   dbgPrincipal.ColumnByName('GASVENACT').FooterValue := FloatToStrF(xnGASVENACT, ffNumber, 15, 2);
   dbgPrincipal.ColumnByName('DESVENACT').FooterValue := FloatToStrF(xnDESVENACT, ffNumber, 15, 2);
   dbgPrincipal.ColumnByName('AMOPAGACT').FooterValue := FloatToStrF(xnAMOPAGACT, ffNumber, 15, 2);
   dbgPrincipal.ColumnByName('INTPAGACT').FooterValue := FloatToStrF(xnINTPAGACT, ffNumber, 15, 2);
   dbgPrincipal.ColumnByName('GASPAGACT').FooterValue := FloatToStrF(xnGASPAGACT, ffNumber, 15, 2);
   dbgPrincipal.ColumnByName('DESPAGACT').FooterValue := FloatToStrF(xnDESPAGACT, ffNumber, 15, 2);
   // FIN : HPC_201501_GESCOB
   dbgPrincipal.Refresh;

End;

(******************************************************************************)

Procedure TfRepIngMen.dbgPrincipalDblClick(Sender : TObject);
Begin
   If Dm1.cdsQry2.RecordCount > 0 Then
   Begin
      Try
         fRepIngMenDet := TfRepIngMenDet.Create(self);
         fRepIngMenDet.lblPeriodo.Caption := self.lblPeriodo.Caption;
         fRepIngMenDet.lblMovimiento.Caption := 'Tipo : ' + self.rgMovimientos.Items.Strings[self.rgMovimientos.ItemIndex];
         fRepIngMenDet.lblDepartamento.Caption := 'Departamento : ' + DM1.cdsQry2.fieldbyname('DPTO').AsString;
         fRepIngMenDet.xDpto := DM1.cdsQry2.fieldbyname('DPTO').AsString;
         fRepIngMenDet.xMovimiento := self.rgMovimientos.ItemIndex;
         fRepIngMenDet.xPeriodo := self.xPeriodo;
         fRepIngMenDet.ShowModal;
      Finally
         fRepIngMenDet.Free;
      End;
   End;
End;
(******************************************************************************)

Procedure TfRepIngMen.btnImprimirClick(Sender : TObject);
Var
   xSQL : String;
   XULTDIA, XMES, XANHO : String;
Begin
   Screen.Cursor := crHourGlass;

   xSQL := 'SELECT TO_CHAR(FECHA, ''DD'') ULTDIA, '
      + '             F_MES(TO_CHAR(FECHA, ''MM'')) MES , '
      + '             TO_CHAR(FECHA, ''YYYY'') ANHO '
      + '        FROM (SELECT LAST_DAY(TO_DATE(' + QuotedStr(xPeriodo + '01') + ', ''YYYYMMDD'')) FECHA  FROM DUAL) ';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSQL);
   DM1.cdsQry.Open;
   XULTDIA := DM1.cdsQry.fieldbyname('ULTDIA').AsString;
   XMES := DM1.cdsQry.fieldbyname('MES').AsString;
   XANHO := DM1.cdsQry.fieldbyname('ANHO').AsString;

   lblTit01.Text := 'RESUMEN DE PAGOS DEL 01 AL ' + XULTDIA + ' DE ' + XMES + ' DEL ' + XANHO;
   lblTit02.Text := 'Tipo : ' + self.rgMovimientos.Items.Strings[self.rgMovimientos.ItemIndex];

   ppdbpPrincipal.DataSource := DM1.dsQry2;

   //ppDesigner1.ShowModal; //

   ppReport1.Print;
   ppReport1.Cancel;

   Screen.Cursor := CrDefault;

End;
(******************************************************************************)
//Inicio HPC_201119_GESCOB
Procedure TfRepIngMen.btnFiltrarClick(Sender : TObject);
Begin
   cargarGrilla();
End;
(******************************************************************************)

Procedure TfRepIngMen.cboPeriodoChange(Sender : TObject);
Begin
   limpiarGrilla();
End;
(******************************************************************************)

Procedure TfRepIngMen.limpiarGrilla();
Var
   xSQL : String;
Begin
   Screen.Cursor := crHourGlass;
   btnExcel.Enabled := false;
   btnImprimir.Enabled := false;
   // INICIO : HPC_201501_GESCOB
   xSQL := 'SELECT DPTO, PROV, SUM(1) TOTASO, SUM(VALCUO) VALCUO, SUM(TOTEFE) TOTEFE, SUM(TOTBAN) TOTBAN, '
      + '          SUM(TOTNAB) TOTNAB, SUM(TOTREF) TOTREF, SUM(TOTPLA) TOTPLA, '
      + '          SUM(TOTBEN) TOTBEN, SUM(TOTAL) TOTAL, SUM(SALVEN) SALVEN, SUM(SALDIF) SALDIF '
      + '         ,SUM(SALTOT) SALTOT '
      + '         ,SUM(SALPEN) SALPEN '
      + '         ,SUM(SALVENACT) SALVENACT '
      + '         ,SUM(AMOVENACT) AMOVENACT '
      + '         ,SUM(INTVENACT) INTVENACT '
      + '         ,SUM(GASVENACT) GASVENACT '
      + '         ,SUM(DESVENACT) DESVENACT '
      + '         ,SUM(AMOPAGACT) AMOPAGACT '
      + '         ,SUM(INTPAGACT) INTPAGACT '
      + '         ,SUM(GASPAGACT) GASPAGACT '
      + '         ,SUM(DESPAGACT) DESPAGACT '
      + '     FROM GES_COB_RPT_ING_MEN '
      + '    WHERE 1 = 2';
   xSQL := xSQL + ' GROUP BY DPTO, PROV ';
   xSQL := xSQL + ' ORDER BY DPTO, PROV ';
   // FIN : HPC_201501_GESCOB

   DM1.cdsQry2.Close;
   DM1.cdsQry2.DataRequest(xSQL);
   DM1.cdsQry2.Open;
   cargarFormatoGrilla();
   Screen.Cursor := crDefault;
End;
//Fin HPC_201119_GESCOB
(******************************************************************************)

End.

