// Inicio Uso Estándares: 01/08/2011
// Unidad : Gestión de Cobranzas
// Formulario : FConMetGesAvance
// Fecha de Creación : 18/01/2012
// Autor : Equipo de Sistemas
// Objetivo : Control de Metas por Gestor - Avance
// Actualizaciones:
// HPC_201201_GESCOB 09/01/2012 Control de Metas por Gestor
// HPC_201202_GESCOB 26/01/2012 Mejoras en calculo e impresion de graficos (pagos >= 50%, estaba como >50%, pero segun el rescate ampliado es >=50%)
// HPC_201202_GESCOB 27/01/2012 Colocar Matriz de Prioridades
// HPC_201203_GESCOB 15/02/2012 Evitar Mensajes de error en tiempo de diseño
// HPC_201205_GESCOB 06/03/2012 liberar memoria al imprimir los distintos graficos estadisticos
// DPP_201205_GESCOB: Pase a producción a partir de los pases HPC_201205 y HPC_201206
// HPC_201207_GESCOB - F1 12/09/2012 validar control de metas por gestor
// DPP_201206_GESCOB: Pase a producción a partir de los pases HPC_201207
// HPC_201301_GESCOB Se cambian los Parametros de las metas
// SPP_201301_GESCOB: El pase a producción se realiza de acuerdo al HPC_201301_GESCOB

Unit GES532;

Interface
Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, Buttons, ExtCtrls, Grids, DBGrids, TeeProcs,
   TeEngine, Chart, Series, ppParameter, ppBands, ppCtrls, ppVar, ppPrnabl,
   ppClass, ppCache, ppProd, ppReport, ppRelatv, ppDB, ppDBPipe, ppComm,
   ppEndUsr;

Type
   TFConMetGesAvance = Class(TForm)
      pnlControles : TPanel;
      btnSalir : TBitBtn;
      btnImprimir : TBitBtn;
      pnlGeneral : TPanel;
      pnlMontoSaldoTotal : TPanel;
      chrMontoSaldoTotal : TChart;
      Series1 : TBarSeries;
      pnlCantidadSaldoTotal : TPanel;
      chrCantidadSaldoTotal : TChart;
      BarSeries2 : TBarSeries;
      pnlCantidadSaldoVencido : TPanel;
      Label1 : TLabel;
      Label2 : TLabel;
      Label3 : TLabel;
      lblGestor : TLabel;
      lblPeriodo : TLabel;
      lblRangoFechas : TLabel;
      imgCapturarPanel : TImage;
      desRptMaestro : TppDesigner;
      dbpRptMaestroREF : TppDBPipeline;
      repRptMaestro : TppReport;
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
      ppLblTit01 : TppLabel;
      ppLabel863 : TppLabel;
      ppLabel864 : TppLabel;
      ppLabel865 : TppLabel;
      ppLblTit02 : TppLabel;
      ppDetailBand44 : TppDetailBand;
      ppShape4 : TppShape;
      ppImgReporte : TppImage;
      ppFooterBand36 : TppFooterBand;
      ppLblUser : TppLabel;
      ppSummaryBand41 : TppSummaryBand;
// Inicio: SPP_201301_GESCOB
    chrCantidadSaldoVencido: TChart;
    BarSeries3: TBarSeries;
    pnlMontoSaldoVencido: TPanel;
    chrMontoSaldoVencido: TChart;
    BarSeries1: TBarSeries;
// Fin: SPP_201301_GESCOB
      Procedure btnSalirClick(Sender : TObject);
      Procedure FormClose(Sender : TObject; Var Action : TCloseAction);
      Procedure FormShow(Sender : TObject);
      Procedure btnImprimirClick(Sender : TObject);
      Procedure chrCantidadSaldoTotalDblClick(Sender : TObject);
      Procedure chrCantidadSaldoVencidoDblClick(Sender : TObject);
// Inicio: SPP_201301_GESCOB
    procedure chrMontoSaldoTotalDblClick(Sender: TObject);
    procedure chrMontoSaldoVencidoDblClick(Sender: TObject);
// Fin: SPP_201301_GESCOB
   Private
    { Private declarations }
   Public
      xsUsuario : String;
      xsPeriodo : String;
      xdFecIni : TDate;
      xdFecFin : TDate;
      xnMetMonSalVen : double;
      xnMetConSalVen : double;
      xnMetMonSalTot : double;
      xnMetConSalTot : double;
   End;

Var
   FConMetGesAvance : TFConMetGesAvance;

Implementation
uses GESDM1, GES533;

{$R *.dfm}

//******************************************************************************
// Nombre : btnSalirClick
// Descripcion : Cerrar el Formulario
//******************************************************************************

Procedure TFConMetGesAvance.btnSalirClick(Sender : TObject);
Begin
   close();
End;

//******************************************************************************
// Nombre : FormClose
// Descripcion : Liberar la Memoria despue de cerrar
//******************************************************************************

Procedure TFConMetGesAvance.FormClose(Sender : TObject;
   Var Action : TCloseAction);
Begin
   Action := caFree;
End;

//******************************************************************************
// Nombre : FormShow
// Descripcion : crea los graficos estadisticos
//******************************************************************************

Procedure TFConMetGesAvance.FormShow(Sender : TObject);
Var
// Inicio: SPP_201301_GESCOB
   xsSQL, xSQL1, xSQL2, sMes, sPeriodoGes : String;
// Fin: SPP_201301_GESCOB
   Procedure fn_formato_barseries(wgSerie : TChartSeries);
   Begin
      wgSerie.Marks.Visible := True;
      wgSerie.Marks.Style := smsValue;
      TBarSeries(wgSerie).ColorEachPoint := True;
   End;
Begin
   // para los historicos, revisar las tablas "his"

// Inicio: SPP_201301_GESCOB
   sPeriodoGes:=xsPeriodo;

// Se cambian los Parametros de las metas
  xsSQL:='SELECT USUARIO, '
       +     'SUM( CASE WHEN COD_NEG=''02''          and NVL(EFE_PAGO,0)+NVL(BAN_PAGO,0)>0  THEN 1 ELSE 0 END ) + '
       +     'SUM( CASE WHEN NOT COD_NEG IN (''02'') and NVL(EFE_PAGO,0)+NVL(BAN_PAGO,0)>0  THEN 1 ELSE 0 END ) +  '
       +     'SUM( CASE WHEN COD_NEG=''05''     AND NVL(REF_PAGO,0)>0      THEN 1 ELSE 0 END ) +  '
       +     'SUM( CASE WHEN NOT COD_NEG=''05'' AND NVL(REF_PAGO,0)>0      THEN 1 ELSE 0 END ) REGULARIZADOS, '
       +     'SUM( CASE WHEN NVL(EFE_PAGO,0)+NVL(BAN_PAGO,0)>0  THEN NVL(EFE_PAGO,0)+NVL(BAN_PAGO,0) ELSE 0 END ) MONTO_EFECTIVO, '
       +     'SUM( CASE WHEN NVL(REF_PAGO,0)>0                  THEN NVL(REF_PAGO,0) ELSE 0 END ) MONTO_REFI '

       +   'FROM ( SELECT USUARIO, ASOID, SUM( NVL(CONTACTADOS,0) ) CONTACTADOS FROM ( '
       +                   'select DISTINCT A.USUARIO, A.ASOID, 1 CONTACTADOS '
       +                   'from ( '
       +                      'SELECT A.* FROM ( '
       +                         'select A.*, DENSE_RANK() OVER(PARTITION BY USUARIO, ASOID ORDER BY USUARIO, ASOID, FECHA DESC, HORA DESC ) DRNK '
       +                           'from GES_COB_SEG A '
       +                          'where periodo='''+sPeriodoGes+''' '
       +                           ' ) A '
       +                     ' WHERE DRNK = 1 ) A, '
       +                         'GES_REF_SEG_DET B '
       +                   'where periodo='''+sPeriodoGes+''' '
       +                     'and a.idgestion=b.idgtn(+) and a.idgestiondet=b.idgtndet(+) and b.contactado=''S'' AND NVL(B.DIRECTO,''N'')=''S'' '
       +                   'group by A.USUARIO, A.ASOID ) '
       +          'GROUP BY USUARIO, ASOID '
       +        ') A, '
       +        '( SELECT * FROM ( '
       +               'SELECT A.*, DENSE_RANK() OVER(PARTITION BY GESTOR, ASOID ORDER BY GESTOR, ASOID, CASE WHEN ESTADO=''CUMPLIDO'' THEN 1 ELSE 2 END, FEC_CONTACTO DESC, FREG DESC, COD_COMPROMISO ) DRNK '
       +                 'FROM GES_COB_COMPROMISO A '
       +                'WHERE PERIODO = '''+sPeriodoGes+''' '
       +                'ORDER BY ASOID ) '
       +               'WHERE DRNK = 1 '
       +        ') B '
       +  'where A.USUARIO=B.GESTOR(+) AND A.ASOID=B.ASOID(+) '
       +   ' and a.USUARIO = ' + QuotedStr(xsUsuario)
       +  'GROUP BY USUARIO ';

   DM1.cdsQry3.Close;
   DM1.cdsQry3.DataRequest(xsSQL);
   DM1.cdsQry3.Open;
   DM1.cdsQry3.First;

   // Efectivo
   chrMontoSaldoTotal.Title.Text.Clear;
   chrMontoSaldoTotal.Title.Text.Add('Cobrado en Efectivo y Bancos');
   chrMontoSaldoTotal.Title.Text.Add('Montos en Nuevos Soles (S/.)');
   chrMontoSaldoTotal.Legend.Visible := False;
   chrMontoSaldoTotal.View3D := False;
   chrMontoSaldoTotal.SeriesList.Clear;
   chrMontoSaldoTotal.AddSeries(TBarSeries.Create(self));
   chrMontoSaldoTotal.Series[0].Add(xnMetMonSalTot, 'Meta', clGreen);
   chrMontoSaldoTotal.Series[0].Add(DM1.cdsQry3.fieldbyname('MONTO_EFECTIVO').AsFloat, 'Avance', clRed);
   //chrMontoSaldoTotal.Series[0].Add(DM1.cdsQry4.fieldbyname('MONTO_SALDO_TOTAL').AsFloat, 'Avance', clYellow);
   chrMontoSaldoTotal.Series[0].valueFormat := '##,###,##0.00';
   chrMontoSaldoTotal.Series[0].Name := 'MontoSaldoTotal';
   fn_formato_barseries(chrMontoSaldoTotal.Series[0]);

   try
   chrCantidadSaldoTotal.Title.Text.Clear;
   chrCantidadSaldoTotal.Title.Text.Add('Saldo Total - Normales (contenciones)');
   chrCantidadSaldoTotal.Title.Text.Add('Número de Asociados que regularizaron');
   chrCantidadSaldoTotal.Legend.Visible := False;
   chrCantidadSaldoTotal.View3D := False;
   chrCantidadSaldoTotal.SeriesList.Clear;
   chrCantidadSaldoTotal.AddSeries(TBarSeries.Create(self));
   // chrCantidadSaldoTotal.Series[0].Add(DM1.cdsQry3.fieldbyname('CANTIDAD_SALDO_TOTAL').AsFloat, 'Asignados', clRed);
   chrCantidadSaldoTotal.Series[0].Add(xnMetConSalTot, 'Meta', clGreen);
   chrCantidadSaldoTotal.Series[0].Add(DM1.cdsQry3.fieldbyname('REGULARIZADOS').AsFloat, 'Regularizaron', clRed);
   // chrCantidadSaldoTotal.Series[0].Add(DM1.cdsQry4.fieldbyname('CANTIDAD_SALDO_TOTAL').AsFloat, 'Regularizaron', clBlue);
   chrCantidadSaldoTotal.Series[0].valueFormat := '##,###,##0';
   chrCantidadSaldoTotal.Series[0].Name := 'CantidadSaldoTotal';
   fn_formato_barseries(chrCantidadSaldoTotal.Series[0]);
   except
   end;

   //Refinanciados
   chrMontoSaldoVencido.Title.Text.Clear;
   chrMontoSaldoVencido.Title.Text.Add('Monto Refinanciado Cancelado');
   chrMontoSaldoVencido.Title.Text.Add('Montos en Nuevos Soles (S/.)');
   chrMontoSaldoVencido.Legend.Visible := False;
   chrMontoSaldoVencido.View3D := False;
   chrMontoSaldoVencido.SeriesList.Clear;
   chrMontoSaldoVencido.AddSeries(TBarSeries.Create(self));
   chrMontoSaldoVencido.Series[0].Add(xnMetMonSalVen, 'Meta', clGreen);
   chrMontoSaldoVencido.Series[0].Add(DM1.cdsQry3.fieldbyname('MONTO_REFI').AsFloat, 'Avance', clRed);
   //chrMontoSaldoVencido.Series[0].Add(DM1.cdsQry4.fieldbyname('MONTO_SALDO_VENCIDO').AsFloat, 'Avance', clYellow);
   chrMontoSaldoVencido.Series[0].valueFormat := '##,###,##0.00';
   chrMontoSaldoVencido.Series[0].Name := 'MontoSaldoVencido';
   fn_formato_barseries(chrMontoSaldoVencido.Series[0]);

   lblGestor.Caption := xsUsuario;
   lblPeriodo.Caption := xsPeriodo;
   lblRangoFechas.Caption := 'del ' + DateToStr(xdFecIni) + ' al ' + DateToStr(xdFecFin);
// Fin: SPP_201301_GESCOB Se cambian los Parametros de las metas

End;

//******************************************************************************
// Nombre : btnImprimirClick
// Descripcion : Imprimir la pantalla
//******************************************************************************

Procedure TFConMetGesAvance.btnImprimirClick(Sender : TObject);
Begin
   DM1.fn_grabar_img_panel(imgCapturarPanel, pnlGeneral, 'CON_MET_GES_AVANCE.BMP');
   ppImgReporte.Picture.LoadFromFile('CON_MET_GES_AVANCE.BMP');

   ppLblTit01.Caption := 'Control de Metas por Gestor';
   ppLblTit02.Caption := '';
   ppLblUser.Caption := 'Emitido Por :  ' + Trim(DM1.CrgDescrip('USERID=' + QuotedStr(Trim(DM1.wUsuario)), 'TGE006', 'USERNOM'));
   repRptMaestro.Print;
   //desRptMaestro.Show;

End;

//******************************************************************************
// Nombre : chrCantidadSaldoTotalDblClick
// Descripcion : Muetra el detalle de lo que se esta visualizando en el grafico
//******************************************************************************

Procedure TFConMetGesAvance.chrCantidadSaldoTotalDblClick(Sender : TObject);
Var
   xxFrm : TFConMetGesDetalle;
Begin
   xxFrm := TFConMetGesDetalle.create(self);
   Try
      xxFrm.xsUsuario := xsUsuario;
      xxFrm.xsPeriodo := xsPeriodo;
      xxFrm.xdFecIni := xdFecIni;
      xxFrm.xdFecFin := xdFecFin;
      xxFrm.xlNormal := true;
// Inicio: SPP_201301_GESCOB
      xxFrm.sTipoRep :='3';
// Fin: SPP_201301_GESCOB
      xxFrm.ShowModal();
   Except
      xxFrm.free;
   End;
End;

//******************************************************************************
// Nombre : chrCantidadSaldoVencidoDblClick
// Descripcion : Muetra el detalle de lo que se esta visualizando en el grafico
//******************************************************************************

Procedure TFConMetGesAvance.chrCantidadSaldoVencidoDblClick(
   Sender : TObject);
Var
   xxFrm : TFConMetGesDetalle;
Begin
   xxFrm := TFConMetGesDetalle.create(self);
   Try
      xxFrm.xsUsuario := xsUsuario;
      xxFrm.xsPeriodo := xsPeriodo;
      xxFrm.xdFecIni := xdFecIni;
      xxFrm.xdFecFin := xdFecFin;
      xxFrm.xlNormal := False;
      xxFrm.ShowModal();
   Except
      xxFrm.free;
   End;
End;

// Inicio: SPP_201301_GESCOB
procedure TFConMetGesAvance.chrMontoSaldoTotalDblClick(Sender: TObject);
Var
   xxFrm : TFConMetGesDetalle;
Begin
   xxFrm := TFConMetGesDetalle.create(self);
   Try
      xxFrm.xsUsuario := xsUsuario;
      xxFrm.xsPeriodo := xsPeriodo;
      xxFrm.xdFecIni := xdFecIni;
      xxFrm.xdFecFin := xdFecFin;
      xxFrm.xlNormal := true;
      xxFrm.sTipoRep :='1';
      xxFrm.ShowModal();
   Except
      xxFrm.free;
   End;
end;

procedure TFConMetGesAvance.chrMontoSaldoVencidoDblClick(Sender: TObject);
Var
   xxFrm : TFConMetGesDetalle;
Begin
   xxFrm := TFConMetGesDetalle.create(self);
   Try
      xxFrm.xsUsuario := xsUsuario;
      xxFrm.xsPeriodo := xsPeriodo;
      xxFrm.xdFecIni := xdFecIni;
      xxFrm.xdFecFin := xdFecFin;
      xxFrm.xlNormal := true;
      xxFrm.sTipoRep :='2';
      xxFrm.ShowModal();
   Except
      xxFrm.free;
   End;
// Fin: SPP_201301_GESCOB
end;

End.
