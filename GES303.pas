Unit GES303;

Interface

Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, ExtCtrls, StdCtrls, Buttons, Grids, ValEdit;

Type
   TfDatReniec = Class(TForm)
      pnlDatos: TPanel;
      ListaDatos: TValueListEditor;
      BitSalir: TBitBtn;
      Shape2: TShape;
      Shape1: TShape;
      imgFirma: TImage;
      imgFoto: TImage;
      Procedure BitSalirClick(Sender: TObject);
   Private
    { Private declarations }
   Public
    { Public declarations }
   End;

Var
   fDatReniec: TfDatReniec;

Implementation

{$R *.dfm}

Procedure TfDatReniec.BitSalirClick(Sender: TObject);
Begin
   Close;
End;

End.
