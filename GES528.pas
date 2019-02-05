// Inicio Uso Estándares: 01/08/2011
// Unidad : Gestión de Cobranzas
// Formulario : TFMantControlCampanhasMetas
// Fecha de Creación : 23/12/2011
// Autor : Equipo de Sistemas
// Objetivo : Mantenimiento del Control de Campañas - Metas
// Actualizaciones:
// HPC_201121_GESCOB 20/12/2011 Indicadores de Control de Campañas
// HPC_201201_GESCOB 09/01/2012 correccion en caso de cero en valor_cuota
// HPC_201202_GESCOB 26/01/2012 Mejoras en calculo e impresion de graficos (pagos >= 50%, estaba como >50%, pero segun el rescate ampliado es >=50%)
// HPC_201202_GESCOB 27/01/2012 Colocar Matriz de Prioridades
// HPC_201205_GESCOB 06/03/2012 liberar memoria al imprimir los distintos graficos estadisticos
// DPP_201205_GESCOB: Pase a producción a partir de los pases HPC_201205 y HPC_201206
// HPC_201301_GESCOB Se cambian los Parametros de las metas
// SPP_201301_GESCOB: El pase a producción se realiza de acuerdo al HPC_201301_GESCOB

Unit GES528;

Interface
// Inicio: DPP_201205_GESCOB
Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, Buttons, ExtCtrls, ppParameter, ppBands, ppCtrls,
   ppVar, ppPrnabl, ppClass, ppCache, ppProd, ppReport, ppRelatv, ppDB,
   ppDBPipe, ppComm, ppEndUsr, TeeProcs, TeEngine, Chart, DbChart, Series, DB,
   ppStrtch, ppSubRpt;
// Fin: DPP_201205_GESCOB
Type
   TFMantControlCampanhasMetas = Class(TForm)
      pnlSup : TPanel;
      pnlControles : TPanel;
      btnSalir : TBitBtn;
      desRptMaestro : TppDesigner;
      dbpRptMaestroREF : TppDBPipeline;
      repRptMaestro : TppReport;
      ppParameterList1 : TppParameterList;
      btnImprimir : TBitBtn;
      pnlInf : TPanel;
      pnlInfIzda : TPanel;
      pnlSupInf : TPanel;
      pnlSupSup : TPanel;
      DBChartREFMeta : TDBChart;
      LineSeries3 : TLineSeries;
      LineSeries4 : TLineSeries;
      pnlInfDrch : TPanel;
      lblRangoFechas : TLabel;
      lblCampanha : TLabel;
      Label1 : TLabel;
      Label2 : TLabel;
      Label3 : TLabel;
      Label4 : TLabel;
      Label5 : TLabel;
      Label6 : TLabel;
      Label7 : TLabel;
      Shape1 : TShape;
      Shape2 : TShape;
      Shape3 : TShape;
      Shape4 : TShape;
      Shape5 : TShape;
      Shape6 : TShape;
      Shape7 : TShape;
      Shape8 : TShape;
      lblMetaRef : TLabel;
      lblMetaEfeBan : TLabel;
      lblMetaTotal : TLabel;
      lblAlcanceRef : TLabel;
      lblAlcanceEfeBan : TLabel;
      lblAlcanceTotal : TLabel;
      lblDifRef : TLabel;
      lblDifEfeBan : TLabel;
      lblDifTotal : TLabel;
      lblMaxFecha : TLabel;
      lblPorRef : TLabel;
      lblPorEfeBan : TLabel;
      lblPorTotal : TLabel;
      Label11 : TLabel;
      Shape9 : TShape;
      imgCapturarPanel : TImage;
      ppHeaderBand41 : TppHeaderBand;
      ppLabel858 : TppLabel;
      ppLabel859 : TppLabel;
      ppLabel860 : TppLabel;
      ppLabel861 : TppLabel;
      ppLabel862 : TppLabel;
      ppSystemVariable83 : TppSystemVariable;
      ppSystemVariable84 : TppSystemVariable;
      ppSystemVariable85 : TppSystemVariable;
      ppLblTit01 : TppLabel;
      ppLabel863 : TppLabel;
      ppLabel864 : TppLabel;
      ppLabel865 : TppLabel;
      ppLblTit02 : TppLabel;
      ppDetailBand44 : TppDetailBand;
      ppShape2 : TppShape;
      ppShape1 : TppShape;
      ppImgREF : TppImage;
      ppImgREFMET : TppImage;
      ppFooterBand36 : TppFooterBand;
      ppLblUser : TppLabel;
      ppSummaryBand41 : TppSummaryBand;
      lblPeriodoCartera : TLabel;
      Label8 : TLabel;
      DBChartREF : TDBChart;
      LineSeries1 : TLineSeries;
      DBChartEFEBANMeta : TDBChart;
      Series1 : TBarSeries;
      ppSubReport1 : TppSubReport;
      ppChildReport1 : TppChildReport;
      ppTitleBand1 : TppTitleBand;
      ppDetailBand1 : TppDetailBand;
      ppSummaryBand1 : TppSummaryBand;
      ppShape4 : TppShape;
      ppImgResumen : TppImage;
      ppShape3 : TppShape;
      ppImgEFEBANMeta : TppImage;
      Procedure FormCreate(Sender : TObject);
      Procedure btnSalirClick(Sender : TObject);
      Procedure btnImprimirClick(Sender : TObject);
      Procedure FormResize(Sender : TObject);
      Procedure FormClose(Sender : TObject; Var Action : TCloseAction);
      Procedure DBChartREFDblClick(Sender : TObject);
      Procedure DBChartREFMetaDblClick(Sender : TObject);
      Procedure DBChartEFEBANMetaDblClick(Sender : TObject);
   Private
    { Private declarations }
   Public
    { Public declarations }
   End;

Var
   FMantControlCampanhasMetas : TFMantControlCampanhasMetas;

Implementation
// Inicio: DPP_201205_GESCOB
Uses GESDM1, GES529;
// Fin: DPP_201205_GESCOB
{$R *.dfm}

//******************************************************************************
// Nombre : FormCreate
// Descripcion : cargar graficos y resumen
//******************************************************************************

Procedure TFMantControlCampanhasMetas.FormCreate(Sender : TObject);
Var
   xsSQL : String;

   Procedure fn_formato_lineseries(wgSerie : TChartSeries);
   Begin
      wgSerie.Marks.Clip := True;
      wgSerie.Marks.Visible := False;
      TLineSeries(wgSerie).LinePen.Width := 2;
      TLineSeries(wgSerie).Pointer.HorizSize := 3;
      TLineSeries(wgSerie).Pointer.VertSize := 3;
      TLineSeries(wgSerie).Pointer.InflateMargins := True;
      TLineSeries(wgSerie).Pointer.Pen.Visible := False;
      TLineSeries(wgSerie).Pointer.Style := psRectangle;
      TLineSeries(wgSerie).Pointer.Visible := True;
   End;

   Procedure fn_formato_barseries(wgSerie : TChartSeries);
   Begin
      wgSerie.Marks.Visible := False;
      TBarSeries(wgSerie).ColorEachPoint := True;
      TBarSeries(wgSerie).SeriesColor := clRed;
      TBarSeries(wgSerie).UseYOrigin := False;
   End;
Begin
   // Inicio: SPP_201301_GESCOB Se cambian los Parametros de las metas

   Screen.Cursor := crHourGlass;
   lblCampanha.Caption := DM1.cdsQry1.fieldbyname('NOMCAM').AsString;
   lblRangoFechas.Caption := 'Programa del ' + DM1.cdsQry1.fieldbyname('FECINI').AsString + ' al ' + DM1.cdsQry1.fieldbyname('FECFIN').AsString;

   // refinanciado
   xsSQL:='SELECT TO_CHAR(FREG, ''YYYY/MM/DD'') FECHA, SUM(nvl(COB_REF, 0)) SALDO_VENCIDO '
         +'   FROM ( '
         +'         Select A.ASOID, A.FREG, x.ASODNI, X.ASOCODMOD, x.ASOAPENOM, x.ZIPID, a.COB_REF '
         +'           from (select asoid, freg, sum(nvl(cremtocob, 0)) COB_REF '
         +'                   from CRE310 '
         +                 ' where freg>='+QuotedStr(DM1.cdsQry1.fieldbyname('FECINI').AsString)
         +                   ' and freg<='+QuotedStr(DM1.cdsQry1.fieldbyname('FECFIN').AsString)
         +'                    and FORPAGID IN (''12'') AND CREESTID IN (''12'') '
         +'                  group by asoid, freg ) A, '
         +'                  APO201 X, '
         +'                 (select * from GES_COB_CON_CAM_UBI where IDCONCAM = '+ DM1.cdsQry1.fieldbyname('IDCONCAM').AsString+' order by zipid) Z '
         +'          where a.asoid = x.asoid '
         +'            and x.zipid = z.zipid '
         +'      ) A '
         +' GROUP BY FREG '
         +' ORDER BY FREG';
   DM1.cdsQry4.Close;
   DM1.cdsQry4.DataRequest(xsSQL);
   DM1.cdsQry4.Open;

   DBChartREF.Title.Text.Clear;
   DBChartREF.Title.Text.Add('Refinanciamiento Cancelado diario');
   DBChartREF.Legend.Visible := true;
   DBChartREF.View3D := false;
   DBChartREF.SeriesList.Clear;

   DBChartREF.AddSeries(TLineSeries.Create(self));
   DBChartREF.Series[0].DataSource := DM1.cdsQry4;
   DBChartREF.Series[0].XLabelsSource := 'FECHA';
   DBChartREF.Series[0].YValues.ValueSource := 'SALDO_VENCIDO';
   DBChartREF.Series[0].valueFormat := '##,###,###.00';
   DBChartREF.Series[0].Name := 'RefinanciadosDiario';
   fn_formato_lineseries(DBChartREF.Series[0]);

   //refinanciado - Meta
   xsSQL:='SELECT TO_CHAR(FREG,''DD/MM'') FECHA, ' + DM1.cdsQry1.fieldbyname('METSALREF').AsString + ' META, '
         +   'SUM( nvl(SALDO_VENCIDO,0) ) OVER (ORDER BY FREG) SALDO_VENCIDO '
         +  'FROM ( '

         +'SELECT FREG, SUM(nvl(COB_REF, 0)) SALDO_VENCIDO '
         +'   FROM ( '
         +'         Select A.ASOID, A.FREG, x.ASODNI, X.ASOCODMOD, x.ASOAPENOM, x.ZIPID, a.COB_REF '
         +'           from (select asoid, freg, sum(nvl(cremtocob, 0)) COB_REF '
         +'                   from CRE310 '
         +                 ' where freg>='+QuotedStr(DM1.cdsQry1.fieldbyname('FECINI').AsString)
         +                   ' and freg<='+QuotedStr(DM1.cdsQry1.fieldbyname('FECFIN').AsString)
         +'                    and FORPAGID IN (''12'') AND CREESTID IN (''12'') '
         +'                  group by asoid, freg ) A, '
         +'                  APO201 X, '
         +'                 (select * from GES_COB_CON_CAM_UBI where IDCONCAM = '+DM1.cdsQry1.fieldbyname('IDCONCAM').AsString+' order by zipid) Z '
         +'          where a.asoid = x.asoid '
         +'            and x.zipid = z.zipid '
         +'      ) A '
         +' GROUP BY FREG '
         +') '
         +'ORDER BY FREG';
   DM1.cdsQry5.Close;
   DM1.cdsQry5.DataRequest(xsSQL);
   DM1.cdsQry5.Open;

   DBChartREFMeta.Title.Text.Clear;
   DBChartREFMeta.Title.Text.Add('Meta Refinanciamiento Cancelado vs Avance Acumulado');
   DBChartREFMeta.Legend.Visible := true;
   DBChartREFMeta.View3D := false;
   DBChartREFMeta.SeriesList.Clear;

   DBChartREFMeta.AddSeries(TLineSeries.Create(self));
   DBChartREFMeta.Series[0].DataSource := DM1.cdsQry5;
   DBChartREFMeta.Series[0].XLabelsSource := 'FECHA';
   DBChartREFMeta.Series[0].YValues.ValueSource := 'SALDO_VENCIDO';
   DBChartREFMeta.Series[0].valueFormat := '##,###,###.00';
   DBChartREFMeta.Series[0].Name := 'RefinanciadosMeta';
   fn_formato_lineseries(DBChartREFMeta.Series[0]);

   DBChartREFMeta.AddSeries(TLineSeries.Create(self));
   DBChartREFMeta.Series[1].DataSource := DM1.cdsQry5;
   DBChartREFMeta.Series[1].XLabelsSource := 'FECHA';
   DBChartREFMeta.Series[1].YValues.ValueSource := 'META';
   DBChartREFMeta.Series[1].valueFormat := '##,###,###.00';
   DBChartREFMeta.Series[1].Name := 'Meta';
   fn_formato_lineseries(DBChartREFMeta.Series[1]);

   // efe/ban
   xsSQL:='SELECT 1 ORDEN, ''Meta'' TITULO, ' + DM1.cdsQry1.fieldbyname('METSALEFEBAN').AsString + ' TOTAL '
         + '      FROM DUAL  '
         + ' UNION ALL '
         +'SELECT 2 ORDEN, ''Efe y Ban'' TITULO, '
         +       'SUM( nvl(COB_EFE,0) ) TOTAL FROM ( '
         +  'select DISTINCT A.ASOID, A.FECHA, ASODNI, ASOCODMOD, ASOAPENOM, ZIPID, C.COB_EFE, C.FREG '
         +    'from '
         +        ' ( '
         +           'SELECT A.* '
         +             'FROM ( '

         +              '  SELECT XX, asoid, fecha, ZIPID, ASODNI, ASOCODMOD, ASOAPENOM, HORA, '
         +              '                                 DENSE_RANK() OVER(PARTITION BY ASOID ORDER BY ASOID, FECHA ASC, HORA DESC) DRNK '
         +              '                                 FROM '
         +              '                                 ( '
         +              '                          select ''1'' XX, A.asoid, a.fecha, X.ZIPID, X.ASODNI, ASOCODMOD, ASOAPENOM, HORA '
         +              '                            from GES_COB_SEG A, GES_REF_SEG_DET B, APO201 X '
         +                                         'where a.fecha>='+QuotedStr(DM1.cdsQry1.fieldbyname('FECINI').AsString)
         +                                          ' and a.fecha<='+QuotedStr(DM1.cdsQry1.fieldbyname('FECFIN').AsString)
         +              '                             and a.idgestion = b.idgtn(+) and a.idgestiondet = b.idgtndet(+) and b.contactado = ''S'' and nvl(b.directo, ''N'') = ''S'' '
         +              '                             and a.asoid = x.asoid(+) '
         +              '                           union ALL '
         +              '                          SELECT ''2'' XX, A.ASOID, A.FREG, X.ZIPID, X.ASODNI, X.ASOCODMOD, X.ASOAPENOM, TO_CHAR(A.HREG,''HH:MI:SS'') HREG '
         +              '                            FROM cob_ate_aso A, APO201 X '
         +                                        ' where A.freg>='+QuotedStr(DM1.cdsQry1.fieldbyname('FECINI').AsString)
         +                                          ' and A.freg<='+QuotedStr(DM1.cdsQry1.fieldbyname('FECFIN').AsString)
         +              '                             and a.asoid = x.asoid(+) '
         +              '                             ) '

         +                '  ) A, (select * from GES_COB_CON_CAM_UBI where IDCONCAM = '+ DM1.cdsQry1.fieldbyname('IDCONCAM').AsString+' order by zipid) Z '
         +            'WHERE DRNK = 1 '
         +             ' and a.zipid = z.zipid '
         +        ' ) A, '
         +        ' ( '
         +            'select asoid, freg, sum(nvl(cremtocob, 0)) COB_EFE from CRE310 '
         +            ' where freg>='+QuotedStr(DM1.cdsQry1.fieldbyname('FECINI').AsString)
         +              ' and freg<='+QuotedStr(DM1.cdsQry1.fieldbyname('FECFIN').AsString)
         +            '   and FORPAGID IN (''02'',''03'') AND CREESTID IN (''21'',''23'',''27'') '
         +            ' group by asoid, freg '
         +        ' ) c '
         +   'where a.asoid=c.asoid(+) '
         +    ' and freg>=a.fecha and COB_EFE>0 '
         +   '  ) ';
   DM1.cdsQry6.Close;
   DM1.cdsQry6.DataRequest(xsSQL);
   DM1.cdsQry6.Open;

   DBChartEFEBANMeta.Title.Text.Clear;
   DBChartEFEBANMeta.Title.Text.Add('Meta Efe/ban Cobrado vs Avance Cobrado');
   DBChartEFEBANMeta.Legend.Visible := true;
   DBChartEFEBANMeta.View3D := false;
   DBChartEFEBANMeta.SeriesList.Clear;

   DBChartEFEBANMeta.AddSeries(TBarSeries.Create(self));
   DBChartEFEBANMeta.Series[0].DataSource := DM1.cdsQry6;
   DBChartEFEBANMeta.Series[0].XLabelsSource := 'TITULO';
   DBChartEFEBANMeta.Series[0].YValues.ValueSource := 'TOTAL';
   DBChartEFEBANMeta.Series[0].valueFormat := '##,###,###.00';
   DBChartEFEBANMeta.Series[0].Name := 'EfeBanMeta';
   fn_formato_barseries(DBChartEFEBANMeta.Series[0]);

   //
   DM1.cdsQry5.Last;
   DM1.cdsQry6.Last;
   //a
   lblMetaRef.Caption := FormatFloat('###,##0.#0', DM1.cdsQry1.fieldbyname('METSALREF').AsFloat);
   lblMetaEfeBan.Caption := FormatFloat('###,##0.#0', DM1.cdsQry1.fieldbyname('METSALEFEBAN').AsFloat);
   lblMetaTotal.Caption := FormatFloat('###,##0.#0', DM1.cdsQry1.fieldbyname('METSALREF').AsFloat + DM1.cdsQry1.fieldbyname('METSALEFEBAN').AsFloat);
   //b
   lblAlcanceRef.Caption := FormatFloat('###,##0.#0', DM1.cdsQry5.fieldbyname('SALDO_VENCIDO').AsFloat);
   lblAlcanceEfeBan.Caption := FormatFloat('###,##0.#0', DM1.cdsQry6.fieldbyname('TOTAL').AsFloat);
   lblAlcanceTotal.Caption := FormatFloat('###,##0.#0', DM1.cdsQry5.fieldbyname('SALDO_VENCIDO').AsFloat + DM1.cdsQry6.fieldbyname('TOTAL').AsFloat);
   //(b/a)*100
   lblPorRef.Caption := FormatFloat('##0.#0', (DM1.cdsQry5.fieldbyname('SALDO_VENCIDO').AsFloat / DM1.cdsQry1.fieldbyname('METSALREF').AsFloat) * 100) + '%';
   lblPorEfeBan.Caption := FormatFloat('##0.#0', (DM1.cdsQry6.fieldbyname('TOTAL').AsFloat / DM1.cdsQry1.fieldbyname('METSALEFEBAN').AsFloat) * 100) + '%';
   lblPorTotal.Caption := FormatFloat('##0.#0', ((DM1.cdsQry5.fieldbyname('SALDO_VENCIDO').AsFloat + DM1.cdsQry6.fieldbyname('TOTAL').AsFloat) / (DM1.cdsQry1.fieldbyname('METSALREF').AsFloat + DM1.cdsQry1.fieldbyname('METSALEFEBAN').AsFloat)) * 100) + '%';
   //b-a
   lblDifRef.Caption := FormatFloat('###,##0.#0', DM1.cdsQry5.fieldbyname('SALDO_VENCIDO').AsFloat - DM1.cdsQry1.fieldbyname('METSALREF').AsFloat);
   lblDifEfeBan.Caption := FormatFloat('###,##0.#0', DM1.cdsQry6.fieldbyname('TOTAL').AsFloat - DM1.cdsQry1.fieldbyname('METSALEFEBAN').AsFloat);
   lblDifTotal.Caption := FormatFloat('###,##0.#0', (DM1.cdsQry5.fieldbyname('SALDO_VENCIDO').AsFloat + DM1.cdsQry6.fieldbyname('TOTAL').AsFloat) - (DM1.cdsQry1.fieldbyname('METSALREF').AsFloat + DM1.cdsQry1.fieldbyname('METSALEFEBAN').AsFloat));

   //fechas
   xsSQL := 'SELECT sysdate fecha from dual';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xsSQL);
   DM1.cdsQry.Open;

   lblMaxFecha.Caption := 'Datos Procesados al : ' + DM1.cdsQry.fieldbyname('FECHA').AsString;

   FormResize(self);
   imgCapturarPanel.Visible := false;
   Screen.Cursor := crDefault;
   // Fin: SPP_201301_GESCOB Se cambian los Parametros de las metas
End;

//******************************************************************************
// Nombre : btnSalirClick
// Descripcion : Salir
//******************************************************************************

Procedure TFMantControlCampanhasMetas.btnSalirClick(Sender : TObject);
Begin
   Try
      Close;
   Finally
   End;
End;

//******************************************************************************
// Nombre : btnImprimirClick
// Descripcion : Imprimir
//******************************************************************************

Procedure TFMantControlCampanhasMetas.btnImprimirClick(
   Sender : TObject);
   // Inicio: DPP_201205_GESCOB
   (*
   Procedure fn_grabar_img_panel(wgPanel : TPanel; wgArchivo : String);
   Begin
      imgCapturarPanel.Height := wgPanel.Height;
      imgCapturarPanel.Width := wgPanel.Width;
      imgCapturarPanel.Canvas.CopyRect(imgCapturarPanel.ClientRect, TPanelGrafico(wgPanel).Canvas, wgPanel.ClientRect);
      imgCapturarPanel.Picture.SaveToFile(wgArchivo);
   End;

   Procedure fn_colocar_chart_reporte(wgDBChart : TDBChart; wgWidth : integer; wgHeight : integer; wgPPImage : TppImage);
   Var
      xxImage : TImage;
   Begin
      wgDBChart.Align := alNone;
      wgDBChart.Width := wgWidth;
      wgDBChart.Height := wgHeight;
      xxImage := TImage.Create(Nil);
      xxImage.Width := wgDBChart.Width;
      xxImage.Height := wgDBChart.Height;
      wgDBChart.Draw(xxImage.Canvas, xxImage.BoundsRect);
      wgDBChart.Align := alClient;
      wgPPImage.Picture := xxImage.Picture;
      xxImage.free;
   End;
   *)
  // Fin: DPP_201205_GESCOB
Var
   xxImage : TImage;
Begin
   // Inicio: DPP_201205_GESCOB

   //grabar imagen
   With DBChartREFMeta Do
   Begin
      Align := alNone;
      Width := 1000;
      Height := 280;
      xxImage := TImage.Create(Nil);
      xxImage.Width := Width;
      xxImage.Height := Height;
      Draw(xxImage.Canvas, xxImage.BoundsRect);
      ppImgREFMET.Picture := xxImage.Picture;
      xxImage.free;
      Align := alClient;
   End;

   With DBChartREF Do
   Begin
      Align := alNone;
      Width := 1000;
      Height := 280;
      xxImage := TImage.Create(Nil);
      xxImage.Width := Width;
      xxImage.Height := Height;
      Draw(xxImage.Canvas, xxImage.BoundsRect);
      ppImgREF.Picture := xxImage.Picture;
      xxImage.free;
      Align := alClient;
   End;

   With DBChartEFEBANMeta Do
   Begin
      Align := alNone;
      Width := 500;
      Height := 280;
      xxImage := TImage.Create(Nil);
      xxImage.Width := Width;
      xxImage.Height := Height;
      Draw(xxImage.Canvas, xxImage.BoundsRect);
      ppImgEFEBANMeta.Picture := xxImage.Picture;
      xxImage.free;
      Align := alClient;
   End;

   DM1.fn_grabar_img_panel(imgCapturarPanel, pnlInfDrch, 'GES_COB_CON_CAM_RESUMEN.BMP');
   ppImgResumen.Picture.LoadFromFile('GES_COB_CON_CAM_RESUMEN.BMP');

   // Fin: DPP_201205_GESCOB

   ppLblTit01.Caption := lblCampanha.Caption;
   ppLblTit02.Caption := lblRangoFechas.Caption;
   ppLblUser.Caption := 'Emitido Por :  ' + Trim(DM1.CrgDescrip('USERID=' + QuotedStr(Trim(DM1.wUsuario)), 'TGE006', 'USERNOM'));
   repRptMaestro.Print;
   //desRptMaestro.Show;

End;

//******************************************************************************
// Nombre : FormResize
// Descripcion : Redimension de paneles
//******************************************************************************

Procedure TFMantControlCampanhasMetas.FormResize(Sender : TObject);
Begin
   // Inicio: DPP_201205_GESCOB
   (*
   pnlIzda.Width := round(self.Width / 2);
   pnlIzdaSup.Height := round(pnlIzda.Height / 2);
   pnlDrchSup.Height := round(pnlDrch.Height / 2);
   *)
   pnlSupSup.Height := round(pnlSup.Height / 2);
   btnSalir.Left := pnlControles.Width - btnSalir.Width - 10;
   btnImprimir.Left := pnlControles.Width - btnImprimir.Width - 10 - btnSalir.Width - 10;
   // Fin: DPP_201205_GESCOB
End;

//******************************************************************************
// Nombre : FormClose
// Descripcion : Liberar Memoria
//******************************************************************************

Procedure TFMantControlCampanhasMetas.FormClose(Sender : TObject;
   Var Action : TCloseAction);
Begin
   Action := caFree;
End;

//******************************************************************************
// Nombre : DBChartREFDblClick
// Descripcion : Detallar Asociados
//******************************************************************************

Procedure TFMantControlCampanhasMetas.DBChartREFDblClick(Sender : TObject);
Var
   xsSQL : String;
   xxFrm : TFMantControlCampanhasMetasDet;
Begin
   Screen.Cursor := crHourGlass;
// Inicio: SPP_201301_GESCOB Se cambian los Parametros de las metas
   xsSQL := 'SELECT PAG.FECHA, APO.ASODNI, APO.ASOCODMOD, '
      + '           APO.ASOAPENOM, CFC.SALDOS_FV SALDO_VENCIDO '
      + '      FROM GES_COB_PAG_CON PAG, GES_COB_CON_CAM_UBI UBI, GES_COB_CFC000_DET CFC, APO201 APO ' //GES000
      + '     WHERE PAG.TIPPAG = ''REF'' '
      + '       AND PAG.FECHA BETWEEN ' + QuotedStr(DM1.cdsQry1.fieldbyname('FECINI').AsString)
      + '                     AND ' + QuotedStr(DM1.cdsQry1.fieldbyname('FECFIN').AsString)
      + '       AND PAG.ZIPID = UBI.ZIPID '
      + '       AND UBI.IDCONCAM = ' + DM1.cdsQry1.fieldbyname('IDCONCAM').AsString
      + '       AND CFC.PERIODO =  ' + QuotedStr(DM1.cdsQry1.fieldbyname('PERCAR').AsString)
      + '       AND CFC.ASOID = PAG.ASOID '
      + '       AND PAG.ASOID = APO.ASOID '
      + '     ORDER BY PAG.FECHA, APO.ASOAPENOM';
   DM1.cdsQry7.Close;
   DM1.cdsQry7.DataRequest(xsSQL);
   DM1.cdsQry7.Open;
// Fin: SPP_201301_GESCOB Se cambian los Parametros de las metas
   Screen.Cursor := crDefault;

   xxFrm := TFMantControlCampanhasMetasDet.Create(self);
   Try
      xxFrm.dbgDetalle.DataSource := DM1.dsQry7;
      xxFrm.lblCantRegistros.Caption := inttostr(DM1.cdsQry7.RecordCount) + ' Registros';
      xxFrm.ShowModal();
   Finally
      xxFrm.free;
   End;

End;

//******************************************************************************
// Nombre : DBChartREFMetaDblClick
// Descripcion : Detallar Asociados
//******************************************************************************

Procedure TFMantControlCampanhasMetas.DBChartREFMetaDblClick(
   Sender : TObject);
Var
   xsSQL : String;
   xxFrm : TFMantControlCampanhasMetasDet;
Begin
   Screen.Cursor := crHourGlass;
// Inicio: SPP_201301_GESCOB Se cambian los Parametros de las metas
   xsSQL:='Select DISTINCT A.ASOID, A.FREG FECHA, x.ASODNI, X.ASOCODMOD, x.ASOAPENOM, a.COB_REF SALDO_VENCIDO'
         +'           from (select asoid, freg, sum(nvl(cremtocob, 0)) COB_REF '
         +'                   from CRE310 '
         +                 ' where freg>='+QuotedStr(DM1.cdsQry1.fieldbyname('FECINI').AsString)
         +                   ' and freg<='+QuotedStr(DM1.cdsQry1.fieldbyname('FECFIN').AsString)
         +'                    and FORPAGID IN (''12'') AND CREESTID IN (''12'') '
         +'                  group by asoid, freg ) A, '
         +'                  APO201 X, '
         +'                 (select * from GES_COB_CON_CAM_UBI where IDCONCAM = '+ DM1.cdsQry1.fieldbyname('IDCONCAM').AsString+' order by zipid) Z '
         +'          where a.asoid = x.asoid '
         +'            and x.zipid = z.zipid ';

// Fin: SPP_201301_GESCOB
   DM1.cdsQry7.Close;
   DM1.cdsQry7.DataRequest(xsSQL);
   DM1.cdsQry7.Open;
   Screen.Cursor := crDefault;

   xxFrm := TFMantControlCampanhasMetasDet.Create(self);
   Try
      xxFrm.dbgDetalle.DataSource := DM1.dsQry7;
      xxFrm.lblCantRegistros.Caption := inttostr(DM1.cdsQry7.RecordCount) + ' Registros';
      xxFrm.ShowModal();
      btnImprimir.SetFocus;
   Finally
      xxFrm.free;
   End;
End;

//******************************************************************************
// Nombre : DBChartREFMetaDblClick
// Descripcion : Detallar Asociados
//******************************************************************************

Procedure TFMantControlCampanhasMetas.DBChartEFEBANMetaDblClick(
   Sender : TObject);
Var
   xsSQL : String;
   xxFrm : TFMantControlCampanhasMetasDet;
Begin
   Screen.Cursor := crHourGlass;
   // Inicio: SPP_201301_GESCOB Se cambian los Parametros de las metas
   xsSQL:='select DISTINCT A.ASOID, A.FECHA, ASODNI, ASOCODMOD, ASOAPENOM, ZIPID, C.COB_EFE SALDO_VENCIDO, C.FREG '
         +    'from '
         +        ' ( '
         +           'SELECT A.* '
         +             'FROM ( '

         +              '  SELECT XX, asoid, fecha, ZIPID, ASODNI, ASOCODMOD, ASOAPENOM, HORA, '
         +              '                                 DENSE_RANK() OVER(PARTITION BY ASOID ORDER BY ASOID, FECHA ASC, HORA DESC) DRNK '
         +              '                                 FROM '
         +              '                                 ( '
         +              '                          select ''1'' XX, A.asoid, a.fecha, X.ZIPID, X.ASODNI, ASOCODMOD, ASOAPENOM, HORA '
         +              '                            from GES_COB_SEG A, GES_REF_SEG_DET B, APO201 X '
         +                                         'where a.fecha>='+QuotedStr(DM1.cdsQry1.fieldbyname('FECINI').AsString)
         +                                          ' and a.fecha<='+QuotedStr(DM1.cdsQry1.fieldbyname('FECFIN').AsString)
         +              '                             and a.idgestion = b.idgtn(+) and a.idgestiondet = b.idgtndet(+) and b.contactado = ''S'' and nvl(b.directo, ''N'') = ''S'' '
         +              '                             and a.asoid = x.asoid(+) '
         +              '                           union ALL '
         +              '                          SELECT ''2'' XX, A.ASOID, A.FREG, X.ZIPID, X.ASODNI, X.ASOCODMOD, X.ASOAPENOM, TO_CHAR(A.HREG,''HH:MI:SS'') HREG '
         +              '                            FROM cob_ate_aso A, APO201 X '
         +                                        ' where A.freg>='+QuotedStr(DM1.cdsQry1.fieldbyname('FECINI').AsString)
         +                                          ' and A.freg<='+QuotedStr(DM1.cdsQry1.fieldbyname('FECFIN').AsString)
         +              '                             and a.asoid = x.asoid(+) '
         +              '                             ) '

         +                '  ) A, (select * from GES_COB_CON_CAM_UBI where IDCONCAM = '+DM1.cdsQry1.fieldbyname('IDCONCAM').AsString+' order by zipid) Z '
         +            'WHERE DRNK = 1 '
         +             ' and a.zipid = z.zipid '
         +        ' ) A, '
         +        ' ( '
         +            'select asoid, freg, sum(nvl(cremtocob, 0)) COB_EFE from CRE310 '
         +            ' where freg>='+QuotedStr(DM1.cdsQry1.fieldbyname('FECINI').AsString)
         +              ' and freg<='+QuotedStr(DM1.cdsQry1.fieldbyname('FECFIN').AsString)
         +            '   and FORPAGID IN (''02'',''03'') AND CREESTID IN (''21'',''23'',''27'') '
         +            ' group by asoid, freg '
         +        ' ) c '
         +   'where a.asoid=c.asoid(+) '
         +    ' and freg>=a.fecha and COB_EFE>0 ';
   DM1.cdsQry7.Close;
   DM1.cdsQry7.DataRequest(xsSQL);
   DM1.cdsQry7.Open;
// Fin: SPP_201301_GESCOB Se cambian los Parametros de las metas


   Screen.Cursor := crDefault;

   xxFrm := TFMantControlCampanhasMetasDet.Create(self);
   Try
      xxFrm.dbgDetalle.DataSource := DM1.dsQry7;
      xxFrm.lblCantRegistros.Caption := inttostr(DM1.cdsQry7.RecordCount) + ' Registros';
      xxFrm.ShowModal();
      btnImprimir.SetFocus;
   Finally
      xxFrm.free;
   End;
End;
End.
