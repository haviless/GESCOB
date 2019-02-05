// Inicio Uso Estándares: 01/08/2011
// Unidad : Gestión de Cobranzas
// Formulario : FDirTelCenRie
// Fecha de Creación :
// Autor : Equipo de Sistemas
// Objetivo : Mostrar direcciones y telefonos de centrales de riesgos
// Actualizaciones:
// HPC_201120_GESCOB 23/11/2011 reporte de direcciones y telefonos de centrales de riesgo
// HPC_201702_GESCOB : Mejora del del reporte de direcciones y teléfonos centrales de riesgo
//                     y reglas para la impresión de la dirección de Hoja de ruta diaria.
// HPC_201705_GESCOB 12/12/2017 Observaciones en la información
Unit GES520;

Interface

Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, ppParameter, ppCtrls, ppBands, ppReport, ppStrtch, ppSubRpt,
   ppVar, ppPrnabl, ppClass, ppCache, ppProd, ppRelatv, ppDB, ppDBPipe,
   ppComm, ppEndUsr, Grids, Wwdbigrd, Wwdbgrid, StdCtrls, ExtCtrls, Buttons,
   wwdblook, Wwdbdlg, ppDBBDE, wwExport, shellapi, fcButton, fcImgBtn,
   fcShapeBtn, DB;

Type
   TFDirTelCenRie = Class(TForm)
      pnlControles : TPanel;
      btnImprimir : TBitBtn;
      btnSalir : TBitBtn;
      btnExportar : TBitBtn;
      gbFiltro : TGroupBox;
      dbgPrincipal : TwwDBGrid;
      Label1 : TLabel;
      Label2 : TLabel;
      Label6 : TLabel;
      cboDist : TwwDBLookupComboDlg;
      cboProv : TwwDBLookupComboDlg;
      cboDpto : TwwDBLookupComboDlg;
      edDpto : TEdit;
      edProv : TEdit;
      edDist : TEdit;
      btnProcesar : TBitBtn;
      gbBusAso : TGroupBox;
      z2bbtnBuscar : TfcShapeBtn;
      edBuscar : TEdit;
      lblCantRegistros : TLabel;
      btnBuscar : TBitBtn;
      repReporte : TppReport;
      ppParameterList1 : TppParameterList;
      dbpReporte : TppDBPipeline;
      desReporte : TppDesigner;
      ppHeaderBand41 : TppHeaderBand;
      ppShape7 : TppShape;
      ppLabel858 : TppLabel;
      ppLabel859 : TppLabel;
      ppLabel860 : TppLabel;
      ppLabel861 : TppLabel;
      ppLabel862 : TppLabel;
      ppSystemVariable83 : TppSystemVariable;
      ppSystemVariable84 : TppSystemVariable;
      ppSystemVariable85 : TppSystemVariable;
      ppLblTit : TppLabel;
      ppLabel863 : TppLabel;
      ppLabel864 : TppLabel;
      ppLabel865 : TppLabel;
      ppLabel1 : TppLabel;
      ppLabel5 : TppLabel;
      ppLabel6 : TppLabel;
      ppLabel2 : TppLabel;
      ppLabel3 : TppLabel;
      ppLabel4 : TppLabel;
      ppLabel7 : TppLabel;
      ppLabel8 : TppLabel;
      ppLabel9 : TppLabel;
      ppLabel10 : TppLabel;
      ppLabel11 : TppLabel;
      ppLabel12 : TppLabel;
      ppLabel13 : TppLabel;
      ppLine11 : TppLine;
      ppLine12 : TppLine;
      ppLine13 : TppLine;
      ppLine14 : TppLine;
      ppLine15 : TppLine;
      ppLine16 : TppLine;
      ppLine17 : TppLine;
      ppDetailBand44 : TppDetailBand;
      ppDBText342 : TppDBText;
      ppDBText1 : TppDBText;
      ppDBText2 : TppDBText;
      ppDBText3 : TppDBText;
      ppDBText4 : TppDBText;
      ppDBText5 : TppDBText;
      ppDBText6 : TppDBText;
      ppDBText7 : TppDBText;
      ppDBText8 : TppDBText;
      ppDBText9 : TppDBText;
      ppDBText10 : TppDBText;
      ppDBText11 : TppDBText;
      ppDBText12 : TppDBText;
      ppDBText13 : TppDBText;
      ppLine1 : TppLine;
      ppLine2 : TppLine;
      ppLine3 : TppLine;
      ppLine4 : TppLine;
      ppLine5 : TppLine;
      ppLine6 : TppLine;
      ppLine7 : TppLine;
      ppLine8 : TppLine;
      ppLine9 : TppLine;
      ppLine10 : TppLine;
      ppFooterBand36 : TppFooterBand;
      ppLblUser : TppLabel;
      ppSummaryBand41 : TppSummaryBand;
      Procedure btnSalirClick(Sender : TObject);
      Procedure btnProcesarClick(Sender : TObject);
      Procedure FormShow(Sender : TObject);
      Procedure cboDptoExit(Sender : TObject);
      Procedure cboProvExit(Sender : TObject);
      Procedure cboDistExit(Sender : TObject);
      Procedure btnExportarClick(Sender : TObject);
      Procedure dbgPrincipalDblClick(Sender : TObject);
      Procedure btnBuscarClick(Sender : TObject);
      Procedure edBuscarChange(Sender : TObject);
      Procedure edBuscarExit(Sender : TObject);
      Procedure btnImprimirClick(Sender : TObject);
      Procedure FormKeyPress(Sender : TObject; Var Key : Char);
   Private
      Procedure fn_limpiar_pantalla;
      Procedure fn_pintar_grilla;
   Public
    { Public declarations }
   End;

Var
   FDirTelCenRie : TFDirTelCenRie;

Implementation

Uses GESDM1, GES521;

{$R *.dfm}

//******************************************************************************
// Nombre : FormShow
// Descripcion : Cargar controles para seleccion del filtro
//******************************************************************************

Procedure TFDirTelCenRie.FormShow(Sender : TObject);
Var
   xsSQL : String;
Begin
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
   fn_limpiar_pantalla();
   self.KeyPreview := true; // para que el formulario capture las teclas antes de que sea capturardo por el control
End;

//******************************************************************************
// Nombre : cboDptoExit
// Descripcion : colocar la descripcion del departamento
//******************************************************************************

Procedure TFDirTelCenRie.cboDptoExit(Sender : TObject);
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
   cboProvExit(cboProv);
End;

//******************************************************************************
// Nombre : cboProvExit
// Descripcion : colocar la descripcion de la provincia
//******************************************************************************

Procedure TFDirTelCenRie.cboProvExit(Sender : TObject);
Begin
   If DM1.cdsProvin.Locate('CIUDID', VarArrayof([cboProv.Text]), []) Then
   Begin
      edProv.Text := DM1.cdsProvin.fieldbyname('CIUDDES').AsString;
      DM1.cdsDist.Filtered := false;
      DM1.cdsDist.Filter := 'CIUDID = ' + QuotedStr(cboProv.Text);
      DM1.cdsDist.Filtered := true;
   End
   Else
   Begin
      edProv.Text := '';
      DM1.cdsDist.Filtered := false;
      DM1.cdsDist.Filter := '1 = 2';
      DM1.cdsDist.Filtered := true;
   End;
   cboDist.Text := '';
   cboDistExit(cboDist);
End;

//******************************************************************************
// Nombre : cboDistExit
// Descripcion : colocar la descripcion del distrito
//******************************************************************************

Procedure TFDirTelCenRie.cboDistExit(Sender : TObject);
Begin
   If DM1.cdsDist.Locate('ZIPID', VarArrayof([cboDist.Text]), []) Then
      edDist.Text := DM1.cdsDist.fieldbyname('ZIPDES').AsString
   Else
      edDist.Text := '';
   fn_limpiar_pantalla();
End;

//******************************************************************************
// Nombre : fn_limpiar_pantalla
// Descripcion : limpiar la pantalla
//******************************************************************************

Procedure TFDirTelCenRie.fn_limpiar_pantalla;
Var
   xsSQL : String;
Begin
   // INICIO HPC_201702_GESCOB : Mejora del del reporte de direcciones y teléfonos centrales de riesgo
   //                     y reglas para la impresión de la dirección de Hoja de ruta diaria.        
   xsSQL := 'SELECT '' '' ASOID , '' '' ASOAPENOM, '' '' ASODNI, '' ''ASOCODMOD, '
      + '           '' '' DPTO_DERRAMA, '' '' PROV_DERRAMA, '' '' DIST_DERRAMA, '' '' DIR_DERRAMA, '
      + '           '' '' TEL1_DERRAMA, '' '' TEL2_DERRAMA, '
      + '           '' '' DPTO_CEN_RIE, '' '' PROV_CEN_RIE, '' '' DIST_CENRIE, '' '' DIR_CEN_RIE, '
      + '           '' '' TEL_CEN_RIE,'
      + '           '' '' DPTO_UNIDAD,'
      + '           '' '' PROV_UNIDAD,'
      + '           '' '' DIST_UNIDAD,'
      + '           '' '' DIR_UNIDAD,'
      + '           '' '' TEL1_UNIDAD,'
      + '           '' '' TEL2_UNIDAD,'
      + '           '' '' CORR_UNIDAD'
      + '      FROM DUAL ';

   DM1.cdsQry1.Close;
   DM1.cdsQry1.DataRequest(xsSQL);
   DM1.cdsQry1.Open;

   dbgPrincipal.DataSource := DM1.dsQry1;
   fn_pintar_grilla();
   btnBuscar.Enabled := false;
   btnExportar.Enabled := false;
   btnImprimir.Enabled := false;
   lblCantRegistros.Caption := '0 Registros';
   // FIN HPC_201702_GESCOB : Mejora del del reporte de direcciones y teléfonos centrales de riesgo
   //                     y reglas para la impresión de la dirección de Hoja de ruta diaria.       
End;

//******************************************************************************
// Nombre : fn_pintar_grilla
// Descripcion : dar formato a la grilla
//******************************************************************************

Procedure TFDirTelCenRie.fn_pintar_grilla;
Begin
   // INICIO HPC_201702_GESCOB : Mejora del del reporte de direcciones y teléfonos centrales de riesgo
   //                     y reglas para la impresión de la dirección de Hoja de ruta diaria.       
   dbgPrincipal.Selected.Clear;
   dbgPrincipal.Selected.Add('ASOAPENOM'#9'35'#9'Apellidos y Nombres'#9#9);
   dbgPrincipal.Selected.Add('ASODNI'#9'10'#9'D.N.I.'#9#9);
   dbgPrincipal.Selected.Add('ASOCODMOD'#9'12'#9'Cod Mod'#9#9);
   dbgPrincipal.Selected.Add('DPTO_DERRAMA'#9'15'#9'Departamento'#9'F'#9'DERRAMA');
   dbgPrincipal.Selected.Add('PROV_DERRAMA'#9'15'#9'Provincia'#9'F'#9'DERRAMA');
   dbgPrincipal.Selected.Add('DIST_DERRAMA'#9'15'#9'Distrito'#9'F'#9'DERRAMA');
   dbgPrincipal.Selected.Add('DIR_DERRAMA'#9'35'#9'Dirección'#9'F'#9'DERRAMA');
   dbgPrincipal.Selected.Add('TEL1_DERRAMA'#9'15'#9'Telefono 01'#9'F'#9'DERRAMA');
   dbgPrincipal.Selected.Add('TEL2_DERRAMA'#9'15'#9'Telefono 02'#9'F'#9'DERRAMA');
   dbgPrincipal.Selected.Add('DPTO_CEN_RIE'#9'15'#9'Departamento'#9'F'#9'CENTRALES DE RIESGO');
   dbgPrincipal.Selected.Add('PROV_CEN_RIE'#9'15'#9'Provincia'#9'F'#9'CENTRALES DE RIESGO');
   dbgPrincipal.Selected.Add('DIST_CEN_RIE'#9'15'#9'Distrito'#9'F'#9'CENTRALES DE RIESGO');
   dbgPrincipal.Selected.Add('DIR_CEN_RIE'#9'35'#9'Dirección'#9'F'#9'CENTRALES DE RIESGO');
   dbgPrincipal.Selected.Add('DPTO_UNIDAD'#9'15'#9'Departanento'#9'F'#9'UNIDAD DE COBRANZA');
   dbgPrincipal.Selected.Add('PROV_UNIDAD'#9'15'#9'Provincia'#9'F'#9'UNIDAD DE COBRANZA');
   dbgPrincipal.Selected.Add('DIST_UNIDAD'#9'15'#9'Distrito'#9'F'#9'UNIDAD DE COBRANZA');
   dbgPrincipal.Selected.Add('DIR_UNIDAD'#9'15'#9'Dirección'#9'F'#9'UNIDAD DE COBRANZA');
   dbgPrincipal.Selected.Add('TEL1_UNIDAD'#9'15'#9'Telefono 01'#9'F'#9'UNIDAD DE COBRANZA');
   dbgPrincipal.Selected.Add('TEL2_UNIDAD'#9'15'#9'Telefono 02'#9'F'#9'UNIDAD DE COBRANZA');
   dbgPrincipal.Selected.Add('CORR_UNIDAD'#9'15'#9'Correo'#9'F'#9'UNIDAD DE COBRANZA');
   dbgPrincipal.ApplySelected;
   // FIN HPC_201702_GESCOB : Mejora del del reporte de direcciones y teléfonos centrales de riesgo
   //                     y reglas para la impresión de la dirección de Hoja de ruta diaria.       
End;

//******************************************************************************
// Nombre : btnExportarClick
// Descripcion : exportar datos a excel
//******************************************************************************

Procedure TFDirTelCenRie.btnExportarClick(Sender : TObject);
Begin
   Screen.Cursor := crHourGlass;
   Try
      With dbgPrincipal, dbgPrincipal.ExportOptions Do
      Begin
         ExportType := wwgetSYLK;
         FileName := 'DirTelCenRie.slk';
         DM1.OpcionesExportExcel(dbgPrincipal.ExportOptions);
         dbgPrincipal.ExportOptions.TitleName := 'Asociados';
         Save;
         If Not (esoClipboard In Options) Then
            ShellExecute(Handle, 'Open', PChar(dbgPrincipal.exportoptions.Filename), Nil, Nil, sw_shownormal);
      End;
      Screen.Cursor := crDefault;
   Except
      Screen.Cursor := crDefault;
      MessageDlg('No se puede grabar el Archivo ' + chr(13) + 'Cierre todos los Archivos en Excel y vuelva a intentarlo', mtWarning, [mbOk], 0);
   End;
End;

//******************************************************************************
// Nombre : btnProcesarClick
// Descripcion : cargar datos
//******************************************************************************

Procedure TFDirTelCenRie.btnProcesarClick(Sender : TObject);

   Function fn_is_existe_data() : boolean;
   Var
      xsSQL : String;
   Begin
      Screen.Cursor := crHourGlass;
      result := false;
// INICIO HPC_201705_GESCOB 12/12/2017 Observaciones en la información
      // INICIO HPC_201702_GESCOB : Mejora del del reporte de direcciones y teléfonos centrales de riesgo
      //                     y reglas para la impresión de la dirección de Hoja de ruta diaria.       
      xsSQL := 'SELECT A.ASOID, A.ASOAPENOM, A.ASODNI, A.ASOCODMOD, '
         + '           D.DPTODES DPTO_DERRAMA, G.CIUDDES PROV_DERRAMA, I.ZIPDES DIST_DERRAMA, A.ASODIR DIR_DERRAMA, '
         + '           A.ASOTELF1 TEL1_DERRAMA, A.ASOTELF2 TEL2_DERRAMA, '
         + '           F.DPTODES DPTO_CEN_RIE, H.CIUDDES PROV_CEN_RIE, J.ZIPDES DIST_CEN_RIE, B.DIRECCION DIR_CEN_RIE, '
         + '           C.TELEFONO TEL_CEN_RIE, '
         + '           UBIGEO_GESCOB.DPTO_UNIDAD,UBIGEO_GESCOB.PROV_UNIDAD,UBIGEO_GESCOB.DIST_UNIDAD,T.ASODIR DIR_UNIDAD,'
         + '           (SELECT NROTELF FROM (SELECT ASOID,NROTELF,ROW_NUMBER() OVER (PARTITION BY ASOID ORDER BY HREG DESC) N FROM GES_TEL_ASO WHERE ACTIVO=''S'') WHERE ASOID=A.ASOID AND N=1) TEL1_UNIDAD, '
         + '           (SELECT NROTELF FROM (SELECT ASOID,NROTELF,ROW_NUMBER() OVER (PARTITION BY ASOID ORDER BY HREG DESC) N FROM GES_TEL_ASO WHERE ACTIVO=''S'') WHERE ASOID=A.ASOID AND N=2) TEL2_UNIDAD, '
         + '           (SELECT CORREO FROM (SELECT ASOID,CORREO,ROW_NUMBER() OVER (PARTITION BY ASOID ORDER by HREG DESC) N FROM GES_COR_ASO WHERE ACTIVO=''S'') WHERE ASOID=A.ASOID AND N=1) CORR_UNIDAD  '
         + '      FROM APO201 A, '
         + '           (SELECT ASOID, MAX(UBIGEO)UBIGEO, MAX(DIRECCION)DIRECCION '
         + '              FROM CEN_RIE_DIRECCION '
         + '             GROUP BY ASOID)B, '
         + '           (SELECT ASOID, MAX(TELEFONO)TELEFONO '
         + '              FROM CEN_RIE_TELEFONO '
         + '             GROUP BY ASOID)C, APO158 D, APO158 F, APO123 G, APO123 H, APO122 I, '
         + '           APO122 J, '
         + '              (SELECT ASOID,ASODIR,UBIGEO,HREG FROM (  '
         + '                     SELECT ASOID,ASODIR,UBIGEO,HREG,ROW_NUMBER() OVER (PARTITION BY ASOID ORDER BY HREG DESC) N  '
         + '                     FROM GES_DOM_ASO WHERE ACTIVO=''S'' '
         + '              ) WHERE N=1) T,                                                 '
         + '             ( SELECT DIST.DPTOID || DIST.CIUDID || DIST.ZIPID UBIGEO,        '
         + '               DPTO.DPTODES DPTO_UNIDAD, PROV.CIUDDES PROV_UNIDAD, DIST.ZIPDES DIST_UNIDAD         '
         + '               FROM TGE158 DPTO, TGE121 PROV,TGE122 DIST                                                 '
         + '               WHERE DPTO.DPTOID = PROV.DPTOID AND PROV.DPTOID = DIST.DPTOID AND PROV.CIUDID = DIST.CIUDID  '
         + '              ) UBIGEO_GESCOB              '
         + '     WHERE A.FALLECIDO = ''N'' '
         + '       AND A.ASOTIPID In (''DO'', ''CE'', ''CO'') ';
      If (Trim(edDist.Text) <> '') Then
         xsSQL := xsSQL + ' AND A.ZIPID = ' + QuotedStr(DM1.cdsDist.fieldbyname('ZIPID').AsString)
      Else
         If (Trim(edProv.Text) <> '') Then
            xsSQL := xsSQL + ' AND SUBSTR(A.ZIPID, 1, 4) = ' + QuotedStr(DM1.cdsProvin.fieldbyname('CIUDID').AsString)
         Else
            If (Trim(edDpto.Text) <> '') Then
               xsSQL := xsSQL + ' AND SUBSTR(A.ZIPID, 1, 2) = ' + QuotedStr(DM1.cdsDpto.fieldbyname('DPTOID').AsString);
      xsSQL := xsSQL + ' AND A.ASOID = B.ASOID(+) '
         + '       AND A.ASOID = C.ASOID(+) '
         + '       AND SUBSTR(A.ZIPID, 1, 2) = D.DPTOID(+) '
         + '       AND SUBSTR(B.UBIGEO, 1, 2) = F.DPTOID(+) '
         + '       AND SUBSTR(A.ZIPID, 1, 4) = G.CIUDID(+) '
         + '       AND SUBSTR(B.UBIGEO, 1, 4) = H.CIUDID(+) '
         + '       AND A.ZIPID = I.ZIPID(+) '
         + '       AND B.UBIGEO = J.ZIPID(+) '
         + '       AND A.ASOID=T.ASOID(+)  '
         + '       AND T.UBIGEO=UBIGEO_GESCOB.UBIGEO(+)  '
         + '      ORDER BY A.ASOAPENOM ';
      DM1.cdsQry1.Close;
      DM1.cdsQry1.DataRequest(xsSQL);
      DM1.cdsQry1.Open;
      Screen.Cursor := crDefault;
      If DM1.cdsQry1.RecordCount > 0 Then result := true;
      // FIN HPC_201702_GESCOB : Mejora del del reporte de direcciones y teléfonos centrales de riesgo
      //                     y reglas para la impresión de la dirección de Hoja de ruta diaria.       
// FIN HPC_201705_GESCOB 12/12/2017 Observaciones en la información 
   End;
Begin
   If (trim(edDpto.Text) <> '') Then
   Begin
      If fn_is_existe_data Then
      Begin
         btnBuscar.Enabled := true;
         btnExportar.Enabled := true;
         btnImprimir.Enabled := true;
         fn_pintar_grilla();
         lblCantRegistros.Caption := inttostr(DM1.cdsQry1.RecordCount) + ' Registros';
      End;
   End
   Else
      MessageDlg('Seleccione por lo menos un Departamento!', mtInformation, [mbOk], 0);
End;

//******************************************************************************
// Nombre : btnSalirClick
// Descripcion : cerrar formulario
//******************************************************************************

Procedure TFDirTelCenRie.btnSalirClick(Sender : TObject);
Begin
   close;
End;

//******************************************************************************
// Nombre : dbgPrincipalDblClick
// Descripcion : mostrar detalle del registro seleccionado
//******************************************************************************

Procedure TFDirTelCenRie.dbgPrincipalDblClick(Sender : TObject);
Begin
   If DM1.cdsQry1.RecordCount > 0 Then
   Begin
      FDirTelCenRieDet := TFDirTelCenRieDet.create(self);
      Try
         FDirTelCenRieDet.edAsoapenom.Text := DM1.cdsQry1.fieldbyname('ASOAPENOM').AsString;
         FDirTelCenRieDet.edAsoid.Text := DM1.cdsQry1.fieldbyname('ASOID').AsString;
         FDirTelCenRieDet.edAsodni.Text := DM1.cdsQry1.fieldbyname('ASODNI').AsString;
         FDirTelCenRieDet.edAsocodmod.Text := DM1.cdsQry1.fieldbyname('ASOCODMOD').AsString;
         FDirTelCenRieDet.ShowModal();
      Finally
         FDirTelCenRieDet.Free;
      End;
   End;
End;

//******************************************************************************
// Nombre : btnBuscarClick
// Descripcion : mostrar caja de texto para buscar asociado en el listado filtrado
//******************************************************************************

Procedure TFDirTelCenRie.btnBuscarClick(Sender : TObject);
Begin
   If DM1.cdsQry1.RecordCount = 0 Then Exit;
   edBuscar.Text := '';
   If Not gbBusAso.Visible Then
   Begin
      gbBusAso.Visible := True;
      edBuscar.SetFocus;
   End
   Else
      gbBusAso.Visible := False;
End;

//******************************************************************************
// Nombre : edBuscarChange
// Descripcion : buscar asociado
//******************************************************************************

Procedure TFDirTelCenRie.edBuscarChange(Sender : TObject);
Begin
   If Length(Trim(edBuscar.Text)) > 0 Then
      DM1.cdsQry1.Locate('ASOAPENOM', VarArrayOf([TRIM(edBuscar.Text)]), [loPartialKey]);
End;

//******************************************************************************
// Nombre : edBuscarExit
// Descripcion : ocultar caja de texto de la busqueda
//******************************************************************************

Procedure TFDirTelCenRie.edBuscarExit(Sender : TObject);
Begin
   btnBuscarClick(btnBuscar);
End;

//******************************************************************************
// Nombre : btnImprimirClick
// Descripcion : mostrar reporte
//******************************************************************************

Procedure TFDirTelCenRie.btnImprimirClick(Sender : TObject);
Begin
   dbpReporte.DataSource := DM1.dsQry1;
   ppLblTit.Caption := 'Direcciones y Telefonos - Centrales de Riesgo';
   ppLblUser.Caption := 'Emitido Por :  ' + Trim(DM1.CrgDescrip('USERID=' + QuotedStr(Trim(DM1.wUsuario)), 'TGE006', 'USERNOM'));
   repReporte.Print;
   //desReporte.Show;
End;

//******************************************************************************
// Nombre : FormKeyPress
// Descripcion : cambiar de control al dar enter
//******************************************************************************

Procedure TFDirTelCenRie.FormKeyPress(Sender : TObject; Var Key : Char);
Begin
   If Key = #13 Then
   Begin
      Key := #0;
      Perform(CM_DialogKey, VK_TAB, 0);
   End;
End;
(******************************************************************************)
End.

