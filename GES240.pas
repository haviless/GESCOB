// Inicio: HPP_200929_COB por RMEDINA
// Memorándum 711-2009-DM-COB - SAR-2009-0622(24/7/2009) - DAD-RM-2009-0116(4/8/2009)
// se cambia la forma completamente porque el formato lo requería
Unit GES240;

Interface

Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, Wwdbdlg, Grids, Wwdbigrd, Wwdbgrid, ExtCtrls,
   ComCtrls, fcButton, fcImgBtn, fcShapeBtn, wwdblook, Mask, wwdbedit,
   Wwdbspin, DB, DBClient, DBGrids, Buttons, ppComm, ppRelatv, ppProd,
   ppClass, ppReport, ppPrnabl, ppCtrls, ppBands, ppCache, ppDB, ppDBPipe,
   ppDBBDE, wwExport, shellapi, wwriched, wwdbdatetimepicker, ppStrtch,
   ppSubRpt, ppParameter, ppEndUsr, ppVar;

Type
   TfDetRegG = Class(TForm)
      dtgDetReg: TwwDBGrid;
      BitSalir: TBitBtn;
      BitPrint: TBitBtn;
      ppDBEstCta: TppDBPipeline;
      BitRepTel: TBitBtn;
      RepDetTel: TppReport;
      ppHeaderBand39: TppHeaderBand;
      ppLabel796: TppLabel;
      ppLabel800: TppLabel;
      ppLabel801: TppLabel;
      ppLabel802: TppLabel;
      ppLabel803: TppLabel;
      ppLabel804: TppLabel;
      ppSystemVariable80: TppSystemVariable;
      ppSystemVariable81: TppSystemVariable;
      ppSystemVariable82: TppSystemVariable;
      ppLabel805: TppLabel;
      ppLabel806: TppLabel;
      ppLabel807: TppLabel;
      ppDetailBand42: TppDetailBand;
      ppDBText326: TppDBText;
      ppDBText327: TppDBText;
      ppDBText328: TppDBText;
      ppDBText329: TppDBText;
      ppFooterBand34: TppFooterBand;
      ppGroup48: TppGroup;
      ppGroupHeaderBand48: TppGroupHeaderBand;
      ppShape13: TppShape;
      ppShape12: TppShape;
      ppDBText322: TppDBText;
      ppDBText323: TppDBText;
      ppDBText325: TppDBText;
      ppLabel789: TppLabel;
      ppLabel790: TppLabel;
      ppLabel791: TppLabel;
      ppLabel792: TppLabel;
      ppLabel793: TppLabel;
      ppLabel794: TppLabel;
      ppLabel795: TppLabel;
      ppLabel797: TppLabel;
      ppLabel798: TppLabel;
      ppGroupFooterBand48: TppGroupFooterBand;
      DbDetTel: TppDBPipeline;
      DbDetTelppField1: TppField;
      DbDetTelppField2: TppField;
      DbDetTelppField3: TppField;
      DbDetTelppField4: TppField;
      DbDetTelppField5: TppField;
      DbDetTelppField6: TppField;
      DbDetTelppField7: TppField;
      DbDetTelppField8: TppField;
      ppLabel30: TppLabel;
      ppLblCodMod1: TppLabel;
      ppLabel52: TppLabel;
      pplblNomGen1: TppLabel;
      ppLabel60: TppLabel;
      pplblUse1: TppLabel;
      ppLabel65: TppLabel;
      ppLabel66: TppLabel;
      ppLabel67: TppLabel;
      ppLabel31: TppLabel;
      ppLabel45: TppLabel;
      pplblUpro1: TppLabel;
      ppShape17: TppShape;
      ppShape1: TppShape;
      ppLine6: TppLine;
      ppShape2: TppShape;
      ppRepDetPag: TppReport;
      ppD1: TppDesigner;
      ppParameterList1: TppParameterList;
      ppHeaderBand2: TppHeaderBand;
      ppShape3: TppShape;
      ppLabel53: TppLabel;
      ppLabel56: TppLabel;
      ppLabel57: TppLabel;
      ppLabel59: TppLabel;
      ppLabel62: TppLabel;
      ppLabel63: TppLabel;
      ppLabel68: TppLabel;
      ppLabel69: TppLabel;
      ppLabel64: TppLabel;
      ppLabel70: TppLabel;
      ppLabel71: TppLabel;
      ppLabel72: TppLabel;
      ppLabel73: TppLabel;
      ppLabel74: TppLabel;
      ppLabel75: TppLabel;
      ppLabel76: TppLabel;
      ppLabel77: TppLabel;
      ppLabel78: TppLabel;
      ppLabel79: TppLabel;
      ppLine3: TppLine;
      ppLine7: TppLine;
      ppLine8: TppLine;
      ppLine9: TppLine;
      ppLine10: TppLine;
      ppLine11: TppLine;
      ppLine12: TppLine;
      ppLine14: TppLine;
      ppLine17: TppLine;
      ppLine18: TppLine;
      ppLabel80: TppLabel;
      ppLabel81: TppLabel;
      ppLabel82: TppLabel;
      ppLblCodMod2: TppLabel;
      ppLabel84: TppLabel;
      ppLabel85: TppLabel;
      ppLabel86: TppLabel;
      pplblTipCre2: TppLabel;
      pplblNomGen2: TppLabel;
      pplblNumPre2: TppLabel;
      ppLabel90: TppLabel;
      pplblFecPre2: TppLabel;
      ppLabel92: TppLabel;
      pplblUse2: TppLabel;
      ppLabel94: TppLabel;
      ppLabel95: TppLabel;
      ppLabel96: TppLabel;
      ppLabel97: TppLabel;
      ppLabel98: TppLabel;
      ppLabel99: TppLabel;
      ppLabel100: TppLabel;
      ppLabel101: TppLabel;
      ppLblOriOto2: TppLabel;
      ppSystemVariable3: TppSystemVariable;
      ppLabel83: TppLabel;
      ppLabel87: TppLabel;
      ppSystemVariable4: TppSystemVariable;
      ppLabel88: TppLabel;
      ppLabel89: TppLabel;
      ppLblTitulo2: TppLabel;
      ppDetailBand2: TppDetailBand;
      ppDBText17: TppDBText;
      ppDBText18: TppDBText;
      ppDBText19: TppDBText;
      ppDBText20: TppDBText;
      ppDBText21: TppDBText;
      ppDBText22: TppDBText;
      ppDBText23: TppDBText;
      ppDBText24: TppDBText;
      ppDBText27: TppDBText;
      ppDBText28: TppDBText;
      ppDBText29: TppDBText;
      ppDBText30: TppDBText;
      ppDBText31: TppDBText;
      ppDBText26: TppDBText;
      ppSummaryBand2: TppSummaryBand;
      ppDBCalc1: TppDBCalc;
      ppDBCalc2: TppDBCalc;
      ppDBCalc3: TppDBCalc;
      ppGroup1: TppGroup;
      ppGroupHeaderBand1: TppGroupHeaderBand;
      ppGroupFooterBand1: TppGroupFooterBand;
      ppLine19: TppLine;
      ppSubReport1: TppSubReport;
      ppChildReport2: TppChildReport;
      ppTitleBand2: TppTitleBand;
      ppDetailBand4: TppDetailBand;
      ppSummaryBand4: TppSummaryBand;
      ppDBText32: TppDBText;
      ppDBText33: TppDBText;
      ppDBText34: TppDBText;
      ppDBText35: TppDBText;
      ppDBText36: TppDBText;
      ppDBText37: TppDBText;
      ppDBText38: TppDBText;
      ppLine20: TppLine;
      ppLine21: TppLine;
      ppLabel91: TppLabel;
      ppLabel93: TppLabel;
      ppLabel102: TppLabel;
      ppLabel103: TppLabel;
      ppLabel104: TppLabel;
      ppLabel105: TppLabel;
      ppLabel106: TppLabel;
      ppLabel107: TppLabel;
      ppLabel108: TppLabel;
      ppLabel109: TppLabel;
      ppLabel110: TppLabel;
      ppLabel111: TppLabel;
      ppDBResumen: TppDBPipeline;
      ppLabel1: TppLabel;
      pplblTotal: TppLabel;
      ppShape4: TppShape;
      BtnExcel: TBitBtn;
      ppFooterBand1: TppFooterBand;
      pplUsuario: TppLabel;
      ppLabel2: TppLabel;
      ppLabel3: TppLabel;
      ppSystemVariable1: TppSystemVariable;
    // Inicio: HPP_200931_COB por RMEDINA
      ppLabel4: TppLabel;
      ppDBText1: TppDBText;
    //Fin: HPP_200931_COB
      Procedure BitSalirClick(Sender: TObject);
      Procedure BitPrintClick(Sender: TObject);
      Procedure BitRepTelClick(Sender: TObject);
      Procedure FormCreate(Sender: TObject);
      Procedure FormActivate(Sender: TObject);
      Procedure Opciones(AOptions: TwwExportOptions);
      Procedure FormClose(Sender: TObject; Var Action: TCloseAction);
      Procedure BtnExcelClick(Sender: TObject);
   Private
    { Private declarations }
   Public
    { Public declarations }
      xtotal: String;
   End;

Var
   fDetRegG: TfDetRegG;

Implementation

Uses GESDM1;

{$R *.dfm}

Procedure TfDetRegG.BitSalirClick(Sender: TObject);
Begin
   Close;
End;

Procedure TfDetRegG.BitPrintClick(Sender: TObject);
Var
   xAsoId, xCredId, xSQL, xCondicion: String;
Begin
   If dtgDetReg.DataSource.DataSet.RecordCount = 0 Then Exit;

   DM1.xSgr := 'REP';
   xAsoId := DM1.cdsCuotas.FieldByName('ASOID').AsString;
   xCredId := DM1.cdsCuotas.FieldByName('CREDID').AsString;

   xSQL := 'SELECT CREFPAG, FORPAGABR, CREDOCPAG, CCBCOID, BANCONOM, SUM(CREMTOCOB) CREMTOCOB, COUNT(*) REGISTROS '
      + 'FROM (SELECT A.CRECUOTA, A.CREFPAG CREFPAG,A.FORPAGABR FORPAGABR,A.CREDOCPAG CREDOCPAG, '
      + '             A.CCBCOID CCBCOID,C.BANCONOM BANCONOM, 1 REGISTROS,SUM(NVL(A.CREMTOCOB,0)) CREMTOCOB '
      + '      FROM CRE310 A,CRE302 B, TGE105 C '
      + '      WHERE A.ASOID=' + QuotedStr(xAsoId) + ' AND A.CREDID=' + QuotedStr(xCredId)
      + '        AND A.CREESTID NOT IN (''13'', ''04'',''99'') AND A.ASOID=B.ASOID '
      + '        AND A.CREDID=B.CREDID AND A.CRECUOTA=B.CRECUOTA AND A.BANCOID = C.BANCOID(+) '
      + '      GROUP BY A.CRECUOTA, A.CREFPAG,A.FORPAGABR,A.CREDOCPAG, A.CCBCOID,C.BANCONOM ) '
      + 'GROUP BY CREFPAG, FORPAGABR, CREDOCPAG, CCBCOID, BANCONOM '
      + 'HAVING COUNT(*)>1 '
      + 'ORDER BY CREFPAG DESC';
   DM1.cdsDLabo.Close;
   DM1.cdsDLabo.DataRequest(xSQL);
   DM1.cdsDLabo.Open;

   ppLblCodMod2.Caption := DM1.cdsAso.FieldByName('ASOCODMOD').AsString;
   pplblTipCre2.Caption := Trim(DM1.cdsSolicitud.FieldByName('TIPCREID').AsString) + '-' + DM1.RecuperaDatos('CRE110', 'TIPCREID', DM1.cdsSolicitud.FieldByName('TIPCREID').AsString, 'TIPCREDES');
   pplblNomGen2.Caption := DM1.cdsAso.FieldByName('ASOAPENOM').AsString;
   pplblNumPre2.Caption := DM1.cdsSolicitud.FieldByName('CREDID').AsString;

   xCondicion := 'UPROID=' + QuotedStr(Trim(DM1.cdsAso.fieldbyname('UPROID').AsString)) + ' AND USEID=' + QuotedStr(Trim(DM1.cdsAso.fieldbyname('USEID').AsString)) + ' AND UPAGOID=' + QuotedStr(Trim(DM1.cdsAso.fieldbyname('UPAGOID').AsString));
   pplblUse2.Caption := DM1.CrgDescrip(xCondicion, 'APO101', 'USENOM');

   pplblFecPre2.Caption := DM1.cdsSolicitud.FieldByName('CREFOTORG').AsString;
   ppLblOriOto2.Caption := Copy(DM1.cdsSolicitud.FieldByName('CREDID').AsString, 1, 2) + ' -  ' + DM1.CrgDescrip('OFDESID=' + QuotedStr(Trim(Copy(DM1.cdsSolicitud.FieldByName('CREDID').AsString, 1, 2))), 'APO110', 'OFDESNOM');
   ppLblTitulo2.Caption := 'DETALLE DE PAGOS N°: ' + pplblNumPre2.Caption + '  al: ' + DateToStr(DM1.FechaSys);
   pplblTotal.Caption := xtotal;

   ppDBEstCta.DataSource := Dm1.dsCViv;
   ppRepDetPag.DataPipeline := ppDBEstCta;

   ppDBResumen.DataSource := Dm1.dsDLabo;
   ppSubReport1.DataPipeline := ppDBResumen;
   pplUsuario.Caption := 'USUARIO:' + Dm1.wUsuario;
   ppRepDetPag.OutlineSettings.Visible := False;
   ppRepDetPag.Print;
   ppRepDetPag.Stop;
End;

Procedure TfDetRegG.BitRepTelClick(Sender: TObject);
Var
   xAsoId, xSQL, xDesCod, xCondicion: String;
Begin
   xAsoId := DM1.cdsCuotas.FieldByName('ASOID').AsString;
   xSQL := 'SELECT CREFPAG,CREDOCPAG,CREMTOCOB,FORPAGABR,CREFVEN,APLTOCOB,CREDID,CRECUOTA,ORDEN '
      + 'FROM (SELECT CREFPAG,CREDOCPAG,CREMTOCOB,FORPAGABR,CREFVEN,APLTOCOB,CREDID,CRECUOTA,ROWNUM ORDEN '
      + '      FROM (SELECT A.CREFPAG,A.CREDOCPAG,A.CREMTOCOB,A.FORPAGABR, '
      + '                   B.CREFVEN,B.CREMTOCOB APLTOCOB, '
      + '                   SUBSTR(B.CREDID,7,2)||''-''||SUBSTR(B.CREDID,11,5)||''-''||SUBSTR(B.CREDID,3,4) CREDID, '
      + '                   B.CRECUOTA,A.FREG '
      + '            FROM (SELECT CREFPAG,CREDOCPAG,SUM(CREMTOCOB) CREMTOCOB,FORPAGABR,FREG '
      + '                  FROM (SELECT A.CRECUOTA,CREFVEN,A.CREFPAG,A.FORPAGABR,A.CREDOCPAG,A.CREMTOCOB, '
      + '                               A.FREG, A.CCBCOID, C.BANCONOM,A.NROOPE,A.FOPERAC,A.CREDID '
      + '                        FROM CRE310 A,CRE302 B, TGE105 C '
      + '                        WHERE A.ASOID=' + QuotedStr(xAsoId)
      + '                          AND A.CREESTID NOT IN (''13'', ''04'') '
      + '                          AND (FORPAGID=''18'' '
      + '                            OR FORPAGABR=' + QuotedStr(UpperCase(Copy(BitRepTel.Caption, 1, 3))) + ') '
      + '                          AND A.ASOID=B.ASOID AND A.CREDID=B.CREDID AND A.CRECUOTA=B.CRECUOTA '
      + '                          AND A.BANCOID = C.BANCOID(+) '
      + '                        ORDER BY CREFPAG DESC) '
      + '                  GROUP BY CREFPAG,CREDOCPAG,FORPAGABR,FREG '
      + '                  ORDER BY CREFPAG DESC) A, '
      + '                 (SELECT A.CRECUOTA,CREFVEN,A.CREFPAG,A.FORPAGABR,A.CREDOCPAG,A.CREMTOCOB,A.FREG, '
      + '                         A.CCBCOID, C.BANCONOM,A.NROOPE,A.FOPERAC,A.CREDID '
      + '                  FROM CRE310 A,CRE302 B, TGE105 C '
      + '                  WHERE A.ASOID=' + QuotedStr(xAsoId) + '  AND A.CREESTID NOT IN (''13'', ''04'') '
      + '                    AND (FORPAGID=''18'' '
      + '                      OR FORPAGABR=' + QuotedStr(UpperCase(Copy(BitRepTel.Caption, 1, 3))) + ') '
      + '                    AND A.ASOID=B.ASOID AND A.CREDID=B.CREDID '
      + '                    AND A.CRECUOTA=B.CRECUOTA AND A.BANCOID = C.BANCOID(+) '
      + '            ORDER BY CREFPAG DESC '
      + '            ) B '
      + '      WHERE A.CREFPAG=B.CREFPAG AND A.CREDOCPAG=B.CREDOCPAG AND A.FORPAGABR=B.FORPAGABR ) '
      + '      ) '
      + 'ORDER BY ORDEN ';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSQL);
   DM1.cdsQry.Open;
   DM1.cdsQry.IndexFieldNames := 'ORDEN';
   If DM1.cdsQry.RecordCount > 0 Then
      Begin
         ppLblCodMod1.Caption := DM1.cdsAso.FieldByName('ASOCODMOD').AsString;
         pplblNomGen1.Caption := DM1.cdsAso.FieldByName('ASOAPENOM').AsString;

         xCondicion := 'UPROID=' + QuotedStr(Trim(DM1.cdsAso.fieldbyname('UPROID').AsString)) + ' AND USEID=' + QuotedStr(Trim(DM1.cdsAso.fieldbyname('USEID').AsString)) + ' AND UPAGOID=' + QuotedStr(Trim(DM1.cdsAso.fieldbyname('UPAGOID').AsString));
         xDesCod := DM1.CrgDescrip(xCondicion, 'APO101', 'USENOM');
         pplblUse1.Caption := Trim(DM1.cdsAso.FieldByName('USEID').AsString) + ' - ' + Trim(xDesCod);
         xDesCod := DM1.CrgDescrip('UPROID=' + QuotedStr(Trim(DM1.cdsAso.FieldByName('UPROID').AsString)), 'APO102', 'UPRONOM');
         pplblUpro1.Caption := Trim(DM1.cdsAso.FieldByName('UPROID').AsString) + ' - ' + Trim(xDesCod);

      //pplblUse1.Caption := Trim(fPagoCuotas.EdtCodUse.Text) + ' - ' + Trim(fPagoCuotas.EdtDesUse.Text);
      //pplblUpro1.Caption := Trim(fPagoCuotas.EdtCodLug.Text) + ' - ' + Trim(fPagoCuotas.EdtDesLug.Text);

         RepDetTel.Print;
         RepDetTel.Cancel;
      End;
   DM1.cdsQry.IndexFieldNames := '';
   DM1.cdsQry.Close;
End;

Procedure TfDetRegG.FormCreate(Sender: TObject);
Begin

   dtgDetReg.Selected.clear;
   dtgDetReg.Selected.Add('CRECUOTA'#9'5'#9'N°~Cuota'#9#9);
   dtgDetReg.Selected.Add('CREFVEN'#9'10'#9'Vencimiento'#9'F'#9'Fecha de');
   dtgDetReg.Selected.Add('CREFPAG'#9'10'#9'Fecha'#9'F'#9'Del Pago');
 //Inicio: HPP_200931_COB por RMEDINA
 //Memorándum 843-2009-DM-COB - SAR-2009-0765 - DAD-RM-2009-0129
 // Se adicona la columna de Periodo de la Cobranza
   dtgDetReg.Selected.Add('FORPAGABR'#9'4'#9'Tipo'#9'F'#9'Del Pago');
   dtgDetReg.Selected.Add('RCOBPER'#9'10'#9'Mes Planilla'#9'F'#9'Del Pago');
 //Final: HPP_200931_COB
   dtgDetReg.Selected.Add('CREDOCPAG'#9'12'#9'N°Documento'#9'F'#9'Del Pago');
   dtgDetReg.Selected.Add('FREG'#9'10'#9'Reg.Sis.'#9'F'#9'Del Pago');
   dtgDetReg.Selected.Add('PAGOS'#9'09'#9'Pagado'#9'F'#9'Importe');
   dtgDetReg.Selected.Add('DEVOL'#9'09'#9'Devuelto'#9'F'#9'Importe');
   dtgDetReg.Selected.Add('APLIC'#9'09'#9'Aplicado'#9'F'#9'Importe');
   dtgDetReg.Selected.Add('ORICREDID'#9'7'#9'Credito'#9'F'#9'Procedencia');
   dtgDetReg.Selected.Add('ORICUO'#9'3'#9'Cuota'#9'F'#9'Procedencia');
   dtgDetReg.Selected.Add('CCBCOID'#9'15'#9'Cuenta'#9#9);
   dtgDetReg.Selected.Add('BANCONOM'#9'15'#9'Banco'#9#9);
   dtgDetReg.Selected.Add('USUARIO'#9'10'#9'Usuario'#9'F');
   dtgDetReg.DataSource := DM1.dsCViv;
End;

Procedure TfDetRegG.FormActivate(Sender: TObject);
Var
   B: TBookmark;
   xPagos, xDEvol, xAplic: currency;
Begin
   dtgDetReg.ColumnByName('Pagos').FooterValue := '0.00';
   dtgDetReg.ColumnByName('Devol').FooterValue := '0.00';
   dtgDetReg.ColumnByName('Aplic').FooterValue := '0.00';

   //Guardo la posicion
   B := Dm1.cdsCViv.GetBookmark;
   Dm1.cdsCViv.DisableControls;

   Dm1.cdsCViv.First;
   xPagos := 0;
   xDevol := 0;
   xAplic := 0;

   While Not Dm1.cdsCViv.Eof Do
      Begin
         xPagos := xPagos + Dm1.cdsCViv.FieldByName('Pagos').ascurrency;
         xDevol := xDevol + Dm1.cdsCViv.FieldByName('Devol').AsInteger;
         xAplic := xAplic + Dm1.cdsCViv.FieldByName('Aplic').AsInteger;
         Dm1.cdsCViv.Next;
      End;

   dtgDetReg.ColumnByName('Pagos').FooterValue := FormatCurr('###,##0.#0', xPagos);
   dtgDetReg.ColumnByName('Devol').FooterValue := FormatCurr('###,##0.#0', xDevol);
   dtgDetReg.ColumnByName('Aplic').FooterValue := FormatCurr('###,##0.#0', xAplic);
   xtotal := FormatCurr('###,##0.#0', xpagos - xDevol + xAplic);

   //Me posiciono nuevamente en el posicion marcada
   Dm1.cdsCViv.GotoBookmark(B);
   Dm1.cdsCViv.EnableControls;
   Dm1.cdsCViv.FreeBookmark(B);

End;

Procedure TfDetRegG.Opciones(AOptions: TwwExportOptions);
Begin
   AOptions.Options := [esoDblQuoteFields, esoShowFooter];
   AOptions.Options := AOptions.Options + [esoShowTitle];
   AOptions.Options := AOptions.Options + [esoShowHeader];
   AOptions.Options := AOptions.Options + [esoShowRecordNo];
   AOptions.Options := AOptions.Options + [esoEmbedURL];
   AOptions.Options := AOptions.Options + [esoDynamicColors];
   AOptions.Options := AOptions.Options + [esoShowAlternating];
End;

Procedure TfDetRegG.FormClose(Sender: TObject; Var Action: TCloseAction);
Begin
   DM1.cdsDLabo.Close;
   DM1.cdsQry.Close;
End;

Procedure TfDetRegG.BtnExcelClick(Sender: TObject);
Var
   xArchivo: String;
   xAno, xMes, xDia: word;
Begin
   If Dm1.cdsCViv.RecordCount = 0 Then
      Begin
         ShowMessage('No existe Información procesable...');
         Exit;
      End;

   decodedate(DM1.FechaSys, xAno, xMes, xDia);
   xArchivo := 'DETPAG' + inttostr(xAno) + DM1.StrZero(inttostr(xMes), 2) + DM1.StrZero(inttostr(xDia), 2);
   xArchivo := xArchivo + copy(timetostr(time), 1, 2) + copy(timetostr(time), 4, 2) + copy(timetostr(time), 7, 2);

   With dtgDetReg, dtgDetReg.ExportOptions Do
      Begin
         ExportType := wwgetSYLK;
         FileName := xArchivo + '.slk';
         dtgDetReg.ExportOptions.TitleName := fDetRegG.Caption;
         Opciones(dtgDetReg.ExportOptions);
         Save;
         If Not (esoClipboard In Options) Then
            ShellExecute(Handle, 'Open', PChar(dtgDetReg.exportoptions.Filename), Nil, Nil, sw_shownormal);
      End;
End;

// Fin: HPP_200929_COB por RMEDINA
End.
