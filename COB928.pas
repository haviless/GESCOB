Unit COB928;

Interface

Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, ExtCtrls, Mask, wwdbedit, wwdblook, Buttons;

Type
   TfDatGes = Class(TForm)
      gpbDatGest: TGroupBox;
      Label8: TLabel;
      Label9: TLabel;
      Label10: TLabel;
      Label12: TLabel;
      Label17: TLabel;
      Label18: TLabel;
      lkcDpto: TwwDBLookupCombo;
      lkcProv: TwwDBLookupCombo;
      lkcDist: TwwDBLookupCombo;
      dbeDirec: TwwDBEdit;
      dbeTel1: TwwDBEdit;
      dbeTel2: TwwDBEdit;
      Panel1: TPanel;
      edtDpto: TEdit;
      Panel2: TPanel;
      edtProv: TEdit;
      Panel3: TPanel;
      edtDist: TEdit;
      BitSalir: TBitBtn;
      BitGrabar: TBitBtn;
      Procedure FormKeyPress(Sender: TObject; Var Key: Char);
      Procedure BitSalirClick(Sender: TObject);
      Procedure lkcDptoChange(Sender: TObject);
      Procedure edtDptoChange(Sender: TObject);
      Procedure lkcProvChange(Sender: TObject);
      Procedure edtProvChange(Sender: TObject);
      Procedure lkcDistChange(Sender: TObject);
      Procedure BitGrabarClick(Sender: TObject);
   Private
    { Private declarations }
   Public
    { Public declarations }
   End;

Var
   fDatGes: TfDatGes;

Implementation

Uses GESDM1;

{$R *.dfm}

Procedure TfDatGes.FormKeyPress(Sender: TObject; Var Key: Char);
Begin
   If Key = #13 Then
      Begin
         Key := #0;
         Perform(WM_NEXTDLGCTL, 0, 0);
      End

End;

Procedure TfDatGes.BitSalirClick(Sender: TObject);
Begin
   Close;
End;

Procedure TfDatGes.lkcDptoChange(Sender: TObject);
Begin
   If DM1.cdsPadre.Locate('DPTOID', VarArrayof([lkcDpto.text]), []) Then
      Begin
         EdtDpto.Text := DM1.cdsPadre.FieldByName('DPTODES').Asstring
      End
   Else
      Begin
         If Length(lkcDpto.Text) <> 2 Then
            Begin
               Beep;
               EdtDpto.Text := '';
            End;
      End

End;

Procedure TfDatGes.edtDptoChange(Sender: TObject);
Begin
   DM1.cdsHijo.Close;
   DM1.cdsHijo.DataRequest('SELECT DPTOID||CIUDID AS PROVID,' +
      'CIUDDES AS PROVDES' +
      ' FROM TGE121' +
      ' WHERE DPTOID=''' + TRIM(lkcDpto.Text) + ''' ');
   DM1.cdsHijo.Open;

End;

Procedure TfDatGes.lkcProvChange(Sender: TObject);
Begin
   If DM1.cdsHijo.Locate('PROVID', lkcProv.Text, []) Then
      edtProv.Text := DM1.cdsHijo.FieldByName('PROVDES').asstring
   Else
      edtProv.Text := '';

End;

Procedure TfDatGes.edtProvChange(Sender: TObject);
Begin
   DM1.cdsSAso.Close;
   DM1.cdsSAso.DataRequest('SELECT * FROM APO122 WHERE CIUDID=''' + TRIM(lkcProv.Text) + ''' ');
   DM1.cdsSAso.Open;

End;

Procedure TfDatGes.lkcDistChange(Sender: TObject);
Begin
   If DM1.cdsSAso.Locate('ZIPID', lkcDist.Text, []) Then
      edtDist.Text := DM1.cdsSAso.FieldByName('ZIPDES').asstring
   Else
      edtDist.Text := '';

End;

Procedure TfDatGes.BitGrabarClick(Sender: TObject);
Var
   Boton: Integer;
   xSQL: String;
Begin
   Boton := Application.MessageBox('Seguro De Actualizar Estos Datos En El Mestro De Asociados', 'Gestión De Cobranza', MB_YESNO + MB_ICONQUESTION);
   If Boton = ID_YES Then
      Begin
         xSQL := 'UPDATE APO201 '
            + 'SET DPTOID=' + QuotedStr(lkcDpto.Text) + ','
            + '    CIUDID=' + QuotedStr(lkcProv.Text) + ','
            + '    ZIPID=' + QuotedStr(lkcDist.Text) + ','
            + '    ASODIR=' + QuotedStr(dbeDirec.Text) + ','
            + '    ASOTELF1=' + QuotedStr(dbeTel1.Text) + ','
            + '    ASOTELF2=' + QuotedStr(dbeTel2.Text) + ' '
            + 'WHERE ASOID=' + QuotedStr(DM1.cdsMovCre.fieldByname('ASOID').AsString);
   //   DM1.DCOM1.AppServer.EjecutaSql(xSQL);
         Close;
      End;
End;

End.
