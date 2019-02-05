// Inicio Uso Estándares: 01/08/2011
// Unidad : Gestión de Cobranzas
// Formulario : TFRepControlCampanhas
// Fecha de Creación : 20/12/2011
// Autor : Equipo de Sistemas
// Objetivo : Reporte de Indicadores de Control de Campañas
// Actualizaciones:
// HPC_201121_GESCOB 20/12/2011 Indicadores de Control de Campañas
// HPC_201202_GESCOB 26/01/2012 Mejoras en calculo e impresion de graficos (pagos >= 50%, estaba como >50%, pero segun el rescate ampliado es >=50%)
// HPC_201203_GESCOB 03/02/2012 crear nivel 0 para consultas
// HPC_201301_GESCOB 21/02/2013 No va el Periodo
// SPP_201301_GESCOB: El pase a producción se realiza de acuerdo al HPC_201301_GESCOB

Unit GES525;

Interface

Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, ExtCtrls, StdCtrls, Buttons, Wwdbigrd, Grids, Wwdbgrid,
   fcButton, fcImgBtn, fcShapeBtn, db, wwExport, shellapi;

Type
   TFRepControlCampanhas = Class(TForm)
      pnlControles : TPanel;
      btnSalir : TBitBtn;
      rgEstado : TRadioGroup;
      pnlFiltro : TPanel;
      Panel1 : TPanel;
      Panel2 : TPanel;
      Panel3 : TPanel;
      Splitter1 : TSplitter;
      Panel4 : TPanel;
      dbgMaestro : TwwDBGrid;
      btnMaestroAdd : TwwIButton;
      btnMaestroAnular : TBitBtn;
      btnMaestroExportar : TBitBtn;
      btnMaestroCerrar : TBitBtn;
      lblMaestroCantRegistros : TLabel;
      btnMaestroBuscar : TBitBtn;
      gbMaestroBuscar : TGroupBox;
      z2bbtnBuscar : TfcShapeBtn;
      edtMaestroBuscar : TEdit;
      btnMaestroUbigeo : TBitBtn;
      btnMaestroAvance : TBitBtn;
      dbgDetalle : TwwDBGrid;
      lblDetalleCantRegistros : TLabel;
      Procedure FormShow(Sender : TObject);
      Procedure rgEstadoClick(Sender : TObject);
      Procedure dbgMaestroDblClick(Sender : TObject);
      Procedure btnMaestroAddClick(Sender : TObject);
      Procedure btnSalirClick(Sender : TObject);
      Procedure btnMaestroAnularClick(Sender : TObject);
      Procedure btnMaestroCerrarClick(Sender : TObject);
      Procedure btnMaestroBuscarClick(Sender : TObject);
      Procedure edtMaestroBuscarChange(Sender : TObject);
      Procedure edtMaestroBuscarExit(Sender : TObject);
      Procedure edtMaestroBuscarKeyPress(Sender : TObject; Var Key : Char);
      Procedure btnMaestroExportarClick(Sender : TObject);
      Procedure btnMaestroUbigeoClick(Sender : TObject);
      Procedure btnMaestroAvanceClick(Sender : TObject);
      Procedure dbgMaestroTitleButtonClick(Sender : TObject;
         AFieldName : String);
      Procedure dbgMaestroRowChanged(Sender : TObject);
   Private
      xnNivel : integer; // HPC_201203_GESCOB
      Procedure fn_cargar_datos_maestro;
      Procedure fn_bloquear_controles_maestro(wgEstado : boolean);
      Procedure fn_cargar_datos_detalle(wgIdConCam : integer);
    { Private declarations }
   Public
    { Public declarations }
   End;

Var
   FRepControlCampanhas : TFRepControlCampanhas;

Implementation

Uses GESDM1, GES526, GES527, GES528;

{$R *.dfm}

//******************************************************************************
// Nombre : fn_bloquear_controles_maestro
// Descripcion : controla que botones quedan activados
//******************************************************************************

Procedure TFRepControlCampanhas.fn_bloquear_controles_maestro(wgEstado : boolean);
VAR xlNivelPermitido : boolean;
Begin
   // INICIO HPC_201203_GESCOB
   xlNivelPermitido := (xnNivel>=3);
   btnMaestroAdd.Enabled :=  xlNivelPermitido AND (rgEstado.ItemIndex < 2);
   btnMaestroAnular.Enabled := xlNivelPermitido AND wgEstado;
   btnMaestroCerrar.Enabled := xlNivelPermitido AND wgEstado;
   btnMaestroUbigeo.Enabled := xlNivelPermitido AND wgEstado;
   btnMaestroAvance.Enabled := wgEstado;

   btnMaestroBuscar.Enabled := wgEstado;
   btnMaestroExportar.Enabled := wgEstado;
   // FIN HPC_201203_GESCOB
End;

//******************************************************************************
// Nombre : fn_cargar_datos_maestro
// Descripcion : Carga y muestra la data en el grid principal
//******************************************************************************

Procedure TFRepControlCampanhas.fn_cargar_datos_maestro();
Var
   xsSQL : String;
   xsWhereEstado : String;
Begin
   Screen.Cursor := crHourGlass;
   // INICIO HPC_201203_GESCOB
   xnNivel := StrToInt(Copy(DM1.NivelUsuario(DM1.wUsuario), 2, 1));
   // FIN HPC_201203_GESCOB
   fn_bloquear_controles_maestro(false);
   Case rgEstado.ItemIndex Of
      0 : xsWhereEstado := '';
      1 : xsWhereEstado := ' ESTADO = ''ACTIVA'' ';
      2 : xsWhereEstado := ' ESTADO = ''CERRADA'' ';
      3 : xsWhereEstado := ' ESTADO = ''ANULADA'' ';
   End;
   If xsWhereEstado <> '' Then
      xsWhereEstado := ' WHERE ' + xsWhereEstado;

   xsSQL := 'SELECT IDCONCAM, NOMCAM, FECINI, FECFIN, '
      + '           PERCAR, METSALEFEBAN, METSALREF, ESTADO,  '
      + '           USERID, FREG, UREG '
      + '      FROM GES_COB_CON_CAM '
      + xsWhereEstado
      + '     ORDER BY FECINI DESC';
   DM1.cdsQry1.close;
   DM1.cdsQry1.DataRequest(xsSQL);
   DM1.cdsQry1.Open;
   dbgMaestro.DataSource := DM1.dsQry1;

   dbgMaestro.Selected.Clear;
   dbgMaestro.Selected.Add('NOMCAM'#9'40'#9'Campaña');
   dbgMaestro.Selected.Add('FECINI'#9'10'#9'Fec.Inicio');
   dbgMaestro.Selected.Add('FECFIN'#9'10'#9'Fec.Fin');
   // Inicio: SPP_201301_GESCOB 21/02/2013 No va el Periodo
   //dbgMaestro.Selected.Add('PERCAR'#9'8'#9'Cartera');
   // Fin: SPP_201301_GESCOB 21/02/2013 No va el Periodo

   dbgMaestro.Selected.Add('METSALREF'#9'10'#9'Meta Saldo~Ref.');
   dbgMaestro.Selected.Add('METSALEFEBAN'#9'10'#9'Meta Saldo~Efe/Ban');
   dbgMaestro.Selected.Add('ESTADO'#9'10'#9'Estado');
   dbgMaestro.ApplySelected;
   fn_bloquear_controles_maestro(DM1.cdsQry1.RecordCount > 0);
   lblMaestroCantRegistros.Caption := inttostr(DM1.cdsQry1.RecordCount) + ' Registros';
   dbgMaestroRowChanged(Nil);
   Screen.Cursor := crDefault;
End;

//******************************************************************************
// Nombre : FormShow
// Descripcion : evento que se dispara cuando se Muestra el formulario
//******************************************************************************

Procedure TFRepControlCampanhas.FormShow(Sender : TObject);
Begin
   rgEstado.ItemIndex := 1;
   dbgDetalle.DataSource := DM1.dsQry2;
   // ordenar grid
   dbgMaestro.TitleButtons := true; // dbgMaestroTitleButtonClick
End;

//******************************************************************************
// Nombre : rgEstadoClick
// Descripcion : evento que se dispara cuando se cambia el estado
//            Filtrar datos que se muestran por la marca que tiene en su estado
//******************************************************************************

Procedure TFRepControlCampanhas.rgEstadoClick(Sender : TObject);
Begin
   fn_cargar_datos_maestro();
End;

//******************************************************************************
// Nombre : dbgMaestroDblClick
// Descripcion : Modificar la campaña seleccionada
//******************************************************************************

Procedure TFRepControlCampanhas.dbgMaestroDblClick(Sender : TObject);
Begin
   // EN REUNION EL DIA 27/01/2011 SE ACORDO CON JSANCHEZ, EALVA, JCARBONEL Y ROLANDO ESPINOZA
   // QUE NO SE PUEDA MODIFICAR LAS METAS
   Exit;
   If (DM1.cdsQry1.RecordCount > 0) Then
   Begin
      If (DM1.cdsQry1.fieldbyname('ESTADO').AsString <> 'ACTIVA') Then
      Begin
         MessageDlg('Solo se pueden Modificar las Campañas que estan Activas', mtInformation, [mbOk], 0);
         Exit;
      End;

      FMantControlCampanhas := TFMantControlCampanhas.create(self);
      Try
         FMantControlCampanhas.tmFormulario := tmEdit;
         FMantControlCampanhas.xnIdConCam := DM1.cdsQry1.fieldbyname('IDCONCAM').AsInteger;
         FMantControlCampanhas.edtCampanha.Text := DM1.cdsQry1.fieldbyname('NOMCAM').AsString;
         FMantControlCampanhas.dtpFInicio.Date := DM1.cdsQry1.fieldbyname('FECINI').AsDateTime;
         FMantControlCampanhas.dtpFFin.Date := DM1.cdsQry1.fieldbyname('FECFIN').AsDateTime;
         FMantControlCampanhas.cboPeriodoCartera.Text := (DM1.cdsQry1.fieldbyname('PERCAR').AsString);
         FMantControlCampanhas.edtMetSalRef.Text := DM1.cdsQry1.fieldbyname('METSALREF').AsString;
         FMantControlCampanhas.edtMetSalEfeBan.Text := DM1.cdsQry1.fieldbyname('METSALEFEBAN').AsString;
         If FMantControlCampanhas.ShowModal = mrOk Then
            fn_cargar_datos_maestro();
      Finally
         FMantControlCampanhas.Free;
      End;
   End;
End;

//******************************************************************************
// Nombre : btnMaestroAddClick
// Descripcion : Agregar una campaña
//******************************************************************************

Procedure TFRepControlCampanhas.btnMaestroAddClick(Sender : TObject);
Begin
   FMantControlCampanhas := TFMantControlCampanhas.create(self);
   Try
      FMantControlCampanhas.tmFormulario := tmAdd;
      If FMantControlCampanhas.ShowModal = mrOk Then
         fn_cargar_datos_maestro();
   Finally
      FMantControlCampanhas.Free;
   End;
End;

//******************************************************************************
// Nombre : btnSalirClick
// Descripcion : Salir
//******************************************************************************

Procedure TFRepControlCampanhas.btnSalirClick(Sender : TObject);
Begin
   Close();
End;

//******************************************************************************
// Nombre : btnMaestroAnularClick
// Descripcion : Marcar una campaña como Anulada
//******************************************************************************

Procedure TFRepControlCampanhas.btnMaestroAnularClick(Sender : TObject);
Var
   xsSQL : String;
Begin
   If (DM1.cdsQry1.fieldbyname('ESTADO').AsString <> 'ACTIVA') Then
   Begin
      MessageDlg('Solo se pueden Anular las Campañas que estan Activas', mtInformation, [mbOk], 0);
      Exit;
   End;
   If MessageDlg('Confirma que desea Anular la Campaña : ' + DM1.cdsQry1.fieldbyname('NOMCAM').AsString + '?', mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
   Begin
      xsSQL := 'UPDATE GES_COB_CON_CAM '
         + '       SET ESTADO = ''ANULADA'' '
         + '          ,USERID = ' + QuotedStr(DM1.wUsuario)
         + '          ,FREG = SYSDATE '
         + '          ,UREG = ' + QuotedStr(DM1.wUsuario)
         + '     WHERE IDCONCAM = ' + DM1.cdsQry1.fieldbyname('IDCONCAM').asstring;
      DM1.DCOM1.AppServer.EjecutaSql(xsSQL);
      fn_cargar_datos_maestro();
   End;
End;

//******************************************************************************
// Nombre : btnMaestroCerrarClick
// Descripcion : Marcar una campaña como Cerrada
//******************************************************************************

Procedure TFRepControlCampanhas.btnMaestroCerrarClick(Sender : TObject);
Var
   xsSQL : String;
Begin
   If (DM1.cdsQry1.fieldbyname('ESTADO').AsString <> 'ACTIVA') Then
   Begin
      MessageDlg('Solo se pueden Cerrar las Campañas que estan Activas', mtInformation, [mbOk], 0);
      Exit;
   End;
   If MessageDlg('Confirma que desea Cerar la Campaña : ' + DM1.cdsQry1.fieldbyname('NOMCAM').AsString + '?', mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
   Begin
      xsSQL := 'UPDATE GES_COB_CON_CAM '
         + '       SET ESTADO = ''CERRADA'' '
         + '          ,USERID = ' + QuotedStr(DM1.wUsuario)
         + '          ,FREG = SYSDATE '
         + '          ,UREG = ' + QuotedStr(DM1.wUsuario)
         + '     WHERE IDCONCAM = ' + DM1.cdsQry1.fieldbyname('IDCONCAM').asstring;
      DM1.DCOM1.AppServer.EjecutaSql(xsSQL);
      fn_cargar_datos_maestro();
   End;
End;

//******************************************************************************
// Nombre : btnMaestroBuscarClick
// Descripcion : Muestra formulario para Buscar una campaña dentro
//               de todas las mostradas en el filtro
//******************************************************************************

Procedure TFRepControlCampanhas.btnMaestroBuscarClick(Sender : TObject);
Begin
   If DM1.cdsQry1.RecordCount > 0 Then
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
End;

//******************************************************************************
// Nombre : edtMaestroBuscarChange
// Descripcion : Buscar una campaña dentro de todas las mostradas en el filtro
//******************************************************************************

Procedure TFRepControlCampanhas.edtMaestroBuscarChange(Sender : TObject);
Begin
   If Length(Trim(edtMaestroBuscar.Text)) > 0 Then
      DM1.cdsQry1.Locate('NOMCAM', VarArrayOf([TRIM(edtMaestroBuscar.Text)]), [loPartialKey]);
End;

//******************************************************************************
// Nombre : edtMaestroBuscarExit
// Descripcion : Ocultar controles de busqueda de asociado
//******************************************************************************

Procedure TFRepControlCampanhas.edtMaestroBuscarExit(Sender : TObject);
Begin
   btnMaestroBuscarClick(Nil);
End;

//******************************************************************************
// Nombre : edtMaestroBuscarKeyPress
// Descripcion : al dar enter en el control de busqueda, este pierde el foco y
//               se posiciona en la grilla principal
//******************************************************************************

Procedure TFRepControlCampanhas.edtMaestroBuscarKeyPress(Sender : TObject;
   Var Key : Char);
Begin
   If key = #13 Then
      dbgMaestro.SetFocus;
End;

//******************************************************************************
// Nombre : btnMaestroExportarClick
// Descripcion : exportar Datos de la grilla principal
//******************************************************************************

Procedure TFRepControlCampanhas.btnMaestroExportarClick(Sender : TObject);
Begin
   Screen.Cursor := crHourGlass;
   Try
      With dbgMaestro, dbgMaestro.ExportOptions Do
      Begin
         ExportType := wwgetSYLK;
         FileName := 'ControlCampanha.slk';
         DM1.OpcionesExportExcel(dbgMaestro.ExportOptions);
         dbgMaestro.ExportOptions.TitleName := 'Control';
         Save;
         If Not (esoClipboard In Options) Then
            ShellExecute(Handle, 'Open', PChar(dbgMaestro.exportoptions.Filename), Nil, Nil, sw_shownormal);
      End;
      Screen.Cursor := crDefault;
   Except
      Screen.Cursor := crDefault;
      MessageDlg('No se puede grabar el Archivo ' + chr(13) + 'Cierre todos los Archivos en Excel y vuelva a intentarlo', mtWarning, [mbOk], 0);
   End;
End;

//******************************************************************************
// Nombre : btnMaestroUbigeoClick
// Descripcion : agregar ubigeos a la campaña seleccionada
//******************************************************************************

Procedure TFRepControlCampanhas.btnMaestroUbigeoClick(Sender : TObject);
Begin
   If (DM1.cdsQry1.fieldbyname('ESTADO').AsString <> 'ACTIVA') Then
   Begin
      MessageDlg('Solo se pueden Agregar Ubigeos a las Campañas que estan Activas', mtInformation, [mbOk], 0);
      Exit;
   End;
   FMantControlCampanhasUbigeo := TFMantControlCampanhasUbigeo.create(self);
   Try
      FMantControlCampanhasUbigeo.xnIdConCam := DM1.cdsQry1.fieldbyname('IDCONCAM').AsInteger;
      FMantControlCampanhasUbigeo.dbgAsignados.DataSource := DM1.dsQry2;
      FMantControlCampanhasUbigeo.ShowModal;
      lblDetalleCantRegistros.caption := IntToStr(DM1.cdsQry2.RecordCount) + ' Registros Asignados';
   Finally
      FMantControlCampanhasUbigeo.Free;
   End;
End;

//******************************************************************************
// Nombre : dbgMaestroTitleButtonClick
// Descripcion : ordernar columnas
//******************************************************************************

Procedure TFRepControlCampanhas.dbgMaestroTitleButtonClick(Sender : TObject;
   AFieldName : String);
Begin
   // ordenar columnas
   DM1.cdsQry1.IndexFieldNames := AFieldName;
End;

//******************************************************************************
// Nombre : fn_cargar_datos_detalle
// Descripcion : cargar los ubigeos en la grilla detalle
//******************************************************************************

Procedure TFRepControlCampanhas.fn_cargar_datos_detalle(wgIdConCam : integer);
Var
   xsSQL : String;
Begin
   Screen.Cursor := crHourGlass;
   xsSQL := 'SELECT DIST.ZIPID, DPTO.DPTODES, PROV.CIUDDES, DIST.ZIPDES '
      + '      FROM GES_COB_CON_CAM_UBI UBI, APO122 DIST, APO123 PROV, APO158 DPTO   '
      + '     WHERE UBI.IDCONCAM = ' + IntToStr(wgIdConCam)
      + '       AND UBI.ZIPID = DIST.ZIPID '
      + '       AND DIST.CIUDID = PROV.CIUDID '
      + '       AND PROV.DPTOID = DPTO.DPTOID '
      + '     ORDER BY DPTO.DPTODES, PROV.CIUDDES, DIST.ZIPDES ';

   DM1.cdsQry2.Close;
   DM1.cdsQry2.DataRequest(xsSQL);
   DM1.cdsQry2.Open;

   dbgDetalle.Selected.Clear;
   dbgDetalle.Selected.Add('DPTODES'#9'18'#9'Departamento');
   dbgDetalle.Selected.Add('CIUDDES'#9'25'#9'Provincia');
   dbgDetalle.Selected.Add('ZIPDES'#9'30'#9'Distrito');
   dbgDetalle.ApplySelected;

   lblDetalleCantRegistros.Caption := inttostr(DM1.cdsQry2.RecordCount) + ' Registros Asignados';
   Screen.Cursor := crDefault;
End;

//******************************************************************************
// Nombre : dbgMaestroRowChanged
// Descripcion : cambiar la fila seleccionada
//******************************************************************************

Procedure TFRepControlCampanhas.dbgMaestroRowChanged(Sender : TObject);
Begin
   If (DM1.cdsQry1.State <> dsInactive) And (DM1.cdsQry1.RecordCount > 0) Then
      fn_cargar_datos_detalle(DM1.cdsQry1.fieldbyname('IDCONCAM').AsInteger);
End;

//******************************************************************************
// Nombre : btnMaestroAvanceClick
// Descripcion : Mostrar los avances de cada campaña
//******************************************************************************

Procedure TFRepControlCampanhas.btnMaestroAvanceClick(Sender : TObject);
Var
   xsSQL : String;
   xxFrm : TFMantControlCampanhasMetas;
Begin
   If ((DM1.cdsQry1.fieldbyname('ESTADO').AsString <> 'ACTIVA') And (DM1.cdsQry1.fieldbyname('ESTADO').AsString <> 'CERRADA')) Then
   Begin
      MessageDlg('Solo se pueden visualizar los Avances de las Campañas que estan Activas o Cerradas', mtInformation, [mbOk], 0);
      Exit;
   End;
// Inicio: SPP_201301_GESCOB
   FMantControlCampanhasMetas := TFMantControlCampanhasMetas.create(self);
   Try
      try
      FMantControlCampanhasMetas.ShowModal;
      except
      end;
   Finally
      FMantControlCampanhasMetas.Free;
// Fin: SPP_201301_GESCOB
   End;
End;

End.
