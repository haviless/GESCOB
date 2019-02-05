Unit COB946;

Interface

Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, Grids, Wwdbigrd, Wwdbgrid, StdCtrls, Buttons, ExtCtrls, DBGrids;

Type
   TfSelGest = Class(TForm)
      dtgSetGest: TwwDBGrid;
      BitSalir: TBitBtn;
      Panel3: TPanel;
      Shape3: TShape;
      txtDist: TEdit;
      Panel2: TPanel;
      Shape2: TShape;
      lblRegistros: TLabel;
      Edit1: TEdit;
      BitExporta: TBitBtn;
      dtgData: TDBGrid;
      Procedure BitSalirClick(Sender: TObject);
      Procedure BitExportaClick(Sender: TObject);
   Private
    { Private declarations }
   Public
    { Public declarations }
   End;

Var
   fSelGest: TfSelGest;

Implementation

Uses GESDM1, COB944;

{$R *.dfm}

Procedure TfSelGest.BitSalirClick(Sender: TObject);
Begin
   Close;
End;

Procedure TfSelGest.BitExportaClick(Sender: TObject);
Begin
   Screen.Cursor := crHourGlass;
   Try
      DM1.HojaExcel(Trim(fDistGestion.lblNomMes.Caption) + '-' + Trim(fDistGestion.dbsAnoIni.Text) + '-' + Trim(fDistGestion.txtDist.Text), DM1.dsProvCta, dtgData);
   Except
      On Ex: Exception Do
         Application.MessageBox(PChar(Ex.Message), 'ERROR', 16);
   End;
   Screen.Cursor := crDefault;

End;

End.
