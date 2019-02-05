Unit GES203n;

Interface

Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, wwdbdatetimepicker, Mask, wwdbedit, wwdblook, Wwdbdlg, ExtCtrls, fcButton, fcImgBtn, fcShapeBtn, Grids, Wwdbigrd, Wwdbgrid, ComCtrls, Wwdbspin, Db, IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, IdFTP, ppDB, ppDBPipe, ppBands, ppStrtch, ppMemo, ppPrnabl, ppClass, ppCtrls, ppCache, ppComm, ppRelatv, ppProd, ppReport, Buttons, jpeg, IniFiles, DateUtils, fcLabel, Math,
   ppVar;

Type
   TfRegApor = Class(TForm)
      GroupBox1: TGroupBox;
      BitSalir: TBitBtn;
      lstAnoApot: TListBox;
      dtgAportes: TwwDBGrid;
      BitPrint: TBitBtn;
      RepFotoFirma: TppReport;
      ppHeaderBand1: TppHeaderBand;
      ppShape5: TppShape;
      ppLabel1: TppLabel;
      ppLabel2: TppLabel;
      ppLabel3: TppLabel;
      ppLabel4: TppLabel;
      ppLabel5: TppLabel;
      ppLabel6: TppLabel;
      ppLabel7: TppLabel;
      ppLabel8: TppLabel;
      Use: TppLabel;
      Proc: TppLabel;
      ppLabel11: TppLabel;
      ppLabel12: TppLabel;
      lblAsotip: TppLabel;
      lbltitfot: TppLabel;
      ppLabel13: TppLabel;
      ppLabel14: TppLabel;
      ppLabel15: TppLabel;
      ppLabel16: TppLabel;
      ppSystemVariable1: TppSystemVariable;
      ppSystemVariable2: TppSystemVariable;
      ppLabel17: TppLabel;
      ppLabel18: TppLabel;
      lblCodMod: TppLabel;
      lblAsoApeNom: TppLabel;
      ppDetailBand1: TppDetailBand;
      ppShape4: TppShape;
      ppShape3: TppShape;
      ppImageAso: TppImage;
      ppImageFirma: TppImage;
      ppFooterBand1: TppFooterBand;
      ppSummaryBand1: TppSummaryBand;
      lblUsrImp: TppLabel;
      RepAportes: TppReport;
      ppHeaderBand31: TppHeaderBand;
      ppShape2: TppShape;
      ppShape1: TppShape;
      lblTitulo: TppLabel;
      ppLabel628: TppLabel;
      ppLabel629: TppLabel;
      ppLabel630: TppLabel;
      ppLabel631: TppLabel;
      ppLabel632: TppLabel;
      ppSystemVariable62: TppSystemVariable;
      ppSystemVariable63: TppSystemVariable;
      ppSystemVariable64: TppSystemVariable;
      ppLabel633: TppLabel;
      ppLabel634: TppLabel;
      ppLabel635: TppLabel;
      ppLine156: TppLine;
      ppLine157: TppLine;
      ppDBText260: TppDBText;
      ppDBText267: TppDBText;
      lblUse: TppLabel;
      lblProc: TppLabel;
      lblTipAso: TppLabel;
      ppLabel636: TppLabel;
      ppLabel637: TppLabel;
      ppLabel638: TppLabel;
      ppLabel639: TppLabel;
      ppLabel640: TppLabel;
      ppLabel641: TppLabel;
      ppLabel642: TppLabel;
      ppLabel643: TppLabel;
      ppLabel644: TppLabel;
      ppLabel645: TppLabel;
      ImagAso: TppImage;
      ImaFirma: TppImage;
      ppDetailBand33: TppDetailBand;
      ppDBText268: TppDBText;
      ppDBText269: TppDBText;
      ppDBText270: TppDBText;
      ppDBText271: TppDBText;
      ppDBText272: TppDBText;
      ppDBText273: TppDBText;
      ppDBText274: TppDBText;
      ppFooterBand26: TppFooterBand;
      ppSummaryBand31: TppSummaryBand;
      ppLabel646: TppLabel;
      ppDBCalc218: TppDBCalc;
      ppDBCalc219: TppDBCalc;
      ppLabel647: TppLabel;
      ppLine158: TppLine;
      ppLine159: TppLine;
      lblUsuario: TppLabel;
      ppGroup40: TppGroup;
      ppGroupHeaderBand40: TppGroupHeaderBand;
      ppDBText275: TppDBText;
      ppLabel648: TppLabel;
      ppLabel649: TppLabel;
      ppLabel650: TppLabel;
      ppLabel651: TppLabel;
      ppLabel652: TppLabel;
      ppLabel653: TppLabel;
      ppLabel654: TppLabel;
      ppLabel655: TppLabel;
      ppLine160: TppLine;
      ppLine161: TppLine;
      ppLabel656: TppLabel;
      ppLabel657: TppLabel;
      ppGroupFooterBand40: TppGroupFooterBand;
      ppDBCalc220: TppDBCalc;
      ppDBCalc221: TppDBCalc;
      ppLabel658: TppLabel;
      ppLabel659: TppLabel;
      ppLine162: TppLine;
      ppLine163: TppLine;
      DbAportes: TppDBPipeline;
      IdFTP1: TIdFTP;
      Procedure FormActivate(Sender: TObject);
      Procedure lstAnoApotClick(Sender: TObject);
      Procedure BitPrintClick(Sender: TObject);
      Procedure BitSalirClick(Sender: TObject);
   Private
    { Private declarations }
      Procedure MstAportes(xAsoid, xAno: String);
   Public
    { Public declarations }
      Procedure CargaFoto(IdFoto: String);
      Procedure CargaFirma(IdFoto: String);
      Procedure BorraFotos();
   End;

Var
   fRegApor: TfRegApor;

Implementation

Uses GESDM1, GES203a, GES203d;

{$R *.dfm}

Procedure TfRegApor.FormActivate(Sender: TObject);
Var
   I: Integer;
Begin
   For I := YearOf(DM1.FechaSys) Downto 1997 Do
      Begin
         lstAnoApot.Items.Add(IntToStr(I));
         lstAnoApot.ItemIndex := 0;
      End;
   MstAportes(DM1.cdsMovCre.fieldbyname('ASOID').AsString, lstAnoApot.Items.Strings[lstAnoApot.ItemIndex]);

End;

Procedure TfRegApor.MstAportes(xAsoid, xAno: String);
Var
   xSQL: String;
Begin
   xSQL := 'SELECT TRANSMES||''/''||TRANSANO PERIODO,FORPAGOABR FRMPAG,TRANSMTO MONTO, ' +
      'TRANSFOPE,USUARIO,USEID||'' - ''||USEABR USES,HREG FROM APO301 ' +
      'WHERE ASOID=' + QuotedStr(xAsoId) + ' AND TRANSANO=' + QuotedStr(xAno) + ' AND TRANSINTID=''APO'' ORDER BY TRANSANO,TRANSMES DESC ';
   DM1.cdsCuotas.Close;
   DM1.cdsCuotas.DataRequest(xSQL);
   DM1.cdsCuotas.Open;
   TNumericField(DM1.cdsCuotas.fieldbyname('MONTO')).DisplayFormat := '###,###.#0';
   dtgAportes.ColumnByName('USES').FooterValue := 'N° De Registros :   ' + IntToStr(DM1.cdsCuotas.RecordCount);

End;

Procedure TfRegApor.lstAnoApotClick(Sender: TObject);
Begin
   MstAportes(DM1.cdsMovCre.fieldbyname('ASOID').AsString, lstAnoApot.Items.Strings[lstAnoApot.ItemIndex]);
End;

Procedure TfRegApor.BitPrintClick(Sender: TObject);
Var
   xSQL, xIdImage: String;
Begin
   xSQL := 'SELECT ' + QuotedStr(DM1.cdsMovCre.fieldbyname('ASOAPENOM').AsString) + ' ASOAPENOM,ASOCODMOD,TRANSANO,TRANSMES||''/''||TRANSANO PERIODO,FORPAGOABR FRMPAG,TRANSMTO MONTO,TRANSFOPE,USUARIO,USEID||''- ''||USEABR USES, ' +
      'HREG FROM APO301 WHERE ASOID=' + QuotedStr(DM1.cdsMovCre.fieldbyname('ASOID').AsString) + ' AND  TRANSINTID=''APO'' ORDER BY TRANSFOPE DESC ';
   DM1.cdsTransDevol.Close;
   DM1.cdsTransDevol.DataRequest(xSQL);
   DM1.cdsTransDevol.Open;
   If DM1.cdsTransDevol.RecordCount > 0 Then
      Begin
         xIdImage := DM1.RecuperaDatos('APO201', 'ASOID', DM1.cdsMovCre.FieldByName('ASOID').AsString, 'IDIMAGE');
         CargaFoto(xIdImage);
         CargaFirma(xIdImage);
         ppImageFirma.Picture := ImaFirma.Picture;
         ppImageAso.Picture := ImagAso.Picture;
         lblUse.Caption := Trim(fGesIndInt.lblUses.Caption);
         lblProc.Caption := DM1.cdsMovCre.fieldbyname('UPROID').AsString + '-' + Trim(DM1.RecuperaDatos('APO102', 'UPROID', DM1.cdsMovCre.fieldbyname('UPROID').AsString, 'UPRONOM'));
         lblTipAso.Caption := Trim(fGesIndInt.lblTipAso.Caption);
         lblAsoTip.Caption := lblTipAso.Caption;
         lblTitulo.Caption := 'DETALLE DE APORTES REGISTRADOS  AL : ' + DateToStr(DM1.FechaSys);
         lbltitfot.Caption := 'FOTO Y FIRMA DE ASOCIADO  AL : ' + DateToStr(DM1.FechaSys);
         lblUsuario.Caption := 'Emitido Por : ' + DM1.wUsuario;
         lblUsrImp.Caption := 'Emitido Por : ' + DM1.wUsuario;
         Use.Caption := lblUse.Caption;
         Proc.Caption := lblProc.Caption;
//       lblCodMod.Caption:=DM1.cdsMovCre.fieldbyname('ASOCODMOD').AsString;
         lblAsoApeNom.Caption := DM1.cdsMovCre.fieldbyname('ASOAPENOM').AsString;
         RepAportes.Print;
         RepAportes.Cancel;
         RepFotoFirma.Print;
         RepFotoFirma.Cancel;
      End;
   DM1.cdsTransDevol.Close;

End;

Procedure TfRegApor.BitSalirClick(Sender: TObject);
Begin
   Close;
End;

Procedure TfRegApor.BorraFotos;
Var
   search: TSearchRec;
   nFiles: integer;
Begin
   nFiles := FindFirst('C:\SOLEXES\*.JPG', faAnyFile, search);
   While nFiles = 0 Do
      Begin
         SysUtils.DeleteFile('C:\SOLEXES\' + Search.Name);
         nFiles := FindNext(Search);
      End;
   FindClose(Search);
End;

Procedure TfRegApor.CargaFirma(IdFoto: String);
Var
   RemoteTxt, LocalTxt, xFtp: String;
   IniFile: TIniFile;
Begin
   IniFile := TIniFile.Create('C:\SOLExes\SOLConf.ini');
   xFtp := IniFile.ReadString('FOTOS', 'FTP', '');
   IDFTP1.Host := xFtp;
   IDFTP1.Port := 21;
   IDFTP1.ReadTimeout := 5000;
   IDFTP1.UserName := 'imagen';
   IDFTP1.Password := 'imagen';
   Try
      IDFTP1.Connect;
      If Trim(IdFoto) <> '' Then
         Begin
            Try
               RemoteTxt := '/data04/imagen/FPEG' + copy(IdFoto, 1, 1) + '/' + IdFoto + '.jpg';
               LocalTxt := 'C:\SolExes\' + IdFoto + '.jpg';
               IdFTP1.Get(RemoteTxt, LocalTxt, False);
               ImaFirma.Picture.LoadFromFile(LocalTxt);
               deletefile(LocalTxt);
               BorraFotos;
            Except
               RemoteTxt := '/data04/imagen/SINFIRMA.jpg';
               LocalTxt := 'C:\SolExes\SINFIRMA.Jpg';
               IdFTP1.Get(RemoteTxt, LocalTxt, False);
               ImaFirma.Picture.LoadFromFile(LocalTxt);
            End;
         End
      Else
         Begin
            Try
               RemoteTxt := '/data04/imagen/SINFIRMA.jpg';
               LocalTxt := 'C:\SolExes\SINFIRMA.Jpg';
               IdFTP1.Get(RemoteTxt, LocalTxt, False);
               ImaFirma.Picture.LoadFromFile(LocalTxt);
               deletefile(LocalTxt);
               BorraFotos;
            Except

            End;
         End;
   Except
      MessageDlg('Error al Intentar Conectar Al Servidor De Fotos (RS/6000) ...!', mtError, [mbOk], 0);
   End;
   idFTP1.Disconnect;

End;

Procedure TfRegApor.CargaFoto(IdFoto: String);
Var
   RemoteTxt, LocalTxt, xFtp: String;
   IniFile: TIniFile;
Begin
   IniFile := TIniFile.Create('C:\SOLExes\SOLConf.ini');
   xFtp := IniFile.ReadString('FOTOS', 'FTP', '');
   IDFTP1.Host := xFtp;
   IDFTP1.Port := 21;
   IDFTP1.ReadTimeout := 5000;
   IDFTP1.UserName := 'imagen';
   IDFTP1.Password := 'imagen';
   Try
      IDFTP1.Connect;
      If Trim(IdFoto) <> '' Then
         Begin
            Try
               RemoteTxt := '/data02/imagen/jpeg/JPEG' + copy(IdFoto, 1, 1) + '/' + IdFoto + '.jpg';
               LocalTxt := 'C:\SolExes\' + IdFoto + '.jpg';
               DeleteFile('C:\SolExes\' + IdFoto + '.jpg');
               IdFTP1.Get(RemoteTxt, LocalTxt, False);
               ImagAso.Picture.LoadFromFile(LocalTxt);
               SysUtils.deletefile(LocalTxt);
               BorraFotos;
            Except
               RemoteTxt := '/data02/imagen/jpeg/SINFOTO.jpg';
               LocalTxt := 'C:\SolExes\SINFOTO.Jpg';
               IdFTP1.Get(RemoteTxt, LocalTxt, False);
               ImagAso.Picture.LoadFromFile(LocalTxt);
               SysUtils.deletefile(LocalTxt);
               BorraFotos;
            End;
         End
      Else
         Begin
            Try
               RemoteTxt := '/data02/imagen/jpeg/SINFOTO.jpg';
               LocalTxt := 'C:\SolExes\SINFOTO.Jpg';
               IdFTP1.Get(RemoteTxt, LocalTxt, False);
               ImagAso.Picture.LoadFromFile(LocalTxt);
               SysUtils.deletefile(LocalTxt);
               BorraFotos;
            Except

            End;
         End;
   Except
      MessageDlg('Error al Intentar Conectar Al Servidor De Fotos (RS/6000) ...!', mtError, [mbOk], 0);
   End;
   idFTP1.Disconnect;

End;

End.

