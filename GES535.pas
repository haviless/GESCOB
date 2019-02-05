// Inicio Uso Estándares: 01/08/2011
// Unidad : Gestión de Cobranzas
// Formulario : TFCantidadAsignados
// Fecha de Creación : 13/02/2012
// Autor : Equipo de Sistemas
// Objetivo :  Saber la Cantidad de asociados Asignados a los gestores
// Actualizaciones:
// HPC_201203_GESCOB 13/02/2012 reporte de cantidad de asignados
// HPC_201204_GESCOB 20/02/2012 reporte de cantidad de asignados - Detalle
// HPC_201204_GESCOB 21/02/2012 agregar totales en reporte de asignados
// HPC_201205_GESCOB 24/02/2012 mostrar graficos de distribucion del modelo prodictivo
// HPC_201205_GESCOB 06/03/2012 liberar memoria al imprimir los distintos graficos estadisticos
// DPP_201205_GESCOB: Pase a producción a partir de los pases HPC_201205 y HPC_201206

Unit GES535;

Interface

// Inicio: DPP_201205_GESCOB
Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, Buttons, ExtCtrls, Grids, Wwdbigrd, Wwdbgrid, wwExport, shellapi, db,
   ppParameter, ppBands, ppCtrls, ppVar, ppPrnabl, ppClass, ppCache, ppProd,
   ppReport, ppRelatv, ppDB, ppDBPipe, ppComm, ppEndUsr, ComCtrls,
   TeEngine, Series, TeeProcs, Chart, StrUtils, ppStrtch, ppSubRpt;
// Fin: DPP_201205_GESCOB

Type
   TFCantidadAsignados = Class(TForm)
      pnlControles : TPanel;
      btnExportarPrioridades : TBitBtn;
      btnSalir : TBitBtn;
      // Inicio: DPP_201205_GESCOB
      btnImprimirPrioridades : TBitBtn;
      // Fin: DPP_201205_GESCOB
      desRptPrincipal : TppDesigner;
      dbpRptPrioridades : TppDBPipeline;
      repRptPrioridades : TppReport;
      ppParameterList1 : TppParameterList;
      // Inicio: DPP_201205_GESCOB
      pctrPrincipal : TPageControl;
      tsPrincipalPrioridades : TTabSheet;
      tsPrincipalRegla : TTabSheet;
      pnlPrincipalGraficosPrioridades : TPanel;
      imgCapturarPanel : TImage;
      dbgPrincipalPrioridades_01 : TwwDBGrid;
      dbgPrincipalPrioridades_02 : TwwDBGrid;
      dbgPrincipalReglas : TwwDBGrid;
      repRptReglas : TppReport;
      ppParameterList2 : TppParameterList;
      Bevel1 : TBevel;
      Bevel2 : TBevel;
      btnExportarReglas : TBitBtn;
      btnImprimirReglas : TBitBtn;
      dbpRptReglas : TppDBPipeline;
      ppHeaderBand1 : TppHeaderBand;
      ppLabel7 : TppLabel;
      ppLabel8 : TppLabel;
      ppLabel9 : TppLabel;
      ppLabel10 : TppLabel;
      ppLabel11 : TppLabel;
      ppSystemVariable1 : TppSystemVariable;
      ppSystemVariable2 : TppSystemVariable;
      ppSystemVariable3 : TppSystemVariable;
      ppLblTitReglas01 : TppLabel;
      ppLabel13 : TppLabel;
      ppLabel14 : TppLabel;
      ppLabel15 : TppLabel;
      ppLblTitReglas02 : TppLabel;
      ppLabel17 : TppLabel;
      ppLabel18 : TppLabel;
      ppLabel19 : TppLabel;
      ppLabel20 : TppLabel;
      ppLabel21 : TppLabel;
      ppLine16 : TppLine;
      ppLine17 : TppLine;
      ppLine18 : TppLine;
      ppLine19 : TppLine;
      ppLine20 : TppLine;
      ppLine21 : TppLine;
      ppLine22 : TppLine;
      ppLine23 : TppLine;
      ppSubReport1 : TppSubReport;
      ppChildReport1 : TppChildReport;
      ppTitleBand1 : TppTitleBand;
      ppShape1 : TppShape;
      ppLabel12 : TppLabel;
      ppLabel16 : TppLabel;
      ppLabel22 : TppLabel;
      ppLabel24 : TppLabel;
      ppLabel25 : TppLabel;
      ppLine33 : TppLine;
      ppLabel26 : TppLabel;
      ppLine31 : TppLine;
      ppLine32 : TppLine;
      ppLine34 : TppLine;
      ppLine35 : TppLine;
      ppLabel27 : TppLabel;
      ppLine36 : TppLine;
      ppDetailBand2 : TppDetailBand;
      ppLine37 : TppLine;
      ppedFila : TppDBText;
      ppedCol_01 : TppDBText;
      ppedCol_02 : TppDBText;
      ppedCol_03 : TppDBText;
      ppedCol_04 : TppDBText;
      ppedCol_05 : TppDBText;
      ppedCol_06 : TppDBText;
      ppLine38 : TppLine;
      ppLine39 : TppLine;
      ppLine40 : TppLine;
      ppLine41 : TppLine;
      ppLine42 : TppLine;
      ppLine43 : TppLine;
      ppLine44 : TppLine;
      ppLine45 : TppLine;
      ppSummaryBand2 : TppSummaryBand;
      ppDetailBand1 : TppDetailBand;
      ppDBText6 : TppDBText;
      ppDBText7 : TppDBText;
      ppDBText8 : TppDBText;
      ppDBText9 : TppDBText;
      ppDBText10 : TppDBText;
      ppLine24 : TppLine;
      ppLine25 : TppLine;
      ppLine26 : TppLine;
      ppLine27 : TppLine;
      ppLine28 : TppLine;
      ppLine29 : TppLine;
      ppLine30 : TppLine;
      ppsColorRegla : TppShape;
      ppFooterBand1 : TppFooterBand;
      ppLblUserReglas : TppLabel;
      ppSummaryBand1 : TppSummaryBand;
      ppDBCalc4 : TppDBCalc;
      ppLabel23 : TppLabel;
      ppDBCalc5 : TppDBCalc;
      ppDBCalc6 : TppDBCalc;
      ppsColorReglaCol_01 : TppShape;
      ppsColorReglaCol_02 : TppShape;
      ppsColorReglaCol_03 : TppShape;
      ppsColorReglaCol_04 : TppShape;
      ppsColorReglaCol_05 : TppShape;
      ppsColorReglaCol_06 : TppShape;
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
      ppLabel1 : TppLabel;
      ppLabel2 : TppLabel;
      ppLabel3 : TppLabel;
      ppLabel4 : TppLabel;
      ppLabel5 : TppLabel;
      ppLine1 : TppLine;
      ppLine2 : TppLine;
      ppLine5 : TppLine;
      ppLine4 : TppLine;
      ppLine6 : TppLine;
      ppLine7 : TppLine;
      ppLine8 : TppLine;
      ppLine9 : TppLine;
      ppImgReportePrincipal : TppImage;
      ppDetailBand44 : TppDetailBand;
      ppDBText1 : TppDBText;
      ppDBText2 : TppDBText;
      ppDBText3 : TppDBText;
      ppDBText4 : TppDBText;
      ppDBText5 : TppDBText;
      ppLine3 : TppLine;
      ppLine10 : TppLine;
      ppLine11 : TppLine;
      ppLine12 : TppLine;
      ppLine13 : TppLine;
      ppLine14 : TppLine;
      ppLine15 : TppLine;
      ppsColorPrioridad : TppShape;
      ppFooterBand36 : TppFooterBand;
      ppLblUser : TppLabel;
      ppSummaryBand41 : TppSummaryBand;
      ppDBCalc1 : TppDBCalc;
      ppLabel6 : TppLabel;
      ppDBCalc2 : TppDBCalc;
      ppDBCalc3 : TppDBCalc;
      Procedure btnSalirClick(Sender : TObject);
      Procedure FormClose(Sender : TObject; Var Action : TCloseAction);
      Procedure FormShow(Sender : TObject);
      Procedure btnExportarPrioridadesClick(Sender : TObject);
      Procedure btnImprimirPrioridadesClick(Sender : TObject);
      Procedure dbgPrincipalPrioridades_01DblClick(Sender : TObject);
      Procedure dbgPrincipalReglasDrawDataCell(Sender : TObject;
         Const Rect : TRect; Field : TField; State : TGridDrawState);
      Procedure dbgPrincipalPrioridades_02DrawDataCell(Sender : TObject;
         Const Rect : TRect; Field : TField; State : TGridDrawState);
      Procedure dbgPrincipalReglasDblClick(Sender : TObject);
      Procedure btnExportarReglasClick(Sender : TObject);
      Procedure btnImprimirReglasClick(Sender : TObject);
      Procedure ppDetailBand44BeforePrint(Sender : TObject);
      Procedure ppDetailBand2BeforePrint(Sender : TObject);
      // Fin: DPP_201205_GESCOB
   Private
    { Private declarations }
      xsPeriodoGestion : String;
      // Inicio: DPP_201205_GESCOB
      Procedure fn_mostrar_prioridades;
      Procedure fn_crear_graficos_prioridades;
      Procedure fn_mostrar_detalle_prioridades(wgCodigoPrioridad : String);
      Procedure ChartPrioridadDblClick(Sender : TObject);
      Procedure fn_mostrar_matriz;
      Procedure fn_mostrar_detalle_reglas(wgCodigoRegla : String);
      // Fin: DPP_201205_GESCOB
   Public
   End;

Var
   FCantidadAsignados : TFCantidadAsignados;

Implementation

// Inicio: DPP_201205_GESCOB
Uses GESDM1, GES536;
// Fin: DPP_201205_GESCOB

{$R *.dfm}

//******************************************************************************
// Nombre : btnSalirClick
// Descripcion : Cerrar el formulario
//******************************************************************************

Procedure TFCantidadAsignados.btnSalirClick(Sender : TObject);
Begin
   Close;
End;

//******************************************************************************
// Nombre : FormClose
// Descripcion : Liberar la memoria despues de cerrar el formulario
//******************************************************************************

Procedure TFCantidadAsignados.FormClose(Sender : TObject;
   Var Action : TCloseAction);
Begin
   Action := caFree;
End;

//******************************************************************************
// Nombre : btnExportarClick
// Descripcion : exportar las prioridades a excel
//******************************************************************************
// Inicio: DPP_201205_GESCOB

Procedure TFCantidadAsignados.btnExportarPrioridadesClick(Sender : TObject);
Begin
   pctrPrincipal.ActivePage := tsPrincipalPrioridades;
   Screen.Cursor := crHourGlass;
   Try
      With dbgPrincipalPrioridades_01, dbgPrincipalPrioridades_01.ExportOptions Do
      Begin
         ExportType := wwgetSYLK;
         FileName := 'Prioridades.slk';
         DM1.OpcionesExportExcel(dbgPrincipalPrioridades_01.ExportOptions);
         dbgPrincipalPrioridades_01.ExportOptions.TitleName := 'Prioridades';
         Save;
         If Not (esoClipboard In Options) Then
            ShellExecute(Handle, 'Open', PChar(dbgPrincipalPrioridades_01.exportoptions.Filename), Nil, Nil, sw_shownormal);
      End;
      Screen.Cursor := crDefault;
   Except
      Screen.Cursor := crDefault;
      MessageDlg('No se puede grabar el Archivo ' + chr(13) + 'Cierre todos los Archivos en Excel y vuelva a intentarlo', mtWarning, [mbOk], 0);
   End;
End;

//******************************************************************************
// Nombre : fn_crear_graficos_prioridades
// Descripcion : Crea los graficos en base a los datos obtenidos
//******************************************************************************

Procedure TFCantidadAsignados.fn_crear_graficos_prioridades();
Var
   xnTop : integer;
   xnLeft : integer;
   xnContX : integer;
   xnContY : integer;
   xxTitulo : TStringList;
   xnValorAsignado : integer;
   xnValorPorAsignar : integer;
   xnWidthChart : integer;
   xnHeightChart : integer;
   xsCodigo : String;

   Procedure fn_adicionar_grafico_prioridades(wgTop : integer; wgLeft : integer;
      wgWidthChart : integer; wgHeightChart : integer;
      wgCodigo : String; wgTitulo : TStringList;
      wgValorAsignado : integer; wgValorPorAsignar : integer);
   Var
      xxChart : TChart;
   Begin
      xxChart := TChart.Create(self);
      xxChart.Hint := wgCodigo; (* PARA MOSTRAR EL DETALLE *)
      xxChart.Parent := pnlPrincipalGraficosPrioridades;
      xxChart.Legend.Alignment := laBottom;
      xxChart.Legend.ShadowSize := 0;
      xxChart.Legend.ColorWidth := 5;
      xxChart.Legend.TopPos := 0;
      xxChart.Top := wgTop;
      xxChart.Left := wgLeft;
      xxChart.Width := wgWidthChart;
      xxChart.Height := wgHeightChart;
      xxChart.Color := clWhite;
      xxChart.View3D := True;
      xxChart.BorderWidth := 1;
      xxChart.BorderStyle := bsNone;
      xxChart.BevelInner := bvRaised;
      xxChart.BevelOuter := bvLowered;
      xxChart.Title.Visible := True;
      xxChart.Title.Text.Clear;
      xxChart.Title.Text.AddStrings(wgTitulo);
      xxChart.Title.Font.Style := [fsBold];
      xxChart.Title.Font.Color := clBlack;
      xxChart.SeriesList.Clear;
      xxChart.AddSeries(TPieSeries.Create(self));
      xxChart.Series[0].Add(wgValorAsignado, 'Asignado', clYellow);
      xxChart.Series[0].Add(wgValorPorAsignar, 'Por Asignar', clRed);
      xxChart.Series[0].valueFormat := '##,###,##0';
      xxChart.Series[0].Marks.Visible := False;
      xxChart.Series[0].Marks.Style := smsValue;
      xxChart.OnDblClick := ChartPrioridadDblClick;
   End;
Begin
   xnTop := 0;
   xnLeft := 0;
   xnContX := 0;
   xnContY := 0;
   xnWidthChart := 160;
   xnHeightChart := 140;
   DM1.cdsQry1.First;
   While Not DM1.cdsQry1.Eof Do
   Begin
      xnContX := xnContX + 1;
      xnTop := xnHeightChart * xnContY;
      xxTitulo := TStringList.Create();
      xxTitulo.Add(DM1.cdsQry1.fieldbyname('DESCRIPCION_PRIORIDAD').AsString);
      xxTitulo.Add(DM1.FormatoNumerosEnteros(DM1.cdsQry1.fieldbyname('CANTIDAD_IDENTIFICADOS').AsString) + ' Identificados');
      xnValorAsignado := DM1.cdsQry1.fieldbyname('CANTIDAD_ASIGNADOS').AsInteger;
      xnValorPorAsignar := DM1.cdsQry1.fieldbyname('CANTIDAD_POR_ASIGNAR').AsInteger;
      xsCodigo := DM1.cdsQry1.fieldbyname('CODIGO_PRIORIDAD').AsString;
      fn_adicionar_grafico_prioridades(xnTop, xnLeft, xnWidthChart, xnHeightChart, xsCodigo, xxTitulo, xnValorAsignado, xnValorPorAsignar);
      If xnContX >= 3 Then
      Begin
         xnContX := 0;
         xnLeft := 0;
         xnContY := xnContY + 1;
      End
      Else
         xnLeft := xnLeft + xnWidthChart;

      DM1.cdsQry1.Next;
   End;
   DM1.cdsQry1.First;
End;

Procedure TFCantidadAsignados.fn_mostrar_prioridades();
Var
   xsSQL : String;
   xnCantidadIdentificados : Integer;
   xnCantidadAsignados : Integer;
   xnCantidadPorAsignar : Integer;

   Procedure fn_formato_grid(wgGrilla : TwwDBGrid);
   Begin
      wgGrilla.DataSource := DM1.dsQry1;
      With wgGrilla, wgGrilla.DataSource.DataSet Do
      Begin
         Selected.Clear;
         Selected.Add('CODIGO_PRIORIDAD'#9'8'#9'CODIGO');
         Selected.Add('DESCRIPCION_PRIORIDAD'#9'30'#9'PRIORIDAD');
         Selected.Add('CANTIDAD_IDENTIFICADOS'#9'10'#9'IDENTIFICADOS');
         Selected.Add('CANTIDAD_ASIGNADOS'#9'10'#9'ASIGNADOS');
         Selected.Add('CANTIDAD_POR_ASIGNAR'#9'10'#9'POR ASIGNAR');
         ApplySelected;
      End;
      TNumericField(wgGrilla.DataSource.DataSet.FieldByName('CANTIDAD_IDENTIFICADOS')).DisplayFormat := '###,##0';
      TNumericField(wgGrilla.DataSource.DataSet.FieldByName('CANTIDAD_ASIGNADOS')).DisplayFormat := '###,##0';
      TNumericField(wgGrilla.DataSource.DataSet.FieldByName('CANTIDAD_POR_ASIGNAR')).DisplayFormat := '###,##0';
      wgGrilla.ColumnByName('DESCRIPCION_PRIORIDAD').FooterValue := 'Totales';
      wgGrilla.ColumnByName('CANTIDAD_IDENTIFICADOS').FooterValue := FormatCurr('###,##0', xnCantidadIdentificados);
      wgGrilla.ColumnByName('CANTIDAD_ASIGNADOS').FooterValue := FormatCurr('###,##0', xnCantidadAsignados);
      wgGrilla.ColumnByName('CANTIDAD_POR_ASIGNAR').FooterValue := FormatCurr('###,##0', xnCantidadPorAsignar);
   End;
Begin
   xsSQL := 'SELECT AA.CODIGO_PRIORIDAD, AA.DESCRIPCION_PRIORIDAD, '
      + '           SUM(NVL(CC.CANTIDAD_IDENTIFICADOS,0)) CANTIDAD_IDENTIFICADOS, '
      + '           SUM(NVL(CC.CANTIDAD_ASIGNADOS,0)) CANTIDAD_ASIGNADOS, '
      + '           SUM(NVL(CC.CANTIDAD_POR_ASIGNAR,0)) CANTIDAD_POR_ASIGNAR '
      + '      FROM GES_COB_PRI AA, GES_COB_REG BB, '
      + '           (SELECT A.CODIGO_REGLA, A.CANTIDAD_IDENTIFICADOS, '
      + '                   NVL(B.CANTIDAD_ASIGNADOS, 0) CANTIDAD_ASIGNADOS, '
      + '                   (A.CANTIDAD_IDENTIFICADOS - NVL(B.CANTIDAD_ASIGNADOS, 0)) CANTIDAD_POR_ASIGNAR '
      + '              FROM (SELECT CODIGO_REGLA, SUM(1) CANTIDAD_IDENTIFICADOS '
      + '                      FROM GES_COB_CAB '
      + '                     WHERE PERIODO = ' + QuotedStr(xsPeriodoGestion)
      + '                     GROUP BY CODIGO_REGLA) A, '
      + '                   (SELECT CODIGO_REGLA, SUM(1) CANTIDAD_ASIGNADOS '
      + '                      FROM (SELECT DISTINCT ASOID, CODIGO_REGLA '
      + '                              FROM (SELECT ASOID, CODIGO_REGLA '
      + '                                      FROM GES_COB_DOM '
      + '                                     WHERE IDARCHIVO IS NULL '
      + '                                       AND CODIGO_REGLA IS NOT NULL '
      + '                                       AND PERIODO = ' + QuotedStr(xsPeriodoGestion)
      + '                                     UNION ALL '
      + '                                    SELECT ASOID, CODIGO_REGLA '
      + '                                      FROM GES_COB_IND '
      + '                                     WHERE IDARCHIVO IS NULL '
      + '                                       AND CODIGO_REGLA IS NOT NULL '
      + '                                       AND PERIODO = ' + QuotedStr(xsPeriodoGestion)
      + '                                    )) '
      + '                     GROUP BY CODIGO_REGLA) B '
      + '             WHERE A.CODIGO_REGLA = B.CODIGO_REGLA(+)) CC '
      + '     WHERE AA.CODIGO_PRIORIDAD = BB.CODIGO_PRIORIDAD '
      + '       AND BB.CODIGO_REGLA = CC.CODIGO_REGLA(+) '
      + '     GROUP BY AA.CODIGO_PRIORIDAD, AA.DESCRIPCION_PRIORIDAD '
      + '     ORDER BY AA.CODIGO_PRIORIDAD ';

   DM1.cdsQry1.Close;
   DM1.cdsQry1.DataRequest(xsSQL);
   DM1.cdsQry1.Open;

   xnCantidadIdentificados := 0;
   xnCantidadAsignados := 0;
   xnCantidadPorAsignar := 0;
   DM1.cdsQry1.First;
   While Not DM1.cdsQry1.Eof Do
   Begin
      xnCantidadIdentificados := xnCantidadIdentificados + DM1.cdsQry1.fieldbyname('CANTIDAD_IDENTIFICADOS').AsInteger;
      xnCantidadAsignados := xnCantidadAsignados + DM1.cdsQry1.fieldbyname('CANTIDAD_ASIGNADOS').AsInteger;
      xnCantidadPorAsignar := xnCantidadPorAsignar + DM1.cdsQry1.fieldbyname('CANTIDAD_POR_ASIGNAR').AsInteger;
      DM1.cdsQry1.Next;
   End;
   DM1.cdsQry1.First;
   fn_formato_grid(dbgPrincipalPrioridades_01);
   fn_formato_grid(dbgPrincipalPrioridades_02);
End;

Procedure TFCantidadAsignados.fn_mostrar_matriz();
Var
   xsSQL : String;

   Procedure fn_formato_grid(wgGrilla : TwwDBGrid);
   Begin
      wgGrilla.DataSource := DM1.dsQry3;
      With wgGrilla, wgGrilla.DataSource.DataSet Do
      Begin
         Selected.Clear;
         Selected.Add('FILA'#9'10'#9'A');
         Selected.Add('COL_01'#9'10'#9'0.00');
         Selected.Add('COL_02'#9'10'#9'0.01 - 0.24');
         Selected.Add('COL_03'#9'10'#9'0.25 - 0.49');
         Selected.Add('COL_04'#9'10'#9'0.50 - 0.74');
         Selected.Add('COL_05'#9'10'#9'0.75 - 0.99');
         Selected.Add('COL_06'#9'10'#9'1.00');
         ApplySelected;
      End;
      TNumericField(wgGrilla.DataSource.DataSet.FieldByName('COL_01')).DisplayFormat := '###,##0';
      TNumericField(wgGrilla.DataSource.DataSet.FieldByName('COL_02')).DisplayFormat := '###,##0';
      TNumericField(wgGrilla.DataSource.DataSet.FieldByName('COL_03')).DisplayFormat := '###,##0';
      TNumericField(wgGrilla.DataSource.DataSet.FieldByName('COL_04')).DisplayFormat := '###,##0';
      TNumericField(wgGrilla.DataSource.DataSet.FieldByName('COL_05')).DisplayFormat := '###,##0';
      TNumericField(wgGrilla.DataSource.DataSet.FieldByName('COL_06')).DisplayFormat := '###,##0';
   End;
Begin
   xsSQL := 'SELECT CASE WHEN FIL = 1 THEN ''0.00'' '
      + '                WHEN FIL = 2 THEN ''0.01 - 0.24'''
      + '                WHEN FIL = 3 THEN ''0.25 - 0.49'''
      + '                WHEN FIL = 4 THEN ''0.50 - 0.74'''
      + '                WHEN FIL = 5 THEN ''0.75 - 0.99'''
      + '                WHEN FIL = 6 THEN ''1.00'''
      + '            END FILA, FIL, MATRIZ, '
      + '           COL_01, COL_02, COL_03, COL_04, COL_05, COL_06'
      + '      FROM (SELECT SUBSTR(A.CODIGO_REGLA,1,1) MATRIZ, '
      + '                   SUBSTR(A.CODIGO_REGLA,2,1) FIL, '
      + '                   SUM(CASE WHEN SUBSTR(A.CODIGO_REGLA,3,1) = 1 AND B.ASOID IS NOT NULL THEN 1 ELSE 0 END) COL_01,'
      + '                   SUM(CASE WHEN SUBSTR(A.CODIGO_REGLA,3,1) = 2 AND B.ASOID IS NOT NULL THEN 1 ELSE 0 END) COL_02,'
      + '                   SUM(CASE WHEN SUBSTR(A.CODIGO_REGLA,3,1) = 3 AND B.ASOID IS NOT NULL THEN 1 ELSE 0 END) COL_03,'
      + '                   SUM(CASE WHEN SUBSTR(A.CODIGO_REGLA,3,1) = 4 AND B.ASOID IS NOT NULL THEN 1 ELSE 0 END) COL_04,'
      + '                   SUM(CASE WHEN SUBSTR(A.CODIGO_REGLA,3,1) = 5 AND B.ASOID IS NOT NULL THEN 1 ELSE 0 END) COL_05,'
      + '                   SUM(CASE WHEN SUBSTR(A.CODIGO_REGLA,3,1) = 6 AND B.ASOID IS NOT NULL THEN 1 ELSE 0 END) COL_06'
      + '              FROM GES_COB_REG A, GES_COB_CAB B'
      + '             WHERE A.CODIGO_REGLA = B.CODIGO_REGLA(+)'
      + '               AND B.PERIODO = ' + QuotedStr(xsPeriodoGestion)
      + '             GROUP BY SUBSTR(A.CODIGO_REGLA,1,1), SUBSTR(A.CODIGO_REGLA,2,1)'
      + '            )'
      + '     ORDER BY FIL';

   DM1.cdsQry3.Close;
   DM1.cdsQry3.DataRequest(xsSQL);
   DM1.cdsQry3.Open;
   fn_formato_grid(dbgPrincipalReglas);
End;
// Fin: DPP_201205_GESCOB

//******************************************************************************
// Nombre : FormShow
// Descripcion : Inicializar los controles
//******************************************************************************

Procedure TFCantidadAsignados.FormShow(Sender : TObject);
Var
   xsSQL : String;
Begin
   Screen.Cursor := crHourGlass;
   xsSQL := 'SELECT MAX(PERIODO) PERIODO FROM GES_COB_CAB';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xsSQL);
   DM1.cdsQry.Open;
   xsPeriodoGestion := DM1.cdsQry.FieldByname('PERIODO').AsString;
   // Inicio: DPP_201205_GESCOB
   fn_mostrar_prioridades();
   fn_crear_graficos_prioridades();
   fn_mostrar_matriz();
   pctrPrincipal.ActivePage := tsPrincipalPrioridades;
   // Fin: DPP_201205_GESCOB
   Screen.Cursor := crDefault;
End;

//******************************************************************************
// Nombre : btnImprimirPrioridadesClick
// Descripcion : Imprimir Reporte de prioridades
//******************************************************************************
// Inicio: DPP_201205_GESCOB

Procedure TFCantidadAsignados.btnImprimirPrioridadesClick(Sender : TObject);
   (***************************************************************************

   Procedure fn_grabar_img_panel(wgPanel : TPanel; wgArchivo : String);
   Begin
      imgCapturarPanel.Height := wgPanel.Height;
      imgCapturarPanel.Width := wgPanel.Width;
      imgCapturarPanel.Canvas.CopyRect(imgCapturarPanel.ClientRect, wgPanel.Canvas, wgPanel.ClientRect);
      imgCapturarPanel.Picture.SaveToFile(wgArchivo);
   End;
   ***************************************************************************)
Begin
   pctrPrincipal.ActivePage := tsPrincipalPrioridades;
   DM1.fn_grabar_img_panel(imgCapturarPanel, pnlPrincipalGraficosPrioridades, 'GRA_DIS_MOD_PRO.BMP');
   ppImgReportePrincipal.Picture.LoadFromFile('GRA_DIS_MOD_PRO.BMP');
   ppLblTit01.Caption := 'Reporte de Asociados Identificados y Asignados por Prioridades';
   ppLblTit02.Caption := '';
   ppLblUser.Caption := 'Emitido Por :  ' + Trim(DM1.CrgDescrip('USERID=' + QuotedStr(Trim(DM1.wUsuario)), 'TGE006', 'USERNOM'));
   dbpRptPrioridades.DataSource := DM1.dsQry1;
   repRptPrioridades.Print;
   //desRptPrincipal.Show;
End;
// Fin: DPP_201205_GESCOB

// Inicio: DPP_201205_GESCOB
//******************************************************************************
// Nombre : dbgPrincipalDblClick
// Descripcion : Mostrar el detalle de los Idenficados
//******************************************************************************

Procedure TFCantidadAsignados.fn_mostrar_detalle_prioridades(wgCodigoPrioridad : String);
Var
   xxFrm : TFCantidadIdentificados;
Begin
   If DM1.cdsQry1.RecordCount > 0 Then
   Begin
      xxFrm := TFCantidadIdentificados.Create(self);
      Try
         xxFrm.xsPeriodoGestion := self.xsPeriodoGestion;
         xxFrm.xsCodigoPrioridad := wgCodigoPrioridad;
         xxFrm.showModal;
      Finally
         xxFrm.Free;
      End;
   End;
End;

//******************************************************************************
// Nombre : dbgPrincipalPrioridades_01DblClick
// Descripcion : Muestra el detalle de la prioridad seleccionada
//******************************************************************************

Procedure TFCantidadAsignados.dbgPrincipalPrioridades_01DblClick(Sender : TObject);
Begin
   fn_mostrar_detalle_prioridades(DM1.cdsQry1.fieldbyname('CODIGO_PRIORIDAD').AsString);
End;

//******************************************************************************
// Nombre : ChartPrioridadDblClick
// Descripcion : Muestra el detalle de la prioridad seleccionada
//******************************************************************************

Procedure TFCantidadAsignados.ChartPrioridadDblClick(Sender : TObject);
Begin
   fn_mostrar_detalle_prioridades(TChart(sender).Hint);
End;

(*
//******************************************************************************
// Nombre : btnImprimirGraficosClick
// Descripcion : Imprime los graficos
//******************************************************************************

Procedure TFCantidadAsignados.btnImprimirGraficosClick(Sender : TObject);
   Procedure fn_grabar_img_panel(wgPanel : TPanel; wgArchivo : String);
   Begin
      imgCapturarPanel.Height := wgPanel.Height;
      imgCapturarPanel.Width := wgPanel.Width;
      imgCapturarPanel.Canvas.CopyRect(imgCapturarPanel.ClientRect, wgPanel.Canvas, wgPanel.ClientRect);
      imgCapturarPanel.Picture.SaveToFile(wgArchivo);
   End;
Begin
   fn_grabar_img_panel(pnlPrincipalGraficos, 'GRA_DIS_MOD_PRO.BMP');
   ppImgReporte.Picture.LoadFromFile('GRA_DIS_MOD_PRO.BMP');

   ppLblTitGra01.Caption := 'Control de Asignaciones del Modelo Probabilístico';
   ppLblTitGra02.Caption := '';
   ppLblUserGra.Caption := 'Emitido Por :  ' + Trim(DM1.CrgDescrip('USERID=' + QuotedStr(Trim(DM1.wUsuario)), 'TGE006', 'USERNOM'));
   repRptPrincipalGrafico.Print;
   //desRptPrincipal.Show;
End;
*)

//******************************************************************************
// Nombre : dbgPrincipalMatrizDrawDataCell
// Descripcion : da los colores a la matriz
//******************************************************************************

Procedure TFCantidadAsignados.dbgPrincipalReglasDrawDataCell(
   Sender : TObject; Const Rect : TRect; Field : TField;
   State : TGridDrawState);
Begin
   dbgPrincipalReglas.Canvas.Font.Color := clBlack;
   If (Field.FieldName = 'FILA') Then
   Begin
      dbgPrincipalReglas.Canvas.Font.Style := [fsBold];
   End
   Else
   Begin
      dbgPrincipalReglas.Canvas.Font.Style := [];
      If (DM1.cdsQry3.FieldByName('FIL').AsString = '1') And (Field.FieldName = 'COL_01') Then
         dbgPrincipalReglas.Canvas.Brush.Color := clRie0101;
      If (DM1.cdsQry3.FieldByName('FIL').AsString = '1') And (Field.FieldName = 'COL_02') Then
         dbgPrincipalReglas.Canvas.Brush.Color := clRie0101;
      If ((DM1.cdsQry3.FieldByName('FIL').AsString = '1') And (Field.FieldName = 'COL_03'))
         Or ((DM1.cdsQry3.FieldByName('FIL').AsString = '1') And (Field.FieldName = 'COL_04'))
         Or ((DM1.cdsQry3.FieldByName('FIL').AsString = '1') And (Field.FieldName = 'COL_05'))
         Or ((DM1.cdsQry3.FieldByName('FIL').AsString = '1') And (Field.FieldName = 'COL_06')) Then
      Begin
         dbgPrincipalReglas.Canvas.Font.Color := clWhite;
         dbgPrincipalReglas.Canvas.Brush.Color := clRieNoAplica;
      End;

      If (DM1.cdsQry3.FieldByName('FIL').AsString = '2') And (Field.FieldName = 'COL_01') Then
         dbgPrincipalReglas.Canvas.Brush.Color := clRie0101;
      If (DM1.cdsQry3.FieldByName('FIL').AsString = '2') And (Field.FieldName = 'COL_02') Then
         dbgPrincipalReglas.Canvas.Brush.Color := clRie0101;
      If (DM1.cdsQry3.FieldByName('FIL').AsString = '2') And (Field.FieldName = 'COL_03') Then
         dbgPrincipalReglas.Canvas.Brush.Color := clRie0102;
      If (DM1.cdsQry3.FieldByName('FIL').AsString = '2') And (Field.FieldName = 'COL_04') Then
         dbgPrincipalReglas.Canvas.Brush.Color := clRie0201;
      If (DM1.cdsQry3.FieldByName('FIL').AsString = '2') And (Field.FieldName = 'COL_05') Then
         dbgPrincipalReglas.Canvas.Brush.Color := clRie0203;
      If ((DM1.cdsQry3.FieldByName('FIL').AsString = '2') And (Field.FieldName = 'COL_06')) Then
      Begin
         dbgPrincipalReglas.Canvas.Font.Color := clWhite;
         dbgPrincipalReglas.Canvas.Brush.Color := clRieNoAplica;
      End;

      If (DM1.cdsQry3.FieldByName('FIL').AsString = '3') And (Field.FieldName = 'COL_01') Then
         dbgPrincipalReglas.Canvas.Brush.Color := clRie0102;
      If (DM1.cdsQry3.FieldByName('FIL').AsString = '3') And (Field.FieldName = 'COL_02') Then
         dbgPrincipalReglas.Canvas.Brush.Color := clRie0102;
      If (DM1.cdsQry3.FieldByName('FIL').AsString = '3') And (Field.FieldName = 'COL_03') Then
         dbgPrincipalReglas.Canvas.Brush.Color := clRie0102;
      If (DM1.cdsQry3.FieldByName('FIL').AsString = '3') And (Field.FieldName = 'COL_04') Then
         dbgPrincipalReglas.Canvas.Brush.Color := clRie0201;
      If (DM1.cdsQry3.FieldByName('FIL').AsString = '3') And (Field.FieldName = 'COL_05') Then
         dbgPrincipalReglas.Canvas.Brush.Color := clRie0203;
      If (DM1.cdsQry3.FieldByName('FIL').AsString = '3') And (Field.FieldName = 'COL_06') Then
         dbgPrincipalReglas.Canvas.Brush.Color := clRie0303;

      If (DM1.cdsQry3.FieldByName('FIL').AsString = '4') And (Field.FieldName = 'COL_01') Then
         dbgPrincipalReglas.Canvas.Brush.Color := clRie0103;
      If (DM1.cdsQry3.FieldByName('FIL').AsString = '4') And (Field.FieldName = 'COL_02') Then
         dbgPrincipalReglas.Canvas.Brush.Color := clRie0103;
      If (DM1.cdsQry3.FieldByName('FIL').AsString = '4') And (Field.FieldName = 'COL_03') Then
         dbgPrincipalReglas.Canvas.Brush.Color := clRie0103;
      If (DM1.cdsQry3.FieldByName('FIL').AsString = '4') And (Field.FieldName = 'COL_04') Then
         dbgPrincipalReglas.Canvas.Brush.Color := clRie0202;
      If (DM1.cdsQry3.FieldByName('FIL').AsString = '4') And (Field.FieldName = 'COL_05') Then
         dbgPrincipalReglas.Canvas.Brush.Color := clRie0203;
      If (DM1.cdsQry3.FieldByName('FIL').AsString = '4') And (Field.FieldName = 'COL_06') Then
         dbgPrincipalReglas.Canvas.Brush.Color := clRie0303;

      If (DM1.cdsQry3.FieldByName('FIL').AsString = '5') And (Field.FieldName = 'COL_01') Then
         dbgPrincipalReglas.Canvas.Brush.Color := clRie0103;
      If (DM1.cdsQry3.FieldByName('FIL').AsString = '5') And (Field.FieldName = 'COL_02') Then
         dbgPrincipalReglas.Canvas.Brush.Color := clRie0103;
      If (DM1.cdsQry3.FieldByName('FIL').AsString = '5') And (Field.FieldName = 'COL_03') Then
         dbgPrincipalReglas.Canvas.Brush.Color := clRie0103;
      If (DM1.cdsQry3.FieldByName('FIL').AsString = '5') And (Field.FieldName = 'COL_04') Then
         dbgPrincipalReglas.Canvas.Brush.Color := clRie0202;
      If (DM1.cdsQry3.FieldByName('FIL').AsString = '5') And (Field.FieldName = 'COL_05') Then
         dbgPrincipalReglas.Canvas.Brush.Color := clRie0203;
      If (DM1.cdsQry3.FieldByName('FIL').AsString = '5') And (Field.FieldName = 'COL_06') Then
         dbgPrincipalReglas.Canvas.Brush.Color := clRie0303;

      If ((DM1.cdsQry3.FieldByName('FIL').AsString = '6') And (Field.FieldName = 'COL_01'))
         Or ((DM1.cdsQry3.FieldByName('FIL').AsString = '6') And (Field.FieldName = 'COL_02'))
         Or ((DM1.cdsQry3.FieldByName('FIL').AsString = '6') And (Field.FieldName = 'COL_03'))
         Or ((DM1.cdsQry3.FieldByName('FIL').AsString = '6') And (Field.FieldName = 'COL_04')) Then
      Begin
         dbgPrincipalReglas.Canvas.Font.Color := clWhite;
         dbgPrincipalReglas.Canvas.Brush.Color := clRieNoAplica;
      End;
      If (DM1.cdsQry3.FieldByName('FIL').AsString = '6') And (Field.FieldName = 'COL_05') Then
         dbgPrincipalReglas.Canvas.Brush.Color := clRie0302;
      If (DM1.cdsQry3.FieldByName('FIL').AsString = '6') And (Field.FieldName = 'COL_06') Then
         dbgPrincipalReglas.Canvas.Brush.Color := clRie0303;

      If (gdFocused In State) Then
         dbgPrincipalReglas.Canvas.Font.Style := [fsBold];
   End;
   dbgPrincipalReglas.DefaultDrawDataCell(Rect, Field, State);
End;

//******************************************************************************
// Nombre : dbgPrincipalPrioridades_02DrawDataCell
// Descripcion : da los colores a las prioridades
//******************************************************************************

Procedure TFCantidadAsignados.dbgPrincipalPrioridades_02DrawDataCell(
   Sender : TObject; Const Rect : TRect; Field : TField;
   State : TGridDrawState);
Begin
   TwwDBGrid(sender).Canvas.Font.Color := clBlack;
   TwwDBGrid(sender).Canvas.Font.Style := [];
   If (DM1.cdsQry1.FieldByName('CODIGO_PRIORIDAD').AsString = '0101') Then
      TwwDBGrid(sender).Canvas.Brush.Color := clRie0101;
   If (DM1.cdsQry1.FieldByName('CODIGO_PRIORIDAD').AsString = '0102') Then
      TwwDBGrid(sender).Canvas.Brush.Color := clRie0102;
   If (DM1.cdsQry1.FieldByName('CODIGO_PRIORIDAD').AsString = '0103') Then
      TwwDBGrid(sender).Canvas.Brush.Color := clRie0103;

   If (DM1.cdsQry1.FieldByName('CODIGO_PRIORIDAD').AsString = '0201') Then
      TwwDBGrid(sender).Canvas.Brush.Color := clRie0201;
   If (DM1.cdsQry1.FieldByName('CODIGO_PRIORIDAD').AsString = '0202') Then
      TwwDBGrid(sender).Canvas.Brush.Color := clRie0202;
   If (DM1.cdsQry1.FieldByName('CODIGO_PRIORIDAD').AsString = '0203') Then
      TwwDBGrid(sender).Canvas.Brush.Color := clRie0203;

   If (DM1.cdsQry1.FieldByName('CODIGO_PRIORIDAD').AsString = '0301') Then
      TwwDBGrid(sender).Canvas.Brush.Color := clRie0301;
   If (DM1.cdsQry1.FieldByName('CODIGO_PRIORIDAD').AsString = '0302') Then
      TwwDBGrid(sender).Canvas.Brush.Color := clRie0302;
   If (DM1.cdsQry1.FieldByName('CODIGO_PRIORIDAD').AsString = '0303') Then
      TwwDBGrid(sender).Canvas.Brush.Color := clRie0303;

   If (gdFocused In State) Then
      TwwDBGrid(sender).Canvas.Font.Style := [fsBold];
   TwwDBGrid(sender).DefaultDrawDataCell(Rect, Field, State);
End;

//******************************************************************************
// Nombre : fn_mostrar_detalle_reglas
// Descripcion : funcion que muestra los detalles de la regla seleccionada
//******************************************************************************

Procedure TFCantidadAsignados.fn_mostrar_detalle_reglas(wgCodigoRegla : String);
Var
   xxFrm : TFCantidadIdentificados;
Begin
   If DM1.cdsQry1.RecordCount > 0 Then
   Begin
      xxFrm := TFCantidadIdentificados.Create(self);
      Try
         xxFrm.xsPeriodoGestion := self.xsPeriodoGestion;
         xxFrm.xsCodigoRegla := wgCodigoRegla;
         xxFrm.showModal;
      Finally
         xxFrm.Free;
      End;
   End;
End;

//******************************************************************************
// Nombre : dbgPrincipalMatrizDblClick
// Descripcion : Muestra el detalle de la regla seleccionada
//******************************************************************************

Procedure TFCantidadAsignados.dbgPrincipalReglasDblClick(Sender : TObject);
Var
   xsCodigoRegla : String;
Begin
   If (dbgPrincipalReglas.FieldName(dbgPrincipalReglas.GetActiveCol) = 'COL_01')
      Or (dbgPrincipalReglas.FieldName(dbgPrincipalReglas.GetActiveCol) = 'COL_02')
      Or (dbgPrincipalReglas.FieldName(dbgPrincipalReglas.GetActiveCol) = 'COL_03')
      Or (dbgPrincipalReglas.FieldName(dbgPrincipalReglas.GetActiveCol) = 'COL_04')
      Or (dbgPrincipalReglas.FieldName(dbgPrincipalReglas.GetActiveCol) = 'COL_05')
      Or (dbgPrincipalReglas.FieldName(dbgPrincipalReglas.GetActiveCol) = 'COL_06') Then
   Begin
      xsCodigoRegla := DM1.cdsQry3.FieldByName('MATRIZ').AsString + DM1.cdsQry3.FieldByName('FIL').AsString + AnsiRightStr(dbgPrincipalReglas.FieldName(dbgPrincipalReglas.GetActiveCol), 1);
      fn_mostrar_detalle_reglas(xsCodigoRegla);
   End;
End;

//******************************************************************************
// Nombre : btnExportarReglasClick
// Descripcion : exportar las reglas a excel
//******************************************************************************

Procedure TFCantidadAsignados.btnExportarReglasClick(Sender : TObject);
Begin
   pctrPrincipal.ActivePage := tsPrincipalRegla;
   Screen.Cursor := crHourGlass;
   Try
      With dbgPrincipalReglas, dbgPrincipalReglas.ExportOptions Do
      Begin
         ExportType := wwgetSYLK;
         FileName := 'Reglas.slk';
         DM1.OpcionesExportExcel(dbgPrincipalReglas.ExportOptions);
         dbgPrincipalReglas.ExportOptions.TitleName := 'Reglas';
         Save;
         If Not (esoClipboard In Options) Then
            ShellExecute(Handle, 'Open', PChar(dbgPrincipalReglas.exportoptions.Filename), Nil, Nil, sw_shownormal);
      End;
      Screen.Cursor := crDefault;
   Except
      Screen.Cursor := crDefault;
      MessageDlg('No se puede grabar el Archivo ' + chr(13) + 'Cierre todos los Archivos en Excel y vuelva a intentarlo', mtWarning, [mbOk], 0);
   End;
End;

//******************************************************************************
// Nombre : btnImprimirReglasClick
// Descripcion : Imprimir Reporte de reglas
//******************************************************************************

Procedure TFCantidadAsignados.btnImprimirReglasClick(Sender : TObject);
Begin
   pctrPrincipal.ActivePage := tsPrincipalRegla;
   DM1.fn_grabar_img_panel(imgCapturarPanel, pnlPrincipalGraficosPrioridades, 'GRA_DIS_MOD_PRO.BMP');
   ppImgReportePrincipal.Picture.LoadFromFile('GRA_DIS_MOD_PRO.BMP');
   ppLblTitReglas01.Caption := 'Reporte de Asociados Identificados por Reglas';
   ppLblTitReglas02.Caption := '';
   ppLblUserReglas.Caption := 'Emitido Por :  ' + Trim(DM1.CrgDescrip('USERID=' + QuotedStr(Trim(DM1.wUsuario)), 'TGE006', 'USERNOM'));
   dbpRptPrioridades.DataSource := DM1.dsQry1;
   dbpRptReglas.DataSource := DM1.dsQry3;
   repRptReglas.Print;
   //desRptPrincipal.Show;
End;

//******************************************************************************
// Nombre : ppDetailBand44BeforePrint
// Descripcion : Mustra colores en el reporte de acuerdo a las prioridades
//******************************************************************************

Procedure TFCantidadAsignados.ppDetailBand44BeforePrint(Sender : TObject);
Begin
   If (DM1.cdsQry1.FieldByName('CODIGO_PRIORIDAD').AsString = '0101') Then
      ppsColorPrioridad.Brush.Color := clRie0101;
   If (DM1.cdsQry1.FieldByName('CODIGO_PRIORIDAD').AsString = '0102') Then
      ppsColorPrioridad.Brush.Color := clRie0102;
   If (DM1.cdsQry1.FieldByName('CODIGO_PRIORIDAD').AsString = '0103') Then
      ppsColorPrioridad.Brush.Color := clRie0103;

   If (DM1.cdsQry1.FieldByName('CODIGO_PRIORIDAD').AsString = '0201') Then
      ppsColorPrioridad.Brush.Color := clRie0201;
   If (DM1.cdsQry1.FieldByName('CODIGO_PRIORIDAD').AsString = '0202') Then
      ppsColorPrioridad.Brush.Color := clRie0202;
   If (DM1.cdsQry1.FieldByName('CODIGO_PRIORIDAD').AsString = '0203') Then
      ppsColorPrioridad.Brush.Color := clRie0203;

   If (DM1.cdsQry1.FieldByName('CODIGO_PRIORIDAD').AsString = '0301') Then
      ppsColorPrioridad.Brush.Color := clRie0301;
   If (DM1.cdsQry1.FieldByName('CODIGO_PRIORIDAD').AsString = '0302') Then
      ppsColorPrioridad.Brush.Color := clRie0302;
   If (DM1.cdsQry1.FieldByName('CODIGO_PRIORIDAD').AsString = '0303') Then
      ppsColorPrioridad.Brush.Color := clRie0303;

   ppsColorRegla.Brush.Color := ppsColorPrioridad.Brush.Color;
End;

//******************************************************************************
// Nombre : ppDetailBand2BeforePrint
// Descripcion : Mustra colores en el reporte de acuerdo a las reglas
//******************************************************************************

Procedure TFCantidadAsignados.ppDetailBand2BeforePrint(Sender : TObject);
Begin
   ppedCol_01.Font.Color := clBlack;
   ppedCol_02.Font.Color := clBlack;
   ppedCol_03.Font.Color := clBlack;
   ppedCol_04.Font.Color := clBlack;
   ppedCol_05.Font.Color := clBlack;
   ppedCol_06.Font.Color := clBlack;
   ppsColorReglaCol_01.Pen.Color := clBlack;
   ppsColorReglaCol_02.Pen.Color := clBlack;
   ppsColorReglaCol_03.Pen.Color := clBlack;
   ppsColorReglaCol_04.Pen.Color := clBlack;
   ppsColorReglaCol_05.Pen.Color := clBlack;
   ppsColorReglaCol_06.Pen.Color := clBlack;

   If (DM1.cdsQry3.FieldByName('FIL').AsString = '1') Then
   Begin
      ppsColorReglaCol_01.Brush.Color := clRie0101;
      ppsColorReglaCol_02.Brush.Color := clRie0101;
      ppsColorReglaCol_03.Brush.Color := clRieNoAplica;
      ppsColorReglaCol_04.Brush.Color := clRieNoAplica;
      ppsColorReglaCol_05.Brush.Color := clRieNoAplica;
      ppsColorReglaCol_06.Brush.Color := clRieNoAplica;
      ppsColorReglaCol_03.Pen.Color := clRieNoAplica;
      ppsColorReglaCol_04.Pen.Color := clRieNoAplica;
      ppsColorReglaCol_05.Pen.Color := clRieNoAplica;
      ppsColorReglaCol_06.Pen.Color := clRieNoAplica;
      ppedCol_03.Font.Color := clWhite;
      ppedCol_04.Font.Color := clWhite;
      ppedCol_05.Font.Color := clWhite;
      ppedCol_06.Font.Color := clWhite;
   End;

   If (DM1.cdsQry3.FieldByName('FIL').AsString = '2') Then
   Begin
      ppsColorReglaCol_01.Brush.Color := clRie0101;
      ppsColorReglaCol_02.Brush.Color := clRie0101;
      ppsColorReglaCol_03.Brush.Color := clRie0102;
      ppsColorReglaCol_04.Brush.Color := clRie0201;
      ppsColorReglaCol_05.Brush.Color := clRie0203;
      ppsColorReglaCol_06.Brush.Color := clRieNoAplica;
      ppsColorReglaCol_06.Pen.Color := clRieNoAplica;
      ppedCol_06.Font.Color := clWhite;
   End;

   If (DM1.cdsQry3.FieldByName('FIL').AsString = '3') Then
   Begin
      ppsColorReglaCol_01.Brush.Color := clRie0102;
      ppsColorReglaCol_02.Brush.Color := clRie0102;
      ppsColorReglaCol_03.Brush.Color := clRie0102;
      ppsColorReglaCol_04.Brush.Color := clRie0201;
      ppsColorReglaCol_05.Brush.Color := clRie0203;
      ppsColorReglaCol_06.Brush.Color := clRie0303;
   End;

   If (DM1.cdsQry3.FieldByName('FIL').AsString = '4') Then
   Begin
      ppsColorReglaCol_01.Brush.Color := clRie0103;
      ppsColorReglaCol_02.Brush.Color := clRie0103;
      ppsColorReglaCol_03.Brush.Color := clRie0103;
      ppsColorReglaCol_04.Brush.Color := clRie0202;
      ppsColorReglaCol_05.Brush.Color := clRie0203;
      ppsColorReglaCol_06.Brush.Color := clRie0303;
   End;

   If (DM1.cdsQry3.FieldByName('FIL').AsString = '5') Then
   Begin
      ppsColorReglaCol_01.Brush.Color := clRie0103;
      ppsColorReglaCol_02.Brush.Color := clRie0103;
      ppsColorReglaCol_03.Brush.Color := clRie0103;
      ppsColorReglaCol_04.Brush.Color := clRie0202;
      ppsColorReglaCol_05.Brush.Color := clRie0203;
      ppsColorReglaCol_06.Brush.Color := clRie0303;
   End;

   If (DM1.cdsQry3.FieldByName('FIL').AsString = '6') Then
   Begin
      ppsColorReglaCol_01.Brush.Color := clRieNoAplica;
      ppsColorReglaCol_02.Brush.Color := clRieNoAplica;
      ppsColorReglaCol_03.Brush.Color := clRieNoAplica;
      ppsColorReglaCol_04.Brush.Color := clRieNoAplica;
      ppsColorReglaCol_05.Brush.Color := clRie0302;
      ppsColorReglaCol_06.Brush.Color := clRie0303;
      ppsColorReglaCol_01.Pen.Color := clRieNoAplica;
      ppsColorReglaCol_02.Pen.Color := clRieNoAplica;
      ppsColorReglaCol_03.Pen.Color := clRieNoAplica;
      ppsColorReglaCol_04.Pen.Color := clRieNoAplica;
      ppedCol_01.Font.Color := clWhite;
      ppedCol_02.Font.Color := clWhite;
      ppedCol_03.Font.Color := clWhite;
      ppedCol_04.Font.Color := clWhite;
   End;

End;
// Fin: DPP_201205_GESCOB
End.

