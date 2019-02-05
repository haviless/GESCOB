// Inicio Uso Estándares: 01/08/2011
// Unidad : Gestión de Cobranzas
// Formulario : fLogImpMas
// Fecha de Creación :
// Autor : Equipo de Sistemas
// Objetivo :  Mostrar el Log de la importacion de Gestiones Externas
// Actualizaciones:
// HPC_201205_GESCOB 09/04/2012 validar el ingreso y la anulacion de los registros en la importacion de gestiones externas
// DPP_201205_GESCOB: Pase a producción a partir de los pases HPC_201205 y HPC_201206

Unit GES210c;

Interface

Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, Grids, Wwdbigrd, Wwdbgrid, ExtCtrls, StdCtrls, Buttons, DBGrids;

Type
   TfLogImpMas = Class(TForm)
      Panel1 : TPanel;
      Panel2 : TPanel;
      rgEstado : TRadioGroup;
      dbgMaestro : TwwDBGrid;
      BitFiltrar : TBitBtn;
      BitSalir : TBitBtn;
      BitExporta : TBitBtn;
      dtgData : TDBGrid;
      BitCerrar : TBitBtn;
      BitAnular : TBitBtn;
      Procedure FormShow(Sender : TObject);
      Procedure rgEstadoClick(Sender : TObject);
      Procedure BitFiltrarClick(Sender : TObject);
      Procedure FormClose(Sender : TObject; Var Action : TCloseAction);
      Procedure dbgMaestroDblClick(Sender : TObject);
      Procedure BitSalirClick(Sender : TObject);
      Procedure BitExportaClick(Sender : TObject);
      Procedure BitAnularClick(Sender : TObject);
      Procedure BitCerrarClick(Sender : TObject);
   Private
      Procedure cargarGrid();
      Procedure pintarGrid;
   Public
    { Public declarations }
   End;

Var
   fLogImpMas : TfLogImpMas;

Implementation
Uses GESDM1, GES210d;
{$R *.dfm}

{ TfLogImpMas }

(******************************************************************************)

Procedure TfLogImpMas.FormShow(Sender : TObject);
Begin
   cargarGrid();
End;

(******************************************************************************)

Procedure TfLogImpMas.cargarGrid;
Var
   xSQL : String;
   xSQLEstado : String;
Begin
   Screen.Cursor := crHourGlass;
   Case rgEstado.ItemIndex Of
      0 : xSQLEstado := '';
      1 : xSQLEstado := ' ESTADO = ''TRUNCADO'' ';
      2 : xSQLEstado := ' ESTADO = ''SUBIDO'' ';
      3 : xSQLEstado := ' ESTADO = ''ANULADO'' ';
      4 : xSQLEstado := ' ESTADO = ''CERRADO'' ';
   Else
      xSQLEstado := '';
   End;

   xSQL := 'SELECT ESTADO, PERIODO, USU_GES, '
      + '          TIPO_IMPORTACION, FEC_SUBIDA, '
      + '          USU_SUBIDA, NOMBRE, NUM_REG_COR, NUM_REG_ERR, '
      + '          NUM_REG_TOT, FEC_ANULACION, USU_ANULACION, '
      + '          FEC_CIERRE, USU_CIERRE, '
      + '          FREG, UREG, TAMANHO, IDARCHIVO '
      + '     FROM GES_COB_ARC_IMP ';
   If (xSQLEstado <> '') Then
   Begin
      xSQL := xSQL + ' WHERE ' + xSQLEstado;
   End;
   xSQL := xSQL + ' ORDER BY FEC_SUBIDA DESC';
   DM1.cdsQry3.Close;
   DM1.cdsQry3.DataRequest(xSQL);
   DM1.cdsQry3.Open;
   pintarGrid();
   Screen.Cursor := crDefault;
End;

(******************************************************************************)

Procedure TfLogImpMas.rgEstadoClick(Sender : TObject);
Begin
   cargarGrid();
End;

(******************************************************************************)

Procedure TfLogImpMas.pintarGrid();
Begin
   dbgMaestro.Selected.clear;
   dbgMaestro.Selected.Add('ESTADO'#9'10'#9'Estado');
   dbgMaestro.Selected.Add('PERIODO'#9'10'#9'Periodo');
   dbgMaestro.Selected.Add('USU_GES'#9'15'#9'Usuario Gestiono');
   dbgMaestro.Selected.Add('TIPO_IMPORTACION'#9'20'#9'Tipo de Importacion');
   dbgMaestro.Selected.Add('FEC_SUBIDA'#9'22'#9'Fecha'#9'F'#9'Subida');
   dbgMaestro.Selected.Add('USU_SUBIDA'#9'15'#9'Usuario'#9'F'#9'Subida');
   dbgMaestro.Selected.Add('NOMBRE'#9'30'#9'Nombre de Archivo');
   dbgMaestro.Selected.Add('NUM_REG_COR'#9'10'#9'Correctos'#9'F'#9'Registros');
   dbgMaestro.Selected.Add('NUM_REG_ERR'#9'10'#9'Errados'#9'F'#9'Registros');
   dbgMaestro.Selected.Add('NUM_REG_TOT'#9'10'#9'Total'#9'F'#9'Registros');
   dbgMaestro.Selected.Add('FEC_ANULACION'#9'22'#9'Fecha'#9'F'#9'Anulado');
   dbgMaestro.Selected.Add('USU_ANULACION'#9'15'#9'Usuario'#9'F'#9'Anulado');
   dbgMaestro.Selected.Add('FEC_CIERRE'#9'22'#9'Fecha'#9'F'#9'Cerrado');
   dbgMaestro.Selected.Add('USU_CIERRE'#9'15'#9'Usuario'#9'F'#9'Cerrado');

   dbgMaestro.DataSource := DM1.dsQry3;
End;

(******************************************************************************)

Procedure TfLogImpMas.BitFiltrarClick(Sender : TObject);
Begin
   cargarGrid();
End;

(******************************************************************************)

Procedure TfLogImpMas.FormClose(Sender : TObject; Var Action : TCloseAction);
Begin
   DM1.cdsQry3.Close;
End;

(******************************************************************************)

Procedure TfLogImpMas.dbgMaestroDblClick(Sender : TObject);
Var
   frm : TfLogImpMasDetalle;
Begin
   If DM1.cdsQry3.RecNo <= 0 Then
   Begin
      showmessage('Seleccione un Registro');
      exit
   End;
   frm := TfLogImpMasDetalle.create(Self);
   Try
      frm.xIdArchivo := DM1.cdsQry3.fieldbyname('IDARCHIVO').Value;
      frm.xTituloMaestro := DM1.cdsQry3.fieldbyname('NOMBRE').Value;
      frm.xEstadoMaestro := DM1.cdsQry3.fieldbyname('ESTADO').Value;
      frm.ShowModal;
   Finally
      frm.Free;
   End;

End;

(******************************************************************************)

Procedure TfLogImpMas.BitSalirClick(Sender : TObject);
Begin
   Close();
End;

(******************************************************************************)

Procedure TfLogImpMas.BitExportaClick(Sender : TObject);
Begin
   dtgData.DataSource := DM1.dsQry3;

   If DM1.cdsQry3.RecNo > 0 Then
   Begin
      Try
         DM1.HojaExcel('Log de Importacion Masiva', DM1.dsQry3, dtgData);
      Except
         On Ex : Exception Do
            Application.MessageBox(PChar(Ex.Message), 'ERROR', 16);
      End;
   End;
End;
(******************************************************************************)

Procedure TfLogImpMas.BitAnularClick(Sender : TObject);
Var
   xSQL : String;
Begin
   If DM1.cdsQry3.RecNo <= 0 Then
   Begin
      showmessage('Seleccione un Registro');
      exit
   End;

  // TRUNCADO, SUBIDO, ANULADO, CERRADO
   If (DM1.cdsQry3.fieldbyname('ESTADO').Value = 'ANULADO') Then
   Begin
      showmessage('El Registro ya esta Anulado');
      exit
   End;

   // Inicio: DPP_201205_GESCOB
   If (DM1.cdsQry3.fieldbyname('ESTADO').Value = 'CERRADO') Then
      Begin
         showmessage('El Registro ya esta Cerrado');
         exit
      End;
   // Fin: DPP_201205_GESCOB
   If MessageDlg('Confirma que desea Anular las Gestiones Importadas en el Archivo : ' + chr(13)
      + DM1.cdsQry3.fieldbyname('NOMBRE').Value, mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
   Begin
      Screen.Cursor := crHourGlass;
      xSQL := 'BEGIN DB2ADMIN.SP_GES_COB_ANU_IMP_EXT(' + IntToStr(DM1.cdsQry3.fieldbyname('IDARCHIVO').Value) + ',' + QuotedStr(DM1.wUsuario) + '); END;';
      DM1.DCOM1.AppServer.EjecutaSql(xSQL);
      Screen.Cursor := crDefault;
      showmessage('Se Anulo el Registro');
      cargarGrid();
   End;
End;
(******************************************************************************)

Procedure TfLogImpMas.BitCerrarClick(Sender : TObject);
Var
   xSQL : String;
Begin
   If DM1.cdsQry3.RecNo <= 0 Then
   Begin
      showmessage('Seleccione un Registro');
      exit
   End;

  // TRUNCADO, SUBIDO, ANULADO, CERRADO
   If (DM1.cdsQry3.fieldbyname('ESTADO').Value = 'ANULADO') Then
   Begin
      showmessage('El Registro ya esta Anulado');
      exit
   End;
   If (DM1.cdsQry3.fieldbyname('ESTADO').Value = 'CERRADO') Then
   Begin
      showmessage('El Registro ya esta Cerrado');
      exit
   End;
   If (DM1.cdsQry3.fieldbyname('ESTADO').Value = 'TRUNCADO') Then
   Begin
      showmessage('El Registro se Trunco antes de Terminar');
      exit
   End;

   If MessageDlg('Confirma que desea Cerrar las Gestiones Importadas en el Archivo : ' + chr(13)
      + DM1.cdsQry3.fieldbyname('NOMBRE').Value, mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
   Begin
      xSQL := 'BEGIN DB2ADMIN.SP_GES_COB_CER_IMP_EXT(' + IntToStr(DM1.cdsQry3.fieldbyname('IDARCHIVO').Value) + ',' + QuotedStr(DM1.wUsuario) + ' ); END;';
      DM1.DCOM1.AppServer.EjecutaSql(xSQL);
      showmessage('Se Cerro el Registro');
      cargarGrid();
   End;
End;
(******************************************************************************)
End.

