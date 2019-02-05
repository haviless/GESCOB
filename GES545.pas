// Inicio Uso Estándares: 01/08/2011
// Unidad : Gestión de Cobranzas
// Formulario : FRepHojRut
// Fecha de Creación : 02/04/2012
// Autor : Equipo de Sistemas
// Objetivo :  Mostrar Reporte de Hojas de Rutas
// Actualizaciones:
// HPC_201205_GESCOB 02/04/2012 Mostrar Reporte de Hojas de Ruta(Nuevo)
// DPP_201205_GESCOB: Pase a producción a partir de los pases HPC_201205 y HPC_201206
// HPC_201301_GESCOB 21/02/2013 En el Reporte de incluira el tipo de Gestión : DOM / TEL
// SPP_201301_GESCOB: El pase a producción se realiza de acuerdo al HPC_201301_GESCOB

Unit GES545;

Interface

Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, ComCtrls, StdCtrls, Buttons, ExtCtrls, Grids, Wwdbigrd, Wwdbgrid,
   wwdblook, Wwdbdlg, wwExport, shellapi, ppEndUsr, ppDB, ppDBPipe,
   ppParameter, ppCtrls, ppBands, ppVar, ppPrnabl, ppClass, ppCache, ppComm,
   ppRelatv, ppProd, ppReport;

Type
   TFRepHojRut = Class(TForm)
      pgFiltro : TPageControl;
      dbgPrincipal : TwwDBGrid;
      pnlControles : TPanel;
      Bevel1 : TBevel;
      btnSalir : TBitBtn;
      btnExportar : TBitBtn;
      btnImprimir : TBitBtn;
      tsRangoFecha : TTabSheet;
      gbFechas : TGroupBox;
      Label2 : TLabel;
      Label3 : TLabel;
      dtpFInicio : TDateTimePicker;
      dtpFFin : TDateTimePicker;
      btnProcesarFechas : TBitBtn;
      cboGestor : TwwDBLookupComboDlg;
      Label1 : TLabel;
      repRptFechasGestor : TppReport;
      ppParameterList1 : TppParameterList;
      dbpRptFechasGestor : TppDBPipeline;
      desRptFechasGestor : TppDesigner;
      ppHeaderBand1 : TppHeaderBand;
      ppShape1 : TppShape;
      ppLabel7 : TppLabel;
      ppLabel8 : TppLabel;
      ppLabel9 : TppLabel;
      ppLabel10 : TppLabel;
      ppLabel11 : TppLabel;
      ppSystemVariable1 : TppSystemVariable;
      ppSystemVariable2 : TppSystemVariable;
      ppSystemVariable3 : TppSystemVariable;
      ppLblTit01 : TppLabel;
      ppLabel12 : TppLabel;
      ppLabel13 : TppLabel;
      ppLabel14 : TppLabel;
      ppLblTit02 : TppLabel;
      ppLabel1 : TppLabel;
      ppLabel2 : TppLabel;
      ppLabel3 : TppLabel;
      ppLabel4 : TppLabel;
      ppLabel5 : TppLabel;
      ppLine3 : TppLine;
      ppLine4 : TppLine;
      ppLine5 : TppLine;
      ppLine6 : TppLine;
      ppLine7 : TppLine;
      ppLabel15 : TppLabel;
      ppLabel16 : TppLabel;
      ppLabel17 : TppLabel;
      ppLabel18 : TppLabel;
      ppLine1 : TppLine;
      ppLine2 : TppLine;
      ppLine8 : TppLine;
      ppDetailBand1 : TppDetailBand;
      ppDBText1 : TppDBText;
      ppLine9 : TppLine;
      ppDBText2 : TppDBText;
      ppDBText3 : TppDBText;
      ppDBText4 : TppDBText;
      ppDBText5 : TppDBText;
      ppDBText6 : TppDBText;
      ppDBText7 : TppDBText;
      ppDBText8 : TppDBText;
      ppDBText9 : TppDBText;
      ppLine10 : TppLine;
      ppLine11 : TppLine;
      ppLine12 : TppLine;
      ppLine13 : TppLine;
      ppLine14 : TppLine;
      ppLine15 : TppLine;
      ppLine16 : TppLine;
      ppLine17 : TppLine;
      ppLine18 : TppLine;
      ppLine19 : TppLine;
      ppFooterBand1 : TppFooterBand;
      ppLblUser : TppLabel;
      ppSummaryBand1 : TppSummaryBand;
      ppLabel6 : TppLabel;
      ppDBCalc1 : TppDBCalc;
      ppDBCalc2 : TppDBCalc;
      ppDBCalc3 : TppDBCalc;
      ppDBCalc4 : TppDBCalc;
      ppDBCalc5 : TppDBCalc;
// Inicio: SPP_201301_GESCOB
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLine20: TppLine;
    ppLine21: TppLine;
    ppLabel21: TppLabel;
    ppDBText10: TppDBText;
// Fin: SPP_201301_GESCOB
      Procedure pgFiltroChange(Sender : TObject);
      Procedure btnExportarClick(Sender : TObject);
      Procedure btnImprimirClick(Sender : TObject);
      Procedure btnSalirClick(Sender : TObject);
      Procedure btnProcesarFechasClick(Sender : TObject);
      Procedure dtpFInicioChange(Sender : TObject);
      Procedure FormCreate(Sender : TObject);
      Procedure cboGestorChange(Sender : TObject);
      Procedure dbgPrincipalDblClick(Sender : TObject);
   Private
      Procedure fn_limpiar_filtro();
      Procedure fn_cargar_datos_grilla_principal(wgSQL : String);
   Public
    { Public declarations }
   End;

Var
   FRepHojRut : TFRepHojRut;

Implementation

Uses GESDM1, GES546;

{$R *.dfm}

(******************************************************************************)

Procedure TFRepHojRut.FormCreate(Sender : TObject);
Var
   xdFechaSistema : TDate;
Begin
   pgFiltro.ActivePage := tsRangoFecha;
   xdFechaSistema := DM1.FechaSys;
   dtpFInicio.Date := xdFechaSistema;
   dtpFFin.Date := xdFechaSistema;
   dtpFInicioChange(dtpFInicio);
End;

(******************************************************************************)

Procedure TFRepHojRut.fn_cargar_datos_grilla_principal(wgSQL : String);
Begin
   Screen.Cursor := crHourGlass;
   With DM1.cdsQry1 Do
   Begin
      IndexFieldNames := '';
      Filter := '';
      Filtered := False;
      If active Then
         Close;
      Close;
      DataRequest(wgSQL);
      Open;
   End;

   dbgPrincipal.DataSource := DM1.dsQry1;
   With dbgPrincipal, dbgPrincipal.DataSource.DataSet Do
   Begin
   // Inicio: SPP_201301_GESCOB 21/02/2013 En el Reporte de incluira el tipo de Gestión : DOM / TEL
      Selected.Clear;
      Selected.Add('PERIODO'#9'7'#9'Periodo');
      Selected.Add('FECHA'#9'10'#9'FECHA');
      Selected.Add('GESTOR'#9'13'#9'GESTOR');
      Selected.Add('TIPO_GESTOR'#9'10'#9'Tipo~Gestor');
      Selected.Add('TIPO_GESTION'#9'6'#9'Gestión');
      Selected.Add('ESTADO'#9'10'#9'Estado');
      Selected.Add('USU_CIE'#9'10'#9'Cerrado~Por');
      Selected.Add('PROGRAMADOS'#9'10'#9'Programados');
      Selected.Add('GESTIONADOS'#9'10'#9'Gestionados');
      Selected.Add('NO_GESTIONADOS'#9'10'#9'NO~Gestionados');
      Selected.Add('CONTACTADOS'#9'10'#9'Contactados');
      Selected.Add('NO_CONTACTADOS'#9'10'#9'NO~Contactados');
      Selected.Add('OBSERVACION'#9'30'#9'Observación');
   // Fin: SPP_201301_GESCOB 21/02/2013 En el Reporte de incluira el tipo de Gestión : DOM / TEL
      ApplySelected;
   End;
   Screen.Cursor := crDefault;
End;

(******************************************************************************)

Procedure TFRepHojRut.fn_limpiar_filtro;
Var
   xsSQL : String;
Begin
   // Inicio: SPP_201301_GESCOB 21/02/2013 En el Reporte de incluira el tipo de Gestión : DOM / TEL
   xsSQL :=
      '  SELECT CAB.IDCAB, CAB.PERIODO, CAB.FECHA, CAB.GESTOR, CAB.TIPO_GESTOR, CAB.ESTADO, CAB.FEC_CREA, '
      + '       CAB.USU_CREA, CAB.FEC_IMP, CAB.USU_IMP, CAB.FEC_CIE, CAB.USU_CIE, CAB.FREG, CAB.UREG, '
      + '       CAB.OBSERVACION, 0 PROGRAMADOS, 0 GESTIONADOS, 0 NO_GESTIONADOS, 0 CONTACTADOS, 0 NO_CONTACTADOS,  '
      + '       ''   '' TIPO_GESTION '
      + '  FROM GES_COB_HOJ_RUT_CAB CAB'
      + ' WHERE 1 = 2 ';
   // Fin: SPP_201301_GESCOB 21/02/2013 En el Reporte de incluira el tipo de Gestión : DOM / TEL
   fn_cargar_datos_grilla_principal(xsSQL);
End;

(******************************************************************************)

Procedure TFRepHojRut.pgFiltroChange(Sender : TObject);
Begin
   fn_limpiar_filtro();
End;

(******************************************************************************)

Procedure TFRepHojRut.btnExportarClick(Sender : TObject);
Begin
   Screen.Cursor := crHourGlass;
   Try
      With dbgPrincipal, dbgPrincipal.ExportOptions Do
      Begin
         ExportType := wwgetSYLK;
         FileName := 'HojasRuta.slk';
         DM1.OpcionesExportExcel(dbgPrincipal.ExportOptions);
         dbgPrincipal.ExportOptions.TitleName := 'HojasRuta';
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

(******************************************************************************)

Procedure TFRepHojRut.btnImprimirClick(Sender : TObject);
Begin
   If DM1.cdsQry1.RecordCount > 0 Then
   Begin
      ppLblTit02.Text := 'Del usuario : ' + cboGestor.Text + ', desde el ' + DateToStr(dtpFInicio.Date) + ' al ' + DateToStr(dtpFFin.Date);
      ppLblUser.Caption := 'Emitido Por :  ' + Trim(DM1.CrgDescrip('USERID=' + QuotedStr(Trim(DM1.wUsuario)), 'TGE006', 'USERNOM'));
      dbpRptFechasGestor.DataSource := DM1.dsQry1;
      repRptFechasGestor.Print;
      //desRptFechasGestor.Show;
   End;
End;

(******************************************************************************)

Procedure TFRepHojRut.btnSalirClick(Sender : TObject);
Begin
   close;
End;

(******************************************************************************)

Procedure TFRepHojRut.btnProcesarFechasClick(Sender : TObject);
Var
   xsSQL : String;
Begin

   If TRIM(cboGestor.Text) = '' Then
   Begin
      MessageDlg('Seleccione un Gestor', mtWarning, [mbOk], 0);
      exit;
   End;
   If pgFiltro.ActivePage = tsRangoFecha Then
   Begin
      // Inicio: SPP_201301_GESCOB 21/02/2013 En el Reporte de incluira el tipo de Gestión : DOM / TEL
      xsSQL :=
         '  SELECT IDCAB, PERIODO, FECHA, GESTOR, TIPO_GESTOR, ESTADO, FEC_CREA, '
         + '       USU_CREA, FEC_IMP, USU_IMP, FEC_CIE, USU_CIE, FREG, UREG, '
         + '       OBSERVACION , PROGRAMADOS, '
         + '       GESTIONADOS, NO_GESTIONADOS, CONTACTADOS, '
         + '       CASE WHEN CONTACTADOS > GESTIONADOS THEN 0 ELSE (GESTIONADOS-CONTACTADOS) END NO_CONTACTADOS, '
         + '       TIPO_GESTION '
         + '  FROM (SELECT CAB.IDCAB, CAB.PERIODO, CAB.FECHA, CAB.GESTOR, CAB.TIPO_GESTOR, CAB.ESTADO, CAB.FEC_CREA, '
         + '               CAB.USU_CREA, CAB.FEC_IMP, CAB.USU_IMP, CAB.FEC_CIE, CAB.USU_CIE, CAB.FREG, CAB.UREG, '
         + '               CAB.OBSERVACION , DET.PROGRAMADOS, DET.GESTIONADOS, DET.NO_GESTIONADOS, '
         + '               CASE WHEN NVL(CONTACTADOS,0) > DET.GESTIONADOS THEN DET.GESTIONADOS ELSE NVL(CONTACTADOS,0) END CONTACTADOS, '
         + '               TIPO_GESTION '
         + '          FROM GES_COB_HOJ_RUT_CAB CAB, '
         + '               (SELECT DET.IDCAB, '
         + '                       SUM(1)PROGRAMADOS, '
         + '                       SUM(CASE WHEN NVL(DET.ESTADO,''NO GESTIONADO'') = ''GESTIONADO''  THEN 1 ELSE 0 END) GESTIONADOS, '
         + '                       SUM(CASE WHEN NVL(DET.ESTADO,''NO GESTIONADO'') <> ''GESTIONADO'' THEN 1 ELSE 0 END) NO_GESTIONADOS '
         + '                  FROM GES_COB_HOJ_RUT_DET DET '
         + '                 WHERE TRUNC(DET.FREG) BETWEEN ' + QuotedStr(DateToStr(dtpFInicio.Date)) + ' AND ' + QuotedStr(DateToStr(dtpFFin.Date))
         + '                 GROUP BY DET.IDCAB '
         + '               ) DET, '
         + '               (SELECT HRDET.IDCAB, '
         + '                       SUM(CASE WHEN NVL(GESTIONES.CONTACTADO,''N'') = ''S'' THEN 1 ELSE 0 END) CONTACTADOS, '
         + '                       SUM(CASE WHEN NVL(GESTIONES.CONTACTADO,''N'') <> ''S'' THEN 1 ELSE 0 END) NO_CONTACTADOS '
         + '                  FROM GES_COB_HOJ_RUT_DET HRDET, '
         + '                       (SELECT DISTINCT GES.ASOID, GES.FECHA, '
         + '                               MAX(NVL(REFE.CONTACTADO, ''N''))  OVER(PARTITION BY GES.ASOID  ORDER BY GES.ASOID, TRUNC(GES.FECHA)) CONTACTADO, '
         + '                               DENSE_RANK() OVER(PARTITION BY GES.ASOID ORDER BY GES.ASOID, TRUNC(GES.FECHA)) DRNK '
         + '                          FROM GES_COB_SEG GES, GES_REF_SEG_DET REFE '
         + '                         WHERE GES.USUARIO = ' + QuotedStr(cboGestor.Text)
         + '                           AND TRUNC(GES.FECHA) BETWEEN ' + QuotedStr(DateToStr(dtpFInicio.Date)) + ' AND ' + QuotedStr(DateToStr(dtpFFin.Date))
         + '                           AND GES.IDGESTIONDET = REFE.IDGTNDET(+) '
         + '                       ) GESTIONES '
         + '                 WHERE GESTIONES.DRNK = 1 '
         + '                   AND HRDET.ASOID = GESTIONES.ASOID(+) '
         + '                   AND TRUNC(HRDET.FREG) = GESTIONES.FECHA(+) '
         + '                 GROUP BY HRDET.IDCAB '
         + '               ) CONTAC '
         + '         WHERE TRUNC(CAB.FECHA) BETWEEN ' + QuotedStr(DateToStr(dtpFInicio.Date)) + ' AND ' + QuotedStr(DateToStr(dtpFFin.Date))
         + '           AND CAB.GESTOR = ' + QuotedStr(cboGestor.Text)
         + '           AND CAB.IDCAB = DET.IDCAB '
         + '           AND CAB.IDCAB = CONTAC.IDCAB(+) '
         + '         ORDER BY CAB.FECHA, CAB.GESTOR '
         + '       )';
      // Fin: SPP_201301_GESCOB 21/02/2013 En el Reporte de incluira el tipo de Gestión : DOM / TEL

      fn_cargar_datos_grilla_principal(xsSQL);
   End
End;

(******************************************************************************)

Procedure TFRepHojRut.dtpFInicioChange(Sender : TObject);
Var
   xsSQL : String;
Begin
   fn_limpiar_filtro();
   Screen.Cursor := crHourGlass;
   // CARGAR COMBO GESTORES
   Try
      xsSQL := 'SELECT DISTINCT GESTOR '
         + '      FROM GES_COB_HOJ_RUT_CAB '
         + '     WHERE FECHA BETWEEN ' + QuotedStr(DateToStr(dtpFInicio.Date)) + ' AND ' + QuotedStr(DateToStr(dtpFFin.Date))
         + '     ORDER BY GESTOR ';
   Except
      xsSQL := 'SELECT DISTINCT GESTOR '
         + '      FROM GES_COB_HOJ_RUT_CAB '
         + '     WHERE 1 = 2 '
         + '     ORDER BY GESTOR ';
   End;

   DM1.cdsQry2.Close;
   DM1.cdsQry2.DataRequest(xsSQL);
   DM1.cdsQry2.Open;

   cboGestor.LookupTable := DM1.cdsQry2;
   cboGestor.LookupField := 'GESTOR';
   Screen.Cursor := crDefault;
End;
(******************************************************************************)

Procedure TFRepHojRut.cboGestorChange(Sender : TObject);
Begin
   fn_limpiar_filtro();
End;

(******************************************************************************)

Procedure TFRepHojRut.dbgPrincipalDblClick(Sender : TObject);
Var
   xxFrm : TFRepHojRutDet;
Begin
   If DM1.cdsQry1.RecordCount > 0 Then
   Begin
      xxFrm := TFRepHojRutDet.create(self);
      xxFrm.xsIdCab := DM1.cdsQry1.fieldByName('IDCAB').asstring;
      xxFrm.xsGestor := DM1.cdsQry1.fieldbyname('GESTOR').AsString;
      xxFrm.xsPeriodo := DM1.cdsQry1.fieldbyname('PERIODO').AsString;
      xxFrm.xsFechaHojaRuta := DM1.cdsQry1.fieldbyname('FECHA').AsString;
      xxFrm.ShowModal();
   End;
End;
(******************************************************************************)
End.

