Unit GES104;

Interface

Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, Grids, Wwdbigrd, Wwdbgrid, Buttons, fcButton, fcImgBtn,
   fcShapeBtn, wwdblook, StdCtrls, ExtCtrls, Mask, DBCtrls, ComCtrls;

Type
   TfUsuDpto = Class(TForm)
      dtgOfiDes: TwwDBGrid;
      dtgUsuarios: TwwDBGrid;
      BitSalir: TBitBtn;
      gbOfides: TGroupBox;
      Label3: TLabel;
      Label5: TLabel;
      BitGrabaOF: TfcShapeBtn;
      Button1: TButton;
      meTel: TMaskEdit;
      meFax: TMaskEdit;
      Label7: TLabel;
      lblDpto: TLabel;
      lblDptoDes: TLabel;
      Shape3: TShape;
      Shape4: TShape;
      BitBtn1: TBitBtn;
      BitBtn2: TBitBtn;
      dtgUserNiv: TwwDBGrid;
      Shape1: TShape;
      Shape2: TShape;
      Label1: TLabel;
      lblUsuario: TLabel;
      lblUsuDes: TLabel;
      Label18: TLabel;
      Label19: TLabel;
      dblcProvin: TwwDBLookupCombo;
      dblcDist: TwwDBLookupCombo;
      edtProvin: TMaskEdit;
      edtDist: TMaskEdit;
      meCel: TMaskEdit;
      Label2: TLabel;
      Label4: TLabel;
      Label8: TLabel;
      meMail: TMaskEdit;
      meDir: TMaskEdit;
      meDir1: TMaskEdit;
      meDir2: TMaskEdit;
      Bevel1: TBevel;
      meDir3: TMaskEdit;
      meDir4: TMaskEdit;
      bitBorra: TfcShapeBtn;
      Label6: TLabel;
      Label9: TLabel;
      Label10: TLabel;
      Label11: TLabel;
      Label12: TLabel;
      Label13: TLabel;
      Label15: TLabel;
      Procedure dtgOfiDesDblClick(Sender: TObject);
      Procedure dtgOfiDesRowChanged(Sender: TObject);
      Procedure BitSalirClick(Sender: TObject);
      Procedure FormActivate(Sender: TObject);
      Procedure Button1Click(Sender: TObject);
      Procedure BitGrabaOFClick(Sender: TObject);
      Procedure BitBtn1Click(Sender: TObject);
      Procedure BitBtn2Click(Sender: TObject);
      Procedure dblcProvinChange(Sender: TObject);
      Procedure dblcDistChange(Sender: TObject);
      Procedure bitBorraClick(Sender: TObject);
   Private
    { Private declarations }
      Procedure CargaUsers;

   Public
    { Public declarations }
   End;

Var
   fUsuDpto: TfUsuDpto;

Implementation

Uses GESDM1;

{$R *.dfm}

{ TfNivUsu }

Procedure TfUsuDpto.CargaUsers;
Var
   xSQL: String;
Begin
   xSQL := 'SELECT A.USERID, A.USERNOM, G.* FROM GES_COB_USU G, TGE007 A, TGE006 C '
      + 'WHERE A.USERID=G.USUARIO '
      + ' AND GRUPOID=''GRPGESCOB'' AND C.OFDESID IS NOT NULL '
      + ' AND G.DPTOID=' + QuotedStr(DM1.cdsUSES.FieldByName('DPTOID').AsString)
      + ' AND A.USERID=C.USERID(+) AND C.FECEXP IS NULL ORDER BY A.USERNOM ';
   DM1.cdsDLabo.Close;
   DM1.cdsDLabo.DataRequest(xSQL);
   DM1.cdsDLabo.Open;

   xSQL := 'SELECT A.USERID, A.USERNOM FROM TGE007 A, TGE006 C '
      + 'WHERE GRUPOID=''GRPGESCOB'' '
      + ' AND A.USERID=C.USERID(+) AND C.FECEXP IS NULL '
      + ' AND NOT EXISTS ( SELECT USUARIO FROM GES_COB_USU G where A.USERID=G.USUARIO) '
      + 'ORDER BY A.USERNOM';
   DM1.cdsResol.Close;
   DM1.cdsResol.DataRequest(xSQL);
   DM1.cdsResol.Open;
End;

Procedure TfUsuDpto.dtgOfiDesDblClick(Sender: TObject);
Begin
   CargaUsers;
End;

Procedure TfUsuDpto.dtgOfiDesRowChanged(Sender: TObject);
Begin
   CargaUsers;
End;

Procedure TfUsuDpto.BitSalirClick(Sender: TObject);
Begin
   Close;
End;

Procedure TfUsuDpto.FormActivate(Sender: TObject);
Var
   xSQL: String;
Begin
   xSQL := 'SELECT CIUDID, CIUDDES, CIUDABR, DPTOID FROM TGE121 ORDER BY DPTOID, CIUDID';
   DM1.cdsProvin.Close;
   DM1.cdsProvin.DataRequest(xSQL);
   DM1.cdsProvin.Open;

   xSQL := 'SELECT ZIPABR,ZIPDES,ZIPID,CIUDID,DPTOID FROM TGE122 ORDER BY DPTOID, CIUDID, ZIPID';
   DM1.cdsDist.Close;
   DM1.cdsDist.DataRequest(xSQL);
   DM1.cdsDist.Open;
   CargaUsers;
End;

Procedure TfUsuDpto.Button1Click(Sender: TObject);
Begin
   If DM1.cdsDLabo.RecordCount <= 0 Then
      Begin
         lblDpto.Caption := '';
         lblDptodes.Caption := '';
         lblUsuario.Caption := '';
         lblUsudes.Caption := '';

         dblcProvin.Text := '';
         dblcProvinChange(Self);

         dblcDist.Text := '';
         dblcDistChange(self);

         meDir.Text := '';
         meDir1.Text := '';
         meDir2.Text := '';
         meDir3.Text := '';
         meDir4.Text := '';
         meTel.Text := '';
         meFax.Text := '';
         meCel.Text := '';
         meMail.Text := '';
      End
   Else
      Begin
         lblDpto.Caption := DM1.cdsDLabo.FieldByName('DPTOID').AsString;
         lblDptodes.Caption := DM1.cdsUSES.FieldByName('DPTODES').AsString;
         lblUsuario.Caption := DM1.cdsDLabo.FieldByName('USUARIO').AsString;
         lblUsudes.Caption := DM1.cdsDLabo.FieldByName('USUNOM').AsString;

         DM1.cdsProvin.Filtered := False;
         DM1.cdsProvin.Filter := 'DPTOID=''' + lblDpto.Caption + '''';
         DM1.cdsProvin.Filtered := true;

         dblcProvin.Text := DM1.cdsDLabo.FieldByName('CIUDID').AsString;
         dblcProvinChange(Self);

         dblcDist.Text := DM1.cdsDLabo.FieldByName('ZIPID').AsString;
         dblcDistChange(self);

         meDir.Text := DM1.cdsDLabo.FieldByName('USUDIR').AsString;
         meDir1.Text := DM1.cdsDLabo.FieldByName('USUDIR2').AsString;
         meDir2.Text := DM1.cdsDLabo.FieldByName('USUDIR3').AsString;
         meDir3.Text := DM1.cdsDLabo.FieldByName('USUDIR4').AsString;
         meDir4.Text := DM1.cdsDLabo.FieldByName('USUDIR5').AsString;

         meTel.Text := DM1.cdsDLabo.FieldByName('USUTEL').AsString;
         meFax.Text := DM1.cdsDLabo.FieldByName('USUFAX').AsString;
         meCel.Text := DM1.cdsDLabo.FieldByName('USUCEL').AsString;
         meMail.Text := DM1.cdsDLabo.FieldByName('USUMAIL').AsString;
         gbOfides.Enabled := True;
         BitGrabaOF.Enabled := True;
      End;
End;

Procedure TfUsuDpto.BitGrabaOFClick(Sender: TObject);
Var
   Boton: Integer;
   xSQL: String;
Begin
   Boton := Application.MessageBox('Seguro De GRABAR DATOS ', 'Datos de Ofides', MB_YESNO + MB_ICONQUESTION);
   If Boton = ID_YES Then
      Begin
         xSQL := 'UPDATE GES_COB_USU '
            + 'SET CIUDID =' + QuotedStr(Trim(dblcProvin.text)) + ', '
            + 'ZIPID  =' + QuotedStr(Trim(dblcDist.Text)) + ', '
            + 'USUDIR =' + QuotedStr(Trim(meDir.Text)) + ', '
            + 'USUDIR2=' + QuotedStr(Trim(meDir1.Text)) + ', '
            + 'USUDIR3=' + QuotedStr(Trim(meDir2.Text)) + ', '
            + 'USUDIR4=' + QuotedStr(Trim(meDir3.Text)) + ', '
            + 'USUDIR5=' + QuotedStr(Trim(meDir4.Text)) + ', '
            + 'USUTEL =' + QuotedStr(Trim(meTel.Text)) + ', '
            + 'USUFAX =' + QuotedStr(Trim(meFax.Text)) + ', '
            + 'USUCEL =' + QuotedStr(Trim(meCel.Text)) + ', '
            + 'USUMAIL=' + QuotedStr(Trim(meMail.Text)) + ' '
            + ' WHERE DPTOID =' + QuotedStr(Trim(lblDpto.CAPTION))
            + ' AND USUARIO=' + QuotedStr(Trim(lblUsuario.CAPTION));
         DM1.DCOM1.AppServer.EjecutaSql(xSQL);
         gbOfides.Enabled := False;

         DM1.cdsDLabo.Edit;
         DM1.cdsDLabo.FieldByname('CIUDID').AsString := dblcProvin.text;
         DM1.cdsDLabo.FieldByname('ZIPID').AsString := dblcDist.Text;
         DM1.cdsDLabo.FieldByname('USUDIR').AsString := meDir.Text;
         DM1.cdsDLabo.FieldByname('USUDIR2').AsString := meDir1.Text;
         DM1.cdsDLabo.FieldByname('USUDIR3').AsString := meDir2.Text;
         DM1.cdsDLabo.FieldByname('USUDIR4').AsString := meDir3.Text;
         DM1.cdsDLabo.FieldByname('USUDIR5').AsString := meDir4.Text;
         DM1.cdsDLabo.FieldByname('USUTEL').AsString := meTel.Text;
         DM1.cdsDLabo.FieldByname('USUFAX').AsString := meFax.Text;
         DM1.cdsDLabo.FieldByname('USUCEL').AsString := meCel.Text;
         DM1.cdsDLabo.FieldByname('USUMAIL').AsString := meMail.Text;
         DM1.cdsDLabo.Post;
      End;
End;

Procedure TfUsuDpto.BitBtn1Click(Sender: TObject);
Var
   xSQL: String;
Begin
   xSQL := 'Insert into GES_COB_USU( DPTOID, ITEM, USUARIO, USUNOM ) '
      + 'Values( ''' + DM1.cdsUSES.FieldByname('DPTOID').AsString + ''', '
      + '''' + DM1.StrZero(inttostr(DM1.cdsResol.recordcount), 3) + ''', '
      + '''' + DM1.cdsResol.FieldByname('USERID').AsString + ''', '
      + '''' + DM1.cdsResol.FieldByname('USERNOM').AsString + ''' )';
   DM1.DCOM1.AppServer.EjecutaSql(xSQL);
   CargaUsers;
End;

Procedure TfUsuDpto.BitBtn2Click(Sender: TObject);
Var
   xSQL: String;
Begin
   xSQL := 'DELETE FROM GES_COB_USU '
      + 'WHERE DPTOID =''' + DM1.cdsDLabo.FieldByname('DPTOID').AsString + ''' '
      + ' AND ITEM   =''' + DM1.cdsDLabo.FieldByname('ITEM').AsString + ''' '
      + ' AND USUARIO=''' + DM1.cdsDLabo.FieldByname('USUARIO').AsString + ''' ';
   DM1.DCOM1.AppServer.EjecutaSql(xSQL);
   CargaUsers;
End;

Procedure TfUsuDpto.dblcProvinChange(Sender: TObject);
Begin
   If DM1.cdsProvin.Locate('CIUDID', VarArrayof([dblcProvin.text]), []) Then
      Begin
         Edtprovin.Text := DM1.cdsProvin.FieldByName('CIUDDES').Asstring;
         DM1.cdsDist.Filtered := False;
         DM1.cdsDist.Filter := 'DPTOID=''' + lblDpto.Caption + ''' and CIUDID=''' + dblcProvin.text + '''';
         DM1.cdsDist.Filtered := true;
      End
   Else
      Begin
         If Length(dblcProvin.Text) <> 2 Then
            Begin
               Beep;
               EdtProvin.Text := '';
            End;
      End;
   dblcDist.text := '';
   edtDist.text := '';

End;

Procedure TfUsuDpto.dblcDistChange(Sender: TObject);
Begin
   If DM1.cdsDist.Locate('ZIPID', VarArrayof([dblcDist.text]), []) Then
      Begin
         edtDist.Text := DM1.cdsDist.FieldByName('ZIPDES').Asstring;
      End
   Else
      Begin
         If Length(dblcDist.Text) <> 2 Then
            Begin
               Beep;
               EdtDist.Text := '';
            End;
      End
End;

Procedure TfUsuDpto.bitBorraClick(Sender: TObject);
Begin
   gbOfides.Enabled := False;
   lblDpto.Caption := '';
   lblDptodes.Caption := '';
   lblUsuario.Caption := '';
   lblUsudes.Caption := '';

   dblcProvin.Text := '';
   dblcProvinChange(Self);

   dblcDist.Text := '';
   dblcDistChange(self);

   meDir.Text := '';
   meDir1.Text := '';
   meDir2.Text := '';
   meDir3.Text := '';
   meDir4.Text := '';
   meTel.Text := '';
   meFax.Text := '';
   meCel.Text := '';
   meMail.Text := '';
End;

End.

