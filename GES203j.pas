Unit GES203j;

Interface

Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, Buttons, Wwdbigrd, Grids, Wwdbgrid, DB, ExtCtrls;

Type
   TfObsNSup = Class(TForm)
      dtgObsSup: TwwDBGrid;
      dtgObsSupIButton: TwwIButton;
      BitSalir: TBitBtn;
      Shape1: TShape;
      Label1: TLabel;
      chkAlta: TCheckBox;
      Procedure BitSalirClick(Sender: TObject);
      Procedure dtgObsSupIButtonClick(Sender: TObject);
      Procedure dtgObsSupDblClick(Sender: TObject);
      Procedure dtgObsSupDrawDataCell(Sender: TObject; Const Rect: TRect;
         Field: TField; State: TGridDrawState);
      Procedure chkAltaClick(Sender: TObject);
    //INICIO HPP_201112_GESCOB
    //AGREGAR EVENTO QUE BLOQUEA O DESBLOQUEA CONTROL
    //SEGUN NIVEL DE USUARIO
    procedure FormCreate(Sender: TObject);
    //FIN HPP_201112_GESCOB
   Private
    { Private declarations }
   Public
      //INICIO HPP_201112_GESCOB
      //VARIABLE QUE OBTENDRA EL USUARIO GESTOR
      xUsuarioGestor: String;
      //FIN HPP_201112_GESCOB
   End;

Var
   fObsNSup: TfObsNSup;

Implementation
//INICIO HPP_201112_GESCOB
//RETIRAR FORMA QUE NO SE UTILIZA
Uses GES203k, GESDM1(*, GES203*);
//FIN HPP_201112_GESCOB

{$R *.dfm}

Procedure TfObsNSup.BitSalirClick(Sender: TObject);
Begin
   Close;
End;

Procedure TfObsNSup.dtgObsSupIButtonClick(Sender: TObject);
Begin
   Try
      fIngObsSup := TfIngObsSup.create(Self);
      //INICIO HPP_201112_GESCOB
      //ASIGNA USUARIO GESTOR A LA FORMA fIngObsSup
      fIngObsSup.xUsuarioGestor := self.xUsuarioGestor;
      //FIN HPP_201112_GESCOB
      fIngObsSup.ShowModal;
   Finally
      fIngObsSup.Free;
   End;

End;

Procedure TfObsNSup.dtgObsSupDblClick(Sender: TObject);
Begin
   MessageDlg(DM1.cdsDSocioE.FieldByName('OBSSUP').AsString, mtInformation, [mbOk], 0);
End;

Procedure TfObsNSup.dtgObsSupDrawDataCell(Sender: TObject;
   Const Rect: TRect; Field: TField; State: TGridDrawState);
Begin
   If DM1.cdsDSocioE.FieldByName('PRIORIDAD').AsString = 'S' Then
      Begin
         dtgObsSup.Canvas.Font.Color := clRed;
         dtgObsSup.DefaultDrawDataCell(rect, Field, State);
      End;
End;

Procedure TfObsNSup.chkAltaClick(Sender: TObject);
Var
   //INICIO HPP_201112_GESCOB
   //RETIRAR VARIABLE QUE NO SE UTILIZA  
   xSQL(*, xUser*): String;
   //FIN HPP_201112_GESCOB
Begin
   //INICIO HPP_201112_GESCOB
   //LA CONSULTA NO DEBE SER CON RESPETO AL USUARIO QUE HA INICIADO SESSION
   //DEBE SER CON RESPECTO AL USURIO GESTOR
   (*
   If StrToInt(Copy(DM1.NivelUsuario(DM1.wUsuario), 2, 1)) >= 2 Then
      xUser := fGestInt.dblUserInt.Text
   Else
      Begin
         fObsNSup.dtgObsSupIButton.Enabled := False;
         xUser := DM1.wUsuario;
      End;
   *)
   If Not chkAlta.Checked Then
      xSQL := 'SELECT USERID,FECOBS,OBSSUP,HREG,USUSUP,PRIORIDAD FROM GES_OBS_SUP WHERE USERID=' + QuotedStr(xUsuarioGestor) + ' ORDER BY HREG DESC'
   Else
      xSQL := 'SELECT USERID,FECOBS,OBSSUP,HREG,USUSUP,PRIORIDAD FROM GES_OBS_SUP WHERE USERID=' + QuotedStr(xUsuarioGestor) + ' AND PRIORIDAD=''S'' ORDER BY HREG DESC';
   //FIN HPP_201112_GESCOB
   DM1.cdsDSocioE.Close;
   DM1.cdsDSocioE.DataRequest(xSQL);
   DM1.cdsDSocioE.Open;
End;

//INICIO HPP_201112_GESCOB
//AGREGAR EVENTO QUE BLOQUEA O DESBLOQUEA CONTROL
//SEGUN NIVEL DE USUARIO
procedure TfObsNSup.FormCreate(Sender: TObject);
begin
   dtgObsSupIButton.Enabled := (StrToInt(Copy(DM1.NivelUsuario(DM1.wUsuario), 2, 1)) >= 2);
end;
//FIN HPP_201112_GESCOB
End.
