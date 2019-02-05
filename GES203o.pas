Unit GES203o;

Interface

Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, Buttons, Grids, Wwdbigrd, Wwdbgrid, Db;

Type
   TfAtenVen = Class(TForm)
      dtgAtnAtn: TwwDBGrid;
      BitSalir: TBitBtn;
      Procedure BitSalirClick(Sender: TObject);
      Procedure dtgAtnAtnDrawDataCell(Sender: TObject; Const Rect: TRect;
         Field: TField; State: TGridDrawState);
      Procedure dtgAtnAtnDblClick(Sender: TObject);
   Private
    { Private declarations }
   Public
    { Public declarations }
   End;

Var
   fAtenVen: TfAtenVen;

Implementation

Uses GESDM1;

{$R *.dfm}

Procedure TfAtenVen.BitSalirClick(Sender: TObject);
Begin
   Close;
End;

Procedure TfAtenVen.dtgAtnAtnDrawDataCell(Sender: TObject;
   Const Rect: TRect; Field: TField; State: TGridDrawState);
Begin
   dtgAtnAtn.Canvas.Font.Color := clNavy;
   dtgAtnAtn.DefaultDrawDataCell(rect, Field, State);
End;

Procedure TfAtenVen.dtgAtnAtnDblClick(Sender: TObject);
Begin
   MessageDlg(DM1.cdsSitReclamo.FieldByName('OBSATE').AsString, mtInformation, [mbOk], 0);
End;

End.
