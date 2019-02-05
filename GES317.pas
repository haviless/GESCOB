// Inicio Uso Estándares: 01/08/2011
// Unidad : Gestión de Cobranzas
// Formulario : fRepIngMenDet
// Fecha de Creación :
// Autor : Equipo de Sistemas
// Objetivo : Reporte de Ingresos Mensuales - Detalle
// Actualizaciones:
// HPC_201119_GESCOB 13/10/2011 Acuerdo de Atencion 2011-02-V2.0
// HPC_201501_GESCOB: mejoras al proceso depriorizacion de inicio de mes
Unit GES317;

Interface

Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   ppParameter, ppCtrls, ppBands, ppClass, ppVar, ppPrnabl, ppCache, ppProd,
   ppReport, ppRelatv, ppDB, ppDBPipe, ppComm, ppEndUsr, Grids, Wwdbigrd,
   Wwdbgrid, StdCtrls, Buttons, ExtCtrls,
   wwExport, Dialogs, DB, shellapi;
Type
   TfRepIngMenDet = Class(TForm)
      Panel1 : TPanel;
      lblPeriodo : TLabel;
      Panel2 : TPanel;
      btnExcel : TBitBtn;
      btnImprimir : TBitBtn;
      BitSalir : TBitBtn;
      lblMovimiento : TLabel;
      lblDepartamento : TLabel;
      ppDesigner1 : TppDesigner;
      ppdbpPrincipal : TppDBPipeline;
      ppReport1 : TppReport;
      ppParameterList1 : TppParameterList;
      dbgPrincipal : TwwDBGrid;
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
      ppLabel11 : TppLabel;
      ppLabel13 : TppLabel;
      ppLabel14 : TppLabel;
      ppLabel15 : TppLabel;
      ppLabel16 : TppLabel;
      ppLabel17 : TppLabel;
      ppLabel18 : TppLabel;
      ppLabel12 : TppLabel;
      ppLabel20 : TppLabel;
      ppLabel21 : TppLabel;
      ppLabel22 : TppLabel;
      ppLabel10 : TppLabel;
      ppDetailBand1 : TppDetailBand;
      ppDBText5 : TppDBText;
      ppDBText6 : TppDBText;
      ppDBText7 : TppDBText;
      ppDBText8 : TppDBText;
      ppDBText9 : TppDBText;
      ppDBText10 : TppDBText;
      ppDBText3 : TppDBText;
      ppDBText1 : TppDBText;
      ppDBText4 : TppDBText;
      ppDBText11 : TppDBText;
      ppDBText12 : TppDBText;
      ppFooterBand1 : TppFooterBand;
      ppGroup1 : TppGroup;
      ppGroupHeaderBand1 : TppGroupHeaderBand;
      ppDBText2 : TppDBText;
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
      ppDBCalc9 : TppDBCalc;
      ppLabel23 : TppLabel;
      ppLabel24 : TppLabel;
      ppDBText13 : TppDBText;
      ppDBCalc10 : TppDBCalc;
      ppLabel25 : TppLabel;
      ppLabel26 : TppLabel;
      ppDBText14 : TppDBText;
      ppDBCalc11 : TppDBCalc;
      Procedure btnExcelClick(Sender : TObject);
      Procedure BitSalirClick(Sender : TObject);
      Procedure FormClose(Sender : TObject; Var Action : TCloseAction);
      Procedure FormActivate(Sender : TObject);
      Procedure btnImprimirClick(Sender : TObject);
   Private
      Procedure cargarGrilla;
      Procedure cargarFormatoGrilla;
   Public
      xDpto : String;
      xMovimiento : integer;
      xPeriodo : String;
   End;

Var
   fRepIngMenDet : TfRepIngMenDet;

Implementation
Uses GESDM1;
{$R *.dfm}

(******************************************************************************)

Procedure TfRepIngMenDet.FormActivate(Sender : TObject);
Begin
   Screen.Cursor := crHourGlass;
   cargarGrilla();
   Screen.Cursor := crDefault;
End;

(******************************************************************************)

Procedure TfRepIngMenDet.btnExcelClick(Sender : TObject);
Begin
   Screen.Cursor := crHourGlass;
   Try
      With dbgPrincipal, dbgPrincipal.ExportOptions Do
      Begin
         ExportType := wwgetSYLK;
         FileName := 'IngresosMensualesDet.slk';
         DM1.OpcionesExportExcel(dbgPrincipal.ExportOptions);
         dbgPrincipal.ExportOptions.TitleName := 'Ingresos Mensuales Detalle';
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

Procedure TfRepIngMenDet.BitSalirClick(Sender : TObject);
Begin
   Close;
End;

(******************************************************************************)

Procedure TfRepIngMenDet.FormClose(Sender : TObject;
   Var Action : TCloseAction);
Begin
   Action := caFree;
End;
(******************************************************************************)

Procedure TfRepIngMenDet.cargarGrilla();
Var
   xSQL : String;
Begin
   Screen.Cursor := crHourGlass;
   btnExcel.Enabled := false;
   btnImprimir.Enabled := false;
   //Inicio HPC_201119_GESCOB
   // INICIO : HPC_201501_GESCOB
   xSQL := 'SELECT CODPRO, PERIODO, ASOID, ASOCODMOD, ASODNI, '
      + '          ASOAPENOMDNI, ZIPID, DPTO, PROV, '
      + '          1 TOTASO, VALCUO, TOTEFE, TOTBAN, '
      + '          TOTNAB, TOTREF, TOTPLA, TOTBEN, TOTAL, '
      + '          SALVEN, SALDIF, FLG '
      + '         ,SALTOT '
      + '         ,SALPEN '
      + '         ,SALVENACT '
      + '         ,AMOVENACT '
      + '         ,INTVENACT '
      + '         ,GASVENACT '
      + '         ,DESVENACT '
      + '         ,AMOPAGACT '
      + '         ,INTPAGACT '
      + '         ,GASPAGACT '
      + '         ,DESPAGACT '
      + '     FROM GES_COB_RPT_ING_MEN '
      + '    WHERE PERIODO = ' + QuotedStr(xPeriodo)
      + '      AND DPTO = ' + QuotedStr(xDpto);
   // FIN : HPC_201501_GESCOB
   //Fin HPC_201119_GESCOB
   Case xMovimiento Of
      0 : xSQL := xSQL + ' AND TOTAL > 0 ';
      1 : xSQL := xSQL + ' AND TOTAL = 0 ';
      2 : xSQL := xSQL + '';
   End;
   xSQL := xSQL + ' ORDER BY DPTO, PROV ';

   DM1.cdsQry3.Close;
   DM1.cdsQry3.DataRequest(xSQL);
   DM1.cdsQry3.Open;
   If DM1.cdsQry3.RecordCount > 0 Then
   Begin
      btnExcel.Enabled := true;
      btnImprimir.Enabled := true;
   End;
   cargarFormatoGrilla();
   Screen.Cursor := crDefault;
End;
(******************************************************************************)

Procedure TfRepIngMenDet.cargarFormatoGrilla();
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
   DM1.cdsQry3.First;
   While Not DM1.cdsQry3.Eof Do
   Begin
      XVALCUO := XVALCUO + DM1.cdsQry3.fieldbyname('VALCUO').AsCurrency;
      XTOTEFE := XTOTEFE + DM1.cdsQry3.fieldbyname('TOTEFE').AsCurrency;
      XTOTBAN := XTOTBAN + DM1.cdsQry3.fieldbyname('TOTBAN').AsCurrency;
      XTOTNAB := XTOTNAB + DM1.cdsQry3.fieldbyname('TOTNAB').AsCurrency;
      XTOTREF := XTOTREF + DM1.cdsQry3.fieldbyname('TOTREF').AsCurrency;
      XTOTPLA := XTOTPLA + DM1.cdsQry3.fieldbyname('TOTPLA').AsCurrency;
      XTOTBEN := XTOTBEN + DM1.cdsQry3.fieldbyname('TOTBEN').AsCurrency;
      XTOTAL := XTOTAL + DM1.cdsQry3.fieldbyname('TOTAL').AsCurrency;
      XTOTASO := XTOTASO + DM1.cdsQry3.fieldbyname('TOTASO').AsCurrency;
      XSALVEN := XSALVEN + Dm1.cdsQry3.fieldbyname('SALVEN').AsCurrency;
      XSALDIF := XSALDIF + Dm1.cdsQry3.fieldbyname('SALDIF').AsCurrency;
      // INICIO : HPC_201501_GESCOB
      xnSALTOT    := xnSALTOT    + Dm1.cdsQry3.fieldbyname('SALTOT').AsCurrency;
      xnSALPEN    := xnSALPEN    + Dm1.cdsQry3.fieldbyname('SALPEN').AsCurrency;
      xnSALVENACT := xnSALVENACT + Dm1.cdsQry3.fieldbyname('SALVENACT').AsCurrency;
      xnAMOVENACT := xnAMOVENACT + Dm1.cdsQry3.fieldbyname('AMOVENACT').AsCurrency;
      xnINTVENACT := xnINTVENACT + Dm1.cdsQry3.fieldbyname('INTVENACT').AsCurrency;
      xnGASVENACT := xnGASVENACT + Dm1.cdsQry3.fieldbyname('GASVENACT').AsCurrency;
      xnDESVENACT := xnDESVENACT + Dm1.cdsQry3.fieldbyname('DESVENACT').AsCurrency;
      xnAMOPAGACT := xnAMOPAGACT + Dm1.cdsQry3.fieldbyname('AMOPAGACT').AsCurrency;
      xnINTPAGACT := xnINTPAGACT + Dm1.cdsQry3.fieldbyname('INTPAGACT').AsCurrency;
      xnGASPAGACT := xnGASPAGACT + Dm1.cdsQry3.fieldbyname('GASPAGACT').AsCurrency;
      xnDESPAGACT := xnDESPAGACT + Dm1.cdsQry3.fieldbyname('DESPAGACT').AsCurrency;
      // FIN : HPC_201501_GESCOB
      DM1.cdsQry3.Next;
   End;
   DM1.cdsQry3.First;

   dbgPrincipal.DataSource := DM1.dsQry3;
   dbgPrincipal.GroupFieldName := 'DPTO';

   //Inicio HPC_201119_GESCOB
   dbgPrincipal.Selected.Clear;
   dbgPrincipal.Selected.Add('DPTO'#9'15'#9'DEPARTAMENTO');
   dbgPrincipal.Selected.Add('PROV'#9'15'#9'PROVINCIA');
   dbgPrincipal.Selected.Add('ASOCODMOD'#9'10'#9'MODULAR');
   dbgPrincipal.Selected.Add('ASODNI'#9'8'#9'D.N.I.');
   dbgPrincipal.Selected.Add('ASOAPENOMDNI'#9'20'#9'APELLIDOS Y NOMBRES');
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

   TNumericField(DM1.cdsQry3.fieldbyname('VALCUO')).DisplayFormat := '###,###.#0';
   TNumericField(Dm1.cdsQry2.fieldbyname('SALVEN')).DisplayFormat := '###,###.#0';
   TNumericField(Dm1.cdsQry2.fieldbyname('SALDIF')).DisplayFormat := '###,###.#0';
   TNumericField(DM1.cdsQry3.fieldbyname('TOTEFE')).DisplayFormat := '###,###.#0';
   TNumericField(DM1.cdsQry3.fieldbyname('TOTBAN')).DisplayFormat := '###,###.#0';
   TNumericField(DM1.cdsQry3.fieldbyname('TOTNAB')).DisplayFormat := '###,###.#0';
   TNumericField(DM1.cdsQry3.fieldbyname('TOTREF')).DisplayFormat := '###,###.#0';
   TNumericField(DM1.cdsQry3.fieldbyname('TOTPLA')).DisplayFormat := '###,###.#0';
   TNumericField(DM1.cdsQry3.fieldbyname('TOTBEN')).DisplayFormat := '###,###.#0';
   TNumericField(DM1.cdsQry3.fieldbyname('TOTAL')).DisplayFormat := '###,###.#0';
   // INICIO : HPC_201501_GESCOB
   TNumericField(Dm1.cdsQry3.fieldbyname('SALTOT')).DisplayFormat    := '###,###.#0';
   TNumericField(Dm1.cdsQry3.fieldbyname('SALPEN')).DisplayFormat    := '###,###.#0';
   TNumericField(Dm1.cdsQry3.fieldbyname('SALVENACT')).DisplayFormat := '###,###.#0';
   TNumericField(Dm1.cdsQry3.fieldbyname('AMOVENACT')).DisplayFormat := '###,###.#0';
   TNumericField(Dm1.cdsQry3.fieldbyname('INTVENACT')).DisplayFormat := '###,###.#0';
   TNumericField(Dm1.cdsQry3.fieldbyname('GASVENACT')).DisplayFormat := '###,###.#0';
   TNumericField(Dm1.cdsQry3.fieldbyname('DESVENACT')).DisplayFormat := '###,###.#0';
   TNumericField(Dm1.cdsQry3.fieldbyname('AMOPAGACT')).DisplayFormat := '###,###.#0';
   TNumericField(Dm1.cdsQry3.fieldbyname('INTPAGACT')).DisplayFormat := '###,###.#0';
   TNumericField(Dm1.cdsQry3.fieldbyname('GASPAGACT')).DisplayFormat := '###,###.#0';
   TNumericField(Dm1.cdsQry3.fieldbyname('DESPAGACT')).DisplayFormat := '###,###.#0';
   // FIN : HPC_201501_GESCOB

   dbgPrincipal.ColumnByName('ASOAPENOMDNI').FooterValue := 'Asociados : ' + FloatToStrF(XTOTASO, ffNumber, 15, 0);
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

Procedure TfRepIngMenDet.btnImprimirClick(Sender : TObject);
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

   lblTit01.Text := 'DETALLE DE PAGOS DEL 01 AL ' + XULTDIA + ' DE ' + XMES + ' DEL ' + XANHO;
   lblTit02.Text := lblMovimiento.Caption + ' / ' + lblDepartamento.Caption;

   ppdbpPrincipal.DataSource := DM1.dsQry3;

   //ppDesigner1.ShowModal; //

   ppReport1.Print;
   ppReport1.Cancel;

   Screen.Cursor := CrDefault;

End;
(******************************************************************************)
End.

