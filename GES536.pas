// Inicio Uso Estándares: 01/08/2011
// Unidad : Gestión de Cobranzas
// Formulario : TFCantidadAsignados
// Fecha de Creación : 20/02/2012
// Autor : Equipo de Sistemas
// Objetivo :  Saber la Cantidad de asociados Asignados a los gestores
// Actualizaciones:
// HPC_201204_GESCOB 20/02/2012 reporte de cantidad de asignados - Detalle
// HPC_201205_GESCOB 06/03/2012 liberar memoria al imprimir los distintos graficos estadisticos
// DPP_201205_GESCOB: Pase a producción a partir de los pases HPC_201205 y HPC_201206
// HPC_201305_GESCOB: F1 04/06/2013 Se agregó código y nombre de gestor en el detalle
// SPP_201305_GESCOB: Se realiza el pase a producción a partir del HPC_201305_GESCOB

Unit GES536;

Interface

Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, Buttons, ExtCtrls, Grids, Wwdbigrd, Wwdbgrid, wwExport, shellapi, db,
   ppParameter, ppBands, ppCtrls, ppVar, ppPrnabl, ppClass, ppCache, ppProd,
   ppReport, ppRelatv, ppDB, ppDBPipe, ppComm, ppEndUsr;

Type
   TFCantidadIdentificados = Class(TForm)
      dbgPrincipal : TwwDBGrid;
      pnlControles : TPanel;
      btnExportar : TBitBtn;
      btnSalir : TBitBtn;
      btnImprimir : TBitBtn;
      desRptPrincipal : TppDesigner;
      dbpRptPrincipal : TppDBPipeline;

      repRptPrincipal : TppReport;
      ppParameterList1 : TppParameterList;
      Label1 : TLabel;
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
      ppLabel6 : TppLabel;
      ppLabel7 : TppLabel;
      ppLabel8 : TppLabel;
      ppLabel9 : TppLabel;
      ppLine16 : TppLine;
      ppLine18 : TppLine;
      ppLine20 : TppLine;
      ppLine22 : TppLine;
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
      ppDBText6 : TppDBText;
      ppDBText7 : TppDBText;
      ppDBText8 : TppDBText;
      ppDBText9 : TppDBText;
      ppLine17 : TppLine;
      ppLine19 : TppLine;
      ppLine21 : TppLine;
      ppLine23 : TppLine;
// Inicio: SPP_201305_GESCOB: F1 04/06/2013 Se agregó código y nombre de gestor
      ppLine24 : TppLine;
      ppLabel11 : TppLabel;
      ppLine25 : TppLine;
      ppDBText10 : TppDBText;
// Fin: SPP_201305_GESCOB
      ppFooterBand36 : TppFooterBand;
      ppLblUser : TppLabel;
      ppSummaryBand41 : TppSummaryBand;
      ppLabel10 : TppLabel;
      ppDBCalc1 : TppDBCalc;
      Procedure btnSalirClick(Sender : TObject);
      Procedure FormClose(Sender : TObject; Var Action : TCloseAction);
      Procedure FormShow(Sender : TObject);
      Procedure btnExportarClick(Sender : TObject);
      Procedure btnImprimirClick(Sender : TObject);
   Private
    { Private declarations }
   Public
      xsPeriodoGestion : String;
      xsCodigoPrioridad : String;
      xsCodigoRegla : String;
   End;

Var
   FCantidadIdentificados : TFCantidadIdentificados;

Implementation

Uses GESDM1;

{$R *.dfm}

//******************************************************************************
// Nombre : btnSalirClick
// Descripcion : Cerrar el formulario
//******************************************************************************

Procedure TFCantidadIdentificados.btnSalirClick(Sender : TObject);
Begin
   Close;
End;

//******************************************************************************
// Nombre : FormClose
// Descripcion : Liberar la memoria despues de cerrar el formulario
//******************************************************************************

Procedure TFCantidadIdentificados.FormClose(Sender : TObject;
   Var Action : TCloseAction);
Begin
   Action := caFree;
End;

//******************************************************************************
// Nombre : btnExportarClick
// Descripcion : exportar los datos a excel
//******************************************************************************

Procedure TFCantidadIdentificados.btnExportarClick(Sender : TObject);
Begin
   Screen.Cursor := crHourGlass;
   Try
      With dbgPrincipal, dbgPrincipal.ExportOptions Do
      Begin
         ExportType := wwgetSYLK;
         FileName := 'CantidadIdentificados.slk';
         DM1.OpcionesExportExcel(dbgPrincipal.ExportOptions);
         dbgPrincipal.ExportOptions.TitleName := 'Identificados';
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

Procedure TFCantidadIdentificados.FormShow(Sender : TObject);
Var
   xsSQL : String;
   //Inicio: DPP_201205_GESCOB
   xsSQLWhere : String;
   //Fin: DPP_201205_GESCOB
Begin
   Screen.Cursor := crHourGlass;
   //Inicio: DPP_201205_GESCOB
   If xsCodigoPrioridad <> '' Then
      xsSQLWhere := '     WHERE ' + QuotedStr(xsCodigoPrioridad) + ' = A.CODIGO_PRIORIDAD ';

   If xsCodigoRegla <> '' Then
      xsSQLWhere := '     WHERE ' + QuotedStr(xsCodigoRegla) + ' = B.CODIGO_REGLA ';

   xsSQL := 'SELECT C.ASOID, D.ASOCODMOD, D.ASODNI, C.ASOAPENOM, C.CFC_F, E.RESUMEDES, DPTO.DPTODES, '
      + '           PROV.CIUDDES, DIST.ZIPDES, A.CODIGO_PRIORIDAD, A.DESCRIPCION_PRIORIDAD '
// Inicio: SPP_201305_GESCOB F1 se agregó código y gestor en el detalle
      + '           , ASIG.USUARIO GESTOR                        '
      + '           , UPPER(GEST.USERNOM) NOMBRE_GESTOR          '
// Fin: SPP_201305_GESCOB
      + '      FROM GES_COB_PRI A, GES_COB_REG B, GES_COB_CAB C, APO201 D, COB113 E, '
      + '           APO158 DPTO, TGE121 PROV, TGE122 DIST '
// Inicio: SPP_201305_GESCOB F1 se agregó código y gestor en el detalle
      + '           , GES_COB_DOM      ASIG                       '
      + '           , GES_NIV_USU_OTO  GEST';
// Fin: SPP_201305_GESCOB
   xsSQL := xsSQL + xsSQLWhere;
      //+ '     WHERE ' + QuotedStr(xsCodigoPrioridad) + ' = A.CODIGO_PRIORIDAD '
   xsSQL := xsSQL + ' AND A.CODIGO_PRIORIDAD = B.CODIGO_PRIORIDAD '
      + '       AND B.CODIGO_REGLA = C.CODIGO_REGLA '
      + '       AND C.PERIODO = ' + QuotedStr(xsPeriodoGestion)
      + '       AND C.ASOID = D.ASOID(+) '
      + '       AND C.CFC_F = E.RESUMEID(+) '
      + '       AND SUBSTR(C.ZIPID, 1, 2) = DPTO.DPTOID(+) '
      + '       AND SUBSTR(C.ZIPID, 1, 2) = PROV.DPTOID(+) '
      + '       AND SUBSTR(C.ZIPID, 3, 2) = PROV.CIUDID(+) '
      + '       AND SUBSTR(C.ZIPID, 1, 2) = DIST.DPTOID(+) '
      + '       AND SUBSTR(C.ZIPID, 3, 2) = DIST.CIUDID(+) '
      + '       AND SUBSTR(C.ZIPID, 5, 2) = DIST.ZIPID(+) '
   //Fin: DPP_201205_GESCOB
// Inicio: SPP_201305_GESCOB F1 se agregó código y gestor en el detalle
      + '       AND C.PERIODO = ASIG.PERIODO(+) AND C.ASOID = ASIG.ASOID(+) '
      + '       AND ASIG.USUARIO = GEST.USERID(+)                           ';
// Fin: SPP_201305_GESCOB
   DM1.cdsQry2.Close;
   DM1.cdsQry2.DataRequest(xsSQL);
   DM1.cdsQry2.Open;

   dbgPrincipal.DataSource := DM1.dsQry2;
   With dbgPrincipal, dbgPrincipal.DataSource.DataSet Do
   Begin
      Selected.Clear;
      Selected.Add('ASOCODMOD'#9'11'#9'COD MOD');
      Selected.Add('ASODNI'#9'10'#9'DNI');
      Selected.Add('ASOAPENOM'#9'30'#9'ASOCIADO');
      Selected.Add('RESUMEDES'#9'15'#9'CALIF');
      Selected.Add('DPTODES'#9'15'#9'DEPARTAMENTO');
      Selected.Add('CIUDDES'#9'15'#9'PROVINCIA');
      Selected.Add('ZIPDES'#9'15'#9'DISTRITO');
      Selected.Add('CODIGO_PRIORIDAD'#9'10'#9'COD PRIORIDAD');
      Selected.Add('DESCRIPCION_PRIORIDAD'#9'30'#9'PRIORIDAD');
// Inicio: SPP_201305_GESCOB F1 se agregó código y gestor en el detalle
      Selected.Add('GESTOR'#9'12'#9'GESTOR');
      Selected.Add('NOMBRE_GESTOR'#9'35'#9'GESTOR ASIGNADO');
// Fin: SPP_201305_GESCOB
      ApplySelected;
   End;
   dbgPrincipal.ColumnByName('ASOAPENOM').FooterValue := 'Nro Registros : ';
   dbgPrincipal.ColumnByName('RESUMEDES').FooterValue := FormatCurr('###,###,##0', DM1.cdsQry2.RecordCount);
   Screen.Cursor := crDefault;
End;

//******************************************************************************
// Nombre : btnImprimirClick
// Descripcion : Imprimir Reporte
//******************************************************************************

Procedure TFCantidadIdentificados.btnImprimirClick(Sender : TObject);
Begin
   ppLblTit01.Caption := 'Reporte de Asociados Idenficados';
   ppLblTit02.Caption := '';
   ppLblUser.Caption := 'Emitido Por :  ' + Trim(DM1.CrgDescrip('USERID=' + QuotedStr(Trim(DM1.wUsuario)), 'TGE006', 'USERNOM'));
   dbpRptPrincipal.DataSource := DM1.dsQry2;
   repRptPrincipal.Print;
   //desRptPrincipal.Show;
End;

End.

