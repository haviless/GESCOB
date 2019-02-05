// Inicio Uso Estándares: 01/08/2011
// Unidad : Gestión de Cobranzas
// Formulario : FCompararTrasladosDpto
// Fecha de Creación :
// Autor : Equipo de Sistemas
// Objetivo : Comparar Traslados por Departamentos
// Actualizaciones:
// HPC_201119_GESCOB 26/10/2011 Acuerdo de Atencion 2011-02-V2.0
// HPC_201203_GESCOB 15/02/2012 Evitar Mensajes de error en tiempo de diseño
// HPC_201206_GESCOB - F2 21/08/2012 MODIFICAR COMPARACION DE TRASLADO PARA QUE SE ASEMEJE A LA MATRIZ DE TRASLADO DEL MODULO DE RIESGOS
// DPP_201205_GESCOB: Pase a producción a partir de los pases HPC_201205 y HPC_201206
// HPC_201208_GESCOB - F1 14/09/2012 OPTIMIZACION DE CONSULTAS DE COMPARACION DE TRASLADOS
// DPP_201207_GESCOB: Pase a producción a partir de los pases HPC_201208

Unit GES516;

Interface

Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, ExtCtrls, Grids, Wwdbigrd, Wwdbgrid, StdCtrls, Buttons, DB, wwExport, shellapi,
   ppParameter, ppCtrls, ppBands, ppClass, ppVar, ppPrnabl, ppCache, ppProd,
   ppReport, ppRelatv, ppDB, ppDBPipe, ppComm, ppEndUsr;

Type
   TFCompararTrasladosDpto = Class(TForm)
      gbFiltro : TGroupBox;
      Label2 : TLabel;
      Label1 : TLabel;
      edPeriodoActual : TEdit;
      edPeriodoAnterior : TEdit;
      dbgResultados01 : TwwDBGrid;
      Label3 : TLabel;
      edCalificacion : TEdit;
      edCalificacionDescripcion : TEdit;
      gbSimbologia : TGroupBox;
      shCaidas : TShape;
      Label4 : TLabel;
      shPermanencias : TShape;
      Label5 : TLabel;
      shMejoras : TShape;
      Label6 : TLabel;
      lblCalificaionAnt : TLabel;
      edCalificacionAnt : TEdit;
      edCalificacionDescripcionAnt : TEdit;
      pnlControles : TPanel;
      btnImprimir : TBitBtn;
      btnSalir : TBitBtn;
      btnExportar : TBitBtn;
      desReporte : TppDesigner;
      dbpReporte : TppDBPipeline;
      repReporte : TppReport;
      ppParameterList1 : TppParameterList;
      ppHeaderBand41 : TppHeaderBand;
      ppLine1 : TppLine;
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
      ppLabel7 : TppLabel;
      ppLabel17 : TppLabel;
      ppLabel29 : TppLabel;
      ppLabel30 : TppLabel;
      ppLabel2 : TppLabel;
      ppLabel3 : TppLabel;
      ppLine2 : TppLine;
      ppLine3 : TppLine;
      ppLine4 : TppLine;
      ppLine5 : TppLine;
      ppLine6 : TppLine;
      ppLine7 : TppLine;
      ppLine8 : TppLine;
      ppLine9 : TppLine;
      ppLine10 : TppLine;
      ppLine11 : TppLine;
      ppDetailBand44 : TppDetailBand;
      ppDBText2 : TppDBText;
      ppDBText3 : TppDBText;
      ppDBText4 : TppDBText;
      ppDBText5 : TppDBText;
      ppDBText6 : TppDBText;
      ppDBText7 : TppDBText;
      ppFooterBand36 : TppFooterBand;
      ppLblUser : TppLabel;
      ppSummaryBand41 : TppSummaryBand;
      ppGroup1 : TppGroup;
      ppGroupHeaderBand1 : TppGroupHeaderBand;
      ppDBText340 : TppDBText;
      ppGroupFooterBand1 : TppGroupFooterBand;
      ppLabel4 : TppLabel;
      ppDBCalc2 : TppDBCalc;
      ppDBCalc3 : TppDBCalc;
      ppDBCalc4 : TppDBCalc;
      ppDBCalc5 : TppDBCalc;
      ppLine12 : TppLine;
      Procedure dbgResultados01DrawDataCell(Sender : TObject;
         Const Rect : TRect; Field : TField; State : TGridDrawState);
      Procedure dbgResultados01DblClick(Sender : TObject);
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
   FCompararTrasladosDpto : TFCompararTrasladosDpto;

Implementation

Uses GESDM1, GES517;

{$R *.dfm}

//******************************************************************************
// Nombre : FormShow
// Descripcion :  cargar datos de la grilla
//******************************************************************************

Procedure TFCompararTrasladosDpto.FormShow(Sender : TObject);
Var
   xsSQL : String;
   xnCANT_ACT : integer;
   xnCANT_ANT : integer;
   xnSALVEN_ANT : Currency;
   xnSALVEN_ACT : Currency;
Begin
   Screen.Cursor := crHourGlass;
   // INICIO: DPP_201207_GESCOB - F1
   xsSQL := 'SELECT /*+ rule */ NVL(CFC.DPTOID,''99'') DPTOID, '
      + '           NVL(DPTO.DPTODES,''~SIN DEPARTAMENTO~'') DEPARTAMENTO, '
      + '           CFC.CFC_F_ACT, '
      + '           ' + QuotedStr(edCalificacionDescripcion.Text) + ' CFC_F_ACT_DES, '
      + '           CFC.CANT_ACT, CFC.SALVEN_ACT, '
      + '           CFC_F_ANT_ORD, CFC.CFC_F_ANT, '
      + '           CASE WHEN CFC.CFC_F_ANT = ''0'' THEN ''NOR'' '
      + '                WHEN CFC.CFC_F_ANT = ''A'' THEN ''CPP'' '
      + '                WHEN CFC.CFC_F_ANT = ''B'' THEN ''DEF'' '
      + '                WHEN CFC.CFC_F_ANT = ''C'' THEN ''DUD'' '
      + '                WHEN CFC.CFC_F_ANT = ''D'' THEN ''PER'' '
      + '                WHEN CFC.CFC_F_ANT = ''X'' THEN ''CANCELADO'' '
      + '                WHEN CFC.CFC_F_ANT = ''Y'' THEN ''NUEVO'' '
      + '            END CFC_F_ANT_DES, '
      + '           CFC.CANT_ANT, '
      + '           CFC.SALVEN_ANT '
      + '  FROM (SELECT NVL(A.CFC_F,''X'') CFC_F_ACT, NVL(B.CFC_F, ''Y'') CFC_F_ANT, '
      + '          CASE WHEN A.CFC_F = ''0'' THEN 1 '
      + '               WHEN A.CFC_F = ''A'' THEN 2 '
      + '               WHEN A.CFC_F = ''B'' THEN 3 '
      + '               WHEN A.CFC_F = ''C'' THEN 4 '
      + '               WHEN A.CFC_F = ''D'' THEN 5 '
      + '               WHEN A.CFC_F = ''X'' THEN 6 '
      + '               WHEN A.CFC_F = ''Y'' THEN 7 '
      + '           END CFC_F_ACT_ORD , '
      + '          CASE WHEN NVL(B.CFC_F, ''Y'') = ''0'' THEN 1 '
      + '               WHEN NVL(B.CFC_F, ''Y'') = ''A'' THEN 2 '
      + '               WHEN NVL(B.CFC_F, ''Y'') = ''B'' THEN 3 '
      + '               WHEN NVL(B.CFC_F, ''Y'') = ''C'' THEN 4 '
      + '               WHEN NVL(B.CFC_F, ''Y'') = ''D'' THEN 5 '
      + '               WHEN NVL(B.CFC_F, ''Y'') = ''X'' THEN 6 '
      + '               WHEN NVL(B.CFC_F, ''Y'') = ''Y'' THEN 7 '
      + '           END CFC_F_ANT_ORD, '
      + '               SUM(CASE WHEN B.CFC_F IS NOT NULL THEN 1 ELSE 0 END) CANT_ANT, '
      + '               SUM(NVL(A.SALVEN, 0)) SALVEN_ACT, '
      + '               SUM(NVL(B.SALVEN, 0)) SALVEN_ANT ';

   If edCalificacion.Text = 'X' Then
      xsSQL := xsSQL
         + '            ,B.DPTOID '
         + '            ,SUM(CASE WHEN NVL(A.CFC_F,''X'') = ' + QuotedStr(edCalificacion.Text) + ' THEN 1 ELSE 0 END) CANT_ACT '
         + '       FROM CFC000 B, CFC000 A '
         + '      WHERE B.PERIODO = ' + QuotedStr(edPeriodoAnterior.Text)
         + '        AND ' + QuotedStr(edPeriodoActual.Text) + ' = A.PERIODO(+) '
         + '        AND B.ASOID = A.ASOID(+) '
         + '        AND ' + QuotedStr(edCalificacion.Text) + '= NVL(A.CFC_F,''X'')'
         + '      GROUP BY B.DPTOID, A.CFC_F, NVL(B.CFC_F, ''Y'')) CFC, TGE158 DPTO '
   Else
      xsSQL := xsSQL
         + '            ,A.DPTOID '
         + '            ,SUM(CASE WHEN A.CFC_F IS NOT NULL THEN 1 ELSE 0 END) CANT_ACT '
         + '       FROM CFC000 A, CFC000 B '
         + '      WHERE A.PERIODO = ' + QuotedStr(edPeriodoActual.Text)
         + '        AND A.CFC_F = ' + QuotedStr(edCalificacion.Text)
         + '        AND ' + QuotedStr(edPeriodoAnterior.Text) + ' = B.PERIODO(+) '
         + '        AND A.ASOID = B.ASOID(+) '
         + '      GROUP BY A.DPTOID, A.CFC_F, NVL(B.CFC_F, ''Y'')) CFC, TGE158 DPTO ';
   xsSQL := xsSQL
      + 'WHERE CFC.DPTOID = DPTO.DPTOID(+) '
      + ' ORDER BY CFC.DPTOID, CFC_F_ACT_ORD, CFC_F_ANT_ORD ';
   // FIN: DPP_201207_GESCOB - F1
   DM1.cdsQry3.Close;
   DM1.cdsQry3.DataRequest(xsSQL);
   DM1.cdsQry3.Open;
   dbgResultados01.DataSource := DM1.dsQry3;
   dbgResultados01.GroupFieldName := 'DEPARTAMENTO';

   dbgResultados01.Selected.Clear;
   dbgResultados01.Selected.Add('DEPARTAMENTO'#9'20'#9'DEPARTAMENTO');
   dbgResultados01.Selected.Add('CFC_F_ACT_DES'#9'10'#9'CALIF'#9'F'#9'ACTUAL');
   dbgResultados01.Selected.Add('CANT_ACT'#9'10'#9'CANT. ASO.'#9'F'#9'ACTUAL');
   dbgResultados01.Selected.Add('SALVEN_ACT'#9'12'#9'SAL.VEN'#9'F'#9'ACTUAL');
   dbgResultados01.Selected.Add('CFC_F_ANT_DES'#9'10'#9'CALIF'#9'F'#9'ANTERIOR');
   dbgResultados01.Selected.Add('CANT_ANT'#9'10'#9'CANT. ASO.'#9'F'#9'ANTERIOR');
   dbgResultados01.Selected.Add('SALVEN_ANT'#9'12'#9'SAL.VEN'#9'F'#9'ANTERIOR');
   dbgResultados01.ApplySelected;

   TNumericField(DM1.cdsQry3.fieldbyname('CANT_ACT')).DisplayFormat := '###,###';
   TNumericField(DM1.cdsQry3.fieldbyname('CANT_ANT')).DisplayFormat := '###,###';
   TNumericField(DM1.cdsQry3.fieldbyname('SALVEN_ACT')).DisplayFormat := '###,###.#0';
   TNumericField(DM1.cdsQry3.fieldbyname('SALVEN_ANT')).DisplayFormat := '###,###.#0';

   xnCANT_ACT := 0;
   xnCANT_ANT := 0;
   xnSALVEN_ANT := 0;
   xnSALVEN_ACT := 0;
   DM1.cdsQry3.First;
   While Not DM1.cdsQry3.Eof Do
   Begin
      xnCANT_ACT := xnCANT_ACT + DM1.cdsQry3.fieldbyname('CANT_ACT').value;
      xnCANT_ANT := xnCANT_ANT + DM1.cdsQry3.fieldbyname('CANT_ANT').value;
      xnSALVEN_ANT := xnSALVEN_ANT + DM1.cdsQry3.fieldbyname('SALVEN_ANT').value;
      xnSALVEN_ACT := xnSALVEN_ACT + DM1.cdsQry3.fieldbyname('SALVEN_ACT').value;
      DM1.cdsQry3.Next;
   End;
   DM1.cdsQry3.First;

   dbgResultados01.ColumnByName('DEPARTAMENTO').FooterValue := 'Total : ';
   dbgResultados01.ColumnByName('CANT_ACT').FooterValue := FloatToStrF(xnCANT_ACT, ffNumber, 15, 0);
   dbgResultados01.ColumnByName('CANT_ANT').FooterValue := FloatToStrF(xnCANT_ANT, ffNumber, 15, 0);
   dbgResultados01.ColumnByName('SALVEN_ANT').FooterValue := FloatToStrF(xnSALVEN_ANT, ffNumber, 15, 2);
   dbgResultados01.ColumnByName('SALVEN_ACT').FooterValue := FloatToStrF(xnSALVEN_ACT, ffNumber, 15, 2);

   shCaidas.Brush.Color := clCaida;
   shPermanencias.Brush.Color := clPermanencia;
   shMejoras.Brush.Color := clMejora;
   Screen.Cursor := crDefault;
End;

//******************************************************************************
// Nombre : dbgResultados01DrawDataCell
// Descripcion :  pintar celdas del grid
//******************************************************************************

Procedure TFCompararTrasladosDpto.dbgResultados01DrawDataCell(
   Sender : TObject; Const Rect : TRect; Field : TField;
   State : TGridDrawState);
Begin
   dbgResultados01.Canvas.Font.Color := clBlack;
   If (gdFocused In State) Then
   Begin
      dbgResultados01.Canvas.Brush.Color := clNavy;
      dbgResultados01.Canvas.Font.Color := clWhite;
      dbgResultados01.DefaultDrawDataCell(Rect, Field, State);
   End
   Else
   Begin
      If (Field.FieldName = 'CFC_F_ANT_DES') Or (Field.FieldName = 'CANT_ANT') Or (Field.FieldName = 'SALVEN_ANT') Then
      Begin
         If (DM1.cdsQry3.FieldByName('CFC_F_ACT').AsString = '0') Then
         Begin
            If (DM1.cdsQry3.FieldByName('CFC_F_ANT').AsString = '0') Then
               dbgResultados01.Canvas.Brush.Color := clPermanencia
            Else
               If (DM1.cdsQry3.FieldByName('CFC_F_ANT').AsString = 'A') Then
                  dbgResultados01.Canvas.Brush.Color := clMejora
               Else
                  If (DM1.cdsQry3.FieldByName('CFC_F_ANT').AsString = 'B') Then
                     dbgResultados01.Canvas.Brush.Color := clMejora
                  Else
                     If (DM1.cdsQry3.FieldByName('CFC_F_ANT').AsString = 'C') Then
                        dbgResultados01.Canvas.Brush.Color := clMejora
                     Else
                        If (DM1.cdsQry3.FieldByName('CFC_F_ANT').AsString = 'D') Then
                           dbgResultados01.Canvas.Brush.Color := clMejora
                        Else
                           If (DM1.cdsQry3.FieldByName('CFC_F_ANT').AsString = 'X') Then
                              dbgResultados01.Canvas.Brush.Color := clWhite;
         End;
         If (DM1.cdsQry3.FieldByName('CFC_F_ACT').AsString = 'A') Then
         Begin
            If (DM1.cdsQry3.FieldByName('CFC_F_ANT').AsString = '0') Then
               dbgResultados01.Canvas.Brush.Color := clCaida
            Else
               If (DM1.cdsQry3.FieldByName('CFC_F_ANT').AsString = 'A') Then
                  dbgResultados01.Canvas.Brush.Color := clPermanencia
               Else
                  If (DM1.cdsQry3.FieldByName('CFC_F_ANT').AsString = 'B') Then
                     dbgResultados01.Canvas.Brush.Color := clMejora
                  Else
                     If (DM1.cdsQry3.FieldByName('CFC_F_ANT').AsString = 'C') Then
                        dbgResultados01.Canvas.Brush.Color := clMejora
                     Else
                        If (DM1.cdsQry3.FieldByName('CFC_F_ANT').AsString = 'D') Then
                           dbgResultados01.Canvas.Brush.Color := clMejora
                        Else
                           If (DM1.cdsQry3.FieldByName('CFC_F_ANT').AsString = 'X') Then
                              dbgResultados01.Canvas.Brush.Color := clWhite;
         End;
         If (DM1.cdsQry3.FieldByName('CFC_F_ACT').AsString = 'B') Then
         Begin
            If (DM1.cdsQry3.FieldByName('CFC_F_ANT').AsString = '0') Then
               dbgResultados01.Canvas.Brush.Color := clCaida
            Else
               If (DM1.cdsQry3.FieldByName('CFC_F_ANT').AsString = 'A') Then
                  dbgResultados01.Canvas.Brush.Color := clCaida
               Else
                  If (DM1.cdsQry3.FieldByName('CFC_F_ANT').AsString = 'B') Then
                     dbgResultados01.Canvas.Brush.Color := clPermanencia
                  Else
                     If (DM1.cdsQry3.FieldByName('CFC_F_ANT').AsString = 'C') Then
                        dbgResultados01.Canvas.Brush.Color := clMejora
                     Else
                        If (DM1.cdsQry3.FieldByName('CFC_F_ANT').AsString = 'D') Then
                           dbgResultados01.Canvas.Brush.Color := clMejora
                        Else
                           If (DM1.cdsQry3.FieldByName('CFC_F_ANT').AsString = 'X') Then
                              dbgResultados01.Canvas.Brush.Color := clWhite;
         End;
         If (DM1.cdsQry3.FieldByName('CFC_F_ACT').AsString = 'C') Then
         Begin
            If (DM1.cdsQry3.FieldByName('CFC_F_ANT').AsString = '0') Then
               dbgResultados01.Canvas.Brush.Color := clCaida
            Else
               If (DM1.cdsQry3.FieldByName('CFC_F_ANT').AsString = 'A') Then
                  dbgResultados01.Canvas.Brush.Color := clCaida
               Else
                  If (DM1.cdsQry3.FieldByName('CFC_F_ANT').AsString = 'B') Then
                     dbgResultados01.Canvas.Brush.Color := clCaida
                  Else
                     If (DM1.cdsQry3.FieldByName('CFC_F_ANT').AsString = 'C') Then
                        dbgResultados01.Canvas.Brush.Color := clPermanencia
                     Else
                        If (DM1.cdsQry3.FieldByName('CFC_F_ANT').AsString = 'D') Then
                           dbgResultados01.Canvas.Brush.Color := clMejora
                        Else
                           If (DM1.cdsQry3.FieldByName('CFC_F_ANT').AsString = 'X') Then
                              dbgResultados01.Canvas.Brush.Color := clWhite;
         End;
         If (DM1.cdsQry3.FieldByName('CFC_F_ACT').AsString = 'D') Then
         Begin
            If (DM1.cdsQry3.FieldByName('CFC_F_ANT').AsString = '0') Then
               dbgResultados01.Canvas.Brush.Color := clCaida
            Else
               If (DM1.cdsQry3.FieldByName('CFC_F_ANT').AsString = 'A') Then
                  dbgResultados01.Canvas.Brush.Color := clCaida
               Else
                  If (DM1.cdsQry3.FieldByName('CFC_F_ANT').AsString = 'B') Then
                     dbgResultados01.Canvas.Brush.Color := clCaida
                  Else
                     If (DM1.cdsQry3.FieldByName('CFC_F_ANT').AsString = 'C') Then
                        dbgResultados01.Canvas.Brush.Color := clCaida
                     Else
                        If (DM1.cdsQry3.FieldByName('CFC_F_ANT').AsString = 'D') Then
                           dbgResultados01.Canvas.Brush.Color := clPermanencia
                        Else
                           If (DM1.cdsQry3.FieldByName('CFC_F_ANT').AsString = 'X') Then
                              dbgResultados01.Canvas.Brush.Color := clWhite;
         End;
         dbgResultados01.DefaultDrawDataCell(Rect, Field, State);
      End;
   End;
   //dbgResultados01.DefaultDrawDataCell(Rect, Field, State);
End;

//******************************************************************************
// Nombre : dbgResultados01DblClick
// Descripcion :  mostrar traslados por asociados
//******************************************************************************

Procedure TFCompararTrasladosDpto.dbgResultados01DblClick(Sender : TObject);
Begin
   If (DM1.cdsQry3.State <> dsInactive) And (DM1.cdsQry3.RecordCount > 0) Then
   Begin
      FCompararTrasladosAso := TFCompararTrasladosAso.create(self);
      Try
         FCompararTrasladosAso.edPeriodoActual.Text := edPeriodoActual.Text;
         FCompararTrasladosAso.edPeriodoAnterior.Text := edPeriodoAnterior.Text;
         FCompararTrasladosAso.edCalificacion.Text := edCalificacion.Text;
         FCompararTrasladosAso.edCalificacionDescripcion.Text := edCalificacionDescripcion.Text;
         FCompararTrasladosAso.edDpto.Text := DM1.cdsQry3.fieldbyname('DPTOID').asstring;
         FCompararTrasladosAso.edDptoDes.Text := DM1.cdsQry3.fieldbyname('DEPARTAMENTO').asstring;
         FCompararTrasladosAso.lblCalificaionAnt.Visible := false;
         FCompararTrasladosAso.edCalificacionAnt.Visible := false;
         FCompararTrasladosAso.edCalificacionDescripcionAnt.Visible := false;
         FCompararTrasladosAso.ShowModal();
      Finally
         FCompararTrasladosAso.Free;
      End;
   End;
End;

//******************************************************************************
// Nombre : btnExportarClick
// Descripcion :  exportar a excel
//******************************************************************************

Procedure TFCompararTrasladosDpto.btnExportarClick(Sender : TObject);
Begin
   Screen.Cursor := crHourGlass;
   Try
      With dbgResultados01, dbgResultados01.ExportOptions Do
      Begin
         ExportType := wwgetSYLK;
         FileName := 'COMTRASDPTO.slk';
         DM1.OpcionesExportExcel(dbgResultados01.ExportOptions);
         dbgResultados01.ExportOptions.TitleName := 'ComTrasDpto';
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

//******************************************************************************
// Nombre : btnSalirClick
// Descripcion :  cerrar formulario
//******************************************************************************

Procedure TFCompararTrasladosDpto.btnSalirClick(Sender : TObject);
Begin
   Close;
End;

//******************************************************************************
// Nombre : btnImprimirClick
// Descripcion :  imprimir reporte
//******************************************************************************

Procedure TFCompararTrasladosDpto.btnImprimirClick(Sender : TObject);
Begin
   dbpReporte.DataSource := DM1.dsQry3;
   ppLblTit.Caption := 'COMPARAR TRASLADOS : POR DEPARTAMENTO EN LOS PERIODOS ' + edPeriodoActual.Text + ' - ' + edPeriodoAnterior.Text;
   ppLblUser.Caption := 'Emitido Por :  ' + Trim(DM1.CrgDescrip('USERID=' + QuotedStr(Trim(DM1.wUsuario)), 'TGE006', 'USERNOM'));
   repReporte.Print;
   //desReporte.Show; // para editar en tiempo de ejecucion
End;

(******************************************************************************)

End.
