Unit COB926;

Interface

Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, Buttons, Grids, Wwdbigrd, Wwdbgrid, ExtCtrls;

Type
   TfCtrlGest = Class(TForm)
      GroupBox2: TGroupBox;
      BitSalir: TBitBtn;
      Label1: TLabel;
      dtgCabGestion: TwwDBGrid;
      dtgDetAsoCarIButton: TwwIButton;
      GroupBox1: TGroupBox;
      Label2: TLabel;
      Label3: TLabel;
      lblCodMod: TLabel;
      Label4: TLabel;
      Label5: TLabel;
      lblAsoNombres: TLabel;
      Panel1: TPanel;
      lblCalificacion: TLabel;
      Label8: TLabel;
      Label10: TLabel;
      lblSaldo: TLabel;
      Shape1: TShape;
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
      lblCuotas: TLabel;
      lblCobrador: TLabel;
      BitDatGes: TBitBtn;
      BitHistorico: TBitBtn;
      Procedure BitSalirClick(Sender: TObject);
      Procedure dtgDetAsoCarIButtonClick(Sender: TObject);
      Procedure dtgCabGestionDblClick(Sender: TObject);
      Procedure FormClose(Sender: TObject; Var Action: TCloseAction);
      Procedure BitDatGesClick(Sender: TObject);
   Private
    { Private declarations }
   Public
    { Public declarations }
      Procedure MstDetalles(xAsoid, xPeriodo, xAnoGest, xNroGest: String);
   End;

Var
   fCtrlGest: TfCtrlGest;

Implementation

(*uses GESDM1, COB914, COB927, COB928;*)
Uses GESDM1, GES203b, COB928;

{$R *.dfm}

Procedure TfCtrlGest.BitSalirClick(Sender: TObject);
Begin
   Close;
End;

Procedure TfCtrlGest.dtgDetAsoCarIButtonClick(Sender: TObject);
Begin
   If DM1.UsrConsulta(Trim(DM1.wUsuario)) Then
      Begin
         MessageDlg('Usuario No Autorizado A Esta Opción / Solo CONSULTA !!!', mtError, [mbOk], 0);
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

Procedure TfCtrlGest.dtgCabGestionDblClick(Sender: TObject);
Begin
   If dtgCabGestion.DataSource.DataSet.RecordCount = 0 Then Exit;
   fDetGest := Nil;
   fDetGest := tfDetGest.Create(Self);
   fDetGest.Caption := 'Gestión De Cobranza';
   DM1.xCnd := 'MDF';
   fDetGest.mRefCab.Text := DM1.cdsCambios.fieldByname('MASDAT').AsString;
   fDetGest.lblNroGest.Caption := 'Gestión N° : ' + DM1.cdsCambios.fieldByname('NROGEST').AsString;
   fDetGest.DtpFecGst.Date := DM1.cdsCambios.fieldByname('FECHA').AsDateTime;
   fDetGest.Showmodal;
   fDetGest.Free;

End;

Procedure TfCtrlGest.FormClose(Sender: TObject; Var Action: TCloseAction);
Begin
   DM1.xCnd := '';
End;

Procedure TfCtrlGest.MstDetalles(xAsoid, xPeriodo, xAnoGest, xNroGest: String);
Var
   xSQL: String;
   xCount: Integer;
Begin
   xSQL := 'SELECT FECHA,HORA,IDGESTION,COB344.DESCRIPCION ,DETOBS,ORDEN FROM COB346,COB344 WHERE COB346.IDGESTION=COB344.IDGTN ' +
      'AND ASOID=' + QuotedStr(xAsoId) + ' AND PERIODO=' + QuotedStr(xPeriodo) + ' AND ANOGEST=' + QuotedStr(xAnoGest) + ' AND NROGEST=' + QuotedStr(xNroGest) + ' ORDER BY ORDEN DESC';

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

   fDetGest.dtgDetGestion.ColumnByName('DETOBS').FooterValue := '                             Numero De Registros  :  ' + IntToStr(xCount);

End;

Procedure TfCtrlGest.BitDatGesClick(Sender: TObject);
Var
   xSQL: String;
Begin
   Try
      fDatGes := TfDatGes.create(Self);
      DM1.cdsAso.Close;
      DM1.cdsAso.DataRequest('SELECT ASOID,DPTOID,CIUDID,ZIPID,ASODIR,ASOTELF1,ASOTELF2 FROM APO201 WHERE ASOID=' + QuotedStr(DM1.cdsMovCre.fieldByname('ASOID').AsString));
      DM1.cdsAso.Open;
      xSQL := 'SELECT DPTOID,DPTODES FROM TGE158';
      DM1.cdsPadre.Close;
      DM1.cdsPadre.DataRequest(xSQL);
      DM1.cdsPadre.Open;
      fDatGes.dbeDirec.Text := DM1.cdsAso.fieldbyname('ASODIR').AsString;
      fDatGes.lkcDpto.Text := DM1.cdsAso.fieldbyname('DPTOID').AsString;
      fDatGes.lkcProv.Text := DM1.cdsAso.fieldbyname('CIUDID').AsString;
      fDatGes.lkcDist.Text := DM1.cdsAso.fieldbyname('ZIPID').AsString;
      fDatGes.dbeTel1.Text := DM1.cdsAso.fieldbyname('ASOTELF1').AsString;
      fDatGes.dbeTel2.Text := DM1.cdsAso.fieldbyname('ASOTELF2').AsString;
      fDatGes.ShowModal;
   Finally
      DM1.cdsAso.Close;
      DM1.cdsPadre.Close;
      fDatGes.Free;

   End;

End;

End.

