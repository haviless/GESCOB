Unit GES203g;

Interface

Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, Grids, Wwdbigrd, Wwdbgrid, StdCtrls, Buttons;

Type
   TfSalPagAct = Class(TForm)
      dtgNotaAbono: TwwDBGrid;
      BitSalir: TBitBtn;
      Procedure BitSalirClick(Sender: TObject);
      Procedure FormActivate(Sender: TObject);
   Private
    { Private declarations }
   Public
    { Public declarations }
   End;

Var
   fSalPagAct: TfSalPagAct;

Implementation

Uses GESDM1;

{$R *.dfm}

Procedure TfSalPagAct.BitSalirClick(Sender: TObject);
Begin
   Close;
End;

Procedure TfSalPagAct.FormActivate(Sender: TObject);
Var
   xSaldos: Currency;
Begin
   xSaldos := 0;
   DM1.cdsAbonoCuotas.First;
   While Not DM1.cdsAbonoCuotas.Eof Do
      Begin
         xSaldos := xSaldos + DM1.cdsAbonoCuotas.FieldByName('SALDO').AsCurrency;
         DM1.cdsAbonoCuotas.Next;
      End;
   dtgNotaAbono.ColumnByName('NUMERO').FooterValue := 'Total A Pagar Hoy  ( ' + DateToStr(DM1.FechaSys) + ' )';
   dtgNotaAbono.ColumnByName('SALDO').FooterValue := FloatToStrF(xSaldos, ffNumber, 15, 2);

End;

End.
