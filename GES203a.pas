// Inicio Uso Estándares: 01/08/2011
// Unidad : Gestión de Cobranzas
// Formulario : fGesIndInt
// Fecha de Creación :
// Autor : Equipo de Sistemas
// Objetivo : Gestion Individual Interna de Asociados
// Actualizaciones:
// HPP_201112_GESCOB 06/06/2011 Mejoras Internas del Sistema (F4)
// HPC_201201_GESCOB 09/01/2012 Registrar Hojas de Rutas
// HPC_201209_GESCOB(F3) 22/10/2012 IMPLEMENTAR NEGOCIACION Y COMPROMISO DE PAGO
// HPC_201305_GESCOB: F2 04/06/2013 Se agregó nueva opción, liberación individual para el Gestor de un asociado
// SPP_201305_GESCOB: Se realiza el pase a producción a partir del HPC_201305_GESCOB
// SPP_201401_GESCOB: Importacion masiva interna y Mejoras del proceso de priorizacion
// SPP_201401_GESCOB: Se realiza el pase a producción a partir del HPC_201401_GESCOB
// HPC_201402_GESCOB: Mantenimiento geeneral a la identificacion del deudor (1.5)
// SPP_201402_GESCOB: Se realiza el pase a producción a partir del HPC_201402_GESCOB

Unit GES203a;

Interface

Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, Buttons, ExtCtrls, Wwdbigrd, Grids, Wwdbgrid, ComCtrls, Db,
   fcButton, fcImgBtn, fcShapeBtn, IniFiles, IdBaseComponent, IdComponent,
   IdTCPConnection, IdTCPClient, IdFTP
   // INICIO : SPP_201402_GESCOB
   , jpeg;
   // FIN : SPP_201402_GESCOB

Type
   TfGesIndInt = Class(TForm)
   // INICIO : SPP_201402_GESCOB
      BitSalir : TBitBtn;
      PageControl1 : TPageControl;
      TabSheet1 : TTabSheet;
      TabSheet2 : TTabSheet;
      dtgDetalle : TwwDBGrid;
      dtgCabGestion : TwwDBGrid;
      dtgDetAsoCarIButton : TwwIButton;
      BitSiguiente : TBitBtn;
      BitAnterior : TBitBtn;
      Shape4 : TShape;
      BitMstApo : TfcShapeBtn;
      IdFTP1 : TIdFTP;
// Inicio: SPP_201305_GESCOB
      BitLiberar: TBitBtn;
    Panel3: TPanel;
    Label12: TLabel;
    Label4: TLabel;
    Label9: TLabel;
    Label18: TLabel;
    Label16: TLabel;
    Label20: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    Label11: TLabel;
    Label23: TLabel;
    lblTelefonoFijoMaeAso: TLabel;
    lblDireccionDomMaeAso: TLabel;
    lblUses: TLabel;
    lblUniPro: TLabel;
    lblDni: TLabel;
    lblAsoNombres: TLabel;
    lblTipAso: TLabel;
    Label3: TLabel;
    lblSitAsociado: TLabel;
    Label15: TLabel;
    Label13: TLabel;
    Label17: TLabel;
    bFoto: TBevel;
    bFirma: TBevel;
    lblCuenta: TLabel;
    Label14: TLabel;
    lblCodMod: TLabel;
    ImagAso: TImage;
    ImaFirma: TImage;
    lblDireccionDomLabAso: TLabel;
    lblDireccionDomGesCob: TLabel;
    lblDireccionDomMaeAsoDist: TLabel;
    lblDireccionDomLabAsoDist: TLabel;
    lblDireccionDomGesCobDist: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    lblDireccionDomGesCobProv: TLabel;
    lblDireccionDomLabAsoProv: TLabel;
    lblDireccionDomMaeAsoProv: TLabel;
    lblDireccionDomGesCobDpto: TLabel;
    lblDireccionDomLabAsoDpto: TLabel;
    lblDireccionDomMaeAsoDpto: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    lblTelefonoCelMaeAso: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    lblTelefonoCelGesCob: TLabel;
    lblTelefonoFijoGesCob: TLabel;
    Label45: TLabel;
    lblDias: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    lblSalTotal: TLabel;
    lblSalTotalAct: TLabel;
    lblSalPendAct: TLabel;
    lblSalPend: TLabel;
    lblSalVen: TLabel;
    lblSalVenAct: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    lblSalDifAct: TLabel;
    lblSalDif: TLabel;
    Shape3: TShape;
    Shape5: TShape;
    Shape6: TShape;
    Shape7: TShape;
    Shape2: TShape;
    Shape1: TShape;
    Shape8: TShape;
    Shape9: TShape;
    Shape10: TShape;
    Shape11: TShape;
    Shape12: TShape;
    Shape13: TShape;
    Shape14: TShape;
    Shape15: TShape;
    Shape16: TShape;
    Shape17: TShape;
    Shape18: TShape;
    Shape19: TShape;
    Shape20: TShape;
    Shape21: TShape;
    Shape22: TShape;
    Shape23: TShape;
    Shape24: TShape;
    Shape25: TShape;
    Shape26: TShape;
    Shape27: TShape;
    Shape28: TShape;
    Shape29: TShape;
    Shape30: TShape;
    Shape31: TShape;
    Shape32: TShape;
    Shape33: TShape;
    Shape34: TShape;
    Shape35: TShape;
    Shape36: TShape;
    Shape37: TShape;
    Shape38: TShape;
    Shape39: TShape;
    Shape40: TShape;
    Shape41: TShape;
    Shape42: TShape;
    Shape43: TShape;
    Shape44: TShape;
    Shape45: TShape;
    Shape46: TShape;
    Shape47: TShape;
    Shape48: TShape;
    Shape49: TShape;
    Shape50: TShape;
    Shape51: TShape;
    Shape52: TShape;
    Shape53: TShape;
    Shape54: TShape;
    // FIN : SPP_201402_GESCOB
// Fin: SPP_201305_GESCOB
      Procedure BitSalirClick(Sender : TObject);
      Procedure FormActivate(Sender : TObject);
      Procedure dtgDetAsoCarIButtonClick(Sender : TObject);
      Procedure dtgCabGestionDblClick(Sender : TObject);
      Procedure dtgDetalleDrawDataCell(Sender : TObject; Const Rect : TRect;
         Field : TField; State : TGridDrawState);
      Procedure dtgDetalleDrawFooterCell(Sender : TObject; Canvas : TCanvas;
         FooterCellRect : TRect; Field : TField; FooterText : String;
         Var DefaultDrawing : Boolean);
      Procedure dtgDetalleDblClick(Sender : TObject);
      Procedure BitSiguienteClick(Sender : TObject);
      Procedure BitAnteriorClick(Sender : TObject);
      Procedure BitMstApoClick(Sender : TObject);
      Procedure ImagAsoDblClick(Sender : TObject);
      Procedure ImaFirmaDblClick(Sender : TObject);
// Inicio: SPP_201305_GESCOB
      procedure BitLiberarClick(Sender: TObject);
// Fin: SPP_201305_GESCOB
   Private
    { Private declarations }
      Function GnrNueGes(xAsoId : String) : String;
      Function GnrNueGesCerrada(xAsoId, xNroGest : String) : String;
      Procedure SumaFooter();
   Public
    { Public declarations }
      Procedure MstDetalles(xAsoid, xPeriodo, xAnoGest, xNroGest : String);
      Procedure CrgPrestamos();
      Procedure LimPrestamos();
   End;

Var
   fGesIndInt : TfGesIndInt;

Implementation

// Inicio: SPP_201305_GESCOB
Uses GESDM1, GES203b, GES203d, GES203, GES203n, GES303, GES001, GES203r;
// Fin: SPP_201305_GESCOB

{$R *.dfm}

Procedure TfGesIndInt.BitSalirClick(Sender : TObject);
Begin
   Close;
End;

Procedure TfGesIndInt.FormActivate(Sender : TObject);
// Inicio: SPP_201305_GESCOB F2 Habilita y Deshabilita botón de liberar
Var
   xsSQL:String;
   xsAsoId:String; xsGestor:String; xsPeriodo:String;
// Fin: SPP_201305_GESCOB
Begin
   PageControl1.TabIndex := 0;
   DM1.xMstRn := 'Ges';
   DM1.CargaDatosReniec(DM1.CrgDescrip('ASOID=' + QuotedStr(Trim(cdsActivo.fieldByname('ASOID').AsString)), 'APO201', 'ASODNI'));
   SumaFooter;

// Inicio: SPP_201305_GESCOB F2 Habilita y Deshabilita botón de liberar
   BitLiberar.Enabled := false;
   If StrToInt(Copy(DM1.NivelUsuario(DM1.wUsuario), 2, 1)) >= 2 Then
   Begin
// buscar en las tablas si todavia no ha sido liberado para desabilitar el boton liberar
         xsAsoId := DM1.cdsMovRec.fieldbyname('ASOID').AsString;
         xsGestor := fGestInt.dblUserInt.text;
         xsPeriodo := cdsActivo.fieldByname('PERIODO').AsString;

         xsSQL := ' SELECT ASOID FROM GES_COB_DOM WHERE PERIODO = ''' + xsPeriodo + ''' AND ASOID = ''' + xsAsoId + ''' AND USUARIO = ''' + xsGestor + ''' ';
         DM1.cdsGesCobExiste.Close;
         DM1.cdsGesCobExiste.DataRequest(xsSQL);
         DM1.cdsGesCobExiste.Open;

         If DM1.cdsGesCobExiste.RecordCount > 0 Then
            BitLiberar.Enabled := true
         Else
            BitLiberar.Enabled := false;
   End;
// Fin: SPP_201305_GESCOB
End;

Procedure TfGesIndInt.dtgDetAsoCarIButtonClick(Sender : TObject);
Var
   xAsoId : String;
Begin
   xAsoId := DM1.cdsMovRec.fieldbyname('ASOID').AsString;
   If GnrNueGes(xAsoId) = 'N' Then
   Begin
      MessageDlg('Para Realizar Una NUEVA GESTION , Debe Cerrar La Anterior !!!', mtError, [mbOk], 0);
      Exit;
   End;
   fDetGest := Nil;
   fDetGest := tfDetGest.Create(Self);
   fDetGest.Caption := 'Nueva Gestión De Cobranza';
   DM1.xCnd := 'NUE';
   fDetGest.mRefCab.Text := '';
   fDetGest.lblNroGest.Caption := 'Gestión N° : ';
   fDetGest.DtpFecGst.Date := DM1.FechaSys;
   MstDetalles('', '', '', '');
   fDetGest.Showmodal;
   fDetGest.Free;

End;

Procedure TfGesIndInt.MstDetalles(xAsoid, xPeriodo, xAnoGest, xNroGest : String);
Var
   xSQL : String;
   xCount : Integer;
Begin
   //INICIO
   //IDENTAR CONSULTA PARA SU MEJOR ENTENDIMIENTO
   xSQL := 'SELECT ANOGEST, GES_COB_SEG.FECHA, HORA, IDGESTION, IDGESTIONDET, '
      + '          NROGEST, GES_REF_SEG.DESCRIPCION DESCRIPCION, '
      + '          GES_REF_SEG_DET.DESCRIPCION DESCRIPCIONDET, DETOBS, ORDEN, '
      + '          GES_COB_SEG.USUARIO, FECACU '
      + '     FROM GES_COB_SEG, GES_REF_SEG, GES_REF_SEG_DET '
      + '    WHERE GES_COB_SEG.IDGESTION = GES_REF_SEG.IDGTN '
      + '      AND GES_COB_SEG.IDGESTION = GES_REF_SEG_DET.IDGTN '
      + '      AND GES_COB_SEG.IDGESTIONDET = GES_REF_SEG_DET.IDGTNDET '
      + '      AND ASOID = ' + QuotedStr(xAsoId)
      + '      AND NROGEST=' + QuotedStr(xNroGest)
      + '      AND NOT ( GES_COB_SEG.IDGESTIONDET=''312'' AND IDCARTA IS NOT NULL) '
      + '    ORDER BY FECHA DESC, ORDEN DESC ';
   DM1.cdsDetRegCob.Close;
   DM1.cdsDetRegCob.DataRequest(xSQL);
   DM1.cdsDetRegCob.Open;

   xCount := DM1.cdsDetRegCob.RecordCount;
   fDetGest.dtgDetGestion.ColumnByName('DESCRIPCIONDET').FooterValue := 'Número De Registros  :  ' + IntToStr(xCount);
End;

//******************************************************************************
// Nombre : dtgCabGestionDblClick
// Descripcion : Muetra formulario para ingresar una gestion
//******************************************************************************

Procedure TfGesIndInt.dtgCabGestionDblClick(Sender : TObject);
Begin
   If dtgCabGestion.DataSource.DataSet.RecordCount = 0 Then Exit;
   fDetGest := Nil;
   fDetGest := tfDetGest.Create(Self);

   //If cdsActivo.FieldByName('ESTGES').AsString='03' Then
   If GnrNueGesCerrada(cdsActivo.FieldByName('ASOID').AsString, DM1.cdsCambios.fieldByname('NROGEST').AsString) <> 'N' Then
   Begin
      fDetGest.BitGrabar.Enabled := False;
      //fDetGest.BitAcuPago.Enabled := False;
   End;

   fDetGest.Caption := 'Gestión De Cobranza';
   DM1.xCnd := 'MDF';
   fDetGest.mRefCab.Text := DM1.cdsCambios.fieldByname('MASDAT').AsString;
   fDetGest.lblNroGest.Caption := 'Gestión N° : ' + DM1.cdsCambios.fieldByname('NROGEST').AsString;
   fDetGest.DtpFecGst.Date := DM1.cdsCambios.fieldByname('FECHA').AsDateTime;
   If ((StrToInt(Copy(DM1.NivelUsuario(DM1.wUsuario), 2, 1)) >= 2) or (not dtgDetAsoCarIButton.Enabled)) Then
   Begin
      fDetGest.pnlItems.Enabled := False;
   End;

   fDetGest.Showmodal;
   fDetGest.Free;
End;

Procedure TfGesIndInt.dtgDetalleDrawDataCell(Sender : TObject;
   Const Rect : TRect; Field : TField; State : TGridDrawState);
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

Procedure TfGesIndInt.dtgDetalleDrawFooterCell(Sender : TObject;
   Canvas : TCanvas; FooterCellRect : TRect; Field : TField;
   FooterText : String; Var DefaultDrawing : Boolean);
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

Procedure TfGesIndInt.dtgDetalleDblClick(Sender : TObject);
Var
   xAsoId, xCreDid : String;
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

Procedure TfGesIndInt.CrgPrestamos;
Var
   xAsoId : String;
Begin
   LimPrestamos;
   xAsoId := Trim(DM1.cdsMovRec.FieldByName('ASOID').AsString);
End;

Procedure TfGesIndInt.LimPrestamos;
Begin
   DM1.cdsSolicitud.Close;
   DM1.cdsSolicitud.DataRequest('SELECT SubStr(a.Credid,11,5) As Numero,b.TIPCREDES,a.* FROM CRE301 a,CRE110 B WHERE A.TIPCREID=B.TIPCREID AND A.ASOID =' + QuotedStr('!@#$%^&*+/*') + ' Order By a.CREFOTORG ');
   DM1.cdsSolicitud.Open;
End;

Function TfGesIndInt.GnrNueGes(xAsoId : String) : String;
Var
   xSQL, xEstGes : String;
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

Function TfGesIndInt.GnrNueGesCerrada(xAsoId, xNrogest : String) : String;
Var
   xSQL, xEstGes : String;
Begin
   xEstGes := 'N';
   xSQL := 'SELECT ASOID,NVL(ESTGES,''00'') ESTGES FROM GES_INI_SEG ' +
      'WHERE ASOID=' + QuotedStr(xAsoId) + ' and NROGEST=''' + xNrogest + ''' '
      + ' AND NVL(ESTGES,''00'')=''03'' ';
   DM1.cdsCEdu.Close;
   DM1.cdsCEdu.DataRequest(xSQL);
   DM1.cdsCEdu.Open;
   If DM1.cdsCEdu.RecordCount > 0 Then
   Begin
      xEstGes := 'S';
   End;
   DM1.cdsCEdu.Close;
   Result := xEstGes;
End;

Procedure TfGesIndInt.BitSiguienteClick(Sender : TObject);
Begin
   DM1.VarRefencia := '';
   DM1.VarGestion := '';
   If cdsActivo.Eof Then
   Begin
      MessageDlg('Fin De ARCHIVO!!!', mtInformation, [mbOk], 0);
      Exit;
   End;
   cdsActivo.Next;
   DM1.CargaDatosReniec(DM1.CrgDescrip('ASOID=' + QuotedStr(Trim(cdsActivo.fieldByname('ASOID').AsString)), 'APO201', 'ASODNI'));
   fGestInt.MstAsociados;
   SumaFooter;
End;

Procedure TfGesIndInt.BitAnteriorClick(Sender : TObject);
Begin
   DM1.VarRefencia := '';
   DM1.VarGestion := '';
   If cdsActivo.Bof Then
   Begin
      MessageDlg('Inicio De ARCHIVO!!!', mtInformation, [mbOk], 0);
      Exit;
   End;
   cdsActivo.Prior;
   DM1.CargaDatosReniec(DM1.CrgDescrip('ASOID=' + QuotedStr(Trim(cdsActivo.fieldByname('ASOID').AsString)), 'APO201', 'ASODNI'));
   fGestInt.MstAsociados;
   SumaFooter;

End;

Procedure TfGesIndInt.BitMstApoClick(Sender : TObject);
Begin
   Try
      fRegApor := TfRegApor.create(self);
      fRegApor.Showmodal;
   Finally
      fRegApor.free;
   End;
End;

// INICIO : SPP_201402_GESCOB
Procedure TfGesIndInt.SumaFooter;
Var
   xSalTot, xSalVen, xSalPen : Currency;
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
(*
   lblSaldo.Caption := FormatFloat('###,###.#0', DM1.Valores(cdsActivo.fieldByname('SALTOT').AsString)) + ' [' + cdsActivo.fieldByname('CUOTOT').AsString + ']';
   lblVenc.Caption := FormatFloat('###,###.#0', DM1.Valores(cdsActivo.fieldByname('SALVEN').AsString)) + ' [' + cdsActivo.fieldByname('CUOVEN').AsString + ']';
   lblPend.Caption := FormatFloat('###,###.#0', DM1.Valores(cdsActivo.fieldByname('SALPEN').AsString)) + ' [' + cdsActivo.fieldByname('CUOPEN').AsString + ']';
*)
End;
// FIN : SPP_201402_GESCOB

Procedure TfGesIndInt.ImagAsoDblClick(Sender : TObject);
Var
   xAsoId : String;
Begin
   xAsoId := DM1.cdsMovRec.FieldByName('ASOID').AsString;
   If Trim(DM1.CrgDescrip('ASOID=' + QuotedStr(Trim(xAsoId)), 'APO201', 'ACTARCREN')) = 'S' Then

   Begin
      Try
         fDatReniec := TfDatReniec.create(self);
         fDatReniec.ImgFoto.Picture := ImagAso.Picture;
         fDatReniec.ImgFirma.Picture := ImaFirma.Picture;
         DM1.CargasLista(DM1.CrgDescrip('ASOID=' + QuotedStr(Trim(cdsActivo.fieldByname('ASOID').AsString)), 'APO201', 'ASODNI'));
         fDatReniec.Showmodal;
      Finally
         fDatReniec.Free;
      End;
   End;

End;

Procedure TfGesIndInt.ImaFirmaDblClick(Sender : TObject);
Var
   xAsoId : String;
Begin
   xAsoId := DM1.cdsMovRec.FieldByName('ASOID').AsString;
   If Trim(DM1.CrgDescrip('ASOID=' + QuotedStr(Trim(xAsoId)), 'APO201', 'ACTARCREN')) = 'S' Then

   Begin
      Try
         fDatReniec := TfDatReniec.create(self);
         fDatReniec.ImgFoto.Picture := ImagAso.Picture;
         fDatReniec.ImgFirma.Picture := ImaFirma.Picture;
         DM1.CargasLista(DM1.CrgDescrip('ASOID=' + QuotedStr(Trim(cdsActivo.fieldByname('ASOID').AsString)), 'APO201', 'ASODNI'));
         fDatReniec.Showmodal;
      Finally
         fDatReniec.Free;
      End;
   End;
End;

(******************************************************************************
Procedure TfGesIndInt.CargaFoto(IdFoto: String);
Var
   RemoteTxt, LocalTxt, xFtp: String;
   IniFile: TIniFile;
Begin
   ImagAso.Visible := True;
   BorraFotos;
   IniFile := TIniFile.Create('C:\SOLExes\SOLConf.ini');
   xFtp := IniFile.ReadString('FOTOS', 'FTP', '');
   IDFTP1.Host := xFtp;
   IDFTP1.Port := 21;
   IDFTP1.ReadTimeout := 5000;
   IDFTP1.UserName := 'imagen';
   IDFTP1.Password := 'imagen';
   IDFTP1.Connect;
   Try
      If Trim(IdFoto) <> '' Then
      Begin
         Try
            RemoteTxt := '/data02/imagen/jpeg/JPEG' + copy(IdFoto, 1, 1) + '/' + IdFoto + '.jpg';
            LocalTxt := 'C:\SolExes\' + IdFoto + '.jpg';
            IdFTP1.Get(RemoteTxt, LocalTxt, False);
            If DM1.xSgr = 'REP' Then
               fCronoPag.ppImage1.Picture.LoadFromFile(LocalTxt)
            Else
               If DM1.xSgr = 'IDE' Then
                  fIdentAso.ImagAso.Picture.LoadFromFile(LocalTxt)
               Else
                  If DM1.xSgr = 'CTR' Then
                     fMatAso.ImagAso.Picture.LoadFromFile(LocalTxt)

                  Else
                     ImagAso.Picture.LoadFromFile(LocalTxt);
            deletefile(LocalTxt);
            BorraFotos;
         Except
         End;
      End
      Else
      Begin
         Try
            RemoteTxt := '/data02/imagen/jpeg/SINFOTO.jpg';
            LocalTxt := 'C:\SolExes\SINFOTO.Jpg';
            IdFTP1.Get(RemoteTxt, LocalTxt, False);
            If DM1.xSgr = 'REP' Then
               fCronoPag.ppImage1.Picture.LoadFromFile(LocalTxt)
            Else
               If DM1.xSgr = 'IDE' Then
                  fIdentAso.ImagAso.Picture.LoadFromFile(LocalTxt)
               Else
                  ImagAso.Picture.LoadFromFile(LocalTxt);
            deletefile(LocalTxt);
            BorraFotos;
         Except

         End;
      End;
   Except

   End;

   idFTP1.Disconnect;

End;
(******************************************************************************

Procedure TfGesIndInt.BorraFotos;
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
******************************************************************************)

// INICIO : SPP_201401_GESCOB
procedure TfGesIndInt.BitLiberarClick(Sender: TObject);
begin
      TRY
         FLibGesInd := TFLibGesInd.Create(self);         
         FLibGesInd.xsAsoId := DM1.cdsMovRec.fieldbyname('ASOID').AsString;
         FLibGesInd.xsGestor := fGestInt.dblUserInt.text;
         FLibGesInd.lblGestorNombre.Caption := fGestInt.dblUserInt.Text + ' - ' + fGestInt.EdtUserNom.text;
         FLibGesInd.lblAsoNombres.Caption := DM1.cdsMovRec.fieldbyname('ASOID').AsString + ' - ' + lblAsoNombres.Caption;
         if FLibGesInd.ShowModal = mrOk then
            fGesIndInt.BitLiberar.Enabled := false;         
      FINALLY
         FLibGesInd.Free;
      END;
end;
// FIN : SPP_201401_GESCOB

End.

