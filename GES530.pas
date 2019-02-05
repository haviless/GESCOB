// Inicio Uso Estándares: 01/08/2011
// Unidad : Gestión de Cobranzas
// Formulario : FConMetGes
// Fecha de Creación : 13/01/2012
// Autor : Equipo de Sistemas
// Objetivo : Controlar las Metas de los Gestores Activo e Inactivos
// Actualizaciones:
// HPC_201201_GESCOB 09/01/2012 Control de Metas por Gestor
// HPC_201202_GESCOB 26/01/2012 Mejoras en calculo e impresion de graficos (pagos >= 50%, estaba como >50%, pero segun el rescate ampliado es >=50%)
// HPC_201203_GESCOB 03/02/2012 crear nivel 0 para consultas
// HPC_201206_GESCOB - F3 28/08/2012 CREAR RESUMEN DE CONTROL DE METAS POR GESTOR
// DPP_201205_GESCOB: Pase a producción a partir de los pases HPC_201205 y HPC_201206
// HPC_201301_GESCOB Se cambian los Parametros de las metas
// SPP_201301_GESCOB: El pase a producción se realiza de acuerdo al HPC_201301_GESCOB

Unit GES530;

Interface

Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, ExtCtrls, StdCtrls, Buttons, fcButton, fcImgBtn, fcShapeBtn,
   ComCtrls, Wwdbigrd, Grids, Wwdbgrid, Db;

Type
   TFConMetGes = Class(TForm)
      Panel1 : TPanel;
      Panel4 : TPanel;
      lblMaestroCantRegistros : TLabel;
      btnMaestroAnular : TBitBtn;
      btnMaestroCerrar : TBitBtn;
      btnMaestroBuscar : TBitBtn;
      btnMaestroHistorial : TBitBtn;
      btnMaestroAvance : TBitBtn;
      btnMaestroExportar : TBitBtn;
      pctrGestor : TPageControl;
      tsGestoresActivos : TTabSheet;
      tsGestoresInactivos : TTabSheet;
      gbMaestroBuscar : TGroupBox;
      z2bbtnBuscar : TfcShapeBtn;
      edtMaestroBuscar : TEdit;
      pnlControles : TPanel;
      btnSalir : TBitBtn;
      dbgMaestroActivos : TwwDBGrid;
      dbgMaestroInactivos : TwwDBGrid;
      btnResumen : TBitBtn;
      Procedure FormCreate(Sender : TObject);
      Procedure pctrGestorChange(Sender : TObject);
      Procedure btnMaestroBuscarClick(Sender : TObject);
      Procedure edtMaestroBuscarExit(Sender : TObject);
      Procedure edtMaestroBuscarKeyPress(Sender : TObject; Var Key : Char);
      Procedure edtMaestroBuscarChange(Sender : TObject);
      Procedure btnMaestroAnularClick(Sender : TObject);
      Procedure btnMaestroCerrarClick(Sender : TObject);
      Procedure dbgMaestroActivosDblClick(Sender : TObject);
      Procedure btnMaestroAvanceClick(Sender : TObject);
      Procedure btnSalirClick(Sender : TObject);
      Procedure FormClose(Sender : TObject; Var Action : TCloseAction);
      Procedure btnMaestroHistorialClick(Sender : TObject);
      Procedure btnResumenClick(Sender : TObject);
   Private
      xnNivel : integer;
      Procedure fn_carga_gestores;
    { Private declarations }
   Public
      xsPeriodoGestion : String;
   End;

Var
   FConMetGes : TFConMetGes;

Implementation

// INICIO: DPP_201205_GESCOB - F3
Uses GESDM1, GES531, GES532,
     GES534;
// FIN: DPP_201205_GESCOB - F3
{$R *.dfm}

//******************************************************************************
// Nombre : fn_carga_gestores
// Descripcion : carga en los grids, los gestores activos y los inactivo
//******************************************************************************

Procedure TFConMetGes.fn_carga_gestores();
Var
   xsSQL : String;
Begin
   Screen.Cursor := crHourGlass;
   // INICIO HPC_201203_GESCOB
   xnNivel := StrToInt(Copy(DM1.NivelUsuario(DM1.wUsuario), 2, 1));
   // FIN HPC_201203_GESCOB

   // Inicio: SPP_201301_GESCOB Se cambian los Parametros de las metas
   xsSQL := 'SELECT MAX(PERIODO) PERIODO FROM GES_COB_CAB';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xsSQL);
   DM1.cdsQry.Open;
   xsPeriodoGestion := DM1.cdsQry.FieldByname('PERIODO').AsString;

   xsSQL := 'SELECT A.USERID, B.USERNOM, C.ID_MET_GES, '
      + '           C.FEC_INI, C.FEC_FIN, C.ESTADO, C.MON_SALVEN, '
      + '           C.CAN_SALVEN, C.MON_SALTOT, C.CAN_SALTOT '
      + '      FROM GES_NIV_USU_OTO A, TGE006 B, GES_COB_MET_GES C '
      + '     WHERE A.USERID = B.USERID '
      + '       AND REGACT = ''S'' '
      + '       AND USERNIV IN (''N1'') '
      + '       AND A.USERID = C.USERID(+) '
      + '       AND ' + QuotedStr(xsPeriodoGestion) + ' = C.PERIODO(+) '
      + '       AND ''ACTIVA'' = C.ESTADO(+) '
      + '     ORDER BY USERID ';

   DM1.cdsQry1.Close;
   DM1.cdsQry1.DataRequest(xsSQL);
   DM1.cdsQry1.Open;
   dbgMaestroActivos.DataSource := DM1.dsQry1;
   dbgMaestroActivos.Selected.Clear;
   dbgMaestroActivos.Selected.Add('USERID'#9'16'#9'Usuario');
   dbgMaestroActivos.Selected.Add('FEC_INI'#9'12'#9'Inicio'#9'F'#9'Fechas');
   dbgMaestroActivos.Selected.Add('FEC_FIN'#9'12'#9'Fin'#9'F'#9'Fechas');
   dbgMaestroActivos.Selected.Add('MON_SALVEN'#9'20'#9'Refinanciados~Cancelados');
   dbgMaestroActivos.Selected.Add('MON_SALTOT'#9'20'#9'Efectivo/Banco~Cobrado');
   dbgMaestroActivos.Selected.Add('CAN_SALTOT'#9'12'#9'Docentes~Regunlarizados');
   dbgMaestroActivos.ApplySelected;

   TNumericField(DM1.cdsQry1.FieldByName('MON_SALVEN')).DisplayFormat := '###,###,##0.#0';
   TNumericField(DM1.cdsQry1.FieldByName('MON_SALTOT')).DisplayFormat := '###,###,##0.#0';
   TNumericField(DM1.cdsQry1.FieldByName('CAN_SALTOT')).DisplayFormat := '###,###,##0';
   //
   xsSQL := 'SELECT A.USERID, B.USERNOM, C.ID_MET_GES, '
      + '           C.FEC_INI, C.FEC_FIN, C.ESTADO, C.MON_SALVEN, '
      + '           C.CAN_SALVEN, C.MON_SALTOT, C.CAN_SALTOT '
      + '      FROM GES_NIV_USU_OTO A, TGE006 B, GES_COB_MET_GES C '
      + '     WHERE A.USERID = B.USERID '
      + '       AND REGACT = ''N'' '
      + '       AND USERNIV IN (''N1'') '
      + '       AND A.USERID = C.USERID(+) '
      + '       AND ' + QuotedStr(xsPeriodoGestion) + ' = C.PERIODO(+) '
      + '       AND ''ACTIVA'' = C.ESTADO(+) '
      + '     ORDER BY USERID ';
   DM1.cdsQry2.Close;
   DM1.cdsQry2.DataRequest(xsSQL);
   DM1.cdsQry2.Open;
   dbgMaestroInactivos.DataSource := DM1.dsQry2;

   dbgMaestroInactivos.Selected.Clear;
   dbgMaestroInactivos.Selected.Add('USERID'#9'15'#9'Usuario');
   dbgMaestroInactivos.Selected.Add('FEC_INI'#9'12'#9'Inicio'#9'F'#9'Fechas');
   dbgMaestroInactivos.Selected.Add('FEC_FIN'#9'12'#9'Fin'#9'F'#9'Fechas');
   dbgMaestroInactivos.Selected.Add('MON_SALVEN'#9'20'#9'Refinanciados~Cancelados');
   dbgMaestroInactivos.Selected.Add('MON_SALTOT'#9'20'#9'Efectivo/Banco~Cobrado');
   dbgMaestroInactivos.Selected.Add('CAN_SALTOT'#9'12'#9'Docentes~Regunlarizados');
   dbgMaestroInactivos.ApplySelected;

   TNumericField(DM1.cdsQry2.FieldByName('MON_SALVEN')).DisplayFormat := '###,###,##0.#0';
   TNumericField(DM1.cdsQry2.FieldByName('MON_SALTOT')).DisplayFormat := '###,###,##0.#0';
   TNumericField(DM1.cdsQry2.FieldByName('CAN_SALTOT')).DisplayFormat := '###,###,##0';
   // Fin: SPP_201301_GESCOB Se cambian los Parametros de las metas

   pctrGestor.ActivePage := tsGestoresActivos;
   pctrGestorChange(pctrGestor);
   Screen.Cursor := crDefault;
End;

//******************************************************************************
// Nombre : FormCreate
// Descripcion : inicializa los controles
//******************************************************************************

Procedure TFConMetGes.FormCreate(Sender : TObject);
Begin
   fn_carga_gestores();
End;

//******************************************************************************
// Nombre : pctrGestorChange
// Descripcion : Activa e inactiva los controle dependiendo si se selecciona la
//               pestaña de gestores activos o la de inactivos
//******************************************************************************

Procedure TFConMetGes.pctrGestorChange(Sender : TObject);
Var
   xlEnabled : boolean;
   xlNivelPermitido : boolean;
Begin
   btnMaestroBuscar.Enabled := False;
   btnMaestroAvance.Enabled := False;
   btnMaestroHistorial.Enabled := False;
   btnMaestroCerrar.Enabled := False;
   btnMaestroAnular.Enabled := False;
   btnMaestroExportar.Enabled := False;

   xlEnabled := ((pctrGestor.ActivePage = tsGestoresActivos) And (DM1.cdsQry1.RecordCount > 0)
      Or (pctrGestor.ActivePage = tsGestoresInactivos) And (DM1.cdsQry2.RecordCount > 0));
   // INICIO HPC_201203_GESCOB
   xlNivelPermitido := (xnNivel >= 3);

   btnMaestroBuscar.Enabled := xlEnabled;
   btnMaestroAnular.Enabled := xlNivelPermitido And xlEnabled;
   btnMaestroCerrar.Enabled := xlNivelPermitido And xlEnabled;
   btnMaestroHistorial.Enabled := xlEnabled;
   btnMaestroAvance.Enabled := xlEnabled;
   // FIN HPC_201203_GESCOB
End;

//******************************************************************************
// Nombre : btnMaestroBuscarClick
// Descripcion : Muestra u oculta el control para la busqueda de los asociados
//               en la grilla
//******************************************************************************

Procedure TFConMetGes.btnMaestroBuscarClick(Sender : TObject);
Begin
   edtMaestroBuscar.Text := '';
   If Not gbMaestroBuscar.Visible Then
   Begin
      gbMaestroBuscar.Visible := True;
      edtMaestroBuscar.SetFocus;
   End
   Else
      gbMaestroBuscar.Visible := False;
End;

//******************************************************************************
// Nombre : edtMaestroBuscarExit
// Descripcion : Muestra u oculta el control para la busqueda de los asociados
//               en la grilla
//******************************************************************************

Procedure TFConMetGes.edtMaestroBuscarExit(Sender : TObject);
Begin
   btnMaestroBuscarClick(Nil);
End;

//******************************************************************************
// Nombre : edtMaestroBuscarKeyPress
// Descripcion : Da el foco a la grilla de la pestaña que esta visible
//******************************************************************************

Procedure TFConMetGes.edtMaestroBuscarKeyPress(Sender : TObject;
   Var Key : Char);
Begin
   If key = #13 Then
   Begin
      If (pctrGestor.ActivePage = tsGestoresActivos) Then
         dbgMaestroActivos.SetFocus;

      If (pctrGestor.ActivePage = tsGestoresInactivos) Then
         dbgMaestroInactivos.SetFocus;
   End
End;

//******************************************************************************
// Nombre : edtMaestroBuscarChange
// Descripcion : busca en el cds que esta en la pestaña visible
//******************************************************************************

Procedure TFConMetGes.edtMaestroBuscarChange(Sender : TObject);
Begin
   If Length(Trim(edtMaestroBuscar.Text)) > 0 Then
   Begin
      If (pctrGestor.ActivePage = tsGestoresActivos) Then
         DM1.cdsQry1.Locate('USERID', VarArrayOf([TRIM(edtMaestroBuscar.Text)]), [loPartialKey]);

      If (pctrGestor.ActivePage = tsGestoresInactivos) Then
         DM1.cdsQry2.Locate('USERID', VarArrayOf([TRIM(edtMaestroBuscar.Text)]), [loPartialKey]);
   End;
End;

//******************************************************************************
// Nombre : btnMaestroAnularClick
// Descripcion : Anula la meta actual del Gestor Seleccionado
//******************************************************************************

Procedure TFConMetGes.btnMaestroAnularClick(Sender : TObject);
Var
   xsSQL : String;
   xsESTADO : String;
   xsUSERID : String;
   xsID_MET_GES : String;
Begin

   If (pctrGestor.ActivePage = tsGestoresActivos) Then
   Begin
      xsESTADO := DM1.cdsQry1.fieldbyname('ESTADO').AsString;
      xsUSERID := DM1.cdsQry1.fieldbyname('USERID').AsString;
      xsID_MET_GES := DM1.cdsQry1.fieldbyname('ID_MET_GES').asstring;
   End;

   If (pctrGestor.ActivePage = tsGestoresInactivos) Then
   Begin
      xsESTADO := DM1.cdsQry2.fieldbyname('ESTADO').AsString;
      xsUSERID := DM1.cdsQry2.fieldbyname('USERID').AsString;
      xsID_MET_GES := DM1.cdsQry2.fieldbyname('ID_MET_GES').asstring;
   End;

   If (xsESTADO <> 'ACTIVA') Then
   Begin
      MessageDlg('Solo se pueden Anular las Metas Activas', mtInformation, [mbOk], 0);
      Exit;
   End;
   If MessageDlg('Confirma que desea Anular la Meta del Gestor : ' + xsUSERID + '?', mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
   Begin
      xsSQL := 'UPDATE GES_COB_MET_GES '
         + '       SET ESTADO = ''ANULADA'' '
         + '          ,USU_ANU = ' + QuotedStr(DM1.wUsuario)
         + '          ,FEC_ANU = SYSDATE '
         + '     WHERE ID_MET_GES = ' + xsID_MET_GES;
      DM1.DCOM1.AppServer.EjecutaSql(xsSQL);
      fn_carga_gestores();
   End;
End;

//******************************************************************************
// Nombre : btnMaestroCerrarClick
// Descripcion : Da por cerrada a la Meta Actual del Gestor Seleccionado
//******************************************************************************

Procedure TFConMetGes.btnMaestroCerrarClick(Sender : TObject);
Var
   xsSQL : String;
   xsESTADO : String;
   xsUSERID : String;
   xsID_MET_GES : String;
Begin

   If (pctrGestor.ActivePage = tsGestoresActivos) Then
   Begin
      xsESTADO := DM1.cdsQry1.fieldbyname('ESTADO').AsString;
      xsUSERID := DM1.cdsQry1.fieldbyname('USERID').AsString;
      xsID_MET_GES := DM1.cdsQry1.fieldbyname('ID_MET_GES').asstring;
   End;

   If (pctrGestor.ActivePage = tsGestoresInactivos) Then
   Begin
      xsESTADO := DM1.cdsQry2.fieldbyname('ESTADO').AsString;
      xsUSERID := DM1.cdsQry2.fieldbyname('USERID').AsString;
      xsID_MET_GES := DM1.cdsQry2.fieldbyname('ID_MET_GES').asstring;
   End;

   If (xsESTADO <> 'ACTIVA') Then
   Begin
      MessageDlg('Solo se pueden Cerrar las Metas Activas', mtInformation, [mbOk], 0);
      Exit;
   End;

   If MessageDlg('Confirma que desea Cerrar la Meta del Gestor : ' + xsUSERID + '?', mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
   Begin
      xsSQL := 'UPDATE GES_COB_MET_GES '
         + '       SET ESTADO = ''CERRADA'' '
         + '          ,USU_ANU = ' + QuotedStr(DM1.wUsuario)
         + '          ,FEC_ANU = SYSDATE '
         + '     WHERE ID_MET_GES = ' + xsID_MET_GES;
      DM1.DCOM1.AppServer.EjecutaSql(xsSQL);
      fn_carga_gestores();
   End;
End;

//******************************************************************************
// Nombre : dbgMaestroActivosDblClick
// Descripcion : Da por cerrada a la Meta Actual del Gestor Seleccionado
//******************************************************************************

Procedure TFConMetGes.dbgMaestroActivosDblClick(Sender : TObject);
Var
   xsUserid : String;
Begin
   // INICIO HPC_201203_GESCOB
   If (xnNivel < 3) Or (DM1.cdsQry1.fieldbyname('ESTADO').AsString = 'ACTIVA') Then
   Begin
      // EN REUNION EL DIA 27/01/2011 SE ACORDO CON JSANCHEZ, EALVA, JCARBONEL Y ROLANDO ESPINOZA
      // QUE NO SE PUEDA MODIFICAR LAS METAS
      // SE CAMBIO DE POSOCION PAR QUE NO CREE OBJETOS QUE LUEGO NO UTILIZARA
      Exit;
   End;

   FMetGes := TFMetGes.create(self);
   Try
      xsUserid := DM1.cdsQry1.fieldbyname('USERID').AsString;
      If (DM1.cdsQry1.fieldbyname('ESTADO').AsString = 'ACTIVA') Then
      Begin
         // EN REUNION EL DIA 27/01/2011 SE ACORDO CON JSANCHEZ, EALVA, JCARBONEL Y ROLANDO ESPINOZA
         // QUE NO SE PUEDA MODIFICAR LAS METAS
         //Exit;
         FMetGes.tmFormulario := tmEdit;
         FMetGes.dtpFInicio.Date := DM1.cdsQry1.fieldbyname('FEC_INI').AsDateTime;
         FMetGes.dtpFFin.Date := DM1.cdsQry1.fieldbyname('FEC_FIN').AsDateTime;
         FMetGes.edtMetMonSalVen.Text := DM1.cdsQry1.fieldbyname('MON_SALVEN').AsString;
         FMetGes.edtMetCantSalVen.Text := DM1.cdsQry1.fieldbyname('CAN_SALVEN').AsString;
         FMetGes.edtMetMonSalTot.Text := DM1.cdsQry1.fieldbyname('MON_SALTOT').AsString;
         FMetGes.edtMetCantSalTot.Text := DM1.cdsQry1.fieldbyname('CAN_SALTOT').AsString;
         FMetGes.xnID_MET_GES := DM1.cdsQry1.fieldbyname('ID_MET_GES').AsInteger;
      End
      Else
         FMetGes.tmFormulario := tmAdd;
      FMetGes.xsPeriodoGestion := xsPeriodoGestion;
      FMetGes.xsGestor := DM1.cdsQry1.fieldbyname('USERID').AsString;
      If FMetGes.ShowModal = mrOk Then
      Begin
         fn_carga_gestores();
         DM1.cdsQry1.Locate('USERID', VarArrayOf([xsUserid]), [loCaseInsensitive]);
      End;
   Finally
      FMetGes.Free;
   End;
   // FIN HPC_201203_GESCOB
End;

//******************************************************************************
// Nombre : btnMaestroAvanceClick
// Descripcion : Visualiza el avance de la meta
//******************************************************************************

Procedure TFConMetGes.btnMaestroAvanceClick(Sender : TObject);
Var
   xxFrm : TFConMetGesAvance;
   xsSQL : String;
   xsESTADO : String;
   xsUSERID : String;
   xdFecIni : TDate;
   xdFecFin : TDate;
   xnMetMonSalVen : double;
   xnMetConSalVen : double;
   xnMetMonSalTot : double;
   xnMetConSalTot : double;
Begin

   If (pctrGestor.ActivePage = tsGestoresActivos) Then
   Begin
      xsESTADO := DM1.cdsQry1.fieldbyname('ESTADO').AsString;
      xsUSERID := DM1.cdsQry1.fieldbyname('USERID').AsString;
      xdFecIni := DM1.cdsQry1.fieldbyname('FEC_INI').AsDateTime;
      xdFecFin := DM1.cdsQry1.fieldbyname('FEC_FIN').AsDateTime;
      xnMetMonSalVen := DM1.cdsQry1.fieldbyname('MON_SALVEN').AsFloat;
      xnMetConSalVen := DM1.cdsQry1.fieldbyname('CAN_SALVEN').AsFloat;
      xnMetMonSalTot := DM1.cdsQry1.fieldbyname('MON_SALTOT').AsFloat;
      xnMetConSalTot := DM1.cdsQry1.fieldbyname('CAN_SALTOT').AsFloat;
   End;

   If (pctrGestor.ActivePage = tsGestoresInactivos) Then
   Begin
      xsESTADO := DM1.cdsQry2.fieldbyname('ESTADO').AsString;
      xsUSERID := DM1.cdsQry2.fieldbyname('USERID').AsString;
      xdFecIni := DM1.cdsQry2.fieldbyname('FEC_INI').AsDateTime;
      xdFecFin := DM1.cdsQry2.fieldbyname('FEC_FIN').AsDateTime;
      xnMetMonSalVen := DM1.cdsQry2.fieldbyname('MON_SALVEN').AsFloat;
      xnMetConSalVen := DM1.cdsQry2.fieldbyname('CAN_SALVEN').AsFloat;
      xnMetMonSalTot := DM1.cdsQry2.fieldbyname('MON_SALTOT').AsFloat;
      xnMetConSalTot := DM1.cdsQry2.fieldbyname('CAN_SALTOT').AsFloat;
   End;

   If (xsESTADO <> 'ACTIVA') Then
   Begin
      MessageDlg('Solo se pueden ver los Avances de las Metas Activas', mtInformation, [mbOk], 0);
      Exit;
   End;
// Inicio: SPP_201301_GESCOB
   FConMetGesAvance := TFConMetGesAvance.create(self);
   Try
      FConMetGesAvance.xsUsuario := xsUSERID;
      FConMetGesAvance.xsPeriodo := xsPeriodoGestion;
      FConMetGesAvance.xdFecIni  := xdFecIni;
      FConMetGesAvance.xdFecFin  := xdFecFin;
      FConMetGesAvance.xnMetMonSalVen := xnMetMonSalVen;
      FConMetGesAvance.xnMetConSalVen := xnMetConSalVen;
      FConMetGesAvance.xnMetMonSalTot := xnMetMonSalTot;
      FConMetGesAvance.xnMetConSalTot := xnMetConSalTot;
      FConMetGesAvance.showmodal();
   Finally
      FConMetGesAvance.free;
// Fin: SPP_201301_GESCOB
   End;
End;

//******************************************************************************
// Nombre : btnSalirClick
// Descripcion : Cierra el Formalario
//******************************************************************************

Procedure TFConMetGes.btnSalirClick(Sender : TObject);
Begin
   Close;
End;

//******************************************************************************
// Nombre : FormClose
// Descripcion : Libera la memoria al cerrar el formulario
//******************************************************************************

Procedure TFConMetGes.FormClose(Sender : TObject; Var Action : TCloseAction);
Begin
   Action := caFree;
End;

//******************************************************************************
// Nombre : btnMaestroHistorialClick
// Descripcion : Muesstra el Historial de las metas de un gestor
//******************************************************************************

Procedure TFConMetGes.btnMaestroHistorialClick(Sender : TObject);
Begin
   // los reportes se han programado para una segunda entrega
   showmessage('En Implementacion');
End;
(******************************************************************************)

// INICIO: DPP_201205_GESCOB - F3
Procedure TFConMetGes.btnResumenClick(Sender : TObject);
Var
   xxFrm : TFConMetGesRes;
Begin
   xxFrm := TFConMetGesRes.create(self);
   Try
// Inicio: SPP_201301_GESCOB
      xxFrm.xsPeriodoGestion:=xsPeriodoGestion;
// Fin: SPP_201301_GESCOB
      xxFrm.showmodal();
   Finally
      xxFrm.free;
   End;
End;
// FIN: DPP_201205_GESCOB - F3
(******************************************************************************)
End.
