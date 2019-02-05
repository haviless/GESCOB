Unit GES210a;

Interface

Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, Buttons, ExtCtrls, Wwdbigrd, Grids, Wwdbgrid, ComCtrls, Db,
   fcButton, fcImgBtn, fcShapeBtn;

Type
   TfGesIndExt = Class(TForm)
      GroupBox1: TGroupBox;
      Label4: TLabel;
      Label5: TLabel;
      lblAsoNombres: TLabel;
      Label9: TLabel;
      Label11: TLabel;
      lblDni: TLabel;
      Label12: TLabel;
      Label13: TLabel;
      lblTipAso: TLabel;
      Label14: TLabel;
      Label15: TLabel;
      lblCuenta: TLabel;
      Label16: TLabel;
      Label17: TLabel;
      lblUses: TLabel;
      Label18: TLabel;
      Label19: TLabel;
      lblUniPro: TLabel;
      Label20: TLabel;
      Label21: TLabel;
      lblDireccion: TLabel;
      Label23: TLabel;
      Label24: TLabel;
      lblTelefono: TLabel;
      BitSalir: TBitBtn;
      PageControl1: TPageControl;
      TabSheet1: TTabSheet;
      TabSheet2: TTabSheet;
      dtgDetalle: TwwDBGrid;
      dtgCabGestion: TwwDBGrid;
      dtgDetAsoCarIButton: TwwIButton;
      lblDias: TLabel;
      SpBorde: TShape;
      lblVenc: TLabel;
      lblPend: TLabel;
      lblSaldo: TLabel;
      Label1: TLabel;
      Label6: TLabel;
      Label7: TLabel;
      Shape1: TShape;
      Shape2: TShape;
      Shape3: TShape;
      Panel1: TPanel;
      Label10: TLabel;
      Panel2: TPanel;
      Label8: TLabel;
      BitSiguiente: TBitBtn;
      BitAnterior: TBitBtn;
      Shape4: TShape;
      BitMstApo: TfcShapeBtn;
      bFirma: TBevel;
      bFoto: TBevel;
      ImaFirma: TImage;
      ImagAso: TImage;
      Procedure BitSalirClick(Sender: TObject);
      Procedure FormActivate(Sender: TObject);
      Procedure dtgDetAsoCarIButtonClick(Sender: TObject);
      Procedure dtgCabGestionDblClick(Sender: TObject);
      Procedure dtgDetalleDrawDataCell(Sender: TObject; Const Rect: TRect;
         Field: TField; State: TGridDrawState);
      Procedure dtgDetalleDrawFooterCell(Sender: TObject; Canvas: TCanvas;
         FooterCellRect: TRect; Field: TField; FooterText: String;
         Var DefaultDrawing: Boolean);
      Procedure dtgDetalleDblClick(Sender: TObject);
      Procedure BitSiguienteClick(Sender: TObject);
      Procedure BitAnteriorClick(Sender: TObject);
      Procedure BitMstApoClick(Sender: TObject);
      Procedure ImagAsoDblClick(Sender: TObject);
      Procedure ImaFirmaDblClick(Sender: TObject);
   Private
    { Private declarations }
      Function GnrNueGes(xAsoId: String): String;
      Procedure SumaFooter();
   Public
    { Public declarations }
      Procedure MstDetalles(xAsoid, xPeriodo, xAnoGest, xNroGest: String);
      Procedure CrgPrestamos();
      Procedure LimPrestamos();
   End;

Var
   fGesIndExt: TfGesIndExt;

Implementation

Uses GESDM1, GES210b, GES203d, GES210, GES203n, GES303, GES203b, GES001;

{$R *.dfm}

Procedure TfGesIndExt.BitSalirClick(Sender: TObject);
Begin
   Close;
End;

Procedure TfGesIndExt.FormActivate(Sender: TObject);
Begin
   PageControl1.TabIndex := 0;
   DM1.xMstRn := 'Ges';
   DM1.CargaDatosReniecExt(DM1.CrgDescrip('ASOID=' + QuotedStr(Trim(DM1.cdsMovCre.fieldByname('ASOID').AsString)), 'APO201', 'ASODNI'));
   SumaFooter;
End;

Procedure TfGesIndExt.dtgDetAsoCarIButtonClick(Sender: TObject);
Var
   xAsoId: String;
Begin
   xAsoId := DM1.cdsMovRec.fieldbyname('ASOID').AsString;
   If GnrNueGes(xAsoId) = 'N' Then
      Begin
         MessageDlg('Para Realizar Una NUEVA GESTION , Debe Cerrar La Anterior !!!', mtError, [mbOk], 0);
         Exit;
      End;
   fDetGest := Nil;
   fDetGestExt := tfDetGestExt.Create(Self);
   fDetGestExt.Caption := 'Nueva Gestión De Cobranza';
   DM1.xCnd := 'NUE';
   fDetGestExt.mRefCab.Text := '';
   fDetGestExt.lblNroGest.Caption := 'Gestión N° : ';
   fDetGestExt.DtpFecGst.Date := DM1.FechaSys;
   MstDetalles('', '', '', '');
   fDetGestExt.Showmodal;
   fDetGestExt.Free;

End;

Procedure TfGesIndExt.MstDetalles(xAsoid, xPeriodo, xAnoGest, xNroGest: String);
Var
   xSQL: String;
   xCount: Integer;
Begin

   xSQL := 'SELECT GES_COB_SEG.FECHA, HORA,IDGESTION,IDGESTIONDET,NROGEST,GES_REF_SEG.DESCRIPCION DESCRIPCION, '
      + 'GES_REF_SEG_DET.DESCRIPCION DESCRIPCIONDET,DETOBS,ORDEN, GES_COB_SEG.USUARIO, FECACU '
      + 'FROM GES_COB_SEG, GES_REF_SEG, GES_REF_SEG_DET '
      + 'WHERE GES_COB_SEG.IDGESTION   =GES_REF_SEG.IDGTN '
      + 'AND GES_COB_SEG.IDGESTION   =GES_REF_SEG_DET.IDGTN '
      + 'AND GES_COB_SEG.IDGESTIONDET=GES_REF_SEG_DET.IDGTNDET '
      + 'AND ASOID=' + QuotedStr(xAsoId) + ' AND NROGEST=' + QuotedStr(xNroGest)
      + ' ORDER BY ORDEN DESC ';

   DM1.cdsDetRegCob.Close;
   DM1.cdsDetRegCob.DataRequest(xSQL);
   DM1.cdsDetRegCob.Open;
   If DM1.cdsDetRegCob.RecordCount > 0 Then
      Begin
         xCount := 0;
         DM1.cdsDetRegCob.First;
         While Not DM1.cdsDetRegCob.Eof Do
            Begin
               xCount := xCount + 1;
               DM1.cdsDetRegCob.Next;
            End;
         DM1.cdsDetRegCob.First;
      End
   Else
      xCount := 0;
   fDetGestExt.dtgDetGestion.ColumnByName('DESCRIPCIONDET').FooterValue := 'Número De Registros  :  ' + IntToStr(xCount);
End;

Procedure TfGesIndExt.dtgCabGestionDblClick(Sender: TObject);
Begin
   If dtgCabGestion.DataSource.DataSet.RecordCount = 0 Then Exit;
   fDetGestExt := Nil;
   fDetGestExt := tfDetGestExt.Create(Self);
   If cdsActivo.FieldByName('ESTGES').AsString <> '02' Then
      Begin
//      fDetGestExtExt.BitGrabar.Enabled:=False;
//      fDetGestExtExt.BitAcuPago.Enabled:=False;
      End;
   fDetGestExt.Caption := 'Gestión De Cobranza';
   DM1.xCnd := 'MDF';
   fDetGestExt.mRefCab.Text := DM1.cdsCambios.fieldByname('MASDAT').AsString;
   fDetGestExt.lblNroGest.Caption := 'Gestión N° : ' + DM1.cdsCambios.fieldByname('NROGEST').AsString;
   fDetGestExt.DtpFecGst.Date := DM1.cdsCambios.fieldByname('FECHA').AsDateTime;
   If StrToInt(Copy(DM1.NivelUsuario(DM1.wUsuario), 2, 1)) >= 2 Then
      Begin
         fDetGestExt.pnlItems.Enabled := False;
      End;

   fDetGestExt.Showmodal;
   fDetGestExt.Free;

End;

Procedure TfGesIndExt.dtgDetalleDrawDataCell(Sender: TObject;
   Const Rect: TRect; Field: TField; State: TGridDrawState);
Begin

   If Field.FieldName = 'SALVEN' Then
      Begin
         dtgDetalle.Canvas.Font.Color := clRed;
         dtgDetalle.DefaultDrawDataCell(rect, Field, State);
      End;

   If Field.FieldName = 'SALPEN' Then
      Begin
     //tgDetalle.Canvas.Font.Color := clNavy;
         dtgDetalle.DefaultDrawDataCell(rect, Field, State);
      End;

   If Field.FieldName = 'SALTOT' Then
      Begin
         dtgDetalle.Canvas.Font.Color := clTeal;
         dtgDetalle.DefaultDrawDataCell(rect, Field, State);
      End;

End;

Procedure TfGesIndExt.dtgDetalleDrawFooterCell(Sender: TObject;
   Canvas: TCanvas; FooterCellRect: TRect; Field: TField;
   FooterText: String; Var DefaultDrawing: Boolean);
Begin
   If Field.FieldName = 'SALVEN' Then
      Begin
         dtgDetalle.Canvas.Font.Color := clRed;
      End;

   If Field.FieldName = 'SALPEN' Then
      Begin
      //gDetalle.Canvas.Font.Color := clNavy;
      End;

   If Field.FieldName = 'SALTOT' Then
      Begin
         dtgDetalle.Canvas.Font.Color := clTeal;
      End;

End;

Procedure TfGesIndExt.dtgDetalleDblClick(Sender: TObject);
Var
   xAsoId, xCreDid: String;
Begin
   If dtgDetalle.DataSource.DataSet.RecordCount = 0 Then Exit;
   fCronoPag := Nil;
   fCronoPag := TfCronoPag.create(self);
   xAsoId := DM1.cdsMovRec.fieldbyname('ASOID').AsString;
   xCreDid := DM1.cdsMovRec.fieldbyname('CREDID').AsString;
   DM1.cdsSolicitud.Close;
   DM1.cdsSolicitud.DataRequest('SELECT SubStr(a.Credid,11,5) as Numero,b.TIPCREDES,a.* FROM CRE301 a,CRE110 b Where a.TIPCREID=b.TIPCREID AND a.ASOID =' + QuotedStr(Trim(xAsoId)) + ' AND CREDID=' + QuotedStr(xCreDid) + ' Order By a.CREFOTORG ');
   DM1.cdsSolicitud.Open;
   DM1.CargaCronograma(xAsoId, xCreDid);
   fCronoPag.Showmodal;
   fCronoPag.free;
End;

Procedure TfGesIndExt.CrgPrestamos;
Var
   xAsoId: String;
Begin
   LimPrestamos;
   xAsoId := Trim(DM1.cdsMovRec.FieldByName('ASOID').AsString);
End;

Procedure TfGesIndExt.LimPrestamos;
Begin
   DM1.cdsSolicitud.Close;
   DM1.cdsSolicitud.DataRequest('SELECT SubStr(a.Credid,11,5) As Numero,b.TIPCREDES,a.* FROM CRE301 a,CRE110 B WHERE A.TIPCREID=B.TIPCREID AND A.ASOID =' + QuotedStr('!@#$%^&*+/*') + ' Order By a.CREFOTORG ');
   DM1.cdsSolicitud.Open;
End;

Function TfGesIndExt.GnrNueGes(xAsoId: String): String;
Var
   xSQL, xEstGes: String;
Begin
   xEstGes := 'S';
   xSQL := 'SELECT ASOID,NVL(ESTGES,''00'') ESTGES FROM GES_INI_SEG ' +
      'WHERE ASOID=' + QuotedStr(xAsoId) + ' AND NVL(ESTGES,''00'')=''00'' ';
   DM1.cdsCEdu.Close;
   DM1.cdsCEdu.DataRequest(xSQL);
   DM1.cdsCEdu.Open;
   If DM1.cdsCEdu.RecordCount > 0 Then
      Begin
         xEstGes := 'N';
      End;
   DM1.cdsCEdu.Close;
   Result := xEstGes;
End;

Procedure TfGesIndExt.BitSiguienteClick(Sender: TObject);
Begin
   DM1.VarRefencia := '';
   DM1.VarGestion := '';
   If DM1.cdsMovCre.Eof Then
      Begin
         MessageDlg('Fin De ARCHIVO!!!', mtInformation, [mbOk], 0);
         Exit;
      End;
   DM1.cdsMovCre.Next;
   DM1.CargaDatosReniec(DM1.CrgDescrip('ASOID=' + QuotedStr(Trim(DM1.cdsMovCre.fieldByname('ASOID').AsString)), 'APO201', 'ASODNI'));
   fGestExt.MstAsociados;
   SumaFooter;
End;

Procedure TfGesIndExt.BitAnteriorClick(Sender: TObject);
Begin
   DM1.VarRefencia := '';
   DM1.VarGestion := '';
   If DM1.cdsMovCre.Bof Then
      Begin
         MessageDlg('Inicio De ARCHIVO!!!', mtInformation, [mbOk], 0);
         Exit;
      End;
   DM1.cdsMovCre.Prior;
   DM1.CargaDatosReniec(DM1.CrgDescrip('ASOID=' + QuotedStr(Trim(DM1.cdsMovCre.fieldByname('ASOID').AsString)), 'APO201', 'ASODNI'));
   fGestExt.MstAsociados;
   SumaFooter;

End;

Procedure TfGesIndExt.BitMstApoClick(Sender: TObject);
Begin
   Try
      fRegApor := TfRegApor.create(self);
      fRegApor.Showmodal;
   Finally
      fRegApor.free;
   End;
End;

Procedure TfGesIndExt.SumaFooter;
Var
   xSalTot, xSalVen, xSalPen: Currency;
Begin
   xSalTot := 0;
   xSalVen := 0;
   xSalPen := 0;
   DM1.cdsMovRec.First;
   While Not DM1.cdsMovRec.Eof Do
      Begin
         xSalTot := xSalTot + DM1.cdsMovRec.FieldByName('SALTOT').AsCurrency;
         xSalVen := xSalVen + DM1.cdsMovRec.FieldByName('SALVEN').AsCurrency;
         xSalPen := xSalPen + DM1.cdsMovRec.FieldByName('SALPEN').AsCurrency;
         DM1.cdsMovRec.Next;
      End;
   dtgDetalle.ColumnByName('TIPCREDES').FooterValue := 'Totales : ';
   dtgDetalle.ColumnByName('SALTOT').FooterValue := FloatToStrF(xSalTot, ffNumber, 15, 2);
   dtgDetalle.ColumnByName('SALVEN').FooterValue := FloatToStrF(xSalVen, ffNumber, 15, 2);
   dtgDetalle.ColumnByName('SALPEN').FooterValue := FloatToStrF(xSalPen, ffNumber, 15, 2);

   lblSaldo.Caption := FormatFloat('###,###.#0', DM1.Valores(cdsActivo.fieldByname('SALTOT').AsString)) + ' [' + cdsActivo.fieldByname('CUOTOT').AsString + ']';
   lblVenc.Caption := FormatFloat('###,###.#0', DM1.Valores(cdsActivo.fieldByname('SALVEN').AsString)) + ' [' + cdsActivo.fieldByname('CUOVEN').AsString + ']';
   lblPend.Caption := FormatFloat('###,###.#0', DM1.Valores(cdsActivo.fieldByname('SALPEN').AsString)) + ' [' + cdsActivo.fieldByname('CUOPEN').AsString + ']';

End;

Procedure TfGesIndExt.ImagAsoDblClick(Sender: TObject);
Var
   xAsoId: String;
Begin
   xAsoId := DM1.cdsMovRec.FieldByName('ASOID').AsString;
   If Trim(DM1.CrgDescrip('ASOID=' + QuotedStr(Trim(xAsoId)), 'APO201', 'ACTARCREN')) = 'S' Then

      Begin
         Try
            fDatReniec := TfDatReniec.create(self);
            fDatReniec.ImgFoto.Picture := ImagAso.Picture;
            fDatReniec.ImgFirma.Picture := ImaFirma.Picture;
            DM1.CargasLista(DM1.CrgDescrip('ASOID=' + QuotedStr(Trim(DM1.cdsMovCre.fieldByname('ASOID').AsString)), 'APO201', 'ASODNI'));
            fDatReniec.Showmodal;
         Finally
            fDatReniec.Free;
         End;
      End;

End;

Procedure TfGesIndExt.ImaFirmaDblClick(Sender: TObject);
Var
   xAsoId: String;
Begin
   xAsoId := DM1.cdsMovRec.FieldByName('ASOID').AsString;
   If Trim(DM1.CrgDescrip('ASOID=' + QuotedStr(Trim(xAsoId)), 'APO201', 'ACTARCREN')) = 'S' Then

      Begin
         Try
            fDatReniec := TfDatReniec.create(self);
            fDatReniec.ImgFoto.Picture := ImagAso.Picture;
            fDatReniec.ImgFirma.Picture := ImaFirma.Picture;
            DM1.CargasLista(DM1.CrgDescrip('ASOID=' + QuotedStr(Trim(DM1.cdsMovCre.fieldByname('ASOID').AsString)), 'APO201', 'ASODNI'));
            fDatReniec.Showmodal;
         Finally
            fDatReniec.Free;
         End;
      End;

End;

End.

