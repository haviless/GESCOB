// Inicio Uso Estándares: 01/08/2011
// Unidad : Gestión de Cobranzas
// Formulario : FProProRepBas
// Fecha de Creación :
// Autor : Equipo de Sistemas
// Objetivo : Programar Proceso Nocturno de Generacion de Datos para el Reporte Base
// Actualizaciones:
// HPC_201119_GESCOB 19/09/2011 Acuerdo de Atencion 2011-02-V2.0
// HPC_201203_GESCOB 03/02/2012 crear nivel 0 para consultas
Unit GES505;

Interface

Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, Buttons, Wwdbigrd, StdCtrls, Grids, Wwdbgrid, ExtCtrls;

Type
   TFProProRepBas = Class(TForm)
      btnSalir : TBitBtn;
      dbgPorProcesar : TwwDBGrid;
      btnCancelar : TBitBtn;
      dbgBtnAdd : TwwIButton;
      dbgProcesado : TwwDBGrid;
      Procedure btnSalirClick(Sender : TObject);
      Procedure btnCancelarClick(Sender : TObject);
      Procedure FormCreate(Sender : TObject);
      Procedure dbgBtnAddClick(Sender : TObject);
      Procedure dbgProcesadoDblClick(Sender : TObject);
   Private
      Procedure fn_cargar_por_procesar;
    { Private declarations }
   Public
    { Public declarations }
   End;

Var
   FProProRepBas : TFProProRepBas;

Implementation

Uses GESDM1, DB, GES506;

{$R *.dfm}

//******************************************************************************
// Nombre : fn_cargar_por_procesar
// Descripcion : cargar listado de registros que seran procesados
//******************************************************************************
// INICIO HPC_201203_GESCOB
Procedure TFProProRepBas.fn_cargar_por_procesar();
Var
   xsSQL : String;
   xnNivel : integer;
Begin
   xsSQL := ' SELECT CODPRO, USUPRO, PERIODO, FECPRO, ESTADO, FECINIPRO, '
      + '           FECFINPRO, NUM_TOT_REGISTROS, NUM_REG_PROCESADOS '
      + '      FROM GES_COB_REP_BAS_CAB '
      + '     WHERE ESTADO IN (''PROGRAMADO'',''PROCESANDO'') '
      + '     ORDER BY FECPRO';
   DM1.cdsQry2.close;
   DM1.cdsQry2.DataRequest(xsSQL);
   DM1.cdsQry2.Open;
   dbgPorProcesar.DataSource := DM1.dsQry2;
   xnNivel := StrToInt(Copy(DM1.NivelUsuario(DM1.wUsuario), 2, 1));
   btnCancelar.Enabled := (xnNivel>=3) And (DM1.cdsQry2.RecordCount > 0) And (StrToInt(Copy(DM1.NivelUsuario(DM1.wUsuario), 2, 1)) = 3);
   dbgBtnAdd.Enabled := (xnNivel>=3) And (DM1.cdsQry2.RecordCount <= 0) And (StrToInt(Copy(DM1.NivelUsuario(DM1.wUsuario), 2, 1)) = 3);
End;
// FIN HPC_201203_GESCOB

//******************************************************************************
// Nombre : FormCreate
// Descripcion : cargar listado de registros que seran procesados
//******************************************************************************
Procedure TFProProRepBas.FormCreate(Sender : TObject);
Var
   xsSQL : String;
Begin
   // SOLO MUESTRA LOS ULTIMOS 6 PERIODOS
   xsSQL := ' SELECT A.CODPRO, A.USUPRO, A.PERIODO, A.FECPRO, A.ESTADO, A.FECINIPRO, A.FECFINPRO, '
      + '           A.NUM_TOT_REGISTROS, A.NUM_REG_PROCESADOS '
      + '      FROM GES_COB_REP_BAS_CAB A '
      + '     WHERE A.ESTADO = ''PROCESADO'' '
      + '       AND A.PERIODO >= (SELECT TO_CHAR(ADD_MONTHS(TO_DATE(MAX(B.PERIODO) || ''01'', ''YYYYMMDD''), -5), ''YYYYMM'') FROM GES_COB_REP_BAS_CAB B) '
      + '     ORDER BY A.PERIODO DESC, A.FECFINPRO DESC ';

   DM1.cdsQry1.close;
   DM1.cdsQry1.DataRequest(xsSQL);
   DM1.cdsQry1.Open;
   dbgProcesado.DataSource := DM1.dsQry1;
   fn_cargar_por_procesar();
End;

//******************************************************************************
// Nombre : btnCancelarClick
// Descripcion : cancelar un proceso programado
//******************************************************************************
Procedure TFProProRepBas.btnCancelarClick(Sender : TObject);
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
      xsSQL := 'DELETE FROM GES_COB_REP_BAS_CAB '
         + '    WHERE CODPRO = ' + DM1.cdsQry2.fieldbyname('CODPRO').AsString;
      DM1.DCOM1.AppServer.EjecutaSql(xsSQL);
      fn_cargar_por_procesar
   End;
End;

//******************************************************************************
// Nombre : btnSalirClick
// Descripcion : cerrar formulario
//******************************************************************************
Procedure TFProProRepBas.btnSalirClick(Sender : TObject);
Begin
   Close;
End;

//******************************************************************************
// Nombre : dbgBtnAddClick
// Descripcion : agrega un proceso nocturno
//******************************************************************************
Procedure TFProProRepBas.dbgBtnAddClick(Sender : TObject);
Var
   xsSQL : String;
   xsPeriodo : String;
   xnCantPeriodo : Integer;
   xnCodPro : integer;
Begin
   xsSQL := 'SELECT (NVL(MAX(CODPRO),0) + 1) CODPRO FROM GES_COB_REP_BAS_CAB';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xsSQL);
   DM1.cdsQry.Open;
   xnCodPro := DM1.cdsQry.fieldbyname('CODPRO').Value;
   DM1.cdsQry.Close;

   xsSQL := ' SELECT MAX(PERIODO) PERIODO '
      + '      FROM GES_COB_RPT_ING_MEN ';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xsSQL);
   DM1.cdsQry.Open;
   xsPeriodo := DM1.cdsQry.fieldbyname('PERIODO').Value;
   DM1.cdsQry.Close;

   If xsPeriodo = '' Then
   Begin
      MessageDlg('No Existen Periodos en para procesar. Revise el Reporte de Ingresos Mensuales!', mtInformation, [mbOk], 0);
      exit;
   End;

   xsSQL := ' SELECT COUNT(PERIODO) CANT '
      + '      FROM GES_COB_REP_BAS_CAB '
      + '     WHERE PERIODO =  ' + QuotedStr(xsPeriodo);
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xsSQL);
   DM1.cdsQry.Open;
   xnCantPeriodo := DM1.cdsQry.fieldbyname('CANT').AsInteger;
   DM1.cdsQry.Close;

   If xnCantPeriodo >= 2 Then
   Begin
      MessageDlg('Solo se puede procesar dos veces un mismo Periodo : ' + xsPeriodo + '!', mtInformation, [mbOk], 0);
      exit;
   End;

   If MessageDlg('Confirma que desea programar el Periodo : ' + xsPeriodo + '?',
      mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
   Begin
      xsSQL := 'INSERT INTO GES_COB_REP_BAS_CAB(CODPRO, USUPRO, PERIODO, FECPRO, ESTADO) '
         + '        VALUES(' + IntToStr(xnCodPro) + ',' + QuotedStr(DM1.wUsuario) + ',' + QuotedStr(xsPeriodo) + ', SYSDATE,'
         + '                  ''PROGRAMADO'')';
      DM1.DCOM1.AppServer.EjecutaSql(xsSQL);
   End;
   fn_cargar_por_procesar;
End;

//******************************************************************************
// Nombre : dbgProcesadoDblClick
// Descripcion : muestra el detalle de los registros procesados
//******************************************************************************
Procedure TFProProRepBas.dbgProcesadoDblClick(Sender : TObject);
Begin
   If DM1.cdsQry1.RecordCount > 0 Then
   Begin
      Try
         FVisRepBas := TFVisRepBas.create(self);
         FVisRepBas.xnCodPro := DM1.cdsQry1.FieldByName('CODPRO').Value;
         FVisRepBas.lblPeriodoProcesado.Caption := ' Periodo Procesado : ' + DM1.cdsQry1.FieldByName('PERIODO').asstring;
         FVisRepBas.lblFechaProceso.Caption := ' Fecha de Proceso : ' + DM1.cdsQry1.FieldByName('FECINIPRO').asstring;
         FVisRepBas.showmodal;
      Finally
         FVisRepBas.free;
      End;
   End;
End;
(******************************************************************************)
End.
                     
