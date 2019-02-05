// Inicio Uso Estándares: 01/08/2011
// Unidad : Gestión de Cobranzas
// Formulario : FCompararTrasladosGes
// Fecha de Creación :
// Autor : Equipo de Sistemas
// Objetivo : Comparar Traslados - Gestiones
// Actualizaciones:
// HPC_201119_GESCOB 26/10/2011 Acuerdo de Atencion 2011-02-V2.0
// HPC_201203_GESCOB 15/02/2012 Evitar Mensajes de error en tiempo de diseño
// HPC_201206_GESCOB - F2 21/08/2012 MODIFICAR COMPARACION DE TRASLADO PARA QUE SE ASEMEJE A LA MATRIZ DE TRASLADO DEL MODULO DE RIESGOS
// DPP_201205_GESCOB: Pase a producción a partir de los pases HPC_201205 y HPC_201206 

Unit GES518;

Interface

Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, Grids, Wwdbigrd, Wwdbgrid, StdCtrls, Buttons, ExtCtrls, wwExport, shellapi,
   ppParameter, ppRegion, ppCtrls, ppBands, ppReport, ppStrtch, ppSubRpt,
   ppVar, ppPrnabl, ppClass, ppCache, ppProd, ppEndUsr, ppComm, ppRelatv,
   ppDB, ppDBPipe, ComCtrls;

Type
   TFCompararTrasladosGes = Class(TForm)
      gbFiltro : TGroupBox;
      Label2 : TLabel;
      Label1 : TLabel;
      Label3 : TLabel;
      Label7 : TLabel;
      edPeriodoActual : TEdit;
      edPeriodoAnterior : TEdit;
      edCalificacion : TEdit;
      edCalificacionDescripcion : TEdit;
      edDpto : TEdit;
      edDptoDes : TEdit;
      edAsoid : TEdit;
      edAsociado : TEdit;
      Label4 : TLabel;
      pnlControles : TPanel;
      btnImprimir : TBitBtn;
      btnSalir : TBitBtn;
      btnExportar : TBitBtn;
      dbpReporte : TppDBPipeline;
      desReporte : TppDesigner;
      repReporte : TppReport;
      ppParameterList1 : TppParameterList;
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
      ppShape7 : TppShape;
      ppLabel1 : TppLabel;
      ppLabel5 : TppLabel;
      ppLabel6 : TppLabel;
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
      ppLblUser : TppLabel;
      pcPrincipal : TPageControl;
      tsPeriodosDos : TTabSheet;
      tsPeriodosSeis : TTabSheet;
      dbgResultados01 : TwwDBGrid;
      dbgResultados02 : TwwDBGrid;
      Procedure btnSalirClick(Sender : TObject);
      Procedure btnExportarClick(Sender : TObject);
      Procedure btnImprimirClick(Sender : TObject);
      Procedure FormShow(Sender : TObject);
   Private
    { Private declarations }
   Public
     xsPeriodoNMeses: string;
   End;

Var
   FCompararTrasladosGes : TFCompararTrasladosGes;

Implementation

Uses GESDM1;

{$R *.dfm}

//******************************************************************************
// Nombre : FormShow
// Descripcion :  cargar datos de los controles
//******************************************************************************

Procedure TFCompararTrasladosGes.FormShow(Sender : TObject);
Var
   xsSQL : String;
   xnCantGes : integer;
Begin
   Screen.Cursor := crHourGlass;
   // SEIS PERIODOS
   // ARTIFICIO PARA MOSTRAR EL PIE DE LA GRILLA
   pcPrincipal.ActivePage := tsPeriodosSeis;
   xsSQL := 'SELECT TO_CHAR(ADD_MONTHS(TO_DATE(' + QuotedStr(edPeriodoActual.Text) + ',''YYYYMM''), -5), ''YYYYMM'') PERIODONMESES FROM DUAL';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xsSQL);
   DM1.cdsQry.Open;
   xsPeriodoNMeses := DM1.cdsQry.fieldbyname('PERIODONMESES').asstring;

   xsSQL := ' SELECT GES_COB_SEG.FECHA, GES_REF_SEG.DESCRIPCION TIP_GESTION, '
      + '            IDGESTIONDET COD_GESTION, GES_COB_SEG.USUARIO GESTOR, '
      + '            GES_REF_SEG_DET.DESCRIPCION RES_GESTION, '
      + '            GES_COB_SEG.DETOBS '
      + '       FROM GES_COB_SEG, GES_REF_SEG, GES_REF_SEG_DET '
      + '      WHERE GES_COB_SEG.IDGESTION = GES_REF_SEG.IDGTN '
      + '        AND GES_COB_SEG.IDGESTION = GES_REF_SEG_DET.IDGTN '
      + '        AND GES_COB_SEG.IDGESTIONDET = GES_REF_SEG_DET.IDGTNDET '
      + '        AND GES_COB_SEG.ASOID = ' + QuotedStr(edAsoid.Text)
      + '        AND GES_COB_SEG.PERIODO <= ' + QuotedStr(edPeriodoActual.Text)
      + '        AND GES_COB_SEG.PERIODO >= ' + QuotedStr(xsPeriodoNMeses)
      + '        AND GES_COB_SEG.FECHA BETWEEN TRUNC(ADD_MONTHS(TO_DATE(GES_COB_SEG.PERIODO, ''YYYYMM''), 1)) AND LAST_DAY(TRUNC(ADD_MONTHS(TO_DATE(GES_COB_SEG.PERIODO, ''YYYYMM''), 1))) '
      + '      ORDER BY FECHA DESC, ORDEN DESC ';

   DM1.cdsQry7.Close;
   DM1.cdsQry7.DataRequest(xsSQL);
   DM1.cdsQry7.Open;
   tsPeriodosSeis.Caption := tsPeriodosSeis.Caption + ' ( '+inttostr(DM1.cdsQry7.RecordCount)+' Gestiones )';
   dbgResultados02.DataSource := DM1.dsQry7;
   dbgResultados02.GroupFieldName := 'DEPARTAMENTO';

   dbgResultados02.Selected.Clear;
   dbgResultados02.Selected.Add('FECHA'#9'12'#9'FECHA');
   dbgResultados02.Selected.Add('TIP_GESTION'#9'25'#9'TIPO GESTION');
   dbgResultados02.Selected.Add('COD_GESTION'#9'12'#9'COD.~GESTION');
   dbgResultados02.Selected.Add('GESTOR'#9'12'#9'GESTOR');
   dbgResultados02.Selected.Add('RES_GESTION'#9'34'#9'RESULTADO GESTION');
   dbgResultados02.Selected.Add('DETOBS'#9'34'#9'DETALLE GESTION');
   dbgResultados02.ApplySelected;

   xnCantGes := 0;
   DM1.cdsQry7.First;
   While Not DM1.cdsQry7.Eof Do
   Begin
      xnCantGes := xnCantGes + 1;
      DM1.cdsQry7.Next;
   End;
   DM1.cdsQry7.First;

   dbgResultados02.ColumnByName('FECHA').FooterValue := 'Total : ';
   dbgResultados02.ColumnByName('TIP_GESTION').FooterValue := FloatToStrF(xnCantGes, ffNumber, 15, 0) + ' Gestiones';

   // DOS PERIODOS
   // ARTIFICIO PARA MOSTRAR EL PIE DE LA GRILLA
   pcPrincipal.ActivePage := tsPeriodosDos;
   xsSQL := ' SELECT GES_COB_SEG.FECHA, GES_REF_SEG.DESCRIPCION TIP_GESTION, '
      + '            IDGESTIONDET COD_GESTION, GES_COB_SEG.USUARIO GESTOR, '
      + '            GES_REF_SEG_DET.DESCRIPCION RES_GESTION, '
      + '            GES_COB_SEG.DETOBS '
      + '       FROM GES_COB_SEG, GES_REF_SEG, GES_REF_SEG_DET '
      + '      WHERE GES_COB_SEG.IDGESTION = GES_REF_SEG.IDGTN '
      + '        AND GES_COB_SEG.IDGESTION = GES_REF_SEG_DET.IDGTN '
      + '        AND GES_COB_SEG.IDGESTIONDET = GES_REF_SEG_DET.IDGTNDET '
      + '        AND GES_COB_SEG.ASOID = ' + QuotedStr(edAsoid.Text)
      + '        AND GES_COB_SEG.PERIODO <= ' + QuotedStr(edPeriodoActual.Text)
      + '        AND GES_COB_SEG.PERIODO >= ' + QuotedStr(edPeriodoAnterior.Text)
      + '        AND GES_COB_SEG.FECHA BETWEEN TRUNC(ADD_MONTHS(TO_DATE(GES_COB_SEG.PERIODO, ''YYYYMM''), 1)) AND LAST_DAY(TRUNC(ADD_MONTHS(TO_DATE(GES_COB_SEG.PERIODO, ''YYYYMM''), 1))) '
      + '      ORDER BY FECHA DESC, ORDEN DESC ';

   DM1.cdsQry5.Close;
   DM1.cdsQry5.DataRequest(xsSQL);
   DM1.cdsQry5.Open;
   tsPeriodosDos.Caption := tsPeriodosDos.Caption + ' ( '+inttostr(DM1.cdsQry5.RecordCount)+' Gestiones )';
   dbgResultados01.DataSource := DM1.dsQry5;
   dbgResultados01.GroupFieldName := 'DEPARTAMENTO';

   dbgResultados01.Selected.Clear;
   dbgResultados01.Selected.Add('FECHA'#9'12'#9'FECHA');
   dbgResultados01.Selected.Add('TIP_GESTION'#9'25'#9'TIPO GESTION');
   dbgResultados01.Selected.Add('COD_GESTION'#9'12'#9'COD.~GESTION');
   dbgResultados01.Selected.Add('GESTOR'#9'12'#9'GESTOR');
   dbgResultados01.Selected.Add('RES_GESTION'#9'34'#9'RESULTADO GESTION');
   dbgResultados01.Selected.Add('DETOBS'#9'34'#9'DETALLE GESTION');
   dbgResultados01.ApplySelected;

   xnCantGes := 0;
   DM1.cdsQry5.First;
   While Not DM1.cdsQry5.Eof Do
   Begin
      xnCantGes := xnCantGes + 1;
      DM1.cdsQry5.Next;
   End;
   DM1.cdsQry5.First;

   dbgResultados01.ColumnByName('FECHA').FooterValue := 'Total : ';
   dbgResultados01.ColumnByName('TIP_GESTION').FooterValue := FloatToStrF(xnCantGes, ffNumber, 15, 0) + ' Gestiones';

   Screen.Cursor := crDefault;
End;

//******************************************************************************
// Nombre : btnExportarClick
// Descripcion :  exportar a excel
//******************************************************************************

Procedure TFCompararTrasladosGes.btnExportarClick(Sender : TObject);
Begin
   Screen.Cursor := crHourGlass;
   If pcPrincipal.ActivePage = tsPeriodosDos Then
   Begin
      Try
         With dbgResultados01, dbgResultados01.ExportOptions Do
         Begin
            ExportType := wwgetSYLK;
            FileName := 'COMTRAS01.slk';
            DM1.OpcionesExportExcel(dbgResultados01.ExportOptions);
            dbgResultados01.ExportOptions.TitleName := 'ComTras01';
            Save;
            If Not (esoClipboard In Options) Then
               ShellExecute(Handle, 'Open', PChar(dbgResultados01.exportoptions.Filename), Nil, Nil, sw_shownormal);
         End;
         Screen.Cursor := crDefault;
      Except
         Screen.Cursor := crDefault;
         showmessage('No se puede grabar el Archivo ' + chr(13) + 'Cierre todos los Archivos en Excel y vuelva a intentarlo');
      End;
   End;
   If pcPrincipal.ActivePage = tsPeriodosSeis Then
   Begin
      Try
         With dbgResultados02, dbgResultados02.ExportOptions Do
         Begin
            ExportType := wwgetSYLK;
            FileName := 'COMTRAS02.slk';
            DM1.OpcionesExportExcel(dbgResultados02.ExportOptions);
            dbgResultados02.ExportOptions.TitleName := 'ComTras02';
            Save;
            If Not (esoClipboard In Options) Then
               ShellExecute(Handle, 'Open', PChar(dbgResultados02.exportoptions.Filename), Nil, Nil, sw_shownormal);
         End;
         Screen.Cursor := crDefault;
      Except
         Screen.Cursor := crDefault;
         showmessage('No se puede grabar el Archivo ' + chr(13) + 'Cierre todos los Archivos en Excel y vuelva a intentarlo');
      End;
   End;
   Screen.Cursor := crDefault;
End;

//******************************************************************************
// Nombre : btnImprimirClick
// Descripcion :  imprimir reporte
//******************************************************************************
Procedure TFCompararTrasladosGes.btnImprimirClick(Sender : TObject);
Var
   xSQL, sTelfAct, sZIP, sDpto, sProv, sDist, sSQL : String;
Begin
   If pcPrincipal.ActivePage = tsPeriodosDos Then
   begin
      dbpReporte.DataSource := DM1.dsQry5;
      ppLblTit.Caption := 'COMPARAR TRASLADOS : GESTIONES EN LOS PERIODOS ' + edPeriodoAnterior.Text + ' AL ' + edPeriodoActual.Text;
   end
   else
   begin
      dbpReporte.DataSource := DM1.dsQry7;
      ppLblTit.Caption := 'COMPARAR TRASLADOS : GESTIONES EN LOS PERIODOS '  + xsPeriodoNMeses + ' AL ' + edPeriodoActual.Text;
   end;

   xSQL := 'ASOID = ' + QuotedStr(edAsoid.Text) + ' and activo = ''S''';
   sTelfAct := DM1.DisplayDescrip('prvSQL', 'GES_TEL_ASO', 'nrotelf', xSQL, 'nrotelf');

   xSQL := 'SELECT A.ASOID, A.ASODNI, A.ASOCODMOD, A.ASOAPENOMDNI, A.ASOTIPID, '
      + '          A.ASONCTA, A.SITCTA, A.USEID, B.USENOM, A.ZIPID, A.ASODIR, '
      + '          A.ASOTELF1 '
      + '     FROM APO201 A, APO101 B '
      + '    WHERE A.ASOID = ' + QuotedStr(edAsoid.Text)
      + '      AND A.USEID = B.USEID(+) '
      + '      AND A.UPAGOID = B.UPAGOID(+) '
      + '      AND A.UPROID = B.UPROID(+)';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSQL);
   DM1.cdsQry.Open;

   pplblCodMod.Caption := DM1.cdsQry.FieldByName('ASOCODMOD').AsString;
   pplblNomGen.Caption := DM1.cdsQry.FieldByName('ASOAPENOMDNI').AsString;
   ppLblDni.Caption := DM1.cdsQry.FieldByName('ASODNI').AsString;
   ppLblTipAso.Caption := DM1.cdsQry.FieldByName('ASOTIPID').AsString;
   ppLblUses.Caption := DM1.cdsQry.FieldByName('USENOM').AsString;
   ppLblAsodir.Caption := DM1.cdsQry.FieldByName('ASODIR').AsString;
   sZIP := DM1.cdsQry.FieldByName('ZIPID').AsString;
   sDpto := Copy(sZIP, 1, 2);
   sProv := Copy(sZIP, 3, 2);
   sDist := Copy(sZIP, 5, 2);
   ppLblTelefono.Caption := DM1.cdsQry.FieldByName('ASOTELF1').AsString;
   ppLblOriOto.Caption := '';
   ppLblCtaAho.Caption := DM1.cdsQry.FieldByName('ASONCTA').AsString + ' (' + DM1.CrgDescrip('SITCTAID=' + QuotedStr(DM1.cdsQry.FieldByName('SITCTA').AsString), 'COB103', 'SITCTADES') + ')';

   xSQL := 'SELECT ASODIR,USUARIO,UBIGEO,ASOID,OBSTEL '
      + '     FROM GES_DOM_ASO '
      + '    WHERE ASOID = ' + QuotedStr(edAsoid.Text)
      + '      AND ACTIVO = ''S'' '
      + '    ORDER BY HREG DESC';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSQL);
   DM1.cdsQry.Open;

   If DM1.cdsQry.recordcount > 0 Then
   Begin
      ppLblAsodir.Caption := DM1.cdsQry.FieldByName('ASODIR').AsString;
      sDpto := Copy(DM1.cdsQry.FieldByname('UBIGEO').AsString, 1, 2);
      sProv := Copy(DM1.cdsQry.FieldByname('UBIGEO').AsString, 3, 2);
      sDist := Copy(DM1.cdsQry.FieldByname('UBIGEO').AsString, 5, 2);
   End;

   If sTelfAct <> '' Then
      ppLblTelefono.Caption := sTelfAct;

   sSQL := 'SELECT DPTODES, CIUDDES, ZIPDES '
      + '     FROM APO158 A, TGE121 B, TGE122 C '
      + '    WHERE A.DPTOID = ''' + sDpto + ''' '
      + '      AND B.DPTOID = ''' + sDpto + ''' '
      + '      AND B.CIUDID = ''' + sProv + ''' '
      + '      AND C.DPTOID = ''' + sDpto + ''' '
      + '      AND C.CIUDID = ''' + sProv + ''' '
      + '      AND C.ZIPID = ''' + sDist + '''';

   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(sSQL);
   DM1.cdsQry.Open;

   pplDpto.Caption := DM1.cdsQry.FieldByname('DPTODES').AsString;
   pplProv.Caption := DM1.cdsQry.FieldByname('CIUDDES').AsString;
   pplDist.Caption := DM1.cdsQry.FieldByname('ZIPDES').AsString;

   ppLblUser.Caption := 'Emitido Por :  ' + Trim(DM1.CrgDescrip('USERID=' + QuotedStr(Trim(DM1.wUsuario)), 'TGE006', 'USERNOM'));
   repReporte.Print;
   //desReporte.Show; // para editar en tiempo de ejecucion
End;
//******************************************************************************
// Nombre : btnSalirClick
// Descripcion :  cerrar formulario
//******************************************************************************

Procedure TFCompararTrasladosGes.btnSalirClick(Sender : TObject);
Begin
   Close;
End;

(******************************************************************************)

End.
