Unit GES205a;

Interface

Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, ExtCtrls, StdCtrls, Buttons, Mask, wwdbedit, Spin, ComCtrls;

Type
   TfNueAcuerdo = Class(TForm)
      GroupBox1 : TGroupBox;
      lblSalVen : TLabel;
      Label1 : TLabel;
      Shape2 : TShape;
      BitGrabar : TBitBtn;
      BitSalir : TBitBtn;
      Label2 : TLabel;
      Label3 : TLabel;
      Label4 : TLabel;
      dbeCuoIni : TwwDBEdit;
      dbeMonCuo : TwwDBEdit;
      SpCuotas : TSpinEdit;
      Panel1 : TPanel;
      DtpFecAcu : TDateTimePicker;
      Label5 : TLabel;
      Label6 : TLabel;
      lblSalTot : TLabel;
      Shape1 : TShape;
      Procedure BitSalirClick(Sender : TObject);
      Procedure dbeMonCuoKeyPress(Sender : TObject; Var Key : Char);
      Procedure dbeCuoIniKeyPress(Sender : TObject; Var Key : Char);
      Procedure FormKeyPress(Sender : TObject; Var Key : Char);
      Procedure dbeCuoIniExit(Sender : TObject);
      Procedure dbeMonCuoExit(Sender : TObject);
      Procedure FormActivate(Sender : TObject);
      Procedure BitGrabarClick(Sender : TObject);
   Private
    { Private declarations }
      Function NroAcu(xAno : String) : String;
   Public
    { Public declarations }
   End;

Var
   fNueAcuerdo : TfNueAcuerdo;

Implementation

Uses GESDM1;

{$R *.dfm}

Procedure TfNueAcuerdo.BitSalirClick(Sender : TObject);
Begin
   Close;
End;

Procedure TfNueAcuerdo.dbeMonCuoKeyPress(Sender : TObject; Var Key : Char);
Begin
   If Key In [' ', 'A'..'Z', 'a'..'z', '°', '|', '!', '"', '#', '$', '%', '&', '/', '(', ')', '=', '?', '\', '¡', '¿', '@', '¨', '´', '*', '+', '~', '~', '[', ']', '{', '}', '^', '`', '<', '>', ';', ',', ':', '''', '-', '_'] Then
      Key := #0;

End;

Procedure TfNueAcuerdo.dbeCuoIniKeyPress(Sender : TObject; Var Key : Char);
Begin
   If Key In [' ', 'A'..'Z', 'a'..'z', '°', '|', '!', '"', '#', '$', '%', '&', '/', '(', ')', '=', '?', '\', '¡', '¿', '@', '¨', '´', '*', '+', '~', '~', '[', ']', '{', '}', '^', '`', '<', '>', ';', ',', ':', '''', '-', '_'] Then
      Key := #0;

End;

Procedure TfNueAcuerdo.FormKeyPress(Sender : TObject; Var Key : Char);
Begin
   If Key = #13 Then
   Begin
      Key := #0;
      Perform(WM_NEXTDLGCTL, 0, 0);
   End

End;

Procedure TfNueAcuerdo.dbeCuoIniExit(Sender : TObject);
Begin
   dbeCuoIni.Text := FloatToStrF(DM1.Valores(dbeCuoIni.Text), ffNumber, 15, 2);
End;

Procedure TfNueAcuerdo.dbeMonCuoExit(Sender : TObject);
Begin
   dbeMonCuo.Text := FloatToStrF(DM1.Valores(dbeMonCuo.Text), ffNumber, 15, 2);
End;

Procedure TfNueAcuerdo.FormActivate(Sender : TObject);
Begin
   dbeMonCuo.Text := '0.00';
   dbeCuoIni.Text := '0.00';
   DtpFecAcu.Date := DM1.FechaSys;
End;

Procedure TfNueAcuerdo.BitGrabarClick(Sender : TObject);
Var
   xSQL, xAsoId, xNroAcu, xDia : String;
   I, xMes, xAno : Integer;
   xResto : Currency;
   xFecAcu, xFecVen : tDateTime;
Begin
   If Length(Trim(dbeCuoIni.Text)) = 0 Then
   Begin
      MessageDlg('El Monto De La CUOTA INICIAL No Puede Ser Nulo', mtError, [mbOk], 0);
      dbeCuoIni.Text := '0.00';
      Exit;
   End;

   If Length(Trim(dbeMonCuo.Text)) = 0 Then
   Begin
      MessageDlg('El Monto De La CUOTA PACTADA No Puede Ser Nulo', mtError, [mbOk], 0);
      dbeMonCuo.Text := '0.00';
      Exit;
   End;

   If DM1.Valores(dbeCuoIni.Text) = 0 Then
   Begin
      MessageDlg('El Monto De La CUOTA INICIAL No Puede Ser Cero(0)', mtError, [mbOk], 0);
      Exit;
   End;

   If DM1.Valores(dbeMonCuo.Text) = 0 Then
   Begin
      MessageDlg('El Monto De La CUOTA PACTADA No Puede Ser Cero(0)', mtError, [mbOk], 0);
      Exit;
   End;

   If (DM1.Valores(dbeCuoIni.Text) + (DM1.Valores(dbeMonCuo.Text) * SpCuotas.Value)) > DM1.Valores(lblSalVen.Caption) Then
   Begin
      MessageDlg('El Monto Calculado Por ACUERDO DE PAGO No Puede Ser Mayor SALDO VENCIDO', mtError, [mbOk], 0);
      Exit;
   End;
   xAsoId := DM1.cdsMovCre.FieldByName('ASOID').AsString;
   xNroAcu := NroAcu(Copy(DateToStr(DM1.FechaSys), 7, 4));
   xSQL := 'INSERT INTO GES_ACU_PAG_CAB (NROACU, ASOID, ASOAPENOM, FECACU, SALTOT, SALVEN, CUOINI, NUMCUO, MONCUO, ' +
      'SALACT, CREESTID, CREESTADO, HREG, USUARIO, OFDESID ) VALUES ( ' + QuotedStr(xNroAcu) + ',' + QuotedStr(xAsoId) + ',' + QuotedStr(DM1.cdsMovCre.FieldByName('ASOAPENOM').AsString) + ',' + QuotedStr(DateToStr(DtpFecAcu.Date)) + ',' + FloatToStr(DM1.Valores(lblSalTot.Caption)) + ',' + FloatToStr(DM1.Valores(lblSalVen.Caption)) + ',' + FloatToStr(DM1.Valores(dbeCuoIni.Text)) + ',' + IntToStr(SpCuotas.Value) + ',' + FloatToStr(DM1.Valores(dbeMonCuo.Text)) + ',' + FloatToStr(DM1.Valores(lblSalVen.Caption)) + ', ''02'',''POR COBRAR'',SYSDATE,' + QuotedStr(DM1.wUsuario) + ',' + QuotedStr(DM1.xOfiDes) + ')';
   DM1.DCOM1.AppServer.EjecutaSql(xSQL);

   xFecAcu := DtpFecAcu.Date;
   For I := 1 To SpCuotas.Value Do
   Begin
      xMes := StrToInt(Copy(DateToStr(xFecAcu), 4, 2)) + 1;
      xAno := StrToInt(Copy(DateToStr(xFecAcu), 7, 4));
      If xMes > 12 Then
      Begin
         xMes := 1;
         xAno := xAno + 1;
      End;
      xDia := DM1.UltimoDia(xMes, xAno);
      xFecVen := StrToDate(xDia + '/' + Format('%.2d', [xMes]) + '/' + Trim(IntToStr(xAno)));
      xSQL := 'INSERT INTO GES_ACU_PAG_DET(NROACU, ASOID, FECACU, FECVEN, CUONUM, MONCUO, CUOPAG, CREESTID, CREESTADO) VALUES (' + QuotedStr(xNroAcu) + ',' + QuotedStr(xAsoId) + ',' + QuotedStr(DateToStr(DtpFecAcu.Date)) + ',' + QuotedStr(DateToStr(xFecVen)) + ',' + IntToStr(I) + ',' + FloatToStr(DM1.Valores(dbeMonCuo.Text)) + ',0.00,''02'',''POR COBRAR'') ';
      DM1.DCOM1.AppServer.EjecutaSql(xSQL);
      xFecAcu := xFecVen;
   End;
   xSQL := 'INSERT INTO GES_ACU_PAG_DET(NROACU, ASOID, FECACU, FECVEN, CUONUM, MONCUO, CUOPAG, CREESTID, CREESTADO) VALUES (' + QuotedStr(xNroAcu) + ',' + QuotedStr(xAsoId) + ',' + QuotedStr(DateToStr(DtpFecAcu.Date)) + ',' + QuotedStr(DateToStr(DtpFecAcu.Date)) + ',' + IntToStr(0) + ',' + FloatToStr(DM1.Valores(dbeCuoIni.Text)) + ',0.00,''02'',''POR COBRAR'') ';
   DM1.DCOM1.AppServer.EjecutaSql(xSQL);
   xResto := DM1.Valores(lblSalVen.Caption) - (DM1.Valores(dbeCuoIni.Text) + (DM1.Valores(dbeMonCuo.Text) * SpCuotas.Value));
   If xResto > 0 Then
   Begin
      xSQL := 'UPDATE GES_ACU_PAG_DET SET MONCUO=MONCUO+' + FloatToStr(xResto) + ' WHERE ASOID=' + QuotedStr(xAsoId) + ' AND NROACU=' + QuotedStr(xNroAcu) + ' AND CUONUM=' + QuotedStr(IntToStr(SpCuotas.Value));
      DM1.DCOM1.AppServer.EjecutaSql(xSQL);
   End;

   DM1.MstAcuerdos(xAsoId);
   Close;
End;

Function TfNueAcuerdo.NroAcu(xAno : String) : String;
Var
   xSQL : String;
   xNroTmp : Integer;
Begin
   xSQL := 'SELECT MAX(NROACU) NROACU FROM GES_ACU_PAG_CAB WHERE TO_CHAR(FECACU,''YYYY'')=' + QuotedStr(xAno);
   DM1.cdsQryNroAcu.Close;
   DM1.cdsQryNroAcu.DataRequest(xSQL);
   DM1.cdsQryNroAcu.Open;
   If Length(Trim(DM1.cdsQryNroAcu.FieldByName('NROACU').AsString)) = 0 Then
   Begin
      xNroTmp := 1;
   End
   Else
   Begin
      xNroTmp := DM1.cdsQryNroAcu.FieldByName('NROACU').AsInteger + 1;
   End;
   DM1.cdsQryNroAcu.Close;
   Result := Format('%.8d', [xNroTmp]);
End;

End.

