// Inicio Uso Estándares: 01/08/2011
// Unidad : Gestión de Cobranzas
// Formulario : fInfmImp
// Fecha de Creación :
// Autor : Equipo de Sistemas
// Objetivo : Telefonos
// Actualizaciones:
// HPC_201402_GESCOB : Información de Contactabilidad (Direcciones, teléfonos y correos electrónicos) (1.9)
// SPP_201402_GESCOB : Se realiza el pase a producción a partir del HPC_201402_GESCOB

Unit GES203l;

Interface

Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, ExtCtrls, wwdblook, Buttons;
Type
   TfInfmImp = Class(TForm)
      grpTelAso: TGroupBox;
      dblTipTel: TwwDBLookupCombo;
      Panel3: TPanel;
      EdtDesTip: TEdit;
      Label6: TLabel;
      EdtNroTel: TEdit;
      mObsTel: TMemo;
      Label1: TLabel;
      Label2: TLabel;
      BitSalir: TBitBtn;
      chkActivo: TCheckBox;
      BitGrabar: TBitBtn;
      Procedure dblTipTelChange(Sender: TObject);
      Procedure BitSalirClick(Sender: TObject);
      Procedure FormKeyPress(Sender: TObject; Var Key: Char);
      Procedure BitGrabarClick(Sender: TObject);
    // INICIO : SPP_201402_GESCOB
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    // FIN : SPP_201402_GESCOB
   Private
    { Private declarations }
   Public
    { Public declarations }
    // INICIO : SPP_201402_GESCOB
    xsAsoid : string;
    // FIN : SPP_201402_GESCOB
   End;

Var
   fInfmImp: TfInfmImp;

Implementation
// INICIO : SPP_201402_GESCOB
Uses GESDM1;
// FIN : SPP_201402_GESCOB
{$R *.dfm}

Procedure TfInfmImp.dblTipTelChange(Sender: TObject);
Begin
   If DM1.cdsTPension.Locate('IDTEL', VarArrayof([dblTipTel.Text]), []) Then
      Begin
         EdtDesTip.Text := DM1.cdsTPension.fieldbyname('DESCRIP').AsString;
      End
   Else
      Begin
         If Length(dblTipTel.Text) <> 2 Then
            Begin
               Beep;
               EdtDesTip.Text := '';
            End;
      End;

End;

Procedure TfInfmImp.BitSalirClick(Sender: TObject);
Begin
   Close;
End;

Procedure TfInfmImp.FormKeyPress(Sender: TObject; Var Key: Char);
Begin
   If Key = #13 Then
      Begin
         Key := #0;
         Perform(WM_NEXTDLGCTL, 0, 0);
      End

End;

// INICIO : SPP_201402_GESCOB
Procedure TfInfmImp.BitGrabarClick(Sender: TObject);
Var
   xSQL, xActivo : String;
Begin
   If Length(Trim(dblTipTel.Text)) = 0 Then
      Begin
         MessageDlg('DEBE SELECCIONAR UN TIPO DE TELEFONO!!', mtError, [mbOk], 0);
         Exit;
      End;
   If Length(Trim(EdtNroTel.Text)) = 0 Then
      Begin
         MessageDlg('DEBE INGRESAR UN NUMERO TELEFONICO!!', mtError, [mbOk], 0);
         Exit;
      End;

   (*
   If DM1.xSgr = 'PRE' Then
      xAsoId := DM1.cdsAso.fieldByname('ASOID').AsString
   Else
        //xAsoId:=DM1.cdsMovCre.fieldByname('ASOID').AsString;
      xAsoId := sCodAsociado;
   *)

   xActivo := 'N';
   If chkActivo.Checked Then xActivo := 'S';

   If DM1.xNuevo = 'S' Then
      Begin
         xSQL := 'INSERT INTO GES_TEL_ASO(IDTIPTEL, NROTELF, ACTIVO, ASOID, '
               + '                        USUARIO, HREG, OBSTEL, CODFUEINF) '
               + '  VALUES (' + QuotedStr(dblTipTel.Text) + ', ' + QuotedStr(EdtNroTel.Text) + ', ' + QuotedStr(xActivo) + ', ' + QuotedStr(xsAsoId) + ', '
               +            QuotedStr(DM1.wUsuario) + ', SYSDATE, SUBSTR(UPPER(' + QuotedStr(mObsTel.Text) + '),1,100), ''01'')';
         DM1.DCOM1.AppServer.EjecutaSql(xSQL);
      End;
   ModalResult := mrOK;      
   (*
   If DM1.xNuevo = 'N' Then
      Begin
         xSQL := 'UPDATE GES_TEL_ASO SET ACTIVO=' + QuotedStr(xActivo) + ' WHERE ASOID=' + QuotedStr(xsAsoId) + ' AND NROTELF=' + QuotedStr(EdtNroTel.Text);
         DM1.DCOM1.AppServer.EjecutaSql(xSQL);
      End;
   xSQL := 'SELECT IDTIPTEL,B.DESCRIP,NROTELF,ACTIVO,ASOID,USUARIO,HREG,OBSTEL, A.ROWID FROM GES_TEL_ASO A,(SELECT ID,DESCRIP FROM  ' +
      '(SELECT ''01'' ID,''FIJO'' DESCRIP FROM DUAL UNION SELECT ''02'' ID,''CELULAR'' DESCRIP FROM DUAL UNION SELECT ''03'' ID,''FAX'' DESCRIP FROM DUAL)) B ' +
      ' WHERE ASOID=' + QuotedStr(xAsoId) + ' AND A.IDTIPTEL=B.ID AND ACTIVO=''S''';
   // If DM1.xSgr <> 'PRE' Then fMasDatos.chkSolAct.Checked := True;
   DM1.cdsDocPago.Close;
   DM1.cdsDocPago.DataRequest(xSQL);
   DM1.cdsDocPago.Open;
   Close;
   *)


End;
// FIN : SPP_201402_GESCOB
// INICIO : SPP_201402_GESCOB
(******************************************************************************)

procedure TfInfmImp.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;
(******************************************************************************)

procedure TfInfmImp.FormCreate(Sender: TObject);
VAR xSQL : String;
begin
   xSQL := 'SELECT CODTIPTEL IDTEL, DESTIPTEL DESCRIP FROM GES_TIP_TEL_MAE ORDER BY CODTIPTEL';
   DM1.cdsTPension.Close;
   DM1.cdsTPension.DataRequest(xSQL);
   DM1.cdsTPension.Open;
   dblTipTel.LookupTable := DM1.cdsTPension;
   dblTipTel.LookupField := 'IDTEL';
   dblTipTel.Selected.Clear;
   dblTipTel.Selected.Add('IDTEL'#9'3'#9'Código'#9#9);
   dblTipTel.Selected.Add('DESCRIP'#9'20'#9'Descripción'#9#9);

end;
(******************************************************************************)
// FIN : SPP_201402_GESCOB

End.

