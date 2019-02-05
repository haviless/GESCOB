Unit COB935;

Interface

Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, Buttons, Grids, Wwdbigrd, Wwdbgrid, DBGrids;

Type
   TfDatComple = Class(TForm)
      GroupBox1: TGroupBox;
      BitExporta: TBitBtn;
      BitSalir: TBitBtn;
      dtgClfCarDet: TwwDBGrid;
      lblCalif: TLabel;
      dtgData: TDBGrid;
      Procedure BitSalirClick(Sender: TObject);
      Procedure BitExportaClick(Sender: TObject);
   Private
    { Private declarations }
   Public
    { Public declarations }
   End;

Var
   fDatComple: TfDatComple;

Implementation

Uses GESDM1, COB925;

{$R *.dfm}

Procedure TfDatComple.BitSalirClick(Sender: TObject);
Begin
   Close;
End;

Procedure TfDatComple.BitExportaClick(Sender: TObject);
Begin
   Screen.Cursor := crHourGlass;
   Try
      DM1.HojaExcel(Copy(Trim(DM1.cdsModelo.FieldByName('CFCDES').AsString), 1, 8) + '-' + DM1.DesMes(StrToInt(fGestCob.dbsMesIni.Text), 'S') + '-' + Trim(fGestCob.dbsAnoIni.Text), DM1.dsUSES, dtgData);
   Except
      On Ex: Exception Do
         Application.MessageBox(PChar(Ex.Message), 'ERROR', 16);
   End;
   Screen.Cursor := crDefault;

End;

End.

