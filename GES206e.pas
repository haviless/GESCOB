Unit GES206e;

Interface

Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, Buttons, Grids, Wwdbigrd, Wwdbgrid;

Type
   TfDetGetInd = Class(TForm)
      dtgDestGesPre: TwwDBGrid;
      BitSalir: TBitBtn;
      lblNombres: TLabel;
      Procedure BitSalirClick(Sender: TObject);
      Procedure dtgDestGesPreDblClick(Sender: TObject);
   Private
    { Private declarations }
   Public
    { Public declarations }
   End;

Var
   fDetGetInd: TfDetGetInd;

Implementation

Uses GESDM1;

{$R *.dfm}

Procedure TfDetGetInd.BitSalirClick(Sender: TObject);
Begin
   Close;
End;

Procedure TfDetGetInd.dtgDestGesPreDblClick(Sender: TObject);
Begin
   MessageDlg('RESULTADO DE GESTION ' + #13 + 'TELEFONICA     :      ' + DM1.CrgDescrip('IDGTNDET=' + QuotedStr(Trim(DM1.cdsProvin.FieldByName('IDGNTDET').AsString)) + ' AND IDGTN=''01'' ', 'GES_REF_SEG_DET', 'DESCRIPCION'), mtInformation, [mbOk], 0);
End;

End.
