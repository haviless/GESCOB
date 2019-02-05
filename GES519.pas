// Inicio Uso Estándares: 01/08/2011
// Unidad : Gestión de Cobranzas
// Formulario : TFCompararTrasladosTodasGes
// Fecha de Creación : 22/08/2012
// Autor : Equipo de Sistemas
// Objetivo : Comparar Traslados - Mostrar todas las Gestiones
// Actualizaciones:
// HPC_201206_GESCOB - F2 21/08/2012 MODIFICAR COMPARACION DE TRASLADO PARA QUE SE ASEMEJE A LA MATRIZ DE TRASLADO DEL MODULO DE RIESGOS
// DPP_201205_GESCOB: Pase a producción a partir de los pases HPC_201205 y HPC_201206 
// HPC_201208_GESCOB - F1 14/09/2012 OPTIMIZACION DE CONSULTAS DE COMPARACION DE TRASLADOS
// DPP_201207_GESCOB: Pase a producción a partir de los pases HPC_201208

Unit GES519;

Interface

Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, Grids, Wwdbigrd, Wwdbgrid, StdCtrls, Buttons, ExtCtrls, wwExport, shellapi,
   ppParameter, ppRegion, ppCtrls, ppBands, ppReport, ppStrtch, ppSubRpt,
   ppVar, ppPrnabl, ppClass, ppCache, ppProd, ppEndUsr, ppComm, ppRelatv,
   ppDB, ppDBPipe, ComCtrls;

Type
   TFCompararTrasladosTodasGes = Class(TForm)
      gbFiltro : TGroupBox;
      Label2 : TLabel;
      Label1 : TLabel;
      Label3 : TLabel;
      edPeriodoActual : TEdit;
      edPeriodoAnterior : TEdit;
      edCalificacion : TEdit;
      edCalificacionDescripcion : TEdit;
      edTituloResumen : TEdit;
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
      lblCalificaionAnt : TLabel;
      edCalificacionAnt : TEdit;
      edCalificacionDescripcionAnt : TEdit;
      dbgResultados01 : TwwDBGrid;
      lblDepartamento : TLabel;
      edDpto : TEdit;
      edDptoDes : TEdit;
      ppLabel7 : TppLabel;
      ppLabel8 : TppLabel;
      ppDBText3 : TppDBText;
      ppDBText4 : TppDBText;
      ppShape4 : TppShape;
      ppLblSubTit : TppLabel;
      Procedure btnSalirClick(Sender : TObject);
      Procedure btnExportarClick(Sender : TObject);
      Procedure btnImprimirClick(Sender : TObject);
      Procedure FormShow(Sender : TObject);
   Private
    { Private declarations }
   Public
    { Public declarations }
   End;

Var
   FCompararTrasladosTodasGes : TFCompararTrasladosTodasGes;

Implementation

Uses GESDM1;

{$R *.dfm}

//******************************************************************************
// Nombre : FormShow
// Descripcion :  cargar datos de los controles
//******************************************************************************

Procedure TFCompararTrasladosTodasGes.FormShow(Sender : TObject);
Var
   xsSQL : String;
   xnCantGes : integer;
Begin
   Screen.Cursor := crHourGlass;
   // INICIO: DPP_201207_GESCOB - F1
   xsSQL :=
      '   SELECT /*+ rule */ ASO.ASOCODMOD, ASO.ASOAPENOM, '
      + '        GES_COB_SEG.FECHA, GES_REF_SEG.DESCRIPCION TIP_GESTION, '
      + '        IDGESTIONDET COD_GESTION, GES_COB_SEG.USUARIO GESTOR, '
      + '        GES_REF_SEG_DET.DESCRIPCION RES_GESTION, '
      + '        GES_COB_SEG.DETOBS ';

   If edCalificacion.Text = 'X' Then
   Begin
      xsSQL := xsSQL
         + '  FROM CFC000 B, CFC000 A, '
         + '       GES_COB_SEG, GES_REF_SEG, GES_REF_SEG_DET, APO201 ASO '
         + '  WHERE B.PERIODO = ' + QuotedStr(edPeriodoAnterior.Text)
         + '    AND ' + QuotedStr(edPeriodoActual.Text) + ' = A.PERIODO(+) '
         + '    AND B.ASOID = A.ASOID(+) '
         + '    AND ' + QuotedStr(edCalificacion.Text) + '= NVL(A.CFC_F,''X'') '
         + '    AND B.ASOID = GES_COB_SEG.ASOID ';
      If edDpto.Visible Then
         xsSQL := xsSQL
            + ' AND B.DPTOID = ' + QuotedStr(edDpto.Text);
      If edCalificacionAnt.Visible Then
         xsSQL := xsSQL
            + ' AND B.CFC_F = ' + QuotedStr(edCalificacionAnt.Text);
   End
   Else
   Begin
      xsSQL := xsSQL
         + '  FROM CFC000 A, CFC000 B, '
         + '       GES_COB_SEG, GES_REF_SEG, GES_REF_SEG_DET, APO201 ASO '
         + '  WHERE A.PERIODO = ' + QuotedStr(edPeriodoActual.Text)
         + '    AND A.CFC_F = ' + QuotedStr(edCalificacion.Text)
         + '    AND ' + QuotedStr(edPeriodoAnterior.Text) + ' = B.PERIODO(+) '
         + '    AND A.ASOID = B.ASOID(+) '
         + '    AND A.ASOID = GES_COB_SEG.ASOID ';
      If edDpto.Visible Then
         xsSQL := xsSQL
            + ' AND A.DPTOID = ' + QuotedStr(edDpto.Text);
      If edCalificacionAnt.Visible Then
         xsSQL := xsSQL
            + ' AND B.CFC_F = ' + QuotedStr(edCalificacionAnt.Text);
   End;

   xsSQL := xsSQL
      + '    AND GES_COB_SEG.PERIODO IN (' + QuotedStr(edPeriodoActual.Text) + ',' + QuotedStr(edPeriodoAnterior.Text) + ')'
      + '    AND GES_COB_SEG.FECHA BETWEEN TRUNC(ADD_MONTHS(TO_DATE(GES_COB_SEG.PERIODO, ''YYYYMM''), 1)) AND LAST_DAY(TRUNC(ADD_MONTHS(TO_DATE(GES_COB_SEG.PERIODO, ''YYYYMM''), 1))) '
      + '    AND GES_COB_SEG.IDGESTION = GES_REF_SEG.IDGTN '
      + '    AND GES_COB_SEG.IDGESTION = GES_REF_SEG_DET.IDGTN '
      + '    AND GES_COB_SEG.IDGESTIONDET = GES_REF_SEG_DET.IDGTNDET '
      + '    AND GES_COB_SEG.ASOID = ASO.ASOID '
      + '  ORDER BY FECHA DESC, ORDEN DESC ';
   // FIN: DPP_201207_GESCOB - F1      
   DM1.cdsQry5.Close;
   DM1.cdsQry5.DataRequest(xsSQL);
   DM1.cdsQry5.Open;
   dbgResultados01.DataSource := DM1.dsQry5;
   dbgResultados01.Selected.Clear;
   dbgResultados01.Selected.Add('ASOCODMOD'#9'10'#9'COD MOD');
   dbgResultados01.Selected.Add('ASOAPENOM'#9'15'#9'ASOCIADO');
   dbgResultados01.Selected.Add('FECHA'#9'10'#9'FECHA');
   dbgResultados01.Selected.Add('TIP_GESTION'#9'25'#9'TIPO GESTION');
   dbgResultados01.Selected.Add('COD_GESTION'#9'10'#9'COD.~GESTION');
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

   dbgResultados01.ColumnByName('ASOCODMOD').FooterValue := 'Total : ';
   dbgResultados01.ColumnByName('ASOAPENOM').FooterValue := FloatToStrF(xnCantGes, ffNumber, 15, 0) + ' Gestiones';

   Screen.Cursor := crDefault;
End;

//******************************************************************************
// Nombre : btnExportarClick
// Descripcion :  exportar a excel
//******************************************************************************

Procedure TFCompararTrasladosTodasGes.btnExportarClick(Sender : TObject);
Begin
   Screen.Cursor := crHourGlass;
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
   Screen.Cursor := crDefault;
End;

//******************************************************************************
// Nombre : btnImprimirClick
// Descripcion :  imprimir reporte
//******************************************************************************

Procedure TFCompararTrasladosTodasGes.btnImprimirClick(Sender : TObject);
Var
   xsSQL : String;
Begin
   dbpReporte.DataSource := DM1.dsQry5;
   ppLblTit.Caption := 'COMPARAR TRASLADOS : GESTIONES EN LOS PERIODOS ' + edPeriodoActual.Text + ' - ' + edPeriodoAnterior.Text;
   ppLblSubTit.Caption := edTituloResumen.Text;
   ppLblUser.Caption := 'Emitido Por :  ' + Trim(DM1.CrgDescrip('USERID=' + QuotedStr(Trim(DM1.wUsuario)), 'TGE006', 'USERNOM'));
   repReporte.Print;
   //desReporte.Show; // para editar en tiempo de ejecucion
End;
//******************************************************************************
// Nombre : btnSalirClick
// Descripcion :  cerrar formulario
//******************************************************************************

Procedure TFCompararTrasladosTodasGes.btnSalirClick(Sender : TObject);
Begin
   Close;
End;

(******************************************************************************)
End.
