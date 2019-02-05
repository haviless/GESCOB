Unit GES205c;

Interface

Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, Buttons, Grids, Wwdbigrd, Wwdbgrid, DB, DBClient, ppCtrls, ppBands, ppPrnabl, ppClass, ppVar, ppCache, ppProd, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ExtCtrls, ppStrtch, ppSubRpt, ppDBBDE, ppParameter,
   Mask, wwdbedit, wwdblook, ComCtrls;

Type
   TfRegPago = Class(TForm)
      GroupBox1 : TGroupBox;
      BitSalir : TBitBtn;
      BitGrabar : TBitBtn;
      DtpFecPag : TDateTimePicker;
      DBLCTipCob : TwwDBLookupCombo;
      Panel1 : TPanel;
      EdtForPago : TEdit;
      mObsPag : TMemo;
      EdtDocPag : TEdit;
      dbeMonPag : TwwDBEdit;
      Label1 : TLabel;
      Label2 : TLabel;
      Label3 : TLabel;
      Label4 : TLabel;
      Label5 : TLabel;
      Label6 : TLabel;
      lblMonCuo : TLabel;
      Shape1 : TShape;
      Procedure BitSalirClick(Sender : TObject);
      Procedure FormActivate(Sender : TObject);
      Procedure DBLCTipCobChange(Sender : TObject);
      Procedure FormKeyPress(Sender : TObject; Var Key : Char);
      Procedure dbeMonPagExit(Sender : TObject);
      Procedure BitGrabarClick(Sender : TObject);
      Procedure dbeMonPagKeyPress(Sender : TObject; Var Key : Char);
   Private
    { Private declarations }
      Procedure EstCuota(xAsoid, xNroAcu, xNroCuo, xMonCuo : String);
   Public
    { Public declarations }
   End;

Var
   fRegPago : TfRegPago;

Implementation

Uses GESDM1, GES205b;

{$R *.dfm}

Procedure TfRegPago.BitSalirClick(Sender : TObject);
Begin
   Close;
End;

Procedure TfRegPago.FormActivate(Sender : TObject);
Begin
   DM1.CrgLisFrmPag;
   DtpFecPag.Date := DM1.FechaSys;
   dbeMonPag.Text := '0.00';
End;

Procedure TfRegPago.DBLCTipCobChange(Sender : TObject);
Begin
   If DM1.cdsFormaPago.Locate('FORPAGOID', VarArrayof([DBLCTipCob.text]), []) Then
   Begin
      EdtForPago.Text := DM1.cdsFormaPago.fieldbyname('FORPAGODES').AsString;
   End
   Else
   Begin

      If Length(DBLCTipCob.Text) <> 2 Then
      Begin
         Beep;
         EdtForPago.Text := '';
      End;
   End

End;

Procedure TfRegPago.FormKeyPress(Sender : TObject; Var Key : Char);
Begin
   If Key = #13 Then
   Begin
      Key := #0;
      Perform(WM_NEXTDLGCTL, 0, 0);
   End
End;

Procedure TfRegPago.dbeMonPagExit(Sender : TObject);
Begin
   dbeMonPag.Text := FloatToStrF(DM1.Valores(dbeMonPag.Text), ffNumber, 15, 2);
End;

Procedure TfRegPago.BitGrabarClick(Sender : TObject);
Var
   xSQL, xAsoId, xNroAcu, xNroCuo, xCreEstid, xCreEstado, xMonCuo : String;
Begin

   If Length(Trim(EdtForPago.Text)) = 0 Then
   Begin
      MessageDlg('Debe Seleccionar Una Forma de Pago', mtError, [mbOk], 0);
      Exit;
   End;

   If Length(Trim(dbeMonPag.Text)) = 0 Then
   Begin
      MessageDlg('El Monto a Pagar No Puede Ser Nulo', mtError, [mbOk], 0);
      dbeMonPag.Text := '0.00';
      Exit;
   End;

   If DM1.Valores(dbeMonPag.Text) = 0 Then
   Begin
      MessageDlg('El Monto a Pagar No Puede Ser Cero(0)', mtError, [mbOk], 0);
      Exit;
   End;

   If Length(Trim(EdtDocPag.Text)) = 0 Then
   Begin
      MessageDlg('Debe Ingresar Un Documento de Pago', mtError, [mbOk], 0);
      Exit;
   End;

   If Length(Trim(mObsPag.Text)) = 0 Then
   Begin
      MessageDlg('Debe Ingresar Una Observación del Pago', mtError, [mbOk], 0);
      Exit;
   End;

   If DM1.Valores(dbeMonPag.Text) > DM1.Valores(lblMonCuo.Caption) Then
   Begin
      MessageDlg('El Monto Pagado No Puede Ser Mayor Que La Cuota Pactada', mtError, [mbOk], 0);
      Exit;
   End;
   xAsoId := DM1.cdsListaCreA.FieldByName('ASOID').AsString;
   xNroAcu := DM1.cdsListaCreA.FieldByName('NROACU').AsString;
   xNroCuo := DM1.cdsListaCreA.FieldByName('CUONUM').AsString;
   xMonCuo := DM1.cdsListaCreA.FieldByName('MONCUO').AsString;
   If DM1.Valores(dbeMonPag.Text) = DM1.Valores(lblMonCuo.Caption) Then
   Begin
      xCreEstid := '21';
      xCreEstado := 'CANCELADO';
   End
   Else
   Begin
      xCreEstid := '27';
      xCreEstado := 'PARCIAL';
   End;
   xSQL := 'INSERT INTO GES_ACU_PAG_REG (NROACU, ASOID, FECACU, FECVEN, FECPAG, FORPAGID, FORPAGABR, DOCPAG, CUONUM, MONCUO, CUOPAG, OBSPAG, USUARIO, HREG, OFDESID, CREESTID, CREESTADO) VALUES (' + QuotedStr(xNroAcu) + ',' + QuotedStr(xAsoId) + ',' + QuotedStr(DM1.cdsListaCreA.FieldByName('FECACU').AsString) + ',' + QuotedStr(DM1.cdsListaCreA.FieldByName('FECVEN').AsString) + ',' + QuotedStr(DateToStr(DtpFecPag.Date)) + ',' + QuotedStr(DBLCTipCob.Text) + ',' + QuotedStr(DM1.CrgDescrip('FORPAGOID=' + QuotedStr(Trim(DBLCTipCob.Text)), 'COB101', 'FORPAGOABR')) + ',' + QuotedStr(EdtDocPag.Text) + ',' + QuotedStr(DM1.cdsListaCreA.FieldByName('CUONUM').AsString) + ',' + FloatToStr(DM1.cdsListaCreA.FieldByName('MONCUO').AsFloat) + ',' + FloatToStr(DM1.Valores(dbeMonPag.Text)) + ',' + QuotedStr(mObsPag.Text) + ',' + QuotedStr(DM1.wUsuario) + ',SYSDATE,' + QuotedStr(DM1.xOfiDes) + ',' + QuotedStr(xCreEstid) + ',' + QuotedStr(xCreEstado) + ')';
   DM1.DCOM1.AppServer.EjecutaSql(xSQL);
   EstCuota(xAsoid, xNroAcu, xNroCuo, xMonCuo);
   Close;

End;

Procedure TfRegPago.EstCuota(xAsoid, xNroAcu, xNroCuo, xMonCuo : String);
Var
   xSQL, xSet : String;
   xRegistro : TBookmark;
   xImpCuo, xCuoPag : Currency;
Begin
   xRegistro := DM1.cdsListaCreA.GetBookmark;
   xSQL := 'SELECT NVL(SUM(NVL(CUOPAG,0)),0) CUOPAG FROM GES_ACU_PAG_REG ' +
      'WHERE ASOID=' + QuotedStr(xAsoId) + ' AND NROACU=' + QuotedStr(xNroAcu) + ' AND CUONUM=' + QuotedStr(xNroCuo) + ' AND CREESTID<>''13'' ';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSQL);
   DM1.cdsQry.Open;
   If DM1.cdsQry.FieldByName('CUOPAG').AsCurrency < DM1.Valores(xMonCuo) Then
   Begin
      If DM1.cdsQry.FieldByName('CUOPAG').AsCurrency = 0 Then
      Begin
         xSet := ' SET CUOPAG=' + FloatToStr(DM1.cdsQry.FieldByName('CUOPAG').AsCurrency) + ',CREESTID=''02'',CREESTADO=''POR COBRAR'' ';
      End
      Else
      Begin
         xSet := ' SET CUOPAG=' + FloatToStr(DM1.cdsQry.FieldByName('CUOPAG').AsCurrency) + ',CREESTID=''27'',CREESTADO=''PARCIAL'' ';
      End;
   End
   Else
   Begin
      xSet := ' SET CUOPAG=' + FloatToStr(DM1.cdsQry.FieldByName('CUOPAG').AsCurrency) + ',CREESTID=''21'',CREESTADO=''CANCELADO'' ';
   End;
   DM1.cdsQry.Close;
   xSQL := 'UPDATE GES_ACU_PAG_DET ' + xSet + ' WHERE ASOID=' + QuotedStr(xAsoid) + ' AND NROACU=' + QuotedStr(xNroAcu) + ' AND CUONUM=' + QuotedStr(xNroCuo);
   DM1.DCOM1.AppServer.EjecutaSql(xSQL);
   xSQL := 'SELECT NROACU, ASOID, FECACU, FECVEN, CUONUM, MONCUO, CUOPAG, CREESTID, CREESTADO FROM GES_ACU_PAG_DET WHERE ASOID=' + QuotedStr(xAsoId) + ' AND NROACU=' + QuotedStr(xNroAcu) + ' ORDER BY CUONUM';
   DM1.cdsListaCreA.Close;
   DM1.cdsListaCreA.DataRequest(xSQL);
   DM1.cdsListaCreA.Open;
   TNumericField(DM1.cdsListaCreA.FieldByName('MONCUO')).DisplayFormat := '###,###,##0.#0';
   TNumericField(DM1.cdsListaCreA.FieldByName('CUOPAG')).DisplayFormat := '###,###,##0.#0';
   TNumericField(DM1.cdsListaCreA.FieldByName('CUONUM')).DisplayFormat := '##0';
   xImpCuo := 0;
   xCuoPag := 0;
   DM1.cdsListaCreA.First;
   While Not DM1.cdsListaCreA.Eof Do
   Begin
      xImpCuo := xImpCuo + DM1.cdsListaCreA.FieldByName('MONCUO').AsCurrency;
      xCuoPag := xCuoPag + DM1.cdsListaCreA.FieldByName('CUOPAG').AsCurrency;
      DM1.cdsListaCreA.Next;
   End;
   fCronoAcu.dtgCronoAcu.ColumnByName('FECVEN').FooterValue := 'Saldo Vencido';
   fCronoAcu.dtgCronoAcu.ColumnByName('MONCUO').FooterValue := FloatToStrF(xImpCuo, ffNumber, 15, 2);
   fCronoAcu.dtgCronoAcu.ColumnByName('CUOPAG').FooterValue := FloatToStrF(xCuoPag, ffNumber, 15, 2);
   DM1.cdsListaCreA.GotoBookmark(xRegistro);

End;

Procedure TfRegPago.dbeMonPagKeyPress(Sender : TObject; Var Key : Char);
Begin
   If Key In [' ', 'A'..'Z', 'a'..'z', '°', '|', '!', '"', '#', '$', '%', '&', '/', '(', ')', '=', '?', '\', '¡', '¿', '@', '¨', '´', '*', '+', '~', '~', '[', ']', '{', '}', '^', '`', '<', '>', ';', ',', ':', '''', '-', '_'] Then
      Key := #0;

End;

End.

