Unit GES203e;

Interface

Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, Buttons, Wwdbigrd, Grids, Wwdbgrid, StdCtrls;

Type
   TfDetPagos = Class(TForm)
      GroupBox1: TGroupBox;
      BitSalir: TBitBtn;
      dtgDetPag: TwwDBGrid;
      dtgDetPagIButton: TwwIButton;
      Procedure BitSalirClick(Sender: TObject);
      Procedure dtgDetPagDblClick(Sender: TObject);
   Private
    { Private declarations }
   Public
    { Public declarations }
   End;

Var
   fDetPagos: TfDetPagos;

Implementation

Uses GESDM1;

{$R *.dfm}

Procedure TfDetPagos.BitSalirClick(Sender: TObject);
Begin
   Close;
End;

Procedure TfDetPagos.dtgDetPagDblClick(Sender: TObject);
Begin
   ShowMessage('Usuario :  ' + DM1.cdsDetalle.FieldByName('USUARIO').AsString + #13 + #13 + 'Fecha De Registro :  ' + DM1.cdsDetalle.FieldByName('HREG').AsString + #13 + #13 + 'Observ. :  ' + DM1.cdsDetalle.FieldByName('CREOBS').AsString);
End;

End.
