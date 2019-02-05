// Inicio Uso Estándares: 01/08/2011
// Unidad : Gestión de Cobranzas
// Formulario : FComCatDet
// Fecha de Creación :
// Autor : Equipo de Sistemas
// Objetivo : Comparar Categorias por Dias de Atraso
// Actualizaciones:
// HPC_201119_GESCOB 19/10/2011 Acuerdo de Atencion 2011-02-V2.0
Unit GES511;

Interface

Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, Buttons, ExtCtrls, DBCtrls, wwdblook, Grids, Wwdbigrd,
   Wwdbgrid, db, ImgList, ppDB, ppDBPipe, ppEndUsr, ppParameter, ppCtrls,
   ppBands, ppVar, ppPrnabl, ppClass, ppCache, ppComm, ppRelatv, ppProd,
   ppReport;

Type
   TFComCatDet = Class(TForm)
      gbFiltro : TGroupBox;
      Label2 : TLabel;
      Label3 : TLabel;
      pnlControles : TPanel;
      btnImprimir : TBitBtn;
      btnSalir : TBitBtn;
      pnlPeriodo01 : TPanel;
      Panel1 : TPanel;
      lblPeriodo01 : TLabel;
      pnlPeriodo02 : TPanel;
      Panel3 : TPanel;
      lblPeriodo02 : TLabel;
      dbgPeriodo01 : TwwDBGrid;
      dbgPeriodo02 : TwwDBGrid;
      imgFlecha : TImageList;
      Label1 : TLabel;
      edPeriodo01 : TEdit;
      edPeriodo02 : TEdit;
      edTipoPago : TEdit;
      Label4 : TLabel;
      edCategoria : TEdit;
      edCategoriaCod : TEdit;
      ppdPrincipal : TppDBPipeline;
      ppdsPrincipal : TppDesigner;
      pprPrincipal : TppReport;
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
      ppIMontoSubio : TppImage;
      ppIMontoBajo : TppImage;
      ppDBText3 : TppDBText;
      ppIMontoIgual : TppImage;
      ppIPromedioSubio : TppImage;
      ppIPromedioBajo : TppImage;
      ppIPromedioIgual : TppImage;
      ppICantidadBajo : TppImage;
      ppICantidadSubio : TppImage;
      ppICantidadIgual : TppImage;
      ppDBText1 : TppDBText;
      ppDBText2 : TppDBText;
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
      ppParameterList1 : TppParameterList;
      pplPromedioTotal02 : TppLabel;
      pplPromedioTotal01 : TppLabel;
      Procedure btnSalirClick(Sender : TObject);
      Procedure dbgPeriodo01DrawDataCell(Sender : TObject; Const Rect : TRect;
         Field : TField; State : TGridDrawState);
      Procedure FormShow(Sender : TObject);
      Procedure dbgPeriodo01RowChanged(Sender : TObject);
      Procedure dbgPeriodo02RowChanged(Sender : TObject);
      Procedure btnImprimirClick(Sender : TObject);
      Procedure ppDetailBand44BeforePrint(Sender : TObject);
   Private
      gnCantidadAsociados : integer;
      gnMontoPagado : Currency;

      Procedure fn_get_pagos(wgTipoPago : String; wgCategoria,
         wgPeriodo : String; wgDiasIni, wgDiasFin : integer);
      Procedure fn_comparar_periodos;
      //Function fn_get_cantidad(wgTipoPago, wgCategoria,  wgPeriodo : String; wgDiasIni, wgDiasFin : integer) : Integer;
    { Private declarations }
   Public
    { Public declarations }
   End;

Var
   FComCatDet : TFComCatDet;

Implementation

Uses GESDM1;

{$R *.dfm}

//******************************************************************************
// Nombre : FormShow
// Descripcion : cargar informacion de los periodos seleccionados
//******************************************************************************
Procedure TFComCatDet.FormShow(Sender : TObject);
Var
   xsSQL : String;
   xnCantidad : Integer;
   xnMonto : Currency;
   xnPromedio : Currency;
Begin
   Screen.Cursor := crHourGlass;

   // CARGAR PERIODO 2
   xsSQL := 'SELECT ' + QuotedStr(edCategoriaCod.Text) + ' COD_CATEGORIA, '
      + '           ' + QuotedStr(edCategoria.Text) + ' DES_CATEGORIA, '
      + '           DIAS_ATRASO_DES, DIAS_ATRASO_INI, DIAS_ATRASO_FIN,'
      + '           0 CANTIDAD, 0.0 MONTO, 0.0 PROMEDIO '
      + '      FROM (SELECT ''0 - 8   '' DIAS_ATRASO_DES,   0 DIAS_ATRASO_INI,     8 DIAS_ATRASO_FIN, 0 ORDEN FROM DUAL UNION ALL '
      + '            SELECT ''9 - 30  '' DIAS_ATRASO_DES,   9 DIAS_ATRASO_INI,    30 DIAS_ATRASO_FIN, 1 ORDEN FROM DUAL UNION ALL '
      + '            SELECT ''31 - 60 '' DIAS_ATRASO_DES,  31 DIAS_ATRASO_INI,    60 DIAS_ATRASO_FIN, 2 ORDEN FROM DUAL UNION ALL '
      + '            SELECT ''61 - 120'' DIAS_ATRASO_DES,  61 DIAS_ATRASO_INI,   120 DIAS_ATRASO_FIN, 3 ORDEN FROM DUAL UNION ALL '
      + '            SELECT ''120+    '' DIAS_ATRASO_DES, 120 DIAS_ATRASO_INI, 36500 DIAS_ATRASO_FIN, 4 ORDEN FROM DUAL UNION ALL '
      + '            SELECT ''SIN CALIF.'' DIAS_ATRASO_DES, -36500 DIAS_ATRASO_INI, -1 DIAS_ATRASO_FIN, 5 ORDEN FROM DUAL ) '
      + '     ORDER BY ORDEN ';

   DM1.cdsQry4.Close;
   DM1.cdsQry4.DataRequest(xsSQL);
   DM1.cdsQry4.Open;

   dbgPeriodo02.DataSource := DM1.dsQry4;
   TNumericField(DM1.cdsQry4.fieldbyname('CANTIDAD')).DisplayFormat := '###,###';
   TNumericField(DM1.cdsQry4.fieldbyname('MONTO')).DisplayFormat := '###,###.#0';
   TNumericField(DM1.cdsQry4.fieldbyname('PROMEDIO')).DisplayFormat := '###,###.#0';
   dbgPeriodo02.Selected.Clear;
   dbgPeriodo02.Selected.Add('DIAS_ATRASO_DES'#9'9'#9'DIAS~ATRASO');
   dbgPeriodo02.Selected.Add('CANTIDAD'#9'13'#9'CANTIDAD');
   dbgPeriodo02.Selected.Add('MONTO'#9'18'#9'MONTO~S/.');
   dbgPeriodo02.Selected.Add('PROMEDIO'#9'18'#9'PROMEDIO~S/.');
   dbgPeriodo02.ApplySelected;
   xnCantidad := 0;
   xnMonto := 0;
   xnPromedio := 0;
   DM1.cdsQry4.First;
   While Not DM1.cdsQry4.Eof Do
   Begin
      fn_get_pagos(edTipoPago.Text, DM1.cdsQry4.FieldByName('COD_CATEGORIA').AsString, edPeriodo02.Text, DM1.cdsQry4.FieldByName('DIAS_ATRASO_INI').AsInteger, DM1.cdsQry4.FieldByName('DIAS_ATRASO_FIN').AsInteger);
      DM1.cdsQry4.Edit;
      DM1.cdsQry4.FieldByName('CANTIDAD').AsInteger := gnCantidadAsociados; //fn_get_cantidad(edTipoPago.Text, DM1.cdsQry4.FieldByName('COD_CATEGORIA').AsString, edPeriodo02.Text, DM1.cdsQry4.FieldByName('DIAS_ATRASO_INI').AsInteger, DM1.cdsQry4.FieldByName('DIAS_ATRASO_FIN').AsInteger);
      DM1.cdsQry4.FieldByName('MONTO').AsCurrency := gnMontoPagado;
      If DM1.cdsQry4.FieldByName('CANTIDAD').AsCurrency > 0 Then
         DM1.cdsQry4.FieldByName('PROMEDIO').AsCurrency := DM1.cdsQry4.FieldByName('MONTO').AsCurrency / DM1.cdsQry4.FieldByName('CANTIDAD').AsCurrency
      Else
         DM1.cdsQry4.FieldByName('PROMEDIO').AsCurrency := 0;
      DM1.cdsQry4.Post;
      xnCantidad := xnCantidad + DM1.cdsQry4.FieldByName('CANTIDAD').AsInteger;
      xnMonto := xnMonto + DM1.cdsQry4.FieldByName('MONTO').AsCurrency;
      DM1.cdsQry4.Next;
   End;
   DM1.cdsQry4.First;
   If xnCantidad > 0 Then
      xnPromedio := xnMonto / xnCantidad
   Else
      xnPromedio := 0;

   dbgPeriodo02.ColumnByName('DIAS_ATRASO_DES').FooterValue := 'Total : ';
   dbgPeriodo02.ColumnByName('CANTIDAD').FooterValue := FloatToStrF(xnCantidad, ffNumber, 15, 0);
   dbgPeriodo02.ColumnByName('MONTO').FooterValue := FloatToStrF(xnMonto, ffNumber, 15, 2);
   dbgPeriodo02.ColumnByName('PROMEDIO').FooterValue := FloatToStrF(xnPromedio, ffNumber, 15, 2);
   dbgPeriodo02.Refresh;

   // CARGAR PERIODO 1
   xsSQL := 'SELECT ' + QuotedStr(edCategoriaCod.Text) + ' COD_CATEGORIA, '
      + '           ' + QuotedStr(edCategoria.Text) + ' DES_CATEGORIA, '
      + '           DIAS_ATRASO_DES, DIAS_ATRASO_INI, DIAS_ATRASO_FIN,'
      + '           2 CANTIDAD_SUBIO, 0 CANTIDAD, '
      + '           2 MONTO_SUBIO, 0.0 MONTO, '
      + '           2 PROMEDIO_SUBIO, 0.0 PROMEDIO, '
      + '           ''               '' DIAS_ATRASO_DES_02, '' '' COD_CATEGORIA_02, ''               ''  DES_CATEGORIA_02, '
      + '           0 CANTIDAD_02, 0.0 MONTO_02, 0.0 PROMEDIO_02 '
      + '      FROM (SELECT ''0 - 8   '' DIAS_ATRASO_DES,   0 DIAS_ATRASO_INI,     8 DIAS_ATRASO_FIN, 0 ORDEN FROM DUAL UNION ALL '
      + '            SELECT ''9 - 30  '' DIAS_ATRASO_DES,   9 DIAS_ATRASO_INI,    30 DIAS_ATRASO_FIN, 1 ORDEN FROM DUAL UNION ALL '
      + '            SELECT ''31 - 60 '' DIAS_ATRASO_DES,  31 DIAS_ATRASO_INI,    60 DIAS_ATRASO_FIN, 2 ORDEN FROM DUAL UNION ALL '
      + '            SELECT ''61 - 120'' DIAS_ATRASO_DES,  61 DIAS_ATRASO_INI,   120 DIAS_ATRASO_FIN, 3 ORDEN FROM DUAL UNION ALL '
      + '            SELECT ''120+    '' DIAS_ATRASO_DES, 120 DIAS_ATRASO_INI, 36500 DIAS_ATRASO_FIN, 4 ORDEN FROM DUAL UNION ALL '
      + '            SELECT ''SIN CALIF.'' DIAS_ATRASO_DES, -36500 DIAS_ATRASO_INI, -1 DIAS_ATRASO_FIN, 5 ORDEN FROM DUAL ) '
      + '     ORDER BY ORDEN ';

   DM1.cdsQry3.Close;
   DM1.cdsQry3.DataRequest(xsSQL);
   DM1.cdsQry3.Open;
   dbgPeriodo01.DataSource := DM1.dsQry3;
   TNumericField(DM1.cdsQry3.fieldbyname('CANTIDAD')).DisplayFormat := '###,###';
   TNumericField(DM1.cdsQry3.fieldbyname('MONTO')).DisplayFormat := '###,###.#0';
   TNumericField(DM1.cdsQry3.fieldbyname('PROMEDIO')).DisplayFormat := '###,###.#0';
   dbgPeriodo01.Selected.Clear;
   dbgPeriodo01.Selected.Add('DIAS_ATRASO_DES'#9'9'#9'DIAS~ATRASO');
   dbgPeriodo01.Selected.Add('CANTIDAD_SUBIO'#9'2'#9' '#9'F'#9'CANTIDAD');
   dbgPeriodo01.Selected.Add('CANTIDAD'#9'10'#9' '#9'F'#9'CANTIDAD');
   dbgPeriodo01.Selected.Add('MONTO_SUBIO'#9'2'#9' '#9'F'#9'MONTO');
   dbgPeriodo01.Selected.Add('MONTO'#9'15'#9'S/.'#9'F'#9'MONTO');
   dbgPeriodo01.Selected.Add('PROMEDIO_SUBIO'#9'2'#9' '#9'F'#9'PROMEDIO');
   dbgPeriodo01.Selected.Add('PROMEDIO'#9'15'#9'S/.'#9'F'#9'PROMEDIO');
   dbgPeriodo01.ApplySelected;
   xnCantidad := 0;
   xnMonto := 0;
   xnPromedio := 0;
   DM1.cdsQry3.First;
   While Not DM1.cdsQry3.Eof Do
   Begin
      fn_get_pagos(edTipoPago.Text, DM1.cdsQry3.FieldByName('COD_CATEGORIA').AsString, edPeriodo01.Text, DM1.cdsQry3.FieldByName('DIAS_ATRASO_INI').AsInteger, DM1.cdsQry3.FieldByName('DIAS_ATRASO_FIN').AsInteger);
      DM1.cdsQry3.Edit;
      DM1.cdsQry3.FieldByName('CANTIDAD').AsInteger := gnCantidadAsociados; //fn_get_cantidad(edTipoPago.Text, DM1.cdsQry3.FieldByName('COD_CATEGORIA').AsString, edPeriodo01.Text, DM1.cdsQry3.FieldByName('DIAS_ATRASO_INI').AsInteger, DM1.cdsQry3.FieldByName('DIAS_ATRASO_FIN').AsInteger);
      DM1.cdsQry3.FieldByName('MONTO').AsCurrency := gnMontoPagado;
      If DM1.cdsQry3.FieldByName('CANTIDAD').AsCurrency > 0 Then
         DM1.cdsQry3.FieldByName('PROMEDIO').AsCurrency := DM1.cdsQry3.FieldByName('MONTO').AsCurrency / DM1.cdsQry3.FieldByName('CANTIDAD').AsCurrency
      Else
         DM1.cdsQry3.FieldByName('PROMEDIO').AsCurrency := 0;
      DM1.cdsQry3.Post;
      xnCantidad := xnCantidad + DM1.cdsQry3.FieldByName('CANTIDAD').AsInteger;
      xnMonto := xnMonto + DM1.cdsQry3.FieldByName('MONTO').AsCurrency;

      DM1.cdsQry3.Next;
   End;
   DM1.cdsQry3.First;
   If xnCantidad > 0 Then
      xnPromedio := xnMonto / xnCantidad
   Else
      xnPromedio := 0;
   dbgPeriodo01.ColumnByName('DIAS_ATRASO_DES').FooterValue := 'Total : ';
   dbgPeriodo01.ColumnByName('CANTIDAD').FooterValue := FloatToStrF(xnCantidad, ffNumber, 15, 0);
   dbgPeriodo01.ColumnByName('MONTO').FooterValue := FloatToStrF(xnMonto, ffNumber, 15, 2);
   dbgPeriodo01.ColumnByName('PROMEDIO').FooterValue := FloatToStrF(xnPromedio, ffNumber, 15, 2);
   dbgPeriodo01.Refresh;

   //comparar periodos
   fn_comparar_periodos();
   Screen.Cursor := crDefault;
End;

//******************************************************************************
// Nombre : fn_get_pagos
// Descripcion : cargar pagos
//******************************************************************************
Procedure TFComCatDet.fn_get_pagos(wgTipoPago, wgCategoria, wgPeriodo : String; wgDiasIni, wgDiasFin : integer);
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
      + '           (SELECT ASOID, CFC_F, DIASTRANS '
      + '              FROM CFC000 '
      + '             WHERE PERIODO = ' + QuotedStr(wgPeriodo) + ') B '
      + '     WHERE A.ASOID = B.ASOID(+) '
      + '       AND NVL(B.CFC_F, ''X'') = ' + QuotedStr(wgCategoria)
      + '       AND NVL(B.DIASTRANS, -1 ) >= ' + IntToStr(wgDiasIni)
      + '       AND NVL(B.DIASTRANS, -1 ) <= ' + IntToStr(wgDiasFin);

   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xsSQL);
   DM1.cdsQry.Open;

   gnCantidadAsociados := DM1.cdsQry.fieldbyname('CANTIDAD').AsInteger;
   gnMontoPagado := DM1.cdsQry.fieldbyname('MONTO').AsInteger;

End;

//******************************************************************************
// Nombre : fn_comparar_periodos
// Descripcion : comparar periodos
//******************************************************************************
Procedure TFComCatDet.fn_comparar_periodos();
Begin
   DM1.cdsQry3.First;
   DM1.cdsQry4.First;
   While Not DM1.cdsQry3.Eof Do
   Begin
      DM1.cdsQry3.Edit;
      If (DM1.cdsQry3.FieldByName('CANTIDAD').Value < DM1.cdsQry4.FieldByName('CANTIDAD').Value) Then
         DM1.cdsQry3.FieldByName('CANTIDAD_SUBIO').Value := 0
      Else
         If (DM1.cdsQry3.FieldByName('CANTIDAD').Value > DM1.cdsQry4.FieldByName('CANTIDAD').Value) Then
            DM1.cdsQry3.FieldByName('CANTIDAD_SUBIO').Value := 1
         Else
            DM1.cdsQry3.FieldByName('CANTIDAD_SUBIO').Value := 2;

      If (DM1.cdsQry3.FieldByName('MONTO').AsCurrency < DM1.cdsQry4.FieldByName('MONTO').AsCurrency) Then
         DM1.cdsQry3.FieldByName('MONTO_SUBIO').Value := 0
      Else
         If (DM1.cdsQry3.FieldByName('MONTO').AsCurrency > DM1.cdsQry4.FieldByName('MONTO').AsCurrency) Then
            DM1.cdsQry3.FieldByName('MONTO_SUBIO').Value := 1
         Else
            DM1.cdsQry3.FieldByName('MONTO_SUBIO').Value := 2;

      If (DM1.cdsQry3.FieldByName('PROMEDIO').AsCurrency < DM1.cdsQry4.FieldByName('PROMEDIO').AsCurrency) Then
         DM1.cdsQry3.FieldByName('PROMEDIO_SUBIO').Value := 0
      Else
         If (DM1.cdsQry3.FieldByName('PROMEDIO').AsCurrency > DM1.cdsQry4.FieldByName('PROMEDIO').AsCurrency) Then
            DM1.cdsQry3.FieldByName('PROMEDIO_SUBIO').Value := 1
         Else
            DM1.cdsQry3.FieldByName('PROMEDIO_SUBIO').Value := 2;

      DM1.cdsQry3.FieldByName('DIAS_ATRASO_DES_02').AsString := DM1.cdsQry4.FieldByName('DIAS_ATRASO_DES').AsString;
      DM1.cdsQry3.FieldByName('COD_CATEGORIA_02').AsString := DM1.cdsQry4.FieldByName('COD_CATEGORIA').AsString;
      DM1.cdsQry3.FieldByName('DES_CATEGORIA_02').AsString := DM1.cdsQry4.FieldByName('DES_CATEGORIA').AsString;
      DM1.cdsQry3.FieldByName('CANTIDAD_02').Value := DM1.cdsQry4.FieldByName('CANTIDAD').Value;
      DM1.cdsQry3.FieldByName('MONTO_02').Value := DM1.cdsQry4.FieldByName('MONTO').Value;
      DM1.cdsQry3.FieldByName('PROMEDIO_02').Value := DM1.cdsQry4.FieldByName('PROMEDIO').Value;

      DM1.cdsQry3.Post;
      DM1.cdsQry3.Next; // ambos avanzan juntos : DM1.cdsQry4.Next;
   End;
   DM1.cdsQry3.First;
   DM1.cdsQry4.First;
End;

//******************************************************************************
// Nombre : dbgPeriodo01DrawDataCell
// Descripcion : pintar celdas del grid
//******************************************************************************
Procedure TFComCatDet.dbgPeriodo01DrawDataCell(Sender : TObject;
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
// Nombre : btnSalirClick
// Descripcion : cerrar formulario
//******************************************************************************
Procedure TFComCatDet.btnSalirClick(Sender : TObject);
Begin
   Close;
End;

//******************************************************************************
// Nombre : dbgPeriodo01RowChanged
// Descripcion : cambiar de fila en el grid
//******************************************************************************
Procedure TFComCatDet.dbgPeriodo01RowChanged(Sender : TObject);
Begin
   If (DM1.cdsQry3.State <> dsInactive) And (DM1.cdsQry3.RecordCount > 0)
      And (DM1.cdsQry4.State <> dsInactive) And (DM1.cdsQry4.RecordCount > 0) Then
      DM1.cdsQry4.RecNo := DM1.cdsQry3.RecNo;
End;

//******************************************************************************
// Nombre : dbgPeriodo02RowChanged
// Descripcion : cambiar de fila en el grid
//******************************************************************************
Procedure TFComCatDet.dbgPeriodo02RowChanged(Sender : TObject);
Begin
   If (DM1.cdsQry3.State <> dsInactive) And (DM1.cdsQry3.RecordCount > 0)
      And (DM1.cdsQry4.State <> dsInactive) And (DM1.cdsQry4.RecordCount > 0) Then
      DM1.cdsQry3.RecNo := DM1.cdsQry4.RecNo;
End;

//******************************************************************************
// Nombre : btnImprimirClick
// Descripcion : imprimir
//******************************************************************************
Procedure TFComCatDet.btnImprimirClick(Sender : TObject);
Begin
   ppdPrincipal.DataSource := DM1.dsQry3;
   pplTituloDet.Caption := '"' + UpperCase(edCategoria.Text) + ' / ' + UpperCase(edTipoPago.Text) + '"';
   pplTituloPeriodo01.Caption := lblPeriodo01.Caption;
   pplTituloPeriodo02.Caption := lblPeriodo02.Caption;
   ppLblUser.Caption := 'Emitido Por :  ' + Trim(DM1.CrgDescrip('USERID=' + QuotedStr(Trim(DM1.wUsuario)), 'TGE006', 'USERNOM'));
   pprPrincipal.Print;
   //ppdsPrincipal.Show; // para editar en tiempo de ejecucion
End;

//******************************************************************************
// Nombre : ppDetailBand44BeforePrint
// Descripcion : mostrar flechas en el reporte
//******************************************************************************
Procedure TFComCatDet.ppDetailBand44BeforePrint(Sender : TObject);
Begin
   ppICantidadBajo.Visible := DM1.cdsQry3.FieldByName('CANTIDAD_SUBIO').Value = 0;
   ppICantidadSubio.Visible := DM1.cdsQry3.FieldByName('CANTIDAD_SUBIO').Value = 1;
   ppICantidadIgual.Visible := DM1.cdsQry3.FieldByName('CANTIDAD_SUBIO').Value = 2;

   ppIMontoBajo.Visible := DM1.cdsQry3.FieldByName('MONTO_SUBIO').Value = 0;
   ppIMontoSubio.Visible := DM1.cdsQry3.FieldByName('MONTO_SUBIO').Value = 1;
   ppIMontoIgual.Visible := DM1.cdsQry3.FieldByName('MONTO_SUBIO').Value = 2;

   ppIPromedioBajo.Visible := DM1.cdsQry3.FieldByName('PROMEDIO_SUBIO').Value = 0;
   ppIPromedioSubio.Visible := DM1.cdsQry3.FieldByName('PROMEDIO_SUBIO').Value = 1;
   ppIPromedioIgual.Visible := DM1.cdsQry3.FieldByName('PROMEDIO_SUBIO').Value = 2;

   pplPromedioTotal01.Caption := dbgPeriodo01.ColumnByName('PROMEDIO').FooterValue;
   pplPromedioTotal02.Caption := dbgPeriodo02.ColumnByName('PROMEDIO').FooterValue;
End;

End.

