// Inicio Uso Estándares: 01/08/2011
// Unidad : Gestión de Cobranzas
// Formulario : FRepGesRealizadaDet
// Fecha de Creación :
// Autor : Equipo de Sistemas
// Objetivo : Detalle de Gestiones Realizadas
// Actualizaciones:
// HPC_201119_GESCOB 26/09/2011 Acuerdo de Atencion 2011-02-V2.0
// HPC_201303_GESCOB : F1 06/05/2013 Se agregó el movimiento de las atenciones de plataforma. Se agregó nuevas columnas
// SPP_201303_GESCOB : Se realiza el pase a producción a partir del HPC_201303_GESCOB
// HPC_201703_GESCOB : Mejoras funcionales en el registro de la atención del asociado

Unit GES501;

Interface

Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, Buttons, ExtCtrls, Grids, Wwdbigrd, Wwdbgrid, DBCtrls,
   DBGrids, ppDB, ppDBPipe, ppParameter, ppRegion, ppCtrls, ppBands,
   ppReport, ppStrtch, ppSubRpt, ppVar, ppPrnabl, ppClass, ppCache,
   ppRelatv, ppProd, ppComm, ppEndUsr, wwExport, shellapi;

Type
   TFRepGesRealizadaDet = Class(TForm)
      dbgPrincipal : TwwDBGrid;
      pnlControles : TPanel;
      lblNroRegistros : TLabel;
      btnExportar : TBitBtn;
      btnImprimir : TBitBtn;
      btnSalir : TBitBtn;
      gbFiltro : TGroupBox;
      Label1 : TLabel;
      lblAsociado : TDBText;
      Label2 : TLabel;
      Label3 : TLabel;
      lblFechaInicio : TLabel;
      lblFechaFin : TLabel;
      PPD1 : TppDesigner;
      RpFichaGes : TppReport;
      ppHeaderBand41 : TppHeaderBand;
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
      ppLabel2 : TppLabel;
      ppLabel3 : TppLabel;
      ppLabel4 : TppLabel;
      ppLabel8 : TppLabel;
      ppLabel9 : TppLabel;
      ppLabel10 : TppLabel;
      ppLabel11 : TppLabel;
      ppLabel12 : TppLabel;
      ppLabel13 : TppLabel;
      ppLabel14 : TppLabel;
      ppLabel15 : TppLabel;
      ppLabel16 : TppLabel;
      ppLabel18 : TppLabel;
      ppLabel19 : TppLabel;
      ppLabel20 : TppLabel;
      ppLabel21 : TppLabel;
      ppLabel22 : TppLabel;
      ppLabel23 : TppLabel;
      ppLabel24 : TppLabel;
      ppLabel25 : TppLabel;
      ppLabel26 : TppLabel;
      pplblCodMod : TppLabel;
      pplblNomGen : TppLabel;
      ppLblDni : TppLabel;
      ppLblOriOto : TppLabel;
      ppLblAsodir : TppLabel;
      ppLblTelefono : TppLabel;
      ppLblTipAso : TppLabel;
      ppLblCtaAho : TppLabel;
      ppLblUses : TppLabel;
      ppLabel27 : TppLabel;
      ppLabel28 : TppLabel;
      pplDpto : TppLabel;
      ppLabel33 : TppLabel;
      ppLabel34 : TppLabel;
      pplProv : TppLabel;
      ppLabel32 : TppLabel;
      ppLabel36 : TppLabel;
      pplDist : TppLabel;
      ppDetailBand44 : TppDetailBand;
      ppShape8 : TppShape;
      ppShape3 : TppShape;
      ppShape2 : TppShape;
      ppShape1 : TppShape;
      ppDBText340 : TppDBText;
      ppDBText342 : TppDBText;
      ppDBText343 : TppDBText;
      ppDBText1 : TppDBText;
      ppDBText2 : TppDBText;
      ppFooterBand36 : TppFooterBand;
      ppSummaryBand41 : TppSummaryBand;
      ppSubReport1 : TppSubReport;
      ppChildReport1 : TppChildReport;
      ppTitleBand1 : TppTitleBand;
      ppShape10 : TppShape;
      ppLabel17 : TppLabel;
      ppDetailBand1 : TppDetailBand;
      ppShape9 : TppShape;
      ppDBText3 : TppDBText;
      ppDBText4 : TppDBText;
      ppDBText5 : TppDBText;
      ppDBText6 : TppDBText;
      ppDBText7 : TppDBText;
      ppLine1 : TppLine;
      ppLine2 : TppLine;
      ppLine3 : TppLine;
      ppSummaryBand1 : TppSummaryBand;
      ppRegion1 : TppRegion;
      ppLblUser : TppLabel;
      ppParameterList1 : TppParameterList;
      DBFichaGes : TppDBPipeline;
      DBSitReclamo : TppDBPipeline;
      dbgData : TDBGrid;
      ppShape7 : TppShape;
      ppLabel1 : TppLabel;
      ppLabel5 : TppLabel;
      ppLabel6 : TppLabel;
      Procedure FormCreate(Sender : TObject);
      Procedure btnSalirClick(Sender : TObject);
      Procedure btnExportarClick(Sender : TObject);
      Procedure btnImprimirClick(Sender : TObject);
   Private
    { Private declarations }
   Public
    { Public declarations }
   End;

Var
   FRepGesRealizadaDet : TFRepGesRealizadaDet;

Implementation

Uses GESDM1, GES500, GES203a;

{$R *.dfm}

//******************************************************************************
// Nombre : FormCreate
// Descripcion : cargar gestiones realizadas
//******************************************************************************
Procedure TFRepGesRealizadaDet.FormCreate(Sender : TObject);
Var
   xsSQL : String;
Begin
   Screen.Cursor := crHourGlass;
   lblAsociado.DataSource := DM1.dsQry1;
   lblAsociado.DataField := 'APE_NOMBRES';
   lblFechaInicio.Caption := DateToStr(FRepGesRealizada.dtpFechaInicio.Date);
   lblFechaFin.Caption := DateToStr(FRepGesRealizada.dtpFechaFin.Date);



// Inicio: SPP_201303_GESCOB - Se agregó el movimiento de las atenciones de plataforma. Se hizo cambio toda la consulta
//   xsSQL := ' SELECT GES_COB_SEG.FECHA, GES_REF_SEG.DESCRIPCION TIP_GESTION, '
//      + '            IDGESTIONDET COD_GESTION, GES_COB_SEG.USUARIO GESTOR, '
//      + '            GES_REF_SEG_DET.DESCRIPCION RES_GESTION, '
//      + '            GES_COB_SEG.DETOBS '
//      + '       FROM GES_COB_SEG, GES_REF_SEG, GES_REF_SEG_DET '
//      + '      WHERE GES_COB_SEG.IDGESTION = GES_REF_SEG.IDGTN '
//      + '        AND GES_COB_SEG.IDGESTION = GES_REF_SEG_DET.IDGTN '
//      + '        AND GES_COB_SEG.IDGESTIONDET = GES_REF_SEG_DET.IDGTNDET '
//      + '        AND ASOID = ' + QuotedStr(DM1.cdsQry1.FieldByName('ASOID').AsString)
//      + '        AND GES_COB_SEG.FECHA BETWEEN ' + QuotedStr(DateToStr(FRepGesRealizada.dtpFechaInicio.Date)) + ' AND ' + QuotedStr(DateToStr(FRepGesRealizada.dtpFechaFin.Date))
//      + '        AND NOT (GES_COB_SEG.IDGESTIONDET = ''312'' AND IDCARTA IS NOT NULL) '
//      + '      ORDER BY FECHA DESC, ORDEN DESC ';

// Gestión Teléfonica y Domiciliaria
    xsSQL := ' SELECT                                                 '
           + '    GES_COB_SEG.                FECHA,                  '
           + '    GES_REF_SEG.DESCRIPCION     TIP_GESTION,            '
           + '    IDGESTIONDET                COD_RES_GESTION,        '
           + '    GES_REF_SEG_DET.DESCRIPCION DES_RES_GESTION,        '
           + '    GES_COB_SEG.DETOBS,                                 '
           + '    GES_COB_SEG.ORDEN,                                  '
           + '    GES_COB_SEG.USUARIO         GESTOR,                 '
           + '    (CASE WHEN GES_NIV_USU_OTO.USERNOM IS NULL THEN GES_TIP_USU_EXT.DESENTEXT ELSE GES_NIV_USU_OTO.USERNOM END ) NOMBRE_GESTOR '
           + ' FROM                                                   '
           + '    GES_COB_SEG,                                        '
           + '    GES_REF_SEG,                                        '
           + '    GES_REF_SEG_DET,                                    '
           + '    GES_NIV_USU_OTO,                                    '
           + '    GES_TIP_USU_EXT                                     '
           + ' WHERE                                                  '
           + '    GES_COB_SEG.IDGESTION = GES_REF_SEG.IDGTN(+)        '
           + '    AND GES_COB_SEG.IDGESTION = GES_REF_SEG_DET.IDGTN(+)            '
           + '    AND GES_COB_SEG.IDGESTIONDET = GES_REF_SEG_DET.IDGTNDET(+)      '
           + '    AND ASOID = ' + QuotedStr(DM1.cdsQry1.FieldByName('ASOID').AsString)
           + '    AND GES_COB_SEG.FECHA BETWEEN ' + QuotedStr(DateToStr(FRepGesRealizada.dtpFechaInicio.Date)) + ' AND ' + QuotedStr(DateToStr(FRepGesRealizada.dtpFechaFin.Date))
           + '    AND NOT (GES_COB_SEG.IDGESTIONDET = ''312'' AND IDCARTA IS NOT NULL)     '
           + '    AND GES_COB_SEG.USUARIO = GES_NIV_USU_OTO.USERID(+)                    '
           + '    AND GES_COB_SEG.USUARIO = GES_TIP_USU_EXT.IDENTEXT(+)                  '

           + '    UNION ALL                                                              '

// Gestión Domiciliaria
           + ' SELECT                                                         '
           + '    TO_DATE(A.HREG)  FECHA,                                     '
           + '    D.DESCRIPCION    TIP_GESTION,                               '
           + '    A.CODATE         COD_RES_GESTION,                           '
           + '    B.DESCRIPCION    DES_RES_GESTION,                           '
           + '    A.OBSATE         DETOBS,                                    '
           + '    ''999''          ORDEN,                                     '
           + '    A.USUARIO        GESTOR,                                    '
           + '    C.USERNOM        NOMBRE_GESTOR                              '
           + ' FROM                                                           '
           + '    COB_ATE_ASO A,                                              '
           + '    GES_REF_SEG_DET B,                                          '
           + '    TGE006 C,                                                   '
           + '    GES_REF_SEG D                                               '
           + ' WHERE                                                          '
           + '    A.ASOID = ' + QuotedStr(DM1.cdsQry1.FieldByName('ASOID').AsString)
//Inicio HPC_201703_GESCOB
//Mejoras funcionales en el registro de la atención del asociado
           + '    AND A.FREG BETWEEN ' + QuotedStr(DateToStr(FRepGesRealizada.dtpFechaInicio.Date)) + ' AND ' + QuotedStr(DateToStr(FRepGesRealizada.dtpFechaFin.Date))
//Fin HPC_201703_GESCOB
           + '    AND A.CODATE = B.IDGTNDET(+)                                '
           + '    AND A.USUARIO = C.USERID(+)                                 '
           + '    AND B.IDGTN = D.IDGTN(+)                                    '
           + ' ORDER                                                          '
           + '    BY FECHA DESC, ORDEN DESC                                   ';
// Fin: SPP_201303_GESCOB


   DM1.cdsQry2.Close;
   DM1.cdsQry2.DataRequest(xsSQL);
   DM1.cdsQry2.Open;
   dbgPrincipal.DataSource := DM1.dsQry2;
   lblNroRegistros.Caption := IntToStr(DM1.cdsQry2.RecordCount) + ' Registros';

// Inicio: SPP_201303_GESCOB - Se agregó columnas: tipo y descripción gestión y descripción resultado
   dbgPrincipal.Selected.Clear;
   dbgPrincipal.Selected.Add('FECHA'#9'12'#9'FECHA');
   dbgPrincipal.Selected.Add('TIP_GESTION'#9'22'#9'TIPO GESTION');
   dbgPrincipal.Selected.Add('COD_RES_GESTION'#9'12'#9'COD.RESULTADO~GESTION');
   dbgPrincipal.Selected.Add('DES_RES_GESTION'#9'40'#9'DES.RESULTADO~GESTION');
   dbgPrincipal.Selected.Add('GESTOR'#9'12'#9'GESTOR');
   dbgPrincipal.Selected.Add('NOMBRE_GESTOR'#9'50'#9'NOMBRE GESTOR');
   dbgPrincipal.Selected.Add('DETOBS'#9'100'#9'DETALLES GESTION');
// Fin: SPP_201303_GESCOB

   dbgPrincipal.ApplySelected;
   Screen.Cursor := crDefault;
End;

//******************************************************************************
// Nombre : btnSalirClick
// Descripcion : cerrar formulario
//******************************************************************************
Procedure TFRepGesRealizadaDet.btnSalirClick(Sender : TObject);
Begin
   Close;
End;

//******************************************************************************
// Nombre : btnExportarClick
// Descripcion : exportar a excel
//******************************************************************************
Procedure TFRepGesRealizadaDet.btnExportarClick(Sender : TObject);
Begin
   Try
      dbgData.DataSource := DM1.dsQry2;
      DM1.HojaExcel('DET_GESTION', DM1.dsQry2, dbgData);
   Except
      On Ex : Exception Do
         MessageDlg(PChar(Ex.Message), mtError, [mbOk], 0);
   End;
End;

//******************************************************************************
// Nombre : btnImprimirClick
// Descripcion : imprimir reporte
//******************************************************************************
Procedure TFRepGesRealizadaDet.btnImprimirClick(Sender : TObject);
Var
   xsSQL, xsTelfAct, xsZIP, xsDpto, xsProv, xsDist : String;
Begin
   xsSQL := 'SELECT CODATE, DESCRIPCION, ASOID, ASOAPENOM, ASODNI, OBSATE, A.USUARIO, HREG,FREG '
      + '     FROM COB_ATE_ASO A,GES_REF_SEG_DET B '
      + '    WHERE ASOID = ' + QuotedStr(DM1.cdsQry1.FieldByName('ASOID').AsString)
      + '      AND A.CODATE = B.IDGTNDET(+) '
      + '      AND B.IDGTN = ''02'' '
      + '    ORDER BY HREG DESC ';
   DM1.cdsSitReclamo.Close;
   DM1.cdsSitReclamo.DataRequest(xsSQL);
   DM1.cdsSitReclamo.Open;

   xsSQL := 'ASOID = ' + QuotedStr(DM1.cdsQry1.FieldByName('ASOID').AsString) + ' and activo = ''S''';
   xsTelfAct := DM1.DisplayDescrip('prvSQL', 'GES_TEL_ASO', 'nrotelf', xsSQL, 'nrotelf');

   xsSQL := 'SELECT A.ASOID, A.ASODNI, A.ASOCODMOD, A.ASOAPENOMDNI, A.ASOTIPID, '
      + '          A.ASONCTA, A.SITCTA, A.USEID, B.USENOM, A.ZIPID, A.ASODIR, '
      + '          A.ASOTELF1 '
      + '     FROM APO201 A, APO101 B '
      + '    WHERE A.ASOID = ' + QuotedStr(DM1.cdsQry1.FieldByName('ASOID').AsString)
      + '      AND A.USEID = B.USEID(+) '
      + '      AND A.UPAGOID = B.UPAGOID(+) '
      + '      AND A.UPROID = B.UPROID(+)';
   DM1.cdsQry3.Close;
   DM1.cdsQry3.DataRequest(xsSQL);
   DM1.cdsQry3.Open;

   ppLblTit.Caption := 'FICHA DE GESTION DEL ' + lblFechaInicio.Caption + ' AL ' + lblFechaFin.Caption;
   pplblCodMod.Caption := DM1.cdsQry3.FieldByName('ASOCODMOD').AsString;
   pplblNomGen.Caption := DM1.cdsQry3.FieldByName('ASOAPENOMDNI').AsString;
   ppLblDni.Caption := DM1.cdsQry3.FieldByName('ASODNI').AsString;
   ppLblTipAso.Caption := DM1.cdsQry3.FieldByName('ASOTIPID').AsString;
   ppLblUses.Caption := DM1.cdsQry3.FieldByName('USENOM').AsString;
   xsZIP := DM1.cdsQry3.FieldByName('ZIPID').AsString;
   ppLblCtaAho.Caption := DM1.cdsQry3.FieldByName('ASONCTA').AsString + ' (' + DM1.CrgDescrip('SITCTAID=' + QuotedStr(DM1.cdsQry3.FieldByName('SITCTA').AsString), 'COB103', 'SITCTADES') + ')';
   ppLblOriOto.Caption := '';

   xsSQL := 'SELECT ASODIR,USUARIO,UBIGEO,ASOID,OBSTEL '
      + '     FROM GES_DOM_ASO '
      + '    WHERE ASOID = ' + QuotedStr(DM1.cdsQry1.FieldByName('ASOID').AsString)
      + '      AND ACTIVO = ''S'' '
      + '    ORDER BY HREG DESC';
   DM1.cdsMGrupo.Close;
   DM1.cdsMGrupo.DataRequest(xsSQL);
   DM1.cdsMGrupo.Open;

   If DM1.cdsMGrupo.recordcount > 0 Then
   Begin
      ppLblAsodir.Caption := DM1.cdsMGrupo.FieldByName('ASODIR').AsString;
      xsDpto := Copy(DM1.cdsMGrupo.FieldByname('UBIGEO').AsString, 1, 2);
      xsProv := Copy(DM1.cdsMGrupo.FieldByname('UBIGEO').AsString, 3, 2);
      xsDist := Copy(DM1.cdsMGrupo.FieldByname('UBIGEO').AsString, 5, 2);
   End
   Else
   Begin
      ppLblAsodir.Caption := DM1.cdsQry3.FieldByName('ASODIR').AsString;
      xsDpto := Copy(xsZIP, 1, 2);
      xsProv := Copy(xsZIP, 3, 2);
      xsDist := Copy(xsZIP, 5, 2);
   End;

   If xsTelfAct <> '' Then
      ppLblTelefono.Caption := xsTelfAct
   Else
      ppLblTelefono.Caption := DM1.cdsQry3.FieldByName('ASOTELF1').AsString;

   xsSQL := 'SELECT DPTODES, CIUDDES, ZIPDES '
      + '     FROM APO158 A, TGE121 B, TGE122 C '
      + '    WHERE A.DPTOID = ''' + xsDpto + ''' '
      + '      AND B.DPTOID = ''' + xsDpto + ''' '
      + '      AND B.CIUDID = ''' + xsProv + ''' '
      + '      AND C.DPTOID = ''' + xsDpto + ''' '
      + '      AND C.CIUDID = ''' + xsProv + ''' '
      + '      AND C.ZIPID = ''' + xsDist + '''';

   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xsSQL);
   DM1.cdsQry.Open;

   pplDpto.Caption := DM1.cdsQry.FieldByname('DPTODES').AsString;
   pplProv.Caption := DM1.cdsQry.FieldByname('CIUDDES').AsString;
   pplDist.Caption := DM1.cdsQry.FieldByname('ZIPDES').AsString;

   ppLblUser.Caption := 'Emitido Por :  ' + Trim(DM1.CrgDescrip('USERID=' + QuotedStr(Trim(DM1.wUsuario)), 'TGE006', 'USERNOM'));
   RpFichaGes.Print;
   //PPD1.Show; // para editar en tiempo de ejecucion
End;

End.

