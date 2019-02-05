Unit GES319;

Interface

Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, Buttons, Grids, Wwdbigrd, Wwdbgrid, ExtCtrls, wwExport, shellapi,
   ppEndUsr, ppDB, ppDBPipe, ppParameter, ppCtrls, ppBands, ppClass, ppVar,
   ppPrnabl, ppCache, ppComm, ppRelatv, ppProd, ppReport;

Type
   TfRptTERPCREDet = Class(TForm)
      pnlCabecera: TPanel;
      Label1: TLabel;
      Label2: TLabel;
      pnlControles: TPanel;
      BitSalir: TBitBtn;
      btnImprimir: TBitBtn;
      btnExcel: TBitBtn;
      dbgPrincipal: TwwDBGrid;
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
      ppLabel2: TppLabel;
      ppLabel4: TppLabel;
      ppLabel5: TppLabel;
      ppDetailBand1: TppDetailBand;
      ppDBText2: TppDBText;
      ppDBText3: TppDBText;
      ppDBText4: TppDBText;
      ppDBText5: TppDBText;
      ppDBText6: TppDBText;
      ppDBText7: TppDBText;
      ppDBText8: TppDBText;
      ppFooterBand1: TppFooterBand;
      ppGroup1: TppGroup;
      ppGroupHeaderBand1: TppGroupHeaderBand;
      ppDBText1: TppDBText;
      ppLine3: TppLine;
      ppGroupFooterBand1: TppGroupFooterBand;
      ppLine2: TppLine;
      Procedure BitSalirClick(Sender: TObject);
      Procedure btnExcelClick(Sender: TObject);
      Procedure btnImprimirClick(Sender: TObject);
      Procedure FormShow(Sender: TObject);
   Private
    { Private declarations }
   Public
      xCODPRO: Double;
      xDPTOID: String;
   End;

Var
   fRptTERPCREDet: TfRptTERPCREDet;

Implementation

Uses GESDM1;

{$R *.dfm}
(******************************************************************************)
Procedure TfRptTERPCREDet.BitSalirClick(Sender: TObject);
Begin
   Close;
End;
(******************************************************************************)
Procedure TfRptTERPCREDet.btnExcelClick(Sender: TObject);
Begin
   Screen.Cursor := crHourGlass;
   Try
      With dbgPrincipal, dbgPrincipal.ExportOptions Do
         Begin
            ExportType := wwgetSYLK;
            FileName := 'Detalle.slk';
            DM1.OpcionesExportExcel(dbgPrincipal.ExportOptions);
            dbgPrincipal.ExportOptions.TitleName := 'Detalle TERCCREP';
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
Procedure TfRptTERPCREDet.btnImprimirClick(Sender: TObject);
Begin
   Screen.Cursor := crHourGlass;
   lblTit01.Text := 'CUADRO DETALLE RESULTADOS TERCCREP';
   lblTit02.Text := '';
   DM1.cdsQry1.First;
   pplblPeriodo01.Caption := DM1.cdsQry1.fieldbyname('DESCRIPCION').AsString;
   DM1.cdsQry1.Next;
   pplblPeriodo02.Caption := DM1.cdsQry1.fieldbyname('DESCRIPCION').AsString;
   DM1.cdsQry1.Next;
   pplblPeriodo03.Caption := DM1.cdsQry1.fieldbyname('DESCRIPCION').AsString;
   ppdbpPrincipal.DataSource := DM1.dsQry3;
   // ppDesigner1.ShowModal;
   ppReportPrincipal.Print;
   ppReportPrincipal.Cancel;
   Screen.Cursor := CrDefault;
End;
(******************************************************************************)
Procedure TfRptTERPCREDet.FormShow(Sender: TObject);
Var
   xSQL: String;
   xCad: String;
Begin
   Screen.Cursor := crHourGlass;
   // DETALLE
   xSQL := 'SELECT ENV.CODPRO, ENV.ASOID, ENV.DPTOID, '
      + '          NVL(DPTO.DPTODES, ''~SIN UBIGEO~'') DEPARTAMENTO, ENV.CIUDID, '
      + '          NVL(PROV.CIUDDES, ''~SIN UBIGEO~'') PROVINCIA, ENV.RESULTADO_01, ENV.RESULTADO_02, '
      + '          ENV.RESULTADO_03, APO.ASOCODMOD, APO.ASODNI, APO.ASOAPENOM '
      + '     FROM (SELECT CODPRO, ASOID, DPTOID, CIUDID, '
      + '                  NVL(MAX(CASE WHEN ORDEN = 1 THEN RESULTADO ELSE NULL END),''NO ENVIADO'') RESULTADO_01, '
      + '                  NVL(MAX(CASE WHEN ORDEN = 2 THEN RESULTADO ELSE NULL END),''NO ENVIADO'') RESULTADO_02, '
      + '                  NVL(MAX(CASE WHEN ORDEN = 3 THEN RESULTADO ELSE NULL END),''NO ENVIADO'') RESULTADO_03'
      + '             FROM GES_COB_DET_TERPCRE '
      + '            WHERE CODPRO = ' + FloatToStr(xCODPRO)
      + '              AND DPTOID = ' + QuotedStr(xDPTOID)
      + '            GROUP BY CODPRO, ASOID, DPTOID, CIUDID '
      + '          ) ENV, APO201 APO, APO158 DPTO, APO123 PROV '
      + '    WHERE ENV.ASOID = APO.ASOID '
      + '      AND ENV.DPTOID = DPTO.DPTOID(+) '
      + '      AND ENV.CIUDID = PROV.CIUDID(+) '
      + '    ORDER BY DEPARTAMENTO, PROVINCIA';

   DM1.cdsQry3.Close;
   DM1.cdsQry3.DataRequest(xSQL);
   DM1.cdsQry3.Open;

   // FORMATO A LA GRILLA
   dbgPrincipal.DataSource := DM1.dsQry3;
   dbgPrincipal.GroupFieldName := 'DEPARTAMENTO';

   dbgPrincipal.Selected.Clear;
   dbgPrincipal.Selected.Add('DEPARTAMENTO'#9'20'#9'DEPARTAMENTO');
   dbgPrincipal.Selected.Add('PROVINCIA'#9'20'#9'PROVINCIA');
   dbgPrincipal.Selected.Add('ASOCODMOD'#9'8'#9'COD.MOD.');
   dbgPrincipal.Selected.Add('ASODNI'#9'8'#9'D.N.I.');
   dbgPrincipal.Selected.Add('ASOAPENOM'#9'30'#9'APELLIDOS Y NOMBRES');
   DM1.cdsQry1.First;
   While Not DM1.cdsQry1.EOF Do
      Begin
         xCad := 'RESULTADO_0' + DM1.cdsQry1.fieldbyname('ORDEN').asstring + ''#9'20'#9'RESULTADO~' + DM1.cdsQry1.fieldbyname('DESCRIPCION').asstring + '';
         //TNumericField(DM1.cdsQry3.fieldbyname('PERIODO_0' + DM1.cdsQry1.fieldbyname('ORDEN').asstring)).DisplayFormat := '###,###';
         dbgPrincipal.Selected.Add(xCad);
         DM1.cdsQry1.Next;
      End;
   dbgPrincipal.ApplySelected;
   dbgPrincipal.Refresh;
   Screen.Cursor := crDefault;
End;
(******************************************************************************)
End.
