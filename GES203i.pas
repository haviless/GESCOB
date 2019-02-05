Unit GES203i;

Interface

Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, Buttons, Mask, wwdbedit, ComCtrls, Grids, Wwdbigrd,
   Wwdbgrid, Db;

Type
   TfProPago = Class(TForm)
      GroupBox1: TGroupBox;
      BitSalir: TBitBtn;
      mObsPag: TMemo;
      DtpFecPro: TDateTimePicker;
      dbeMonto: TwwDBEdit;
      Label1: TLabel;
      Label2: TLabel;
      Label3: TLabel;
      BitGrabar: TBitBtn;
      dtgProPag: TwwDBGrid;
      Label4: TLabel;
      Procedure BitSalirClick(Sender: TObject);
      Procedure dbeMontoKeyPress(Sender: TObject; Var Key: Char);
      Procedure dbeMontoExit(Sender: TObject);
      Procedure FormKeyPress(Sender: TObject; Var Key: Char);
      Procedure BitGrabarClick(Sender: TObject);
      Procedure FormActivate(Sender: TObject);
   Private
    { Private declarations }
      Procedure MstProPag(xAsoId: String);
   Public
    { Public declarations }
   End;

Var
   fProPago: TfProPago;

Implementation

Uses GESDM1;

{$R *.dfm}

Procedure TfProPago.BitSalirClick(Sender: TObject);
Begin
   Close;
End;

Procedure TfProPago.dbeMontoKeyPress(Sender: TObject; Var Key: Char);
Begin
   If Key In [' ', 'A'..'Z', 'a'..'z', '°', '|', '!', '"', '#', '$', '%', '&', '/', '(', ')', '=', '?', '\', '¡', '¿', '@', '¨', '´', '*', '+', '~', '~', '[', ']', '{', '}', '^', '`', '<', '>', ';', ',', ':', '''', '-', '_'] Then
      Key := #0;

End;

Procedure TfProPago.dbeMontoExit(Sender: TObject);
Begin
   dbeMonto.Text := FloatToStrF(DM1.Valores(dbeMonto.Text), ffNumber, 15, 2);
End;

Procedure TfProPago.FormKeyPress(Sender: TObject; Var Key: Char);
Begin
   If Key = #13 Then
      Begin
         Key := #0;
         Perform(WM_NEXTDLGCTL, 0, 0);
      End

End;

Procedure TfProPago.BitGrabarClick(Sender: TObject);
Var
   xSQL, xAsoId: String;
Begin
   If Length(Trim(DateToStr(DtpFecPro.Date))) = 0 Then
      Begin
         MessageDlg(' Debe Ingresar La FECHA es Obligatorio!!!', mtError, [mbOk], 0);
         Exit;
      End;

   If DM1.Valores(dbeMonto.Text) = 0 Then
      Begin
         MessageDlg(' PROMESA DE PAGO Debe Ser Mayor a Cero (0) !!!', mtError, [mbOk], 0);
         Exit;
      End;
   If Length(Trim(mObsPag.Text)) = 0 Then
      Begin
         MessageDlg(' Debe Ingresar Alguna Observación!!!', mtError, [mbOk], 0);
         Exit;
      End;

   xAsoId := DM1.cdsMovCre.FieldByName('ASOID').AsString;
   xSQL := 'INSERT INTO GES_PRO_PAG(ASOID,FECPRO,MONTO,OBSPRO,HREG,USUARIO) VALUES (' + QuotedStr(xAsoId) + ',' + QuotedStr(DateToStr(DtpFecPro.Date)) + ',' + FloatToStr(DM1.Valores(dbeMonto.Text)) + ',' + QuotedStr(Trim(mObsPag.Text)) + ',SYSDATE,' + QuotedStr(DM1.wUsuario) + ')';
   DM1.DCOM1.AppServer.EjecutaSql(xSQL);
   dbeMonto.Text := FloatToStrF(DM1.Valores('0'), ffNumber, 15, 2);
   mObsPag.Text := '';
   DtpFecPro.Date := DM1.FechaSys;
   MstProPag(xAsoId);

End;

Procedure TfProPago.FormActivate(Sender: TObject);
Begin
   DtpFecPro.Date := DM1.FechaSys;
   MstProPag(DM1.cdsMovCre.FieldByName('ASOID').AsString);

End;

Procedure TfProPago.MstProPag(xAsoId: String);
Var
   xSQL: String;
Begin
   xSQL := 'SELECT ASOID,FECPRO,MONTO,OBSPRO,HREG,USUARIO FROM GES_PRO_PAG WHERE ASOID=' + QuotedStr(xAsoId) + ' ORDER BY FECPRO DESC';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSQL);
   DM1.cdsQry.Open;
   TNumericField(DM1.cdsQry.FieldByName('MONTO')).DisplayFormat := '###,###,##0.#0';
End;

End.
