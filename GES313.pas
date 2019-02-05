// Inicio Uso Estándares: 01/08/2011
// Unidad : Gestión de Cobranzas
// Formulario : FProgProcRpteCon
// Fecha de Creación :
// Autor : Equipo de Sistemas
// Objetivo : Programar Proceso Nocturno de carga de datos para reporte de Consolidado
// Actualizaciones:
Unit GES313;

Interface

Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, Buttons, Wwdbigrd, Grids, Wwdbgrid, ExtCtrls;

Type
   TFProgProcRpteCon = Class(TForm)
      Panel1 : TPanel;
      btnSalir : TBitBtn;
      btnCancelar : TBitBtn;
      Panel2 : TPanel;
      Panel3 : TPanel;
      dbgPorProcesar : TwwDBGrid;
      dbgBtnAdd : TwwIButton;
      dbgProcesado : TwwDBGrid;
      Panel4 : TPanel;
      Label1 : TLabel;
      Panel5 : TPanel;
      Label2 : TLabel;
      Procedure btnSalirClick(Sender : TObject);
      Procedure btnCancelarClick(Sender : TObject);
      Procedure dbgPorProcesarDblClick(Sender : TObject);
      Procedure FormCreate(Sender : TObject);
      Procedure dbgBtnAddClick(Sender : TObject);
   Private
      Procedure fn_cargar_por_procesar;
    { Private declarations }
   Public
    { Public declarations }
   End;

Var
   FProgProcRpteCon : TFProgProcRpteCon;

Implementation

Uses GESDM1, GES314;

{$R *.dfm}

//******************************************************************************
// Nombre : fn_cargar_por_procesar
// Descripcion : cargar los procesos que estan programados
//               para la ejecucion nocturna
//******************************************************************************

Procedure TFProgProcRpteCon.fn_cargar_por_procesar();
Var
   xsSQL : String;
Begin
   xsSQL := 'SELECT CODPRO, USUPRO, FECPRO, FECINIRAN, FECFINRAN, '
      + '          ESTADO, FECINIPRO, FECFINPRO, '
      + '          NUM_TOT_REGISTROS, NUM_REG_PROCESADOS '
      + '     FROM GES_COB_PRO_REP_CON '
      + '    WHERE ESTADO IN (''PROGRAMADO'',''PROCESANDO'') '
      + '    ORDER BY FECPRO';
   DM1.cdsQry2.close;
   DM1.cdsQry2.DataRequest(xsSQL);
   DM1.cdsQry2.Open;
   dbgPorProcesar.DataSource := DM1.dsQry2;
   btnCancelar.Enabled := (DM1.cdsQry2.RecordCount > 0);
   dbgBtnAdd.Enabled := (DM1.cdsQry2.RecordCount <= 0);
End;

//******************************************************************************
// Nombre : FormCreate
// Descripcion : cargar los procesos ejecutados
//******************************************************************************

Procedure TFProgProcRpteCon.FormCreate(Sender : TObject);
Var
   xsSQL : String;
Begin
   xsSQL := 'SELECT CODPRO, USUPRO, FECPRO, FECINIRAN, FECFINRAN, '
      + '          ESTADO, FECINIPRO, FECFINPRO, '
      + '          NUM_TOT_REGISTROS, NUM_REG_PROCESADOS '
      + '     FROM GES_COB_PRO_REP_CON '
      + '    WHERE ESTADO = ''PROCESADO'' '
      + '    ORDER BY FECINIRAN DESC, FECFINRAN DESC';
   DM1.cdsQry1.close;
   DM1.cdsQry1.DataRequest(xsSQL);
   DM1.cdsQry1.Open;
   dbgProcesado.DataSource := DM1.dsQry1;
   fn_cargar_por_procesar();
End;

//******************************************************************************
// Nombre : btnCancelarClick
// Descripcion : cancelar la ejecuion de procesos
//******************************************************************************

Procedure TFProgProcRpteCon.btnCancelarClick(Sender : TObject);
Var
   xsSQL : String;
Begin
   If DM1.cdsQry2.RecordCount <= 0 Then exit;

   If (DM1.cdsQry2.FieldByName('ESTADO').AsString <> 'PROGRAMADO') Then
   Begin
      showmessage('Solo se pueden Cancelar los registros con estado : "PROGRAMADO" ');
      exit;
   End;

   If (DM1.cdsQry2.FieldByName('USUPRO').AsString <> DM1.wUsuario) Then
   Begin
      showmessage('Solo el Usuario ' + DM1.cdsQry2.FieldByName('USUPRO').AsString + ' puede Cancelar esta Programacion!');
      exit;
   End;

   If MessageDlg('Confirma que desea Cancelar esta Programacion ?    ', mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
   Begin
      xsSQL := 'DELETE FROM GES_COB_PRO_REP_CON '
         + '    WHERE CODPRO = ' + DM1.cdsQry2.fieldbyname('CODPRO').AsString;
      DM1.DCOM1.AppServer.EjecutaSql(xsSQL);
      fn_cargar_por_procesar
   End;
End;

//******************************************************************************
// Nombre : btnSalirClick
// Descripcion : cerrar formulario
//******************************************************************************

Procedure TFProgProcRpteCon.btnSalirClick(Sender : TObject);
Begin
   Close;
End;

//******************************************************************************
// Nombre : dbgPorProcesarDblClick
// Descripcion : editar proceso
//******************************************************************************

Procedure TFProgProcRpteCon.dbgPorProcesarDblClick(Sender : TObject);
Var
   frm : TFProgProcCon;
Begin
   If DM1.cdsQry2.RecordCount <= 0 Then exit;

   If (DM1.cdsQry2.FieldByName('ESTADO').AsString <> 'PROGRAMADO') Then
   Begin
      showmessage('Solo se pueden Cancelar los registros con estado : "PROGRAMADO" ');
      exit;
   End;

   If (DM1.cdsQry2.FieldByName('USUPRO').AsString <> DM1.wUsuario) Then
   Begin
      showmessage('Solo el Usuario ' + DM1.cdsQry2.FieldByName('USUPRO').AsString + ' puede Modificar esta Programacion!');
      exit;
   End;

   frm := TFProgProcCon.create(self);
   Try
      frm.xnCodPro := DM1.cdsQry2.fieldbyname('CODPRO').value;
      frm.dtpFInicio.Date := DM1.cdsQry2.fieldbyname('FECINIRAN').value;
      frm.dtpFFin.Date := DM1.cdsQry2.fieldbyname('FECFINRAN').value;
      frm.ShowModal();
   Finally
      frm.free;
   End;
   fn_cargar_por_procesar;
End;

//******************************************************************************
// Nombre : dbgBtnAddClick
// Descripcion : agregar nuevo proceso
//******************************************************************************

Procedure TFProgProcRpteCon.dbgBtnAddClick(Sender : TObject);
Var
   frm : TFProgProcCon;
Begin
   frm := TFProgProcCon.create(self);
   Try
      frm.xnCodPro := 0;
      frm.ShowModal();
   Finally
      frm.free;
   End;
   fn_cargar_por_procesar;
End;

(******************************************************************************)
End.

