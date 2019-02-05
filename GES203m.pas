// Inicio Uso Estándares: 01/08/2011
// Unidad : Gestión de Cobranzas
// Formulario : fInfDirecc
// Fecha de Creación :
// Autor : Equipo de Sistemas
// Objetivo : Direcciones
// Actualizaciones:
// HPC_201402_GESCOB : Información de Contactabilidad (Direcciones, teléfonos y correos electrónicos) (1.9)
// SPP_201402_GESCOB : Se realiza el pase a producción a partir del HPC_201402_GESCOB

Unit GES203m;

Interface

Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, ExtCtrls, wwdblook, Buttons;

Type
   TfInfDirecc = Class(TForm)
      grpDetDir: TGroupBox;
      Label5: TLabel;
      Label7: TLabel;
      Label11: TLabel;
      lkcDpto: TwwDBLookupCombo;
      Panel1: TPanel;
      edtDpto: TEdit;
      lkcProv: TwwDBLookupCombo;
      Panel2: TPanel;
      edtProv: TEdit;
      lkcDist: TwwDBLookupCombo;
      Panel3: TPanel;
      edtDist: TEdit;
      mDireccion: TMemo;
      chkActivo: TCheckBox;
      BitGrabar: TBitBtn;
      Label1: TLabel;
      mObsDir: TMemo;
      Label2: TLabel;
      BitSalir: TBitBtn;
      Procedure lkcDptoChange(Sender: TObject);
      Procedure edtDptoChange(Sender: TObject);
      Procedure lkcProvChange(Sender: TObject);
      Procedure edtProvChange(Sender: TObject);
      Procedure lkcDistChange(Sender: TObject);
      Procedure BitGrabarClick(Sender: TObject);
      Procedure FormKeyPress(Sender: TObject; Var Key: Char);
      Procedure BitSalirClick(Sender: TObject);
    // INICIO : SPP_201402_GESCOB
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    // FIN : SPP_201402_GESCOB
   Private
    { Private declarations }
   Public
    { Public declarations }
    // INICIO : SPP_201402_GESCOB
    xsAsoId : string;
    // FIN : SPP_201402_GESCOB
   End;

Var
   fInfDirecc: TfInfDirecc;

Implementation
// INICIO : SPP_201402_GESCOB
Uses GESDM1(*, GES203c*);
// FIN : SPP_201402_GESCOB

{$R *.dfm}

Procedure TfInfDirecc.lkcDptoChange(Sender: TObject);
Begin
   If DM1.cdsPadre.Locate('DPTOID', VarArrayof([lkcDpto.text]), []) Then
      Begin
         EdtDpto.Text := DM1.cdsPadre.FieldByName('DPTODES').Asstring;
         If lkcDpto.Enabled Then lkcProv.Enabled := True;
      End
   Else
      Begin
         If Length(lkcDpto.Text) <> 2 Then
            Begin
               Beep;
               lkcProv.Enabled := False;
               EdtDpto.Text := '';
            End;
      End

End;

Procedure TfInfDirecc.edtDptoChange(Sender: TObject);
Begin
   DM1.cdsHijo.Close;
   DM1.cdsHijo.DataRequest('SELECT DPTOID||CIUDID AS PROVID,' +
      'CIUDDES AS PROVDES' +
      ' FROM TGE121' +
      ' WHERE DPTOID=' + QuotedStr(Trim(lkcDpto.Text)));
   DM1.cdsHijo.Open;
   If DM1.cdsHijo.RecordCount > 0 Then
      lkcProv.Enabled := True
   Else
      lkcProv.Enabled := False;

End;

Procedure TfInfDirecc.lkcProvChange(Sender: TObject);
Begin
   If DM1.cdsHijo.Locate('PROVID', lkcProv.Text, []) Then
      Begin
         edtProv.Text := DM1.cdsHijo.FieldByName('PROVDES').asstring;
         If lkcProv.Enabled Then lkcDist.Enabled := True;
      End
   Else
      Begin
         edtProv.Text := '';
         lkcDist.Enabled := False;
      End;

End;

Procedure TfInfDirecc.edtProvChange(Sender: TObject);
Begin
   DM1.cdsSAso.Close;
   DM1.cdsSAso.DataRequest('SELECT * FROM APO122 WHERE CIUDID=''' + TRIM(lkcProv.Text) + ''' ');
   DM1.cdsSAso.Open;
   If DM1.cdsSAso.RecordCount > 0 Then
      lkcDist.Enabled := True
   Else
      lkcDist.Enabled := False;
End;

Procedure TfInfDirecc.lkcDistChange(Sender: TObject);
Begin
   If DM1.cdsSAso.Locate('ZIPID', lkcDist.Text, []) Then
      edtDist.Text := DM1.cdsSAso.FieldByName('ZIPDES').asstring
   Else
      edtDist.Text := '';

End;
// INICIO : SPP_201402_GESCOB
Procedure TfInfDirecc.BitGrabarClick(Sender: TObject);
Var
   xSQL, xActivo(*, xAsoId*): String;
Begin
   If Length(Trim(edtDpto.Text)) = 0 Then
      Begin
         MessageDlg('DEBE SELECCIONAR UN DEPARTAMENTO!!', mtError, [mbOk], 0);
         Exit;
      End;

   If Length(Trim(edtProv.Text)) = 0 Then
      Begin
         MessageDlg('DEBE SELECCIONAR UNA PROVINCIA!!', mtError, [mbOk], 0);
         Exit;
      End;

   If Length(Trim(edtDist.Text)) = 0 Then
      Begin
         MessageDlg('DEBE SELECCIONAR UN DISTRITO!!', mtError, [mbOk], 0);
         Exit;
      End;

   If Length(Trim(mDireccion.Text)) = 0 Then
      Begin
         MessageDlg('DEBE INGRESAR UNA DIRECCION!!', mtError, [mbOk], 0);
         Exit;
      End;
   //xAsoId := DM1.cdsMovCre.fieldByname('ASOID').AsString;
   xActivo := 'N';
   //xAsoId := sCodAsociado;
   If chkActivo.Checked Then xActivo := 'S';

   If DM1.xNuevo = 'S' Then
      Begin
         IF chkActivo.Checked THEN
         BEGIN
           xSQL := 'UPDATE GES_DOM_ASO '
                 + '   SET ACTIVO = ''N'' '
                 + '      ,MODREG = SYSDATE '
                 + '      ,USUMOD = ' + QuotedStr(DM1.wUsuario)
                 + ' WHERE ASOID = ' + QuotedStr(xsAsoId)
                 + '   AND NVL(ACTIVO, ''N'') = ''S'' ';
           DM1.DCOM1.AppServer.EjecutaSql(xSQL);
         END;
         xSQL := 'INSERT INTO GES_DOM_ASO(ASODIR, UBIGEO, ACTIVO, '
               + '                        ASOID, USUARIO, HREG, OBSTEL, CODFUEINF) '
               + ' VALUES (SUBSTR(UPPER(' + QuotedStr(mDireccion.Text) + '),1,150),' + QuotedStr(lkcDist.Text) + ',' + QuotedStr(xActivo) + ','
               +           QuotedStr(xsAsoId) + ', '+ QuotedStr(DM1.wUsuario) +', SYSDATE, SUBSTR(UPPER(' + QuotedStr(mObsDir.Text) + '),1,100), ''01'')';
         DM1.DCOM1.AppServer.EjecutaSql(xSQL);
      End;
   ModalResult := mrOK;
   (*
   If DM1.xNuevo = 'N' Then
      Begin
         xSQL := 'UPDATE GES_DOM_ASO SET ACTIVO=' + QuotedStr(xActivo) + ' WHERE ASOID=' + QuotedStr(xAsoId) + ' AND ROWID=' + QuotedStr(DM1.cdsMGrupo.FieldByName('ROWID').AsString);
         ;
         DM1.DCOM1.AppServer.EjecutaSql(xSQL);
      End;
    *)
   (*
   xSQL := 'SELECT ACTIVO,ASODIR,USUARIO,HREG,UBIGEO,ASOID,OBSTEL, ROWID FROM GES_DOM_ASO WHERE ASOID=' + QuotedStr(xAsoId) + ' AND ACTIVO=''S'' ORDER BY HREG DESC';
   DM1.cdsMGrupo.Close;
   DM1.cdsMGrupo.DataRequest(xSQL);
   DM1.cdsMGrupo.Open;
   Close;
   *)

End;
// FIN : SPP_201402_GESCOB

Procedure TfInfDirecc.FormKeyPress(Sender: TObject; Var Key: Char);
Begin
   If Key = #13 Then
      Begin
         Key := #0;
         Perform(WM_NEXTDLGCTL, 0, 0);
      End
End;

Procedure TfInfDirecc.BitSalirClick(Sender: TObject);
Begin
   Close;
End;
// INICIO : SPP_201402_GESCOB
(******************************************************************************)
procedure TfInfDirecc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action :=  caFree;
end;
(******************************************************************************)

procedure TfInfDirecc.FormCreate(Sender: TObject);
VAR xSQL : String;
begin
   xSQL := 'SELECT DPTOID, DPTODES, DPTOABR FROM TGE158';
   DM1.cdsPadre.Close;
   DM1.cdsPadre.DataRequest(xSQL);
   DM1.cdsPadre.Open;
end;
(******************************************************************************)

// FIN : SPP_201402_GESCOB
End.

