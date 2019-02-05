// Inicio Uso Estándares: 01/08/2011
// Unidad : Gestión de Cobranzas
// Formulario : TFMantControlCampanhasMetasDet
// Fecha de Creación : 30/12/2011
// Autor : Equipo de Sistemas
// Objetivo : Mantenimiento del Control de Campañas - Detalle de Metas
// Actualizaciones:
// HPC_201121_GESCOB 20/12/2011 Indicadores de Control de Campañas
// Inicio HPC_201301_GESCOB Se cambian los Parametros de las metas
// SPP_201301_GESCOB: El pase a producción se realiza de acuerdo al HPC_201301_GESCOB

Unit GES529;

Interface

Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, Grids, Wwdbigrd, Wwdbgrid, StdCtrls, Buttons, ExtCtrls,
   db, wwExport, shellapi;

Type
   TFMantControlCampanhasMetasDet = Class(TForm)
      pnlControles : TPanel;
      lblCantRegistros : TLabel;
      btnSalir : TBitBtn;
      btnExportar : TBitBtn;
      dbgDetalle : TwwDBGrid;
      Procedure btnExportarClick(Sender : TObject);
      Procedure btnSalirClick(Sender : TObject);
      Procedure FormShow(Sender : TObject);
   Private
    { Private declarations }
   Public
    { Public declarations }
   End;

Var
   FMantControlCampanhasMetasDet : TFMantControlCampanhasMetasDet;

Implementation

Uses GESDM1;

{$R *.dfm}
//******************************************************************************
// Nombre : btnExportarClick
// Descripcion : Exportar datos a Excel
//******************************************************************************

Procedure TFMantControlCampanhasMetasDet.btnExportarClick(Sender : TObject);
Begin
   Screen.Cursor := crHourGlass;
   Try
      With dbgDetalle, dbgDetalle.ExportOptions Do
      Begin
         ExportType := wwgetSYLK;
         FileName := 'DetallePagos.slk';
         DM1.OpcionesExportExcel(dbgDetalle.ExportOptions);
         dbgDetalle.ExportOptions.TitleName := 'Control';
         Save;
         If Not (esoClipboard In Options) Then
            ShellExecute(Handle, 'Open', PChar(dbgDetalle.exportoptions.Filename), Nil, Nil, sw_shownormal);
      End;
      Screen.Cursor := crDefault;
   Except
      Screen.Cursor := crDefault;
      MessageDlg('No se puede grabar el Archivo ' + chr(13) + 'Cierre todos los Archivos en Excel y vuelva a intentarlo', mtWarning, [mbOk], 0);
   End;
End;

//******************************************************************************
// Nombre : btnSalirClick
// Descripcion : Salir
//******************************************************************************

Procedure TFMantControlCampanhasMetasDet.btnSalirClick(Sender : TObject);
Begin
   Close;
End;

//******************************************************************************
// Nombre : FormShow
// Descripcion : Colocar formato en la grilla
//******************************************************************************

Procedure TFMantControlCampanhasMetasDet.FormShow(Sender : TObject);
Var
   xnSaldoVencido : currency;
Begin

   xnSaldoVencido := 0;
   dbgDetalle.DataSource.DataSet.First;
   While Not dbgDetalle.DataSource.DataSet.Eof Do
   Begin
      xnSaldoVencido := xnSaldoVencido + dbgDetalle.DataSource.DataSet.FieldByName('SALDO_VENCIDO').AsCurrency;
      dbgDetalle.DataSource.DataSet.Next;
   End;
   dbgDetalle.DataSource.DataSet.First;

// Inicio: SPP_201301_GESCOB Se cambian los Parametros de las metas
   dbgDetalle.Selected.Clear;
   dbgDetalle.Selected.Add('FECHA'#9'10'#9'Fecha');
   dbgDetalle.Selected.Add('ASODNI'#9'10'#9'D.N.I.');
   dbgDetalle.Selected.Add('ASOCODMOD'#9'10'#9'Modular');
   dbgDetalle.Selected.Add('ASOAPENOM'#9'40'#9'Asociado');
   dbgDetalle.Selected.Add('SALDO_VENCIDO'#9'10'#9'Cobrado');
   dbgDetalle.ApplySelected;
   TNumericField(dbgDetalle.DataSource.DataSet.FieldByName('SALDO_VENCIDO')).DisplayFormat := '###,##0.#0';
   dbgDetalle.ColumnByName('ASOAPENOM').FooterValue := 'Totales';
   dbgDetalle.ColumnByName('SALDO_VENCIDO').FooterValue := FormatCurr('###,##0.#0', xnSaldoVencido);
// Fin: SPP_201301_GESCOB Se cambian los Parametros de las metas
End;

End.

