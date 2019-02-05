// Inicio Uso Estándares: 01/08/2011
// Unidad : Gestión de Cobranzas
// Formulario : FRepGesRealizada
// Fecha de Creación : 08/08/2011
// Autor : JDCRUZ
// Objetivo : Reporte de Gestiones Realizadas.
// Actualizaciones:
// HPC_201117_GESCOB 08/08/2011 Crear Reporte de Gestiones Realizadas(F1)
// HPC_201119_GESCOB 26/09/2011 Acuerdo de Atencion 2011-02-V2.0
// HPC_201202_GESCOB 27/01/2012 Colocar Matriz de Prioridades
// HPC_201205_GESCOB 19/07/2012 adecuar los nombres de funciones al estandar de desarrollo
// DPP_201205_GESCOB: Pase a producción a partir de los pases HPC_201205 y HPC_201206
// HPC_201303_GESCOB: F1 06/05/2013 Se carga Gestores según intervalo de fechas.
//                    Se agregó columnas: Código Gestión, Descripción Gestión y Descripción Resultado.
//                    Se hizó el programa para Ventanilla/Plataforma, no había nada.
//                    Se cambio 01 a 05 en el procedimiento rgTipoGestionInterna, para que conincida con producción
//                    Se anulo la columna "REFERENCIA", el usuario tenía otra definición, se graba 1 x socio y no por cada gestión
// SPP_201303_GESCOB: Se realiza el pase a producción a partir del HPC_201303_GESCOB
// HPC_201304_GESCOB: F1 21/05/2013 Se agregó columna hora.
//                    Se corrigió las columnas Código y Descripción de Atención y la Gestión realizada
// SPP_201304_GESCOB: Se realiza el pase a producción a partir del HPC_201304_GESCOB
// HPC_201604_GESCOB: En Reportes de Gestiones realizadas añadir Columnas de Compromisos RELIZADOS 
// HPC_201703_GESCOB: Mejoras funcionales en el registro de la atención del asociado
// HPC_201705_GESCOB 12/12/2017 Observaciones en la información
Unit GES500;

Interface

Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, ExtCtrls, ComCtrls, wwdblook, Buttons, Grids,
   Wwdbigrd, Wwdbgrid, DBGrids, ppParameter, ppBands, ppCtrls, ppClass,
   ppVar, ppPrnabl, ppCache, ppProd, ppReport, ppRelatv, ppDB, ppDBPipe,
   ppDBBDE, ppComm, ppEndUsr, ppStrtch, ppMemo, fcButton, fcImgBtn,
   fcShapeBtn,
   DB, Wwdbdlg, wwExport, shellapi;

Type
   TFRepGesRealizada = Class(TForm)
      gbFiltro : TGroupBox;
      lblFechaInicio : TLabel;
      lblFechaFin : TLabel;
      dtpFechaInicio : TDateTimePicker;
      dtpFechaFin : TDateTimePicker;
      pnlControles : TPanel;
      btnExportar : TBitBtn;
      btnImprimir : TBitBtn;
      btnSalir : TBitBtn;
      dbgPrincipal : TwwDBGrid;
      Panel2 : TPanel;
      btnFiltrar : TBitBtn;
      dbgData : TDBGrid;
      dsgPrincipal : TppDesigner;
      ppdbPrincipal : TppBDEPipeline;
      pprPrincipal : TppReport;
      ppParameterList1 : TppParameterList;
      ppHeaderBand1 : TppHeaderBand;
      ppImage1 : TppImage;
      pplTitulo : TppLabel;
      ppSystemVariable1 : TppSystemVariable;
      ppSystemVariable2 : TppSystemVariable;
      ppLabel22 : TppLabel;
      ppSystemVariable3 : TppSystemVariable;
      ppLabel23 : TppLabel;
      ppLabel24 : TppLabel;
      ppLabel881 : TppLabel;
      ppLabel14 : TppLabel;
      ppSystemVariable4 : TppSystemVariable;
      ppLabel15 : TppLabel;
      ppLabel880 : TppLabel;
      ppLabel17 : TppLabel;
      ppDetailBand1 : TppDetailBand;
      ppShape3 : TppShape;
      ppShape2 : TppShape;
      ppShape1 : TppShape;
      ppDBText4 : TppDBText;
      ppLabel4 : TppLabel;
      ppLabel5 : TppLabel;
      ppLabel6 : TppLabel;
      ppLabel7 : TppLabel;
      ppLabel8 : TppLabel;
      ppLabel9 : TppLabel;
      ppLabel10 : TppLabel;
      ppLabel11 : TppLabel;
      ppDBText5 : TppDBText;
      ppDBText6 : TppDBText;
      ppDBText7 : TppDBText;
      ppDBText9 : TppDBText;
      ppDBText10 : TppDBText;
      ppDBText11 : TppDBText;
      ppLine1 : TppLine;
      ppLine2 : TppLine;
      ppLine3 : TppLine;
      ppLine4 : TppLine;
      ppLine5 : TppLine;
      ppLine6 : TppLine;
      ppLine7 : TppLine;
      ppLine8 : TppLine;
      ppFooterBand1 : TppFooterBand;
      ppmMensaje : TppMemo;
      ppLine9 : TppLine;
      ppLabel13 : TppLabel;
      ppLabel12 : TppLabel;
      ppLblUsuario : TppLabel;
      ppLabel16 : TppLabel;
      ppLblFechaDato : TppLabel;
      ppPageStyle1 : TppPageStyle;
      ppGroup1 : TppGroup;
      ppGroupHeaderBand1 : TppGroupHeaderBand;
      ppGroupFooterBand1 : TppGroupFooterBand;
      ppGroup2 : TppGroup;
      ppGroupHeaderBand2 : TppGroupHeaderBand;
      ppLabel2 : TppLabel;
      ppDBText2 : TppDBText;
      ppLabel3 : TppLabel;
      ppDBText3 : TppDBText;
      ppLabel1 : TppLabel;
      ppDBText1 : TppDBText;
      ppGroupFooterBand2 : TppGroupFooterBand;
      gbBusAso : TGroupBox;
      z2bbtnBuscar : TfcShapeBtn;
      txtBuscar : TEdit;
      btnBuscar : TBitBtn;
      lblNroRegistros : TLabel;
      pcFiltro : TPageControl;
      tsGestor : TTabSheet;
      tsAsociado : TTabSheet;
      lblGestor : TLabel;
      cbGestor : TwwDBLookupCombo;
      edtGestor : TEdit;
      lblResGestion : TLabel;
      cbResGestion : TwwDBLookupCombo;
      edtResGestion : TEdit;
      rgTipBusAso : TRadioGroup;
      txtBusAso : TEdit;
      tsUbigeo : TTabSheet;
      Label2 : TLabel;
      cboDpto : TwwDBLookupComboDlg;
      txtDpto : TEdit;
      Label3 : TLabel;
      cboProv : TwwDBLookupComboDlg;
      txtProv : TEdit;
      txtDist : TEdit;
      cboDist : TwwDBLookupComboDlg;
      Label4 : TLabel;
      pcTipoGestor : TPageControl;
      tsGestionInterna : TTabSheet;
      tsGestionExterna : TTabSheet;
      rgTipoGestionInterna : TRadioGroup;
      rgTipoGestionExterna : TRadioGroup;
      Bevel1 : TBevel;
      Bevel2 : TBevel;
      Bevel3 : TBevel;
      tsCalificacion : TTabSheet;
      Label1 : TLabel;
      cboCalificacion : TwwDBLookupComboDlg;
      edtCalificacion : TEdit;
      Bevel4 : TBevel;
      Bevel5 : TBevel;
      Bevel6 : TBevel;
      lblPeriodoCartera : TLabel;
      Procedure rgTipoGestionInternaClick(Sender : TObject);
      Procedure dtpFechaInicioChange(Sender : TObject);
      Procedure cbGestorChange(Sender : TObject);
      Procedure cbResGestionChange(Sender : TObject);
      Procedure btnFiltrarClick(Sender : TObject);
      Procedure FormCreate(Sender : TObject);
      Procedure btnExportarClick(Sender : TObject);
      Procedure btnSalirClick(Sender : TObject);
      Procedure btnImprimirClick(Sender : TObject);
      Procedure FormKeyPress(Sender : TObject; Var Key : Char);
      Procedure FormClose(Sender : TObject; Var Action : TCloseAction);
      Procedure txtBuscarChange(Sender : TObject);
      Procedure btnBuscarClick(Sender : TObject);
      Procedure txtBuscarKeyDown(Sender : TObject; Var Key : Word;
         Shift : TShiftState);
      Procedure txtBuscarExit(Sender : TObject);
      Procedure rgTipBusAsoClick(Sender : TObject);
      Procedure pcFiltroChange(Sender : TObject);
      Procedure txtBusAsoChange(Sender : TObject);
      Procedure dbgPrincipalDblClick(Sender : TObject);
      Procedure cboDptoExit(Sender : TObject);
      Procedure cboProvExit(Sender : TObject);
      Procedure cboDistExit(Sender : TObject);
      Procedure pcTipoGestorChange(Sender : TObject);
      Procedure cboCalificacionChange(Sender : TObject);


   Private
      //Inicio: DPP_201205_GESCOB
      xsTabla : String;
      xsIdGestion : String;
      xsTipGes : String; // tipo de gestion : 01 interna / 02 externa
      Procedure fn_Limpia_Datos;
      Procedure fn_Carga_Grid(wgLimpiar : boolean = false);
      //Fin: DPP_201205_GESCOB
   Public
    { Public declarations }
   End;

Var
   FRepGesRealizada : TFRepGesRealizada;

Implementation
Uses GESDM1, GES501;

{$R *.dfm}
//Inicio: DPP_201205_GESCOB
//******************************************************************************
// Nombre : FormCreate
// Descripcion : Evento que se dispara al crear el formulario
//               Llena controles con valores por defecto
//******************************************************************************

Procedure TFRepGesRealizada.FormCreate(Sender : TObject);
Var
   xdFechaSystema : TDateTime;
   xSQL : String;
Begin
   KeyPreview := True; // PARA QUE ACEPET EL EVENTO DE KEYPRESS PARA SALTAR DE UN CONTROL A OTRO, ADEMAS SE DEBE DE COLOCAR EL CODIGO DEL EVENTO FormKeyPress

   xsTabla := 'GES_COB_DOM'; // POR SI NO INGRESA EN ALGUNA OPCION DE TIPO DE GESTION
   rgTipoGestionInterna.ItemIndex := -1;

   rgTipoGestionExterna.ItemIndex := 2;
   pcTipoGestor.ActivePage := tsGestionInterna;

   If StrToInt(Copy(DM1.NivelUsuario(DM1.wUsuario), 2, 1)) = 1 Then
   Begin
      pcFiltro.Enabled := false;
      rgTipoGestionInterna.Enabled := false;
      pcTipoGestor.Enabled := false;
      dtpFechaInicio.Enabled := false;
      dtpFechaFin.Enabled := false;
      cbGestor.Enabled := false;
      If DM1.CrgDescrip('USERID=' + QuotedStr(DM1.wUsuario), 'GES_NIV_USU_OTO', 'TIPACT') = '01' Then
      Begin
         rgTipoGestionInterna.ItemIndex := 1;
         cbGestor.Text := DM1.wUsuario;
      End
      Else
         If DM1.CrgDescrip('USERID=' + QuotedStr(DM1.wUsuario), 'GES_NIV_USU_OTO', 'TIPACT') = '02' Then
         Begin
            rgTipoGestionInterna.ItemIndex := 2;
            cbGestor.Text := DM1.wUsuario;
         End;
   End;

   fn_Limpia_Datos();

   cbResGestion.Enabled := rgTipoGestionInterna.ItemIndex >= 0;
   cbGestorChange(Nil);
   cbResGestionChange(Nil);
   xdFechaSystema := DM1.FechaSys;
   dtpFechaInicio.Date := xdFechaSystema;
   dtpFechaFin.Date := xdFechaSystema;

   xSQL := 'SELECT DPTOID, DPTODES FROM APO158 ORDER BY DPTOID';
   DM1.cdsDpto.Close;
   DM1.cdsDpto.DataRequest(xSQL);
   DM1.cdsDpto.Open;
   cboDpto.LookupTable := DM1.cdsDpto;
   cboDpto.Selected.Clear;
   cboDpto.Selected.Add('DPTOID'#9'3'#9'Código'#9#9);
   cboDpto.Selected.Add('DPTODES'#9'20'#9'Descripción'#9#9);

   xSQL := 'SELECT DPTOID,CIUDID,CIUDDES FROM APO123 ORDER BY DPTOID,CIUDID';
   DM1.cdsProvin.Close;
   DM1.cdsProvin.DataRequest(xSQL);
   DM1.cdsProvin.Open;
   cboProv.LookupTable := DM1.cdsProvin;
   cboProv.Selected.Clear;
   cboProv.Selected.Add('CIUDID'#9'5'#9'Código'#9#9);
   cboProv.Selected.Add('CIUDDES'#9'20'#9'Descripción'#9#9);
   DM1.cdsProvin.Filtered := false;
   DM1.cdsProvin.Filter := '1=2';
   DM1.cdsProvin.Filtered := true;

   xSQL := 'SELECT DPTOID, CIUDID, ZIPID, ZIPDES FROM APO122 ORDER BY DPTOID, CIUDID, ZIPID';
   DM1.cdsDist.Close;
   DM1.cdsDist.DataRequest(xSQL);
   DM1.cdsDist.Open;
   cboDist.LookupTable := DM1.cdsDist;
   cboDist.Selected.Clear;
   cboDist.Selected.Add('ZIPID'#9'7'#9'Código'#9#9);
   cboDist.Selected.Add('ZIPDES'#9'20'#9'Descripción'#9#9);
   DM1.cdsDist.Filtered := false;
   DM1.cdsDist.Filter := '1 = 2';
   DM1.cdsDist.Filtered := true;

   // calificacion
   xSQL := 'SELECT RESUMEID, RESUMEDES, DIASINI, DIASFIN FROM COB113';
   DM1.cdsQry7.Close;
   DM1.cdsQry7.DataRequest(xSQL);
   DM1.cdsQry7.Open;
   cboCalificacion.LookupTable := DM1.cdsQry7;
   cboCalificacion.Selected.Clear;
   cboCalificacion.Selected.Add('RESUMEID'#9'7'#9'Código'#9#9);
   cboCalificacion.Selected.Add('RESUMEDES'#9'20'#9'Descripcion'#9#9);
   cboCalificacion.Enabled := (DM1.cdsQry7.RecordCount > 0);

   //cargar datos de ultima cartera
   xSQL := 'SELECT MAX(PERIODO) PERIODO FROM GES000';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSQL);
   DM1.cdsQry.Open;
   lblPeriodoCartera.Caption := DM1.cdsQry.fieldbyname('PERIODO').asstring;

   //limpiar datos
   fn_Limpia_Datos();

   pcFiltro.ActivePage := tsGestor;
End;

//******************************************************************************
// Nombre : fn_Carga_Grid
// Descripcion : Realiza la consulta a la base de datos y pinta las columnas
//               que se van a mostrar
//******************************************************************************

Procedure TFRepGesRealizada.fn_Carga_Grid(wgLimpiar : boolean);
Var
   xsSQL : String;
   xsSQLUsuario : String;
   xsSQLResGestion : String;
   xsGestor, xsFecha, xsCodGestion, xsGesRealizada, xsTelefono : String;
   xsSQLTipGestion : String;
   xsSQLAso : String;
Begin
   Screen.Cursor := crHourGlass;
   If wgLimpiar Then
   Begin
      xsSQL := 'SELECT '' '' SUPERVISOR, '' '' ASODNI, '' '' COD_MODULAR, '' '' APE_NOMBRES, '' '' DIRECCION, '' '' REFERENCIA,  '' '' DEPARTAMENTO,  '' ''  PROVINCIA, '' '' DISTRITO, '
         + '          '' '' TELEFONO, '
//Inicio HPC_201703_GESCOB
//Mejoras funcionales en el registro de la atención del asociado
         + '          '' '' ASOTEL, '
         + '          '' '' ASOCEL, '
         + '          '' '' ASODIR, '
         + '          '' '' ASOCORREO, '
         + '          '' '' ASOMTOPRO, '
         + '          '' '' ASOFECPRO, '
         + '          '' '' ASOMOTATR, '
//Fin HPC_201703_GESCOB
// Inicio  HPC_201604_GESCOB: En Reportes de Gestiones realizadas añadir Columnas de Compromisos
         + '          '' '' GESTOR, '' '' FECHA, '' '' COD_GESTION, '' '' GES_REALIZADA, '' '' ASOID, '' '' CFC_F, '' '' CFC_DES, '
         + ' 0 MONTO_COMPROMISO '
// fin     HPC_201604_GESCOB: En Reportes de Gestiones realizadas añadir Columnas de Compromisos
         + '     FROM  DUAL WHERE 1 = 2 ';
   End
   Else
   Begin


   If rgTipoGestionInterna.ItemIndex = 3 Then                                // PLATAFORMA
      Begin

      If cbGestor.Text <> '' Then
         xsSQLUsuario := ' AND U1.USUARIO = ' + QuotedStr(cbGestor.Text)
      Else
         xsSQLUsuario := '';

      Case rgTipBusAso.ItemIndex Of
         0 :
            Begin
               xsSQLAso := ' AND C.ASOAPENOMDNI LIKE ' + QuotedStr(txtBusAso.Text + '%');
            End;
         1 :
            Begin
               xsSQLAso := ' AND C.ASODNI LIKE ' + QuotedStr(txtBusAso.Text + '%');
            End;
         2 :
            Begin
               xsSQLAso := ' AND C.ASOCODMOD LIKE ' + QuotedStr(txtBusAso.Text + '%');
            End;
      End;

      xsSQL := 'SELECT SUPERVISOR, ASODNI, COD_MODULAR, APE_NOMBRES, DIRECCION, REFERENCIA, DEPARTAMENTO, PROVINCIA, DISTRITO, '
         + '          CASE WHEN TELEFONO_GESCOB IS NOT NULL THEN TELEFONO_GESCOB ELSE TELEFONO_APO END TELEFONO, '
//Inicio HPC_201703_GESCOB
//Mejoras funcionales en el registro de la atención del asociado
         + '         ASOTEL,ASOCEL,ASODIR,ASOCORREO,ASOMTOPRO,ASOFECPRO,DESMOT,           '
//Fin HPC_201703_GESCOB
         + '          GESTOR, TO_CHAR(FECHA,''YYYY-MM-DD'') FECHA, ASOID, '
         + '          CFC_F, CASE WHEN CFC_F = ''0'' THEN ''NOR'' '
         + '                      WHEN CFC_F = ''A'' THEN ''CPP'' '
         + '                      WHEN CFC_F = ''B'' THEN ''DEF'' '
         + '                      WHEN CFC_F = ''C'' THEN ''DUD'' '
         + '                      WHEN CFC_F = ''D'' THEN ''PER'' '
         + '                      ELSE ''SIN CALIFICACION'' '
         + '                  END CFC_DES '
// Inicio: SPP_201304_GESCOB se anuló columnas, en plataforma no hay datos
//         + '          , COD_GESTION       '
//         + '          , DES_GESTION       '
// Fin: SPP_201304_GESCOB
         + '          , COD_GES_REALIZADA '
         + '          , DES_GES_REALIZADA '
         + '          , GES_REALIZADA'
// Inicio: SPP_201304_GESCOB se agregó la columna hora
         + '          , HORA '
// Fin: SPP_201304_GESCOB
         + '   FROM ( ';

        xsSQL := xsSQL + 'SELECT '
// Inicio: SPP_201304_GESCOB - cambiado de sin espacio a un espacio
           + '     '' '' SUPERVISOR , '
// Fin: SPP_201304_GESCOB
           + '     C.ASODNI,         '
           + '     C.ASOCODMOD COD_MODULAR,   '
           + '     U1.ASOAPENOM APE_NOMBRES,  '
           + '     C.ASODIR DIRECCION,        '
           + '     '''' REFERENCIA,           '
           + '     CASE                       '
           + '         WHEN H.ZIPDES IS NOT NULL THEN H.ZIPDES           '
           + '         WHEN H_HIS.ZIPDES IS NOT NULL THEN H_HIS.ZIPDES   '
           + '         ELSE H_APO.ZIPDES                                 '
           + '     END DISTRITO,                                         '
           + '     CASE                                                  '
           + '         WHEN I.CIUDDES IS NOT NULL THEN I.CIUDDES         '
           + '         WHEN I_HIS.CIUDDES IS NOT NULL THEN I_HIS.CIUDDES ELSE I_APO.CIUDDES    '
           + '     END PROVINCIA,                                                              '
           + '     CASE                                                                        '
           + '         WHEN J.DPTODES IS NOT NULL THEN J.DPTODES                               '
           + '         WHEN J_HIS.DPTODES IS NOT NULL THEN J_HIS.DPTODES                       '
           + '         ELSE J_APO.DPTODES                                                      '
           + '     END DEPARTAMENTO,                                                           '
   // INICIO HPC_201705_GESCOB 12/12/2017 Observaciones en la información
           + '     (SELECT NROTELF FROM (SELECT ASOID,NROTELF,ROW_NUMBER() OVER (PARTITION BY ASOID ORDER BY HREG DESC) N FROM GES_TEL_ASO WHERE ACTIVO=''S'') WHERE ASOID=U1.ASOID  AND N=1) TELEFONO_GESCOB, '
   // FIN HPC_201705_GESCOB 12/12/2017 Observaciones en la información 
           + '     CASE                                                                        '
           + '         WHEN C.ASOTELF1 IS NOT NULL THEN C.ASOTELF1                             '
           + '         ELSE C.ASOTELF2                                                         '
           + '     END TELEFONO_APO,                                                           '

//Inicio HPC_201703_GESCOB
//Mejoras funcionales en el registro de la atención del asociado
           + '    U1.ASOTEL,                                                                    '
           + '    U1.ASOCEL,                                                                    '
           + '    U1.ASODIR,                                                                    '
           + '    U1.ASOCORREO,                                                                 '
           + '    TO_CHAR(U1.ASOMTOPRO,''999,9999,999.99'') ASOMTOPRO,                                                                 '
           + '    U1.ASOFECPRO,                                                                 '
           + '    (SELECT DESMOT FROM COB_MOT_ATR_MAE WHERE CODMOT=U1.ASOMOTATR) DESMOT,           '
//Fin HPC_201703_GESCOB

           + '     U1.USUARIO GESTOR,                                                          '
           + '     U1.FREG FECHA,                                                              '
           + '     C.ASOID,                                                                    '
           + '     CFC.CFC_F           ,                                                       '
// Inicio: SPP_201304_GESCOB se anuló columnas, en plataforma no hay datos
//           + '     '''' COD_GESTION,                                                             '
//           + '     '''' DES_GESTION,                                                             '
// Fin: SPP_201304_GESCOB
           + '     CODATE COD_GES_REALIZADA,                                                     '
           + '     ATEN.DESCRIPCION DES_GES_REALIZADA,                                            '
           + '     OBSATE GES_REALIZADA                                                         '
// Inicio: SPP_201304_GESCOB se agregó la columna hora
           + '     , '' '' || TO_CHAR(U1.HREG,''HH24:MM:SS'') HORA                                          '
// Fin: SPP_201304_GESCOB
           + ' FROM                                                                              '
//Inicio HPC_201703_GESCOB
//Mejoras funcionales en el registro de la atención del asociado                                                                             '
           + '         ( SELECT ASOID, MAX(HREG) HREG_ID FROM COB_ATE_ASO WHERE FREG BETWEEN ' + QuotedStr(DateToStr(dtpFechaInicio.Date)) + ' AND ' + QuotedStr(DateToStr(dtpFechaFin.Date)) + ' GROUP BY ASOID )  U, '
//Fin HPC_201703_GESCOB
           + '          COB_ATE_ASO U1,                                                          '
           + '          GES_COB_IND_HIS B_HIS,                                                   '
           + '          APO201 C,                                                                '
           + '          APO122 H,                                                                '
           + '          APO122 H_HIS,                                                            '
           + '          APO122 H_APO           ,                                                 '
           + '          APO123 I,                                                                '
           + '          APO123 I_HIS,                                                            '
           + '          APO123 I_APO           ,                                                 '
           + '          APO158 J,                                                                '
           + '          APO158 J_HIS,                                                            '
           + '          APO158 J_APO           ,                                                 '
           + '          GES000 CFC,                                                              '
           + '          GES_REF_SEG_DET ATEN                                                         '
           + ' WHERE                                                                             '
//Inicio HPC_201703_GESCOB
//Mejoras funcionales en el registro de la atención del asociado                                                                             '
           + '     U.ASOID = U1.ASOID '
           + '     AND U.HREG_ID = U1.HREG                                                           '
//Fin HPC_201703_GESCOB
           + '     AND ' + QuotedStr(lblPeriodoCartera.Caption) + ' = B_HIS.PERIODO(+)           '
           + '     AND U1.ASOID = B_HIS.ASOID(+)                                                 '
           + '     AND ' + QuotedStr(lblPeriodoCartera.Caption) + ' = CFC.PERIODO(+)             '
           + '     AND U1.ASOID = CFC.ASOID(+)                                                   '
           + '     AND U1.ASOID = C.ASOID(+)                                                     '
           + '     AND U1.CODATE = ATEN.IDGTNDET(+)                                              ';

         xsSQL := xsSQL + xsSQLUsuario;

      If (pcFiltro.ActivePage = tsAsociado) Then
      Begin
         xsSQL := xsSQL + xsSQLAso;
      End;

// Se usa el campo C.ZIPID en Gestión se usa B.ZIPID
      If (pcFiltro.ActivePage = tsUbigeo) Then
      Begin
         If (trim(txtDist.Text) <> '') Then
            xsSQL := xsSQL + ' AND (CASE WHEN C.ZIPID IS NOT NULL THEN C.ZIPID WHEN B_HIS.ZIPID IS NOT NULL THEN B_HIS.ZIPID ELSE C.ZIPID END) = ' + QuotedStr(trim(cboDist.Text))
         Else
            If (trim(txtProv.Text) <> '') Then
               xsSQL := xsSQL + ' AND SUBSTR(CASE WHEN C.ZIPID IS NOT NULL THEN C.ZIPID WHEN B_HIS.ZIPID IS NOT NULL THEN B_HIS.ZIPID ELSE C.ZIPID END,1,4) = ' + QuotedStr(trim(cboProv.Text))
            Else
               If (trim(txtDpto.Text) <> '') Then
                  xsSQL := xsSQL + ' AND SUBSTR(CASE WHEN C.ZIPID IS NOT NULL THEN C.ZIPID WHEN B_HIS.ZIPID IS NOT NULL THEN B_HIS.ZIPID ELSE C.ZIPID END,1,2) = ' + QuotedStr(trim(cboDpto.Text))
      End;
      If (pcFiltro.ActivePage = tsCalificacion) Then
      Begin
         If (trim(cboCalificacion.Text) <> '') Then
            xsSQL := xsSQL + ' AND CFC.CFC_F = ' + QuotedStr(trim(cboCalificacion.Text))
      End;

      xsSQL := xsSQL + ' AND C.ZIPID = H.ZIPID(+) '
         + '      AND B_HIS.ZIPID = H_HIS.ZIPID(+) '
         + '      AND C.ZIPID = H_APO.ZIPID(+) '
         + '      AND SUBSTR(C.ZIPID, 1, 4) = I.CIUDID(+) '
         + '      AND SUBSTR(B_HIS.ZIPID, 1, 4) = I_HIS.CIUDID(+) '
         + '      AND SUBSTR(C.ZIPID, 1, 4) = I_APO.CIUDID(+) '
         + '      AND SUBSTR(C.ZIPID, 1, 2) = J.DPTOID(+) '
         + '      AND SUBSTR(B_HIS.ZIPID, 1, 2) = J_HIS.DPTOID(+) '
         + '      AND SUBSTR(C.ZIPID, 1, 2) = J_APO.DPTOID(+) '
         + '   ) '
         + ' ORDER BY FECHA, GESTOR, APE_NOMBRES ';
      End

   Else
      Begin

      If cbGestor.Text <> '' Then
         xsSQLUsuario := ' AND USUARIO = ' + QuotedStr(cbGestor.Text)
      Else
         xsSQLUsuario := '';

      If cbResGestion.Text <> '' Then
         xsSQLResGestion := ' AND IDGESTIONDET = ' + QuotedStr(cbResGestion.Text)
      Else
         xsSQLResGestion := '';

      // no se puede confiar en el campo TIPGES DE LAS TABLAS GES_COB_IND, GES_COB_DOM, GES_COB_IND_HIS, GES_COB_DOM_HIS PORQUE NO TODOS TIENEN CABECERA
      If xsTipGes = '01' Then // GESTION INTERNA
         xsSQLTipGestion := ' AND EXISTS ( SELECT USERID FROM GES_NIV_USU_OTO WHERE USERID = B.USUARIO ) '
      Else
         If xsTipGes = '02' Then // GESTION EXTERNA
            xsSQLTipGestion := ' AND EXISTS ( SELECT IDENTEXT USERID FROM GES_TIP_USU_EXT WHERE IDENTEXT = B.USUARIO ) ';

      Case rgTipBusAso.ItemIndex Of
         0 :
            Begin
               xsSQLAso := ' AND C.ASOAPENOMDNI LIKE ' + QuotedStr(txtBusAso.Text + '%');
            End;
         1 :
            Begin
               xsSQLAso := ' AND C.ASODNI LIKE ' + QuotedStr(txtBusAso.Text + '%');
            End;
         2 :
            Begin
               xsSQLAso := ' AND C.ASOCODMOD LIKE ' + QuotedStr(txtBusAso.Text + '%');
            End;
      End;

      xsSQL := 'SELECT SUPERVISOR, ASODNI, COD_MODULAR, APE_NOMBRES, DIRECCION, REFERENCIA, DEPARTAMENTO, PROVINCIA, DISTRITO, '
         + '          CASE WHEN TELEFONO_GESCOB IS NOT NULL THEN TELEFONO_GESCOB ELSE TELEFONO_APO END TELEFONO, '

// se movió la columna COD_GESTION hasta después de la columna CFC_DES
         + '          GESTOR, TO_CHAR(FECHA,''YYYY-MM-DD'') FECHA, ASOID, '
         + '          CFC_F, CASE WHEN CFC_F = ''0'' THEN ''NOR'' '
         + '                      WHEN CFC_F = ''A'' THEN ''CPP'' '
         + '                      WHEN CFC_F = ''B'' THEN ''DEF'' '
         + '                      WHEN CFC_F = ''C'' THEN ''DUD'' '
         + '                      WHEN CFC_F = ''D'' THEN ''PER'' '
         + '                      ELSE ''SIN CALIFICACION'' '
         + '                  END CFC_DES '

// se agregó y columnas de gestión y resultado
         + '         ,COD_GESTION, '
         + '          DES_GESTION, '
         + '          COD_GES_REALIZADA, '
         + '          DES_GES_REALIZADA, '
         + '          GES_REALIZADA '
// Inicio HPC_201604_GESCOB: En Reportes de Gestiones realizadas añadir Columnas de Compromisos
         + ' ,FECHA_COMPROMISO, MONTO_COMPROMISO, ESTADO '
// Fin    HPC_201604_GESCOB: En Reportes de Gestiones realizadas añadir Columnas de Compromisos

         + '   FROM ( '
         + '   SELECT CASE WHEN B.USUASIG IS NOT NULL THEN B.USUASIG ELSE B_HIS.USUASIG END SUPERVISOR, '
         + '          C.ASODNI, '
         + '          C.ASOCODMOD COD_MODULAR, '
         + '          CASE WHEN B.ASOAPENOM IS NOT NULL THEN B.ASOAPENOM WHEN B_HIS.ASOAPENOM IS NOT NULL THEN B_HIS.ASOAPENOM ELSE C.ASOAPENOMDNI END APE_NOMBRES, '
         + '          C.ASODIR DIRECCION, A.MASDAT REFERENCIA, '
         + '          CASE WHEN H.ZIPDES IS NOT NULL THEN H.ZIPDES WHEN H_HIS.ZIPDES IS NOT NULL THEN H_HIS.ZIPDES ELSE H_APO.ZIPDES END DISTRITO, '
         + '          CASE WHEN I.CIUDDES IS NOT NULL THEN I.CIUDDES WHEN I_HIS.CIUDDES IS NOT NULL THEN I_HIS.CIUDDES ELSE I_APO.CIUDDES END PROVINCIA, '
         + '          CASE WHEN J.DPTODES IS NOT NULL THEN J.DPTODES WHEN J_HIS.DPTODES IS NOT NULL THEN J_HIS.DPTODES ELSE J_APO.DPTODES END DEPARTAMENTO, '
         + '          (SELECT NROTELF FROM GES_TEL_ASO WHERE ASOID = U.ASOID AND ACTIVO = ''S'' AND ROWNUM = 1) TELEFONO_GESCOB, '
         + '          CASE WHEN C.ASOTELF1 IS NOT NULL THEN C.ASOTELF1 ELSE C.ASOTELF2 END TELEFONO_APO, '

// se movió las columnas U1.IDGESTIONDET y COD_GESTION hasta después de la columna CFC_F
         + '          U1.USUARIO GESTOR, U1.FECHA, C.ASOID, '
         + '          CFC.CFC_F '

// se agregó columnas de gestión y resultado
         + '         ,U1.IDGESTION COD_GESTION,                       '
         + '          GESTION.DESCRIPCION DES_GESTION,                   '
         + '          U1.IDGESTIONDET COD_GES_REALIZADA,              '
         + '          GESR.DESCRIPCION DES_GES_REALIZADA,             '
         + '          U1.DETOBS GES_REALIZADA                         '

// Inicio HPC_201604_GESCOB: En Reportes de Gestiones realizadas añadir Columnas de Compromisos
         + ', CPM.FEC_COMPROMISO FECHA_COMPROMISO, CPM.MONCOM MONTO_COMPROMISO, CPM.ESTADO, U1.PERIODO PERIODO '
// Fin    HPC_201604_GESCOB: En Reportes de Gestiones realizadas añadir Columnas de Compromisos
//Inicio HPC_201703_GESCOB
//Mejoras funcionales en el registro de la atención del asociado
         + '     FROM (SELECT ASOID, MAX(FECHA) HREG_ID '
//Fin HPC_201703_GESCOB
         + '             FROM GES_COB_SEG A '
         + '                   WHERE EXISTS '
         + '                   (SELECT ASOID '
         + '                            FROM GES_COB_SEG B '
         + '                           WHERE B.IDGESTION ' + xsIdGestion
         + '                             AND B.FECHA BETWEEN ' + QuotedStr(DateToStr(dtpFechaInicio.Date)) + ' AND ' + QuotedStr(DateToStr(dtpFechaFin.Date));
      xsSQL := xsSQL + xsSQLTipGestion;
      If pcFiltro.ActivePage = tsGestor Then
      Begin
         xsSQL := xsSQL + xsSQLUsuario  + xsSQLResGestion;
      End;

      xsSQL := xsSQL + '              AND B.IDGESTIONDET = A.IDGESTIONDET '
         + '                             AND B.ASOID = A.ASOID '
         + '                             AND B.USUARIO = A.USUARIO '
         + '                             AND B.IDGESTION = A.IDGESTION '
         + '                             AND B.FECHA = A.FECHA) '
         + '                   GROUP BY ASOID '
         + '          ) U, GES_COB_SEG U1, GES_INI_SEG A, ' + xsTabla + ' B, '
         + '          ' + xsTabla + '_HIS B_HIS, APO201 C, APO122 H, APO122 H_HIS, APO122 H_APO '
         + '          , APO123 I, APO123 I_HIS, APO123 I_APO '
         + '          , APO158 J, APO158 J_HIS, APO158 J_APO '
         + '          ,(SELECT ASOID, CFC_F FROM GES000 WHERE PERIODO = ' + QuotedStr(lblPeriodoCartera.Caption) + ')  CFC '

// se agregó columnas de gestión y resultado
         + '          , GES_REF_SEG GESTION  '
         + '          , GES_REF_SEG_DET GESR '

// Inicio HPC_201604_GESCOB: En Reportes de Gestiones realizadas añadir Columnas de Compromisos
         + ' ,(SELECT FEC_COMPROMISO, MONCOM, ESTADO, IDGTN,FEC_CONTACTO, ASOID, PERIODO FROM GES_COB_COMPROMISO WHERE PERIODO = '+QuotedStr(lblPeriodoCartera.Caption)+ ' AND COD_NEG=''02'' AND NVL(ESTADO,''X'')<>''REPROGRAMADO'' ) CPM '
// Fin    HPC_201604_GESCOB: En Reportes de Gestiones realizadas añadir Columnas de Compromisos
//Inicio HPC_201703_GESCOB
//Mejoras funcionales en el registro de la atención del asociado
         + '    WHERE U.ASOID = U1.ASOID '
         + '      AND U.HREG_ID = U1.FECHA '
//Fin HPC_201703_GESCOB
         + '      AND U1.NROGEST = A.NROGEST(+) '
         + '      AND U1.ASOID = A.ASOID(+) '
         + '      AND U1.PERIODO = B.PERIODO(+) '
         + '      AND U1.ASOID = B.ASOID(+) '
         + '      AND U1.PERIODO = B_HIS.PERIODO(+) '
         + '      AND U1.ASOID = B_HIS.ASOID(+) '
         + '      AND U1.ASOID = C.ASOID(+) '
         + '      AND U1.ASOID = CFC.ASOID(+) '

// se agregó columnas de gestión y resultado
         + '      AND U1.IDGESTION = GESTION.IDGTN(+) '
// Inicio HPC_201604_GESCOB: En Reportes de Gestiones realizadas añadir Columnas de Compromisos
         + '      AND U1.IDGESTION = GESR.IDGTN(+) AND U1.IDGESTIONDET = GESR.IDGTNDET(+) '
         + '      AND U1.PERIODO=CPM.PERIODO(+) AND U1.ASOID=CPM.ASOID(+) and U1.FECHA=CPM.FEC_CONTACTO(+) AND U1.IDGESTION=CPM.IDGTN(+) ';
// Fin    HPC_201604_GESCOB: En Reportes de Gestiones realizadas añadir Columnas de Compromisos


      If (pcFiltro.ActivePage = tsAsociado) Then
      Begin
         xsSQL := xsSQL + xsSQLAso;
      End;
      If (pcFiltro.ActivePage = tsUbigeo) Then
      Begin
         If (trim(txtDist.Text) <> '') Then
            xsSQL := xsSQL + ' AND (CASE WHEN B.ZIPID IS NOT NULL THEN B.ZIPID WHEN B_HIS.ZIPID IS NOT NULL THEN B_HIS.ZIPID ELSE C.ZIPID END) = ' + QuotedStr(trim(cboDist.Text))
         Else
            If (trim(txtProv.Text) <> '') Then
               xsSQL := xsSQL + ' AND SUBSTR(CASE WHEN B.ZIPID IS NOT NULL THEN B.ZIPID WHEN B_HIS.ZIPID IS NOT NULL THEN B_HIS.ZIPID ELSE C.ZIPID END,1,4) = ' + QuotedStr(trim(cboProv.Text))
            Else
               If (trim(txtDpto.Text) <> '') Then
                  xsSQL := xsSQL + ' AND SUBSTR(CASE WHEN B.ZIPID IS NOT NULL THEN B.ZIPID WHEN B_HIS.ZIPID IS NOT NULL THEN B_HIS.ZIPID ELSE C.ZIPID END,1,2) = ' + QuotedStr(trim(cboDpto.Text))
      End;
      If (pcFiltro.ActivePage = tsCalificacion) Then
      Begin
         If (trim(cboCalificacion.Text) <> '') Then
            xsSQL := xsSQL + ' AND CFC.CFC_F = ' + QuotedStr(trim(cboCalificacion.Text))
      End;

      xsSQL := xsSQL + ' AND B.ZIPID = H.ZIPID(+) '
         + '      AND B_HIS.ZIPID = H_HIS.ZIPID(+) '
         + '      AND C.ZIPID = H_APO.ZIPID(+) '
         + '      AND SUBSTR(B.ZIPID, 1, 4) = I.CIUDID(+) '
         + '      AND SUBSTR(B_HIS.ZIPID, 1, 4) = I_HIS.CIUDID(+) '
         + '      AND SUBSTR(C.ZIPID, 1, 4) = I_APO.CIUDID(+) '
         + '      AND SUBSTR(B.ZIPID, 1, 2) = J.DPTOID(+) '
         + '      AND SUBSTR(B_HIS.ZIPID, 1, 2) = J_HIS.DPTOID(+) '
         + '      AND SUBSTR(C.ZIPID, 1, 2) = J_APO.DPTOID(+) '
         + '   ) '
         + ' ORDER BY FECHA, GESTOR, APE_NOMBRES ';
      End;   // Cierre Else

   End;


   DM1.cdsQry1.Close;
   DM1.cdsQry1.DataRequest(xsSQL);
   DM1.cdsQry1.Open;

   DM1.cdsQry1.FieldDefs.Items[0].DataType := ftDateTime;
//Inicio HPC_201703_GESCOB
//Mejoras funcionales en el registro de la atención del asociado
   DM1.cdsQry1.FieldDefs.Items[14].DataType := ftString;
   DM1.cdsQry1.FieldDefs.Items[19].DataType := ftDateTime;
//Fin HPC_201703_GESCOB
   lblNroRegistros.Caption := IntToStr(DM1.cdsQry1.RecordCount) + ' Registros';
   dbgPrincipal.DataSource := DM1.dsQry1;
   dbgData.DataSource := DM1.dsQry1;
   ppdbPrincipal.DataSource := DM1.dsQry1;
   btnBuscar.enabled := DM1.cdsQry1.RecordCount > 0;
   btnExportar.enabled := DM1.cdsQry1.RecordCount > 0;
   btnImprimir.enabled := DM1.cdsQry1.RecordCount > 0;

   dbgPrincipal.Selected.Clear;
   dbgPrincipal.Selected.Add('FECHA'#9'12'#9'FECHA');

// Inicio: SPP_201304_GESCOB se agregó la columna hora
   If rgTipoGestionInterna.ItemIndex = 3 Then                       // Plataforma
      Begin
      dbgPrincipal.Selected.Add('HORA'#9'10'#9'HORA');
      End;
// Fin: SPP_201304_GESCOB

   dbgPrincipal.Selected.Add('GESTOR'#9'12'#9'GESTOR');
   dbgPrincipal.Selected.Add('CFC_DES'#9'15'#9'CALIF.' + lblPeriodoCartera.Caption);
   dbgPrincipal.Selected.Add('APE_NOMBRES'#9'45'#9'APELLIDOS Y~NOMBRES');
   dbgPrincipal.Selected.Add('ASODNI'#9'8'#9'D.N.I.');
   dbgPrincipal.Selected.Add('COD_MODULAR'#9'8'#9'COD.~MODULAR');
   dbgPrincipal.Selected.Add('DIRECCION'#9'45'#9'DIRECCION');
   dbgPrincipal.Selected.Add('DEPARTAMENTO'#9'20'#9'DEPARTAMENTO');
   dbgPrincipal.Selected.Add('PROVINCIA'#9'20'#9'PROVINCIA');
   dbgPrincipal.Selected.Add('DISTRITO'#9'20'#9'DISTRITO');
   dbgPrincipal.Selected.Add('TELEFONO'#9'12'#9'TELEFONO');

   If rgTipoGestionInterna.ItemIndex = 3 Then                       // Plataforma
      Begin
// Inicio: SPP_201304_GESCOB las columnas no tienen datos en plataforma
//         dbgPrincipal.Selected.Add('COD_GESTION'#9'15'#9'CODIGO~ATENCION');
//         dbgPrincipal.Selected.Add('DES_GESTION'#9'30'#9'DESCRIPCION~ATENCION');
// Fin: SPP_201304_GESCOB
         dbgPrincipal.Selected.Add('COD_GES_REALIZADA'#9'15'#9'CODIGO~ATENCION');
         dbgPrincipal.Selected.Add('DES_GES_REALIZADA'#9'30'#9'DESCRIPCION~ATENCION');

//Inicio HPC_201703_GESCOB
//Mejoras funcionales en el registro de la atención del asociado
         dbgPrincipal.Selected.Add('ASOTEL'#9'12'#9'TELEFONO~FIJO');
         dbgPrincipal.Selected.Add('ASOCEL'#9'12'#9'CELULAR');
         dbgPrincipal.Selected.Add('ASODIR'#9'45'#9'DIRECCION');
         dbgPrincipal.Selected.Add('ASOCORREO'#9'25'#9'EMAIL');
         dbgPrincipal.Selected.Add('ASOMTOPRO'#9'15'#9'MONTO~PACTADO');
         dbgPrincipal.Selected.Add('ASOFECPRO'#9'10'#9'FECHA~PACTADA');
         dbgPrincipal.Selected.Add('DESMOT'#9'30'#9'MOTIVO~ATRASO');
//Fin HPC_201703_GESCOB
      End
   Else
      Begin
         dbgPrincipal.Selected.Add('COD_GESTION'#9'15'#9'CODIGO~GESTION');
         dbgPrincipal.Selected.Add('DES_GESTION'#9'30'#9'DESCRIPCION~GESTION');
         dbgPrincipal.Selected.Add('COD_GES_REALIZADA'#9'15'#9'CODIGO~REALIZADA');
         dbgPrincipal.Selected.Add('DES_GES_REALIZADA'#9'30'#9'DESCRIPCION~REALIZADA');
      End;

// se eliminó la columna referencia
//         dbgPrincipal.Selected.Add('REFERENCIA'#9'45'#9'REFERENCIA');

   dbgPrincipal.Selected.Add('GES_REALIZADA'#9'45'#9'GESTION~REALIZADA');
   dbgPrincipal.Selected.Add('SUPERVISOR'#9'12'#9'SUPERVISOR');

// Inicio HPC_201604_GESCOB: En Reportes de Gestiones realizadas añadir Columnas de Compromisos
   If rgTipoGestionInterna.ItemIndex <=2 Then                       // Plataforma
   Begin
     dbgPrincipal.Selected.Add('FECHA_COMPROMISO'#9'12'#9'FECHA_COMPROMISO');
     dbgPrincipal.Selected.Add('MONTO_COMPROMISO'#9'10'#9'MONTO_COMPROMISO');
     dbgPrincipal.Selected.Add('ESTADO'#9'10'#9'ESTADO');
     dbgPrincipal.ApplySelected;
     TNumericField(DM1.cdsQry1.fieldbyname('MONTO_COMPROMISO')).DisplayFormat := '###,###.#0';
   end;
   Screen.Cursor := crDefault;
// Fin    HPC_201604_GESCOB: En Reportes de Gestiones realizadas añadir Columnas de Compromisos

End;

//******************************************************************************
// Nombre : fn_Limpia_Datos
// Descripcion : Limpia los controles para los nuevo filtros
//******************************************************************************

Procedure TFRepGesRealizada.fn_Limpia_Datos();
Begin
   fn_Carga_Grid(true);
End;

//******************************************************************************
// Nombre : rgTipoGestionClick
// Descripcion : Evento que se dispara cuando se selcciona un Tipo de Gestion
//               llena los controles con los valores dependiendo
//               del Tipo de Gestion Seleccionada.
//               Tambien llena los mensajes que se visualizaran en el reporte.
//******************************************************************************
Procedure TFRepGesRealizada.rgTipoGestionInternaClick(Sender : TObject);
Var
   xsSQL : String;
   xsMsg : String;
Begin
   fn_Limpia_Datos();

   If pcTipoGestor.ActivePage = tsGestionInterna Then
   Begin

      if rgTipoGestionInterna.ItemIndex = -1 then Exit;

      Case rgTipoGestionInterna.ItemIndex Of
         0 :
            Begin
               pplTitulo.Text := 'TODAS LAS GESTIONES INTERNAS';
               xsMsg := 'Declaro que los datos consignados en la presente HOJA DE RESULTADOS DE GESTION INTERNA'
                  + ' se ajustan a la verdad, por lo que asumo la responsabilidad TOTAL en caso los'
                  + ' datos sean FALSOS y asumo las sanciones correspondientes para estos casos.'
                  + ' Firmo la presente en señal de conformidad';


               xsSQL := 'SELECT DISTINCT A.USUARIO USERID, B.USERNOM '
                  + '    FROM GES_COB_SEG A INNER JOIN GES_NIV_USU_OTO B ON A.USUARIO = B.USERID'
                  + '    WHERE A.FECHA BETWEEN ' + QuotedStr(DateToStr(dtpFechaInicio.Date)) + ' AND ' + QuotedStr(DateToStr(dtpFechaFin.Date));

               xsTipGes := '01';
            End;
         1 :
            Begin
               pplTitulo.Text := 'GESTION INTERNA - TELEFONICA';
               xsMsg := 'Declaro que los datos consignados en la presente HOJA DE RESULTADOS DE GESTION'
                  + ' INTERNA - TELEFONICA se ajustan a la verdad, por lo que asumo la responsabilidad TOTAL en caso los'
                  + ' datos sean FALSOS y asumo las sanciones correspondientes para estos casos.'
                  + ' Firmo la presente en señal de conformidad';



               xsSQL := 'SELECT DISTINCT A.USUARIO USERID, B.USERNOM '
                  + '    FROM GES_COB_SEG A INNER JOIN GES_NIV_USU_OTO B ON A.USUARIO = B.USERID'
                  + '    WHERE A.FECHA BETWEEN ' + QuotedStr(DateToStr(dtpFechaInicio.Date)) + ' AND ' + QuotedStr(DateToStr(dtpFechaFin.Date))
                  + '          AND A.IDGESTION = ''05'' ';

               xsTipGes := '01';
            End;
         2 :
            Begin
               pplTitulo.Text := 'GESTION INTERNA - DOMICILIARIA';
               xsMsg := 'Declaro que los datos consignados en la presente HOJA DE RESULTADOS DE GESTION'
                  + ' INTERNA - DOMICILIARIA se ajustan a la verdad, por lo que asumo la responsabilidad TOTAL en caso los'
                  + ' datos sean FALSOS y asumo las sanciones correspondientes para estos casos.'
                  + ' Firmo la presente en señal de conformidad';


               xsSQL := 'SELECT DISTINCT A.USUARIO USERID, B.USERNOM '
                  + '    FROM GES_COB_SEG A INNER JOIN GES_NIV_USU_OTO B ON A.USUARIO = B.USERID '
                  + '    WHERE A.FECHA BETWEEN ' + QuotedStr(DateToStr(dtpFechaInicio.Date)) + ' AND ' + QuotedStr(DateToStr(dtpFechaFin.Date))
                  + '          AND A.IDGESTION = ''03'' ';

               xsTipGes := '01';
            End;
         3 :
            Begin
               pplTitulo.Text := 'GESTION INTERNA - PLATAFORMA / VENTANILLA';
               xsMsg := 'Declaro que los datos consignados en la presente HOJA DE RESULTADOS DE GESTION'
                  + ' INTERNA - PLATAFORMA / VENTANILLA se ajustan a la verdad, por lo que asumo la responsabilidad TOTAL en caso los'
                  + ' datos sean FALSOS y asumo las sanciones correspondientes para estos casos.'
                  + ' Firmo la presente en señal de conformidad';


               xsSQL := 'SELECT DISTINCT A.USUARIO USERID, B.USERNOM '
                  + '    FROM COB_ATE_ASO A INNER JOIN TGE006 B ON A.USUARIO = B.USERID '
                  + '    WHERE A.FREG BETWEEN ' + QuotedStr(DateToStr(dtpFechaInicio.Date)) + ' AND ' + QuotedStr(DateToStr(dtpFechaFin.Date));

               xsTipGes := '01';
            End;
      End;
   End
   Else
      If pcTipoGestor.ActivePage = tsGestionExterna Then
      Begin
         Case rgTipoGestionExterna.ItemIndex Of
            0 :
               Begin
                  pplTitulo.Text := 'TODAS LAS GESTIONES EXTERNAS';
                  xsMsg := 'Declaro que los datos consignados en la presente HOJA DE RESULTADOS DE GESTION EXTERNA'
                     + ' se ajustan a la verdad, por lo que asumo la responsabilidad TOTAL en caso los'
                     + ' datos sean FALSOS y asumo las sanciones correspondientes para estos casos.'
                     + ' Firmo la presente en señal de conformidad';
                  xsSQL := 'SELECT IDENTEXT USERID,DESENTEXT USERNOM '
                     + '      FROM GES_TIP_USU_EXT '
                     + '     WHERE REGACT=''S'' '
                     + '     ORDER BY USERID';
                  xsTipGes := '02';
               End;
            1 :
               Begin
                  pplTitulo.Text := 'GESTION EXTERNA - TELEFONICA';
                  xsMsg := 'Declaro que los datos consignados en la presente HOJA DE RESULTADOS DE GESTION'
                     + ' EXTERNA - TELEFONICA se ajustan a la verdad, por lo que asumo la responsabilidad TOTAL en caso los'
                     + ' datos sean FALSOS y asumo las sanciones correspondientes para estos casos.'
                     + ' Firmo la presente en señal de conformidad';

                  xsSQL := 'SELECT IDENTEXT USERID,DESENTEXT USERNOM '
                     + '     FROM GES_TIP_USU_EXT '
                     + '    WHERE REGACT=''S'' '
                     + '      AND TIPACT = ''01'' '
                     + '    ORDER BY USERID ';
                  xsTipGes := '02';
               End;
            2 :
               Begin
                  pplTitulo.Text := 'GESTION EXTERNA - DOMICILIARIA';
                  xsMsg := 'Declaro que los datos consignados en la presente HOJA DE RESULTADOS DE GESTION'
                     + ' EXTERNA - DOMICILIARIA se ajustan a la verdad, por lo que asumo la responsabilidad TOTAL en caso los'
                     + ' datos sean FALSOS y asumo las sanciones correspondientes para estos casos.'
                     + ' Firmo la presente en señal de conformidad';

                  xsSQL := 'SELECT IDENTEXT USERID,DESENTEXT USERNOM '
                     + '     FROM GES_TIP_USU_EXT '
                     + '    WHERE REGACT=''S'' '
                     + '      AND TIPACT = ''02'' '
                     + '    ORDER BY USERID ';
                  xsTipGes := '02';
               End;
         End;
      End;
   Screen.Cursor := crHourGlass;

   DM1.cdsQry6.Close;
   DM1.cdsQry6.DataRequest(xsSQL);
   DM1.cdsQry6.Open;
   cbGestor.LookupTable := DM1.cdsQry6;
   ppmMensaje.Lines.Clear;
   ppmMensaje.Lines.Add(xsMsg);

   If pcTipoGestor.ActivePage = tsGestionInterna Then
   Begin
      Case rgTipoGestionInterna.ItemIndex Of
         0 :                                                                  // INTERNA - TODOS
            Begin
               xsSQL := 'SELECT IDGTN, IDGTNDET, DESCRIPCION '
                  + '     FROM GES_REF_SEG_DET '

                  + '    WHERE IDGTN IN (''02'', ''03'', ''05'') '

                  + '    ORDER BY IDGTNDET';
               xsTabla := 'GES_COB_IND';

               xsIdGestion := ' IN (''02'', ''03'', ''05'') ';

            End;
         1 :                                                                  // INTERNA - TELEFONICA
            Begin
               xsSQL := 'SELECT IDGTN, IDGTNDET, DESCRIPCION '
                  + '     FROM GES_REF_SEG_DET '

                  + '    WHERE IDGTN=''05'' '

                  + '    ORDER BY IDGTNDET';
               xsTabla := 'GES_COB_IND';

               xsIdGestion := ' = ''05'' ';

            End;
         2 :                                                                  // INTERNA - DOMICILIARIA
            Begin
               xsSQL := 'SELECT IDGTN, IDGTNDET, DESCRIPCION '
                  + '     FROM GES_REF_SEG_DET '
                  + '    WHERE IDGTN=''03'' '
                  + '    ORDER BY IDGTNDET';
               xsTabla := 'GES_COB_DOM';
               xsIdGestion := ' = ''03'' ';
            End;
         3 :                                                                  // INTERNA - PLATAFORMA
            Begin
               xsSQL := 'SELECT IDGTN, IDGTNDET, DESCRIPCION '
                  + '     FROM GES_REF_SEG_DET '
                  + '    WHERE IDGTN=''02'' '
                  + '    ORDER BY IDGTNDET';
               xsTabla := 'GES_COB_DOM'; // FALTA IMPLEMENTAR EN LOS NUEVOS PROYECTOS   -- otra tabla ???
               xsIdGestion := ' = ''02'' ';
            End;
      End;
   End
   Else
      If pcTipoGestor.ActivePage = tsGestionExterna Then
      Begin
         Case rgTipoGestionExterna.ItemIndex Of
            0 :
               Begin
                  xsSQL := 'SELECT IDGTN, IDGTNDET, DESCRIPCION '
                     + '      FROM GES_REF_SEG_DET '
                     + '     WHERE IDGTN  IN (''01'', ''04'') '
                     + '     ORDER BY IDGTNDET';
                  xsTabla := 'GES_COB_IND';
                  xsIdGestion := ' IN (''01'', ''04'') ';
               End;
            1 :
               Begin
                  xsSQL := 'SELECT IDGTN, IDGTNDET, DESCRIPCION '
                     + '     FROM GES_REF_SEG_DET '
                     + '    WHERE IDGTN=''01'' '
                     + '    ORDER BY IDGTNDET';
                  xsTabla := 'GES_COB_IND';
                  xsIdGestion := ' = ''01'' ';
               End;
            2 :
               Begin
                  xsSQL := 'SELECT IDGTN, IDGTNDET, DESCRIPCION '
                     + '     FROM GES_REF_SEG_DET '
                     + '    WHERE IDGTN=''04'' '
                     + '    ORDER BY IDGTNDET';
                  xsTabla := 'GES_COB_DOM';
                  xsIdGestion := ' = ''04'' ';
               End;
         End;

      End;


   DM1.cdsQry5.Close;
   DM1.cdsQry5.DataRequest(xsSQL);
   DM1.cdsQry5.Open;
   cbResGestion.LookupTable := DM1.cdsQry5;

   Screen.Cursor := crDefault;

End;

//******************************************************************************
// Nombre : dtpInicioChange
// Descripcion : Evento que se dispara cuando se cambia la fecha de inicio del
//               filtro.
//               Limpia los controles
//******************************************************************************

Procedure TFRepGesRealizada.dtpFechaInicioChange(Sender : TObject);
Begin
   rgTipoGestionInterna.ItemIndex := -1;
   fn_Limpia_Datos();
End;

//******************************************************************************
// Nombre : cbGestorChange
// Descripcion : Evento que se dispara cuando se selecciona otro gestor del filtro.
//               Limpia los controles.
//               Visualiza el nombre completo del Gestor Seleccionado
//******************************************************************************

Procedure TFRepGesRealizada.cbGestorChange(Sender : TObject);
Begin
   fn_Limpia_Datos();
   If Length(cbGestor.Text) = 0 Then
      edtGestor.Text := '- TODOS -'
   Else
      If DM1.cdsQry6.Locate('USERID', VarArrayof([cbGestor.Text]), []) Then
         edtGestor.Text := DM1.cdsQry6.fieldbyname('USERNOM').AsString
      Else
      Begin
         Beep;
         edtGestor.Text := '';
      End;
End;

//******************************************************************************
// Nombre : cbResGestionChange
// Descripcion : Evento que se dispara cuando se selecciona otro resultado de gestion del filtro.
//               Limpia los controles.
//               Visualiza la descripcion completa del Resultado de la Gestion
//******************************************************************************

Procedure TFRepGesRealizada.cbResGestionChange(Sender : TObject);
Begin
   fn_Limpia_Datos();

   If Length(cbResGestion.Text) = 0 Then
      edtResGestion.Text := '- TODOS -'
   Else
      If DM1.cdsQry5.Locate('IDGTNDET', VarArrayof([cbResGestion.Text]), []) Then
         edtResGestion.Text := DM1.cdsQry5.fieldbyname('DESCRIPCION').AsString
      Else
      Begin
         Beep;
         edtResGestion.Text := '';
      End;
End;

//******************************************************************************
// Nombre : btnFiltrarClick
// Descripcion : Valida los datos ingresados para el filtro
//               carga los datos en el grid
//******************************************************************************
Procedure TFRepGesRealizada.btnFiltrarClick(Sender : TObject);
Begin

    If (dm1.verificahorario = False) And (dm1.diferenciafechas(dtpFechaInicio.Date, dtpFechaFin.Date) > 30) Then
    Begin
      MessageDlg('Horario no permitido para la ejecución del proceso, en el intervalo de fechas', mtError, [mbOk], 0);
      Exit;
    End;


   If (((pcTipoGestor.ActivePage = tsGestionInterna) And (rgTipoGestionInterna.ItemIndex < 0)) Or
       ((pcTipoGestor.ActivePage = tsGestionExterna) And (rgTipoGestionExterna.ItemIndex < 0))) Then
      Begin
         MessageDlg('Seleccione un Tipo de Gestión', mtWarning, [mbOk], 0);
         exit;
      End;

   If pcFiltro.ActivePage = tsGestor Then
   Begin
      If dtpFechaInicio.Date > dtpFechaFin.Date Then
      Begin
         MessageDlg('La Fecha de Inicio no debe Ser mayor a la Fecha de Fin', mtWarning, [mbOk], 0);
         exit;
      End;
   End
   Else
      If pcFiltro.ActivePage = tsAsociado Then
      Begin
         If (TRIM(txtBusAso.Text) = '') Then
         Begin
            Case rgTipBusAso.ItemIndex Of
               0 :
                  Begin
                     MessageDlg('Ingrese el Nombre del Asociado', mtWarning, [mbOk], 0);
                  End;
               1 :
                  Begin
                     MessageDlg('Ingrese el D.N.I. del Asociado', mtWarning, [mbOk], 0);
                  End;
               2 :
                  Begin
                     MessageDlg('Ingrese el Codigo Modular del Asociado', mtWarning, [mbOk], 0);
                  End;
            End;
            txtBusAso.SetFocus;
            exit;
         End;
      End
      Else
         If pcFiltro.ActivePage = tsUbigeo Then
         Begin
         // no hay condiciones para el ubigeo
         End;

   fn_Carga_Grid(false);
End;

//******************************************************************************
// Nombre : btnExportarClick
// Descripcion : Exporta los datos a una hoja de excel
//               la extesion del archivo en excel(xls/xlsx), depedende de la version
//               de office que tenga instalado el cliente que ejecuta esta opcion
//******************************************************************************

Procedure TFRepGesRealizada.btnExportarClick(Sender : TObject);
Begin

   Try
      DM1.HojaExcel('GES_REALIZADA', DM1.dsQry1, dbgData);
   Except
      On Ex : Exception Do
         MessageDlg(PChar(Ex.Message), mtError, [mbOk], 0);
   End;
End;

//******************************************************************************
// Nombre : btnSalirClick
// Descripcion : Cerrar la forma
//******************************************************************************

Procedure TFRepGesRealizada.btnSalirClick(Sender : TObject);
Begin
   Close;
End;

//******************************************************************************
// Nombre : btnImprimirClick
// Descripcion : Visualizar el reporte en pantalla antes de imprimir
//******************************************************************************

Procedure TFRepGesRealizada.btnImprimirClick(Sender : TObject);
Begin
   ppLblFechaDato.Text := DM1.FechaSys('DD/MM/YYYY HH12:MI:SS AM');
   ppLblUsuario.Text := DM1.wUsuario;
   pprPrincipal.Print;
   //ppdPrincipal.Show; // para editar en tiempo de ejecucion
End;

//******************************************************************************
// Nombre : FormKeyPress
// Descripcion : capturar la tecla Enter para pasar de un control a otro
//******************************************************************************

Procedure TFRepGesRealizada.FormKeyPress(Sender : TObject; Var Key : Char);
Begin
   If key = #13 Then
   Begin
      key := #0;
      perform(CM_DialogKey, VK_TAB, 0);
   End;
End;

//******************************************************************************
// Nombre : FormClose
// Descripcion : Cerrar la forma.
//               Cierra los CDS que fueron abiertos en esta forma
//******************************************************************************
Procedure TFRepGesRealizada.FormClose(Sender : TObject;
   Var Action : TCloseAction);
Begin
   DM1.limpiarTodosCDS();
End;

//******************************************************************************
// Nombre : txtBuscarChange
// Descripcion : Buscar asociado en clientdataset
//******************************************************************************
Procedure TFRepGesRealizada.txtBuscarChange(Sender : TObject);
Begin
   If Length(Trim(txtBuscar.Text)) > 0 Then
      DM1.cdsQry1.Locate('APE_NOMBRES', VarArrayOf([TRIM(txtBuscar.Text)]), [loPartialKey]);
End;

//******************************************************************************
// Nombre : txtBuscarKeyDown
// Descripcion : captura tecla presionada
//******************************************************************************
Procedure TFRepGesRealizada.txtBuscarKeyDown(Sender : TObject;
   Var Key : Word; Shift : TShiftState);
Begin
   If Key = 13 Then
   Begin
      btnBuscarClick(btnBuscar);
      dbgPrincipal.SetFocus;
   End;
End;

//******************************************************************************
// Nombre : txtBuscarExit
// Descripcion : pierde el foco la caja de texto buscar
//******************************************************************************
Procedure TFRepGesRealizada.txtBuscarExit(Sender : TObject);
Begin
   btnBuscarClick(btnBuscar);
End;

//******************************************************************************
// Nombre : btnBuscarClick
// Descripcion : muestar u oculta el panel de busca
//******************************************************************************
Procedure TFRepGesRealizada.btnBuscarClick(Sender : TObject);
Begin
   If dbgPrincipal.DataSource.DataSet.RecordCount = 0 Then Exit;
   txtBuscar.Text := '';
   If Not gbBusAso.Visible Then
   Begin
      gbBusAso.Visible := True;
      txtBuscar.SetFocus;
   End
   Else
      gbBusAso.Visible := False;
End;

//******************************************************************************
// Nombre : rgTipBusAsoClick
// Descripcion : cambia el tipo de busqueda de asociados
//******************************************************************************
Procedure TFRepGesRealizada.rgTipBusAsoClick(Sender : TObject);
Begin
   fn_Limpia_Datos();
End;

//******************************************************************************
// Nombre : pcFiltroChange
// Descripcion : cambia el tipo filtro en la busqueda de gestiones
//******************************************************************************
Procedure TFRepGesRealizada.pcFiltroChange(Sender : TObject);
Begin
   fn_Limpia_Datos();
End;

//******************************************************************************
// Nombre : txtBusAsoChange
// Descripcion : texto ingresado en la busqueda de asociados
//******************************************************************************
Procedure TFRepGesRealizada.txtBusAsoChange(Sender : TObject);
Begin
   fn_Limpia_Datos();
End;

//******************************************************************************
// Nombre : dbgPrincipalDblClick
// Descripcion : invoca al formuladio detalle
//******************************************************************************
Procedure TFRepGesRealizada.dbgPrincipalDblClick(Sender : TObject);
Begin
   If DM1.cdsQry1.RecordCount > 0 Then
   Begin
      Try
         FRepGesRealizadaDet := TFRepGesRealizadaDet.Create(self);
         FRepGesRealizadaDet.ShowModal;
      Finally
         FRepGesRealizadaDet.Free;
      End;
   End;
End;

//******************************************************************************
// Nombre : cboDptoExit
// Descripcion : muestra el datelle del departamento seleccionados
//******************************************************************************
Procedure TFRepGesRealizada.cboDptoExit(Sender : TObject);
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
// Descripcion : muestra el datelle de la provincia seleccionada
//******************************************************************************
Procedure TFRepGesRealizada.cboProvExit(Sender : TObject);
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
// Descripcion : muestra el datelle de la provincia seleccionada
//******************************************************************************
Procedure TFRepGesRealizada.cboDistExit(Sender : TObject);
Begin
   If DM1.cdsDist.Locate('ZIPID', VarArrayof([cboDist.Text]), []) Then
      txtDist.Text := DM1.cdsDist.fieldbyname('ZIPDES').AsString
   Else
      txtDist.Text := '';
   fn_Limpia_Datos();
End;

//******************************************************************************
// Nombre : pcTipoGestorChange
// Descripcion : selecciona el tipo de gestion a filtrar
//******************************************************************************
Procedure TFRepGesRealizada.pcTipoGestorChange(Sender : TObject);
Begin
   If pcTipoGestor.ActivePage = tsGestionInterna Then
   Begin
      rgTipoGestionInternaClick(rgTipoGestionInterna);
   End
   Else
      If pcTipoGestor.ActivePage = tsGestionExterna Then
      Begin
         rgTipoGestionInternaClick(rgTipoGestionExterna);
      End
End;

//******************************************************************************
// Nombre : cboCalificacionChange
// Descripcion : Muestra el datalle del Tipo de Gestion Seleccionada
//******************************************************************************
Procedure TFRepGesRealizada.cboCalificacionChange(Sender : TObject);
Begin
   fn_Limpia_Datos();

   If Length(cboCalificacion.Text) = 0 Then
      edtCalificacion.Text := '- TODOS -'
   Else
      If DM1.cdsQry7.Locate('RESUMEID', VarArrayof([cboCalificacion.Text]), []) Then
         edtCalificacion.Text := DM1.cdsQry7.fieldbyname('RESUMEDES').AsString
      Else
      Begin
         Beep;
         edtCalificacion.Text := '';
      End;
End;
//Fin: DPP_201205_GESCOB
End.

