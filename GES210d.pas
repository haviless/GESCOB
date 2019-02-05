Unit GES210d;

Interface

Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, ExtCtrls, Grids, Wwdbigrd, Wwdbgrid, StdCtrls, Buttons, DBGrids;

Type
   TfLogImpMasDetalle = Class(TForm)
      Panel1: TPanel;
      dbgMaestro: TwwDBGrid;
      BitSalir: TBitBtn;
      Panel2: TPanel;
      rgTipoResultado: TRadioGroup;
      BitExporta: TBitBtn;
      lblMaestro: TLabel;
      dtgData: TDBGrid;
      lblEstado: TLabel;
      lblNroRegistros: TLabel;
      Procedure BitSalirClick(Sender: TObject);
      Procedure FormShow(Sender: TObject);
      Procedure FormClose(Sender: TObject; Var Action: TCloseAction);
      Procedure rgTipoResultadoClick(Sender: TObject);
      Procedure BitExportaClick(Sender: TObject);
   Private
      Procedure cargarGrid;
    { Private declarations }
   Public
      xIdArchivo: integer;
      xTituloMaestro: String;
      xEstadoMaestro: String;
   End;

Var
   fLogImpMasDetalle: TfLogImpMasDetalle;

Implementation

Uses GESDM1;

{$R *.dfm}
(******************************************************************************)
Procedure TfLogImpMasDetalle.BitSalirClick(Sender: TObject);
Begin
   Close;
End;

(******************************************************************************)
Procedure TfLogImpMasDetalle.FormShow(Sender: TObject);
Begin
   lblMaestro.Caption := xTituloMaestro;
   lblEstado.Caption := xEstadoMaestro;
   cargarGrid();
End;

(******************************************************************************)
Procedure TfLogImpMasDetalle.FormClose(Sender: TObject;
   Var Action: TCloseAction);
Begin
   DM1.cdsQry4.Close;
End;

(******************************************************************************)
Procedure TfLogImpMasDetalle.rgTipoResultadoClick(Sender: TObject);
Begin
   cargarGrid();
End;

(******************************************************************************)
Procedure TfLogImpMasDetalle.cargarGrid();
Var
   xSQL: String;
   xSQLTResultado: String;
Begin
   Screen.Cursor := crHourGlass;
   Case rgTipoResultado.ItemIndex Of
      0: xSQLTResultado := '';
      1: xSQLTResultado := ' TIPO_RESULTADO = ''CORRECTO'' ';
      2: xSQLTResultado := ' TIPO_RESULTADO = ''ERROR'' ';
      Else
         xSQLTResultado := '';
   End;

   xSQL := 'SELECT IDARCHIVO, TIPO_IMPORTACION, '
      + '          TIPO_RESULTADO, DNI, RESULTADO'
      + '     FROM GES_COB_LOG_IMP_MAS '
      + '    WHERE IDARCHIVO = ' + IntToStr(xIdArchivo);
   If (xSQLTResultado <> '') Then
      Begin
         xSQL := xSQL + ' AND ' + xSQLTResultado;
      End;

   DM1.cdsQry4.Close;
   DM1.cdsQry4.DataRequest(xSQL);
   DM1.cdsQry4.Open;
   lblNroRegistros.Caption := IntToStr(DM1.cdsQry4.RecordCount) + ' Registros';

   dbgMaestro.Selected.clear;
   dbgMaestro.Selected.Add('TIPO_RESULTADO'#9'12'#9'Tipo de~Resultado');
   dbgMaestro.Selected.Add('DNI'#9'10'#9'D.N.I.');
   dbgMaestro.Selected.Add('RESULTADO'#9'65'#9'Resultado');
   dbgMaestro.DataSource := DM1.dsQry4;
   Screen.Cursor := crDefault;
End;

(******************************************************************************)
Procedure TfLogImpMasDetalle.BitExportaClick(Sender: TObject);
Begin
   dtgData.DataSource := DM1.dsQry4;

   If DM1.cdsQry4.RecNo > 0 Then
      Begin
         Try
        // para el mensaje maximko 32 caracteres  lblMaestro.Caption
            DM1.HojaExcel('Log de Imp Masiva - Detalle', DM1.dsQry4, dtgData);
         Except
            On Ex: Exception Do
               Application.MessageBox(PChar(Ex.Message), 'ERROR', 16);
         End;
      End;

End;
(******************************************************************************)

End.
