Unit GES205d;

Interface

Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, Grids, Wwdbigrd, Wwdbgrid, StdCtrls, Buttons, ExtCtrls;

Type
   TfDetPagAcu = Class(TForm)
      GroupBox1: TGroupBox;
      dtgDetPagos: TwwDBGrid;
      BitSalir: TBitBtn;
      Label1: TLabel;
      lblAsoApeNom: TLabel;
      Shape1: TShape;
      Label2: TLabel;
      lblNroAcu: TLabel;
      Shape2: TShape;
      Label3: TLabel;
      lblFecAcu: TLabel;
      Shape3: TShape;
      Procedure BitSalirClick(Sender: TObject);
      Procedure FormActivate(Sender: TObject);
   Private
    { Private declarations }
   Public
    { Public declarations }
   End;

Var
   fDetPagAcu: TfDetPagAcu;

Implementation

Uses GESDM1;

{$R *.dfm}

Procedure TfDetPagAcu.BitSalirClick(Sender: TObject);
Begin
   Close;
End;

Procedure TfDetPagAcu.FormActivate(Sender: TObject);
Var
   xCuoPag: Currency;
Begin
   xCuoPag := 0;
   DM1.cdsCtasBco.First;
   While Not DM1.cdsCtasBco.Eof Do
      Begin
         xCuoPag := xCuoPag + DM1.cdsCtasBco.FieldByName('CUOPAG').AsCurrency;
         DM1.cdsCtasBco.Next;
      End;
   dtgDetPagos.ColumnByName('DOCPAG').FooterValue := 'Monto Pagado';
   dtgDetPagos.ColumnByName('CUOPAG').FooterValue := FloatToStrF(xCuoPag, ffNumber, 15, 2);

End;

End.
