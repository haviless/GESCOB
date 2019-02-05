// Inicio Uso Estándares: 01/08/2011
// Unidad : Gestión de Cobranzas
// Formulario : fInfCorreo
// Fecha de Creación : 30/09/2014
// Autor : Equipo de Sistemas
// Objetivo : Correos
// Actualizaciones:
// HPC_201402_GESCOB : Información de Contactabilidad (Direcciones, teléfonos y correos electrónicos) (1.9)
// SPP_201402_GESCOB : Se realiza el pase a producción a partir del HPC_201402_GESCOB

Unit GES203s;

Interface

Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, ExtCtrls, wwdblook, Buttons;
Type
   TfInfCorreo = Class(TForm)
      grpTelAso: TGroupBox;
      dblTip: TwwDBLookupCombo;
      Panel3: TPanel;
      EdtDesTip: TEdit;
      Label6: TLabel;
      EdtCorreo: TEdit;
      mObs: TMemo;
      Label1: TLabel;
      Label2: TLabel;
      BitSalir: TBitBtn;
      chkActivo: TCheckBox;
      BitGrabar: TBitBtn;
      Procedure dblTipChange(Sender: TObject);
      Procedure BitSalirClick(Sender: TObject);
      Procedure FormKeyPress(Sender: TObject; Var Key: Char);
      Procedure BitGrabarClick(Sender: TObject);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure FormCreate(Sender: TObject);
   Private
    { Private declarations }
   Public
    { Public declarations }
    xsAsoId : string;
   End;

Var
   fInfCorreo: TfInfCorreo;

Implementation

Uses GESDM1;

{$R *.dfm}

(******************************************************************************)
procedure TfInfCorreo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

(******************************************************************************)
procedure TfInfCorreo.FormCreate(Sender: TObject);
VAR xSQL : String;
begin
   xSQL := 'SELECT CODTIPCOR, DESTIPCOR FROM GES_TIP_COR_MAE ORDER BY CODTIPCOR';
   DM1.cdsTPension.Close;
   DM1.cdsTPension.DataRequest(xSQL);
   DM1.cdsTPension.Open;
   dblTip.LookupTable := DM1.cdsTPension;
   dblTip.LookupField := 'CODTIPCOR';
   dblTip.Selected.Clear;
   dblTip.Selected.Add('CODTIPCOR'#9'3'#9'Código'#9#9);
   dblTip.Selected.Add('DESTIPCOR'#9'20'#9'Descripción'#9#9);
end;

(******************************************************************************)
Procedure TfInfCorreo.BitSalirClick(Sender: TObject);
Begin
   Close;
End;


(******************************************************************************)
Procedure TfInfCorreo.dblTipChange(Sender: TObject);
Begin
   If DM1.cdsTPension.Locate('CODTIPCOR', VarArrayof([dblTip.Text]), []) Then
      Begin
         EdtDesTip.Text := DM1.cdsTPension.fieldbyname('DESTIPCOR').AsString;
      End
   Else
      Begin
         If Length(dblTip.Text) <> 2 Then
            Begin
               Beep;
               EdtDesTip.Text := '';
            End;
      End;
End;
(******************************************************************************)

Procedure TfInfCorreo.FormKeyPress(Sender: TObject; Var Key: Char);
Begin
   If Key = #13 Then
      Begin
         Key := #0;
         Perform(WM_NEXTDLGCTL, 0, 0);
      End

End;
(******************************************************************************)

Procedure TfInfCorreo.BitGrabarClick(Sender: TObject);
Var
   xSQL, xActivo: String;
Begin
   If Length(Trim(dblTip.Text)) = 0 Then
      Begin
         MessageDlg('DEBE SELECCIONAR UN TIPO DE CORREO!!', mtError, [mbOk], 0);
         Exit;
      End;
   If (Length(Trim(EdtCorreo.Text)) = 0) OR (not DM1.fn_valida_email(EdtCorreo.Text))Then
      Begin
         MessageDlg('DEBE INGRESAR UN CORREO ELECTRÓNICO VALIDO!!', mtError, [mbOk], 0);
         Exit;
      End;

   If chkActivo.Checked Then xActivo := 'S' else xActivo := 'N';
   If DM1.xNuevo = 'S' Then
      Begin
         xSQL := 'INSERT INTO GES_COR_ASO(CODTIPCOR, CORREO, ACTIVO, '
               + '                        ASOID, USUARIO, HREG, '
               + '                        OBSCOR, CODFUEINF) '
               + '  VALUES (' + QuotedStr(dblTip.Text) + ', SUBSTR(UPPER(' + QuotedStr(EdtCorreo.Text) + '),1,100), ' + QuotedStr(xActivo) + ', '
               +                QuotedStr(xsAsoId) + ', ' + QuotedStr(DM1.wUsuario) + ', SYSDATE, '
               + '           SUBSTR(UPPER(' + QuotedStr(mObs.Text) + '),1,100), ''01'')';
         DM1.DCOM1.AppServer.EjecutaSql(xSQL);
      End;
   ModalResult := mrOK;
End;
(******************************************************************************)

End.
