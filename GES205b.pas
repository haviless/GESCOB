Unit GES205b;

Interface

Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, Buttons, Grids, Wwdbigrd, Wwdbgrid, ExtCtrls, Db;

Type
   TfCronoAcu = Class(TForm)
      GroupBox1: TGroupBox;
      BitSalir: TBitBtn;
      dtgCronoAcu: TwwDBGrid;
      lblAsoApeNom: TLabel;
      Shape1: TShape;
      lblNroAcu: TLabel;
      lblFecAcu: TLabel;
      Label1: TLabel;
      Label2: TLabel;
      Label3: TLabel;
      lblSalVen: TLabel;
      Label5: TLabel;
      Label6: TLabel;
      lblNumCuo: TLabel;
      Shape2: TShape;
      Shape3: TShape;
      Shape4: TShape;
      Shape5: TShape;
      BitDetalle: TBitBtn;
      Procedure BitSalirClick(Sender: TObject);
      Procedure FormActivate(Sender: TObject);
      Procedure dtgCronoAcuDblClick(Sender: TObject);
      Procedure BitDetalleClick(Sender: TObject);
   Private
    { Private declarations }
   Public
    { Public declarations }
   End;

Var
   fCronoAcu: TfCronoAcu;

Implementation

Uses GESDM1, GES205c, GES205d;

{$R *.dfm}

Procedure TfCronoAcu.BitSalirClick(Sender: TObject);
Begin
   Close;
End;

Procedure TfCronoAcu.FormActivate(Sender: TObject);
Var
   xMonCuo, xCuoPag: Currency;
Begin
   xMonCuo := 0;
   xCuoPag := 0;
   DM1.cdsListaCreA.First;
   While Not DM1.cdsListaCreA.Eof Do
      Begin
         xMonCuo := xMonCuo + DM1.cdsListaCreA.FieldByName('MONCUO').AsCurrency;
         xCuoPag := xCuoPag + DM1.cdsListaCreA.FieldByName('CUOPAG').AsCurrency;
         DM1.cdsListaCreA.Next;
      End;
   dtgCronoAcu.ColumnByName('FECVEN').FooterValue := 'Saldo Vencido';
   dtgCronoAcu.ColumnByName('MONCUO').FooterValue := FloatToStrF(xMonCuo, ffNumber, 15, 2);
   dtgCronoAcu.ColumnByName('CUOPAG').FooterValue := FloatToStrF(xCuoPag, ffNumber, 15, 2);
   lblAsoApeNom.Caption := DM1.cdsListaCred.FieldByName('ASOAPENOM').AsString;
   lblNroAcu.Caption := DM1.cdsListaCred.FieldByName('NROACU').AsString;
   lblFecAcu.Caption := DM1.cdsListaCred.FieldByName('FECACU').AsString;
   lblSalVen.Caption := FloatToStrF(DM1.Valores(DM1.cdsListaCred.FieldByName('SALVEN').AsString), ffNumber, 15, 2);
   lblNumCuo.Caption := DM1.cdsListaCred.FieldByName('NUMCUO').AsString;

End;

Procedure TfCronoAcu.dtgCronoAcuDblClick(Sender: TObject);
Begin

   If DM1.cdsListaCreA.FieldByName('CREESTID').AsString = '21' Then
      Begin

      End
   Else
      Begin

         Try
            fRegPago := TfRegPago.create(Self);
            fRegPago.lblMonCuo.Caption := FloatToStrF(DM1.Valores(DM1.cdsListaCreA.FieldByName('MONCUO').AsString) - DM1.Valores(DM1.cdsListaCreA.FieldByName('CUOPAG').AsString), ffNumber, 15, 2);
            fRegPago.ShowModal;
         Finally
            fRegPago.Free;
         End;

      End;
End;

Procedure TfCronoAcu.BitDetalleClick(Sender: TObject);
Var
   xSQL: String;
Begin
   Try
      fDetPagAcu := TfDetPagAcu.create(Self);
      xSQL := 'SELECT ASOID,NROACU,CUONUM,FECPAG,FORPAGABR,DOCPAG,CUOPAG,CREESTADO FROM GES_ACU_PAG_REG ' +
         'WHERE ASOID=' + QuotedStr(DM1.cdsListaCreA.FieldByName('ASOID').AsString) + ' AND NROACU=' + QuotedStr(lblNroAcu.Caption) + ' ORDER BY CUONUM ';
      DM1.cdsCtasBco.Close;
      DM1.cdsCtasBco.DataRequest(xSQL);
      DM1.cdsCtasBco.Open;
      TNumericField(DM1.cdsCtasBco.FieldByName('CUOPAG')).DisplayFormat := '###,###,##0.#0';
      fDetPagAcu.lblAsoApeNom.Caption := lblAsoApeNom.Caption;
      fDetPagAcu.lblNroAcu.Caption := lblNroAcu.Caption;
      fDetPagAcu.lblFecAcu.Caption := lblFecAcu.Caption;
      fDetPagAcu.ShowModal;
   Finally
      fDetPagAcu.Free;
   End;
End;

End.
