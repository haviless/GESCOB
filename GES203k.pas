Unit GES203k;

Interface

Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, Buttons;

Type
   TfIngObsSup = Class(TForm)
      BitGrabar: TBitBtn;
      BitSalir: TBitBtn;
      mObsSup: TMemo;
      chkAlta: TCheckBox;
      Procedure BitSalirClick(Sender: TObject);
      Procedure BitGrabarClick(Sender: TObject);
   Private
    { Private declarations }
   Public
    //INICIO HPP_201112_GESCOB
    xUsuarioGestor :string;
    //FIN HPP_201112_GESCOB
   End;

Var
   fIngObsSup: TfIngObsSup;

Implementation
//INICIO HPP_201112_GESCOB
//NO SE UTILIZA
Uses (*GES203,*) GESDM1, GES203j;
//FIN HPP_201112_GESCOB
{$R *.dfm}

Procedure TfIngObsSup.BitSalirClick(Sender: TObject);
Begin
   Close;
End;

Procedure TfIngObsSup.BitGrabarClick(Sender: TObject);
Var
//INICIO HPP_201112_GESCOB
//NO SE DEDUCE, SE OBTIENE DEL FORMULARIO QUE LO INVOCA
   xSQL, (*xUser,*) xAlta: String;
//FIN HPP_201112_GESCOB
Begin
   If Length(Trim(mObsSup.Text)) = 0 Then
      Begin
         MessageDlg('NO SE PUEDE GRABAR, DEBE INGRESAR LA OBSERVACION', mtError, [mbOk], 0);
         Exit;
      End;
   xAlta := 'N';
   If chkAlta.Checked Then xAlta := 'S';
   //INICIO HPP_201112_GESCOB
   //NO SE DEDUCE, SE OBTIENE DEL FORMULARIO QUE LO INVOCA
   xSQL := 'INSERT INTO GES_OBS_SUP(USERID,FECOBS,OBSSUP,HREG,USUSUP,PRIORIDAD) VALUES ' +
      '(' + QuotedStr(xUsuarioGestor) + ',' + QuotedStr(DateToStr(DM1.FechaSys)) + ',' + QuotedStr(mObsSup.Text) + ',SYSDATE,' + QuotedStr(DM1.wUsuario) + ',' + QuotedStr(xAlta) + ')';
   DM1.DCOM1.AppServer.EjecutaSql(xSQL);
   (*
   If StrToInt(Copy(DM1.NivelUsuario(DM1.wUsuario), 2, 1)) >= 2 Then
      xUser := fGestInt.dblUserInt.Text
   Else
      Begin
         fObsNSup.dtgObsSupIButton.Enabled := False;
         xUser := DM1.wUsuario;
      End;
   *)   
   xSQL := 'SELECT USERID,FECOBS,OBSSUP,HREG,USUSUP,PRIORIDAD FROM GES_OBS_SUP WHERE USERID=' + QuotedStr(xUsuarioGestor) + ' ORDER BY HREG DESC';
   //FIN HPP_201112_GESCOB
   DM1.cdsDSocioE.Close;
   DM1.cdsDSocioE.DataRequest(xSQL);
   DM1.cdsDSocioE.Open;
   Close;

End;

End.
