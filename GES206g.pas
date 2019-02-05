Unit GES206g;

Interface

Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, Grids, Wwdbigrd, Wwdbgrid, StdCtrls, Buttons;

Type
   TfInfPlanilla = Class(TForm)
      dtgInfPla: TwwDBGrid;
      BitSalir: TBitBtn;
      Procedure FormActivate(Sender: TObject);
      Procedure BitSalirClick(Sender: TObject);
   Private
    { Private declarations }
   Public
    { Public declarations }
   End;

Var
   fInfPlanilla: TfInfPlanilla;

Implementation

Uses GESDM1, DB;

{$R *.dfm}

Procedure TfInfPlanilla.FormActivate(Sender: TObject);
Var
   xCuoEnv, xCuoApl, xSalCuo: Currency;
   xCount: Integer;
Begin
   DM1.cdsCtasBco.FieldByName('TIPOCARGA').Alignment := taCenter;
   DM1.cdsCtasBco.First;
   xCuoEnv := 0;
   xCuoApl := 0;
   xSalCuo := 0;
   xCount := 0;
   While Not DM1.cdsCtasBco.Eof Do
      Begin
         xCuoEnv := xCuoEnv + DM1.cdsCtasBco.FieldByName('MONCUOENV').AsCurrency;
         xCuoApl := xCuoApl + DM1.cdsCtasBco.FieldByName('MONCUOAPL').AsCurrency;
         xSalCuo := xSalCuo + DM1.cdsCtasBco.FieldByName('SALCUO').AsCurrency;
         xCount := xCount + 1;
         DM1.cdsCtasBco.Next;
      End;
   If DM1.cdsCtasBco.RecordCount > 1 Then DM1.cdsCtasBco.First;
   dtgInfPla.ColumnByName('PERCOB').FooterValue := 'Totales : ';
   dtgInfPla.ColumnByName('MONCUOENV').FooterValue := FloatToStrF(xCuoEnv, ffNumber, 15, 2);
   dtgInfPla.ColumnByName('SALCUO').FooterValue := FloatToStrF(xSalCuo, ffNumber, 15, 2);
   dtgInfPla.ColumnByName('TIPOCARGA').FooterValue := FloatToStrF(xCount, ffNumber, 5, 0);

End;

Procedure TfInfPlanilla.BitSalirClick(Sender: TObject);
Begin
   Close;
End;

End.
