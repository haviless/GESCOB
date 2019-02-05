// Inicio Uso Estándares: 01/08/2011
// Unidad : Gestión de Cobranzas
// Formulario : TFDetAsigGestor
// Fecha de Creación : 14/02/2012
// Autor : Equipo de Sistemas
// Objetivo :  Detalle de asociados Asignados a los gestores
// Actualizaciones:
// HPC_201203_GESCOB 14/02/2012 Resumen de Asignacion por Gestor
// HPC_201206_GESCOB - F4 28/08/2012 MOSTRAR EL DETALLE DE ASIGNACIONES, PARA LOS GESTORES EXTERNOS
// DPP_201205_GESCOB: Pase a producción a partir de los pases HPC_201205 y HPC_201206

Unit GES541;

Interface

Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, Buttons, ExtCtrls, Grids, Wwdbigrd, Wwdbgrid, wwExport, shellapi, db,
   ppParameter, ppBands, ppCtrls, ppVar, ppPrnabl, ppClass, ppCache, ppProd,
   ppReport, ppRelatv, ppDB, ppDBPipe, ppComm, ppEndUsr, wwclient, Wwdatsrc,
   DBGrids;

Type
   TFDetAsigGestor = Class(TForm)
      pnlControles : TPanel;
      btnExportar : TBitBtn;
      btnSalir : TBitBtn;
      btnImprimir : TBitBtn;
      desRptPrincipal : TppDesigner;
      dbpRptPrincipal : TppDBPipeline;
      repRptPrincipal : TppReport;
      ppParameterList1 : TppParameterList;
      Panel3 : TPanel;
      dbgPrincipal : TwwDBGrid;
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
      ppLine1 : TppLine;
      ppLine2 : TppLine;
      ppLine5 : TppLine;
      ppLine4 : TppLine;
      ppLine6 : TppLine;
      ppLine7 : TppLine;
      ppLine16 : TppLine;
      ppDetailBand44 : TppDetailBand;
      ppDBText1 : TppDBText;
      ppDBText4 : TppDBText;
      ppLine3 : TppLine;
      ppLine10 : TppLine;
      ppLine11 : TppLine;
      ppLine12 : TppLine;
      ppLine13 : TppLine;
      ppDBText3 : TppDBText;
      ppDBText2 : TppDBText;
      ppLine17 : TppLine;
      ppFooterBand36 : TppFooterBand;
      ppLblUser : TppLabel;
      ppSummaryBand41 : TppSummaryBand;
      ppLabel7 : TppLabel;
      ppDBCalc1 : TppDBCalc;
      Procedure btnSalirClick(Sender : TObject);
      Procedure FormClose(Sender : TObject; Var Action : TCloseAction);
      Procedure FormShow(Sender : TObject);
      Procedure btnExportarClick(Sender : TObject);
      Procedure btnImprimirClick(Sender : TObject);
   Private
      Procedure fn_pintar_grilla;
   Public
      xsPeriodoGestion : String;
      xsGestor : String;
   End;

Var
   FDetAsigGestor : TFDetAsigGestor;

Implementation

Uses GESDM1;

{$R *.dfm}

//******************************************************************************
// Nombre : btnSalirClick
// Descripcion : Cerrar el formulario
//******************************************************************************

Procedure TFDetAsigGestor.btnSalirClick(Sender : TObject);
Begin
   Close;
End;

//******************************************************************************
// Nombre : FormClose
// Descripcion : Liberar la memoria despues de cerrar el formulario
//******************************************************************************

Procedure TFDetAsigGestor.FormClose(Sender : TObject;
   Var Action : TCloseAction);
Begin
   Action := caFree;
End;

//******************************************************************************
// Nombre : btnExportarClick
// Descripcion : exportar los datos a excel
//******************************************************************************

Procedure TFDetAsigGestor.btnExportarClick(Sender : TObject);
Begin
   Screen.Cursor := crHourGlass;
   Try
      With dbgPrincipal, dbgPrincipal.ExportOptions Do
      Begin
         ExportType := wwgetSYLK;
         FileName := 'DetAsigGes.slk';
         DM1.OpcionesExportExcel(dbgPrincipal.ExportOptions);
         dbgPrincipal.ExportOptions.TitleName := 'Resumen';
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
// Nombre : FormShow
// Descripcion : Inicializar los controles
//******************************************************************************

Procedure TFDetAsigGestor.FormShow(Sender : TObject);
Var
   xsSQL : String;
Begin
   Screen.Cursor := crHourGlass;
   // INICIO: DPP_201205_GESCOB - F4
   xsSQL := 'SELECT D.CODIGO_PRIORIDAD, D.DESCRIPCION_PRIORIDAD, B.ASOCODMOD, B.ASOAPENOMDNI, '
      + '           A.ASOID, A.CODIGO_REGLA '
      + '      FROM (SELECT DISTINCT ASOID, CODIGO_REGLA '
      + '              FROM GES_COB_DOM '
      + '             WHERE PERIODO = ' + QuotedStr(xsPeriodoGestion)
      + '               And USUARIO = ' + QuotedStr(xsGestor)
      + '             UNION '
      + '            SELECT DISTINCT ASOID, CODIGO_REGLA '
      + '              FROM GES_COB_IND '
      + '             WHERE PERIODO = ' + QuotedStr(xsPeriodoGestion)
      + '               And USUARIO = ' + QuotedStr(xsGestor) + ')A, APO201 B, GES_COB_REG C, GES_COB_PRI D '
      + '     WHERE A.ASOID = B.ASOID '
      + '       And A.CODIGO_REGLA = C.CODIGO_REGLA(+) '
      + '       And C.CODIGO_PRIORIDAD = D.CODIGO_PRIORIDAD(+) '
      + '     ORDER BY D.CODIGO_PRIORIDAD ';
   // FIN: DPP_201205_GESCOB - F4
   DM1.cdsQry2.Close;
   DM1.cdsQry2.DataRequest(xsSQL);
   DM1.cdsQry2.Open;

   fn_pintar_grilla();
   Screen.Cursor := crDefault;
End;

//******************************************************************************
// Nombre : fn_pintar_grilla
// Descripcion : pintar la grilla
//******************************************************************************

Procedure TFDetAsigGestor.fn_pintar_grilla();
Begin
   dbgPrincipal.DataSource := DM1.dsQry2;
   With dbgPrincipal, dbgPrincipal.DataSource.DataSet Do
   Begin
      Selected.Clear;
      Selected.Add('CODIGO_PRIORIDAD'#9'5'#9'CODIGO~PRIORIDAD');
      Selected.Add('DESCRIPCION_PRIORIDAD'#9'30'#9'PRIORIDAD');
      Selected.Add('ASOCODMOD'#9'15'#9'CODIGO~MODULAR');
      Selected.Add('ASOAPENOMDNI'#9'40'#9'ASOCIADO');
      ApplySelected;
   End;
   dbgPrincipal.ColumnByName('CODIGO_PRIORIDAD').FooterValue := 'Registros';
   dbgPrincipal.ColumnByName('DESCRIPCION_PRIORIDAD').FooterValue := FormatCurr('###,##0', DM1.cdsQry2.RecordCount);
End;

//******************************************************************************
// Nombre : btnImprimirClick
// Descripcion : Imprimir Reporte
//******************************************************************************

Procedure TFDetAsigGestor.btnImprimirClick(Sender : TObject);
Begin
   ppLblTit01.Caption := 'Detalle de Asociados Asignados';
   ppLblTit02.Caption := '';
   ppLblUser.Caption := 'Emitido Por :  ' + Trim(DM1.CrgDescrip('USERID=' + QuotedStr(Trim(DM1.wUsuario)), 'TGE006', 'USERNOM'));
   dbpRptPrincipal.DataSource := DM1.dsQry2;
   repRptPrincipal.Print;
   //desRptPrincipal.Show;
End;

End.
           
