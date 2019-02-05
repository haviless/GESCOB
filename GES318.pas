Unit GES318;

Interface

Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, Grids, Wwdbigrd, Wwdbgrid, ExtCtrls, DB, StdCtrls, Buttons, wwExport, shellapi,
   ppEndUsr, ppDB, ppDBPipe, ppParameter, ppCtrls, ppBands, ppClass, ppVar,
   ppPrnabl, ppCache, ppComm, ppRelatv, ppProd, ppReport;

Type
   TfRptTERPCRE = Class(TForm)
      pnlControles: TPanel;
      pnlCabecera: TPanel;
      Label1: TLabel;
      Label2: TLabel;
      BitSalir: TBitBtn;
      btnImprimir: TBitBtn;
      btnExcel: TBitBtn;
      ppReportPrincipal: TppReport;
      ppParameterList1: TppParameterList;
      ppdbpPrincipal: TppDBPipeline;
      ppDesigner1: TppDesigner;
      ppHeaderBand1: TppHeaderBand;
      ppLabel880: TppLabel;
      ppLabel881: TppLabel;
      ppLabel892: TppLabel;
      ppLabel893: TppLabel;
      ppLabel894: TppLabel;
      ppSystemVariable89: TppSystemVariable;
      ppSystemVariable90: TppSystemVariable;
      ppSystemVariable91: TppSystemVariable;
      ppLabel895: TppLabel;
      ppLabel896: TppLabel;
      ppLabel897: TppLabel;
      lblTit01: TppLabel;
      lblTit02: TppLabel;
      ppLabel1: TppLabel;
      pplblPeriodo02: TppLabel;
      pplblPeriodo03: TppLabel;
      ppLabel11: TppLabel;
      ppLabel18: TppLabel;
      pplblPeriodo01: TppLabel;
      ppLabel22: TppLabel;
      ppLine1: TppLine;
      ppDetailBand1: TppDetailBand;
      ppDBText2: TppDBText;
      ppDBText3: TppDBText;
      ppDBText4: TppDBText;
      ppDBText5: TppDBText;
      ppFooterBand1: TppFooterBand;
      ppGroup1: TppGroup;
      ppGroupHeaderBand1: TppGroupHeaderBand;
      ppDBText1: TppDBText;
      ppLine3: TppLine;
      ppGroupFooterBand1: TppGroupFooterBand;
      ppLine2: TppLine;
      ppLabel3: TppLabel;
      ppDBCalc1: TppDBCalc;
      ppDBCalc2: TppDBCalc;
      ppDBCalc3: TppDBCalc;
      dbgPrincipal: TwwDBGrid;
      Procedure FormCreate(Sender: TObject);
      Procedure BitSalirClick(Sender: TObject);
      Procedure btnExcelClick(Sender: TObject);
      Procedure btnImprimirClick(Sender: TObject);
      Procedure dbgPrincipalDblClick(Sender: TObject);
   Private
      xCODPRO: Double;
   Public
    { Public declarations }
   End;

Var
   fRptTERPCRE: TfRptTERPCRE;

Implementation

Uses GESDM1, GES319;

{$R *.dfm}
(******************************************************************************)
Procedure TfRptTERPCRE.FormCreate(Sender: TObject);
Var
   xSQL: String;
   xCad: String;
   XPERIODO_01, XPERIODO_02, XPERIODO_03: Double;
   Procedure bloquearControles(IMsg: String);
   Begin
      Screen.Cursor := crDefault;
      btnImprimir.Enabled := false;
      btnExcel.Enabled := false;
      dbgPrincipal.Enabled := false;
      ShowMessage(IMsg);
   End;
Begin
   Screen.Cursor := crHourGlass;

   xSQL := 'SELECT NVL(MAX(CODPRO), 0) CODPRO, MAX(FINI) FINI, MAX(FFIN) FFIN '
      + '     FROM (SELECT NVL(CODPRO, 0) CODPRO, FINI, FFIN '
      + '             FROM GES_COB_PRO_TERPCRE '
      + '            ORDER BY CODPRO DESC) '
      + '    WHERE ROWNUM = 1';

   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSQL);
   DM1.cdsQry.Open;
   If DM1.cdsQry.fieldbyname('CODPRO').AsInteger <= 0 Then
      Begin
         bloquearControles('No Existen datos Procesados');
         exit;
      End
   Else
      If Length(DM1.cdsQry.fieldbyname('FFIN').AsString) <= 0 Then
         Begin
            bloquearControles('Aun se esta procesando la data!' + chr(13) + 'Por favor intentelo en otro momento!');
            exit;
         End;

   xCODPRO := DM1.cdsQry.fieldbyname('CODPRO').AsInteger;
   // PERIODOS
   xSQL := 'SELECT CODPRO, ORDEN, ANHO, MES, DESCRIPCION '
      + '     FROM GES_COB_PER_TERPCRE '
      + '    WHERE CODPRO = ' + FloatToStr(xCODPRO)
      + '    ORDER BY ORDEN';
   DM1.cdsQry1.Close;
   DM1.cdsQry1.DataRequest(xSQL);
   DM1.cdsQry1.Open;

   // CABECERA
   xSQL := 'SELECT ENV.CODPRO, ENV.DPTOID, NVL(DPTO.DPTODES, ''~SIN UBIGEO~'') DEPARTAMENTO, ENV.CIUDID, '
      + '          NVL(PROV.CIUDDES, ''~SIN UBIGEO~'') PROVINCIA, ENV.PERIODO_01, ENV.PERIODO_02, ENV.PERIODO_03 '
      + '     FROM GES_COB_RES_TERPCRE ENV, APO158 DPTO, APO123 PROV '
      + '    WHERE ENV.CODPRO = ' + FloatToStr(xCODPRO)
      + '      AND ENV.DPTOID = DPTO.DPTOID(+) '
      + '      AND ENV.CIUDID = PROV.CIUDID(+) '
      + '    ORDER BY DEPARTAMENTO, PROVINCIA';
   DM1.cdsQry2.Close;
   DM1.cdsQry2.DataRequest(xSQL);
   DM1.cdsQry2.Open;

   // CALCULA TOTALES
   XPERIODO_01 := 0;
   XPERIODO_02 := 0;
   XPERIODO_03 := 0;
   DM1.cdsQry2.First;
   While Not DM1.cdsQry2.Eof Do
      Begin
         XPERIODO_01 := XPERIODO_01 + DM1.cdsQry2.fieldbyname('PERIODO_01').AsInteger;
         XPERIODO_02 := XPERIODO_02 + DM1.cdsQry2.fieldbyname('PERIODO_02').AsInteger;
         XPERIODO_03 := XPERIODO_03 + DM1.cdsQry2.fieldbyname('PERIODO_03').AsInteger;
         DM1.cdsQry2.Next;
      End;
   DM1.cdsQry2.First;

   // FORMATO A LA GRILLA
   dbgPrincipal.DataSource := DM1.dsQry2;
   dbgPrincipal.GroupFieldName := 'DEPARTAMENTO';
   dbgPrincipal.Selected.Clear;
   dbgPrincipal.Selected.Add('DEPARTAMENTO'#9'20'#9'DEPARTAMENTO');
   dbgPrincipal.Selected.Add('PROVINCIA'#9'20'#9'PROVINCIA');
   DM1.cdsQry1.First;
   While Not DM1.cdsQry1.EOF Do
      Begin
         xCad := 'PERIODO_0' + DM1.cdsQry1.fieldbyname('ORDEN').asstring + ''#9'10'#9'PERIODO~' + DM1.cdsQry1.fieldbyname('DESCRIPCION').asstring + '';
         //TNumericField(DM1.cdsQry2.fieldbyname('PERIODO_0' + DM1.cdsQry1.fieldbyname('ORDEN').asstring)).DisplayFormat := '###,###';
         dbgPrincipal.Selected.Add(xCad);
         DM1.cdsQry1.Next;
      End;
   dbgPrincipal.ApplySelected;

   dbgPrincipal.ColumnByName('PERIODO_01').FooterValue := FloatToStrF(XPERIODO_01, ffNumber, 15, 0);
   dbgPrincipal.ColumnByName('PERIODO_02').FooterValue := FloatToStrF(XPERIODO_02, ffNumber, 15, 0);
   dbgPrincipal.ColumnByName('PERIODO_03').FooterValue := FloatToStrF(XPERIODO_03, ffNumber, 15, 0);
   dbgPrincipal.Refresh;
   Screen.Cursor := crDefault;
End;
(******************************************************************************)
Procedure TfRptTERPCRE.BitSalirClick(Sender: TObject);
Begin
   Close;
End;
(******************************************************************************)
Procedure TfRptTERPCRE.btnExcelClick(Sender: TObject);
Begin
   Screen.Cursor := crHourGlass;
   Try
      With dbgPrincipal, dbgPrincipal.ExportOptions Do
         Begin
            ExportType := wwgetSYLK;
            FileName := 'Resumen.slk';
            DM1.OpcionesExportExcel(dbgPrincipal.ExportOptions);
            dbgPrincipal.ExportOptions.TitleName := 'Resumen TERCCREP';
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
Procedure TfRptTERPCRE.btnImprimirClick(Sender: TObject);
Begin
   Screen.Cursor := crHourGlass;
   lblTit01.Text := 'CUADRO RESUMEN RESULTADOS TERCCREP';
   lblTit02.Text := '';
   DM1.cdsQry1.First;
   pplblPeriodo01.Caption := DM1.cdsQry1.fieldbyname('DESCRIPCION').AsString;
   DM1.cdsQry1.Next;
   pplblPeriodo02.Caption := DM1.cdsQry1.fieldbyname('DESCRIPCION').AsString;
   DM1.cdsQry1.Next;
   pplblPeriodo03.Caption := DM1.cdsQry1.fieldbyname('DESCRIPCION').AsString;
   ppdbpPrincipal.DataSource := DM1.dsQry2;
   // ppDesigner1.ShowModal;
   ppReportPrincipal.Print;
   ppReportPrincipal.Cancel;
   Screen.Cursor := CrDefault;
End;
(******************************************************************************)
Procedure TfRptTERPCRE.dbgPrincipalDblClick(Sender: TObject);
Begin
   If dm1.cdsQry2.RecordCount > 0 Then
      Begin
         fRptTERPCREDet := TfRptTERPCREDet.Create(self);
         Try
            fRptTERPCREDet.xCODPRO := self.xCODPRO;
            fRptTERPCREDet.xDPTOID := dm1.cdsQry2.fieldbyname('DPTOID').asstring;
            fRptTERPCREDet.showmodal();
         Except
            fRptTERPCREDet.free;
         End;
      End;
End;
(******************************************************************************)
End.
