// Inicio Uso Estándares: 01/08/2011
// Unidad : Gestión de Cobranzas
// Formulario : TFResAsigGestor
// Fecha de Creación : 14/02/2012
// Autor : Equipo de Sistemas
// Objetivo :  Saber la Cantidad de asociados Asignados a los gestores
// Actualizaciones:
// HPC_201203_GESCOB 14/02/2012 Resumen de Asignacion por Gestor
// HPC_201206_GESCOB - F4 28/08/2012 AGREGAR CABECERAS EN EL REPORTE DE RESUMEN DE ASIGNACION POR GESTOR
// DPP_201205_GESCOB: Pase a producción a partir de los pases HPC_201205 y HPC_201206
// HPC_201705_GESCOB 12/12/2017 Observaciones en la información
Unit GES540;

Interface

// INICIO: DPP_201205_GESCOB - F4
// SE MODIFICO EL REPORTE
// FIN: DPP_201205_GESCOB - F4
Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, Buttons, ExtCtrls, Grids, Wwdbigrd, Wwdbgrid, wwExport, shellapi, db,
   ppParameter, ppBands, ppCtrls, ppVar, ppPrnabl, ppClass, ppCache, ppProd,
   ppReport, ppRelatv, ppDB, ppDBPipe, ppComm, ppEndUsr, wwclient, Wwdatsrc,
   DBGrids;

Type
   TFResAsigGestor = Class(TForm)
      pnlControles : TPanel;
      btnExportar : TBitBtn;
      btnSalir : TBitBtn;
      btnImprimir : TBitBtn;
      desRptPrincipal : TppDesigner;
      dbpRptPrincipal : TppDBPipeline;
      repRptPrincipal : TppReport;
      ppParameterList1 : TppParameterList;
      Panel1 : TPanel;
      Panel2 : TPanel;
      Panel3 : TPanel;
      dbgGestoresSeleccionados : TwwDBGrid;
      dbgGestores : TwwDBGrid;
      btnAsignarTodos : TButton;
      btnAsignarUno : TButton;
      btnDesasignarUno : TButton;
      btnDesasignarTodos : TButton;
      dtgData : TDBGrid;
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
      ppLine8 : TppLine;
      ppLine9 : TppLine;
      ppLabel5 : TppLabel;
      ppLabel6 : TppLabel;
      ppLine16 : TppLine;
      ppDetailBand44 : TppDetailBand;
      ppDBText1 : TppDBText;
      ppDBText4 : TppDBText;
      ppLine3 : TppLine;
      ppLine10 : TppLine;
      ppLine11 : TppLine;
      ppLine12 : TppLine;
      ppLine13 : TppLine;
      ppLine14 : TppLine;
      ppLine15 : TppLine;
      ppDBText5 : TppDBText;
      ppDBText6 : TppDBText;
      ppDBText3 : TppDBText;
      ppDBText2 : TppDBText;
      ppLine17 : TppLine;
      ppFooterBand36 : TppFooterBand;
      ppLblUser : TppLabel;
      ppSummaryBand41 : TppSummaryBand;
      ppLabel7 : TppLabel;
      ppDBCalc1 : TppDBCalc;
      ppDBCalc2 : TppDBCalc;
      ppDBCalc3 : TppDBCalc;
      ppDBCalc4 : TppDBCalc;
      ppDBCalc5 : TppDBCalc;
      ppShape1 : TppShape;
      ppShape2 : TppShape;
      ppLabel8 : TppLabel;
      ppLabel9 : TppLabel;
      Procedure btnSalirClick(Sender : TObject);
      Procedure FormClose(Sender : TObject; Var Action : TCloseAction);
      Procedure FormShow(Sender : TObject);
      Procedure btnExportarClick(Sender : TObject);
      Procedure btnImprimirClick(Sender : TObject);
      Procedure btnAsignarUnoClick(Sender : TObject);
      Procedure btnAsignarTodosClick(Sender : TObject);
      Procedure dbgGestoresDblClick(Sender : TObject);
      Procedure btnDesasignarUnoClick(Sender : TObject);
      Procedure btnDesasignarTodosClick(Sender : TObject);
      Procedure dbgGestoresSeleccionadosDblClick(Sender : TObject);
   Private
      xsPeriodoGestion : String;
      cdsGestores : TwwClientDataSet;
      dsGestores : TwwDataSource;
      cdsGestoresSeleccionados : TwwClientDataSet;
      dsGestoresSeleccionados : TwwDataSource;
      Procedure fn_pintar_grilla_gestores;
      Procedure fn_pintar_grilla_seleccionados;
      Procedure fn_asignar();
      Procedure fn_desasignar;
   Public
   End;

Var
   FResAsigGestor : TFResAsigGestor;

Implementation

Uses GESDM1, GES541;

{$R *.dfm}

//******************************************************************************
// Nombre : btnSalirClick
// Descripcion : Cerrar el formulario
//******************************************************************************

Procedure TFResAsigGestor.btnSalirClick(Sender : TObject);
Begin
   Close;
End;

//******************************************************************************
// Nombre : FormClose
// Descripcion : Liberar la memoria despues de cerrar el formulario
//******************************************************************************

Procedure TFResAsigGestor.FormClose(Sender : TObject;
   Var Action : TCloseAction);
Begin
   Action := caFree;
End;

//******************************************************************************
// Nombre : btnExportarClick
// Descripcion : exportar los datos a excel
//******************************************************************************

Procedure TFResAsigGestor.btnExportarClick(Sender : TObject);
Begin
   Screen.Cursor := crHourGlass;
   dtgData.DataSource := dsGestoresSeleccionados;

   If cdsGestoresSeleccionados.RecordCount > 0 Then
   Begin
      Try
         DM1.HojaExcel('Exportado', dsGestoresSeleccionados, dtgData);
      Except
         On Ex : Exception Do
         Begin
            Screen.Cursor := crDefault;
            Application.MessageBox(PChar(Ex.Message), 'ERROR', 16);
         End
      End;
   End;
   Screen.Cursor := crDefault;
End;

//******************************************************************************
// Nombre : FormShow
// Descripcion : Inicializar los controles
//******************************************************************************

Procedure TFResAsigGestor.FormShow(Sender : TObject);
Var
   xsSQL : String;
Begin
   Screen.Cursor := crHourGlass;
   xsSQL := 'SELECT MAX(PERIODO) PERIODO FROM GES_COB_CAB';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xsSQL);
   DM1.cdsQry.Open;
   xsPeriodoGestion := DM1.cdsQry.FieldByname('PERIODO').AsString;
// INICIO HPC_201705_GESCOB 12/12/2017 Observaciones en la información
   xsSQL := 'SELECT USUARIO, SUM(1) CANTIDAD_ASIGNADOS, '
      + '       SUM(NVL(CASE WHEN B.CFC_F = ''0'' THEN 1 ELSE 0 END, 0)) CANTIDAD_SALDO_TOTAL, '
      + '       SUM(NVL(CASE WHEN B.CFC_F = ''0'' THEN B.SALTOT ELSE 0 END, 0)) MONTO_SALDO_TOTAL, '
      + '       SUM(NVL(CASE WHEN B.CFC_F <> ''0'' THEN 1 ELSE 0 END, 0)) CANTIDAD_SALDO_VENCIDO, '
      + '       SUM(NVL(CASE WHEN B.CFC_F <> ''0'' THEN B.SALDOS_FV ELSE 0 END, 0)) MONTO_SALDO_VENCIDO '
      + ' FROM (SELECT USUARIO, ASOID '
      + '         FROM (SELECT DISTINCT USUARIO, ASOID '
      + '                 FROM GES_COB_DOM '
      + '                WHERE PERIODO = ' + QuotedStr(xsPeriodoGestion) +' AND OFDES_ASIG IS NOT NULL AND OBSGES LIKE ''MASIVO%''  '
      + '                UNION '
      + '               SELECT DISTINCT USUARIO, ASOID '
      + '                 FROM GES_COB_IND '
      + '                WHERE PERIODO = ' + QuotedStr(xsPeriodoGestion) + ')) A, GES000 B '
      + ' WHERE ' + QuotedStr(xsPeriodoGestion) + ' = B.PERIODO '
      + '   AND A.ASOID = B.ASOID '
      + ' GROUP BY USUARIO '
      + ' ORDER BY USUARIO ';
// FIN HPC_201705_GESCOB 12/12/2017 Observaciones en la información
   DM1.cdsQry1.Close;
   DM1.cdsQry1.DataRequest(xsSQL);
   DM1.cdsQry1.Open;

   cdsGestores := TwwClientDataSet.Create(Self);
   dsGestores := TwwDataSource.Create(Self);
   dsGestores.DataSet := cdsGestores;
   cdsGestores.Data := DM1.cdsQry1.Data;
   cdsGestores.IndexFieldNames := 'USUARIO';
   fn_pintar_grilla_gestores();

   cdsGestoresSeleccionados := TwwClientDataSet.Create(Self);
   dsGestoresSeleccionados := TwwDataSource.Create(Self);
   dsGestoresSeleccionados.DataSet := cdsGestoresSeleccionados;
   cdsGestoresSeleccionados.Data := DM1.cdsQry1.Data;
   cdsGestoresSeleccionados.IndexFieldNames := 'USUARIO';
   cdsGestoresSeleccionados.First;
   While Not cdsGestoresSeleccionados.Eof Do
   Begin
      cdsGestoresSeleccionados.Delete();
   End;
   fn_pintar_grilla_seleccionados();
   Screen.Cursor := crDefault;
End;

//******************************************************************************
// Nombre : fn_pintar_grilla_gestores
// Descripcion : pintar la grilla para los gestores
//******************************************************************************

Procedure TFResAsigGestor.fn_pintar_grilla_gestores();
Begin
   dbgGestores.DataSource := dsGestores;
   With dbgGestores, dbgGestores.DataSource.DataSet Do
   Begin
      Selected.Clear;
      Selected.Add('USUARIO'#9'20'#9'GESTOR');
      ApplySelected;
   End;
End;

//******************************************************************************
// Nombre : fn_pintar_grilla_seleccionados
// Descripcion : pintar la grilla para los gestores seleccionados
//******************************************************************************

Procedure TFResAsigGestor.fn_pintar_grilla_seleccionados();
Var
   xnCantidadAsignados : integer;
   xnCantidadSaldoTotal : integer;
   xnMontoSaldoTotal : Currency;
   xnCantidadSaldoVencido : Currency;
   xnMontoSaldoVencido : Currency;
Begin
   xnCantidadAsignados := 0;
   xnCantidadSaldoTotal := 0;
   xnMontoSaldoTotal := 0;
   xnCantidadSaldoVencido := 0;
   xnMontoSaldoVencido := 0;

   cdsGestoresSeleccionados.First;
   While Not cdsGestoresSeleccionados.Eof Do
   Begin
      xnCantidadAsignados := xnCantidadAsignados + cdsGestoresSeleccionados.fieldbyname('CANTIDAD_ASIGNADOS').AsInteger;
      xnCantidadSaldoTotal := xnCantidadSaldoTotal + cdsGestoresSeleccionados.fieldbyname('CANTIDAD_SALDO_TOTAL').AsInteger;
      xnMontoSaldoTotal := xnMontoSaldoTotal + cdsGestoresSeleccionados.fieldbyname('MONTO_SALDO_TOTAL').AsCurrency;
      xnCantidadSaldoVencido := xnCantidadSaldoVencido + cdsGestoresSeleccionados.fieldbyname('CANTIDAD_SALDO_VENCIDO').AsInteger;
      xnMontoSaldoVencido := xnMontoSaldoVencido + cdsGestoresSeleccionados.fieldbyname('MONTO_SALDO_VENCIDO').AsCurrency;
      cdsGestoresSeleccionados.Next;
   End;
   cdsGestoresSeleccionados.First;

   dbgGestoresSeleccionados.DataSource := dsGestoresSeleccionados;
   With dbgGestoresSeleccionados, dbgGestoresSeleccionados.DataSource.DataSet Do
   Begin
      Selected.Clear;
      Selected.Add('USUARIO'#9'20'#9'GESTOR');
      Selected.Add('CANTIDAD_ASIGNADOS'#9'5'#9'ASIGNADOS');
      Selected.Add('CANTIDAD_SALDO_TOTAL'#9'10'#9'CANTIDAD'#9'F'#9'SALDO TOTAL');
      Selected.Add('MONTO_SALDO_TOTAL'#9'15'#9'MONTO'#9'F'#9'SALDO TOTAL');
      Selected.Add('CANTIDAD_SALDO_VENCIDO'#9'10'#9'CANTIDAD'#9'F'#9'SALDO VENCIDO');
      Selected.Add('MONTO_SALDO_VENCIDO'#9'15'#9'MONTO'#9'F'#9'SALDO VENCIDO');
      ApplySelected;
   End;
   TNumericField(dbgGestoresSeleccionados.DataSource.DataSet.FieldByName('CANTIDAD_ASIGNADOS')).DisplayFormat := '###,##0';
   TNumericField(dbgGestoresSeleccionados.DataSource.DataSet.FieldByName('CANTIDAD_SALDO_TOTAL')).DisplayFormat := '###,##0';
   TNumericField(dbgGestoresSeleccionados.DataSource.DataSet.FieldByName('MONTO_SALDO_TOTAL')).DisplayFormat := '###,###,##0.#0';
   TNumericField(dbgGestoresSeleccionados.DataSource.DataSet.FieldByName('CANTIDAD_SALDO_VENCIDO')).DisplayFormat := '###,##0';
   TNumericField(dbgGestoresSeleccionados.DataSource.DataSet.FieldByName('MONTO_SALDO_VENCIDO')).DisplayFormat := '###,###,##0.#0';
   dbgGestoresSeleccionados.ColumnByName('USUARIO').FooterValue := 'Totales';
   dbgGestoresSeleccionados.ColumnByName('CANTIDAD_ASIGNADOS').FooterValue := FormatCurr('###,##0', xnCantidadAsignados);
   dbgGestoresSeleccionados.ColumnByName('CANTIDAD_SALDO_TOTAL').FooterValue := FormatCurr('###,##0', xnCantidadSaldoTotal);
   dbgGestoresSeleccionados.ColumnByName('MONTO_SALDO_TOTAL').FooterValue := FormatCurr('###,###,##0.#0', xnMontoSaldoTotal);
   dbgGestoresSeleccionados.ColumnByName('CANTIDAD_SALDO_VENCIDO').FooterValue := FormatCurr('###,##0', xnCantidadSaldoVencido);
   dbgGestoresSeleccionados.ColumnByName('MONTO_SALDO_VENCIDO').FooterValue := FormatCurr('###,###,##0.#0', xnMontoSaldoVencido);
End;

//******************************************************************************
// Nombre : btnImprimirClick
// Descripcion : Imprimir Reporte
//******************************************************************************

Procedure TFResAsigGestor.btnImprimirClick(Sender : TObject);
Begin
   ppLblTit01.Caption := 'Reporte de Asociados Asignados';
   ppLblTit02.Caption := '';
   ppLblUser.Caption := 'Emitido Por :  ' + Trim(DM1.CrgDescrip('USERID=' + QuotedStr(Trim(DM1.wUsuario)), 'TGE006', 'USERNOM'));
   dbpRptPrincipal.DataSource := dsGestoresSeleccionados;
   repRptPrincipal.Print;
   //desRptPrincipal.Show;
End;

//******************************************************************************
// Nombre : btnAsignarUnoClick
// Descripcion : evento que llamara a la funcion que
//               asignara un gestor a la lista que se mostrar en el reporte
//******************************************************************************

Procedure TFResAsigGestor.btnAsignarUnoClick(Sender : TObject);
Begin
   If cdsGestores.RecordCount > 0 Then
   Begin
      fn_asignar();
      fn_pintar_grilla_gestores();
      fn_pintar_grilla_seleccionados();
   End;
End;

//******************************************************************************
// Nombre : fn_asignar
// Descripcion : asignar un gestor a la lista que se mostrar en el reporte
//******************************************************************************

Procedure TFResAsigGestor.fn_asignar();
Begin
   cdsGestoresSeleccionados.Insert;
   cdsGestoresSeleccionados.FieldByName('USUARIO').Value := cdsGestores.FieldByName('USUARIO').Value;
   cdsGestoresSeleccionados.FieldByName('CANTIDAD_ASIGNADOS').Value := cdsGestores.FieldByName('CANTIDAD_ASIGNADOS').Value;
   cdsGestoresSeleccionados.FieldByName('CANTIDAD_SALDO_TOTAL').Value := cdsGestores.FieldByName('CANTIDAD_SALDO_TOTAL').Value;
   cdsGestoresSeleccionados.FieldByName('MONTO_SALDO_TOTAL').Value := cdsGestores.FieldByName('MONTO_SALDO_TOTAL').Value;
   cdsGestoresSeleccionados.FieldByName('CANTIDAD_SALDO_VENCIDO').Value := cdsGestores.FieldByName('CANTIDAD_SALDO_VENCIDO').Value;
   cdsGestoresSeleccionados.FieldByName('MONTO_SALDO_VENCIDO').Value := cdsGestores.FieldByName('MONTO_SALDO_VENCIDO').Value;
   cdsGestoresSeleccionados.Post;

   cdsGestores.Delete;
End;

//******************************************************************************
// Nombre : btnAsignarTodosClick
// Descripcion : evento que llamara a la funcion que
//               asignara un gestor a la lista que se mostrar en el reporte
//******************************************************************************

Procedure TFResAsigGestor.btnAsignarTodosClick(Sender : TObject);
Begin
   cdsGestores.First;
   While Not cdsGestores.Eof Do
   Begin
      btnAsignarUnoClick(btnAsignarUno);
   End;
End;

//******************************************************************************
// Nombre : dbgGestoresDblClick
// Descripcion : evento que llamara a la funcion que
//               asignara un gestor a la lista que se mostrar en el reporte
//******************************************************************************

Procedure TFResAsigGestor.dbgGestoresDblClick(Sender : TObject);
Begin
   btnAsignarUnoClick(btnAsignarUno);
End;

//******************************************************************************
// Nombre : btnDesasignarUnoClick
// Descripcion : evento que llamara a la funcion que
//               desasignara un gestor a la lista que se mostrar en el reporte
//******************************************************************************

Procedure TFResAsigGestor.btnDesasignarUnoClick(Sender : TObject);
Begin
   If cdsGestoresSeleccionados.RecordCount > 0 Then
   Begin
      fn_desasignar();
      fn_pintar_grilla_gestores();
      fn_pintar_grilla_seleccionados();
   End;
End;

//******************************************************************************
// Nombre : fn_desasignar
// Descripcion : funcion que desasigna un gestor de la lista que se muestra en el reporte
//******************************************************************************

Procedure TFResAsigGestor.fn_desasignar();
Begin
   cdsGestores.Insert;
   cdsGestores.FieldByName('USUARIO').Value := cdsGestoresSeleccionados.FieldByName('USUARIO').Value;
   cdsGestores.FieldByName('CANTIDAD_ASIGNADOS').Value := cdsGestoresSeleccionados.FieldByName('CANTIDAD_ASIGNADOS').Value;
   cdsGestores.FieldByName('CANTIDAD_SALDO_TOTAL').Value := cdsGestoresSeleccionados.FieldByName('CANTIDAD_SALDO_TOTAL').Value;
   cdsGestores.FieldByName('MONTO_SALDO_TOTAL').Value := cdsGestoresSeleccionados.FieldByName('MONTO_SALDO_TOTAL').Value;
   cdsGestores.FieldByName('CANTIDAD_SALDO_VENCIDO').Value := cdsGestoresSeleccionados.FieldByName('CANTIDAD_SALDO_VENCIDO').Value;
   cdsGestores.FieldByName('MONTO_SALDO_VENCIDO').Value := cdsGestoresSeleccionados.FieldByName('MONTO_SALDO_VENCIDO').Value;
   cdsGestores.Post;

   cdsGestoresSeleccionados.Delete;
End;

//******************************************************************************
// Nombre : btnDesasignarTodosClick
// Descripcion : evento que llamara a la funcion que
//               deasignara a todos los gestores de la lista que se mostrar en el reporte
//******************************************************************************

Procedure TFResAsigGestor.btnDesasignarTodosClick(Sender : TObject);
Begin
   cdsGestoresSeleccionados.First;
   While Not cdsGestoresSeleccionados.Eof Do
   Begin
      btnDesasignarUnoClick(btnDesasignarUno);
   End;
End;

//******************************************************************************
// Nombre : dbgGestoresSeleccionadosDblClick
// Descripcion : muestra el detalle de las gestiones asignadas
//******************************************************************************

Procedure TFResAsigGestor.dbgGestoresSeleccionadosDblClick(
   Sender : TObject);
Var
   xxFrm : TFDetAsigGestor;
Begin
   If cdsGestoresSeleccionados.RecordCount > 0 Then
   Begin
      xxFrm := TFDetAsigGestor.create(self);
      Try
         xxFrm.xsPeriodoGestion := self.xsPeriodoGestion;
         xxFrm.xsGestor := cdsGestoresSeleccionados.fieldbyname('USUARIO').AsString;
         xxFrm.showmodal();
      Finally
         xxFrm.free;
      End;
   End;
End;

End.
