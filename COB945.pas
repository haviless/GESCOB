Unit COB945;

Interface

Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, Buttons, wwdblook, ExtCtrls;

Type
   TfCamGest = Class(TForm)
      GroupBox1: TGroupBox;
      BitGrabar: TBitBtn;
      BitSalir: TBitBtn;
      Panel3: TPanel;
      EdtDesGest: TEdit;
      Label6: TLabel;
      dblDist: TwwDBLookupCombo;
      Panel1: TPanel;
      EdtAsoCodMod: TEdit;
      Panel4: TPanel;
      EdtTelf: TEdit;
      Panel2: TPanel;
      EdtAsoApeNom: TEdit;
      Panel5: TPanel;
      mDireccion: TMemo;
      Label1: TLabel;
      Label2: TLabel;
      Label3: TLabel;
      Label4: TLabel;
      Procedure BitSalirClick(Sender: TObject);
      Procedure dblDistChange(Sender: TObject);
      Procedure BitGrabarClick(Sender: TObject);
   Private
    { Private declarations }
   Public
    { Public declarations }
   End;

Var
   fCamGest: TfCamGest;

Implementation

Uses GESDM1, COB944;

{$R *.dfm}

Procedure TfCamGest.BitSalirClick(Sender: TObject);
Begin
   Close;
End;

Procedure TfCamGest.dblDistChange(Sender: TObject);
Begin
   If DM1.cdsTPension.Locate('IDDIST', VarArrayof([dblDist.text]), []) Then
      Begin
         EdtDesGest.Text := DM1.cdsTPension.FieldByName('DESDIST').Asstring;
      End
   Else
      Begin
         If Length(dblDist.Text) <> 2 Then
            Begin
               Beep;
               EdtDesGest.Text := '';
            End;
      End

End;

Procedure TfCamGest.BitGrabarClick(Sender: TObject);
Var
   xSQL: String;
Begin
   Screen.Cursor := crHourGlass;
   xSQL := 'UPDATE CFC001 SET IDDIST=' + QuotedStr(dblDist.Text) + ',USUARIO=' + QuotedStr(DM1.wUsuario) + ',HREG=SYSDATE WHERE ASOID=' + QuotedStr(DM1.cdsProvin.FieldByName('ASOID').AsString) + ' AND PERIODO=' + QuotedStr(Trim(fDistGestion.dbsAnoIni.Text + Format('%.2d', [StrToInt(Trim(fDistGestion.dbsMesIni.Text))])));
   DM1.DCOM1.AppServer.EjecutaSql(xSQL);
   Screen.Cursor := crDefault;
   MessageDlg(' Registro De Asociado Cambiado a Gestión Por : ' + pChar(EdtDesGest.Text), mtInformation, [mbOk], 0);
   Close;
End;

End.
