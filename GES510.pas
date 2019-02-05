// Inicio Uso Estándares: 01/08/2011
// Unidad : Gestión de Cobranzas
// Formulario : FComCat
// Fecha de Creación :
// Autor : Equipo de Sistemas
// Objetivo : Comparar Categorias
// Actualizaciones:
// HPC_201119_GESCOB 19/10/2011 Acuerdo de Atencion 2011-02-V2.0
// HPC_201205_GESCOB 19/07/2012 adecuar los nombres de funciones al estandar de desarrollo
// DPP_201205_GESCOB: Pase a producción a partir de los pases HPC_201205 y HPC_201206
 
Unit GES510;

Interface

Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, Buttons, ExtCtrls, DBCtrls, wwdblook, Grids, Wwdbigrd,
   Wwdbgrid, db, ImgList, ppEndUsr, ppParameter, ppRegion, ppCtrls,
   ppBands, ppReport, ppStrtch, ppSubRpt, ppVar, ppPrnabl, ppClass, ppCache,
   ppProd, ppComm, ppRelatv, ppDB, ppDBPipe;

Type
   TFComCat = Class(TForm)
      gbFiltro : TGroupBox;
      Label2 : TLabel;
      Label3 : TLabel;
      pnlControles : TPanel;
      btnImprimir : TBitBtn;
      btnSalir : TBitBtn;
      btnComparar : TBitBtn;
      pnlPeriodo01 : TPanel;
      Panel1 : TPanel;
      lblPeriodo01 : TLabel;
      pnlPeriodo02 : TPanel;
      Panel3 : TPanel;
      lblPeriodo02 : TLabel;
      dbgPeriodo01 : TwwDBGrid;
      dbgPeriodo02 : TwwDBGrid;
      cbPeriodo01 : TComboBox;
      cbPeriodo02 : TComboBox;
      imgFlecha : TImageList;
      Label1 : TLabel;
      cbTipoPago : TComboBox;
      ppdPrincipal : TppDBPipeline;
      pprPrincipal : TppReport;
      ppParameterList1 : TppParameterList;
      ppdsPrincipal : TppDesigner;
      ppHeaderBand41 : TppHeaderBand;
      ppLabel858 : TppLabel;
      ppLabel859 : TppLabel;
      ppLabel860 : TppLabel;
      ppLabel861 : TppLabel;
      ppLabel862 : TppLabel;
      ppSystemVariable83 : TppSystemVariable;
      ppSystemVariable84 : TppSystemVariable;
      ppSystemVariable85 : TppSystemVariable;
      pplTituloCab : TppLabel;
      ppLabel863 : TppLabel;
      ppLabel864 : TppLabel;
      ppLabel865 : TppLabel;
      ppLabel2 : TppLabel;
      ppLabel3 : TppLabel;
      pplTituloPeriodo01 : TppLabel;
      ppLabel5 : TppLabel;
      ppLabel6 : TppLabel;
      ppLine3 : TppLine;
      ppLabel1 : TppLabel;
      ppLabel4 : TppLabel;
      pplTituloPeriodo02 : TppLabel;
      ppLabel8 : TppLabel;
      ppLabel9 : TppLabel;
      ppLine5 : TppLine;
      pplTituloDet : TppLabel;
      ppDetailBand44 : TppDetailBand;
      ppIPromedioSubio : TppImage;
      ppIPromedioBajo : TppImage;
      ppIPromedioIgual : TppImage;
      ppIMontoSubio : TppImage;
      ppIMontoBajo : TppImage;
      ppIMontoIgual : TppImage;
      ppICantidadBajo : TppImage;
      ppICantidadSubio : TppImage;
      ppICantidadIgual : TppImage;
      ppDBText1 : TppDBText;
      ppDBText2 : TppDBText;
      ppDBText3 : TppDBText;
      ppDBText4 : TppDBText;
      ppLine1 : TppLine;
      ppLine2 : TppLine;
      ppLine4 : TppLine;
      ppDBText5 : TppDBText;
      ppDBText6 : TppDBText;
      ppDBText7 : TppDBText;
      ppDBText8 : TppDBText;
      ppLine6 : TppLine;
      ppLine7 : TppLine;
      ppLine8 : TppLine;
      ppFooterBand36 : TppFooterBand;
      ppLblUser : TppLabel;
      ppSummaryBand41 : TppSummaryBand;
      ppLabel7 : TppLabel;
      ppDBCalc1 : TppDBCalc;
      ppDBCalc2 : TppDBCalc;
      ppLabel10 : TppLabel;
      ppDBCalc4 : TppDBCalc;
      ppDBCalc5 : TppDBCalc;
      pplPromedioTotal02 : TppLabel;
      pplPromedioTotal01 : TppLabel;
      Procedure btnCompararClick(Sender : TObject);
      Procedure FormCreate(Sender : TObject);
      Procedure cbPeriodo01Click(Sender : TObject);
      Procedure btnSalirClick(Sender : TObject);
      Procedure dbgPeriodo01DrawDataCell(Sender : TObject; Const Rect : TRect;
         Field : TField; State : TGridDrawState);
      Procedure dbgPeriodo01DblClick(Sender : TObject);
      Procedure dbgPeriodo01RowChanged(Sender : TObject);
      Procedure dbgPeriodo02RowChanged(Sender : TObject);
      Procedure cbTipoPagoClick(Sender : TObject);
      Procedure cbPeriodo02Click(Sender : TObject);
      Procedure btnImprimirClick(Sender : TObject);
      Procedure ppDetailBand44BeforePrint(Sender : TObject);
   Private
      gnCantidadAsociados : integer;
      gnMontoPagado : Currency;
      //Inicio: DPP_201205_GESCOB
      Procedure fn_llenar_combo_periodos(wgCbo : TComboBox; wgMaxPeriodo : integer; wgMinPeriodo : integer);
      //Fin: DPP_201205_GESCOB
      Procedure fn_get_pagos(wgTipoPago : String; wgCategoria,
         wgPeriodo : String);
      Procedure fn_comparar_periodos;
      Procedure fn_limpiar_datos;
    { Private declarations }
   Public
    { Public declarations }
   End;

Var
   FComCat : TFComCat;

Implementation

Uses GESDM1, GES511;

{$R *.dfm}

//******************************************************************************
// Nombre : fn_limpiar_datos
// Descripcion : limpiar datos de la grilla
//******************************************************************************
Procedure TFComCat.fn_limpiar_datos();
Var
   xsSQL : String;
Begin
   // PERIODO 02
   lblPeriodo02.Caption := '';
   xsSQL := 'SELECT '' '' COD_CATEGORIA, '' ''  DES_CATEGORIA, 0 CANTIDAD, 0.0 MONTO, 0.0 PROMEDIO '
      + '      FROM DUAL WHERE 1 = 2 ';

   DM1.cdsQry2.Close;
   DM1.cdsQry2.DataRequest(xsSQL);
   DM1.cdsQry2.Open;

   dbgPeriodo02.DataSource := DM1.dsQry2;
   dbgPeriodo02.Selected.Clear;
   dbgPeriodo02.Selected.Add('DES_CATEGORIA'#9'12'#9'CATEGORIA');
   dbgPeriodo02.Selected.Add('CANTIDAD'#9'13'#9'CANTIDAD');
   dbgPeriodo02.Selected.Add('MONTO'#9'18'#9'MONTO~S/.');
   dbgPeriodo02.Selected.Add('PROMEDIO'#9'18'#9'PROMEDIO~S/.');
   dbgPeriodo02.ApplySelected;
   dbgPeriodo02.ColumnByName('DES_CATEGORIA').FooterValue := 'Total : ';
   dbgPeriodo02.ColumnByName('CANTIDAD').FooterValue := '';
   dbgPeriodo02.ColumnByName('MONTO').FooterValue := '';
   dbgPeriodo02.ColumnByName('PROMEDIO').FooterValue := '';

   // PERIODO 01
   lblPeriodo01.Caption := '';
   xsSQL := 'SELECT '' '' COD_CATEGORIA, '' '' DES_CATEGORIA, '
      + '           2 CANTIDAD_SUBIO, 0 CANTIDAD, '
      + '           2 MONTO_SUBIO, 0.0 MONTO, '
      + '           2 PROMEDIO_SUBIO, 0.0 PROMEDIO, '
      + '           '' '' COD_CATEGORIA_02, ''               ''  DES_CATEGORIA_02, '
      + '           0 CANTIDAD_02, 0.0 MONTO_02, 0.0 PROMEDIO_02 '
      + '      FROM DUAL WHERE 1 = 2 ';

   DM1.cdsQry1.Close;
   DM1.cdsQry1.DataRequest(xsSQL);
   DM1.cdsQry1.Open;
   dbgPeriodo01.DataSource := DM1.dsQry1;
   dbgPeriodo01.Selected.Clear;
   dbgPeriodo01.Selected.Add('DES_CATEGORIA'#9'12'#9'CATEGORIA');
   dbgPeriodo01.Selected.Add('CANTIDAD_SUBIO'#9'2'#9' '#9'F'#9'CANTIDAD');
   dbgPeriodo01.Selected.Add('CANTIDAD'#9'10'#9' '#9'F'#9'CANTIDAD');
   dbgPeriodo01.Selected.Add('MONTO_SUBIO'#9'2'#9' '#9'F'#9'MONTO');
   dbgPeriodo01.Selected.Add('MONTO'#9'15'#9'S/.'#9'F'#9'MONTO');
   dbgPeriodo01.Selected.Add('PROMEDIO_SUBIO'#9'2'#9' '#9'F'#9'PROMEDIO');
   dbgPeriodo01.Selected.Add('PROMEDIO'#9'15'#9'S/.'#9'F'#9'PROMEDIO');
   dbgPeriodo01.ApplySelected;
   dbgPeriodo01.ColumnByName('DES_CATEGORIA').FooterValue := 'Total : ';
   dbgPeriodo01.ColumnByName('CANTIDAD').FooterValue := '';
   dbgPeriodo01.ColumnByName('MONTO').FooterValue := '';
   dbgPeriodo01.ColumnByName('PROMEDIO').FooterValue := '';

   pnlPeriodo01.Enabled := false;
   pnlPeriodo02.Enabled := false;
   btnImprimir.Enabled := false;
End;

//Inicio: DPP_201205_GESCOB
//******************************************************************************
// Nombre : fn_llenar_combo_periodos
// Descripcion : llena los combos con los periodos que estan disponibles
//******************************************************************************
Procedure TFComCat.fn_llenar_combo_periodos(wgCbo : TComboBox; wgMaxPeriodo : integer; wgMinPeriodo : integer);
Var
   xni : integer;
   xnmes : integer;
Begin
   wgCbo.Items.Clear;
   xni := wgMaxPeriodo;
   While xni >= wgMinPeriodo Do
   Begin
      xnmes := strtoint(Copy(inttostr(xni), 5, 2));
      If (xnmes >= 1) And (xnmes <= 12) Then
      Begin
         wgCbo.Items.Add(inttostr(xni));
      End;
      xni := xni - 1;
   End;
   wgCbo.ItemIndex := 0;
End;

//******************************************************************************
// Nombre : FormCreate
// Descripcion : inicializar controles con los valores que puede seleccionar
//******************************************************************************
Procedure TFComCat.FormCreate(Sender : TObject);
Var
   xsSQL : String;
   xsMaxPeriodo : String;
   xsMinPeriodo : String;
Begin

   xsSQL := 'SELECT MAX(PERIODO) MAX_PERIODO, MIN(PERIODO) MIN_PERIODO FROM GES_COB_RPT_ING_MEN';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xsSQL);
   DM1.cdsQry.Open;
   xsMaxPeriodo := DM1.cdsQry.fieldbyname('MAX_PERIODO').AsString;
   xsMinPeriodo := DM1.cdsQry.fieldbyname('MIN_PERIODO').AsString;

   xsSQL := 'SELECT MAX(PERIODO) MAX_PERIODO, MIN(PERIODO) MIN_PERIODO FROM GES_COB_RPT_ING_MEN WHERE PERIODO > ' + QuotedStr(xsMinPeriodo);
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xsSQL);
   DM1.cdsQry.Open;
   fn_llenar_combo_periodos(cbPeriodo01, DM1.cdsQry.fieldbyname('MAX_PERIODO').AsInteger, DM1.cdsQry.fieldbyname('MIN_PERIODO').AsInteger);

   xsSQL := 'SELECT MAX(PERIODO) MAX_PERIODO, MIN(PERIODO) MIN_PERIODO FROM GES_COB_RPT_ING_MEN WHERE PERIODO < ' + QuotedStr(xsMaxPeriodo);
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xsSQL);
   DM1.cdsQry.Open;
   fn_llenar_combo_periodos(cbPeriodo02, DM1.cdsQry.fieldbyname('MAX_PERIODO').AsInteger, DM1.cdsQry.fieldbyname('MIN_PERIODO').AsInteger);

   fn_limpiar_datos();
End;
//Fin: DPP_201205_GESCOB

//******************************************************************************
// Nombre : cbPeriodo01Click
// Descripcion : cambiar el periodo 01 seleecionado
//******************************************************************************
Procedure TFComCat.cbPeriodo01Click(Sender : TObject);
Begin
   fn_limpiar_datos();
   // siempre va a tener un periodo menos
   cbPeriodo02.ItemIndex := cbPeriodo01.ItemIndex;
End;

//******************************************************************************
// Nombre : fn_get_pagos
// Descripcion : obtener los pagos por periodos
//******************************************************************************
Procedure TFComCat.fn_get_pagos(wgTipoPago, wgCategoria, wgPeriodo : String);
Var
   xsSQL : String;
   xsColumnaPago : String;
Begin

   If wgTipoPago = 'EFECTIVO' Then
      xsColumnaPago := 'TOTEFE'
   Else
      If wgTipoPago = 'BANCO' Then
         xsColumnaPago := 'TOTBAN'
      Else
         If wgTipoPago = 'NOTA DE ABONO' Then
            xsColumnaPago := 'TOTNAB'
         Else
            If wgTipoPago = 'REFINANCIADO' Then
               xsColumnaPago := 'TOTREF'
            Else
               If wgTipoPago = 'PLANILLA' Then
                  xsColumnaPago := 'TOTPLA'
               Else
                  If wgTipoPago = 'LIQ. BENEFICIO' Then
                     xsColumnaPago := 'TOTBEN';

   xsSQL := 'SELECT NVL(COUNT(A.ASOID),0) CANTIDAD, NVL(SUM(' + xsColumnaPago + '), 0) MONTO'
      + '      FROM (SELECT ASOID, ' + xsColumnaPago
      + '              FROM GES_COB_RPT_ING_MEN '
      + '             WHERE PERIODO = ' + QuotedStr(wgPeriodo)
      + '               AND FLG = ''S'' '
      + '               AND ' + xsColumnaPago + ' > 0 ) A, '
      + '           (SELECT ASOID, CFC_F '
      + '              FROM CFC000 '
      + '             WHERE PERIODO = ' + QuotedStr(wgPeriodo) + ') B '
      + '     WHERE A.ASOID = B.ASOID(+) '
      + '       AND NVL(B.CFC_F, ''X'') = ' + QuotedStr(wgCategoria);

   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xsSQL);
   DM1.cdsQry.Open;

   gnCantidadAsociados := DM1.cdsQry.fieldbyname('CANTIDAD').AsInteger;
   gnMontoPagado := DM1.cdsQry.fieldbyname('MONTO').AsInteger;
End;

//******************************************************************************
// Nombre : fn_comparar_periodos
// Descripcion : comparar periodos que se muestran en pantalla
//******************************************************************************
Procedure TFComCat.fn_comparar_periodos();
Begin
   DM1.cdsQry1.First;
   DM1.cdsQry2.First;
   While Not DM1.cdsQry1.Eof Do
   Begin
      DM1.cdsQry1.Edit;
      If (DM1.cdsQry1.FieldByName('CANTIDAD').Value < DM1.cdsQry2.FieldByName('CANTIDAD').Value) Then
         DM1.cdsQry1.FieldByName('CANTIDAD_SUBIO').Value := 0
      Else
         If (DM1.cdsQry1.FieldByName('CANTIDAD').Value > DM1.cdsQry2.FieldByName('CANTIDAD').Value) Then
            DM1.cdsQry1.FieldByName('CANTIDAD_SUBIO').Value := 1
         Else
            DM1.cdsQry1.FieldByName('CANTIDAD_SUBIO').Value := 2;

      If (DM1.cdsQry1.FieldByName('MONTO').AsCurrency < DM1.cdsQry2.FieldByName('MONTO').AsCurrency) Then
         DM1.cdsQry1.FieldByName('MONTO_SUBIO').Value := 0
      Else
         If (DM1.cdsQry1.FieldByName('MONTO').AsCurrency > DM1.cdsQry2.FieldByName('MONTO').AsCurrency) Then
            DM1.cdsQry1.FieldByName('MONTO_SUBIO').Value := 1
         Else
            DM1.cdsQry1.FieldByName('MONTO_SUBIO').Value := 2;

      If (DM1.cdsQry1.FieldByName('PROMEDIO').AsCurrency < DM1.cdsQry2.FieldByName('PROMEDIO').AsCurrency) Then
         DM1.cdsQry1.FieldByName('PROMEDIO_SUBIO').Value := 0
      Else
         If (DM1.cdsQry1.FieldByName('PROMEDIO').AsCurrency > DM1.cdsQry2.FieldByName('PROMEDIO').AsCurrency) Then
            DM1.cdsQry1.FieldByName('PROMEDIO_SUBIO').Value := 1
         Else
            DM1.cdsQry1.FieldByName('PROMEDIO_SUBIO').Value := 2;

      DM1.cdsQry1.FieldByName('COD_CATEGORIA_02').AsString := DM1.cdsQry2.FieldByName('COD_CATEGORIA').AsString;
      DM1.cdsQry1.FieldByName('DES_CATEGORIA_02').AsString := DM1.cdsQry2.FieldByName('DES_CATEGORIA').AsString;
      DM1.cdsQry1.FieldByName('CANTIDAD_02').Value := DM1.cdsQry2.FieldByName('CANTIDAD').Value;
      DM1.cdsQry1.FieldByName('MONTO_02').Value := DM1.cdsQry2.FieldByName('MONTO').Value;
      DM1.cdsQry1.FieldByName('PROMEDIO_02').Value := DM1.cdsQry2.FieldByName('PROMEDIO').Value;

      DM1.cdsQry1.Post;
      DM1.cdsQry1.Next; //ambos avanzan juntos : DM1.cdsQry2.Next;
   End;
   DM1.cdsQry1.First;
   DM1.cdsQry2.First;
End;

//******************************************************************************
// Nombre : btnCompararClick
// Descripcion : valida y obtiene los datos para los periodos seleccionados
//******************************************************************************
Procedure TFComCat.btnCompararClick(Sender : TObject);
Var
   xsSQL : String;
   xnCantidad : Integer;
   xnMonto : Currency;
   xnPromedio : Currency;
Begin
   If cbPeriodo01.Text = '' Then
   Begin
      MessageDlg('Seleccione el Periodo 1!', mtInformation, [mbOk], 0);
      cbPeriodo01.SetFocus;
      exit;
   End;

   If cbPeriodo02.Text = '' Then
   Begin
      MessageDlg('Seleccione el Periodo 2!', mtInformation, [mbOk], 0);
      cbPeriodo02.SetFocus;
      exit;
   End;

   If strtoint(cbPeriodo01.Text) <= strtoint(cbPeriodo02.Text) Then
   Begin
      MessageDlg('Periodo 1 debe ser mayor que el Periodo 2!', mtInformation, [mbOk], 0);
      cbPeriodo02.SetFocus;
      exit;
   End;

   If cbTipoPago.Text = '' Then
   Begin
      MessageDlg('Seleccione el Tipo de Pago!', mtInformation, [mbOk], 0);
      cbTipoPago.SetFocus;
      exit;
   End;

   Screen.Cursor := crHourGlass;
   // CARGAR PERIODO 2
   lblPeriodo02.Caption := DM1.DesMes(strtoint(Copy(cbPeriodo02.Text, 5, 2)), 'N') + ' ' + copy(cbPeriodo02.Text, 1, 4);
   xsSQL := 'SELECT COD_CATEGORIA, DES_CATEGORIA, 0 CANTIDAD, 0.0 MONTO, 0.0 PROMEDIO '
      + '      FROM (SELECT ''0'' COD_CATEGORIA, ''NORMAL'' DES_CATEGORIA, 0 ORDEN FROM DUAL UNION ALL '
      + '            SELECT ''A'' COD_CATEGORIA, ''CPP'' DES_CATEGORIA, 1 ORDEN FROM DUAL UNION ALL '
      + '            SELECT ''B'' COD_CATEGORIA, ''DEFICIENTE'' DES_CATEGORIA, 2 ORDEN FROM DUAL UNION ALL '
      + '            SELECT ''C'' COD_CATEGORIA, ''DUDOSO'' DES_CATEGORIA, 3 ORDEN FROM DUAL UNION ALL '
      + '            SELECT ''D'' COD_CATEGORIA, ''PERDIDA'' DES_CATEGORIA, 4 ORDEN FROM DUAL UNION ALL '
      + '            SELECT ''X'' COD_CATEGORIA, ''SIN CALIF.'' DES_CATEGORIA, 5 ORDEN FROM DUAL) '
      + '     ORDER BY ORDEN ';

   DM1.cdsQry2.Close;
   DM1.cdsQry2.DataRequest(xsSQL);
   DM1.cdsQry2.Open;
   dbgPeriodo02.DataSource := DM1.dsQry2;
   TNumericField(DM1.cdsQry2.fieldbyname('CANTIDAD')).DisplayFormat := '###,###';
   TNumericField(DM1.cdsQry2.fieldbyname('MONTO')).DisplayFormat := '###,###.#0';
   TNumericField(DM1.cdsQry2.fieldbyname('PROMEDIO')).DisplayFormat := '###,###.#0';
   xnCantidad := 0;
   xnMonto := 0;
   xnPromedio := 0;
   DM1.cdsQry2.First;
   While Not DM1.cdsQry2.Eof Do
   Begin
      fn_get_pagos(cbTipoPago.Text, DM1.cdsQry2.FieldByName('COD_CATEGORIA').AsString, cbPeriodo02.Text);
      DM1.cdsQry2.Edit;
      DM1.cdsQry2.FieldByName('CANTIDAD').AsInteger := gnCantidadAsociados;
      DM1.cdsQry2.FieldByName('MONTO').AsCurrency := gnMontoPagado;
      If DM1.cdsQry2.FieldByName('CANTIDAD').AsCurrency > 0 Then
         DM1.cdsQry2.FieldByName('PROMEDIO').AsCurrency := DM1.cdsQry2.FieldByName('MONTO').AsCurrency / DM1.cdsQry2.FieldByName('CANTIDAD').AsCurrency
      Else
         DM1.cdsQry2.FieldByName('PROMEDIO').AsCurrency := 0;
      DM1.cdsQry2.Post;
      xnCantidad := xnCantidad + DM1.cdsQry2.FieldByName('CANTIDAD').AsInteger;
      xnMonto := xnMonto + DM1.cdsQry2.FieldByName('MONTO').AsCurrency;
      DM1.cdsQry2.Next;
   End;
   DM1.cdsQry2.First;
   If xnCantidad > 0 Then
      xnPromedio := xnMonto / xnCantidad
   Else
      xnPromedio := 0;

   dbgPeriodo02.ColumnByName('DES_CATEGORIA').FooterValue := 'Total : ';
   dbgPeriodo02.ColumnByName('CANTIDAD').FooterValue := FloatToStrF(xnCantidad, ffNumber, 15, 0);
   dbgPeriodo02.ColumnByName('MONTO').FooterValue := FloatToStrF(xnMonto, ffNumber, 15, 2);
   dbgPeriodo02.ColumnByName('PROMEDIO').FooterValue := FloatToStrF(xnPromedio, ffNumber, 15, 2);
   dbgPeriodo02.Refresh;

   // CARGAR PERIODO 1
   lblPeriodo01.Caption := DM1.DesMes(strtoint(Copy(cbPeriodo01.Text, 5, 2)), 'N') + ' ' + copy(cbPeriodo01.Text, 1, 4);
   xsSQL := 'SELECT COD_CATEGORIA, DES_CATEGORIA, '
      + '           2 CANTIDAD_SUBIO, 0 CANTIDAD, '
      + '           2 MONTO_SUBIO, 0.0 MONTO, '
      + '           2 PROMEDIO_SUBIO, 0.0 PROMEDIO, '
      + '           '' '' COD_CATEGORIA_02, ''               ''  DES_CATEGORIA_02, '
      + '           0 CANTIDAD_02, 0.0 MONTO_02, 0.0 PROMEDIO_02 '
      + '      FROM (SELECT ''0'' COD_CATEGORIA, ''NORMAL'' DES_CATEGORIA, 0 ORDEN FROM DUAL UNION ALL '
      + '            SELECT ''A'' COD_CATEGORIA, ''CPP'' DES_CATEGORIA, 1 ORDEN FROM DUAL UNION ALL '
      + '            SELECT ''B'' COD_CATEGORIA, ''DEFICIENTE'' DES_CATEGORIA, 2 ORDEN FROM DUAL UNION ALL '
      + '            SELECT ''C'' COD_CATEGORIA, ''DUDOSO'' DES_CATEGORIA, 3 ORDEN FROM DUAL UNION ALL '
      + '            SELECT ''D'' COD_CATEGORIA, ''PERDIDA'' DES_CATEGORIA, 4 ORDEN FROM DUAL UNION ALL '
      + '            SELECT ''X'' COD_CATEGORIA, ''SIN CALIF.'' DES_CATEGORIA, 5 ORDEN FROM DUAL) '
      + '     ORDER BY ORDEN ';

   DM1.cdsQry1.Close;
   DM1.cdsQry1.DataRequest(xsSQL);
   DM1.cdsQry1.Open;
   dbgPeriodo01.DataSource := DM1.dsQry1;
   TNumericField(DM1.cdsQry1.fieldbyname('CANTIDAD')).DisplayFormat := '###,###';
   TNumericField(DM1.cdsQry1.fieldbyname('MONTO')).DisplayFormat := '###,###.#0';
   TNumericField(DM1.cdsQry1.fieldbyname('PROMEDIO')).DisplayFormat := '###,###.#0';
   xnCantidad := 0;
   xnMonto := 0;
   xnPromedio := 0;
   DM1.cdsQry1.First;
   While Not DM1.cdsQry1.Eof Do
   Begin
      DM1.cdsQry1.Edit;
      fn_get_pagos(cbTipoPago.Text, DM1.cdsQry1.FieldByName('COD_CATEGORIA').AsString, cbPeriodo01.Text);
      DM1.cdsQry1.FieldByName('CANTIDAD').AsInteger := gnCantidadAsociados;
      DM1.cdsQry1.FieldByName('MONTO').AsCurrency := gnMontoPagado;
      If DM1.cdsQry1.FieldByName('CANTIDAD').AsCurrency > 0 Then
         DM1.cdsQry1.FieldByName('PROMEDIO').AsCurrency := DM1.cdsQry1.FieldByName('MONTO').AsCurrency / DM1.cdsQry1.FieldByName('CANTIDAD').AsCurrency
      Else
         DM1.cdsQry1.FieldByName('PROMEDIO').AsCurrency := 0;
      DM1.cdsQry1.Post;
      xnCantidad := xnCantidad + DM1.cdsQry1.FieldByName('CANTIDAD').AsInteger;
      xnMonto := xnMonto + DM1.cdsQry1.FieldByName('MONTO').AsCurrency;
      DM1.cdsQry1.Next;
   End;
   DM1.cdsQry1.First;
   If xnCantidad > 0 Then
      xnPromedio := xnMonto / xnCantidad
   Else
      xnPromedio := 0;
   dbgPeriodo01.ColumnByName('DES_CATEGORIA').FooterValue := 'Total : ';
   dbgPeriodo01.ColumnByName('CANTIDAD').FooterValue := FloatToStrF(xnCantidad, ffNumber, 15, 0);
   dbgPeriodo01.ColumnByName('MONTO').FooterValue := FloatToStrF(xnMonto, ffNumber, 15, 2);
   dbgPeriodo01.ColumnByName('PROMEDIO').FooterValue := FloatToStrF(xnPromedio, ffNumber, 15, 2);
   dbgPeriodo01.Refresh;

   //comparar periodos
   fn_comparar_periodos();
   pnlPeriodo01.Enabled := DM1.cdsQry1.RecordCount > 0;
   pnlPeriodo02.Enabled := DM1.cdsQry2.RecordCount > 0;
   btnImprimir.Enabled := pnlPeriodo01.Enabled And pnlPeriodo02.Enabled;
   Screen.Cursor := crDefault;
End;

//******************************************************************************
// Nombre : btnSalirClick
// Descripcion : cerrar el formulario
//******************************************************************************
Procedure TFComCat.btnSalirClick(Sender : TObject);
Begin
   Close;
End;

//******************************************************************************
// Nombre : dbgPeriodo01DrawDataCell
// Descripcion : pintar celdas en el grid
//******************************************************************************
Procedure TFComCat.dbgPeriodo01DrawDataCell(Sender : TObject;
   Const Rect : TRect; Field : TField; State : TGridDrawState);
Begin
   If Field.FieldName = 'CANTIDAD_SUBIO' Then
   Begin
      dbgPeriodo01.Canvas.FillRect(Rect);
      If Not Field.IsNull Then
         imgFlecha.Draw(dbgPeriodo01.Canvas, Rect.Left - 2, Rect.Top - 3, Field.Value, True);
   End;
   If Field.FieldName = 'MONTO_SUBIO' Then
   Begin
      dbgPeriodo01.Canvas.FillRect(Rect);
      If Not Field.IsNull Then
         imgFlecha.Draw(dbgPeriodo01.Canvas, Rect.Left - 2, Rect.Top - 3, Field.Value, True);
   End;
   If Field.FieldName = 'PROMEDIO_SUBIO' Then
   Begin
      dbgPeriodo01.Canvas.FillRect(Rect);
      If Not Field.IsNull Then
         imgFlecha.Draw(dbgPeriodo01.Canvas, Rect.Left - 2, Rect.Top - 3, Field.Value, True);
   End;
End;

//******************************************************************************
// Nombre : dbgPeriodo01DblClick
// Descripcion : mostrar detalle de los periodos
//******************************************************************************
Procedure TFComCat.dbgPeriodo01DblClick(Sender : TObject);
Begin
   If pnlPeriodo01.Enabled Then
   Begin
      FComCatDet := TFComCatDet.create(self);
      Try
         FComCatDet.edPeriodo01.text := cbPeriodo01.text;
         FComCatDet.edPeriodo02.text := cbPeriodo02.text;
         FComCatDet.edTipoPago.text := cbTipoPago.text;
         FComCatDet.edCategoria.text := DM1.cdsQry1.fieldbyname('DES_CATEGORIA').AsString;
         FComCatDet.edCategoriaCod.text := DM1.cdsQry1.fieldbyname('COD_CATEGORIA').AsString;
         FComCatDet.lblPeriodo01.Caption := lblPeriodo01.Caption;
         FComCatDet.lblPeriodo02.Caption := lblPeriodo02.Caption;
         FComCatDet.ShowModal();
      Finally
         FComCatDet.Free;
      End;
   End;
End;

//******************************************************************************
// Nombre : dbgPeriodo01RowChanged
// Descripcion : sincronizar movimientos de las grillas
//******************************************************************************
Procedure TFComCat.dbgPeriodo01RowChanged(Sender : TObject);
Begin
   If (DM1.cdsQry1.State <> dsInactive) And (DM1.cdsQry1.RecordCount > 0)
      And (DM1.cdsQry2.State <> dsInactive) And (DM1.cdsQry2.RecordCount > 0) Then
      DM1.cdsQry2.RecNo := DM1.cdsQry1.RecNo;
End;

//******************************************************************************
// Nombre : dbgPeriodo02RowChanged
// Descripcion : sincronizar movimientos de las grillas
//******************************************************************************
Procedure TFComCat.dbgPeriodo02RowChanged(Sender : TObject);
Begin
   If (DM1.cdsQry1.State <> dsInactive) And (DM1.cdsQry1.RecordCount > 0)
      And (DM1.cdsQry2.State <> dsInactive) And (DM1.cdsQry2.RecordCount > 0) Then
      DM1.cdsQry1.RecNo := DM1.cdsQry2.RecNo;
End;

//******************************************************************************
// Nombre : cbTipoPagoClick
// Descripcion : limpiar los datos del formulario
//******************************************************************************
Procedure TFComCat.cbTipoPagoClick(Sender : TObject);
Begin
   fn_limpiar_datos();
End;

//******************************************************************************
// Nombre : cbPeriodo02Click
// Descripcion : cambiar el periodo 02
//******************************************************************************
Procedure TFComCat.cbPeriodo02Click(Sender : TObject);
Begin
   fn_limpiar_datos();
End;

//******************************************************************************
// Nombre : btnImprimirClick
// Descripcion : imprimir reporte
//******************************************************************************
Procedure TFComCat.btnImprimirClick(Sender : TObject);
Begin
   ppdPrincipal.DataSource := DM1.dsQry1;
   pplTituloDet.Caption := '"' + UpperCase(cbTipoPago.Text) + '"';
   pplTituloPeriodo01.Caption := lblPeriodo01.Caption;
   pplTituloPeriodo02.Caption := lblPeriodo02.Caption;
   ppLblUser.Caption := 'Emitido Por :  ' + Trim(DM1.CrgDescrip('USERID=' + QuotedStr(Trim(DM1.wUsuario)), 'TGE006', 'USERNOM'));
   pprPrincipal.Print;
   //ppdsPrincipal.Show; // para editar en tiempo de ejecucion
End;

//******************************************************************************
// Nombre : ppDetailBand44BeforePrint
// Descripcion : mostrar flecha en reporte
//******************************************************************************
Procedure TFComCat.ppDetailBand44BeforePrint(Sender : TObject);
Begin
   ppICantidadBajo.Visible := DM1.cdsQry1.FieldByName('CANTIDAD_SUBIO').Value = 0;
   ppICantidadSubio.Visible := DM1.cdsQry1.FieldByName('CANTIDAD_SUBIO').Value = 1;
   ppICantidadIgual.Visible := DM1.cdsQry1.FieldByName('CANTIDAD_SUBIO').Value = 2;

   ppIMontoBajo.Visible := DM1.cdsQry1.FieldByName('MONTO_SUBIO').Value = 0;
   ppIMontoSubio.Visible := DM1.cdsQry1.FieldByName('MONTO_SUBIO').Value = 1;
   ppIMontoIgual.Visible := DM1.cdsQry1.FieldByName('MONTO_SUBIO').Value = 2;

   ppIPromedioBajo.Visible := DM1.cdsQry1.FieldByName('PROMEDIO_SUBIO').Value = 0;
   ppIPromedioSubio.Visible := DM1.cdsQry1.FieldByName('PROMEDIO_SUBIO').Value = 1;
   ppIPromedioIgual.Visible := DM1.cdsQry1.FieldByName('PROMEDIO_SUBIO').Value = 2;

   pplPromedioTotal01.Caption := dbgPeriodo01.ColumnByName('PROMEDIO').FooterValue;
   pplPromedioTotal02.Caption := dbgPeriodo02.ColumnByName('PROMEDIO').FooterValue;

End;
(******************************************************************************)
End.

