// Inicio Uso Estándares: 01/08/2011
// Unidad : Gestión de Cobranzas
// Formulario : fDetGestExt
// Fecha de Creación :
// Autor : Equipo de Sistemas
// Objetivo :  visualizar el progreso de las gestiones externas
// Actualizaciones:
// SPP_201401_GESCOB:_Importacion masiva interna y Mejoras del proceso de priorizacion
// SPP_201401_GESCOB: Se realiza el pase a producción a partir del HPC_201401_GESCOB
// HPC_201402_GESCOB: Información de Contactabilidad (Direcciones, teléfonos y correos electrónicos) (1.9)
// SPP_201402_GESCOB: Se realiza el pase a producción a partir del HPC_201402_GESCOB

Unit GES210b;

Interface

Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, Grids, Wwdbigrd, Wwdbgrid, ComCtrls, StdCtrls, wwdblook,
   Buttons, ExtCtrls, Db, ppDB, ppDBPipe, ppCtrls, ppBands, ppVar, ppPrnabl,
   ppClass, ppCache, ppComm, ppRelatv, ppProd, ppReport, ppEndUsr,
   ppParameter, ppRegion, ppStrtch, ppSubRpt;

Type
   TfDetGestExt = Class(TForm)
      GroupBox1: TGroupBox;
      Shape3: TShape;
      Shape2: TShape;
      Label12: TLabel;
      lblTipAso: TLabel;
      Label5: TLabel;
      Label7: TLabel;
      lblAsoNombres: TLabel;
      Label8: TLabel;
      lblDias: TLabel;
      Label9: TLabel;
      lblSaldo: TLabel;
      Label14: TLabel;
      Label15: TLabel;
      lblNroGest: TLabel;
      pnlItems: TPanel;
      Label6: TLabel;
      Label1: TLabel;
      Label2: TLabel;
      BitGrabar: TBitBtn;
      Panel3: TPanel;
      EdtDesGnt: TEdit;
      dblGestion: TwwDBLookupCombo;
      mDetObs: TMemo;
      mRefCab: TMemo;
      Panel1: TPanel;
      Shape1: TShape;
      Label11: TLabel;
      Label13: TLabel;
      DtpFecGst: TDateTimePicker;
      dtgDetGestion: TwwDBGrid;
      BitPrint: TBitBtn;
      BitSalir: TBitBtn;
      BitDatGes: TBitBtn;
      lblPend: TLabel;
      lblVenc: TLabel;
      Label16: TLabel;
      Label17: TLabel;
      BitSaldoHoy: TBitBtn;
      Shape4: TShape;
      Shape5: TShape;
      BitAcuPago: TBitBtn;
      Label10: TLabel;
      dblGestionDet: TwwDBLookupCombo;
      Panel2: TPanel;
      EdtDesGntDet: TEdit;
      BitPlanilla: TBitBtn;
      BitAtencion: TBitBtn;
      lblFecAcu: TLabel;
      DtpAcuPag: TDateTimePicker;
      DBFichaGes: TppDBPipeline;
      DBSitReclamo: TppDBPipeline;
      RpFichaGes: TppReport;
      ppHeaderBand41: TppHeaderBand;
      ppShape7: TppShape;
      ppShape6: TppShape;
      ppShape5: TppShape;
      ppShape4: TppShape;
      ppLabel858: TppLabel;
      ppLabel859: TppLabel;
      ppLabel860: TppLabel;
      ppLabel861: TppLabel;
      ppLabel862: TppLabel;
      ppSystemVariable83: TppSystemVariable;
      ppSystemVariable84: TppSystemVariable;
      ppSystemVariable85: TppSystemVariable;
      ppLblTit: TppLabel;
      ppLabel863: TppLabel;
      ppLabel864: TppLabel;
      ppLabel865: TppLabel;
      ppDBText339: TppDBText;
      ppLabel1: TppLabel;
      lblFecGes: TppLabel;
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
      ppLabel13: TppLabel;
      ppLabel14: TppLabel;
      ppLabel15: TppLabel;
      ppLabel16: TppLabel;
      ppLabel18: TppLabel;
      ppLabel19: TppLabel;
      ppLabel20: TppLabel;
      ppLabel21: TppLabel;
      ppLabel22: TppLabel;
      ppLabel23: TppLabel;
      ppLabel24: TppLabel;
      ppLabel25: TppLabel;
      ppLabel26: TppLabel;
      pplblSaltot: TppLabel;
      pplblSalPen: TppLabel;
      pplblSalVen: TppLabel;
      ppLabel29: TppLabel;
      ppLabel30: TppLabel;
      ppLabel31: TppLabel;
      pplblCodMod: TppLabel;
      pplblNomGen: TppLabel;
      ppLblDni: TppLabel;
      ppLblOriOto: TppLabel;
      ppLblAsodir: TppLabel;
      ppLblTelefono: TppLabel;
      ppLblTipAso: TppLabel;
      ppLblCtaAho: TppLabel;
      ppLblUses: TppLabel;
      ppLabel27: TppLabel;
      ppLabel28: TppLabel;
      pplDpto: TppLabel;
      ppLabel33: TppLabel;
      ppLabel34: TppLabel;
      pplProv: TppLabel;
      ppLabel32: TppLabel;
      ppLabel36: TppLabel;
      pplDist: TppLabel;
      ppDetailBand44: TppDetailBand;
      ppShape8: TppShape;
      ppShape3: TppShape;
      ppShape2: TppShape;
      ppShape1: TppShape;
      ppDBText340: TppDBText;
      ppDBText342: TppDBText;
      ppDBText343: TppDBText;
      ppDBText1: TppDBText;
      ppDBText2: TppDBText;
      ppFooterBand36: TppFooterBand;
      ppSummaryBand41: TppSummaryBand;
      ppSubReport1: TppSubReport;
      ppChildReport1: TppChildReport;
      ppTitleBand1: TppTitleBand;
      ppShape10: TppShape;
      ppLabel17: TppLabel;
      ppDetailBand1: TppDetailBand;
      ppShape9: TppShape;
      ppDBText3: TppDBText;
      ppDBText4: TppDBText;
      ppDBText5: TppDBText;
      ppDBText6: TppDBText;
      ppDBText7: TppDBText;
      ppLine1: TppLine;
      ppLine2: TppLine;
      ppLine3: TppLine;
      ppSummaryBand1: TppSummaryBand;
      ppRegion1: TppRegion;
      ppLblUser: TppLabel;
      ppParameterList1: TppParameterList;
      PPD1: TppDesigner;
      Procedure BitSalirClick(Sender: TObject);
      Procedure FormActivate(Sender: TObject);
      Procedure dblGestionChange(Sender: TObject);
      Procedure BitGrabarClick(Sender: TObject);
      Procedure BitDatGesClick(Sender: TObject);
      Procedure BitSaldoHoyClick(Sender: TObject);
      Procedure BitAcuPagoClick(Sender: TObject);
      Procedure BitPrintClick(Sender: TObject);
      Procedure EdtDesGntChange(Sender: TObject);
      Procedure dblGestionDetChange(Sender: TObject);
      Procedure dtgDetGestionDblClick(Sender: TObject);
      Procedure BitPlanillaClick(Sender: TObject);
      Procedure BitAtencionClick(Sender: TObject);
      Procedure FormClose(Sender: TObject; Var Action: TCloseAction);
   Private
    { Private declarations }
      Function GnrNroGest(): String;
      Function VrfNueGes(xAsoId, xNroGest, xAnoGest: String): String;
   Public
    { Public declarations }
      Function OrdenGestion(xAsoid, xPeriodo, xNroGest, xAnoGest: String): String;
   End;

Var
   fDetGestExt: TfDetGestExt;

Implementation

Uses GESDM1, GES103, GES210a, GES210, GES203c, GES203g, GES203i, GES206g,
   GES203o, GES001;

{$R *.dfm}

Procedure TfDetGestExt.BitSalirClick(Sender: TObject);
Begin
   Close;
End;

Procedure TfDetGestExt.FormActivate(Sender: TObject);
Var
   xSQL, xAsoTipId, xAsoId, xNroGest, xAnoGest: String;
Begin
   xAsoId := cdsActivo.fieldByname('ASOID').AsString;

   mRefCab.Text := DM1.VarRefencia;
   mDetObs.Text := DM1.VarGestion;

   xSQL := 'SELECT IDGTN,DESCRIPCION FROM GES_REF_SEG';
   DM1.cdsTransacciones.Close;
   DM1.cdsTransacciones.DataRequest(xSQL);
   DM1.cdsTransacciones.Open;
   DtpFecGst.Date := DM1.FechaSys;
   //lblCodMod.Caption := DM1.cdsMovCre.fieldByname('ASOCODMOD').AsString;
   lblAsoNombres.Caption := cdsActivo.fieldByname('ASOAPENOM').AsString;
   lblDias.Caption := cdsActivo.fieldByname('DIASTRANS').AsString;
   //lblCalificacion.Caption := DM1.cdsMovCre.fieldByname('CFCDES_F').AsString;
   xNroGest := DM1.cdsCambios.fieldByname('NROGEST').AsString;
   xAnoGest := DM1.cdsCambios.fieldByname('ANOGEST').AsString;

   If DM1.CrgDescrip('IDENTEXT=' + QuotedStr(Trim(DM1.cdsQry5.FieldByName('USERID').AsString)), 'GES_TIP_USU_EXT', 'TIPACT') = '01' Then dblGestion.Text := '01';
   If DM1.CrgDescrip('IDENTEXT=' + QuotedStr(Trim(DM1.cdsQry5.FieldByName('USERID').AsString)), 'GES_TIP_USU_EXT', 'TIPACT') = '02' Then dblGestion.Text := '03';

   If VrfNueGes(xAsoId, xNroGest, xAnoGest) = 'N' Then
      Begin
         pnlItems.Enabled := False;
      End;

   lblSaldo.Caption := fGesIndExt.lblSaldo.Caption;
   lblVenc.Caption := fGesIndExt.lblVenc.Caption;
   lblPend.Caption := fGesIndExt.lblPend.Caption;

   xAsoTipId := DM1.CrgDescrip('ASOID=' + QuotedStr(Trim(cdsActivo.fieldByname('ASOID').AsString)), 'APO201', 'ASOTIPID');
   lblTipAso.Caption := xAsoTipId + '-' + DM1.CrgDescrip('ASOTIPID=' + QuotedStr(Trim(xAsoTipId)), 'APO107', 'ASOTIPDES');
   If DM1.xCnd = 'MDF' Then
      fGesIndExt.MstDetalles(DM1.cdsCambios.fieldByname('ASOID').AsString, DM1.cdsCambios.fieldByname('PERIODO').AsString, DM1.cdsCambios.fieldByname('ANOGEST').AsString, DM1.cdsCambios.fieldByname('NROGEST').AsString);

End;

Procedure TfDetGestExt.dblGestionChange(Sender: TObject);
Begin
   If DM1.cdsTransacciones.Locate('IDGTN', VarArrayof([dblGestion.Text]), []) Then
      Begin
         EdtDesGnt.Text := DM1.cdsTransacciones.fieldbyname('DESCRIPCION').AsString;
      End
   Else
      Begin
         If Length(dblGestion.Text) <> 2 Then
            Begin
               Beep;
               EdtDesGnt.Text := '';
               dblGestionDet.Enabled := False;
               BitAcuPago.Visible := False;
            End;
      End;

End;

Procedure TfDetGestExt.BitGrabarClick(Sender: TObject);
Var
   xSQL, xAsoId, xNroGest, xPeriodo: String;
   xOrden: String;
Begin

   If (Length(Trim(EdtDesGnt.Text)) = 0) Then
      Begin
         MessageDlg(' <<<  A T E N C I O N  >>>   El Tipo de Gestión Es Un Dato Obligatorio..!!!  ', mtError, [mbOk], 0);
         Exit;
      End;

   If (Length(Trim(EdtDesGntDet.Text)) = 0) Then
      Begin
         MessageDlg(' <<<  A T E N C I O N  >>>   El Resultado de Gestión Es Un Dato Obligatorio..!!!  ', mtError, [mbOk], 0);
         Exit;
      End;

   If (Length(Trim(mDetObs.Text)) = 0) Then
      Begin
         MessageDlg(' <<<  A T E N C I O N  >>>   La Gestión Realizada Es Un Dato Obligatorio..!!!  ', mtError, [mbOk], 0);
         Exit;
      End;

   If DtpAcuPag.Visible Then
      Begin
         If Copy(DateTostr(DtpAcuPag.Date), 7, 4) + Copy(DateTostr(DtpAcuPag.Date), 4, 2) + Copy(DateTostr(DtpAcuPag.Date), 1, 2) <= Copy(DateToStr(DM1.FechaSys), 7, 4) + Copy(DateToStr(DM1.FechaSys), 4, 2) + Copy(DateToStr(DM1.FechaSys), 1, 2) Then
            Begin
               MessageDlg(' <<<  A T E N C I O N  >>>   La Fecha de Acuerdo de Pago Debe Ser Mayor Al Dia Actual.!!!  ', mtError, [mbOk], 0);
               Exit;
            End;
      End;

   xAsoId := cdsActivo.fieldByname('ASOID').AsString;
   xPeriodo := cdsActivo.fieldByname('PERIODO').AsString;
   If DM1.xCnd = 'NUE' Then
      Begin
         xNroGest := GnrNroGest;
         xSQL := 'INSERT INTO GES_INI_SEG(PERIODO,ASOID,NROGEST,FECHA,USUARIO,MASDAT,ANOGEST) VALUES (' + QuotedStr(cdsActivo.fieldByname('PERIODO').AsString) +
            ',' + QuotedStr(xAsoId) + ',' + QuotedStr(xNroGest) + ',' + QuotedStr(DateToStr(DtpFecGst.Date)) + ',' + QuotedStr(DM1.wUsuario) + ',' + QuotedStr(mRefCab.Text) + ',' + QuotedStr(Copy(DateToStr(DtpFecGst.Date), 7, 4)) + ')';
         DM1.DCOM1.AppServer.EjecutaSql(xSQL);
         fGestExt.MstCabecera(xAsoId, cdsActivo.fieldByname('PERIODO').AsString);
      End;
   If DM1.xCnd = 'MDF' Then
      Begin
         xNroGest := DM1.cdsCambios.fieldByname('NROGEST').AsString;
         xSQL := 'UPDATE GES_INI_SEG SET MASDAT=' + QuotedStr(mRefCab.Text) + ' WHERE ASOID=' + QuotedStr(xAsoId) + ' AND NROGEST=' + QuotedStr(DM1.cdsCambios.fieldByname('NROGEST').AsString) + ' AND ANOGEST=' + QuotedStr(DM1.cdsCambios.fieldByname('ANOGEST').AsString) + ' AND PERIODO=' + QuotedStr(DM1.cdsCambios.fieldByname('PERIODO').AsString);
         DM1.DCOM1.AppServer.EjecutaSql(xSQL);
      End;

   xSQL := 'INSERT INTO GES_MAS_REF(ASOID,USUARIO,MASDAT,HREG) VALUES (' + QuotedStr(xAsoId) + ',' + QuotedStr(DM1.wUsuario) + ',' + QuotedStr(mRefCab.Text) + ',SYSDATE)';
   DM1.DCOM1.AppServer.EjecutaSql(xSQL);

   xOrden := OrdenGestion(xAsoId, cdsActivo.fieldByname('PERIODO').AsString, xNroGest, Copy(DateToStr(DtpFecGst.Date), 7, 4));
   If DtpAcuPag.Visible Then
      xSQL := 'INSERT INTO GES_COB_SEG(PERIODO,ASOID,NROGEST,FECHA,HORA,USUARIO,IDGESTION,DETOBS,ANOGEST,ORDEN,IDGESTIONDET,FECACU) VALUES (' + QuotedStr(cdsActivo.fieldByname('PERIODO').AsString) + ',' + QuotedStr(xAsoId) +
         ',' + QuotedStr(xNroGest) + ',' + QuotedStr(DateToStr(DM1.FechaSys)) + ',' + QuotedStr(DM1.HoraSys) + ',' + QuotedStr(DM1.wUsuario) + ',' + QuotedStr(dblGestion.Text) + ',' + QuotedStr(mDetObs.Text) + ',' + QuotedStr(Copy(DateToStr(DtpFecGst.Date), 7, 4)) + ',' + QuotedStr(xOrden) + ',' + QuotedStr(dblGestionDet.Text) + ',' + QuotedStr(DateToStr(DtpAcuPag.Date)) + ')'
   Else
      xSQL := 'INSERT INTO GES_COB_SEG(PERIODO,ASOID,NROGEST,FECHA,HORA,USUARIO,IDGESTION,DETOBS,ANOGEST,ORDEN,IDGESTIONDET) VALUES (' + QuotedStr(cdsActivo.fieldByname('PERIODO').AsString) + ',' + QuotedStr(xAsoId) +
         ',' + QuotedStr(xNroGest) + ',' + QuotedStr(DateToStr(DM1.FechaSys)) + ',' + QuotedStr(DM1.HoraSys) + ',' + QuotedStr(DM1.wUsuario) + ',' + QuotedStr(dblGestion.Text) + ',' + QuotedStr(mDetObs.Text) + ',' + QuotedStr(Copy(DateToStr(DtpFecGst.Date), 7, 4)) + ',' + QuotedStr(xOrden) + ',' + QuotedStr(dblGestionDet.Text) + ')';

   DM1.DCOM1.AppServer.EjecutaSql(xSQL);

   If dblGestion.Text = '01' Then xSQL := 'UPDATE GES_COB_IND SET ESTGES=''02'',ESTDES=''GESTIONADA'' WHERE ASOID=' + QuotedStr(xAsoId);
   If dblGestion.Text = '03' Then xSQL := 'UPDATE GES_COB_DOM SET ESTGES=''02'',ESTDES=''GESTIONADA'' WHERE ASOID=' + QuotedStr(xAsoId);
   DM1.DCOM1.AppServer.EjecutaSql(xSQL);

   fGesIndExt.MstDetalles(xAsoId, DM1.cdsCambios.fieldByname('PERIODO').AsString, DM1.cdsCambios.fieldByname('ANOGEST').AsString, DM1.cdsCambios.fieldByname('NROGEST').AsString);
   If Trim(dblGestion.Text) = '99' Then
      Begin
         xNroGest := DM1.cdsCambios.fieldByname('NROGEST').AsString;
         xSQL := 'UPDATE GES_INI_SEG SET ESTGES=''99'' WHERE ASOID=' + QuotedStr(xAsoId) + ' AND NROGEST=' + QuotedStr(DM1.cdsCambios.fieldByname('NROGEST').AsString) + ' AND ANOGEST=' + QuotedStr(DM1.cdsCambios.fieldByname('ANOGEST').AsString) + ' AND PERIODO=' + QuotedStr(DM1.cdsCambios.fieldByname('PERIODO').AsString);
         DM1.DCOM1.AppServer.EjecutaSql(xSQL);
         fGestExt.CerraGestion(xAsoId);
         pnlItems.Enabled := False;
      End;
   dblGestion.Text := '';
   mDetObs.Text := '';
   mRefCab.Text := '';
   fGestExt.CargaSaldo(xAsoid, xPeriodo);
   If fGestExt.SaldoFinal(xAsoId) = 0 Then
      Begin
         fGestExt.CerraGestion(xAsoId);
      End;
   MessageDlg(' <<<  GESTION SE GRABO CON EXITO  >>> !!!  ', mtInformation, [mbOk], 0);
   If DM1.xCnd = 'NUE' Then Close;

End;

// INICIO : SPP_201401_GESCOB
Function TfDetGestExt.GnrNroGest: String;
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

Function TfDetGestExt.OrdenGestion(xAsoid, xPeriodo, xNroGest, xAnoGest: String): String;
Var
   xSQL: String;
Begin
   xSQL := 'SELECT COUNT(*) REGISTROS FROM GES_COB_SEG WHERE ASOID=' + QuotedStr(xAsoId) + ' AND PERIODO=' + QuotedStr(xPeriodo) + ' ' +
      'AND NROGEST=' + QuotedStr(xNroGest) + '  AND ANOGEST=' + QuotedStr(xAnoGest);
   DM1.cdsLiquid.Close;
   DM1.cdsLiquid.DataRequest(xSQL);
   DM1.cdsLiquid.Open;
   If DM1.cdsLiquid.RecordCount > 0 Then
      Result := Format('%.3d', [(DM1.cdsLiquid.FieldByName('REGISTROS').AsInteger + 1)])
   Else
      Result := '001';

   DM1.cdsLiquid.Close;
End;

// INICIO : SPP_201402_GESCOB
Procedure TfDetGestExt.BitDatGesClick(Sender: TObject);
Var
   xAsoId, xSQL: String;
Begin
(*
   xAsoId := DM1.cdsMovCre.fieldByname('ASOID').AsString;

   xSQL := 'SELECT ASOID FROM GES_TEL_ASO WHERE ASOID=' + QuotedStr(xAsoId);
   If DM1.CountReg(xSQL) = 0 Then
      Begin
         xSQL := 'INSERT INTO GES_TEL_ASO ' +
            'SELECT ''01'',ASOTELF1||'' - ''||ASOTELF2,''N'',ASOID,' + QuotedStr(DM1.wUsuario) + ', ' +
            'SYSDATE,''INSERTADO AUTOMATICAMENTE'',NULL,NULL FROM APO201 WHERE ASOID=' + QuotedStr(xAsoId);
         DM1.DCOM1.AppServer.EjecutaSql(xSQL);
      End;

   xSQL := 'SELECT ASOID FROM GES_DOM_ASO WHERE ASOID=' + QuotedStr(xAsoId);
   If DM1.CountReg(xSQL) = 0 Then
      Begin
         xSQL := 'INSERT INTO GES_DOM_ASO ' +
            'SELECT ASODIR,ZIPID,''N'',ASOID,' + QuotedStr(DM1.wUsuario) + ',SYSDATE,''INSERTADO AUTOMATICAMENTE'',NULL,NULL FROM APO201 ' +
            'WHERE ASOID=' + QuotedStr(xAsoId);
         DM1.DCOM1.AppServer.EjecutaSql(xSQL);
      End;

   fMasDatos := Nil;
   fMasDatos := tfMasDatos.Create(Self);
   xSQL := 'SELECT IDTIPTEL,B.DESCRIP,NROTELF,ACTIVO,ASOID,USUARIO,HREG,OBSTEL FROM GES_TEL_ASO A,(SELECT ID,DESCRIP FROM  ' +
      '(SELECT ''01'' ID,''FIJO'' DESCRIP FROM DUAL UNION SELECT ''02'' ID,''CELULAR'' DESCRIP FROM DUAL UNION SELECT ''03'' ID,''FAX'' DESCRIP FROM DUAL)) B ' +
      ' WHERE ASOID=' + QuotedStr(xAsoId) + ' AND A.IDTIPTEL=B.ID AND ACTIVO=''S'' ORDER BY HREG DESC';
   DM1.cdsDocPago.Close;
   DM1.cdsDocPago.DataRequest(xSQL);
   DM1.cdsDocPago.Open;

   xSQL := 'SELECT ACTIVO,ASODIR,USUARIO,HREG,UBIGEO,ASOID,OBSTEL FROM GES_DOM_ASO WHERE ASOID=' + QuotedStr(xAsoId) + ' AND ACTIVO=''S'' ORDER BY HREG DESC';
   DM1.cdsMGrupo.Close;
   DM1.cdsMGrupo.DataRequest(xSQL);
   DM1.cdsMGrupo.Open;

   xSQL := 'SELECT ASOID,USUARIO,MASDAT,HREG FROM GES_MAS_REF A,USERTABLE B WHERE A.USUARIO=B.USERID AND ASOID=' + QuotedStr(DM1.cdsMovCre.FieldByName('ASOID').AsString) + ' ORDER BY HREG DESC';
   DM1.cdsDSocioE.Close;
   DM1.cdsDSocioE.DataRequest(xSQL);
   DM1.cdsDSocioE.Open;

   If StrToInt(Copy(DM1.NivelUsuario(DM1.wUsuario), 2, 1)) <> 1 Then
      Begin
         fMasDatos.BitActivar.Enabled := False;
         fMasDatos.BitActDir.Enabled := False;
      End;
   fMasDatos.Showmodal;
   fMasDatos.Free;
*)
End;
// FIN : SPP_201402_GESCOB

Procedure TfDetGestExt.BitSaldoHoyClick(Sender: TObject);
Var
   xAsoId, xfecCalculo, xSQL: String;
Begin
   xAsoId := DM1.cdsMovCre.fieldByname('ASOID').AsString;
   xfecCalculo := Trim(Copy(DateToStr(DM1.FechaSys), 7, 4) + Copy(DateToStr(DM1.FechaSys), 4, 2));
   xSQL := 'SELECT NUMPRE||'' - ''||TIPCREDES||'' - ''||ANOPRE NUMERO,COUNT(*) CUOTAS,SUM(NVL(ABONO,0)) SALDO,MAX(PACTADA) PACTADA FROM  (SELECT SUBSTR(A.CREDID,11,7) AS NUMPRE,SUBSTR(A.CREDID,3,4) AS ANOPRE, ' +
      'SUBSTR(A.CREDID,7,2) AS TIPPRE,SUBSTR(A.CREDID,1,2) AS ORIOTO, ' +
      'A.CRECUOTA,CREFVEN,C.CRECUOTA PACTADA,  ' +
      'CASE WHEN CREANO||CREMES>' + QuotedStr(Trim(xfecCalculo)) + ' AND CREFVEN=CREFVENINI THEN (NVL(CREAMORT,0)+NVL(CREFLAT,0))-NVL(CREMTOCOB,0) ' +
      'ELSE NVL(CREMTO,0)-NVL(CREMTOCOB,0)  END AS ABONO, ' +
      'A.CREESTADO,C.TIPCREDES FROM CRE302 A,CRE110 B,CRE301 C ' +
      'WHERE A.ASOID=' + QuotedStr(Trim(xAsoId)) + ' AND A.ASOID=C.ASOID AND A.CREDID=C.CREDID AND A.TIPCREID=B.TIPCREID AND ' +
      'A.CREESTID IN (''02'',''11'',''27'') ' +
      'ORDER BY A.CREDID,A.CRECUOTA ) GROUP BY NUMPRE||'' - ''||TIPCREDES||'' - ''||ANOPRE ';
   DM1.cdsAbonoCuotas.Close;
   DM1.cdsAbonoCuotas.DataRequest(xSQL);
   DM1.cdsAbonoCuotas.Open;
   TNumericField(DM1.cdsAbonoCuotas.fieldbyname('CUOTAS')).DisplayFormat := '###,##0';
   TNumericField(DM1.cdsAbonoCuotas.fieldbyname('SALDO')).DisplayFormat := '###,###.#0';
   Try
      fSalPagAct := TfSalPagAct.create(Self);
      fGestExt.lblGestor.Caption := 'Gestor(a) : ' + Trim(DM1.CrgDescrip('USERID=' + QuotedStr(Trim(DM1.wUsuario)), 'TGE006', 'USERNOM'));
      fSalPagAct.ShowModal;
   Finally
      fSalPagAct.Free;
   End;

End;

Procedure TfDetGestExt.BitAcuPagoClick(Sender: TObject);
Begin
   Try
      fProPago := TfProPago.create(Self);
      fProPago.ShowModal;
   Finally
      fProPago.Free;
   End;

End;

Procedure TfDetGestExt.BitPrintClick(Sender: TObject);
Var
   xSQL, sTelfAct, sZIP: String;
   sDpto, sProv, sDist: String;
Begin
   xSQL := 'SELECT CODATE,DESCRIPCION,ASOID,ASOAPENOM,ASODNI,OBSATE,A.USUARIO,HREG,FREG ' +
      'FROM COB_ATE_ASO A,GES_REF_SEG_DET B ' +
      'WHERE ASOID=' + QuotedStr(DM1.cdsMovRec.FieldByName('ASOID').AsString) +
      ' AND A.CODATE=B.IDGTNDET(+) AND B.IDGTN=''02'' ORDER BY HREG DESC ';
   DM1.cdsSitReclamo.Close;
   DM1.cdsSitReclamo.DataRequest(xSQL);
   DM1.cdsSitReclamo.Open;

   xSQL := 'ASOID=' + QuotedStr(DM1.cdsMovRec.FieldByName('ASOID').AsString) + ' and activo=''S''';
   sTelfAct := DM1.DisplayDescrip('prvSQL', 'GES_TEL_ASO', 'nrotelf', xSQL, 'nrotelf');

   ppLblTit.Caption := 'FICHA DE GESTION AL : ' + DateToStr(DM1.FechaSys);
   pplblNomGen.Caption := fGesIndExt.lblAsoNombres.Caption;
   ppLblDni.Caption := fGesIndExt.lblDni.Caption;
   ppLblOriOto.Caption := fGesIndExt.lblUniPro.Caption;

   sZIP := DM1.cdsMovCre.FieldByName('ZIPID').AsString;

   xSQL := 'SELECT ASODIR,USUARIO,UBIGEO,ASOID,OBSTEL FROM GES_DOM_ASO WHERE ASOID=' + QuotedStr(DM1.cdsMovRec.FieldByName('ASOID').AsString) + ' AND ACTIVO=''S'' ORDER BY HREG DESC';
   DM1.cdsMGrupo.Close;
   DM1.cdsMGrupo.DataRequest(xSQL);
   DM1.cdsMGrupo.Open;

   If DM1.cdsMGrupo.recordcount > 0 Then
      Begin
         ppLblAsodir.Caption := DM1.cdsMGrupo.FieldByName('ASODIR').AsString;
         sDpto := Copy(DM1.cdsMGrupo.FieldByname('UBIGEO').AsString, 1, 2);
         sProv := Copy(DM1.cdsMGrupo.FieldByname('UBIGEO').AsString, 3, 2);
         sDist := Copy(DM1.cdsMGrupo.FieldByname('UBIGEO').AsString, 5, 2);
      End
   Else
      Begin
         ppLblAsodir.Caption := fGesIndExt.lblDireccion.Caption;
         sDpto := Copy(sZIP, 1, 2);
         sProv := Copy(sZIP, 3, 2);
         sDist := Copy(sZIP, 5, 2);
      End;

   If sTelfAct <> '' Then
      ppLblTelefono.Caption := sTelfAct
   Else
      ppLblTelefono.Caption := fGesIndExt.lblTelefono.Caption;

   sSQL := 'Select DPTODES, CIUDDES, ZIPDES '
      + 'from APO158 A, TGE121 B, TGE122 C '
      + 'where A.DPTOID=''' + sDpto + ''' '
      + ' AND B.DPTOID=''' + sDpto + ''' AND B.CIUDID=''' + sProv + ''' '
      + ' AND C.DPTOID=''' + sDpto + ''' AND C.CIUDID=''' + sProv + ''' AND C.ZIPID=''' + sDist + '''';

   DM1.cdsQry10.Close;
   DM1.cdsQry10.DataRequest(sSQL);
   DM1.cdsQry10.Open;

   pplDpto.Caption := DM1.cdsQry10.FieldByname('DPTODES').AsString;
   pplProv.Caption := DM1.cdsQry10.FieldByname('CIUDDES').AsString;
   pplDist.Caption := DM1.cdsQry10.FieldByname('ZIPDES').AsString;

   ppLblTipAso.Caption := fGesIndExt.lblTipAso.Caption;
   ppLblCtaAho.Caption := fGesIndExt.lblCuenta.Caption;
   ppLblUses.Caption := fGesIndExt.lblUses.Caption;
   lblFecGes.Caption := DM1.cdsCambios.FieldByName('FECHA').AsString;
   pplblSalVen.Caption := lblVenc.Caption;
   pplblSalPen.Caption := lblPend.Caption;
   pplblSalTot.Caption := lblSaldo.Caption;
   ppLblUser.Caption := 'Emitido Por :  ' + Trim(DM1.CrgDescrip('USERID=' + QuotedStr(Trim(DM1.wUsuario)), 'TGE006', 'USERNOM'));
   RpFichaGes.Print;
   PPD1.ShowModal;
  //RpFichaGes.Cancel;

   Exit;
{
  ppLblTit.Caption:= 'FICHA DE GESTION AL : '+DateToStr(DM1.FechaSys);
//  pplblCodMod.Caption:=fGesIndExt.lblCodMod.Caption;
  pplblNomGen.Caption:= fGesIndExt.lblAsoNombres.Caption;
  ppLblDni.Caption:= fGesIndExt.lblDni.Caption;
  ppLblOriOto.Caption:= fGesIndExt.lblUniPro.Caption;

  ppLblAsodir.Caption:= fGesIndExt.lblDireccion.Caption;
  ppLblTelefono.Caption:= fGesIndExt.lblTelefono.Caption;
  ppLblTipAso.Caption := fGesIndExt.lblTipAso.Caption;
  ppLblCtaAho.Caption := fGesIndExt.lblCuenta.Caption;
  ppLblUses.Caption := fGesIndExt.lblUses.Caption;
  lblFecGes.Caption:= DM1.cdsCambios.FieldByName('FECHA').AsString;

  pplblSalVen.Caption:= lblVenc.Caption;
  pplblSalPen.Caption:= lblPend.Caption;
  pplblSalTot.Caption:= lblSaldo.Caption;
  ppLblUser.Caption := 'Emitido Por :  '+Trim(DM1.CrgDescrip('USERID='+QuotedStr(Trim(DM1.wUsuario)),'TGE006','USERNOM'));
  RpFichaGes.Print;
  RpFichaGes.Cancel;}
End;

Function TfDetGestExt.VrfNueGes(xAsoId, xNroGest, xAnoGest: String): String;
Var
   xSQL, xEstGes: String;
Begin
   xEstGes := 'S';
   xSQL := 'SELECT ASOID,NROGEST,ANOGEST,IDGESTION FROM GES_COB_SEG ' +
      'WHERE ASOID=' + QuotedStr(xAsoId) + ' AND NROGEST=' + QuotedStr(xNroGest) + ' AND ANOGEST=' + QuotedStr(xAnoGest) + ' AND IDGESTION=''99'' ';
   DM1.cdsDLabo.Close;
   DM1.cdsDLabo.DataRequest(xSQL);
   DM1.cdsDLabo.Open;
   If DM1.cdsDLabo.RecordCount > 0 Then
      Begin
         xEstGes := 'N';
      End;
   DM1.cdsDLabo.Close;
   Result := xEstGes;

End;

Procedure TfDetGestExt.EdtDesGntChange(Sender: TObject);
Var
   xSQL: String;
Begin
   xSQL := 'SELECT IDGTN,IDGTNDET,DESCRIPCION FROM GES_REF_SEG_DET WHERE IDGTN=' + QuotedStr(dblGestion.Text);
   DM1.cdsTipCreA.Close;
   DM1.cdsTipCreA.DataRequest(xSQL);
   DM1.cdsTipCreA.Open;
   If DM1.cdsTipCreA.RecordCount > 0 Then dblGestionDet.Enabled := True;
End;

Procedure TfDetGestExt.dblGestionDetChange(Sender: TObject);
Begin
   If DM1.cdsTipCreA.Locate('IDGTNDET', VarArrayof([dblGestionDet.Text]), []) Then
      Begin
         EdtDesGntDet.Text := DM1.cdsTipCreA.fieldbyname('DESCRIPCION').AsString;
         If Trim(dblGestion.Text) = '02' Then
            Begin
               If Trim(dblGestionDet.Text) = '204' Then
                  BitAcuPago.Visible := True
               Else
                  BitAcuPago.Visible := False;

            End;
         If Trim(dblGestion.Text) = '01' Then
            Begin
               If Trim(dblGestionDet.Text) = '110' Then
                  Begin
                     DtpAcuPag.Date := DM1.FechaSys;
                     lblFecAcu.Visible := True;
                     DtpAcuPag.Visible := True;
                  End
               Else
                  Begin
                     lblFecAcu.Visible := False;
                     DtpAcuPag.Visible := False;
                  End;
            End;
      End
   Else
      Begin
         If Length(dblGestionDet.Text) <> 2 Then
            Begin
               Beep;
               EdtDesGntDet.Text := '';
               BitAcuPago.Visible := False;
            End;
      End;

End;

Procedure TfDetGestExt.dtgDetGestionDblClick(Sender: TObject);
Begin

   If Length(Trim(DM1.cdsDetRegCob.FieldByName('FECACU').AsString)) > 0 Then
      MessageDlg('Gestión Realizada : ' + DM1.cdsDetRegCob.FieldByName('DETOBS').AsString + #13 + 'Fecha de Acuerdo  : ' + DM1.cdsDetRegCob.FieldByName('FECACU').AsString, mtInformation, [mbOk], 0)
   Else
      MessageDlg(DM1.cdsDetRegCob.FieldByName('DETOBS').AsString, mtInformation, [mbOk], 0);
End;

Procedure TfDetGestExt.BitPlanillaClick(Sender: TObject);
Var
   xAsoId, xSQL: String;
Begin
   Try
      fInfPlanilla := TfInfPlanilla.create(Self);
      xAsoId := DM1.cdsMovCre.FieldByName('ASOID').AsString;
      xSQL := 'SELECT ASOID,PERIODO,MESDESC||'' - ''||SUBSTR(PERIODO,1,4) PERCOB,MONCUOENV,MONCUOAPL, ' +
         'MONCUOENV-MONCUOAPL SALCUO,TIPOCARGA FROM GES_ENV_PLA A,TGE181 B WHERE ASOID=' + QuotedStr(xAsoId) + ' AND SUBSTR(A.PERIODO,5,2)=B.MESIDR ' +
         'ORDER BY PERIODO DESC';
      DM1.cdsCtasBco.Close;
      DM1.cdsCtasBco.DataRequest(xSQL);
      DM1.cdsCtasBco.Open;
      TNumericField(DM1.cdsCtasBco.FieldByName('MONCUOENV')).DisplayFormat := '###,###,##0.#0';
      TNumericField(DM1.cdsCtasBco.FieldByName('MONCUOAPL')).DisplayFormat := '###,###,##0.#0';
      TNumericField(DM1.cdsCtasBco.FieldByName('SALCUO')).DisplayFormat := '###,###,##0.#0';
      fInfPlanilla.ShowModal;
   Finally
      fInfPlanilla.Free;
   End;
End;

Procedure TfDetGestExt.BitAtencionClick(Sender: TObject);
Var
   xSQL: String;
Begin
   xSQL := 'SELECT CODATE,DESCRIPCION,ASOID,ASOAPENOM,ASODNI,OBSATE,USUARIO,HREG,FREG ' +
      'FROM COB_ATE_ASO A,GES_REF_SEG_DET B WHERE ASOID=' + QuotedStr(DM1.cdsMovRec.FieldByName('ASOID').AsString) + ' AND A.CODATE=B.IDGTNDET(+) AND B.IDGTN=''02'' ORDER BY HREG DESC ';
   DM1.cdsSitReclamo.Close;
   DM1.cdsSitReclamo.DataRequest(xSQL);
   DM1.cdsSitReclamo.Open;
   If DM1.cdsSitReclamo.RecordCount > 0 Then
      Begin
         fAtenVen := Nil;
         fAtenVen := TfAtenVen.create(self);
         fAtenVen.Showmodal;
         fAtenVen.free;
      End;
   DM1.cdsSitReclamo.Close;
End;

Procedure TfDetGestExt.FormClose(Sender: TObject; Var Action: TCloseAction);
Begin
   DM1.VarRefencia := mRefCab.Text;
   DM1.VarGestion := mDetObs.Text;
End;

End.
