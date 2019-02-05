// Inicio Uso Estándares: 01/08/2011
// Unidad : Gestión de Cobranzas
// Formulario : FMantControlCampanhasUbigeo
// Fecha de Creación : 21/12/2011
// Autor : Equipo de Sistemas
// Objetivo : Mantenimiento de Indicadores de Control de Campañas - Ubigeos
// Actualizaciones:
// HPC_201121_GESCOB 20/12/2011 Indicadores de Control de Campañas

Unit GES527;

Interface

Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, Buttons, ExtCtrls, Grids, Wwdbigrd, Wwdbgrid,
   wwdblook, Wwdbdlg;

Type
   TFMantControlCampanhasUbigeo = Class(TForm)
      pnlControles : TPanel;
      btnSalir : TBitBtn;
      GroupBox1 : TGroupBox;
      Panel1 : TPanel;
      Panel2 : TPanel;
      Label1 : TLabel;
      Label2 : TLabel;
      cboDpto : TwwDBLookupComboDlg;
      cboProv : TwwDBLookupComboDlg;
      edProv : TEdit;
      edDpto : TEdit;
      dbgPorAsignar : TwwDBGrid;
      Panel3 : TPanel;
      lblNumRegPorAsig : TLabel;
      GroupBox2 : TGroupBox;
      Panel4 : TPanel;
      lblNumRegAsig : TLabel;
      btnAsignarUno : TButton;
      btnAsignarTodos : TButton;
      btnDesasignarTodos : TButton;
      btnDesasignarUno : TButton;
      dbgAsignados : TwwDBGrid;
      Procedure btnSalirClick(Sender : TObject);
      Procedure FormShow(Sender : TObject);
      Procedure cboDptoChange(Sender : TObject);
      Procedure cboProvChange(Sender : TObject);
      Procedure btnAsignarTodosClick(Sender : TObject);
      Procedure btnAsignarUnoClick(Sender : TObject);
      Procedure btnDesasignarUnoClick(Sender : TObject);
      Procedure btnDesasignarTodosClick(Sender : TObject);
   Private
      Procedure fn_asignar(wgZipId : String);
      Procedure fn_cargar_asignados;
      Procedure fn_desasignar(wgZipId : String);
    { Private declarations }
   Public
      xnIdConCam : integer;
   End;

Var
   FMantControlCampanhasUbigeo : TFMantControlCampanhasUbigeo;

Implementation

Uses GESDM1;

{$R *.dfm}

//******************************************************************************
// Nombre : btnSalirClick
// Descripcion : Salir
//******************************************************************************

Procedure TFMantControlCampanhasUbigeo.btnSalirClick(Sender : TObject);
Begin
   Close();
End;

//******************************************************************************
// Nombre : FormShow
// Descripcion : Cargar controles de opciones de ubigeo
//******************************************************************************

Procedure TFMantControlCampanhasUbigeo.FormShow(Sender : TObject);
Var
   xsSQL : String;
Begin
   xsSQL := 'SELECT DPTOID, DPTODES'
      + '      FROM APO158'
      + '     ORDER BY DPTOID';
   DM1.cdsDpto.Close;
   DM1.cdsDpto.DataRequest(xsSQL);
   DM1.cdsDpto.Open;
   cboDpto.LookupTable := DM1.cdsDpto;
   cboDpto.Selected.Clear;
   cboDpto.Selected.Add('DPTOID'#9'3'#9'Código'#9#9);
   cboDpto.Selected.Add('DPTODES'#9'20'#9'Descripción'#9#9);

   xsSQL := 'SELECT DPTOID, CIUDID, CIUDDES '
      + '      FROM APO123 '
      + '     ORDER BY DPTOID, CIUDID';
   DM1.cdsProvin.Close;
   DM1.cdsProvin.DataRequest(xsSQL);
   DM1.cdsProvin.Open;
   cboProv.LookupTable := DM1.cdsProvin;
   cboProv.Selected.Clear;
   cboProv.Selected.Add('CIUDID'#9'5'#9'Código'#9#9);
   cboProv.Selected.Add('CIUDDES'#9'20'#9'Descripción'#9#9);
   DM1.cdsProvin.Filtered := false;
   DM1.cdsProvin.Filter := '1 = 2';
   DM1.cdsProvin.Filtered := true;

   dbgPorAsignar.DataSource := DM1.dsDist;
   cboProvChange(cboProv);

   //
   fn_cargar_asignados();

   self.KeyPreview := true; // para que el formulario capture las teclas antes de que sea capturardo por el control
End;

//******************************************************************************
// Nombre : cboDptoChange
// Descripcion : filtra provincias en base al departamento seleccionado
//******************************************************************************

Procedure TFMantControlCampanhasUbigeo.cboDptoChange(Sender : TObject);
Begin
   If DM1.cdsDpto.Locate('DPTOID', VarArrayof([cboDpto.Text]), []) Then
   Begin
      edDpto.Text := DM1.cdsDpto.fieldbyname('DPTODES').AsString;
      DM1.cdsProvin.Filtered := false;
      DM1.cdsProvin.Filter := 'DPTOID = ' + QuotedStr(cboDpto.Text);
      DM1.cdsProvin.Filtered := true;
   End
   Else
   Begin
      edDpto.Text := '';
      DM1.cdsProvin.Filtered := false;
      DM1.cdsProvin.Filter := '1 = 2';
      DM1.cdsProvin.Filtered := true;
   End;
   cboProv.Text := '';
   cboProvChange(cboProv);
End;

//******************************************************************************
// Nombre : cboProvChange
// Descripcion : cargar distritos que estan por asignar
//******************************************************************************

Procedure TFMantControlCampanhasUbigeo.cboProvChange(Sender : TObject);
Var
   xsSQL : String;
Begin
   edProv.Text := '';
   xsSQL := 'SELECT DIST.ZIPID, '' '' DPTODES, '' '' CIUDDES, DIST.ZIPDES '
      + '      FROM APO122 DIST '
      + '     WHERE 1 = 2';

   If ((cboProv.Text = '') And (edDpto.Text <> '')) Then
   Begin
      xsSQL := 'SELECT DIST.ZIPID, DPTO.DPTODES, PROV.CIUDDES, DIST.ZIPDES '
         + '      FROM APO158 DPTO, APO123 PROV, APO122 DIST '
         + '     WHERE DPTO.DPTOID = ' + QuotedStr(cboDpto.Text)
         + '       AND DPTO.DPTOID = PROV.DPTOID '
         + '       AND PROV.CIUDID = DIST.CIUDID '
         + '       AND NOT EXISTS (SELECT UBI.ZIPID '
         + '                         FROM GES_COB_CON_CAM CAM, GES_COB_CON_CAM_UBI UBI '
         + '                        WHERE (CAM.IDCONCAM = ' + IntToStr(xnIdConCam) + ' OR CAM.ESTADO = ''ACTIVA'') '
         + '                          AND CAM.IDCONCAM = UBI.IDCONCAM '
         + '                          AND UBI.ZIPID = DIST.ZIPID '
         + '                       ) '
         + '     ORDER BY DPTO.DPTODES, PROV.CIUDDES, DIST.ZIPDES ';
   End
   Else
   Begin
      If DM1.cdsProvin.Locate('CIUDID', VarArrayof([cboProv.Text]), []) Then
      Begin
         edProv.Text := DM1.cdsProvin.fieldbyname('CIUDDES').AsString;
         xsSQL := 'SELECT DIST.ZIPID, DPTO.DPTODES, PROV.CIUDDES, DIST.ZIPDES '
            + '      FROM APO158 DPTO, APO123 PROV, APO122 DIST '
            + '     WHERE DPTO.DPTOID = PROV.DPTOID '
            + '       AND PROV.CIUDID = ' + QuotedStr(cboProv.Text)
            + '       AND PROV.CIUDID = DIST.CIUDID '
            + '       AND NOT EXISTS (SELECT UBI.ZIPID '
            + '                         FROM GES_COB_CON_CAM CAM, GES_COB_CON_CAM_UBI UBI '
            + '                        WHERE (CAM.IDCONCAM = ' + IntToStr(xnIdConCam) + ' OR CAM.ESTADO = ''ACTIVA'') '
            + '                          AND CAM.IDCONCAM = UBI.IDCONCAM '
            + '                          AND UBI.ZIPID = DIST.ZIPID '
            + '                       ) '
            + '     ORDER BY DPTO.DPTODES, PROV.CIUDDES, DIST.ZIPDES ';
      End;
   End;
   DM1.cdsDist.Close;
   DM1.cdsDist.DataRequest(xsSQL);
   DM1.cdsDist.Open;
   dbgPorAsignar.Selected.Clear;
   dbgPorAsignar.Selected.Add('CIUDDES'#9'25'#9'Provincia');
   dbgPorAsignar.Selected.Add('ZIPDES'#9'30'#9'Distrito');
   dbgPorAsignar.ApplySelected;
   lblNumRegPorAsig.Caption := inttostr(DM1.cdsDist.RecordCount) + ' Registros por Asignar';
End;

//******************************************************************************
// Nombre : fn_desasignar
// Descripcion : desasignar un distrito
//******************************************************************************

Procedure TFMantControlCampanhasUbigeo.fn_desasignar(wgZipId : String);
Var
   xsSQL : String;
Begin
   xsSQL := 'DELETE FROM GES_COB_CON_CAM_UBI '
      + '     WHERE IDCONCAM = ' + IntToStr(Self.xnIdConCam)
      + '       AND ZIPID = ' + QuotedStr(wgZipId);
   DM1.DCOM1.AppServer.EjecutaSql(xsSQL);
End;

//******************************************************************************
// Nombre : fn_asignar
// Descripcion : asignar un distrito
//******************************************************************************

Procedure TFMantControlCampanhasUbigeo.fn_asignar(wgZipId : String);
Var
   xsSQL : String;
Begin
   xsSQL := 'INSERT INTO GES_COB_CON_CAM_UBI( IDCONCAM, ZIPID, FREG, UREG) '
      + '         VALUES(' + IntToStr(Self.xnIdConCam) + ', '
      + QuotedStr(wgZipId) + ', SYSDATE, ' + QuotedStr(DM1.wUsuario) + ') ';
   DM1.DCOM1.AppServer.EjecutaSql(xsSQL);
End;

//******************************************************************************
// Nombre : fn_cargar_asignados
// Descripcion : muestra en pantalla los distritos asignados
//******************************************************************************

Procedure TFMantControlCampanhasUbigeo.fn_cargar_asignados();
Begin
   dbgAsignados.DataSource.DataSet.Close;
   dbgAsignados.DataSource.DataSet.Open;
   lblNumRegAsig.caption := IntToStr(DM1.cdsQry2.RecordCount) + ' Registros Asignados';
End;

//******************************************************************************
// Nombre : btnAsignarTodosClick
// Descripcion : asigna todos los distritos mostrados
//******************************************************************************

Procedure TFMantControlCampanhasUbigeo.btnAsignarTodosClick(
   Sender : TObject);
Begin
   If DM1.cdsDist.RecordCount > 0 Then
   Begin
      DM1.cdsDist.First;
      While Not DM1.cdsDist.Eof Do
      Begin
         fn_asignar(DM1.cdsDist.fieldbyname('ZIPID').AsString);
         DM1.cdsDist.Next;
      End;
      cboProvChange(cboProv);
      fn_cargar_asignados();
   End;
End;

//******************************************************************************
// Nombre : btnAsignarUnoClick
// Descripcion : asignar un distrito
//******************************************************************************

Procedure TFMantControlCampanhasUbigeo.btnAsignarUnoClick(Sender : TObject);
Begin
   If DM1.cdsDist.RecordCount > 0 Then
   Begin
      fn_asignar(DM1.cdsDist.fieldbyname('ZIPID').AsString);
      cboProvChange(cboProv);
      fn_cargar_asignados();
   End;
End;

//******************************************************************************
// Nombre : btnDesasignarUnoClick
// Descripcion : desasignar un distrito
//******************************************************************************

Procedure TFMantControlCampanhasUbigeo.btnDesasignarUnoClick(
   Sender : TObject);
Begin
   If DM1.cdsQry2.RecordCount > 0 Then
   Begin
      fn_desasignar(DM1.cdsQry2.fieldbyname('ZIPID').AsString);
      cboProvChange(cboProv);
      fn_cargar_asignados();
   End;
End;

//******************************************************************************
// Nombre : btnDesasignarTodosClick
// Descripcion : desasignar todos distrito
//******************************************************************************

Procedure TFMantControlCampanhasUbigeo.btnDesasignarTodosClick(
   Sender : TObject);
Begin
   If DM1.cdsQry2.RecordCount > 0 Then
   Begin
      DM1.cdsQry2.First;
      While Not DM1.cdsQry2.Eof Do
      Begin
         fn_desasignar(DM1.cdsQry2.fieldbyname('ZIPID').AsString);
         DM1.cdsQry2.Next;
      End;
      cboProvChange(cboProv);
      fn_cargar_asignados();
   End;
End;

End.

