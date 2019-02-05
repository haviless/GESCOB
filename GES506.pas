// Inicio Uso Estándares: 01/08/2011
// Unidad : Gestión de Cobranzas
// Formulario : FVisRepBas
// Fecha de Creación :
// Autor : Equipo de Sistemas
// Objetivo : Visualizar Reporte Base
// Actualizaciones:
// HPC_201119_GESCOB 19/09/2011 Acuerdo de Atencion 2011-02-V2.0
Unit GES506;

Interface

Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, Buttons, Grids, Wwdbigrd, Wwdbgrid, ExtCtrls,
   wwdblook, Wwdbdlg, wwExport, shellapi, DBGrids, DB, DBClient, DBTables,
   Wwtable, RXDBCtrl, Wwquery;

Type
   TFVisRepBas = Class(TForm)
      Panel4 : TPanel;
      lblPeriodoProcesado : TLabel;
      dbgPrincipal : TwwDBGrid;
      Panel1 : TPanel;
      btnSalir : TBitBtn;
      lblNroRegistros : TLabel;
      btnExportar : TBitBtn;
      Label2 : TLabel;
      Label3 : TLabel;
      Label4 : TLabel;
      cboDist : TwwDBLookupComboDlg;
      cboProv : TwwDBLookupComboDlg;
      cboDpto : TwwDBLookupComboDlg;
      txtDpto : TEdit;
      txtProv : TEdit;
      txtDist : TEdit;
      lblFechaProceso : TLabel;
      btnFiltrar : TBitBtn;
      Bevel1 : TBevel;
      dbgExcel : TDBGrid;
      ClientDataSet1 : TClientDataSet;
      ClientDataSet1DDDDDD : TDateTimeField;
      Procedure FormShow(Sender : TObject);
      Procedure btnFiltrarClick(Sender : TObject);
      Procedure FormKeyPress(Sender : TObject; Var Key : Char);
      Procedure cboDptoExit(Sender : TObject);
      Procedure cboProvExit(Sender : TObject);
      Procedure cboDistExit(Sender : TObject);
      Procedure btnExportarClick(Sender : TObject);
      Procedure btnSalirClick(Sender : TObject);
   Private
      Procedure fn_cargar_datos(IIsLimpiar : Boolean = false);
    { Private declarations }
   Public
      xnCodPro : integer;
   End;

Var
   FVisRepBas : TFVisRepBas;

Implementation

Uses GESDM1;

{$R *.dfm}

//******************************************************************************
// Nombre : FormShow
// Descripcion : carga los valores a mostrar en los controles
//******************************************************************************
Procedure TFVisRepBas.FormShow(Sender : TObject);
Var
   xsSQL : String;
Begin
   Screen.Cursor := crHourGlass;
   xsSQL := 'SELECT DPTOID, DPTODES FROM APO158 ORDER BY DPTOID';
   DM1.cdsDpto.Close;
   DM1.cdsDpto.DataRequest(xsSQL);
   DM1.cdsDpto.Open;
   cboDpto.LookupTable := DM1.cdsDpto;
   cboDpto.Selected.Clear;
   cboDpto.Selected.Add('DPTOID'#9'3'#9'Código'#9#9);
   cboDpto.Selected.Add('DPTODES'#9'20'#9'Descripción'#9#9);

   xsSQL := 'SELECT DPTOID,CIUDID,CIUDDES FROM APO123 ORDER BY DPTOID,CIUDID';
   DM1.cdsProvin.Close;
   DM1.cdsProvin.DataRequest(xsSQL);
   DM1.cdsProvin.Open;
   cboProv.LookupTable := DM1.cdsProvin;
   cboProv.Selected.Clear;
   cboProv.Selected.Add('CIUDID'#9'5'#9'Código'#9#9);
   cboProv.Selected.Add('CIUDDES'#9'20'#9'Descripción'#9#9);
   DM1.cdsProvin.Filtered := false;
   DM1.cdsProvin.Filter := '1=2';
   DM1.cdsProvin.Filtered := true;

   xsSQL := 'SELECT DPTOID, CIUDID, ZIPID, ZIPDES FROM APO122 ORDER BY DPTOID, CIUDID, ZIPID';
   DM1.cdsDist.Close;
   DM1.cdsDist.DataRequest(xsSQL);
   DM1.cdsDist.Open;
   cboDist.LookupTable := DM1.cdsDist;
   cboDist.Selected.Clear;
   cboDist.Selected.Add('ZIPID'#9'7'#9'Código'#9#9);
   cboDist.Selected.Add('ZIPDES'#9'20'#9'Descripción'#9#9);
   DM1.cdsDist.Filtered := false;
   DM1.cdsDist.Filter := '1=2';
   DM1.cdsDist.Filtered := true;
   fn_cargar_datos(true);
   Screen.Cursor := crDefault;
End;

//******************************************************************************
// Nombre : btnFiltrarClick
// Descripcion : filtrar los datos
//******************************************************************************
Procedure TFVisRepBas.btnFiltrarClick(Sender : TObject);
Begin
   If (trim(txtDpto.Text) <> '') Then
   Begin
      btnExportar.Enabled := true;
      fn_cargar_datos(false);
      Screen.Cursor := crDefault;
   End
   Else
      showmessage('Seleccione por lo menos un Departamento');

End;

//******************************************************************************
// Nombre : FormKeyPress
// Descripcion : pasar de un control a otro al presionar enter
//******************************************************************************
Procedure TFVisRepBas.FormKeyPress(Sender : TObject; Var Key : Char);
Begin
   If Key = #13 Then
   Begin
      Key := #0;
      Perform(CM_DialogKey, VK_TAB, 0);
   End;
End;

//******************************************************************************
// Nombre : cboDptoExit
// Descripcion : mostrar el nombre del departamento seleccionado
//******************************************************************************
Procedure TFVisRepBas.cboDptoExit(Sender : TObject);
Begin
   If DM1.cdsDpto.Locate('DPTOID', VarArrayof([cboDpto.Text]), []) Then
   Begin
      txtDpto.Text := DM1.cdsDpto.fieldbyname('DPTODES').AsString;
      DM1.cdsProvin.Filtered := false;
      DM1.cdsProvin.Filter := 'DPTOID = ' + QuotedStr(cboDpto.Text);
      DM1.cdsProvin.Filtered := true;
   End
   Else
   Begin
      txtDpto.Text := '';
      DM1.cdsProvin.Filtered := false;
      DM1.cdsProvin.Filter := '1 = 2';
      DM1.cdsProvin.Filtered := true;
   End;
   cboProv.Text := '';
   cboProvExit(cboProv);
End;

//******************************************************************************
// Nombre : cboProvExit
// Descripcion : mostrar el nombre de la provincia seleccionada
//******************************************************************************
Procedure TFVisRepBas.cboProvExit(Sender : TObject);
Begin
   If DM1.cdsProvin.Locate('CIUDID', VarArrayof([cboProv.Text]), []) Then
   Begin
      txtProv.Text := DM1.cdsProvin.fieldbyname('CIUDDES').AsString;
      DM1.cdsDist.Filtered := false;
      DM1.cdsDist.Filter := 'CIUDID = ' + QuotedStr(cboProv.Text);
      DM1.cdsDist.Filtered := true;
   End
   Else
   Begin
      txtProv.Text := '';
      DM1.cdsDist.Filtered := false;
      DM1.cdsDist.Filter := '1 = 2';
      DM1.cdsDist.Filtered := true;
   End;
   cboDist.Text := '';
   cboDistExit(cboDist);
End;

//******************************************************************************
// Nombre : cboDistExit
// Descripcion : mostrar el nombre del distrito seleccionado
//******************************************************************************
Procedure TFVisRepBas.cboDistExit(Sender : TObject);
Begin
   If DM1.cdsDist.Locate('ZIPID', VarArrayof([cboDist.Text]), []) Then
      txtDist.Text := DM1.cdsDist.fieldbyname('ZIPDES').AsString
   Else
      txtDist.Text := '';
   fn_cargar_datos(true);
End;

//******************************************************************************
// Nombre : fn_cargar_datos
// Descripcion : cargar la grilla con los datos que fueron filtrados
//******************************************************************************
Procedure TFVisRepBas.fn_cargar_datos(IIsLimpiar : Boolean);
Var
   xsSQL : String;
Begin
   Screen.Cursor := crHourGlass;
   xsSQL := ' SELECT PERIODO, ASODNI, ASOCODMOD, ASOAPENOMDNI, ZIPID, '
      + '           DEPARTAMENTO, PROVINCIA, DISTRITO, ASODIR, ASOTIPID, UPROID, UPRONOM, '
      + '           UPAGOID, UPAGONOM, USEID, USENOM, REGPENID, REGPENDES, '
      + '           CFC_PERIODO_01, CFC_F_01, CFC_CFCDES_F_01, CFC_SALDOS_FV_01, CFC_SALDOS_FT_01, '
      + '           CFC_PERIODO_02, CFC_F_02, CFC_CFCDES_F_02, CFC_SALDOS_FV_02, CFC_SALDOS_FT_02, '
      + '           CFC_PERIODO_03, CFC_F_03, CFC_CFCDES_F_03, CFC_SALDOS_FV_03, CFC_SALDOS_FT_03, '
      + '           GES_PERIODO_01, GES_TIPO_GESTION_01, GES_TIPO_GESTOR_01, GES_CODIGO_01, TO_CHAR(GES_FECHA_01,''YYYY-MM-DD'') GES_FECHA_01, TO_CHAR(GES_GESTOR_01) GES_GESTOR_01, GES_RESULTADO_01, '
      + '           GES_PERIODO_02, GES_TIPO_GESTION_02, GES_TIPO_GESTOR_02, GES_CODIGO_02, TO_CHAR(GES_FECHA_02,''YYYY-MM-DD'') GES_FECHA_02, TO_CHAR(GES_GESTOR_02) GES_GESTOR_02, GES_RESULTADO_02, '
      + '           GES_PERIODO_03, GES_TIPO_GESTION_03, GES_TIPO_GESTOR_03, GES_CODIGO_03, TO_CHAR(GES_FECHA_03,''YYYY-MM-DD'') GES_FECHA_03, TO_CHAR(GES_GESTOR_03) GES_GESTOR_03, GES_RESULTADO_03, '
      + '           ING_PERIODO_01, '
      + '           ING_CANDIF_01, ING_SALDIF_01, ING_TOTBAN_01, ING_TOTEFE_01, ING_TOTPLA_01, '
      + '           ING_TOTREF_01, ING_TOTNAB_01, ING_TOTBEN_01, '
      + '           ING_PERIODO_02, '
      + '           ING_CANDIF_02, ING_SALDIF_02, ING_TOTBAN_02, ING_TOTEFE_02, ING_TOTPLA_02, '
      + '           ING_TOTREF_02, ING_TOTNAB_02, ING_TOTBEN_02, '
      + '           ING_PERIODO_03, '
      + '           ING_CANDIF_03, ING_SALDIF_03, ING_TOTBAN_03, ING_TOTEFE_03, ING_TOTPLA_03, '
      + '           ING_TOTREF_03, ING_TOTNAB_03, ING_TOTBEN_03, '
      + '           CODPRO, ASOID, '
      + '           ING_VALCUO_01 ING_SALVEN_01, ING_CANVEN_01, ING_SALPEN_01, '
      + '           ING_CANPEN_01, ING_MONCUOPAG_01, ING_CANCUOPAG_01, ING_NUMCREPENPAG_01 '
      + '           ING_VALCUO_02, ING_SALVEN_02, ING_CANVEN_02, ING_SALPEN_02, '
      + '           ING_CANPEN_02, ING_MONCUOPAG_02, ING_CANCUOPAG_02, ING_NUMCREPENPAG_02 '
      + '           ING_VALCUO_03, ING_SALVEN_03, ING_CANVEN_03, ING_SALPEN_03, '
      + '           ING_CANPEN_03, ING_MONCUOPAG_03, ING_CANCUOPAG_03, ING_NUMCREPENPAG_03 '
      + '      FROM GES_COB_REP_BAS_DET ';
   If IIsLimpiar Then
   Begin
      xsSQL := xsSQL + ' WHERE 1 = 2 ';
   End
   Else
   Begin
      xsSQL := xsSQL + ' WHERE CODPRO = ' + inttostr(xnCodPro);
      If (trim(txtDist.Text) <> '') Then
         xsSQL := xsSQL + ' AND ZIPID = ' + QuotedStr(trim(cboDist.Text))
      Else
         If (trim(txtProv.Text) <> '') Then
            xsSQL := xsSQL + ' AND SUBSTR(ZIPID,1,4) = ' + QuotedStr(trim(cboProv.Text))
         Else
            If (trim(txtDpto.Text) <> '') Then
               xsSQL := xsSQL + ' AND SUBSTR(ZIPID,1,2) = ' + QuotedStr(trim(cboDpto.Text))
   End;

   DM1.cdsQry3.close;
   DM1.cdsQry3.DataRequest(xsSQL);
   DM1.cdsQry3.Open;

   DM1.cdsQry3.FieldDefs.Items[37].DataType := ftDateTime;
   DM1.cdsQry3.FieldDefs.Items[38].DataType := ftString;
   DM1.cdsQry3.FieldDefs.Items[44].DataType := ftDateTime;
   DM1.cdsQry3.FieldDefs.Items[45].DataType := ftString;
   DM1.cdsQry3.FieldDefs.Items[51].DataType := ftDateTime;
   DM1.cdsQry3.FieldDefs.Items[52].DataType := ftString;

   dbgPrincipal.DataSource := DM1.dsQry3;
   lblNroRegistros.Caption := inttostr(DM1.cdsQry3.RecordCount) + ' Registros';
   Screen.Cursor := crDefault;
End;

//******************************************************************************
// Nombre : btnExportarClick
// Descripcion : exportar a excel
//******************************************************************************
Procedure TFVisRepBas.btnExportarClick(Sender : TObject);
Begin
   dbgExcel.DataSource := DM1.dsQry3;
   DM1.HojaExcel('ReporteBase', DM1.dsQry3, dbgExcel);
End;

//******************************************************************************
// Nombre : btnSalirClick
// Descripcion : cerrar el formulario
//******************************************************************************
Procedure TFVisRepBas.btnSalirClick(Sender : TObject);
Begin
   Close;
End;

End.

