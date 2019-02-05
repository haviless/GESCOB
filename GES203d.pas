Unit GES203d;

Interface

Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, Buttons, Grids, Wwdbigrd, Wwdbgrid, DB,
   DBClient, ppCtrls, ppBands, ppPrnabl, ppClass, ppVar, ppCache, ppProd,
   ppReport, ppDB, ppComm, ppRelatv, ppDBPipe, IdBaseComponent, IdComponent,
   IdTCPConnection, IdTCPClient, IdFTP, ExtCtrls, ppParameter, ppModule,
   daDataModule, AppEvnts;

Type
   TfCronoPag = Class(TForm)
      GroupBox1: TGroupBox;
      lblEstado: TLabel;
      Panel1: TPanel;
      Label1: TLabel;
      Label2: TLabel;
      EdtDesUse: TEdit;
      EdtFecDes: TEdit;
      EdtCodMod: TEdit;
      EdtNomGen: TEdit;
      EdtFecPre: TEdit;
      EdtCreDid: TEdit;
      EdtDesTip: TEdit;
      Panel2: TPanel;
      EdtMonto: TEdit;
      EdtNumCuo: TEdit;
      EdtMoneda: TEdit;
      dtgPagos: TwwDBGrid;
      GroupBox2: TGroupBox;
      BitPrint: TBitBtn;
      BitSalir: TBitBtn;
      BitDetPag: TBitBtn;
      EdtTipDes: TEdit;
      ppDBEstCta: TppDBPipeline;
      tPerCob: TTimer;
      ppREstCta: TppReport;
      ppHeaderBand1: TppHeaderBand;
      ppSystemVariable2: TppSystemVariable;
      ppLabel16: TppLabel;
      ppLabel17: TppLabel;
      ppLabel18: TppLabel;
      ppLabel19: TppLabel;
      ppSystemVariable1: TppSystemVariable;
      ppLblTitulo: TppLabel;
      ppLabel21: TppLabel;
      ppLblCodMod: TppLabel;
      ppLabel22: TppLabel;
      ppLabel23: TppLabel;
      ppLabel24: TppLabel;
      pplblTipCre: TppLabel;
      pplblNomGen: TppLabel;
      pplblNumPre: TppLabel;
      ppLabel25: TppLabel;
      pplblFecPre: TppLabel;
      ppLabel26: TppLabel;
      ppLabel27: TppLabel;
      pplblUse: TppLabel;
      pplblMonto: TppLabel;
      ppLabel28: TppLabel;
      pplblNumCuo: TppLabel;
      ppLabel29: TppLabel;
      pplblTipCli: TppLabel;
      ppLabel34: TppLabel;
      ppLabel35: TppLabel;
      ppLabel36: TppLabel;
      ppLabel37: TppLabel;
      ppLabel38: TppLabel;
      ppLabel39: TppLabel;
      ppLabel40: TppLabel;
      ppLabel41: TppLabel;
      ppLabel42: TppLabel;
      ppShpImg: TppShape;
      ppImage1: TppImage;
      ppLabel20: TppLabel;
      ppLabel47: TppLabel;
      ppLabel48: TppLabel;
      ppLabel49: TppLabel;
      ppLblInt: TppLabel;
      ppLblFlat: TppLabel;
      ppLabel50: TppLabel;
      ppLabel51: TppLabel;
      ppLabel52: TppLabel;
      ppLabel53: TppLabel;
      ppLblCuenta: TppLabel;
      ppLabel54: TppLabel;
      ppLabel55: TppLabel;
      ppLblOriOto: TppLabel;
      pplblRotulo: TppLabel;
      pplblRot02: TppLabel;
      ppLblTipDes: TppLabel;
      ppLblEstado: TppLabel;
      ppLblCuotas: TppLabel;
      ppLabel76: TppLabel;
      ppLabel71: TppLabel;
      ppLabel70: TppLabel;
      ppLabel79: TppLabel;
      ppLabel80: TppLabel;
      pplblTipCliOtorg: TppLabel;
      ppLabel81: TppLabel;
      ppLabel82: TppLabel;
      ppLblRegimen: TppLabel;
      ppLabel83: TppLabel;
      ppLabel84: TppLabel;
      ppLblDirDom: TppLabel;
      ppLabel85: TppLabel;
      ppLabel86: TppLabel;
      ppLblTelefono: TppLabel;
      ppLabel87: TppLabel;
      ppLabel88: TppLabel;
      ppLblDiasAtraso: TppLabel;
      ppLabel89: TppLabel;
      ppLabel90: TppLabel;
      ppLblFirmoAutorizacion: TppLabel;
      ppLabel91: TppLabel;
      ppLabel92: TppLabel;
      ppLblProvision: TppLabel;
      ppDetailBand1: TppDetailBand;
      ppDBText1: TppDBText;
      ppDBText2: TppDBText;
      ppDBText3: TppDBText;
      ppDBText4: TppDBText;
      ppDBText5: TppDBText;
      ppDBText6: TppDBText;
      ppDBText7: TppDBText;
      ppDBText8: TppDBText;
      ppDBText9: TppDBText;
      ppDBText10: TppDBText;
      ppFooterBand1: TppFooterBand;
      ppSummaryBand1: TppSummaryBand;
      ppLine6: TppLine;
      ppLine1: TppLine;
      ppLabel1: TppLabel;
      ppDBCalc1: TppDBCalc;
      ppDBCalc2: TppDBCalc;
      ppDBCalc3: TppDBCalc;
      ppDBCalc4: TppDBCalc;
      ppDBCalc5: TppDBCalc;
      ppLine2: TppLine;
      ppLine3: TppLine;
      ppLabel2: TppLabel;
      lblSalTot: TppLabel;
      ppLabel30: TppLabel;
      ppLabel31: TppLabel;
      ppLblCuoVen: TppLabel;
      pplblCuoPen: TppLabel;
      ppLabel32: TppLabel;
      pplblMonPag: TppLabel;
      ppLNota1: TppLabel;
      ppLine7: TppLine;
      ppLabel43: TppLabel;
      ppLabel46: TppLabel;
      ppLabel45: TppLabel;
      ppLabel44: TppLabel;
      ppLblUser: TppLabel;
      ppDBCalc6: TppDBCalc;
      ppLblApro: TppLabel;
      ppLNota2: TppLabel;
      ppLabel33: TppLabel;
      lblVen: TppLabel;
      lblPen: TppLabel;
      lblTot: TppLabel;
      ppLabel69: TppLabel;
      ppLabel75: TppLabel;
      ppLabel74: TppLabel;
      ppLabel73: TppLabel;
      ppLabel72: TppLabel;
      ppLabel56: TppLabel;
      ppLabel57: TppLabel;
      ppLabel77: TppLabel;
      ppLabel78: TppLabel;
      ppLblCuoDif: TppLabel;
      lblDif: TppLabel;
      ppGroup1: TppGroup;
      ppGroupHeaderBand1: TppGroupHeaderBand;
      ppLine4: TppLine;
      ppLine5: TppLine;
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
      ppLabel13: TppLabel;
      ppLabel14: TppLabel;
      ppLabel15: TppLabel;
      ppLabel58: TppLabel;
      ppGroupFooterBand1: TppGroupFooterBand;
      ppParameterList1: TppParameterList;
      Procedure BitSalirClick(Sender: TObject);
      Procedure FormCreate(Sender: TObject);
      Procedure FormActivate(Sender: TObject);
      Procedure BitPrintClick(Sender: TObject);
      Procedure dtgPagosDblClick(Sender: TObject);
      Procedure BitDetPagClick(Sender: TObject);
      Procedure dtgPagosMouseUp(Sender: TObject; Button: TMouseButton;
         Shift: TShiftState; X, Y: Integer);
      Procedure tPerCobTimer(Sender: TObject);
   Private
    { Private declarations }
   Public
    { Public declarations }
   End;

Var
   fCronoPag: TfCronoPag;

Implementation

Uses GESDM1, GES203e, GES203n, GES240, GES203a;

{$R *.dfm}
Type
   THintConFont = Class(THintWindow)
      Constructor Create(AOwner: TComponent); Override;
   End;

Constructor THintConFont.Create(AOwner: TComponent);
Begin
   Inherited
      Create(Aowner);
   Canvas.Font.Name := 'Times New Roman';
   Canvas.Font.Size := 14;
   Canvas.Brush.Color := clWhite;
   Canvas.Font.Color := clRed;
End;

Procedure TfCronoPag.BitSalirClick(Sender: TObject);
Begin
   Close;
End;

Procedure TfCronoPag.FormCreate(Sender: TObject);
Begin
   dtgPagos.SetControlType('FLAGVAR', fctCheckBox, 'S;N');
End;

Procedure TfCronoPag.FormActivate(Sender: TObject);
Var
   xCrecapital, xCremtoint, xCremtoflat, xCremtocob, xCremto: Currency;
   xAsoId, xCreDid: String;
Begin
   xAsoId := DM1.cdsCuotas.FieldByName('ASOID').AsString;
   xCredId := DM1.cdsCuotas.FieldByName('CREDID').AsString;
   xCrecapital := 0;
   xCremtoint := 0;
   xCremtoflat := 0;
   xCremtocob := 0;
   xCremto := 0;
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest('SELECT SUM(CRECAPITAL) AS CRECAPITAL,SUM(CREMTOINT) AS CREMTOINT,SUM(CREMTOFLAT) AS CREMTOFLAT,SUM(CREMTOCOB) AS CREMTOCOB,SUM(CREMTO) AS CREMTO FROM CRE302 WHERE ASOID=' + QuotedStr(Trim(xAsoId)) + ' AND CREDID=' + QuotedStr(Trim(xCreDid)) + ' Group By ASOID,CREDID');
   DM1.cdsQry.Open;
   If DM1.cdsQry.RecordCount > 0 Then
      Begin
         xCrecapital := DM1.cdsQry.fieldbyname('CRECAPITAL').AsCurrency;
         xCremtoint := DM1.cdsQry.fieldbyname('CREMTOINT').AsCurrency;
         xCremtoflat := DM1.cdsQry.fieldbyname('CREMTOFLAT').AsCurrency;
         xCremtocob := DM1.cdsQry.fieldbyname('CREMTOCOB').AsCurrency;
         xCremto := DM1.cdsQry.fieldbyname('CREMTO').AsCurrency;
      End
   Else
      Begin
         xCrecapital := 0;
         xCremtoint := 0;
         xCremtoflat := 0;
         xCremtocob := 0;
         xCremto := 0;
      End;

   DM1.cdsQry.Close;

   dtgPagos.ColumnByName('CREFVEN').FooterValue := 'Total';
   dtgPagos.ColumnByName('CRECAPITAL').FooterValue := FloatToStrF(xCrecapital, ffNumber, 10, 2);
   dtgPagos.ColumnByName('CREMTOINT').FooterValue := FloatToStrF(xCremtoint, ffNumber, 10, 2);
   dtgPagos.ColumnByName('CREMTOFLAT').FooterValue := FloatToStrF(xCremtoflat, ffNumber, 10, 2);
   dtgPagos.ColumnByName('CREMTOCOB').FooterValue := FloatToStrF(xCremtocob, ffNumber, 10, 2);
   dtgPagos.ColumnByName('CREMTO').FooterValue := FloatToStrF(xCremto, ffNumber, 10, 2);

End;

Procedure TfCronoPag.BitPrintClick(Sender: TObject);
Var
   xSql, xAsoId, xCredId, xfVenc, xfCalc: String;
   xSalAnt, xSalVen, xSalDif, xCuoProCob: Currency;
   xCuoPen, xCuoVen, xCuoDif: Integer;
   xRegistro: TBookmark;
Begin

   If dtgPagos.DataSource.DataSet.RecordCount = 0 Then Exit;
   xRegistro := DM1.cdsCuotas.GetBookmark;
   DM1.xSgr := 'REP';
   xAsoId := DM1.cdsCuotas.FieldByName('ASOID').AsString;
   xCredId := DM1.cdsCuotas.FieldByName('CREDID').AsString;
   lblSalTot.Caption := FormatFloat('###,###.00', DM1.SaldoActual(xAsoId, xCreDid, '1'));
   ppLblCodMod.Caption := DM1.cdsAso.FieldByName('ASOCODMOD').AsString;
   If Length(Trim(DM1.cdsSolicitud.FieldByName('FLGREFI').AsString)) > 0 Then
      pplblTipCre.Caption := Trim(DM1.cdsSolicitud.FieldByName('TIPCREID').AsString) + '-' + DM1.RecuperaDatos('CRE110', 'TIPCREID', DM1.cdsSolicitud.FieldByName('TIPCREID').AsString, 'TIPCREDES') + '    [REFINANCIADO]'
   Else
      pplblTipCre.Caption := Trim(DM1.cdsSolicitud.FieldByName('TIPCREID').AsString) + '-' + DM1.RecuperaDatos('CRE110', 'TIPCREID', DM1.cdsSolicitud.FieldByName('TIPCREID').AsString, 'TIPCREDES') + '    [NORMAL]';
   ppLblEstado.Caption := Trim(lblEstado.Caption);
   pplblNomGen.Caption := DM1.cdsAso.FieldByName('ASOAPENOMDNI').AsString;
   ppLblCuenta.Caption := DM1.cdsAso.FieldByName('ASONCTA').AsString + ' - [' + DM1.cdsAso.FieldByName('SITCTA').AsString + ']';
   pplblNumPre.Caption := DM1.cdsSolicitud.FieldByName('CREDID').AsString;
   pplblFecPre.Caption := DM1.cdsSolicitud.FieldByName('CREFOTORG').AsString;
   ppLblOriOto.Caption := Copy(DM1.cdsSolicitud.FieldByName('CREDID').AsString, 1, 2) + ' -  ' + DM1.CrgDescrip('OFDESID=' + QuotedStr(Trim(Copy(DM1.cdsSolicitud.FieldByName('CREDID').AsString, 1, 2))), 'APO110', 'OFDESNOM');
   pplblUse.Caption := Trim(EdtDesUse.Text);
   pplblMonto.Caption := FormatFloat('###,###.#0', DM1.cdsSolicitud.FieldByName('CREMTOOTOR').AsFloat);
   pplblNumCuo.Caption := FormatFloat('###,###', DM1.cdsSolicitud.FieldByName('CRENUMCUO').AsFloat);
   ppLblInt.Caption := FormatFloat('##0.#0', DM1.cdsSolicitud.FieldByName('CREINTERES').AsFloat);
   ppLblFlat.Caption := FormatFloat('##0.#0', DM1.cdsSolicitud.FieldByName('CREDFLAT').AsFloat);
   pplblTipCliOtorg.Caption := DM1.cdsSolicitud.FieldByName('ASOTIPID').AsString + ' - ' + DM1.RecuperaDatos('APO107', 'ASOTIPID', DM1.cdsSolicitud.FieldByName('ASOTIPID').AsString, 'ASOTIPDES');
   pplblTipCli.Caption := DM1.cdsAso.fieldbyname('ASOTIPID').AsString + ' - ' + DM1.RecuperaDatos('APO107', 'ASOTIPID', DM1.cdsAso.fieldbyname('ASOTIPID').AsString, 'ASOTIPDES');
   ppLblTipDes.Caption := Trim(DM1.cdsSolicitud.FieldByName('TIPDESEID').AsString) + '-' + DM1.RecuperaDatos('CRE104', 'TIPDESEID', DM1.cdsSolicitud.FieldByName('TIPDESEID').AsString, 'TIPDESEABR');

   DM1.cdsCuotas.First;
   xSalAnt := 0;
   xSalVen := 0;
   xSalDif := 0;
   xCuoProCob := 0;
   xCuoVen := 0;
   xCuoPen := 0;
   xCuoDif := 0;
   xfCalc := Trim(Copy(DateToStr(DM1.FechaSys), 7, 4) + Copy(DateToStr(DM1.FechaSys), 4, 2));
   While Not DM1.cdsCuotas.Eof Do
      Begin
         If (DM1.cdsCuotas.fieldbyname('CREFVEN').AsString <> DM1.cdsCuotas.fieldbyname('CREFVENINI').AsString) And ((DM1.cdsCuotas.fieldbyname('CREESTID').AsString = '02') Or (DM1.cdsCuotas.fieldbyname('CREESTID').AsString = '11') Or (DM1.cdsCuotas.fieldbyname('CREESTID').AsString = '27')) Then
            Begin
               xCuoDif := xCuoDif + 1;
               xSalDif := xSalDif + (DM1.cdsCuotas.fieldbyname('CREMTO').AsCurrency - DM1.cdsCuotas.fieldbyname('CREMTOCOB').AsCurrency);
            End;

         If (DM1.cdsCuotas.fieldbyname('CREESTID').AsString = '14') Then
            xCuoProCob := xCuoProCob + (DM1.cdsCuotas.fieldbyname('CREMTO').AsCurrency - DM1.cdsCuotas.fieldbyname('CREMTOCOB').AsCurrency);

         If (DM1.cdsCuotas.fieldbyname('CREESTID').AsString = '02') Or (DM1.cdsCuotas.fieldbyname('CREESTID').AsString = '11') Or (DM1.cdsCuotas.fieldbyname('CREESTID').AsString = '27') Then
            Begin
               xfVenc := Trim(DM1.cdsCuotas.fieldbyname('CREANO').AsString + DM1.cdsCuotas.fieldbyname('CREMES').AsString);
               If (xfVenc > xfCalc) And (DM1.cdsCuotas.fieldbyname('CREFVEN').AsString = DM1.cdsCuotas.fieldbyname('CREFVENINI').AsString) Then
                  Begin
                     xSalAnt := xSalAnt + (DM1.cdsCuotas.fieldbyname('CREAMORT').AsCurrency + DM1.cdsCuotas.fieldbyname('CREFLAT').AsCurrency) - DM1.cdsCuotas.fieldbyname('CREMTOCOB').AsCurrency;
                     xCuoPen := xCuoPen + 1;
                  End
               Else
                  If DM1.cdsCuotas.fieldbyname('CREFVEN').AsString = DM1.cdsCuotas.fieldbyname('CREFVENINI').AsString Then
                     Begin
                        xSalVen := xSalVen + (DM1.cdsCuotas.fieldbyname('CREMTO').AsCurrency - DM1.cdsCuotas.fieldbyname('CREMTOCOB').AsCurrency);
                        xCuoVen := xCuoVen + 1;
                     End;
            End;
         DM1.cdsCuotas.Next;
      End;
   lblDif.Caption := '(' + FormatFloat('###,##0', xCuoDif) + ')';
   lblVen.Caption := '(' + FormatFloat('###,##0', xCuoVen) + ')';
   lblPen.Caption := '(' + FormatFloat('###,##0', xCuoPen) + ')';
   lblTot.Caption := '(' + FormatFloat('###,##0', xCuoVen + xCuoPen + xCuoDif) + ')';

   If DM1.cdsSolicitud.FieldByName('FORPAGOID').AsString = '18' Then
      ppLNota2.Caption := 'POR EL "BANCO DE LA NACION"'
   Else
      ppLNota2.Caption := 'POR "PLANILLA DE HABERES"';

   ppLblCuoDif.Caption := FormatFloat('###,###.00', xSalDif);
   ppLblCuoVen.Caption := FormatFloat('###,###.00', xSalVen);
   pplblCuoPen.Caption := FormatFloat('###,###.00', xSalAnt);
   pplblMonPag.Caption := FormatFloat('###,###.00', xSalVen + xSalAnt + xSalDif);
   DM1.cdsAbonoCuotas.Close;
   xSQL := 'SELECT COUNT(ASOID) AS CUOPEN '
      + 'FROM CRE302 '
      + 'WHERE ASOID=' + QuotedStr(Trim(xAsoId))
      + '  AND CREDID=' + QuotedStr(Trim(xCreDid))
      + '  AND CREESTID IN (''02'',''11'',''27'') ';
   DM1.cdsAbonoCuotas.DataRequest(xSQL);
   DM1.cdsAbonoCuotas.Open;
   ppLblCuotas.Caption := '( ' + lblTot.Caption + '-Cuotas Por Pagar )';
   DM1.cdsAbonoCuotas.Close;
   DM1.cdsAsoX.Close;

   xSQL := 'SELECT ASOID,CREDID,CRECUOTA,CREFVEN,CREMTO, '
      + '       CASE WHEN CREFVEN<>CREFVENINI THEN ''(D)'' ELSE NULL END AS REPRO ,  '
      + '       CASE WHEN NVL(CREMTOCOB,0)=0 THEN NVL(CREAMORT,0) ELSE NVL(CRECAPITAL,0) END AS AMORT, '
      + '       CASE WHEN NVL(CREMTOCOB,0)=0 THEN NVL(CREINTERES,0) ELSE NVL(CREMTOINT,0) END AS INTER, '
      + '       CASE WHEN NVL(CREMTOCOB,0)=0 THEN NVL(CREFLAT,0) ELSE NVL(CREMTOFLAT,0) END AS GASTO, '
      + '       NVL(CREMTOCOB,0) CREMTOCOB,NVL(CREMTOEXC,0)-NVL(CREAPLEXC,0) CREMTOEXC,CREESTADO '
      + '  FROM CRE302 '
      + ' WHERE ASOID=' + QuotedStr(Trim(xAsoId)) + ' AND CREDID=' + QuotedStr(Trim(xCreDid))
      + ' ORDER BY CREDID,CRECUOTA';
   DM1.cdsAsoX.DataRequest(xSQL);
   DM1.cdsAsoX.Open;
   ppLblTitulo.Caption := 'CRONOGRAMA DE PAGOS N°: ' + pplblNumPre.Caption + '    al: ' + DateToStr(DM1.FechaSys);

   (*
   ppShpImg.Visible := True;
   ppImage1.Visible := True;
   fGesIndInt.CargaFoto(DM1.RecuperaDatos('APO201', 'ASOID', Trim(xAsoId), 'IDIMAGE'));
   *)

   ppShpImg.Visible := False;
   ppImage1.Visible := False;

   ppLblUser.Caption := 'Impreso por   : ' + DM1.CrgDescrip('USERID=' + QuotedStr(Trim(DM1.wUsuario)), 'TGE006', 'USERNOM');
   ppLblApro.Caption := 'Otorgado por  : ' + DM1.CrgDescrip('USERID=' + QuotedStr(Trim(DM1.cdsSolicitud.FieldByName('USUARIO').AsString)), 'TGE006', 'USERNOM');

   ppLabel81.Visible := false;
   ppLabel82.Visible := false;
   ppLblRegimen.Visible := false;
   ppLabel83.Visible := false;
   ppLabel84.Visible := false;
   ppLblDirDom.Visible := false;
   ppLabel85.Visible := false;
   ppLabel86.Visible := false;
   ppLblTelefono.Visible := false;
   ppLabel87.Visible := false;
   ppLabel88.Visible := false;
   ppLblDiasAtraso.Visible := false;
   ppLabel89.Visible := false;
   ppLabel90.Visible := false;

   ppLblFirmoAutorizacion.Visible := false;
   ppLabel91.Visible := false;
   ppLabel92.Visible := false;
   ppLblProvision.Visible := false;

   ppREstCta.Print;
   ppREstCta.Cancel;
   DM1.cdsAsoX.Close;
   DM1.cdsFormaPago.Close;
   DM1.cdsCuotas.GotoBookmark(xRegistro);
   dtgPagos.SetFocus;

End;

Procedure TfCronoPag.dtgPagosDblClick(Sender: TObject);
Var
   xAsoId, xCredId, xCreCuota: String;
   xRegistro: TBookmark;
Begin
   If dtgPagos.DataSource.DataSet.RecordCount = 0 Then Exit;
   xAsoId := DM1.cdsCuotas.FieldByName('ASOID').AsString;
   xCredId := DM1.cdsCuotas.FieldByName('CREDID').AsString;
   xCreCuota := DM1.cdsCuotas.FieldByName('CRECUOTA').AsString;
   xRegistro := DM1.cdsCuotas.GetBookmark;
   DM1.xSal := 'A';
   DM1.xGrabaExc := 'N';
   If ((DM1.cdsCuotas.fieldbyname('CREESTID').AsString <> '02') And (DM1.cdsCuotas.fieldbyname('CREESTID').AsString <> '11') And (DM1.cdsCuotas.fieldbyname('CREESTID').AsString <> '27')) And (DM1.cdsCuotas.fieldbyname('CREMTOCOB').AsCurrency = 0) Then Exit;
   If DM1.cdsCuotas.fieldbyname('CREESTID').AsString = '14' Then Exit;
   If DM1.cdsCuotas.fieldbyname('CREMTOCOB').AsCurrency > 0 Then
      Begin
         DM1.cdsDetalle.Close;
         DM1.cdsDetalle.DataRequest(' Select CIAID, ASOID, ASOCODMOD, ASOCODAUX, USEID, ASOCODPAGO, TIPCREID, CREDID, '
            + '        CRECUOTA, CREMONLOC, CREMONEXT, CREFPAG, CREAMORT, CREINTERES, CREFLAT, '
            + '        CREMTOCOB, TMONID, TCAMBIO, USUARIO, FREG, HREG, UPROID, DPTOID, UPAGOID, '
            + '        BANCOID, CCBCOID, ASOAPENOM, CIUDID, ARCHIVOFTP, CREOBS, CREANO, FORPAGOID, '
            + '        NROOPE, FOPERAC, NRONABO, AREAID, CREMES, CREMTODEV, FORPAGOABR, TRANSINTID, '
            + '        COBFDEV, COBFRECL, COBFNP, CREESTID, CREESTADO, CREMTOCUO, FLGEXC, FECEXC,  '
            + '        CREDOCPAG, DEVID, FLGSSS, AGENBCOID, FORPAGID, FORPAGABR, DETRCOBID,  '
            + '        USERCOBID, RCOBID, DOCID, FLGTA, NROREFINAN, CREFLAGDEV, FL_DISTRIB,  '
            + '        CREESTANT, CREESTANTDES, NROOPETMP, FOPERACTMP, ASOSITID, FLAGVAR, '
            + '        FLAGVAR2, CNTANOMM, TIPOCONT, CREMTOEXC, FLAGVAR3, FLAGVAR4, FLGINCONSIS,  '
            + '        CREAPLEXC, PERCONTA, TIPNABO, CNTFLAG, OFDESID, NUMDEV, CRECUOTAINI,  '
            + '        CRECUOTAINI2, CRECUOTAINI3 '
            + '   from CRE310 '
            + '  Where ASOID    = ' + QuotedStr(Trim(xAsoId))
            + '    And CREDID   = ' + QuotedStr(Trim(xCreDid))
            + '    And CRECUOTA = ' + QuotedStr(xCreCuota)
            + '    And CREESTID NOT IN (''13'', ''04'') '
            + '  Order By CREFPAG ');
         DM1.cdsDetalle.Open;
         TNumericField(DM1.cdsDetalle.fieldbyname('CREMTOCOB')).DisplayFormat := '###,###.#0';
         TNumericField(DM1.cdsDetalle.fieldbyname('CREMTOCUO')).DisplayFormat := '###,###.#0';
         If DM1.cdsDetalle.RecordCount > 0 Then
            Begin
               fDetPagos := Nil;
               fDetPagos := tfDetPagos.Create(Self);
               fDetPagos.Showmodal;
               fDetPagos.Free;
               DM1.cdsCuotas.GotoBookmark(xRegistro);
            End;
      End;
End;

Procedure TfCronoPag.BitDetPagClick(Sender: TObject);
Var
   xSQL, xAsoId, xCreDid: String;
Begin
   xAsoId := DM1.cdsCuotas.FieldByName('ASOID').AsString;
   xCreDid := DM1.cdsCuotas.FieldByName('CREDID').AsString;
   Try
      fDetRegG := TfDetRegG.Create(self);
      xSQL := 'SELECT CRECUOTA,CREFVEN,CREFPAG,FORPAGABR,CREDOCPAG,NVL(DEVOL,0) DEVOL, NVL(PAGOS,0) PAGOS,FREG, CCBCOID, BANCONOM,NROOPE,FOPERAC FROM ' + '(SELECT A.CRECUOTA,CREFVEN,A.CREFPAG,A.FORPAGABR,A.CREDOCPAG, ' + 'CASE WHEN FORPAGABR=''DEV'' THEN NVL(A.CREMTOCOB,0) END DEVOL,CASE WHEN FORPAGABR<>''DEV'' THEN NVL(A.CREMTOCOB,0) END PAGOS,' + 'A.FREG, A.CCBCOID, C.BANCONOM,A.NROOPE,A.FOPERAC ' + 'FROM CRE310 A,CRE302 B, TGE105 C WHERE A.ASOID=' + QuotedStr(xAsoId) + ' AND A.CREDID=' + QuotedStr(xCreDid) + ' AND A.CREESTID NOT IN (''13'', ''04'')  AND A.ASOID=B.ASOID AND A.CREDID=B.CREDID ' + ' AND A.CRECUOTA=B.CRECUOTA AND A.BANCOID = C.BANCOID(+) ) ORDER BY FREG DESC';
      DM1.cdsCEdu.Close;
      DM1.cdsCEdu.DataRequest(xSQL);
      DM1.cdsCEdu.Open;
      TNumericField(DM1.cdsCEdu.fieldbyname('PAGOS')).DisplayFormat := '###,##0.#0';
      TNumericField(DM1.cdsCEdu.fieldbyname('DEVOL')).DisplayFormat := '###,##0.#0';
      If DM1.cdsCEdu.RecordCount > 0 Then
         Begin
            xSql := 'SELECT CRECUOTA,TO_CHAR(CREFVEN,''DD/MM/YYYY'')CREFVEN,TO_CHAR(CREFPAG,''DD/MM/YYYY'')CREFPAG,FORPAGABR,CREDOCPAG, NVL(PAGOS,0) PAGOS,NVL(DEVOL,0) DEVOL,' + '       NVL(APLIC,0)APLIC,CCBCOID, BANCONOM,NROOPE,TO_CHAR(FOPERAC,''DD/MM/YYYY'')FOPERAC,TO_CHAR(FREG,''DD/MM/YYYY'')FREG,USUARIO, '
               + 'CASE WHEN TRIM(SUBSTR(F_MES(RCOBMES),1,3)||''-''||RCOBANO)=''-'' THEN '' '' ELSE TRIM(SUBSTR(F_MES(RCOBMES),1,3)||''-''||RCOBANO) END RCOBPER, '
               + 'CASE WHEN FORPAGABR=''APL'' THEN SUBSTR(ORICREDID,9,7) END ORICREDID,'
               + 'CASE WHEN FORPAGABR=''APL'' THEN ORICUO    END ORICUO '
               + 'FROM (SELECT A.CRECUOTA,CREFVEN,A.CREFPAG,A.FORPAGABR,A.CREDOCPAG,D.RCOBMES,D.RCOBANO,'
               + '             CASE WHEN FORPAGABR=''DEV'' THEN NVL(A.CREMTOCOB,0)  END DEVOL,'
               + '             CASE WHEN FORPAGABR=''APL'' THEN NVL(A.CREMTOCOB,0)  END APLIC,'
               + '             CASE WHEN FORPAGABR NOT IN (''DEV'',''APL'') THEN NVL(A.CREMTOCOB,0) END PAGOS,'
               + '             A.FREG, A.CCBCOID,C.BANCONOM,A.NROOPE, SUBSTR(CREOBS,17,15) ORICREDID,'
               + '             SUBSTR(CREOBS,33,3)ORICUO,A.FOPERAC,A.USUARIO '
               + '      FROM CRE310 A,CRE302 B, TGE105 C ,COB302 D '
               + '      WHERE A.ASOID=' + QuotedStr(xAsoId) + ' AND A.CREDID=' + QuotedStr(xCreDid)
               + '            AND A.CREESTID NOT IN (''13'', ''04'')  AND A.ASOID=B.ASOID AND A.CREDID=B.CREDID '
               + '            AND A.CRECUOTA=B.CRECUOTA AND A.BANCOID = C.BANCOID(+)  '
               + '            AND A.RCOBID=D.RCOBID(+) AND A.DETRCOBID=D.DETRCOBID(+) ) '
               + 'ORDER BY CRECUOTA,CREFVEN,FREG DESC,CREFPAG';
            DM1.cdsCViv.Close;
            DM1.cdsCViv.DataRequest(xSql);
            DM1.cdsCViv.Open;
            DM1.cdsCViv.IndexFieldNames := 'CRECUOTA;CREFVEN;FREG;CREFPAG';
            fDetRegG.Showmodal;
         End;
   Finally
      DM1.cdsCEdu.Close;
      fDetRegG.free;
   End;

End;

Procedure TfCronoPag.dtgPagosMouseUp(Sender: TObject; Button: TMouseButton;
   Shift: TShiftState; X, Y: Integer);
Var
   xCreCuota, xPerCob: String;
Begin
   xCreCuota := '';
   xPerCob := '';
   DtgPagos.ShowHint := False;
   If (DM1.cdsCuotas.fieldbyname('CREESTID').AsString = '14') Or (DM1.cdsCuotas.fieldbyname('CREESTID').AsString = '21') Or (DM1.cdsCuotas.fieldbyname('CREESTID').AsString = '23') Or (DM1.cdsCuotas.fieldbyname('CREESTID').AsString = '24') Or
      (DM1.cdsCuotas.fieldbyname('CREESTID').AsString = '26') Or (DM1.cdsCuotas.fieldbyname('CREESTID').AsString = '27') Then
      Begin
         xCreCuota := DM1.cdsCuotas.fieldbyname('CRECUOTA').AsString;
         xPerCob := DM1.cdsCuotas.fieldbyname('PERCOB').AsString;
         HintWindowClass := THintConFont;
         dtgPagos.ShowHint := False;
         dtgPagos.Hint := 'Cuota N° : ' + xCreCuota + ' Cobranza del ' + Copy(xPerCob, 1, 4) + '-' + Copy(xPerCob, 5, 2);
         dtgPagos.ShowHint := True;
         tPerCob.Enabled := True;
      End
   Else
      dtgPagos.ShowHint := False;

End;

Procedure TfCronoPag.tPerCobTimer(Sender: TObject);
Begin
   dtgPagos.ShowHint := False;
   tPerCob.Enabled := False;
End;

End.

