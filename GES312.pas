// Inicio Uso Estándares: 01/08/2011
// Unidad : Gestión de Cobranzas
// Formulario : FProRepMacro
// Fecha de Creación :
// Autor : Equipo de Sistemas
// Objetivo : Reporte de indicadores de efectividad a nivel macro
// Actualizaciones:
// HPC_201120_GESCOB 28/11/2011 reporte de indicadores de efectividad a nivel macro
// HPC_201203_GESCOB 15/02/2012 Evitar Mensajes de error en tiempo de diseño
// HPC_201205_GESCOB 10/04/2012 modificar reporte de efectivada para que se visualizen los datos en linea (recreado)
// HPC_201205_GESCOB 10/04/2012 agregar la opcion de consolidado de gestores.
// HPC_201206_GESCOB - F1 21/08/2012 CAMBIAR ETIQUETAS DE PERIODO DE GESTION
// DPP_201205_GESCOB: Pase a producción a partir de los pases HPC_201205 y HPC_201206
// HPC_201209_GESCOB(F1) 15/10/2012 MEJORA EN LA CONSULTA PARA LA LISTA DE GESTORES, MOSTRAR TODOS LOS QUE TIENE ASIGNACIONES, SIN IMPORTAR SI ESTAN ACTIVOS O NO
// HPC_201305_GESCOB : F2 04/06/2013 Se modificó las consultas a la BD, para incluir la nueva marca asociada al motivo de liberación porque la BD fue actualizada
// SPP_201305_GESCOB : Se realiza el pase a producción a partir del HPC_201305_GESCOB

Unit GES312;

Interface
Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, ExtCtrls, ComCtrls, Buttons, ppBands, ppCache,
   ppClass, ppDB, ppDBPipe, ppComm, ppRelatv, ppProd, ppReport, wwdblook,
   Grids, Wwdbigrd, Wwdbgrid, DBGrids, ppCtrls, ppPrnabl, ppStrtch,
   ppSubRpt, ppEndUsr, ppParameter, TXComp, ppVar, RXDBCtrl, wwExport, shellapi,
   DB, DBClient, Wwdbdlg, ImgList, wwdbdatetimepicker;

Type
   TfRepConsolidadoAsignacion = Class(TForm)
      Panel1 : TPanel;
      ppdbDetalleGes : TppDBPipeline;
      pprGestor : TppReport;
      dsgPrincipal : TppDesigner;
      ppParameterList1 : TppParameterList;
      ppdbResumenCarteraGes : TppDBPipeline;
      ppdbResumenImporteGes : TppDBPipeline;
      rgTipoGestor : TRadioGroup;
      pgFiltro : TPageControl;
      tsGestor : TTabSheet;
      pnlFiltroGestor : TPanel;
      btnFiltrarGestor : TBitBtn;
      dbgPrincipalGestor : TwwDBGrid;
      tsUbigeo : TTabSheet;
      Panel2 : TPanel;
      btnExcelGestor : TBitBtn;
      btnImprimirGestor : TBitBtn;
      pnlFiltroUbigeo : TPanel;
      btnFiltrarUbigeo : TBitBtn;
      Label1 : TLabel;
      Label5 : TLabel;
      Label6 : TLabel;
      cbDist : TwwDBLookupComboDlg;
      cbProv : TwwDBLookupComboDlg;
      cbDpto : TwwDBLookupComboDlg;
      edDpto : TEdit;
      edProv : TEdit;
      edDist : TEdit;
      Panel3 : TPanel;
      btnExcelUbi : TBitBtn;
      btnImprimirUbi : TBitBtn;
      dbgPrincipalUbi : TwwDBGrid;
      GroupBox2 : TGroupBox;
      cbGestor : TwwDBLookupCombo;
      rgGestoresSeleccion : TRadioGroup;
      EdtGestor : TEdit;
      imIconos : TImageList;
      tsCalificacion : TTabSheet;
      Panel4 : TPanel;
      btnFiltrarCalificacion : TBitBtn;
      Panel5 : TPanel;
      btnExcelCal : TBitBtn;
      btnImprimirCal : TBitBtn;
      dbgPrincipalCal : TwwDBGrid;
      pprUbigeoDpto : TppReport;
      ppParameterList2 : TppParameterList;
      pprUbigeoDist : TppReport;
      ppParameterList4 : TppParameterList;
      pprUbigeoProv : TppReport;
      ppParameterList5 : TppParameterList;
      pprCalificacion : TppReport;
      ppParameterList3 : TppParameterList;
      ppHeaderBand5 : TppHeaderBand;
      ppLabel187 : TppLabel;
      ppLabel188 : TppLabel;
      ppLabel243 : TppLabel;
      ppLabel244 : TppLabel;
      ppLabel245 : TppLabel;
      ppSystemVariable10 : TppSystemVariable;
      ppSystemVariable11 : TppSystemVariable;
      ppSystemVariable12 : TppSystemVariable;
      ppLabel246 : TppLabel;
      ppLabel247 : TppLabel;
      ppLabel248 : TppLabel;
      lblTit01Cal : TppLabel;
      lblTit02Cal : TppLabel;
      ppDetailBand13 : TppDetailBand;
      ppShape21 : TppShape;
      ppDBText105 : TppDBText;
      ppDBText106 : TppDBText;
      ppDBText107 : TppDBText;
      ppDBText108 : TppDBText;
      ppDBText109 : TppDBText;
      ppDBText110 : TppDBText;
      ppDBText111 : TppDBText;
      ppDBText112 : TppDBText;
      ppDBText113 : TppDBText;
      ppDBText114 : TppDBText;
      ppDBText115 : TppDBText;
      ppDBText116 : TppDBText;
      ppDBText117 : TppDBText;
      ppDBText118 : TppDBText;
      ppLine457 : TppLine;
      ppLine458 : TppLine;
      ppLine459 : TppLine;
      ppLine460 : TppLine;
      ppLine461 : TppLine;
      ppLine462 : TppLine;
      ppLine463 : TppLine;
      ppLine464 : TppLine;
      ppLine465 : TppLine;
      ppLine466 : TppLine;
      ppLine467 : TppLine;
      ppLine468 : TppLine;
      ppLine469 : TppLine;
      ppLine470 : TppLine;
      ppLine471 : TppLine;
      ppLine472 : TppLine;
      ppLine473 : TppLine;
      ppFooterBand5 : TppFooterBand;
      ppGroup9 : TppGroup;
      ppGroupHeaderBand9 : TppGroupHeaderBand;
      ppGroupFooterBand9 : TppGroupFooterBand;
      ppShape22 : TppShape;
      ppShape23 : TppShape;
      ppLine474 : TppLine;
      ppLine475 : TppLine;
      ppLine476 : TppLine;
      ppLine477 : TppLine;
      ppLine478 : TppLine;
      ppLabel251 : TppLabel;
      ppLabel252 : TppLabel;
      ppDBText119 : TppDBText;
      ppLine479 : TppLine;
      ppLine480 : TppLine;
      ppLine481 : TppLine;
      ppLine482 : TppLine;
      ppLine483 : TppLine;
      ppLabel253 : TppLabel;
      ppLabel254 : TppLabel;
      ppLabel255 : TppLabel;
      ppLabel256 : TppLabel;
      ppLabel257 : TppLabel;
      ppLabel258 : TppLabel;
      ppLabel259 : TppLabel;
      ppLine484 : TppLine;
      ppLine485 : TppLine;
      ppLine486 : TppLine;
      ppLine487 : TppLine;
      ppLabel260 : TppLabel;
      ppLabel261 : TppLabel;
      ppLabel262 : TppLabel;
      ppLabel263 : TppLabel;
      ppLabel264 : TppLabel;
      ppLabel265 : TppLabel;
      ppLabel266 : TppLabel;
      ppLabel267 : TppLabel;
      ppLine488 : TppLine;
      ppLine489 : TppLine;
      ppLine490 : TppLine;
      ppLabel268 : TppLabel;
      ppLabel269 : TppLabel;
      ppLabel270 : TppLabel;
      ppLabel271 : TppLabel;
      ppLine491 : TppLine;
      ppLine492 : TppLine;
      ppDBCalc121 : TppDBCalc;
      pplblTotRegCal : TppDBCalc;
      pplblTotRegEfeCal : TppDBCalc;
      pplblTotRegBanCal : TppDBCalc;
      pplblTotRegRefCal : TppDBCalc;
      pplblTotRegAboCal : TppDBCalc;
      pplblTotRegBenCal : TppDBCalc;
      ppDBCalc128 : TppDBCalc;
      ppDBCalc129 : TppDBCalc;
      ppDBCalc130 : TppDBCalc;
      ppDBCalc131 : TppDBCalc;
      ppDBCalc132 : TppDBCalc;
      ppLine493 : TppLine;
      ppLine494 : TppLine;
      ppLine495 : TppLine;
      ppLabel272 : TppLabel;
      ppLabel273 : TppLabel;
      ppGroup10 : TppGroup;
      ppGroupHeaderBand10 : TppGroupHeaderBand;
      ppLine534 : TppLine;
      ppLine535 : TppLine;
      ppLine536 : TppLine;
      ppLine537 : TppLine;
      ppLine538 : TppLine;
      ppLine539 : TppLine;
      ppLine540 : TppLine;
      ppLine541 : TppLine;
      ppLine542 : TppLine;
      ppLine543 : TppLine;
      ppLine544 : TppLine;
      ppLine545 : TppLine;
      ppLine546 : TppLine;
      ppLine547 : TppLine;
      ppLabel284 : TppLabel;
      ppLabel285 : TppLabel;
      ppLabel286 : TppLabel;
      ppLabel287 : TppLabel;
      ppLabel288 : TppLabel;
      ppLabel289 : TppLabel;
      ppLabel290 : TppLabel;
      ppLabel291 : TppLabel;
      ppLabel292 : TppLabel;
      ppLabel293 : TppLabel;
      ppLabel294 : TppLabel;
      ppLine548 : TppLine;
      ppLine549 : TppLine;
      ppLine550 : TppLine;
      ppLine551 : TppLine;
      ppLine552 : TppLine;
      ppLabel295 : TppLabel;
      ppLabel296 : TppLabel;
      ppLabel297 : TppLabel;
      ppLabel298 : TppLabel;
      ppLabel299 : TppLabel;
      ppLabel300 : TppLabel;
      ppLabel301 : TppLabel;
      ppLabel302 : TppLabel;
      ppLabel303 : TppLabel;
      ppLabel304 : TppLabel;
      ppDBText128 : TppDBText;
      ppDBText129 : TppDBText;
      ppGroupFooterBand10 : TppGroupFooterBand;
      ppShape24 : TppShape;
      ppShape25 : TppShape;
      ppDBCalc139 : TppDBCalc;
      ppDBCalc140 : TppDBCalc;
      ppDBCalc141 : TppDBCalc;
      ppDBCalc142 : TppDBCalc;
      ppDBCalc143 : TppDBCalc;
      ppDBCalc144 : TppDBCalc;
      ppDBCalc145 : TppDBCalc;
      ppDBCalc146 : TppDBCalc;
      ppDBCalc147 : TppDBCalc;
      ppDBCalc148 : TppDBCalc;
      ppDBCalc149 : TppDBCalc;
      ppDBCalc150 : TppDBCalc;
      ppLine553 : TppLine;
      ppLine554 : TppLine;
      ppLine555 : TppLine;
      ppLine556 : TppLine;
      ppLine557 : TppLine;
      ppLine558 : TppLine;
      ppLine559 : TppLine;
      ppLine560 : TppLine;
      ppLine561 : TppLine;
      ppLine562 : TppLine;
      ppLine563 : TppLine;
      ppLine564 : TppLine;
      ppLine565 : TppLine;
      ppLine566 : TppLine;
      ppLine567 : TppLine;
      ppLine568 : TppLine;
      ppLine569 : TppLine;
      ppLine570 : TppLine;
      ppDBText130 : TppDBText;
      ppdbDetalleCal : TppDBPipeline;
      ppdbResumenImporteCal : TppDBPipeline;
      ppdbDetalleUbi : TppDBPipeline;
      ppdbResumenImporteUbi : TppDBPipeline;
      ppdbDetalleUbiProv : TppDBPipeline;
      ppdbResumenImporteUbiProv : TppDBPipeline;
      ppdbDetalleUbiDist : TppDBPipeline;
      ppdbResumenImporteUbiDist : TppDBPipeline;
      ppHeaderBand4 : TppHeaderBand;
      ppLabel125 : TppLabel;
      ppLabel126 : TppLabel;
      ppLabel181 : TppLabel;
      ppLabel182 : TppLabel;
      ppLabel183 : TppLabel;
      ppSystemVariable7 : TppSystemVariable;
      ppSystemVariable8 : TppSystemVariable;
      ppSystemVariable9 : TppSystemVariable;
      ppLabel184 : TppLabel;
      ppLabel185 : TppLabel;
      ppLabel186 : TppLabel;
      lblTit01UbiDist : TppLabel;
      lblTit02UbiDist : TppLabel;
      ppDetailBand10 : TppDetailBand;
      ppShape16 : TppShape;
      ppDBText79 : TppDBText;
      ppDBText80 : TppDBText;
      ppDBText81 : TppDBText;
      ppDBText82 : TppDBText;
      ppDBText83 : TppDBText;
      ppDBText84 : TppDBText;
      ppDBText85 : TppDBText;
      ppDBText86 : TppDBText;
      ppDBText87 : TppDBText;
      ppDBText88 : TppDBText;
      ppDBText89 : TppDBText;
      ppDBText90 : TppDBText;
      ppDBText91 : TppDBText;
      ppDBText92 : TppDBText;
      ppLine343 : TppLine;
      ppLine344 : TppLine;
      ppLine345 : TppLine;
      ppLine346 : TppLine;
      ppLine347 : TppLine;
      ppLine348 : TppLine;
      ppLine349 : TppLine;
      ppLine350 : TppLine;
      ppLine351 : TppLine;
      ppLine352 : TppLine;
      ppLine353 : TppLine;
      ppLine354 : TppLine;
      ppLine355 : TppLine;
      ppLine356 : TppLine;
      ppLine357 : TppLine;
      ppLine358 : TppLine;
      ppLine359 : TppLine;
      ppFooterBand4 : TppFooterBand;
      ppGroup7 : TppGroup;
      ppGroupHeaderBand7 : TppGroupHeaderBand;
      ppGroupFooterBand7 : TppGroupFooterBand;
      ppShape17 : TppShape;
      ppShape18 : TppShape;
      ppLine360 : TppLine;
      ppLine361 : TppLine;
      ppLine362 : TppLine;
      ppLine363 : TppLine;
      ppLine364 : TppLine;
      ppLabel189 : TppLabel;
      ppLabel190 : TppLabel;
      ppDBText93 : TppDBText;
      ppLine365 : TppLine;
      ppLine366 : TppLine;
      ppLine367 : TppLine;
      ppLine368 : TppLine;
      ppLine369 : TppLine;
      ppLabel191 : TppLabel;
      ppLabel192 : TppLabel;
      ppLabel193 : TppLabel;
      ppLabel194 : TppLabel;
      ppLabel195 : TppLabel;
      ppLabel196 : TppLabel;
      ppLabel197 : TppLabel;
      ppLine370 : TppLine;
      ppLine371 : TppLine;
      ppLine372 : TppLine;
      ppLine373 : TppLine;
      ppLabel198 : TppLabel;
      ppLabel199 : TppLabel;
      ppLabel200 : TppLabel;
      ppLabel201 : TppLabel;
      ppLabel202 : TppLabel;
      ppLabel203 : TppLabel;
      ppLabel204 : TppLabel;
      ppLabel205 : TppLabel;
      ppLine374 : TppLine;
      ppLine375 : TppLine;
      ppLine376 : TppLine;
      ppLabel206 : TppLabel;
      ppLabel207 : TppLabel;
      ppLabel208 : TppLabel;
      ppLabel209 : TppLabel;
      ppLine377 : TppLine;
      ppLine378 : TppLine;
      ppDBCalc91 : TppDBCalc;
      pplblTotRegDist : TppDBCalc;
      pplblTotRegEfeDist : TppDBCalc;
      pplblTotRegBanDist : TppDBCalc;
      pplblTotRegRefDist : TppDBCalc;
      pplblTotRegAboDist : TppDBCalc;
      pplblTotRegBenDist : TppDBCalc;
      ppDBCalc98 : TppDBCalc;
      ppDBCalc99 : TppDBCalc;
      ppDBCalc100 : TppDBCalc;
      ppDBCalc101 : TppDBCalc;
      ppDBCalc102 : TppDBCalc;
      ppLine379 : TppLine;
      ppLine380 : TppLine;
      ppLine381 : TppLine;
      ppLabel210 : TppLabel;
      ppLabel211 : TppLabel;
      ppGroup8 : TppGroup;
      ppGroupHeaderBand8 : TppGroupHeaderBand;
      ppLine420 : TppLine;
      ppLine421 : TppLine;
      ppLine422 : TppLine;
      ppLine423 : TppLine;
      ppLine424 : TppLine;
      ppLine425 : TppLine;
      ppLine426 : TppLine;
      ppLine427 : TppLine;
      ppLine428 : TppLine;
      ppLine429 : TppLine;
      ppLine430 : TppLine;
      ppLine431 : TppLine;
      ppLine432 : TppLine;
      ppLine433 : TppLine;
      ppLabel222 : TppLabel;
      ppLabel223 : TppLabel;
      ppLabel224 : TppLabel;
      ppLabel225 : TppLabel;
      ppLabel226 : TppLabel;
      ppLabel227 : TppLabel;
      ppLabel228 : TppLabel;
      ppLabel229 : TppLabel;
      ppLabel230 : TppLabel;
      ppLabel231 : TppLabel;
      ppLabel232 : TppLabel;
      ppLine434 : TppLine;
      ppLine435 : TppLine;
      ppLine436 : TppLine;
      ppLine437 : TppLine;
      ppLine438 : TppLine;
      ppLabel233 : TppLabel;
      ppLabel234 : TppLabel;
      ppLabel235 : TppLabel;
      ppLabel236 : TppLabel;
      ppLabel237 : TppLabel;
      ppLabel238 : TppLabel;
      ppLabel239 : TppLabel;
      ppLabel240 : TppLabel;
      ppLabel241 : TppLabel;
      ppLabel242 : TppLabel;
      ppDBText102 : TppDBText;
      ppDBText103 : TppDBText;
      ppGroupFooterBand8 : TppGroupFooterBand;
      ppShape19 : TppShape;
      ppShape20 : TppShape;
      ppDBCalc109 : TppDBCalc;
      ppDBCalc110 : TppDBCalc;
      ppDBCalc111 : TppDBCalc;
      ppDBCalc112 : TppDBCalc;
      ppDBCalc113 : TppDBCalc;
      ppDBCalc114 : TppDBCalc;
      ppDBCalc115 : TppDBCalc;
      ppDBCalc116 : TppDBCalc;
      ppDBCalc117 : TppDBCalc;
      ppDBCalc118 : TppDBCalc;
      ppDBCalc119 : TppDBCalc;
      ppDBCalc120 : TppDBCalc;
      ppLine439 : TppLine;
      ppLine440 : TppLine;
      ppLine441 : TppLine;
      ppLine442 : TppLine;
      ppLine443 : TppLine;
      ppLine444 : TppLine;
      ppLine445 : TppLine;
      ppLine446 : TppLine;
      ppLine447 : TppLine;
      ppLine448 : TppLine;
      ppLine449 : TppLine;
      ppLine450 : TppLine;
      ppLine451 : TppLine;
      ppLine452 : TppLine;
      ppLine453 : TppLine;
      ppLine454 : TppLine;
      ppLine455 : TppLine;
      ppLine456 : TppLine;
      ppDBText104 : TppDBText;
      chbDetalleUbigeo : TCheckBox;
      ppHeaderBand3 : TppHeaderBand;
      ppLabel58 : TppLabel;
      ppLabel59 : TppLabel;
      ppLabel119 : TppLabel;
      ppLabel120 : TppLabel;
      ppLabel121 : TppLabel;
      ppSystemVariable4 : TppSystemVariable;
      ppSystemVariable5 : TppSystemVariable;
      ppSystemVariable6 : TppSystemVariable;
      ppLabel122 : TppLabel;
      ppLabel123 : TppLabel;
      ppLabel124 : TppLabel;
      lblTit01UbiProv : TppLabel;
      lblTit02UbiProv : TppLabel;
      ppDetailBand7 : TppDetailBand;
      ppShape11 : TppShape;
      ppDBText53 : TppDBText;
      ppDBText54 : TppDBText;
      ppDBText55 : TppDBText;
      ppDBText56 : TppDBText;
      ppDBText57 : TppDBText;
      ppDBText58 : TppDBText;
      ppDBText59 : TppDBText;
      ppDBText60 : TppDBText;
      ppDBText61 : TppDBText;
      ppDBText62 : TppDBText;
      ppDBText63 : TppDBText;
      ppDBText64 : TppDBText;
      ppDBText65 : TppDBText;
      ppDBText66 : TppDBText;
      ppLine229 : TppLine;
      ppLine230 : TppLine;
      ppLine231 : TppLine;
      ppLine232 : TppLine;
      ppLine233 : TppLine;
      ppLine234 : TppLine;
      ppLine235 : TppLine;
      ppLine236 : TppLine;
      ppLine237 : TppLine;
      ppLine238 : TppLine;
      ppLine239 : TppLine;
      ppLine240 : TppLine;
      ppLine241 : TppLine;
      ppLine242 : TppLine;
      ppLine243 : TppLine;
      ppLine244 : TppLine;
      ppLine245 : TppLine;
      ppFooterBand3 : TppFooterBand;
      ppGroup5 : TppGroup;
      ppGroupHeaderBand5 : TppGroupHeaderBand;
      ppGroupFooterBand5 : TppGroupFooterBand;
      ppShape12 : TppShape;
      ppShape13 : TppShape;
      ppLine246 : TppLine;
      ppLine247 : TppLine;
      ppLine248 : TppLine;
      ppLine249 : TppLine;
      ppLine250 : TppLine;
      ppLabel127 : TppLabel;
      ppLabel128 : TppLabel;
      ppDBText67 : TppDBText;
      ppLine251 : TppLine;
      ppLine252 : TppLine;
      ppLine253 : TppLine;
      ppLine254 : TppLine;
      ppLine255 : TppLine;
      ppLabel129 : TppLabel;
      ppLabel130 : TppLabel;
      ppLabel131 : TppLabel;
      ppLabel132 : TppLabel;
      ppLabel133 : TppLabel;
      ppLabel134 : TppLabel;
      ppLabel135 : TppLabel;
      ppLine256 : TppLine;
      ppLine257 : TppLine;
      ppLine258 : TppLine;
      ppLine259 : TppLine;
      ppLabel136 : TppLabel;
      ppLabel137 : TppLabel;
      ppLabel138 : TppLabel;
      ppLabel139 : TppLabel;
      ppLabel140 : TppLabel;
      ppLabel141 : TppLabel;
      ppLabel142 : TppLabel;
      ppLabel143 : TppLabel;
      ppLine260 : TppLine;
      ppLine261 : TppLine;
      ppLine262 : TppLine;
      ppLabel144 : TppLabel;
      ppLabel145 : TppLabel;
      ppLabel146 : TppLabel;
      ppLabel147 : TppLabel;
      ppLine263 : TppLine;
      ppLine264 : TppLine;
      ppDBCalc61 : TppDBCalc;
      pplblTotRegProv : TppDBCalc;
      pplblTotRegEfeProv : TppDBCalc;
      pplblTotRegBanProv : TppDBCalc;
      pplblTotRegRefProv : TppDBCalc;
      pplblTotRegAboProv : TppDBCalc;
      pplblTotRegBenProv : TppDBCalc;
      ppDBCalc68 : TppDBCalc;
      ppDBCalc69 : TppDBCalc;
      ppDBCalc70 : TppDBCalc;
      ppDBCalc71 : TppDBCalc;
      ppDBCalc72 : TppDBCalc;
      ppLine265 : TppLine;
      ppLine266 : TppLine;
      ppLine267 : TppLine;
      ppLabel148 : TppLabel;
      ppLabel149 : TppLabel;
      ppGroup6 : TppGroup;
      ppGroupHeaderBand6 : TppGroupHeaderBand;
      ppLine306 : TppLine;
      ppLine307 : TppLine;
      ppLine308 : TppLine;
      ppLine309 : TppLine;
      ppLine310 : TppLine;
      ppLine311 : TppLine;
      ppLine312 : TppLine;
      ppLine313 : TppLine;
      ppLine314 : TppLine;
      ppLine315 : TppLine;
      ppLine316 : TppLine;
      ppLine317 : TppLine;
      ppLine318 : TppLine;
      ppLine319 : TppLine;
      ppLabel160 : TppLabel;
      ppLabel161 : TppLabel;
      ppLabel162 : TppLabel;
      ppLabel163 : TppLabel;
      ppLabel164 : TppLabel;
      ppLabel165 : TppLabel;
      ppLabel166 : TppLabel;
      ppLabel167 : TppLabel;
      ppLabel168 : TppLabel;
      ppLabel169 : TppLabel;
      ppLabel170 : TppLabel;
      ppLine320 : TppLine;
      ppLine321 : TppLine;
      ppLine322 : TppLine;
      ppLine323 : TppLine;
      ppLine324 : TppLine;
      ppLabel171 : TppLabel;
      ppLabel172 : TppLabel;
      ppLabel173 : TppLabel;
      ppLabel174 : TppLabel;
      ppLabel175 : TppLabel;
      ppLabel176 : TppLabel;
      ppLabel177 : TppLabel;
      ppLabel178 : TppLabel;
      ppLabel179 : TppLabel;
      ppLabel180 : TppLabel;
      ppDBText76 : TppDBText;
      ppDBText77 : TppDBText;
      ppGroupFooterBand6 : TppGroupFooterBand;
      ppShape14 : TppShape;
      ppShape15 : TppShape;
      ppDBCalc79 : TppDBCalc;
      ppDBCalc80 : TppDBCalc;
      ppDBCalc81 : TppDBCalc;
      ppDBCalc82 : TppDBCalc;
      ppDBCalc83 : TppDBCalc;
      ppDBCalc84 : TppDBCalc;
      ppDBCalc85 : TppDBCalc;
      ppDBCalc86 : TppDBCalc;
      ppDBCalc87 : TppDBCalc;
      ppDBCalc88 : TppDBCalc;
      ppDBCalc89 : TppDBCalc;
      ppDBCalc90 : TppDBCalc;
      ppLine325 : TppLine;
      ppLine326 : TppLine;
      ppLine327 : TppLine;
      ppLine328 : TppLine;
      ppLine329 : TppLine;
      ppLine330 : TppLine;
      ppLine331 : TppLine;
      ppLine332 : TppLine;
      ppLine333 : TppLine;
      ppLine334 : TppLine;
      ppLine335 : TppLine;
      ppLine336 : TppLine;
      ppLine337 : TppLine;
      ppLine338 : TppLine;
      ppLine339 : TppLine;
      ppLine340 : TppLine;
      ppLine341 : TppLine;
      ppLine342 : TppLine;
      ppDBText78 : TppDBText;
      ppSubReport13 : TppSubReport;
      ppChildReport13 : TppChildReport;
      ppTitleBand13 : TppTitleBand;
      ppDetailBand18 : TppDetailBand;
      ppSummaryBand13 : TppSummaryBand;
      ppLine192 : TppLine;
      ppLabel98 : TppLabel;
      ppLabel99 : TppLabel;
      ppLabel100 : TppLabel;
      ppLabel101 : TppLabel;
      ppLine193 : TppLine;
      ppLine194 : TppLine;
      ppLine195 : TppLine;
      ppLine196 : TppLine;
      ppLine197 : TppLine;
      ppLabel102 : TppLabel;
      ppLine198 : TppLine;
      ppLine199 : TppLine;
      ppLine200 : TppLine;
      ppLine201 : TppLine;
      ppLine202 : TppLine;
      ppLine203 : TppLine;
      ppLine204 : TppLine;
      ppDBText50 : TppDBText;
      ppDBText51 : TppDBText;
      ppDBText52 : TppDBText;
      ppDBText143 : TppDBText;
      ppDBText144 : TppDBText;
      ppLine205 : TppLine;
      ppLine206 : TppLine;
      ppLabel103 : TppLabel;
      ppLine207 : TppLine;
      ppLine208 : TppLine;
      ppLine209 : TppLine;
      ppLine210 : TppLine;
      ppLine211 : TppLine;
      ppLine212 : TppLine;
      ppDBCalc49 : TppDBCalc;
      ppDBCalc50 : TppDBCalc;
      ppDBCalc51 : TppDBCalc;
      ppDBCalc52 : TppDBCalc;
      ppLine213 : TppLine;
      ppSubReport4 : TppSubReport;
      ppChildReport4 : TppChildReport;
      ppTitleBand4 : TppTitleBand;
      ppDetailBand8 : TppDetailBand;
      ppSummaryBand4 : TppSummaryBand;
      ppLine214 : TppLine;
      ppLabel104 : TppLabel;
      ppLabel105 : TppLabel;
      ppLabel106 : TppLabel;
      ppLabel107 : TppLabel;
      ppLine215 : TppLine;
      ppLine216 : TppLine;
      ppLine217 : TppLine;
      ppLine218 : TppLine;
      ppLine219 : TppLine;
      ppLabel108 : TppLabel;
      ppLine220 : TppLine;
      ppLine221 : TppLine;
      ppLine222 : TppLine;
      ppLine223 : TppLine;
      ppLine224 : TppLine;
      ppLine225 : TppLine;
      ppLine226 : TppLine;
      ppDBText68 : TppDBText;
      ppDBText69 : TppDBText;
      ppDBText70 : TppDBText;
      ppDBText71 : TppDBText;
      ppDBText72 : TppDBText;
      ppLine227 : TppLine;
      ppLine228 : TppLine;
      ppLabel150 : TppLabel;
      ppLine268 : TppLine;
      ppLine269 : TppLine;
      ppLine270 : TppLine;
      ppLine271 : TppLine;
      ppLine272 : TppLine;
      ppLine273 : TppLine;
      ppDBCalc53 : TppDBCalc;
      ppDBCalc54 : TppDBCalc;
      ppDBCalc55 : TppDBCalc;
      ppDBCalc73 : TppDBCalc;
      ppLine274 : TppLine;
      ppSubReport6 : TppSubReport;
      ppChildReport6 : TppChildReport;
      ppTitleBand6 : TppTitleBand;
      ppDetailBand9 : TppDetailBand;
      ppSummaryBand6 : TppSummaryBand;
      ppLine275 : TppLine;
      ppLabel151 : TppLabel;
      ppLabel152 : TppLabel;
      ppLabel153 : TppLabel;
      ppLabel154 : TppLabel;
      ppLine276 : TppLine;
      ppLine277 : TppLine;
      ppLine278 : TppLine;
      ppLine279 : TppLine;
      ppLine280 : TppLine;
      ppLabel155 : TppLabel;
      ppLine281 : TppLine;
      ppLine282 : TppLine;
      ppLine283 : TppLine;
      ppLine284 : TppLine;
      ppLine285 : TppLine;
      ppLine286 : TppLine;
      ppLine287 : TppLine;
      ppDBText73 : TppDBText;
      ppDBText74 : TppDBText;
      ppDBText75 : TppDBText;
      ppDBText94 : TppDBText;
      ppDBText95 : TppDBText;
      ppLine288 : TppLine;
      ppLine289 : TppLine;
      ppLabel156 : TppLabel;
      ppLine290 : TppLine;
      ppLine291 : TppLine;
      ppLine292 : TppLine;
      ppLine293 : TppLine;
      ppLine294 : TppLine;
      ppLine295 : TppLine;
      ppDBCalc74 : TppDBCalc;
      ppDBCalc75 : TppDBCalc;
      ppDBCalc76 : TppDBCalc;
      ppDBCalc77 : TppDBCalc;
      ppLine296 : TppLine;
      ppHeaderBand2 : TppHeaderBand;
      ppLabel2 : TppLabel;
      ppLabel3 : TppLabel;
      ppLabel4 : TppLabel;
      ppLabel5 : TppLabel;
      ppLabel6 : TppLabel;
      ppSystemVariable1 : TppSystemVariable;
      ppSystemVariable2 : TppSystemVariable;
      ppSystemVariable3 : TppSystemVariable;
      ppLabel48 : TppLabel;
      ppLabel56 : TppLabel;
      ppLabel57 : TppLabel;
      lblTit01UbiDpto : TppLabel;
      lblTit02UbiDpto : TppLabel;
      ppDetailBand2 : TppDetailBand;
      ppShape6 : TppShape;
      ppDBText1 : TppDBText;
      ppDBText15 : TppDBText;
      ppDBText17 : TppDBText;
      ppDBText18 : TppDBText;
      ppDBText19 : TppDBText;
      ppDBText20 : TppDBText;
      ppDBText21 : TppDBText;
      ppDBText22 : TppDBText;
      ppDBText31 : TppDBText;
      ppDBText32 : TppDBText;
      ppDBText33 : TppDBText;
      ppDBText34 : TppDBText;
      ppDBText39 : TppDBText;
      ppDBText40 : TppDBText;
      ppLine17 : TppLine;
      ppLine18 : TppLine;
      ppLine20 : TppLine;
      ppLine21 : TppLine;
      ppLine22 : TppLine;
      ppLine23 : TppLine;
      ppLine24 : TppLine;
      ppLine25 : TppLine;
      ppLine26 : TppLine;
      ppLine27 : TppLine;
      ppLine28 : TppLine;
      ppLine29 : TppLine;
      ppLine30 : TppLine;
      ppLine31 : TppLine;
      ppLine32 : TppLine;
      ppLine33 : TppLine;
      ppLine34 : TppLine;
      ppFooterBand2 : TppFooterBand;
      ppGroup3 : TppGroup;
      ppGroupHeaderBand3 : TppGroupHeaderBand;
      ppGroupFooterBand3 : TppGroupFooterBand;
      ppShape7 : TppShape;
      ppShape8 : TppShape;
      ppLine35 : TppLine;
      ppLine36 : TppLine;
      ppLine38 : TppLine;
      ppLine76 : TppLine;
      ppLine87 : TppLine;
      ppLabel60 : TppLabel;
      ppLabel61 : TppLabel;
      ppDBText41 : TppDBText;
      ppLine88 : TppLine;
      ppLine89 : TppLine;
      ppLine90 : TppLine;
      ppLine101 : TppLine;
      ppLine107 : TppLine;
      ppLabel62 : TppLabel;
      ppLabel63 : TppLabel;
      ppLabel64 : TppLabel;
      ppLabel70 : TppLabel;
      ppLabel71 : TppLabel;
      ppLabel72 : TppLabel;
      ppLabel73 : TppLabel;
      ppLine108 : TppLine;
      ppLine109 : TppLine;
      ppLine110 : TppLine;
      ppLine111 : TppLine;
      ppLabel74 : TppLabel;
      ppLabel75 : TppLabel;
      ppLabel76 : TppLabel;
      ppLabel77 : TppLabel;
      ppLabel78 : TppLabel;
      ppLabel79 : TppLabel;
      ppLabel80 : TppLabel;
      ppLabel81 : TppLabel;
      ppLine112 : TppLine;
      ppLine113 : TppLine;
      ppLine114 : TppLine;
      ppLabel82 : TppLabel;
      ppLabel83 : TppLabel;
      ppLabel84 : TppLabel;
      ppLabel85 : TppLabel;
      ppLine115 : TppLine;
      ppLine116 : TppLine;
      ppDBCalc1 : TppDBCalc;
      pplblTotRegDpto : TppDBCalc;
      pplblTotRegEfeDpto : TppDBCalc;
      pplblTotRegBanDpto : TppDBCalc;
      pplblTotRegRefDpto : TppDBCalc;
      pplblTotRegAboDpto : TppDBCalc;
      pplblTotRegBenDpto : TppDBCalc;
      ppDBCalc35 : TppDBCalc;
      ppDBCalc36 : TppDBCalc;
      ppDBCalc40 : TppDBCalc;
      ppDBCalc41 : TppDBCalc;
      ppDBCalc42 : TppDBCalc;
      ppLine117 : TppLine;
      ppLine118 : TppLine;
      ppLine134 : TppLine;
      ppLabel86 : TppLabel;
      ppLabel87 : TppLabel;
      ppSubReport17 : TppSubReport;
      ppChildReport17 : TppChildReport;
      ppTitleBand17 : TppTitleBand;
      ppLine706 : TppLine;
      ppLabel340 : TppLabel;
      ppLabel341 : TppLabel;
      ppLabel342 : TppLabel;
      ppLabel343 : TppLabel;
      ppLine707 : TppLine;
      ppLine708 : TppLine;
      ppLine709 : TppLine;
      ppLine710 : TppLine;
      ppLine711 : TppLine;
      ppLabel344 : TppLabel;
      ppLine712 : TppLine;
      ppDetailBand22 : TppDetailBand;
      ppLine713 : TppLine;
      ppLine714 : TppLine;
      ppLine715 : TppLine;
      ppLine716 : TppLine;
      ppLine717 : TppLine;
      ppLine718 : TppLine;
      ppDBText162 : TppDBText;
      ppDBText163 : TppDBText;
      ppDBText164 : TppDBText;
      ppDBText165 : TppDBText;
      ppDBText166 : TppDBText;
      ppLine719 : TppLine;
      ppSummaryBand17 : TppSummaryBand;
      ppLine720 : TppLine;
      ppLabel345 : TppLabel;
      ppLine721 : TppLine;
      ppLine722 : TppLine;
      ppLine723 : TppLine;
      ppLine724 : TppLine;
      ppLine725 : TppLine;
      ppLine726 : TppLine;
      ppDBCalc176 : TppDBCalc;
      ppDBCalc177 : TppDBCalc;
      ppDBCalc178 : TppDBCalc;
      ppDBCalc179 : TppDBCalc;
      ppLine727 : TppLine;
      pplblPorRegEfeDpto : TppLabel;
      pplblPorRegBanDpto : TppLabel;
      pplblPorRegRefDpto : TppLabel;
      pplblPorRegAboDpto : TppLabel;
      pplblPorRegBenDpto : TppLabel;
      ppLine297 : TppLine;
      ppLine299 : TppLine;
      ppLine300 : TppLine;
      ppLine301 : TppLine;
      ppLabel158 : TppLabel;
      ppLine302 : TppLine;
      ppLine303 : TppLine;
      ppLine304 : TppLine;
      ppLine305 : TppLine;
      ppLine382 : TppLine;
      ppLabel159 : TppLabel;
      ppLabel212 : TppLabel;
      ppLabel213 : TppLabel;
      ppLabel214 : TppLabel;
      ppLabel215 : TppLabel;
      ppLabel216 : TppLabel;
      ppLabel217 : TppLabel;
      ppLine383 : TppLine;
      ppLine384 : TppLine;
      ppLine385 : TppLine;
      ppLine386 : TppLine;
      ppLabel218 : TppLabel;
      ppLabel219 : TppLabel;
      ppLabel220 : TppLabel;
      ppLabel221 : TppLabel;
      ppLabel274 : TppLabel;
      ppLabel275 : TppLabel;
      ppLabel276 : TppLabel;
      ppLabel277 : TppLabel;
      ppLine387 : TppLine;
      ppLine388 : TppLine;
      ppLine389 : TppLine;
      ppLabel281 : TppLabel;
      ppDBCalc3 : TppDBCalc;
      ppDBCalc25 : TppDBCalc;
      ppDBCalc26 : TppDBCalc;
      ppDBCalc27 : TppDBCalc;
      ppDBCalc34 : TppDBCalc;
      ppDBCalc78 : TppDBCalc;
      ppLine392 : TppLine;
      ppLine298 : TppLine;
      ppLabel109 : TppLabel;
      ppLabel110 : TppLabel;
      ppLine390 : TppLine;
      ppLabel111 : TppLabel;
      pplblPorRegTotDpto : TppLabel;
      ppGroup4 : TppGroup;
      ppGroupHeaderBand4 : TppGroupHeaderBand;
      ppLine625 : TppLine;
      ppLine626 : TppLine;
      ppLine627 : TppLine;
      ppLine628 : TppLine;
      ppLine629 : TppLine;
      ppLine630 : TppLine;
      ppLine631 : TppLine;
      ppLine632 : TppLine;
      ppLine633 : TppLine;
      ppLine634 : TppLine;
      ppLine635 : TppLine;
      ppLine636 : TppLine;
      ppLine637 : TppLine;
      ppLine638 : TppLine;
      ppLabel113 : TppLabel;
      ppLabel114 : TppLabel;
      ppLabel115 : TppLabel;
      ppLabel116 : TppLabel;
      ppLabel117 : TppLabel;
      ppLabel118 : TppLabel;
      ppLabel157 : TppLabel;
      ppLabel278 : TppLabel;
      ppLabel279 : TppLabel;
      ppLabel280 : TppLabel;
      ppLabel317 : TppLabel;
      ppLine639 : TppLine;
      ppLine640 : TppLine;
      ppLine641 : TppLine;
      ppLine642 : TppLine;
      ppLine643 : TppLine;
      ppLabel318 : TppLabel;
      ppLabel319 : TppLabel;
      ppLabel320 : TppLabel;
      ppLabel321 : TppLabel;
      ppLabel322 : TppLabel;
      ppLabel323 : TppLabel;
      ppLabel324 : TppLabel;
      ppLabel325 : TppLabel;
      ppLabel326 : TppLabel;
      ppLabel327 : TppLabel;
      ppDBText149 : TppDBText;
      ppDBText150 : TppDBText;
      ppGroupFooterBand4 : TppGroupFooterBand;
      ppShape9 : TppShape;
      ppShape10 : TppShape;
      ppDBCalc56 : TppDBCalc;
      ppDBCalc57 : TppDBCalc;
      ppDBCalc58 : TppDBCalc;
      ppDBCalc59 : TppDBCalc;
      ppDBCalc60 : TppDBCalc;
      ppDBCalc161 : TppDBCalc;
      ppDBCalc162 : TppDBCalc;
      ppDBCalc163 : TppDBCalc;
      ppDBCalc164 : TppDBCalc;
      ppDBCalc165 : TppDBCalc;
      ppDBCalc166 : TppDBCalc;
      ppDBCalc167 : TppDBCalc;
      ppLine644 : TppLine;
      ppLine645 : TppLine;
      ppLine646 : TppLine;
      ppLine647 : TppLine;
      ppLine648 : TppLine;
      ppLine649 : TppLine;
      ppLine650 : TppLine;
      ppLine651 : TppLine;
      ppLine652 : TppLine;
      ppLine653 : TppLine;
      ppLine654 : TppLine;
      ppLine655 : TppLine;
      ppLine656 : TppLine;
      ppLine657 : TppLine;
      ppLine658 : TppLine;
      ppLine659 : TppLine;
      ppLine660 : TppLine;
      ppLine661 : TppLine;
      ppDBText151 : TppDBText;
      pplblTotRegTotDpto : TppLabel;
      pplblPorRegEfeProv : TppLabel;
      pplblPorRegBanProv : TppLabel;
      pplblPorRegRefProv : TppLabel;
      pplblPorRegAboProv : TppLabel;
      pplblPorRegBenProv : TppLabel;
      ppLine391 : TppLine;
      ppLine393 : TppLine;
      ppLine394 : TppLine;
      ppLine395 : TppLine;
      ppLabel348 : TppLabel;
      ppLine396 : TppLine;
      ppLine397 : TppLine;
      ppLine398 : TppLine;
      ppLine399 : TppLine;
      ppLine400 : TppLine;
      ppLabel349 : TppLabel;
      ppLabel350 : TppLabel;
      ppLabel351 : TppLabel;
      ppLabel352 : TppLabel;
      ppLabel353 : TppLabel;
      ppLabel354 : TppLabel;
      ppLabel355 : TppLabel;
      ppLine401 : TppLine;
      ppLine402 : TppLine;
      ppLine403 : TppLine;
      ppLine404 : TppLine;
      ppLabel356 : TppLabel;
      ppLabel357 : TppLabel;
      ppLabel358 : TppLabel;
      ppLabel359 : TppLabel;
      ppLabel360 : TppLabel;
      ppLabel361 : TppLabel;
      ppLabel362 : TppLabel;
      ppLabel363 : TppLabel;
      ppLine405 : TppLine;
      ppLine406 : TppLine;
      ppLine407 : TppLine;
      ppLabel364 : TppLabel;
      ppLine408 : TppLine;
      ppLine409 : TppLine;
      ppLabel365 : TppLabel;
      ppLabel366 : TppLabel;
      ppLine410 : TppLine;
      ppLabel367 : TppLabel;
      pplblPorRegTotProv : TppLabel;
      ppDBCalc2 : TppDBCalc;
      ppDBCalc62 : TppDBCalc;
      ppDBCalc63 : TppDBCalc;
      ppDBCalc64 : TppDBCalc;
      ppDBCalc65 : TppDBCalc;
      ppDBCalc66 : TppDBCalc;
      pplblTotRegTotProv : TppLabel;
      pplblPorRegEfeDist : TppLabel;
      pplblPorRegBanDist : TppLabel;
      pplblPorRegRefDist : TppLabel;
      pplblPorRegAboDist : TppLabel;
      pplblPorRegBenDist : TppLabel;
      ppLine411 : TppLine;
      ppLine412 : TppLine;
      ppLine413 : TppLine;
      ppLine414 : TppLine;
      ppLabel368 : TppLabel;
      ppLine415 : TppLine;
      ppLine416 : TppLine;
      ppLine417 : TppLine;
      ppLine418 : TppLine;
      ppLine419 : TppLine;
      ppLabel369 : TppLabel;
      ppLabel370 : TppLabel;
      ppLabel371 : TppLabel;
      ppLabel372 : TppLabel;
      ppLabel373 : TppLabel;
      ppLabel374 : TppLabel;
      ppLabel375 : TppLabel;
      ppLine496 : TppLine;
      ppLine497 : TppLine;
      ppLine498 : TppLine;
      ppLine499 : TppLine;
      ppLabel376 : TppLabel;
      ppLabel377 : TppLabel;
      ppLabel378 : TppLabel;
      ppLabel379 : TppLabel;
      ppLabel380 : TppLabel;
      ppLabel381 : TppLabel;
      ppLabel382 : TppLabel;
      ppLabel383 : TppLabel;
      ppLine500 : TppLine;
      ppLine501 : TppLine;
      ppLine502 : TppLine;
      ppLabel384 : TppLabel;
      ppLine503 : TppLine;
      ppLine504 : TppLine;
      ppLabel385 : TppLabel;
      ppLabel386 : TppLabel;
      ppLine505 : TppLine;
      ppLabel387 : TppLabel;
      pplblPorRegTotDist : TppLabel;
      pplblTotRegTotDist : TppLabel;
      ppDBCalc67 : TppDBCalc;
      ppDBCalc103 : TppDBCalc;
      ppDBCalc104 : TppDBCalc;
      ppDBCalc105 : TppDBCalc;
      ppDBCalc106 : TppDBCalc;
      ppDBCalc107 : TppDBCalc;
      pplblPorRegEfeCal : TppLabel;
      pplblPorRegBanCal : TppLabel;
      pplblPorRegRefCal : TppLabel;
      pplblPorRegAboCal : TppLabel;
      pplblPorRegBenCal : TppLabel;
      ppLine506 : TppLine;
      ppLine507 : TppLine;
      ppLine508 : TppLine;
      ppLine509 : TppLine;
      ppLabel388 : TppLabel;
      ppLine510 : TppLine;
      ppLine511 : TppLine;
      ppLine512 : TppLine;
      ppLine513 : TppLine;
      ppLine514 : TppLine;
      ppLabel389 : TppLabel;
      ppLabel390 : TppLabel;
      ppLabel391 : TppLabel;
      ppLabel392 : TppLabel;
      ppLabel393 : TppLabel;
      ppLabel394 : TppLabel;
      ppLabel395 : TppLabel;
      ppLine515 : TppLine;
      ppLine516 : TppLine;
      ppLine517 : TppLine;
      ppLine518 : TppLine;
      ppLabel396 : TppLabel;
      ppLabel397 : TppLabel;
      ppLabel398 : TppLabel;
      ppLabel399 : TppLabel;
      ppLabel400 : TppLabel;
      ppLabel401 : TppLabel;
      ppLabel402 : TppLabel;
      ppLabel403 : TppLabel;
      ppLine519 : TppLine;
      ppLine520 : TppLine;
      ppLine521 : TppLine;
      ppLabel404 : TppLabel;
      ppLine522 : TppLine;
      ppLine523 : TppLine;
      ppLabel405 : TppLabel;
      ppLabel406 : TppLabel;
      ppLine524 : TppLine;
      ppLabel407 : TppLabel;
      pplblPorRegTotCal : TppLabel;
      pplblTotRegTotCal : TppLabel;
      ppDBCalc92 : TppDBCalc;
      ppDBCalc93 : TppDBCalc;
      ppDBCalc94 : TppDBCalc;
      ppDBCalc95 : TppDBCalc;
      ppDBCalc96 : TppDBCalc;
      ppDBCalc97 : TppDBCalc;
      gbPeriodoGestion : TGroupBox;
      cboPeriodoGestion : TwwDBLookupCombo;
      dtFFinPeriodo : TwwDBDateTimePicker;
      dtFFinPago : TwwDBDateTimePicker;
      rgContactadoDom : TRadioGroup;
      Panel6 : TPanel;
      btnSalir : TBitBtn;
      rgContactadoTel : TRadioGroup;
      Label3 : TLabel;
      Label4 : TLabel;
      Label8 : TLabel;
      ppHeaderBand1 : TppHeaderBand;
      ppLabel880 : TppLabel;
      ppLabel881 : TppLabel;
      ppLabel892 : TppLabel;
      ppLabel893 : TppLabel;
      ppLabel894 : TppLabel;
      ppSystemVariable89 : TppSystemVariable;
      ppSystemVariable90 : TppSystemVariable;
      ppSystemVariable91 : TppSystemVariable;
      ppLabel895 : TppLabel;
      ppLabel896 : TppLabel;
      ppLabel897 : TppLabel;
      lblTit01 : TppLabel;
      lblTit02 : TppLabel;
      ppDetailBand1 : TppDetailBand;
      ppShape1 : TppShape;
      ppDBText2 : TppDBText;
      ppDBText3 : TppDBText;
      ppDBText4 : TppDBText;
      ppDBText5 : TppDBText;
      ppDBText6 : TppDBText;
      ppDBText7 : TppDBText;
      ppDBText8 : TppDBText;
      ppDBText9 : TppDBText;
      ppDBText10 : TppDBText;
      ppDBText11 : TppDBText;
      ppDBText12 : TppDBText;
      ppDBText13 : TppDBText;
      ppDBText14 : TppDBText;
      ppDBText29 : TppDBText;
      ppLine1 : TppLine;
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
      ppLine12 : TppLine;
      ppLine13 : TppLine;
      ppLine14 : TppLine;
      ppLine15 : TppLine;
      ppLine16 : TppLine;
      ppLine19 : TppLine;
      ppFooterBand1 : TppFooterBand;
      ppGroup2 : TppGroup;
      ppGroupHeaderBand2 : TppGroupHeaderBand;
      ppGroupFooterBand2 : TppGroupFooterBand;
      ppShape4 : TppShape;
      ppShape5 : TppShape;
      ppLine37 : TppLine;
      ppLine39 : TppLine;
      ppLine41 : TppLine;
      ppLine43 : TppLine;
      ppLine45 : TppLine;
      ppLabel1 : TppLabel;
      ppLabel23 : TppLabel;
      ppDBText16 : TppDBText;
      ppLine50 : TppLine;
      ppLine54 : TppLine;
      ppLine59 : TppLine;
      ppLine61 : TppLine;
      ppLine66 : TppLine;
      ppLabel24 : TppLabel;
      ppLabel25 : TppLabel;
      ppLabel26 : TppLabel;
      ppLabel27 : TppLabel;
      ppLabel28 : TppLabel;
      ppLabel29 : TppLabel;
      ppLabel30 : TppLabel;
      ppLine67 : TppLine;
      ppLine68 : TppLine;
      ppLine69 : TppLine;
      ppLine70 : TppLine;
      ppLabel31 : TppLabel;
      ppLabel32 : TppLabel;
      ppLabel33 : TppLabel;
      ppLabel34 : TppLabel;
      ppLabel35 : TppLabel;
      ppLabel36 : TppLabel;
      ppLabel37 : TppLabel;
      ppLabel38 : TppLabel;
      ppLine74 : TppLine;
      ppLine75 : TppLine;
      ppLine47 : TppLine;
      ppLabel39 : TppLabel;
      ppLabel40 : TppLabel;
      ppLabel41 : TppLabel;
      ppLabel42 : TppLabel;
      ppLine71 : TppLine;
      ppLine72 : TppLine;
      ppDBCalc13 : TppDBCalc;
      pplblTotRegGes : TppDBCalc;
      pplblTotRegEfeGes : TppDBCalc;
      pplblTotRegBanGes : TppDBCalc;
      pplblTotRegRefGes : TppDBCalc;
      pplblTotRegAboGes : TppDBCalc;
      pplblTotRegBenGes : TppDBCalc;
      ppDBCalc20 : TppDBCalc;
      ppDBCalc21 : TppDBCalc;
      ppDBCalc22 : TppDBCalc;
      ppDBCalc23 : TppDBCalc;
      ppDBCalc24 : TppDBCalc;
      ppLine91 : TppLine;
      ppLine92 : TppLine;
      ppLine73 : TppLine;
      ppLabel43 : TppLabel;
      ppLabel47 : TppLabel;
      pplblPorRegEfeGes : TppLabel;
      pplblPorRegBanGes : TppLabel;
      pplblPorRegRefGes : TppLabel;
      pplblPorRegAboGes : TppLabel;
      pplblPorRegBenGes : TppLabel;
      ppLine675 : TppLine;
      ppLine676 : TppLine;
      ppLine677 : TppLine;
      ppLine678 : TppLine;
      ppLabel437 : TppLabel;
      ppLine679 : TppLine;
      ppLine680 : TppLine;
      ppLine681 : TppLine;
      ppLine682 : TppLine;
      ppLine683 : TppLine;
      ppLabel438 : TppLabel;
      ppLabel439 : TppLabel;
      ppLabel440 : TppLabel;
      ppLabel441 : TppLabel;
      ppLabel442 : TppLabel;
      ppLabel443 : TppLabel;
      ppLabel444 : TppLabel;
      ppLine684 : TppLine;
      ppLine685 : TppLine;
      ppLine686 : TppLine;
      ppLine687 : TppLine;
      ppLabel445 : TppLabel;
      ppLabel446 : TppLabel;
      ppLabel447 : TppLabel;
      ppLabel448 : TppLabel;
      ppLabel449 : TppLabel;
      ppLabel450 : TppLabel;
      ppLabel451 : TppLabel;
      ppLabel452 : TppLabel;
      ppLine688 : TppLine;
      ppLine689 : TppLine;
      ppLine690 : TppLine;
      ppLabel453 : TppLabel;
      ppDBCalc169 : TppDBCalc;
      ppDBCalc170 : TppDBCalc;
      ppDBCalc171 : TppDBCalc;
      ppDBCalc172 : TppDBCalc;
      ppDBCalc173 : TppDBCalc;
      ppDBCalc174 : TppDBCalc;
      ppLine691 : TppLine;
      ppLine692 : TppLine;
      ppLabel454 : TppLabel;
      ppLabel455 : TppLabel;
      ppLine693 : TppLine;
      ppLabel456 : TppLabel;
      pplblPorRegTotGes : TppLabel;
      pplblTotRegTotGes : TppLabel;
      ppGroup1 : TppGroup;
      ppGroupHeaderBand1 : TppGroupHeaderBand;
      ppLine104 : TppLine;
      ppLine105 : TppLine;
      ppLine106 : TppLine;
      ppLine119 : TppLine;
      ppLine120 : TppLine;
      ppLine121 : TppLine;
      ppLine122 : TppLine;
      ppLine123 : TppLine;
      ppLine124 : TppLine;
      ppLine125 : TppLine;
      ppLine126 : TppLine;
      ppLine127 : TppLine;
      ppLine128 : TppLine;
      ppLine129 : TppLine;
      ppLabel12 : TppLabel;
      ppLabel13 : TppLabel;
      ppLabel14 : TppLabel;
      ppLabel15 : TppLabel;
      ppLabel16 : TppLabel;
      ppLabel17 : TppLabel;
      ppLabel18 : TppLabel;
      ppLabel19 : TppLabel;
      ppLabel20 : TppLabel;
      ppLabel21 : TppLabel;
      ppLabel22 : TppLabel;
      ppLine130 : TppLine;
      ppLine131 : TppLine;
      ppLine132 : TppLine;
      ppLine133 : TppLine;
      ppLine694 : TppLine;
      ppLabel51 : TppLabel;
      ppLabel52 : TppLabel;
      ppLabel53 : TppLabel;
      ppLabel54 : TppLabel;
      ppLabel55 : TppLabel;
      ppLabel431 : TppLabel;
      ppLabel459 : TppLabel;
      ppLabel460 : TppLabel;
      ppLabel461 : TppLabel;
      ppLabel462 : TppLabel;
      ppDBText136 : TppDBText;
      ppDBText137 : TppDBText;
      ppGroupFooterBand1 : TppGroupFooterBand;
      ppShape3 : TppShape;
      ppShape2 : TppShape;
      ppDBCalc7 : TppDBCalc;
      ppDBCalc8 : TppDBCalc;
      ppDBCalc9 : TppDBCalc;
      ppDBCalc10 : TppDBCalc;
      ppDBCalc11 : TppDBCalc;
      ppDBCalc12 : TppDBCalc;
      ppDBCalc31 : TppDBCalc;
      ppDBCalc32 : TppDBCalc;
      ppDBCalc33 : TppDBCalc;
      ppDBCalc175 : TppDBCalc;
      ppDBCalc180 : TppDBCalc;
      ppDBCalc181 : TppDBCalc;
      ppLine695 : TppLine;
      ppLine696 : TppLine;
      ppLine697 : TppLine;
      ppLine698 : TppLine;
      ppLine699 : TppLine;
      ppLine700 : TppLine;
      ppLine701 : TppLine;
      ppLine702 : TppLine;
      ppLine703 : TppLine;
      ppLine704 : TppLine;
      ppLine705 : TppLine;
      ppLine728 : TppLine;
      ppLine729 : TppLine;
      ppLine730 : TppLine;
      ppLine731 : TppLine;
      ppLine732 : TppLine;
      ppLine733 : TppLine;
      ppLine734 : TppLine;
      ppDBText138 : TppDBText;
      ppSubReport3 : TppSubReport;
      ppChildReport3 : TppChildReport;
      ppTitleBand3 : TppTitleBand;
      ppDetailBand4 : TppDetailBand;
      ppSummaryBand3 : TppSummaryBand;
      ppLine40 : TppLine;
      ppLabel7 : TppLabel;
      ppLabel8 : TppLabel;
      ppLabel9 : TppLabel;
      ppLabel10 : TppLabel;
      ppLine42 : TppLine;
      ppLine44 : TppLine;
      ppLine46 : TppLine;
      ppLine48 : TppLine;
      ppLine49 : TppLine;
      ppLabel11 : TppLabel;
      ppLine51 : TppLine;
      ppLine52 : TppLine;
      ppLine53 : TppLine;
      ppLine55 : TppLine;
      ppLine56 : TppLine;
      ppLine57 : TppLine;
      ppLine58 : TppLine;
      ppDBText23 : TppDBText;
      ppDBText24 : TppDBText;
      ppDBText25 : TppDBText;
      ppDBText26 : TppDBText;
      ppDBText27 : TppDBText;
      ppLine60 : TppLine;
      ppLine62 : TppLine;
      ppLabel44 : TppLabel;
      ppLine63 : TppLine;
      ppLine64 : TppLine;
      ppLine65 : TppLine;
      ppLine77 : TppLine;
      ppLine78 : TppLine;
      ppLine79 : TppLine;
      ppDBCalc4 : TppDBCalc;
      ppDBCalc5 : TppDBCalc;
      ppDBCalc6 : TppDBCalc;
      ppDBCalc28 : TppDBCalc;
      ppLine80 : TppLine;
      lblDescripcionCartera : TLabel;
      Procedure rgTipoGestorClick(Sender : TObject);
      Procedure btnExcelGestorClick(Sender : TObject);
      Procedure btnImprimirGestorClick(Sender : TObject);
      Procedure btnSalirClick(Sender : TObject);
      Procedure rgGestoresSeleccionClick(Sender : TObject);
      Procedure cbGestorChange(Sender : TObject);
      Procedure FormClose(Sender : TObject; Var Action : TCloseAction);
      Procedure btnFiltrarGestorClick(Sender : TObject);
      Procedure dbgPrincipalGestorDblClick(Sender : TObject);
      Procedure pgFiltroChange(Sender : TObject);
      Procedure FormShow(Sender : TObject);
      Procedure cbDptoExit(Sender : TObject);
      Procedure cbProvExit(Sender : TObject);
      Procedure cbDistExit(Sender : TObject);
      Procedure btnFiltrarUbigeoClick(Sender : TObject);
      Procedure btnExcelUbiClick(Sender : TObject);
      Procedure btnImprimirUbiClick(Sender : TObject);
      Procedure rgContactadoTelUbiClick(Sender : TObject);
      Procedure rgContactadoDomUbiClick(Sender : TObject);
      Procedure dbgPrincipalUbiDblClick(Sender : TObject);
      Procedure btnExcelCalClick(Sender : TObject);
      Procedure btnImprimirCalClick(Sender : TObject);
      Procedure btnFiltrarCalificacionClick(Sender : TObject);
      Procedure dbgPrincipalCalDblClick(Sender : TObject);
      Procedure chbDetalleUbigeoClick(Sender : TObject);
      Procedure ppGroupFooterBand3BeforePrint(Sender : TObject);
      Procedure ppGroupFooterBand5BeforePrint(Sender : TObject);
      Procedure ppGroupFooterBand7BeforePrint(Sender : TObject);
      Procedure ppGroupFooterBand9BeforePrint(Sender : TObject);
      Procedure cboPeriodoGestionChange(Sender : TObject);
      Procedure dtFFinPeriodoChange(Sender : TObject);
      Procedure dtFFinPagoChange(Sender : TObject);
      Procedure ppGroupFooterBand2BeforePrint(Sender : TObject);
   Private
      xsSQLTipGestor : String;
      xsSQLTipGestorDes : String;
      xsSQLTipGestorDesFem : String;
      xsSQLUbiDom : String;
      xsSQLUbiTel : String;
      xsSQLGesDom : String;
      xsSQLGesTel : String;
      xsSQLTablaUsuarios : String;
      xsWhereUsuario : String;
      xsSQLFromUsuario : String;
      Procedure fn_limpiar_pantalla;
      Procedure fn_cargar_formato_grilla_gestor;
      Procedure fn_cargar_formato_grilla_ubigeo;
      Procedure fn_cargar_formato_grilla_calificacion;
      Function fn_get_porcentaje(wgTotal, wgParte : String) : String;
      Function fn_validacion_general : boolean;
      Procedure fn_get_sql_filtro_general;
      // INICIO HPC_201209_GESCOB(F1)
      Procedure fn_cargar_gestores();
      // FIN HPC_201209_GESCOB(F1)
   Public
    { Public declarations }
   End;

Var
   fRepConsolidadoAsignacion : TfRepConsolidadoAsignacion;

Implementation
Uses GESDM1, GES315;
{$R *.dfm}

(******************************************************************************)

Procedure TfRepConsolidadoAsignacion.btnImprimirUbiClick(
   Sender : TObject);
Var
   xsSQL : String;
   xsZipId : String;
   xsSelectUniversoUbigeo : String;
   xxReport : TppReport;
   xxDetalle : TppDBPipeline;
   xxResumenImporte : TppDBPipeline;
   xsTipoFiltroGestion : String;
   xsSQLTablaGES000 : String;
   xxFieldLinkImporte : TppMasterFieldLink;

   Procedure fn_reporte_dist();
   Begin
      xsSelectUniversoUbigeo :=
         '   SELECT ZIPID UBIGEO, IMP '
         + '   FROM (SELECT DPTO.DPTOID, PROV.CIUDID, DIST.ZIPID '
         + '           FROM APO158 DPTO, APO123 PROV, APO122 DIST '
         + '          WHERE DPTO.DPTOID = PROV.DPTOID '
         + '            AND PROV.DPTOID = DIST.DPTOID '
         + '            AND PROV.CIUDID = DIST.CIUDID '
         + '        ) UBI, (SELECT ''Normal'' IMP FROM DUAL UNION SELECT ''Refinanciada'' IMP FROM DUAL) '
         + '  WHERE DPTOID = ' + QuotedStr(cbDpto.Text)
         + '    AND CIUDID = ' + QuotedStr(cbProv.Text);
      If edDist.Text <> '' Then
         xsSelectUniversoUbigeo := xsSelectUniversoUbigeo + ' AND ZIPID = ' + QuotedStr(cbDist.Text);
      xsZipId := ' ZIPID ';
      xxReport := pprUbigeoDist;
      xxDetalle := ppdbDetalleUbiDist;
      xxResumenImporte := ppdbResumenImporteUbiDist;
   End;

   Procedure fn_reporte_prov();
   Begin
      xsSelectUniversoUbigeo :=
         '   SELECT CIUDID UBIGEO, IMP '
         + '   FROM (SELECT DPTO.DPTOID ,PROV.CIUDID '
         + '           FROM APO158 DPTO, APO123 PROV '
         + '          WHERE DPTO.DPTOID = PROV.DPTOID '
         + '        ) UBI, (SELECT ''Normal'' IMP FROM DUAL UNION SELECT ''Refinanciada'' IMP FROM DUAL) '
         + '  WHERE DPTOID = ' + QuotedStr(cbDpto.Text);
      If edProv.Text <> '' Then
         xsSelectUniversoUbigeo := xsSelectUniversoUbigeo + ' AND CIUDID = ' + QuotedStr(cbProv.Text);
      xsZipId := ' SUBSTR(ZIPID,1,4) ';
      xxReport := pprUbigeoProv;
      xxDetalle := ppdbDetalleUbiProv;
      xxResumenImporte := ppdbResumenImporteUbiProv;
   End;

   Procedure fn_reporte_dpto();
   Begin
      xsSelectUniversoUbigeo :=
         '   SELECT DPTOID UBIGEO, IMP '
         + '   FROM (SELECT DPTOID, ''Normal'' IMP FROM APO158 '
         + '          UNION '
         + '         SELECT DPTOID, ''Refinanciada'' IMP FROM APO158 ) ';
      If edDpto.Text <> '' Then
         xsSelectUniversoUbigeo := xsSelectUniversoUbigeo + ' WHERE DPTOID = ' + QuotedStr(cbDpto.Text);
      xsZipId := ' SUBSTR(ZIPID,1,2) ';
      xxReport := pprUbigeoDpto;
      xxDetalle := ppdbDetalleUbi;
      xxResumenImporte := ppdbResumenImporteUbi;
   End;

   Procedure fn_reporte_nacional();
   Begin
      xsSelectUniversoUbigeo :=
         '   SELECT ''99'' UBIGEO, ''Normal'' IMP FROM DUAL '
         + '  UNION '
         + ' SELECT ''99'' UBIGEO, ''Refinanciada'' IMP FROM DUAL ';
      xsZipId := ' ''99'' ';

      xxReport := pprUbigeoDpto;
      xxDetalle := ppdbDetalleUbi;
      xxResumenImporte := ppdbResumenImporteUbi;
   End;

Begin

   Screen.Cursor := crHourGlass;

   fn_get_sql_filtro_general();

   xsTipoFiltroGestion := UpperCase(rgContactadoTel.Caption) + ' : ' + UpperCase(rgContactadoTel.Items.Strings[rgContactadoTel.ItemIndex])
      + ' / ' + UpperCase(rgContactadoDom.Caption) + ' : ' + UpperCase(rgContactadoDom.Items.Strings[rgContactadoDom.ItemIndex])
      + ' / ASIGNACIONES DEL ' + DateToStr(dtFFinPeriodo.MinDate) + ' AL ' + DateToStr(dtFFinPeriodo.Date);

   If edDist.Text <> '' Then
   Begin
      lblTit01UbiDist.Text := 'REPORTE DE GESTION ' + xsSQLTipGestorDesFem + ' POR DISTRITO : ' + edDpto.Text + '/' + edProv.Text + '/' + edDist.Text; // + xsTGestionDesc + ' ' + xsTGestorDescFem;
      lblTit02UbiDist.Text := xsTipoFiltroGestion;
      fn_reporte_dist();
   End
   Else
      If edProv.Text <> '' Then
      Begin
         If chbDetalleUbigeo.Checked Then
         Begin
            lblTit01UbiDist.Text := 'REPORTE DE GESTION ' + xsSQLTipGestorDesFem + ' POR PROVINCIA : ' + edDpto.Text + '/' + edProv.Text; // + xsTGestionDesc + ' ' + xsTGestorDescFem;
            lblTit02UbiDist.Text := xsTipoFiltroGestion;
            fn_reporte_dist()
         End
         Else
         Begin
            lblTit01UbiProv.Text := 'REPORTE DE GESTION ' + xsSQLTipGestorDesFem + ' POR PROVINCIA : ' + edDpto.Text + '/' + edProv.Text; // + xsTGestionDesc + ' ' + xsTGestorDescFem;
            lblTit02UbiProv.Text := xsTipoFiltroGestion;
            fn_reporte_prov();
         End;
      End
      Else
         If edDpto.Text <> '' Then
         Begin
            If chbDetalleUbigeo.Checked Then
            Begin
               lblTit01UbiProv.Text := 'REPORTE DE GESTION  ' + xsSQLTipGestorDesFem + ' POR DEPARTAMENTO : ' + edDpto.Text; // + xsTGestionDesc + ' ' + xsTGestorDescFem;
               lblTit02UbiProv.Text := xsTipoFiltroGestion;
               fn_reporte_prov()
            End
            Else
            Begin
               lblTit01UbiDpto.Text := 'REPORTE DE GESTION  ' + xsSQLTipGestorDesFem + ' POR DEPARTAMENTO : ' + edDpto.Text; // + xsTGestionDesc + ' ' + xsTGestorDescFem;
               lblTit02UbiDpto.Text := xsTipoFiltroGestion;
               fn_reporte_dpto();
            End;
         End
         Else
         Begin
            If chbDetalleUbigeo.Checked Then
            Begin
               lblTit02UbiDpto.Text := xsTipoFiltroGestion;
               lblTit01UbiDpto.Text := 'REPORTE DE GESTION ' + xsSQLTipGestorDesFem + ' A NIVEL NACIONAL '; // + xsTGestionDesc + ' ' + xsTGestorDescFem;
               fn_reporte_dpto();
            End
            Else
            Begin
               lblTit02UbiDpto.Text := xsTipoFiltroGestion;
               lblTit01UbiDpto.Text := 'REPORTE DE GESTION ' + xsSQLTipGestorDesFem + ' A NIVEL NACIONAL '; // + xsTGestionDesc + ' ' + xsTGestorDescFem;
               fn_reporte_nacional();
            End;
         End;

   xsSQLTablaGES000 := 'GES000';
   If DM1.fn_get_periodo_gestion_actual() <> cboPeriodoGestion.Text Then
      xsSQLTablaGES000 := xsSQLTablaGES000 + '_HIS';

   // resumen importe
   XSsql := 'SELECT IMP, UBIGEO, MAX(CANT_UBI) TOTASIG, SUM(NVL(SALTOT, 0)) SALTOT, '
      + '       SUM(NVL(SALVEN, 0)) SALVEN, SUM(NVL(SALPEN, 0)) SALPEN '
      + '  FROM (SELECT UNIVERSO_UBIGEO.UBIGEO, SALTOT, SALVEN, SALPEN, '
      + '               UNIVERSO_UBIGEO.IMP, '
      + '               NVL(COUNT(UNIVERSO_PAGO.ASOID) OVER(PARTITION BY UNIVERSO_UBIGEO.UBIGEO, UNIVERSO_UBIGEO.IMP), 0) CANT_UBI '
      + '           FROM ('
      + xsSelectUniversoUbigeo
      + '                ) UNIVERSO_UBIGEO, '
      + '                (SELECT UNIVERSO.TIP_GEST_DES, UNIVERSO.UBICABILIDAD, '
      + '                        UNIVERSO.UBIGEO, UNIVERSO.ASOID, NVL(SALTOT, 0) SALTOT, '
      + '                        NVL(SALVEN, 0) SALVEN, NVL(SALPEN, 0) SALPEN, IMP '
      + '                    FROM (SELECT ASIGNADO.TIP_GEST_DES, '
      + '                                 CASE WHEN REFERENCIA.CONTACTADO = ''S'' THEN ''CONTACTADO'' '
      + '                                      WHEN REFERENCIA.CONTACTADO = ''N'' THEN ''NO CONTACTADO'' '
      + '                                      ELSE ''PENDIENTE'' '
      + '                                  END UBICABILIDAD, ASIGNADO.UBIGEO, SALTOT, SALVEN, '
      + '                                  SALPEN, ASIGNADO.ASOID, IMP '
      + '                             FROM (SELECT ASOID, TIP_GEST_DES, UBIGEO, SALTOT, SALVEN, SALPEN, '
      + '                                          DENSE_RANK() OVER(PARTITION BY TIP_GEST_DES, ASOID ORDER BY TIP_GEST_DES, ASOID, FECASIG DESC) DRNK '
      + '                                      FROM (SELECT ASOID, ''DOMICILIARIA'' TIP_GEST_DES, SALTOT, SALVEN, SALPEN, FECASIG, ' + xsZipId + ' UBIGEO '
      + '                                               FROM GES_COB_DOM '
      + '                                              WHERE PERIODO = ' + QuotedStr(cboPeriodoGestion.Text)
      + '                                                AND TIPGES = ' + QuotedStr(xsSQLTipGestor)
      + '                                             UNION '
      + '                                             SELECT ASOID, ''DOMICILIARIA'' TIP_GEST_DES, SALTOT, SALVEN, SALPEN, FECASIG, ' + xsZipId + ' UBIGEO '
      + '                                               FROM GES_COB_DOM_HIS '
      + '                                              WHERE PERIODO = ' + QuotedStr(cboPeriodoGestion.Text)
      + '                                                AND TIPGES = ' + QuotedStr(xsSQLTipGestor)
// Inicio: SPP_201305_GESCOB F2 nuevo campo en la BD
      + '                                                AND ASIGNADO = ''S'' '
// Fin: SPP_201305_GESCOB
      + '                                             UNION '
      + '                                             SELECT ASOID, ''TELEFONICA'' TIP_GEST_DES, SALTOT, SALVEN, SALPEN, FECASIG, ' + xsZipId + ' UBIGEO '
      + '                                               FROM GES_COB_IND '
      + '                                              WHERE PERIODO = ' + QuotedStr(cboPeriodoGestion.Text)
      + '                                                AND TIPGES = ' + QuotedStr(xsSQLTipGestor)
      + '                                             UNION '
      + '                                             SELECT ASOID, ''TELEFONICA'' TIP_GEST_DES, SALTOT, SALVEN, SALPEN, FECASIG, ' + xsZipId + ' UBIGEO '
      + '                                               FROM GES_COB_IND_HIS '
      + '                                              WHERE PERIODO = ' + QuotedStr(cboPeriodoGestion.Text)
      + '                                                AND TIPGES = ' + QuotedStr(xsSQLTipGestor)
// Inicio: SPP_201305_GESCOB F2 nuevo campo en la BD
      + '                                                AND ASIGNADO = ''S'' '
// Fin: SPP_201305_GESCOB
      + '                                        )) ASIGNADO, '
      + '                                  (SELECT ASOID, IDGESTIONDET '
      + '                                     FROM (SELECT ASOID, IDGESTIONDET, '
      + '                                                  DENSE_RANK() OVER(PARTITION BY ASOID ORDER BY ASOID, FECHA DESC, HORA DESC) DRNK '
      + '                                             FROM GES_COB_SEG, (' + xsSQLTablaUsuarios + ') USR '
      + '                                            WHERE PERIODO = ' + QuotedStr(cboPeriodoGestion.Text)
      + '                                              AND FECHA >= ' + QuotedStr(DateToStr(dtFFinPeriodo.MinDate))
      + '                                              AND FECHA <= ' + QuotedStr(DateToStr(dtFFinPeriodo.Date))
      + '                                              AND USUARIO = USERID '
      + '                                           AND SUBSTR(IDGESTIONDET,1,1) IN (' + xsSQLGesDom + ',' + xsSQLGesTel + ')'
      + '                                           ) '
      + '                                    WHERE DRNK = 1) GESTION, '
      + '                                  (SELECT IDGTNDET, CONTACTADO FROM GES_REF_SEG_DET) REFERENCIA, '
      + '                                  (SELECT ASOID, CASE WHEN NVL(SALDOS_RT, 0) > 0 THEN ''Refinanciada'' ELSE ''Normal'' END IMP '
      + '                                     FROM ' + xsSQLTablaGES000
      + '                                    WHERE PERIODO = ' + QuotedStr(cboPeriodoGestion.Text)
      + '                                   ) GES000 '
      + '                           WHERE ASIGNADO.DRNK = 1 '
      + '                             AND ASIGNADO.ASOID = GESTION.ASOID(+) '
      + '                             AND GESTION.IDGESTIONDET = REFERENCIA.IDGTNDET(+) '
      + '                             AND ASIGNADO.ASOID = GES000.ASOID(+)) UNIVERSO '
      + '                   WHERE ((' + xsSQLUbiDom + ') OR(' + xsSQLUbiTel + ')) '
      + '                   ) UNIVERSO_PAGO '
      + '         WHERE UNIVERSO_UBIGEO.UBIGEO = UNIVERSO_PAGO.UBIGEO(+) '
      + '           AND UNIVERSO_UBIGEO.IMP = UNIVERSO_PAGO.IMP(+)) '
      + ' GROUP BY UBIGEO, IMP '
      + ' ORDER BY UBIGEO, IMP ';

   DM1.cdsQry4.Close;
   DM1.cdsQry4.DataRequest(xsSQL);
   DM1.cdsQry4.Open;

   xxDetalle.DataSource := DM1.dsQry6;
   xxResumenImporte.DataSource := DM1.dsQry4;

   // link maestro/detalle
   xxResumenImporte.MasterDataPipeline := xxDetalle;
   xxFieldLinkImporte := TppMasterFieldLink.Create(Nil);
   xxFieldLinkImporte.Parent := xxResumenImporte;
   xxFieldLinkImporte.DetailFieldName := 'UBIGEO';
   xxFieldLinkImporte.MasterFieldName := 'UBIGEO';

   //dsgPrincipal.Report :=  xxReport;
   //dsgPrincipal.ShowModal; //
   xxReport.Print;
   xxReport.Cancel;

   Screen.Cursor := CrDefault;

End;

(******************************************************************************)

Procedure TfRepConsolidadoAsignacion.btnImprimirCalClick(Sender : TObject);
Var
   xsSQL : String;
   xxFieldLinkImporte : TppMasterFieldLink;
   xxReport : TppReport;
   xsTipoFiltroGestion : String;
   xsSQLTablaGES000 : String;
Begin

   Screen.Cursor := crHourGlass;
   xxReport := pprCalificacion;
   xsTipoFiltroGestion := UpperCase(rgContactadoTel.Caption) + ' : ' + UpperCase(rgContactadoTel.Items.Strings[rgContactadoTel.ItemIndex])
      + ' / ' + UpperCase(rgContactadoDom.Caption) + ' : ' + UpperCase(rgContactadoDom.Items.Strings[rgContactadoDom.ItemIndex])
      + ' / ASIGNACIONES DEL ' + DateToStr(dtFFinPeriodo.MinDate) + ' AL ' + DateToStr(dtFFinPeriodo.Date);

   lblTit01Cal.Text := 'REPORTE DE GESTION ' + xsSQLTipGestorDesFem + ' POR CALIFICACION'; // + xsTGestionDesc + ' ' + xsTGestorDescFem;
   lblTit02Cal.Text := xsTipoFiltroGestion;

   fn_get_sql_filtro_general();
   xsSQLTablaGES000 := 'GES000';
   If DM1.fn_get_periodo_gestion_actual() <> cboPeriodoGestion.Text Then
      xsSQLTablaGES000 := xsSQLTablaGES000 + '_HIS';

   // resumen importe
   xsSQL := 'SELECT IMP, CFC_F, MAX(CANT_CFC_F) TOTASIG, SUM(NVL(SALTOT, 0)) SALTOT, '
      + '           SUM(NVL(SALVEN, 0)) SALVEN, SUM(NVL(SALPEN, 0)) SALPEN '
      + '      FROM (SELECT UNIVERSO_CALIFICACION.CFC_F_ORDEN, UNIVERSO_CALIFICACION.CFC_F, '
      + '                   SALTOT, SALVEN, SALPEN, UNIVERSO_CALIFICACION.IMP, '
      + '                   NVL(COUNT(UNIVERSO_PAGO.ASOID) OVER(PARTITION BY UNIVERSO_CALIFICACION.CFC_F, UNIVERSO_CALIFICACION.IMP), 0) CANT_CFC_F '
      + '           FROM (SELECT COB113.PROVISID CFC_F_ORDEN, COB113.RESUMEID CFC_F, ''Normal'' IMP '
      + '                    FROM COB113 '
      + '                  UNION '
      + '                  SELECT COB113.PROVISID CFC_F_ORDEN, COB113.RESUMEID CFC_F, ''Refinanciada'' IMP '
      + '                    FROM COB113) UNIVERSO_CALIFICACION, '
      + '                (SELECT UNIVERSO.TIP_GEST_DES, UNIVERSO.UBICABILIDAD, '
      + '                         UNIVERSO.CFC_F, UNIVERSO.ASOID, NVL(SALTOT, 0) SALTOT, '
      + '                         NVL(SALVEN, 0) SALVEN, NVL(SALPEN, 0) SALPEN, IMP '
      + '                    FROM (SELECT ASIGNADO.TIP_GEST_DES, '
      + '                                  CASE WHEN REFERENCIA.CONTACTADO = ''S'' THEN ''CONTACTADO'' '
      + '                                       WHEN REFERENCIA.CONTACTADO = ''N'' THEN ''NO CONTACTADO'' '
      + '                                       ELSE ''PENDIENTE'' '
      + '                                   END UBICABILIDAD, ASIGNADO.CFC_F, SALTOT, SALVEN, '
      + '                                  SALPEN, ASIGNADO.ASOID, IMP '
      + '                             FROM (SELECT ASOID, TIP_GEST_DES, CFC_F, SALTOT, SALVEN, SALPEN, '
      + '                                           DENSE_RANK() OVER(PARTITION BY TIP_GEST_DES, ASOID ORDER BY TIP_GEST_DES, ASOID, FECASIG DESC) DRNK '
      + '                                      FROM (SELECT ASOID, ''DOMICILIARIA'' TIP_GEST_DES, '
      + '                                                    SALTOT, SALVEN, SALPEN, FECASIG, CFC_F '
      + '                                               FROM GES_COB_DOM '
      + '                                              WHERE PERIODO = ' + QuotedStr(cboPeriodoGestion.Text)
      + '                                                AND TIPGES = ' + QuotedStr(xsSQLTipGestor)
      + '                                             UNION '
      + '                                             SELECT ASOID, ''DOMICILIARIA'' TIP_GEST_DES, '
      + '                                                    SALTOT, SALVEN, SALPEN, FECASIG, CFC_F '
      + '                                               FROM GES_COB_DOM_HIS '
      + '                                              WHERE PERIODO = ' + QuotedStr(cboPeriodoGestion.Text)
      + '                                                AND TIPGES = ' + QuotedStr(xsSQLTipGestor)
// Inicio: SPP_201305_GESCOB F2 nuevo campo en la BD
      + '                                                AND ASIGNADO = ''S'' '
// Fin: SPP_201305_GESCOB
      + '                                             UNION '
      + '                                             SELECT ASOID, ''TELEFONICA'' TIP_GEST_DES, '
      + '                                                    SALTOT, SALVEN, SALPEN, FECASIG, CFC_F '
      + '                                               FROM GES_COB_IND '
      + '                                              WHERE PERIODO = ' + QuotedStr(cboPeriodoGestion.Text)
      + '                                                AND TIPGES = ' + QuotedStr(xsSQLTipGestor)
      + '                                             UNION '
      + '                                             SELECT ASOID, ''TELEFONICA'' TIP_GEST_DES, '
      + '                                                    SALTOT, SALVEN, SALPEN, FECASIG, CFC_F '
      + '                                               FROM GES_COB_IND_HIS '
      + '                                              WHERE PERIODO = ' + QuotedStr(cboPeriodoGestion.Text)
      + '                                                AND TIPGES = ' + QuotedStr(xsSQLTipGestor)
// Inicio: SPP_201305_GESCOB F2 nuevo campo en la BD
      + '                                                AND ASIGNADO = ''S'' '
// Fin: SPP_201305_GESCOB
      + '                                           ) ) ASIGNADO, '
      + '                                  (SELECT ASOID, IDGESTIONDET '
      + '                                      FROM (SELECT ASOID, IDGESTIONDET, '
      + '                                                    DENSE_RANK() OVER(PARTITION BY ASOID ORDER BY ASOID, FECHA DESC, HORA DESC) DRNK '
      + '                                               FROM GES_COB_SEG, (' + xsSQLTablaUsuarios + ') USR '
      + '                                              WHERE PERIODO = ' + QuotedStr(cboPeriodoGestion.Text)
      + '                                                AND FECHA >= ' + QuotedStr(DateToStr(dtFFinPeriodo.MinDate))
      + '                                                AND FECHA <= ' + QuotedStr(DateToStr(dtFFinPeriodo.Date))
      + '                                                AND USUARIO = USERID '
      + '                                           AND SUBSTR(IDGESTIONDET,1,1) IN (' + xsSQLGesDom + ',' + xsSQLGesTel + ')'
      + '                                            ) '
      + '                                     WHERE DRNK = 1) GESTION, '
      + '                                  (SELECT IDGTNDET, CONTACTADO '
      + '                                      FROM GES_REF_SEG_DET) REFERENCIA, '
      + '                                  (SELECT ASOID, '
      + '                                           CASE WHEN NVL(SALDOS_RT, 0) > 0 THEN ''Refinanciada'' '
      + '                                                ELSE ''Normal'' '
      + '                                            END IMP '
      + '                                      FROM ' + xsSQLTablaGES000
      + '                                     WHERE PERIODO = ' + QuotedStr(cboPeriodoGestion.Text)
      + '                                 ) GES000 '
      + '                            WHERE ASIGNADO.DRNK = 1 '
      + '                              AND ASIGNADO.ASOID = GESTION.ASOID(+) '
      + '                              AND GESTION.IDGESTIONDET = REFERENCIA.IDGTNDET(+) '
      + '                              AND ASIGNADO.ASOID = GES000.ASOID(+)) UNIVERSO '
      + '                   WHERE ((' + xsSQLUbiDom + ') OR(' + xsSQLUbiTel + ')) '
      + '                         ) UNIVERSO_PAGO '
      + '          WHERE UNIVERSO_CALIFICACION.CFC_F = UNIVERSO_PAGO.CFC_F(+) '
      + '            AND UNIVERSO_CALIFICACION.IMP = UNIVERSO_PAGO.IMP(+)) '
      + ' GROUP BY CFC_F_ORDEN, CFC_F, IMP '
      + ' ORDER BY CFC_F_ORDEN, IMP ';

   DM1.cdsQry4.Close;
   DM1.cdsQry4.DataRequest(xsSQL);
   DM1.cdsQry4.Open;

   ppdbDetalleCal.DataSource := DM1.dsQry7;
   ppdbResumenImporteCal.DataSource := DM1.dsQry4;

   // link maestro/detalle
   ppdbResumenImporteCal.MasterDataPipeline := ppdbDetalleCal;
   xxFieldLinkImporte := TppMasterFieldLink.Create(Nil);
   xxFieldLinkImporte.Parent := ppdbResumenImporteCal;
   xxFieldLinkImporte.DetailFieldName := 'CFC_F';
   xxFieldLinkImporte.MasterFieldName := 'CFC_F';

   //dsgPrincipal.Report := xxReport;
   //dsgPrincipal.ShowModal; //
   xxReport.Print;
   xxReport.Cancel;

   Screen.Cursor := CrDefault;
End;

(******************************************************************************)

Function TfRepConsolidadoAsignacion.fn_get_porcentaje(wgTotal : String; wgParte : String) : String;
Var
   xsResult : String;
Begin
   If DM1.valores(wgTotal) > 0 Then
      xsResult := DM1.FormatoNumeros(floattostr((DM1.valores(wgParte) / DM1.valores(wgTotal)) * 100))
   Else
      xsResult := '0';
   result := xsResult;
End;

(******************************************************************************)

Procedure TfRepConsolidadoAsignacion.ppGroupFooterBand3BeforePrint(
   Sender : TObject);
Begin
   pplblPorRegEfeDpto.Caption := fn_get_porcentaje(pplblTotRegDpto.Text, pplblTotRegEfeDpto.Text);
   pplblPorRegBanDpto.Caption := fn_get_porcentaje(pplblTotRegDpto.Text, pplblTotRegBanDpto.Text);
   pplblPorRegRefDpto.Caption := fn_get_porcentaje(pplblTotRegDpto.Text, pplblTotRegRefDpto.Text);
   pplblPorRegAboDpto.Caption := fn_get_porcentaje(pplblTotRegDpto.Text, pplblTotRegAboDpto.Text);
   pplblPorRegBenDpto.Caption := fn_get_porcentaje(pplblTotRegDpto.Text, pplblTotRegBenDpto.Text);

   pplblTotRegTotDpto.Caption := floattostr(DM1.valores(pplblTotRegEfeDpto.Text) + DM1.valores(pplblTotRegBanDpto.Text) + DM1.valores(pplblTotRegRefDpto.Text) + DM1.valores(pplblTotRegAboDpto.Text) + DM1.valores(pplblTotRegBenDpto.Text));
   pplblPorRegTotDpto.Caption := fn_get_porcentaje(pplblTotRegDpto.Text, pplblTotRegTotDpto.Caption);
End;
(******************************************************************************)

Procedure TfRepConsolidadoAsignacion.ppGroupFooterBand5BeforePrint(
   Sender : TObject);
Begin
   pplblPorRegEfeProv.Caption := fn_get_porcentaje(pplblTotRegProv.Text, pplblTotRegEfeProv.Text);
   pplblPorRegBanProv.Caption := fn_get_porcentaje(pplblTotRegProv.Text, pplblTotRegBanProv.Text);
   pplblPorRegRefProv.Caption := fn_get_porcentaje(pplblTotRegProv.Text, pplblTotRegRefProv.Text);
   pplblPorRegAboProv.Caption := fn_get_porcentaje(pplblTotRegProv.Text, pplblTotRegAboProv.Text);
   pplblPorRegBenProv.Caption := fn_get_porcentaje(pplblTotRegProv.Text, pplblTotRegBenProv.Text);

   pplblTotRegTotProv.Caption := floattostr(DM1.valores(pplblTotRegEfeProv.Text) + DM1.valores(pplblTotRegBanProv.Text) + DM1.valores(pplblTotRegRefProv.Text) + DM1.valores(pplblTotRegAboProv.Text) + DM1.valores(pplblTotRegBenProv.Text));
   pplblPorRegTotProv.Caption := fn_get_porcentaje(pplblTotRegProv.Text, pplblTotRegTotProv.Caption);

End;
(******************************************************************************)

Procedure TfRepConsolidadoAsignacion.ppGroupFooterBand7BeforePrint(
   Sender : TObject);
Begin
   pplblPorRegEfeDist.Caption := fn_get_porcentaje(pplblTotRegDist.Text, pplblTotRegEfeDist.Text);
   pplblPorRegBanDist.Caption := fn_get_porcentaje(pplblTotRegDist.Text, pplblTotRegBanDist.Text);
   pplblPorRegRefDist.Caption := fn_get_porcentaje(pplblTotRegDist.Text, pplblTotRegRefDist.Text);
   pplblPorRegAboDist.Caption := fn_get_porcentaje(pplblTotRegDist.Text, pplblTotRegAboDist.Text);
   pplblPorRegBenDist.Caption := fn_get_porcentaje(pplblTotRegDist.Text, pplblTotRegBenDist.Text);

   pplblTotRegTotDist.Caption := floattostr(DM1.valores(pplblTotRegEfeDist.Text) + DM1.valores(pplblTotRegBanDist.Text) + DM1.valores(pplblTotRegRefDist.Text) + DM1.valores(pplblTotRegAboDist.Text) + DM1.valores(pplblTotRegBenDist.Text));
   pplblPorRegTotDist.Caption := fn_get_porcentaje(pplblTotRegDist.Text, pplblTotRegTotDist.Caption);

End;
(******************************************************************************)

Procedure TfRepConsolidadoAsignacion.ppGroupFooterBand9BeforePrint(
   Sender : TObject);
Begin
   pplblPorRegEfeCal.Caption := fn_get_porcentaje(pplblTotRegCal.Text, pplblTotRegEfeCal.Text);
   pplblPorRegBanCal.Caption := fn_get_porcentaje(pplblTotRegCal.Text, pplblTotRegBanCal.Text);
   pplblPorRegRefCal.Caption := fn_get_porcentaje(pplblTotRegCal.Text, pplblTotRegRefCal.Text);
   pplblPorRegAboCal.Caption := fn_get_porcentaje(pplblTotRegCal.Text, pplblTotRegAboCal.Text);
   pplblPorRegBenCal.Caption := fn_get_porcentaje(pplblTotRegCal.Text, pplblTotRegBenCal.Text);

   pplblTotRegTotCal.Caption := floattostr(DM1.valores(pplblTotRegEfeCal.Text) + DM1.valores(pplblTotRegBanCal.Text) + DM1.valores(pplblTotRegRefCal.Text) + DM1.valores(pplblTotRegAboCal.Text) + DM1.valores(pplblTotRegBenCal.Text));
   pplblPorRegTotCal.Caption := fn_get_porcentaje(pplblTotRegCal.Text, pplblTotRegTotCal.Caption);
End;

(******************************************************************************)

Procedure TfRepConsolidadoAsignacion.btnImprimirGestorClick(Sender : TObject);
Var
   xsSQL : String;
   xxFieldLinkImporte : TppMasterFieldLink;
   xxFieldLinkCartera : TppMasterFieldLink;
   xsSQLTablaGES000 : String;
   xsTipoFiltroGestion : String;
Begin

   Screen.Cursor := crHourGlass;
   fn_get_sql_filtro_general();

   xsTipoFiltroGestion := UpperCase(rgContactadoTel.Caption) + ' : ' + UpperCase(rgContactadoTel.Items.Strings[rgContactadoTel.ItemIndex])
      + ' / ' + UpperCase(rgContactadoDom.Caption) + ' : ' + UpperCase(rgContactadoDom.Items.Strings[rgContactadoDom.ItemIndex])
      + ' / ASIGNACIONES DEL ' + DateToStr(dtFFinPeriodo.MinDate) + ' AL ' + DateToStr(dtFFinPeriodo.Date);

   lblTit01.Text := ' REPORTE DE GESTION ' + xsSQLTipGestorDesFem;
   lblTit02.Text := xsTipoFiltroGestion;

   xsSQLTablaGES000 := 'GES000';
   If DM1.fn_get_periodo_gestion_actual() <> cboPeriodoGestion.Text Then
      xsSQLTablaGES000 := xsSQLTablaGES000 + '_HIS';

   // resumen importe
   xsSQL :=
      '  SELECT IMP, USUARIO GESTOR, MAX(CANT_USU) TOTASIG, SUM(NVL(SALTOT, 0)) SALTOT, '
      + '       SUM(NVL(SALVEN, 0)) SALVEN, SUM(NVL(SALPEN, 0)) SALPEN '
      + '  FROM (SELECT ' + xsSQLFromUsuario + ' USUARIO, SALTOT, SALVEN, SALPEN, UNIVERSO_USUARIO.IMP, '
      + '                NVL(COUNT(UNIVERSO_PAGO.ASOID) OVER(PARTITION BY ' + xsSQLFromUsuario + ', UNIVERSO_USUARIO.IMP), 0) CANT_USU '
      + '          FROM (SELECT DISTINCT USUARIO, ''Normal'' IMP '
      + '                  FROM (SELECT USUARIO '
      + '                          FROM GES_COB_DOM '
      + '                         WHERE PERIODO = ' + QuotedStr(cboPeriodoGestion.Text)
      + '                           AND TIPGES = ' + QuotedStr(xsSQLTipGestor)
      + '                         UNION '
      + '                        SELECT USUARIO '
      + '                          FROM GES_COB_DOM_HIS '
      + '                         WHERE PERIODO = ' + QuotedStr(cboPeriodoGestion.Text)
      + '                           AND TIPGES = ' + QuotedStr(xsSQLTipGestor)
// Inicio: SPP_201305_GESCOB F2 nuevo campo en la BD
      + '                           AND ASIGNADO = ''S'' '
// Fin: SPP_201305_GESCOB
      + '                         UNION '
      + '                        SELECT USUARIO '
      + '                          FROM GES_COB_IND '
      + '                         WHERE PERIODO = ' + QuotedStr(cboPeriodoGestion.Text)
      + '                           AND TIPGES = ' + QuotedStr(xsSQLTipGestor)
      + '                         UNION '
      + '                        SELECT USUARIO '
      + '                          FROM GES_COB_IND_HIS '
      + '                         WHERE PERIODO = ' + QuotedStr(cboPeriodoGestion.Text)
      + '                           AND TIPGES = ' + QuotedStr(xsSQLTipGestor)
// Inicio: SPP_201305_GESCOB F2 nuevo campo en la BD
      + '                           AND ASIGNADO = ''S'' '
// Fin: SPP_201305_GESCOB
      + '                       ) '
      + '                 WHERE ' + xsWhereUsuario
      + '                 UNION '
      + '                SELECT DISTINCT USUARIO, ''Refinanciada'' IMP '
      + '                  FROM (SELECT USUARIO '
      + '                          FROM GES_COB_DOM '
      + '                         WHERE PERIODO = ' + QuotedStr(cboPeriodoGestion.Text)
      + '                           AND TIPGES = ' + QuotedStr(xsSQLTipGestor)
      + '                         UNION '
      + '                        SELECT USUARIO '
      + '                          FROM GES_COB_DOM_HIS '
      + '                         WHERE PERIODO = ' + QuotedStr(cboPeriodoGestion.Text)
      + '                           AND TIPGES = ' + QuotedStr(xsSQLTipGestor)
// Inicio: SPP_201305_GESCOB F2 nuevo campo en la BD
      + '                           AND ASIGNADO = ''S'' '
// Fin: SPP_201305_GESCOB
      + '                         UNION '
      + '                        SELECT USUARIO '
      + '                          FROM GES_COB_IND '
      + '                         WHERE PERIODO = ' + QuotedStr(cboPeriodoGestion.Text)
      + '                           AND TIPGES = ' + QuotedStr(xsSQLTipGestor)
      + '                         UNION '
      + '                        SELECT USUARIO '
      + '                          FROM GES_COB_IND_HIS '
      + '                         WHERE PERIODO = ' + QuotedStr(cboPeriodoGestion.Text)
      + '                           AND TIPGES = ' + QuotedStr(xsSQLTipGestor)
// Inicio: SPP_201305_GESCOB F2 nuevo campo en la BD
      + '                           AND ASIGNADO = ''S'' '
// Fin: SPP_201305_GESCOB
      + '                       ) '
      + '                  WHERE ' + xsWhereUsuario
      + '               ) UNIVERSO_USUARIO, '
      + '               (SELECT UNIVERSO.TIP_GEST_DES, UNIVERSO.UBICABILIDAD, '
      + '                       UNIVERSO.USUARIO, UNIVERSO.ASOID, NVL(SALTOT, 0) SALTOT, '
      + '                       NVL(SALVEN, 0) SALVEN, NVL(SALPEN, 0) SALPEN, IMP '
      + '                  FROM (SELECT ASIGNADO.TIP_GEST_DES, '
      + '                               CASE WHEN REFERENCIA.CONTACTADO = ''S'' THEN ''CONTACTADO'' '
      + '                                    WHEN REFERENCIA.CONTACTADO = ''N'' THEN ''NO CONTACTADO'' '
      + '                                    ELSE ''PENDIENTE'' '
      + '                                END UBICABILIDAD, ASIGNADO.USUARIO, SALTOT, SALVEN, '
      + '                                SALPEN, ASIGNADO.ASOID, IMP '
      + '                          FROM (SELECT ASOID, TIP_GEST_DES, USUARIO, SALTOT, SALVEN, SALPEN, '
      + '                                       DENSE_RANK() OVER(PARTITION BY TIP_GEST_DES, ASOID ORDER BY TIP_GEST_DES, ASOID, FECASIG DESC) DRNK '
      + '                                  FROM (SELECT ASOID, ''DOMICILIARIA'' TIP_GEST_DES, SALTOT, SALVEN, SALPEN, FECASIG, USUARIO '
      + '                                          FROM GES_COB_DOM '
      + '                                         WHERE PERIODO = ' + QuotedStr(cboPeriodoGestion.Text)
      + '                                           AND TIPGES = ' + QuotedStr(xsSQLTipGestor)
      + '                                         UNION '
      + '                                        SELECT ASOID, ''DOMICILIARIA'' TIP_GEST_DES, SALTOT, SALVEN, SALPEN, FECASIG, USUARIO '
      + '                                          FROM GES_COB_DOM_HIS '
      + '                                         WHERE PERIODO = ' + QuotedStr(cboPeriodoGestion.Text)
      + '                                           AND TIPGES = ' + QuotedStr(xsSQLTipGestor)
// Inicio: SPP_201305_GESCOB F2 nuevo campo en la BD
      + '                                           AND ASIGNADO = ''S'' '
// Fin: SPP_201305_GESCOB
      + '                                         UNION '
      + '                                        SELECT ASOID, ''TELEFONICA'' TIP_GEST_DES, SALTOT, SALVEN, SALPEN, FECASIG, USUARIO '
      + '                                          FROM GES_COB_IND '
      + '                                         WHERE PERIODO = ' + QuotedStr(cboPeriodoGestion.Text)
      + '                                           AND TIPGES = ' + QuotedStr(xsSQLTipGestor)
      + '                                         UNION '
      + '                                        SELECT ASOID, ''TELEFONICA'' TIP_GEST_DES, SALTOT, SALVEN, SALPEN, FECASIG, USUARIO '
      + '                                          FROM GES_COB_IND_HIS '
      + '                                         WHERE PERIODO = ' + QuotedStr(cboPeriodoGestion.Text)
      + '                                           AND TIPGES = ' + QuotedStr(xsSQLTipGestor)
// Inicio: SPP_201305_GESCOB F2 nuevo campo en la BD
      + '                                           AND ASIGNADO = ''S'' '
// Fin: SPP_201305_GESCOB
      + '                                       ) '
      + '                               ) ASIGNADO, '
      + '                               (SELECT ASOID, IDGESTIONDET '
      + '                                  FROM (SELECT ASOID, IDGESTIONDET, '
      + '                                               DENSE_RANK() OVER(PARTITION BY ASOID ORDER BY FECHA DESC, HORA DESC) DRNK '
      + '                                          FROM GES_COB_SEG, (' + xsSQLTablaUsuarios + ') USR '
      + '                                         WHERE PERIODO = ' + QuotedStr(cboPeriodoGestion.Text)
      + '                                           AND FECHA >= ' + QuotedStr(DateToStr(dtFFinPeriodo.MinDate))
      + '                                           AND FECHA <= ' + QuotedStr(DateToStr(dtFFinPeriodo.Date))
      + '                                           AND USUARIO = USERID '
      + '                                           AND SUBSTR(IDGESTIONDET,1,1) IN (' + xsSQLGesDom + ',' + xsSQLGesTel + ')'
      + '                                       ) '
      + '                                 WHERE DRNK = 1) GESTION, '
      + '                               (SELECT IDGTNDET, CONTACTADO FROM GES_REF_SEG_DET) REFERENCIA, '
      + '                               (SELECT ASOID, '
      + '                                       CASE WHEN NVL(SALDOS_RT, 0) > 0 THEN ''Refinanciada'' '
      + '                                            ELSE ''Normal'' '
      + '                                        END IMP '
      + '                                  FROM ' + xsSQLTablaGES000
      + '                                 WHERE PERIODO = ' + QuotedStr(cboPeriodoGestion.Text)
      + '                               ) GES000 '
      + '                         WHERE ASIGNADO.DRNK = 1 '
      + '                           AND ASIGNADO.ASOID = GESTION.ASOID(+) '
      + '                           AND GESTION.IDGESTIONDET = REFERENCIA.IDGTNDET(+) '
      + '                           AND ASIGNADO.ASOID = GES000.ASOID(+)) UNIVERSO '
      + '                 WHERE ((' + xsSQLUbiDom + ') OR(' + xsSQLUbiTel + ')) '
      + '               ) UNIVERSO_PAGO '
      + '         WHERE UNIVERSO_USUARIO.USUARIO = UNIVERSO_PAGO.USUARIO(+) '
      + '           AND UNIVERSO_USUARIO.IMP = UNIVERSO_PAGO.IMP(+)) '
      + ' GROUP BY USUARIO, IMP '
      + ' ORDER BY USUARIO, IMP ';

   DM1.cdsQry4.Close;
   DM1.cdsQry4.DataRequest(xsSQL);
   DM1.cdsQry4.Open;

   ppdbDetalleGes.DataSource := DM1.dsQry2;
   ppdbResumenImporteGes.DataSource := DM1.dsQry4;

   // link maestro/detalle
   ppdbResumenImporteGes.MasterDataPipeline := ppdbDetalleGes;
   xxFieldLinkImporte := TppMasterFieldLink.Create(Nil);
   xxFieldLinkImporte.Parent := ppdbResumenImporteGes;
   xxFieldLinkImporte.DetailFieldName := 'GESTOR';
   xxFieldLinkImporte.MasterFieldName := 'GESTOR';

   //dsgPrincipal.Report :=  pprGestor;
   //dsgPrincipal.ShowModal; //
   pprGestor.Print;
   pprGestor.Cancel;

   Screen.Cursor := CrDefault;
End;

(******************************************************************************)

Procedure TfRepConsolidadoAsignacion.FormShow(Sender : TObject);
Var
   xsSQL : String;
Begin
   lblDescripcionCartera.Caption := '';
   xsSQL := 'SELECT DISTINCT PERIODO'
      + '      FROM GES_COB_CFC000_CAB ' // SE PODRIA CAMBIAR POR GES000
      + '     ORDER BY PERIODO DESC ';
   DM1.cdsQry10.Close;
   DM1.cdsQry10.DataRequest(xsSQL);
   DM1.cdsQry10.Open;
   cboPeriodoGestion.LookupTable := DM1.cdsQry10;
   cboPeriodoGestion.LookupField := 'PERIODO';

   dbgPrincipalGestor.DataSource := DM1.dsQry2;
   dbgPrincipalUbi.DataSource := DM1.dsQry6;
   dbgPrincipalCal.DataSource := DM1.dsQry7;

   // ubigeo
   xsSQL := 'SELECT DPTOID, DPTODES FROM APO158 ORDER BY DPTOID';
   DM1.cdsDpto.Close;
   DM1.cdsDpto.DataRequest(xsSQL);
   DM1.cdsDpto.Open;
   cbDpto.LookupTable := DM1.cdsDpto;
   cbDpto.Selected.Clear;
   cbDpto.Selected.Add('DPTOID'#9'3'#9'Código'#9#9);
   cbDpto.Selected.Add('DPTODES'#9'20'#9'Descripción'#9#9);

   xsSQL := 'SELECT DPTOID,CIUDID,CIUDDES FROM APO123 ORDER BY DPTOID,CIUDID';
   DM1.cdsProvin.Close;
   DM1.cdsProvin.DataRequest(xsSQL);
   DM1.cdsProvin.Open;
   cbProv.LookupTable := DM1.cdsProvin;
   cbProv.Selected.Clear;
   cbProv.Selected.Add('CIUDID'#9'5'#9'Código'#9#9);
   cbProv.Selected.Add('CIUDDES'#9'20'#9'Descripción'#9#9);
   DM1.cdsProvin.Filtered := false;
   DM1.cdsProvin.Filter := '1=2';
   DM1.cdsProvin.Filtered := true;

   xsSQL := 'SELECT DPTOID, CIUDID, ZIPID, ZIPDES FROM APO122 ORDER BY DPTOID, CIUDID, ZIPID';
   DM1.cdsDist.Close;
   DM1.cdsDist.DataRequest(xsSQL);
   DM1.cdsDist.Open;
   cbDist.LookupTable := DM1.cdsDist;
   cbDist.Selected.Clear;
   cbDist.Selected.Add('ZIPID'#9'7'#9'Código'#9#9);
   cbDist.Selected.Add('ZIPDES'#9'20'#9'Descripción'#9#9);
   DM1.cdsDist.Filtered := false;
   DM1.cdsDist.Filter := '1=2';
   DM1.cdsDist.Filtered := true;
   //
   rgTipoGestorClick(rgTipoGestor);
   fn_limpiar_pantalla();
   self.KeyPreview := true; // para que el formulario capture las teclas antes de que sea capturardo por el control
   pgFiltro.ActivePage := tsGestor;
   pgFiltro.ActivePage.ImageIndex := 1;

   dbgPrincipalGestor.GroupFieldName := 'GESTOR';
   dbgPrincipalUbi.GroupFieldName := 'DEPARTAMENTO';
   dbgPrincipalCal.GroupFieldName := 'CALIFICACION';
End;

(******************************************************************************)

Procedure TfRepConsolidadoAsignacion.FormClose(Sender : TObject;
   Var Action : TCloseAction);
Begin
   Action := caFree;
End;
(******************************************************************************)

Procedure TfRepConsolidadoAsignacion.rgTipoGestorClick(Sender : TObject);
Var
   xsSQL : String;
Begin
   fn_limpiar_pantalla();
   fn_cargar_gestores();
   (*
   Case rgTipoGestor.ItemIndex Of
      0 : // interno
         Begin
            xsSQL := 'SELECT A.USERID, B.USERNOM '
               + '     FROM GES_NIV_USU_OTO A, TGE006 B '
               + '    WHERE A.USERID = B.USERID '
               + '      AND A.USERNIV = ''N1'' '
               + '      AND NVL(REGACT,''N'')=''S'' '
               + '    ORDER BY USERID ';
            //xsTGestor := '''01''';
            //xsTGestorDesc := 'INTERNO';
            //xsTGestorDescFem := 'INTERNA';
         End;
      1 : // externo
         Begin
            xsSQL := 'SELECT IDENTEXT USERID,DESENTEXT USERNOM '
               + '     FROM GES_TIP_USU_EXT '
               + '    WHERE REGACT = ''S'' '
               + '    ORDER BY USERID ';
            //xsTGestor := '''02''';
            //xsTGestorDesc := 'EXTERNO';
            //xsTGestorDescFem := 'EXTERNA';
         End;
   End;
   DM1.cdsQry1.Close;
   DM1.cdsQry1.DataRequest(xsSQL);
   DM1.cdsQry1.Open;
   cbGestor.LookupTable := DM1.cdsQry1;
   cbGestor.LookupField := 'USERID';
   *)
End;

(******************************************************************************)

Procedure TfRepConsolidadoAsignacion.rgContactadoDomUbiClick(Sender : TObject);
Begin
   fn_limpiar_pantalla();
End;

(******************************************************************************)

Procedure TfRepConsolidadoAsignacion.rgContactadoTelUbiClick(Sender : TObject);
Begin
   fn_limpiar_pantalla();
End;
(******************************************************************************)

Procedure TfRepConsolidadoAsignacion.cboPeriodoGestionChange(
   Sender : TObject);
Var
   xsSQL : String;
Begin
   fn_limpiar_pantalla();
   dtFFinPeriodo.MaxDate := StrToDate('01/01/2100');
   dtFFinPeriodo.MinDate := StrToDate('01/01/2000');
   dtFFinPeriodo.Text := '';

   dtFFinPago.MaxDate := StrToDate('01/01/2100');
   dtFFinPago.MinDate := StrToDate('01/01/2000');
   dtFFinPago.Text := '';

   xsSQL := 'SELECT COUNT(PERIODO) CANT '
      + '      FROM GES_COB_CFC000_CAB '
      + '     WHERE PERIODO = ' + QuotedStr(cboPeriodoGestion.Text);
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xsSQL);
   DM1.cdsQry.Open;

   If DM1.cdsQry.fieldbyname('CANT').AsInteger = 1 Then
   Begin
      xsSQL := 'SELECT ADD_MONTHS(TO_DATE(' + QuotedStr(cboPeriodoGestion.Text) + ', ''YYYYMM''), 1) PRIMERDIAPERIODO '
         + '           ,LAST_DAY(ADD_MONTHS(TO_DATE(' + QuotedStr(cboPeriodoGestion.Text) + ', ''YYYYMM''), 1)) ULTIMODIAPERIODO '
         + '           ,LAST_DAY(ADD_MONTHS(TO_DATE(' + QuotedStr(cboPeriodoGestion.Text) + ', ''YYYYMM''), 1)) + 7 ULTIMODIAPAGO '
         + '           ,F_MES(TO_CHAR(ADD_MONTHS(TO_DATE(' + QuotedStr(cboPeriodoGestion.Text) + ', ''YYYYMM''), 1),''MM'')) MESCARTERA '
         + '      FROM DUAL ';
      Try
         DM1.cdsQry.Close;
         DM1.cdsQry.DataRequest(xsSQL);
         DM1.cdsQry.Open;
      Except
         MessageDlg('El periodo de Gestion no es Valido', mtInformation, [mbOk], 0);
         Exit;
      End;
      dtFFinPeriodo.MaxDate := DM1.cdsQry.fieldbyname('ULTIMODIAPERIODO').Value;
      dtFFinPeriodo.MinDate := DM1.cdsQry.fieldbyname('PRIMERDIAPERIODO').Value;
      dtFFinPeriodo.Date := dtFFinPeriodo.MaxDate;

      dtFFinPago.MaxDate := DM1.cdsQry.fieldbyname('ULTIMODIAPAGO').Value;
      dtFFinPago.MinDate := DM1.cdsQry.fieldbyname('PRIMERDIAPERIODO').Value;
      dtFFinPago.Date := dtFFinPago.MaxDate;

      // INICIO HPC_201209_GESCOB(F1)
      fn_cargar_gestores();
      // FIN HPC_201209_GESCOB(F1)

      lblDescripcionCartera.Caption := 'MES DE GESTIÓN : ' + DM1.cdsQry.fieldbyname('MESCARTERA').Value;
   End;
End;
(******************************************************************************)

Procedure TfRepConsolidadoAsignacion.dtFFinPeriodoChange(Sender : TObject);
Begin
   fn_limpiar_pantalla();
End;
(******************************************************************************)

Procedure TfRepConsolidadoAsignacion.dtFFinPagoChange(Sender : TObject);
Begin
   fn_limpiar_pantalla();
End;
(******************************************************************************)

Procedure TfRepConsolidadoAsignacion.rgGestoresSeleccionClick(
   Sender : TObject);
Begin
   cbGestor.Enabled := (rgGestoresSeleccion.ItemIndex = 1);
   fn_limpiar_pantalla();
End;
(******************************************************************************)

Procedure TfRepConsolidadoAsignacion.cbGestorChange(Sender : TObject);
Begin
   fn_limpiar_pantalla();
   If DM1.cdsQry1.Locate('USERID', VarArrayof([cbGestor.Text]), []) Then
   Begin
      EdtGestor.Text := DM1.cdsQry1.fieldbyname('USERNOM').AsString;
   End
   Else
   Begin
      If Length(cbGestor.Text) <> 1 Then
      Begin
         Beep;
         EdtGestor.Text := '';
      End;
   End;
End;

(******************************************************************************)

Procedure TfRepConsolidadoAsignacion.btnFiltrarGestorClick(Sender : TObject);

   Function fn_is_existen_datos_gestor() : boolean;
   Var
      xsSQL : String;
   Begin
      If Not fn_validacion_general() Then Exit;

      If (cbGestor.Enabled And (Trim(cbGestor.Text) = '')) Then
      Begin
         showmessage('Seleccione un Gestor');
         result := false;
         exit;
      End;

      Screen.Cursor := crHourGlass;
      fn_get_sql_filtro_general();

      Case rgGestoresSeleccion.itemindex Of
         0 :
            Begin
               xsWhereUsuario := ' 1 = 1 '; // todos
               xsSQLFromUsuario := 'UNIVERSO_USUARIO.USUARIO'
            End;
         1 :
            Begin
               xsWhereUsuario := ' USUARIO = ' + QuotedStr(cbGestor.Text); // individual
               xsSQLFromUsuario := 'UNIVERSO_USUARIO.USUARIO'
            End;
         2 :
            Begin
               xsWhereUsuario := ' 1 = 1 '; // todos
               xsSQLFromUsuario := '''CONSOLIDADO DE GESTORES''';
            End;

      End;

      xsSQL := 'SELECT USUARIO GESTOR, USUARIO GESTOR_DESC, ORDEN_UBICABILIDAD, UBICABILIDAD, SUB_TOT_DESC, '
         + '       ROUND((MAX(CANT_TIPO_GESTION) / MAX(CASE WHEN CANT_USU > 0 THEN CANT_USU ELSE 1 END)) * 100, 5) CANT_PORCENTAJE, '
         + '       REFERENCIA GESTION_DESC, IDGESTIONDET, '
         + '       MAX(CANT_TIPO_GESTION) CANT_GRUPO, SUM(NVL(BAN_MONT, 0)) BAN_MONT, '
         + '       SUM(NVL(BAN_CANT, 0)) BAN_CANT, SUM(NVL(REF_MONT, 0)) REF_MONT, '
         + '       SUM(NVL(REF_CANT, 0)) REF_CANT, SUM(NVL(EFE_MONT, 0)) EFE_MONT, '
         + '       SUM(NVL(EFE_CANT, 0)) EFE_CANT, SUM(NVL(ABO_MONT, 0)) ABO_MONT, '
         + '       SUM(NVL(ABO_CANT, 0)) ABO_CANT, SUM(NVL(LIQ_MONT, 0)) LIQ_MONT, '
         + '       SUM(NVL(LIQ_CANT, 0)) LIQ_CANT, '
         + '       ROW_NUMBER() OVER(ORDER BY USUARIO, ORDEN_UBICABILIDAD, IDGESTIONDET) ORDEN '
         + '  FROM (SELECT ' + xsSQLFromUsuario + ' USUARIO, UNIVERSO_PAGO.TIP_GEST_DES, '
         + '                UNIVERSO_USUARIO.UBICABILIDAD, UNIVERSO_USUARIO.ORDEN_UBICABILIDAD, '
         + '                UNIVERSO_USUARIO.SUB_TOT_DESC, UNIVERSO_PAGO.IDGESTIONDET, '
         + '                UNIVERSO_PAGO.REFERENCIA, UNIVERSO_PAGO.FECHA_ULT_GES, '
         + '                UNIVERSO_PAGO.ASOID, UNIVERSO_PAGO.BAN_MONT, '
         + '                UNIVERSO_PAGO.BAN_CANT, UNIVERSO_PAGO.REF_MONT, '
         + '                UNIVERSO_PAGO.REF_CANT, UNIVERSO_PAGO.EFE_MONT, '
         + '                UNIVERSO_PAGO.EFE_CANT, UNIVERSO_PAGO.ABO_MONT, '
         + '                UNIVERSO_PAGO.ABO_CANT, UNIVERSO_PAGO.LIQ_MONT, '
         + '                UNIVERSO_PAGO.LIQ_CANT, '
         + '                NVL(COUNT(UNIVERSO_PAGO.ASOID) OVER(PARTITION BY ' + xsSQLFromUsuario + ', UNIVERSO_PAGO.UBICABILIDAD, UNIVERSO_PAGO.IDGESTIONDET), 0) CANT_TIPO_GESTION, '
         + '                NVL(COUNT(UNIVERSO_PAGO.ASOID) OVER(PARTITION BY ' + xsSQLFromUsuario + '), 0) CANT_USU '
         + '           FROM (SELECT USUARIO, GES_COB_TIPO_UBICABILIDAD.UBICABILIDAD, '
         + '                         GES_COB_TIPO_UBICABILIDAD.ORDEN_UBICABILIDAD, '
         + '                         GES_COB_TIPO_UBICABILIDAD.SUB_TOT_DESC '
         + '                    FROM (SELECT DISTINCT USUARIO '
         + '                             FROM (SELECT USUARIO '
         + '                                      FROM GES_COB_DOM '
         + '                                     WHERE PERIODO = ' + QuotedStr(cboPeriodoGestion.Text)
         + '                                       AND TIPGES = ' + QuotedStr(xsSQLTipGestor)
         + '                                    UNION '
         + '                                    SELECT USUARIO '
         + '                                      FROM GES_COB_DOM_HIS '
         + '                                     WHERE PERIODO = ' + QuotedStr(cboPeriodoGestion.Text)
         + '                                       AND TIPGES = ' + QuotedStr(xsSQLTipGestor)
// Inicio: SPP_201305_GESCOB F2 nuevo campo en la BD
      + '                                          AND ASIGNADO = ''S'' '
// Fin: SPP_201305_GESCOB
         + '                                    UNION '
         + '                                    SELECT USUARIO '
         + '                                      FROM GES_COB_IND '
         + '                                     WHERE PERIODO = ' + QuotedStr(cboPeriodoGestion.Text)
         + '                                       AND TIPGES = ' + QuotedStr(xsSQLTipGestor)
         + '                                    UNION '
         + '                                    SELECT USUARIO '
         + '                                      FROM GES_COB_IND_HIS '
         + '                                     WHERE PERIODO = ' + QuotedStr(cboPeriodoGestion.Text)
         + '                                       AND TIPGES = ' + QuotedStr(xsSQLTipGestor)
// Inicio: SPP_201305_GESCOB F2 nuevo campo en la BD
      + '                                          AND ASIGNADO = ''S'' '
// Fin: SPP_201305_GESCOB
         + '                                    ) '
         + '                               WHERE ' + xsWhereUsuario
         + '                               ), '
         + '                         GES_COB_TIPO_UBICABILIDAD) UNIVERSO_USUARIO, '
         + '                (SELECT UNIVERSO.TIP_GEST_DES, UNIVERSO.UBICABILIDAD, '
         + '                         UNIVERSO.IDGESTIONDET, UNIVERSO.REFERENCIA, '
         + '                         UNIVERSO.USUARIO, UNIVERSO.FECHA_ULT_GES, UNIVERSO.ASOID, '
         + '                         SUM(CASE WHEN PAGO.TIPPAG = ''BAN'' THEN NVL(PAGO.MONCOBTOT,0) ELSE 0 END) BAN_MONT, '
         + '                         CASE WHEN SUM(CASE WHEN PAGO.TIPPAG = ''BAN'' THEN 1 ELSE 0 END) >= 1 THEN 1 ELSE 0 END BAN_CANT, '
         + '                         SUM(CASE WHEN PAGO.TIPPAG = ''REF'' THEN NVL(PAGO.MONCOBTOT,0) ELSE 0 END) REF_MONT, '
         + '                         CASE WHEN SUM(CASE WHEN PAGO.TIPPAG = ''REF'' THEN 1 ELSE 0 END) >= 1 THEN 1 ELSE 0 END REF_CANT, '
         + '                         SUM(CASE WHEN PAGO.TIPPAG = ''EFE'' THEN NVL(PAGO.MONCOBTOT,0) ELSE 0 END) EFE_MONT, '
         + '                         CASE WHEN SUM(CASE WHEN PAGO.TIPPAG = ''EFE'' THEN 1 ELSE 0 END) >= 1 THEN 1 ELSE 0 END EFE_CANT, '
         + '                         SUM(CASE WHEN PAGO.TIPPAG = ''ABO'' THEN NVL(PAGO.MONCOBTOT,0) ELSE 0 END) ABO_MONT, '
         + '                         CASE WHEN SUM(CASE WHEN PAGO.TIPPAG = ''ABO'' THEN 1 ELSE 0 END) >= 1 THEN 1 ELSE 0 END ABO_CANT, '
         + '                         SUM(CASE WHEN PAGO.TIPPAG = ''LIQ'' THEN NVL(PAGO.MONCOBTOT,0) ELSE 0 END) LIQ_MONT, '
         + '                         CASE WHEN SUM(CASE WHEN PAGO.TIPPAG = ''LIQ'' THEN 1 ELSE 0 END) >= 1 THEN 1 ELSE 0 END LIQ_CANT '
         + '                    FROM (SELECT ASIGNADO.TIP_GEST_DES, '
         + '                                  CASE WHEN REFERENCIA.CONTACTADO = ''S'' THEN ''CONTACTADO'' '
         + '                                       WHEN REFERENCIA.CONTACTADO = ''N'' THEN ''NO CONTACTADO'' '
         + '                                       ELSE ''PENDIENTE'' '
         + '                                   END UBICABILIDAD, GESTION.IDGESTIONDET, '
         + '                                  REFERENCIA.DESCRIPCION REFERENCIA, ASIGNADO.USUARIO, '
         + '                                  GESTION.FECHA_ULT_GES, ASIGNADO.ASOID '
         + '                             FROM (SELECT ASOID, TIP_GEST_DES, USUARIO, '
         + '                                           DENSE_RANK() OVER(PARTITION BY TIP_GEST_DES, ASOID ORDER BY TIP_GEST_DES, ASOID, FECASIG DESC) DRNK '
         + '                                      FROM (SELECT ASOID, ''DOMICILIARIA'' TIP_GEST_DES, FECASIG, USUARIO '
         + '                                               FROM GES_COB_DOM '
         + '                                              WHERE PERIODO = ' + QuotedStr(cboPeriodoGestion.Text)
         + '                                                AND TIPGES = ' + QuotedStr(xsSQLTipGestor)
         + '                                             UNION '
         + '                                             SELECT ASOID, ''DOMICILIARIA'' TIP_GEST_DES, FECASIG, USUARIO '
         + '                                               FROM GES_COB_DOM_HIS '
         + '                                              WHERE PERIODO = ' + QuotedStr(cboPeriodoGestion.Text)
         + '                                                AND TIPGES = ' + QuotedStr(xsSQLTipGestor)
// Inicio: SPP_201305_GESCOB F2 nuevo campo en la BD
         + '                                                AND ASIGNADO = ''S'' '
// Fin: SPP_201305_GESCOB
         + '                                             UNION '
         + '                                             SELECT ASOID, ''TELEFONICA'' TIP_GEST_DES, FECASIG, USUARIO '
         + '                                               FROM GES_COB_IND '
         + '                                              WHERE PERIODO = ' + QuotedStr(cboPeriodoGestion.Text)
         + '                                                AND TIPGES = ' + QuotedStr(xsSQLTipGestor)
         + '                                             UNION '
         + '                                             SELECT ASOID, ''TELEFONICA'' TIP_GEST_DES, FECASIG, USUARIO '
         + '                                               FROM GES_COB_IND_HIS '
         + '                                              WHERE PERIODO = ' + QuotedStr(cboPeriodoGestion.Text)
         + '                                                AND TIPGES = ' + QuotedStr(xsSQLTipGestor)
// Inicio: SPP_201305_GESCOB F2 nuevo campo en la BD
         + '                                                AND ASIGNADO = ''S'' '
// Fin: SPP_201305_GESCOB
         + '                                             )) ASIGNADO, '
         + '                                  (SELECT ASOID, FECHA_ULT_GES, IDGESTIONDET '
         + '                                      FROM (SELECT ASOID, FECHA FECHA_ULT_GES, IDGESTIONDET, '
         + '                                                   DENSE_RANK() OVER(PARTITION BY ASOID ORDER BY ASOID, FECHA DESC, HORA DESC) DRNK '
         + '                                               FROM GES_COB_SEG, (' + xsSQLTablaUsuarios + ') USR '
         + '                                              WHERE PERIODO = ' + QuotedStr(cboPeriodoGestion.Text)
         + '                                                AND FECHA >= ' + QuotedStr(DateToStr(dtFFinPeriodo.MinDate))
         + '                                                AND FECHA <= ' + QuotedStr(DateToStr(dtFFinPeriodo.Date))
         + '                                                AND USUARIO = USERID '
         + '                                                AND SUBSTR(IDGESTIONDET,1,1) IN (' + xsSQLGesDom + ',' + xsSQLGesTel + ')'
         + '                                             ) '
         + '                                     WHERE DRNK = 1) GESTION, '
         + '                                  (SELECT IDGTNDET, DESCRIPCION, CONTACTADO FROM GES_REF_SEG_DET) REFERENCIA '
         + '                            WHERE ASIGNADO.DRNK = 1 '
         + '                              AND ASIGNADO.ASOID = GESTION.ASOID(+) '
         + '                              AND GESTION.IDGESTIONDET = REFERENCIA.IDGTNDET(+)) UNIVERSO, '
         + '                         (SELECT ASOID, FECHA, TIPPAG, MONCOBTOT FROM GES_COB_PAG_CON) PAGO '
         + '                   WHERE UNIVERSO.ASOID = PAGO.ASOID(+) '
         + '                     AND PAGO.FECHA(+) >= UNIVERSO.FECHA_ULT_GES '
         + '                     AND PAGO.FECHA(+) <= ' + QuotedStr(DateToStr(dtFFinPago.Date))
         + '                     AND ((' + xsSQLUbiDom + ') OR(' + xsSQLUbiTel + ')) '
         + '                   GROUP BY UNIVERSO.TIP_GEST_DES, UNIVERSO.UBICABILIDAD, '
         + '                            UNIVERSO.IDGESTIONDET, UNIVERSO.REFERENCIA, '
         + '                            UNIVERSO.USUARIO, UNIVERSO.FECHA_ULT_GES, UNIVERSO.ASOID) UNIVERSO_PAGO '
         + '          WHERE UNIVERSO_USUARIO.USUARIO = UNIVERSO_PAGO.USUARIO(+) '
         + '            AND UNIVERSO_USUARIO.UBICABILIDAD = UNIVERSO_PAGO.UBICABILIDAD(+)) '
         + ' GROUP BY USUARIO, UBICABILIDAD, ORDEN_UBICABILIDAD, SUB_TOT_DESC, IDGESTIONDET, '
         + '          REFERENCIA '
         + ' ORDER BY USUARIO, UBICABILIDAD, IDGESTIONDET ';

      DM1.cdsQry2.Close;
      DM1.cdsQry2.DataRequest(xsSQL);
      DM1.cdsQry2.Open;
      DM1.cdsQry2.IndexFieldNames := 'ORDEN';

      Screen.Cursor := crDefault;
      If DM1.cdsQry2.RecordCount <= 0 Then
      Begin
         showmessage('No existen datos para mostrar');
         result := false;
      End
      Else
         result := true;

   End;

Begin
   fn_limpiar_pantalla();
   If fn_is_existen_datos_gestor() Then
   Begin
      fn_cargar_formato_grilla_gestor();
      btnExcelGestor.Enabled := true;
      btnImprimirGestor.Enabled := true;
   End;
End;

(******************************************************************************)

Procedure TfRepConsolidadoAsignacion.btnFiltrarUbigeoClick(
   Sender : TObject);
Var
   xsSQL : String;
   xsZipId : String;

   xsUbigeoSeleccionado : String;
   xsSelectUniversoUbigeo : String;

   Procedure fn_crear_sql_dist();
   Begin
      xsSelectUniversoUbigeo :=
         '   SELECT DPTODES DEPARTAMENTO, CIUDDES PROVINCIA, ZIPDES DISTRITO, ZIPID UBIGEO, '
         + '        GES_COB_TIPO_UBICABILIDAD.UBICABILIDAD, '
         + '        GES_COB_TIPO_UBICABILIDAD.ORDEN_UBICABILIDAD, '
         + '        GES_COB_TIPO_UBICABILIDAD.SUB_TOT_DESC '
         + '   FROM (SELECT DPTO.DPTODES, PROV.CIUDDES, DIST.ZIPDES, DPTO.DPTOID ,PROV.CIUDID, DIST.ZIPID '
         + '           FROM APO158 DPTO, APO123 PROV, APO122 DIST '
         + '          WHERE DPTO.DPTOID = PROV.DPTOID '
         + '            AND PROV.DPTOID = DIST.DPTOID '
         + '            AND PROV.CIUDID = DIST.CIUDID '
         + '        ) UBI, GES_COB_TIPO_UBICABILIDAD '
         + '  WHERE DPTOID = ' + QuotedStr(cbDpto.Text)
         + '    AND CIUDID = ' + QuotedStr(cbProv.Text);
      If edDist.Text <> '' Then
         xsSelectUniversoUbigeo := xsSelectUniversoUbigeo + ' AND ZIPID = ' + QuotedStr(cbDist.Text);
      xsZipId := ' ZIPID ';
      xsUbigeoSeleccionado := ' DEPARTAMENTO, PROVINCIA, DISTRITO ';
   End;

   Procedure fn_crear_sql_prov();
   Begin
      xsSelectUniversoUbigeo :=
         '   SELECT DPTODES DEPARTAMENTO, CIUDDES PROVINCIA, CIUDID UBIGEO, '
         + '       GES_COB_TIPO_UBICABILIDAD.UBICABILIDAD, '
         + '       GES_COB_TIPO_UBICABILIDAD.ORDEN_UBICABILIDAD, '
         + '       GES_COB_TIPO_UBICABILIDAD.SUB_TOT_DESC '
         + '  FROM (SELECT DPTO.DPTODES, PROV.CIUDDES, DPTO.DPTOID ,PROV.CIUDID '
         + '          FROM APO158 DPTO, APO123 PROV '
         + '         WHERE DPTO.DPTOID = PROV.DPTOID '
         + '       ) UBI, GES_COB_TIPO_UBICABILIDAD '
         + ' WHERE DPTOID = ' + QuotedStr(cbDpto.Text);
      If edProv.Text <> '' Then
         xsSelectUniversoUbigeo := xsSelectUniversoUbigeo + ' AND CIUDID = ' + QuotedStr(cbProv.Text);
      xsZipId := ' SUBSTR(ZIPID,1,4) ';
      xsUbigeoSeleccionado := ' DEPARTAMENTO, PROVINCIA ';
   End;

   Procedure fn_crear_sql_dpto();
   Begin
      xsSelectUniversoUbigeo :=
         '   SELECT UBI.DPTODES DEPARTAMENTO, UBI.DPTOID UBIGEO, '
         + '       GES_COB_TIPO_UBICABILIDAD.UBICABILIDAD, '
         + '       GES_COB_TIPO_UBICABILIDAD.ORDEN_UBICABILIDAD, '
         + '       GES_COB_TIPO_UBICABILIDAD.SUB_TOT_DESC '
         + '  FROM APO158 UBI, GES_COB_TIPO_UBICABILIDAD ';
      If edDpto.Text <> '' Then
         xsSelectUniversoUbigeo := xsSelectUniversoUbigeo + ' WHERE UBI.DPTOID = ' + QuotedStr(cbDpto.Text);
      xsZipId := ' SUBSTR(ZIPID,1,2) ';
      xsUbigeoSeleccionado := ' DEPARTAMENTO ';
   End;

   Procedure fn_crear_sql_nacional();
   Begin
      xsSelectUniversoUbigeo :=
         '   SELECT ''A NIVEL NACIONAL'' DEPARTAMENTO, ''99'' UBIGEO, '
         + '       GES_COB_TIPO_UBICABILIDAD.UBICABILIDAD, '
         + '       GES_COB_TIPO_UBICABILIDAD.ORDEN_UBICABILIDAD, '
         + '       GES_COB_TIPO_UBICABILIDAD.SUB_TOT_DESC '
         + '  FROM GES_COB_TIPO_UBICABILIDAD ';
      xsZipId := ' ''99'' ';
      xsUbigeoSeleccionado := ' DEPARTAMENTO ';
   End;

   Function fn_is_existen_datos_ubigeo() : boolean;
   Begin
      If Not fn_validacion_general() Then Exit;

      Screen.Cursor := crHourGlass;
      fn_get_sql_filtro_general();

      If edDist.Text <> '' Then
      Begin
         fn_crear_sql_dist();
      End
      Else
         If edProv.Text <> '' Then
         Begin
            If chbDetalleUbigeo.Checked Then
               fn_crear_sql_dist()
            Else
               fn_crear_sql_prov();
         End
         Else
            If edDpto.Text <> '' Then
            Begin
               If chbDetalleUbigeo.Checked Then
                  fn_crear_sql_prov()
               Else
                  fn_crear_sql_dpto();
            End
            Else
            Begin
               If chbDetalleUbigeo.Checked Then
                  fn_crear_sql_dpto()
               Else
                  fn_crear_sql_nacional();
            End;

      xsSQL := 'SELECT ORDEN_UBICABILIDAD, ' + xsUbigeoSeleccionado + ', UBIGEO, UBICABILIDAD, SUB_TOT_DESC, '
         + '       ROUND((MAX(CANT_TIPO_GESTION) / MAX(CASE WHEN CANT_UBI > 0 THEN CANT_UBI ELSE 1 END)) * 100, 5) CANT_PORCENTAJE, '
         + '       REFERENCIA GESTION_DESC, IDGESTIONDET, '
         + '       MAX(CANT_TIPO_GESTION) CANT_GRUPO, SUM(NVL(BAN_MONT, 0)) BAN_MONT, '
         + '       SUM(NVL(BAN_CANT, 0)) BAN_CANT, SUM(NVL(REF_MONT, 0)) REF_MONT, '
         + '       SUM(NVL(REF_CANT, 0)) REF_CANT, SUM(NVL(EFE_MONT, 0)) EFE_MONT, '
         + '       SUM(NVL(EFE_CANT, 0)) EFE_CANT, SUM(NVL(ABO_MONT, 0)) ABO_MONT, '
         + '       SUM(NVL(ABO_CANT, 0)) ABO_CANT, SUM(NVL(LIQ_MONT, 0)) LIQ_MONT, '
         + '       SUM(NVL(LIQ_CANT, 0)) LIQ_CANT, '
         + '       ROW_NUMBER() OVER(ORDER BY ' + xsUbigeoSeleccionado + ', ORDEN_UBICABILIDAD) ORDEN '
         + '  FROM (SELECT  ' + xsUbigeoSeleccionado + ', UNIVERSO_UBIGEO.UBIGEO, '
         + '                UNIVERSO_PAGO.TIP_GEST_DES, UNIVERSO_UBIGEO.UBICABILIDAD, '
         + '                UNIVERSO_UBIGEO.ORDEN_UBICABILIDAD, '
         + '                UNIVERSO_UBIGEO.SUB_TOT_DESC, UNIVERSO_PAGO.IDGESTIONDET, '
         + '                UNIVERSO_PAGO.REFERENCIA, UNIVERSO_PAGO.FECHA_ULT_GES, '
         + '                UNIVERSO_PAGO.ASOID, UNIVERSO_PAGO.BAN_MONT, '
         + '                UNIVERSO_PAGO.BAN_CANT, UNIVERSO_PAGO.REF_MONT, '
         + '                UNIVERSO_PAGO.REF_CANT, UNIVERSO_PAGO.EFE_MONT, '
         + '                UNIVERSO_PAGO.EFE_CANT, UNIVERSO_PAGO.ABO_MONT, '
         + '                UNIVERSO_PAGO.ABO_CANT, UNIVERSO_PAGO.LIQ_MONT, '
         + '                UNIVERSO_PAGO.LIQ_CANT, '
         + '                NVL(COUNT(UNIVERSO_PAGO.ASOID) OVER(PARTITION BY UNIVERSO_UBIGEO.UBIGEO, UNIVERSO_PAGO.UBICABILIDAD, UNIVERSO_PAGO.IDGESTIONDET), 0) CANT_TIPO_GESTION, '
         + '                NVL(COUNT(UNIVERSO_PAGO.ASOID) OVER(PARTITION BY UNIVERSO_UBIGEO.UBIGEO), 0) CANT_UBI '
         + '           FROM ( '
         + xsSelectUniversoUbigeo
         + '                 ) UNIVERSO_UBIGEO, '
         + '                (SELECT UNIVERSO.TIP_GEST_DES, UNIVERSO.UBICABILIDAD, '
         + '                         UNIVERSO.IDGESTIONDET, UNIVERSO.REFERENCIA, UNIVERSO.UBIGEO, '
         + '                         UNIVERSO.FECHA_ULT_GES, UNIVERSO.ASOID, '
         + '                         SUM(CASE WHEN PAGO.TIPPAG = ''BAN'' THEN NVL(PAGO.MONCOBTOT,0) ELSE 0 END) BAN_MONT, '
         + '                         CASE WHEN SUM(CASE WHEN PAGO.TIPPAG = ''BAN'' THEN 1 ELSE 0 END) >= 1 THEN 1 ELSE 0 END BAN_CANT, '
         + '                         SUM(CASE WHEN PAGO.TIPPAG = ''REF'' THEN NVL(PAGO.MONCOBTOT,0) ELSE 0 END) REF_MONT, '
         + '                         CASE WHEN SUM(CASE WHEN PAGO.TIPPAG = ''REF'' THEN 1 ELSE 0 END) >= 1 THEN 1 ELSE 0 END REF_CANT, '
         + '                         SUM(CASE WHEN PAGO.TIPPAG = ''EFE'' THEN NVL(PAGO.MONCOBTOT,0) ELSE 0 END) EFE_MONT, '
         + '                         CASE WHEN SUM(CASE WHEN PAGO.TIPPAG = ''EFE'' THEN 1 ELSE 0 END) >= 1 THEN 1 ELSE 0 END EFE_CANT, '
         + '                         SUM(CASE WHEN PAGO.TIPPAG = ''ABO'' THEN NVL(PAGO.MONCOBTOT,0) ELSE 0 END) ABO_MONT, '
         + '                         CASE WHEN SUM(CASE WHEN PAGO.TIPPAG = ''ABO'' THEN 1 ELSE 0 END) >= 1 THEN 1 ELSE 0 END ABO_CANT, '
         + '                         SUM(CASE WHEN PAGO.TIPPAG = ''LIQ'' THEN NVL(PAGO.MONCOBTOT,0) ELSE 0 END) LIQ_MONT, '
         + '                         CASE WHEN SUM(CASE WHEN PAGO.TIPPAG = ''LIQ'' THEN 1 ELSE 0 END) >= 1 THEN 1 ELSE 0 END LIQ_CANT '
         + '                    FROM (SELECT ASIGNADO.TIP_GEST_DES, '
         + '                                  CASE WHEN REFERENCIA.CONTACTADO = ''S'' THEN ''CONTACTADO'' '
         + '                                       WHEN REFERENCIA.CONTACTADO = ''N'' THEN ''NO CONTACTADO'' '
         + '                                       ELSE ''PENDIENTE'' '
         + '                                   END UBICABILIDAD, GESTION.IDGESTIONDET, '
         + '                                  REFERENCIA.DESCRIPCION REFERENCIA, ASIGNADO.UBIGEO, '
         + '                                  GESTION.FECHA_ULT_GES, ASIGNADO.ASOID '
         + '                             FROM (SELECT ASOID, TIP_GEST_DES, UBIGEO, '
         + '                                           DENSE_RANK() OVER(PARTITION BY TIP_GEST_DES, ASOID ORDER BY TIP_GEST_DES, ASOID, FECASIG DESC) DRNK '
         + '                                      FROM (SELECT ASOID, ''DOMICILIARIA'' TIP_GEST_DES, FECASIG, ' + xsZipId + ' UBIGEO '
         + '                                               FROM GES_COB_DOM '
         + '                                              WHERE PERIODO = ' + QuotedStr(cboPeriodoGestion.Text)
         + '                                                AND TIPGES = ' + QuotedStr(xsSQLTipGestor)
         + '                                             UNION '
         + '                                             SELECT ASOID, ''DOMICILIARIA'' TIP_GEST_DES, FECASIG, ' + xsZipId + ' UBIGEO '
         + '                                               FROM GES_COB_DOM_HIS '
         + '                                              WHERE PERIODO = ' + QuotedStr(cboPeriodoGestion.Text)
         + '                                                AND TIPGES = ' + QuotedStr(xsSQLTipGestor)
// Inicio: SPP_201305_GESCOB F2 nuevo campo en la BD
         + '                                                AND ASIGNADO = ''S'' '
// Fin: SPP_201305_GESCOB
         + '                                             UNION '
         + '                                             SELECT ASOID, ''TELEFONICA'' TIP_GEST_DES, FECASIG, ' + xsZipId + ' UBIGEO '
         + '                                               FROM GES_COB_IND '
         + '                                              WHERE PERIODO = ' + QuotedStr(cboPeriodoGestion.Text)
         + '                                                AND TIPGES = ' + QuotedStr(xsSQLTipGestor)
         + '                                             UNION '
         + '                                             SELECT ASOID, ''TELEFONICA'' TIP_GEST_DES, FECASIG, ' + xsZipId + ' UBIGEO '
         + '                                               FROM GES_COB_IND_HIS '
         + '                                              WHERE PERIODO = ' + QuotedStr(cboPeriodoGestion.Text)
         + '                                                AND TIPGES = ' + QuotedStr(xsSQLTipGestor)
// Inicio: SPP_201305_GESCOB F2 nuevo campo en la BD
         + '                                                AND ASIGNADO = ''S'' '
// Fin: SPP_201305_GESCOB
         + '                                             )) ASIGNADO, '
         + '                                  (SELECT ASOID, FECHA_ULT_GES, IDGESTIONDET '
         + '                                      FROM (SELECT ASOID, FECHA FECHA_ULT_GES, IDGESTIONDET, '
         + '                                                    DENSE_RANK() OVER(PARTITION BY ASOID ORDER BY ASOID, FECHA DESC, HORA DESC) DRNK '
         + '                                               FROM GES_COB_SEG, (' + xsSQLTablaUsuarios + ') USR '
         + '                                              WHERE PERIODO = ' + QuotedStr(cboPeriodoGestion.Text)
         + '                                                AND FECHA >= ' + QuotedStr(DateToStr(dtFFinPeriodo.MinDate))
         + '                                                AND FECHA <= ' + QuotedStr(DateToStr(dtFFinPeriodo.Date))
         + '                                                AND USUARIO = USERID '
         + '                                                AND SUBSTR(IDGESTIONDET,1,1) IN (' + xsSQLGesDom + ',' + xsSQLGesTel + ')'
         + '                                             ) '
         + '                                     WHERE DRNK = 1) GESTION, '
         + '                                  (SELECT IDGTNDET, DESCRIPCION, CONTACTADO '
         + '                                      FROM GES_REF_SEG_DET) REFERENCIA '
         + '                            WHERE ASIGNADO.DRNK = 1 '
         + '                              AND ASIGNADO.ASOID = GESTION.ASOID(+) '
         + '                              AND GESTION.IDGESTIONDET = REFERENCIA.IDGTNDET(+)) UNIVERSO, '
         + '                         (SELECT ASOID, FECHA, TIPPAG, MONCOBTOT '
         + '                             FROM GES_COB_PAG_CON) PAGO '
         + '                   WHERE UNIVERSO.ASOID = PAGO.ASOID(+) '
         + '                     AND PAGO.FECHA(+) >= UNIVERSO.FECHA_ULT_GES '
         + '                     AND PAGO.FECHA(+) <= ' + QuotedStr(DateToStr(dtFFinPago.Date))
         + '                     AND ((' + xsSQLUbiDom + ') OR(' + xsSQLUbiTel + ')) '
         + '                   GROUP BY UNIVERSO.TIP_GEST_DES, UNIVERSO.UBICABILIDAD, '
         + '                            UNIVERSO.IDGESTIONDET, UNIVERSO.REFERENCIA, '
         + '                            UNIVERSO.UBIGEO, UNIVERSO.FECHA_ULT_GES, UNIVERSO.ASOID) UNIVERSO_PAGO '
         + '          WHERE UNIVERSO_UBIGEO.UBIGEO = UNIVERSO_PAGO.UBIGEO(+) '
         + '            AND UNIVERSO_UBIGEO.UBICABILIDAD = UNIVERSO_PAGO.UBICABILIDAD(+)) '
         + ' GROUP BY ' + xsUbigeoSeleccionado + ', UBIGEO, UBICABILIDAD, ORDEN_UBICABILIDAD, SUB_TOT_DESC, '
         + '          IDGESTIONDET, REFERENCIA '
         + ' ORDER BY ' + xsUbigeoSeleccionado;

      DM1.cdsQry6.Close;
      DM1.cdsQry6.DataRequest(xsSQL);
      DM1.cdsQry6.Open;

      DM1.cdsQry6.IndexFieldNames := 'ORDEN'; // SE UTILIZA ESTO XQ NO QUIERE ORDENAR EL GRID

      Screen.Cursor := crDefault;

      If DM1.cdsQry6.RecordCount <= 0 Then
      Begin
         showmessage('No existen datos para mostrar');
         result := false;
      End
      Else
         result := true;

   End;
Begin
   fn_limpiar_pantalla();
   If fn_is_existen_datos_ubigeo() Then
   Begin
      fn_cargar_formato_grilla_ubigeo();
      btnExcelUbi.Enabled := true;
      btnImprimirUbi.Enabled := true;
   End;
End;
(******************************************************************************)

Procedure TfRepConsolidadoAsignacion.btnFiltrarCalificacionClick(Sender : TObject);

   Function fn_is_existen_datos_calificacion() : boolean;
   Var
      xsSQL : String;
   Begin
      If Not fn_validacion_general() Then Exit;

      Screen.Cursor := crHourGlass;
      fn_get_sql_filtro_general();

      xsSQL := 'SELECT ORDEN_UBICABILIDAD, '
         + '           CFC_F, CFCDES_F CALIFICACION, UBICABILIDAD, SUB_TOT_DESC, '
         + '           ROUND((MAX(CANT_TIPO_GESTION) / MAX(CASE WHEN CANT_CFC_F > 0 THEN CANT_CFC_F ELSE 1 END)) * 100, 5) CANT_PORCENTAJE, '
         + '           REFERENCIA GESTION_DESC, IDGESTIONDET, MAX(CANT_TIPO_GESTION) CANT_GRUPO, '
         + '           SUM(NVL(BAN_MONT,0)) BAN_MONT, SUM(NVL(BAN_CANT,0)) BAN_CANT, SUM(NVL(REF_MONT,0)) REF_MONT, '
         + '           SUM(NVL(REF_CANT,0)) REF_CANT, SUM(NVL(EFE_MONT,0)) EFE_MONT, SUM(NVL(EFE_CANT,0)) EFE_CANT, '
         + '           SUM(NVL(ABO_MONT,0)) ABO_MONT, SUM(NVL(ABO_CANT,0)) ABO_CANT, SUM(NVL(LIQ_MONT,0)) LIQ_MONT, '
         + '           SUM(NVL(LIQ_CANT,0)) LIQ_CANT, '
         + '           ROW_NUMBER() OVER (ORDER BY CFC_F_ORDEN, ORDEN_UBICABILIDAD) ORDEN '
         + '      FROM (SELECT UNIVERSO_CALIFICACION.CFC_F_ORDEN, UNIVERSO_CALIFICACION.CFC_F, '
         + '                   UNIVERSO_CALIFICACION.CFCDES_F, UNIVERSO_PAGO.TIP_GEST_DES, '
         + '                   UNIVERSO_CALIFICACION.UBICABILIDAD, UNIVERSO_CALIFICACION.ORDEN_UBICABILIDAD, '
         + '                   UNIVERSO_CALIFICACION.SUB_TOT_DESC, UNIVERSO_PAGO.IDGESTIONDET, '
         + '                   UNIVERSO_PAGO.REFERENCIA, UNIVERSO_PAGO.FECHA_ULT_GES, '
         + '                   UNIVERSO_PAGO.ASOID, UNIVERSO_PAGO.BAN_MONT, UNIVERSO_PAGO.BAN_CANT, UNIVERSO_PAGO.REF_MONT, '
         + '                   UNIVERSO_PAGO.REF_CANT, UNIVERSO_PAGO.EFE_MONT, UNIVERSO_PAGO.EFE_CANT, UNIVERSO_PAGO.ABO_MONT, '
         + '                   UNIVERSO_PAGO.ABO_CANT, UNIVERSO_PAGO.LIQ_MONT, UNIVERSO_PAGO.LIQ_CANT, '
         + '                   NVL(COUNT(UNIVERSO_PAGO.ASOID) OVER(PARTITION BY UNIVERSO_CALIFICACION.CFC_F, UNIVERSO_PAGO.UBICABILIDAD, UNIVERSO_PAGO.IDGESTIONDET), 0) CANT_TIPO_GESTION, '
         + '                   NVL(COUNT(UNIVERSO_PAGO.ASOID) OVER(PARTITION BY UNIVERSO_CALIFICACION.CFC_F), 0) CANT_CFC_F '
         + '              FROM (SELECT COB113.PROVISID CFC_F_ORDEN, COB113.RESUMEID CFC_F, '
         + '                           COB113.RESUMEDES CFCDES_F, GES_COB_TIPO_UBICABILIDAD.UBICABILIDAD, '
         + '                           GES_COB_TIPO_UBICABILIDAD.ORDEN_UBICABILIDAD, GES_COB_TIPO_UBICABILIDAD.SUB_TOT_DESC '
         + '                      FROM COB113, GES_COB_TIPO_UBICABILIDAD) UNIVERSO_CALIFICACION, '
         + '                   (SELECT UNIVERSO.TIP_GEST_DES, UNIVERSO.UBICABILIDAD, '
         + '                           UNIVERSO.IDGESTIONDET, UNIVERSO.REFERENCIA, UNIVERSO.CFC_F, '
         + '                           UNIVERSO.FECHA_ULT_GES, UNIVERSO.ASOID, '
         + '                           SUM(CASE WHEN PAGO.TIPPAG = ''BAN'' THEN NVL(PAGO.MONCOBTOT,0) ELSE 0 END) BAN_MONT, '
         + '                           CASE WHEN SUM(CASE WHEN PAGO.TIPPAG = ''BAN'' THEN 1 ELSE 0 END) >= 1 THEN 1 ELSE 0 END BAN_CANT, '
         + '                           SUM(CASE WHEN PAGO.TIPPAG = ''REF'' THEN NVL(PAGO.MONCOBTOT,0) ELSE 0 END) REF_MONT, '
         + '                           CASE WHEN SUM(CASE WHEN PAGO.TIPPAG = ''REF'' THEN 1 ELSE 0 END) >= 1 THEN 1 ELSE 0 END REF_CANT, '
         + '                           SUM(CASE WHEN PAGO.TIPPAG = ''EFE'' THEN NVL(PAGO.MONCOBTOT,0) ELSE 0 END) EFE_MONT, '
         + '                           CASE WHEN SUM(CASE WHEN PAGO.TIPPAG = ''EFE'' THEN 1 ELSE 0 END) >= 1 THEN 1 ELSE 0 END EFE_CANT, '
         + '                           SUM(CASE WHEN PAGO.TIPPAG = ''ABO'' THEN NVL(PAGO.MONCOBTOT,0) ELSE 0 END) ABO_MONT, '
         + '                           CASE WHEN SUM(CASE WHEN PAGO.TIPPAG = ''ABO'' THEN 1 ELSE 0 END) >= 1 THEN 1 ELSE 0 END ABO_CANT, '
         + '                           SUM(CASE WHEN PAGO.TIPPAG = ''LIQ'' THEN NVL(PAGO.MONCOBTOT,0) ELSE 0 END) LIQ_MONT, '
         + '                           CASE WHEN SUM(CASE WHEN PAGO.TIPPAG = ''LIQ'' THEN 1 ELSE 0 END) >= 1 THEN 1 ELSE 0 END LIQ_CANT '
         + '                      FROM (SELECT ASIGNADO.TIP_GEST_DES, '
         + '                                   CASE WHEN REFERENCIA.CONTACTADO = ''S'' THEN ''CONTACTADO'' '
         + '                                        WHEN REFERENCIA.CONTACTADO = ''N'' THEN ''NO CONTACTADO'' '
         + '                                        ELSE ''PENDIENTE'' '
         + '                                    END UBICABILIDAD, GESTION.IDGESTIONDET, '
         + '                                    REFERENCIA.DESCRIPCION REFERENCIA, ASIGNADO.CFC_F, '
         + '                                    GESTION.FECHA_ULT_GES, ASIGNADO.ASOID '
         + '                               FROM (SELECT ASOID, TIP_GEST_DES, CFC_F, '
         + '                                            DENSE_RANK() OVER(PARTITION BY TIP_GEST_DES, ASOID ORDER BY TIP_GEST_DES, ASOID, FECASIG DESC) DRNK '
         + '                                       FROM (SELECT ASOID, ''DOMICILIARIA'' TIP_GEST_DES, FECASIG, CFC_F '
         + '                                               FROM GES_COB_DOM '
         + '                                              WHERE PERIODO = ' + QuotedStr(cboPeriodoGestion.Text)
         + '                                                AND TIPGES = ' + QuotedStr(xsSQLTipGestor)
         + '                                              UNION '
         + '                                             SELECT ASOID, ''DOMICILIARIA'' TIP_GEST_DES, FECASIG, CFC_F '
         + '                                               FROM GES_COB_DOM_HIS '
         + '                                              WHERE PERIODO = ' + QuotedStr(cboPeriodoGestion.Text)
         + '                                                AND TIPGES = ' + QuotedStr(xsSQLTipGestor)
// Inicio: SPP_201305_GESCOB F2 nuevo campo en la BD
         + '                                                AND ASIGNADO = ''S'' '
// Fin: SPP_201305_GESCOB
         + '                                              UNION '
         + '                                             SELECT ASOID, ''TELEFONICA'' TIP_GEST_DES, FECASIG, CFC_F '
         + '                                               FROM GES_COB_IND '
         + '                                              WHERE PERIODO = ' + QuotedStr(cboPeriodoGestion.Text)
         + '                                                AND TIPGES = ' + QuotedStr(xsSQLTipGestor)
         + '                                              UNION '
         + '                                             SELECT ASOID, ''TELEFONICA'' TIP_GEST_DES, FECASIG, CFC_F '
         + '                                               FROM GES_COB_IND_HIS '
         + '                                              WHERE PERIODO = ' + QuotedStr(cboPeriodoGestion.Text)
         + '                                                AND TIPGES = ' + QuotedStr(xsSQLTipGestor)
// Inicio: SPP_201305_GESCOB F2 nuevo campo en la BD
         + '                                                AND ASIGNADO = ''S'' '
// Fin: SPP_201305_GESCOB
         + '                                             )) ASIGNADO, '
         + '                                    (SELECT ASOID, FECHA_ULT_GES, IDGESTIONDET '
         + '                                       FROM (SELECT ASOID, FECHA FECHA_ULT_GES, '
         + '                                                    IDGESTIONDET, '
         + '                                                    DENSE_RANK() OVER(PARTITION BY ASOID ORDER BY ASOID, FECHA DESC, HORA DESC) DRNK '
         + '                                               FROM GES_COB_SEG, (' + xsSQLTablaUsuarios + ') USR '
         + '                                              WHERE PERIODO = ' + QuotedStr(cboPeriodoGestion.Text)
         + '                                                AND FECHA >= ' + QuotedStr(DateToStr(dtFFinPeriodo.MinDate))
         + '                                                AND FECHA <= ' + QuotedStr(DateToStr(dtFFinPeriodo.Date))
         + '                                                AND USUARIO = USERID '
         + '                                                AND SUBSTR(IDGESTIONDET,1,1) IN (' + xsSQLGesDom + ',' + xsSQLGesTel + ')'
         + '                                             ) '
         + '                                      WHERE DRNK = 1) GESTION, '
         + '                                    (SELECT IDGTNDET, DESCRIPCION, CONTACTADO '
         + '                                       FROM GES_REF_SEG_DET) REFERENCIA '
         + '                              WHERE ASIGNADO.DRNK = 1 '
         + '                                AND ASIGNADO.ASOID = GESTION.ASOID(+) '
         + '                                AND GESTION.IDGESTIONDET = REFERENCIA.IDGTNDET(+)) UNIVERSO, '
         + '                            (SELECT ASOID, FECHA, TIPPAG, MONCOBTOT '
         + '                               FROM GES_COB_PAG_CON) PAGO '
         + '                   WHERE UNIVERSO.ASOID = PAGO.ASOID(+) '
         + '                     AND PAGO.FECHA(+) >= UNIVERSO.FECHA_ULT_GES '
         + '                     AND PAGO.FECHA(+) <= ' + QuotedStr(DateToStr(dtFFinPago.Date))
         + '                     AND ((' + xsSQLUbiDom + ') OR(' + xsSQLUbiTel + ')) '
         + '                   GROUP BY UNIVERSO.TIP_GEST_DES, UNIVERSO.UBICABILIDAD, '
         + '                            UNIVERSO.IDGESTIONDET, UNIVERSO.REFERENCIA, '
         + '                            UNIVERSO.CFC_F, UNIVERSO.FECHA_ULT_GES, UNIVERSO.ASOID) UNIVERSO_PAGO '
         + '          WHERE UNIVERSO_CALIFICACION.CFC_F = UNIVERSO_PAGO.CFC_F(+) '
         + '            AND UNIVERSO_CALIFICACION.UBICABILIDAD = UNIVERSO_PAGO.UBICABILIDAD(+) ) '
         + ' GROUP BY CFC_F_ORDEN, CFC_F, CFCDES_F, UBICABILIDAD, ORDEN_UBICABILIDAD, '
         + '          SUB_TOT_DESC, IDGESTIONDET, REFERENCIA '
         + ' ORDER BY CFC_F_ORDEN, ORDEN_UBICABILIDAD ';

      DM1.cdsQry7.Close;
      DM1.cdsQry7.DataRequest(xsSQL);
      DM1.cdsQry7.Open;
      DM1.cdsQry7.IndexFieldNames := 'ORDEN'; // SE UTILIZA ESTO XQ NO QUIERE ORDENAR EL GRID

      Screen.Cursor := crDefault;
      If DM1.cdsQry7.RecordCount <= 0 Then
      Begin
         showmessage('No existen datos para mostrar');
         result := false;
      End
      Else
         result := true;
   End;
Begin
   fn_limpiar_pantalla();
   If fn_is_existen_datos_calificacion() Then
   Begin
      fn_cargar_formato_grilla_calificacion();
      btnExcelCal.Enabled := true;
      btnImprimirCal.Enabled := true;
   End;
End;

(******************************************************************************)

Procedure TfRepConsolidadoAsignacion.btnExcelGestorClick(Sender : TObject);
Begin
   Screen.Cursor := crHourGlass;
   With dbgPrincipalGestor, dbgPrincipalGestor.ExportOptions Do
   Begin
      ExportType := wwgetSYLK;
      FileName := 'AnalisisAsignacionGestor.slk';
      DM1.OpcionesExportExcel(dbgPrincipalGestor.ExportOptions);
      dbgPrincipalGestor.ExportOptions.TitleName := 'Analisis Asignacion';
      Save;
      If Not (esoClipboard In Options) Then
         ShellExecute(Handle, 'Open', PChar(dbgPrincipalGestor.exportoptions.Filename), Nil, Nil, sw_shownormal);
   End;
   Screen.Cursor := crDefault;
End;
(******************************************************************************)

Procedure TfRepConsolidadoAsignacion.btnExcelUbiClick(Sender : TObject);
Begin
   Screen.Cursor := crHourGlass;
   With dbgPrincipalUbi, dbgPrincipalUbi.ExportOptions Do
   Begin
      ExportType := wwgetSYLK;
      FileName := 'AnalisisAsignacionUbigeo.slk';
      DM1.OpcionesExportExcel(dbgPrincipalUbi.ExportOptions);
      dbgPrincipalUbi.ExportOptions.TitleName := 'Analisis Asignacion';
      Save;
      If Not (esoClipboard In Options) Then
         ShellExecute(Handle, 'Open', PChar(dbgPrincipalUbi.exportoptions.Filename), Nil, Nil, sw_shownormal);
   End;
   Screen.Cursor := crDefault;
End;
(******************************************************************************)

Procedure TfRepConsolidadoAsignacion.btnExcelCalClick(Sender : TObject);
Begin
   Screen.Cursor := crHourGlass;
   With dbgPrincipalCal, dbgPrincipalCal.ExportOptions Do
   Begin
      ExportType := wwgetSYLK;
      FileName := 'AnalisisAsignacionCalif.slk';
      DM1.OpcionesExportExcel(dbgPrincipalCal.ExportOptions);
      dbgPrincipalCal.ExportOptions.TitleName := 'Analisis Asignacion';
      Save;
      If Not (esoClipboard In Options) Then
         ShellExecute(Handle, 'Open', PChar(dbgPrincipalCal.exportoptions.Filename), Nil, Nil, sw_shownormal);
   End;
   Screen.Cursor := crDefault;
End;
(******************************************************************************)

Procedure TfRepConsolidadoAsignacion.dbgPrincipalGestorDblClick(Sender : TObject);
Var
   xxFrm : TfDetRepConAsig;
Begin
   If (DM1.cdsQry2.RecordCount > 0) Then
   Begin
      xxFrm := TfDetRepConAsig.create(self);
      Try
         xxFrm.xxTipoReporte := trGestor;
         xxFrm.xsSQLTipGestor := xsSQLTipGestor;
         xxFrm.xsSQLTablaUsuarios := xsSQLTablaUsuarios;
         xxFrm.xsSQLTipGestorDes := xsSQLTipGestorDes;
         If rgGestoresSeleccion.ItemIndex = 2 Then
            xxFrm.xsGestor := ''
         Else
            xxFrm.xsGestor := DM1.cdsQry2.fieldbyname('GESTOR').AsString;
         xxFrm.xsPeriodoGestion := cboPeriodoGestion.Text;
         xxFrm.xsFechaIniGestion := DateToStr(dtFFinPeriodo.MinDate);
         xxFrm.xsFechaFinGestion := DateToStr(dtFFinPeriodo.Date);
         xxFrm.xsFechaMaxPago := DateToStr(dtFFinPago.Date);
         xxFrm.xsSQLUbiDom := xsSQLUbiDom;
         xxFrm.xsSQLUbiTel := xsSQLUbiTel;
         xxFrm.xsSQLGesDom := xsSQLGesDom;
         xxFrm.xsSQLGesTel := xsSQLGesTel;
         xxFrm.showmodal;
      Finally
         xxFrm.free;
      End;
   End;
End;
(******************************************************************************)

Procedure TfRepConsolidadoAsignacion.dbgPrincipalUbiDblClick(
   Sender : TObject);
Var
   xxFrm : TfDetRepConAsig;
   xsUbigeoDes : String;
Begin
   If (DM1.cdsQry6.RecordCount > 0) Then
   Begin
      xsUbigeoDes := DM1.cdsQry6.fieldbyname('DEPARTAMENTO').AsString;
      If Length(DM1.cdsQry6.fieldbyname('UBIGEO').AsString) > 2 Then
         xsUbigeoDes := xsUbigeoDes + ' / ' + DM1.cdsQry6.fieldbyname('PROVINCIA').AsString;
      If Length(DM1.cdsQry6.fieldbyname('UBIGEO').AsString) > 4 Then
         xsUbigeoDes := xsUbigeoDes + ' / ' + DM1.cdsQry6.fieldbyname('DISTRITO').AsString;

      xxFrm := TfDetRepConAsig.create(self);
      Try
         xxFrm.xxTipoReporte := trUbigeo;
         xxFrm.xsSQLTipGestor := xsSQLTipGestor;
         xxFrm.xsSQLTablaUsuarios := xsSQLTablaUsuarios;
         xxFrm.xsSQLTipGestorDes := xsSQLTipGestorDes;
         xxFrm.xsUbigeo := DM1.cdsQry6.fieldbyname('UBIGEO').AsString;
         xxFrm.xsUbigeoDes := xsUbigeoDes;
         xxFrm.xsPeriodoGestion := cboPeriodoGestion.Text;
         xxFrm.xsFechaIniGestion := DateToStr(dtFFinPeriodo.MinDate);
         xxFrm.xsFechaFinGestion := DateToStr(dtFFinPeriodo.Date);
         xxFrm.xsFechaMaxPago := DateToStr(dtFFinPago.Date);
         xxFrm.xsSQLUbiDom := xsSQLUbiDom;
         xxFrm.xsSQLUbiTel := xsSQLUbiTel;
         xxFrm.xsSQLGesDom := xsSQLGesDom;
         xxFrm.xsSQLGesTel := xsSQLGesTel;
         xxFrm.showmodal;
      Finally
         xxFrm.free;
      End;

   End;
End;
(******************************************************************************)

Procedure TfRepConsolidadoAsignacion.dbgPrincipalCalDblClick(
   Sender : TObject);
Var
   xxFrm : TfDetRepConAsig;
Begin
   If (DM1.cdsQry7.RecordCount > 0) Then
   Begin
      xxFrm := TfDetRepConAsig.create(self);
      Try
         xxFrm.xxTipoReporte := trCalificacion;
         xxFrm.xsSQLTipGestor := xsSQLTipGestor;
         xxFrm.xsSQLTablaUsuarios := xsSQLTablaUsuarios;
         xxFrm.xsSQLTipGestorDes := xsSQLTipGestorDes;
         xxFrm.xsCFC_F := DM1.cdsQry7.fieldbyname('CFC_F').AsString;
         xxFrm.xsCFCDES_F := DM1.cdsQry7.fieldbyname('CALIFICACION').AsString;
         xxFrm.xsPeriodoGestion := cboPeriodoGestion.Text;
         xxFrm.xsFechaIniGestion := DateToStr(dtFFinPeriodo.MinDate);
         xxFrm.xsFechaFinGestion := DateToStr(dtFFinPeriodo.Date);
         xxFrm.xsFechaMaxPago := DateToStr(dtFFinPago.Date);
         xxFrm.xsSQLUbiDom := xsSQLUbiDom;
         xxFrm.xsSQLUbiTel := xsSQLUbiTel;
         xxFrm.xsSQLGesDom := xsSQLGesDom;
         xxFrm.xsSQLGesTel := xsSQLGesTel;
         xxFrm.showmodal;
      Finally
         xxFrm.free;
      End;
   End;
End;

(******************************************************************************)

Procedure TfRepConsolidadoAsignacion.fn_get_sql_filtro_general();
Begin
   Case rgTipoGestor.ItemIndex Of
      0 :
         Begin
            xsSQLTipGestor := '01';
            xsSQLTipGestorDes := 'INTERNO';
            xsSQLTipGestorDesFem := 'INTERNA';
            xsSQLTablaUsuarios := ' SELECT USERID FROM GES_NIV_USU_OTO ';
         End; (* GESTION INTERNA *)
      1 :
         Begin
            xsSQLTipGestor := '02';
            xsSQLTipGestorDes := 'EXTERNO';
            xsSQLTipGestorDesFem := 'EXTERNA';
            xsSQLTablaUsuarios := ' SELECT IDENTEXT USERID FROM GES_TIP_USU_EXT ';
         End; (* GESTION EXTERNA *)
   End;

   Case rgContactadoDom.ItemIndex Of
      0 : xsSQLUbiDom := ' NVL(TIP_GEST_DES,''XXXXX'') = ''DOMICILIARIA'' '; // todos
      1 : xsSQLUbiDom := ' NVL(TIP_GEST_DES,''XXXXX'') = ''DOMICILIARIA'' AND UBICABILIDAD = ''NINGUNO'' '; // ninguno
      2 : xsSQLUbiDom := ' NVL(TIP_GEST_DES,''XXXXX'') = ''DOMICILIARIA'' AND UBICABILIDAD = ''CONTACTADO'' ';
      3 : xsSQLUbiDom := ' NVL(TIP_GEST_DES,''XXXXX'') = ''DOMICILIARIA'' AND UBICABILIDAD = ''NO CONTACTADO'' ';
      4 : xsSQLUbiDom := ' NVL(TIP_GEST_DES,''XXXXX'') = ''DOMICILIARIA'' AND UBICABILIDAD = ''PENDIENTE'' ';
   End;
   If rgContactadoDom.ItemIndex = 1 Then
      xsSQLGesDom := '''X'''
   Else
      xsSQLGesDom := '''3''';

   Case rgContactadoTel.ItemIndex Of
      0 : xsSQLUbiTel := ' NVL(TIP_GEST_DES,''XXXXX'') = ''TELEFONICA'' '; // todos
      1 : xsSQLUbiTel := ' NVL(TIP_GEST_DES,''XXXXX'') = ''TELEFONICA'' AND UBICABILIDAD = ''NINGUNO'' '; // ninguno
      2 : xsSQLUbiTel := ' NVL(TIP_GEST_DES,''XXXXX'') = ''TELEFONICA'' AND UBICABILIDAD = ''CONTACTADO'' ';
      3 : xsSQLUbiTel := ' NVL(TIP_GEST_DES,''XXXXX'') = ''TELEFONICA'' AND UBICABILIDAD = ''NO CONTACTADO'' ';
      4 : xsSQLUbiTel := ' NVL(TIP_GEST_DES,''XXXXX'') = ''TELEFONICA'' AND UBICABILIDAD = ''PENDIENTE'' ';
   End;
   If rgContactadoTel.ItemIndex = 1 Then
      xsSQLGesTel := '''X'''
   Else
      xsSQLGesTel := '''1''';
End;

(******************************************************************************)

Procedure TfRepConsolidadoAsignacion.btnSalirClick(Sender : TObject);
Begin
   Close;
End;
(******************************************************************************)

Procedure TfRepConsolidadoAsignacion.pgFiltroChange(Sender : TObject);
Var
   xnPageIndex : integer;
Begin
   fn_limpiar_pantalla();
   For xnPageIndex := 0 To pgFiltro.PageCount - 1 Do
      pgFiltro.Pages[xnPageIndex].ImageIndex := 0;
   pgFiltro.ActivePage.ImageIndex := 1;
End;

(******************************************************************************)

Procedure TfRepConsolidadoAsignacion.cbDptoExit(Sender : TObject);
Begin
   If DM1.cdsDpto.Locate('DPTOID', VarArrayof([cbDpto.Text]), []) Then
   Begin
      edDpto.Text := DM1.cdsDpto.fieldbyname('DPTODES').AsString;
      DM1.cdsProvin.Filtered := false;
      DM1.cdsProvin.Filter := 'DPTOID = ' + QuotedStr(cbDpto.Text);
      DM1.cdsProvin.Filtered := true;
   End
   Else
   Begin
      edDpto.Text := '';
      DM1.cdsProvin.Filtered := false;
      DM1.cdsProvin.Filter := '1 = 2';
      DM1.cdsProvin.Filtered := true;
   End;
   cbProv.Text := '';
   cbProvExit(cbProv);
End;
(******************************************************************************)

Procedure TfRepConsolidadoAsignacion.cbProvExit(Sender : TObject);
Begin
   If DM1.cdsProvin.Locate('CIUDID', VarArrayof([cbProv.Text]), []) Then
   Begin
      edProv.Text := DM1.cdsProvin.fieldbyname('CIUDDES').AsString;
      DM1.cdsDist.Filtered := false;
      DM1.cdsDist.Filter := 'CIUDID = ' + QuotedStr(cbProv.Text);
      DM1.cdsDist.Filtered := true;
   End
   Else
   Begin
      edProv.Text := '';
      DM1.cdsDist.Filtered := false;
      DM1.cdsDist.Filter := '1 = 2';
      DM1.cdsDist.Filtered := true;
   End;
   cbDist.Text := '';
   cbDistExit(cbDist);
End;

(******************************************************************************)

Procedure TfRepConsolidadoAsignacion.cbDistExit(Sender : TObject);
Begin
   If DM1.cdsDist.Locate('ZIPID', VarArrayof([cbDist.Text]), []) Then
      edDist.Text := DM1.cdsDist.fieldbyname('ZIPDES').AsString
   Else
      edDist.Text := '';
   fn_limpiar_pantalla();
End;

(******************************************************************************)

Procedure TfRepConsolidadoAsignacion.chbDetalleUbigeoClick(
   Sender : TObject);
Begin
   fn_limpiar_pantalla();
End;

(******************************************************************************)

Procedure TfRepConsolidadoAsignacion.fn_limpiar_pantalla();
Var
   xsSQL : String;
Begin
   // gestor
   btnExcelGestor.Enabled := false;
   btnImprimirGestor.Enabled := false;
   xsSQL := 'SELECT 0 ORDEN, ''-'' GESTOR,''-'' GESTOR_DESC,''-'' UBICABILIDAD, '
      + ' 0 CANT_PORCENTAJE, ''-'' GESTION_DESC, ''-'' IDGESTIONDET, 0 CANT_GRUPO, '
      + ' 0 EFE_CANT, 0 EFE_MONT, 0 BAN_CANT, 0 BAN_MONT, '
      + ' 0 REF_CANT, 0 REF_MONT, 0 ABO_CANT, 0 ABO_MONT, 0 LIQ_CANT, 0 LIQ_MONT, '
      + ' ''-'' SUB_TOT_DESC ,''-'' ORDEN_UBICABILIDAD '
      + ' FROM DUAL '
      + ' WHERE 1 = 2';
   DM1.cdsQry2.Close;
   DM1.cdsQry2.DataRequest(xsSQL);
   DM1.cdsQry2.Open;
   fn_cargar_formato_grilla_gestor();

   // ubigeo
   btnExcelUbi.Enabled := false;
   btnImprimirUbi.Enabled := false;
   xsSQL := 'SELECT 0 ORDEN, '' '' DEPARTAMENTO, '' '' PROVINCIA, '' '' DISTRITO, '
      + '       '' '' UBIGEO, '' '' SUB_TOT_DESC, '
      + '       '' '' UBICABILIDAD, '' '' GESTION_DESC, '' '' IDGESTIONDET, '
      + '       0 CANT_GRUPO, '
      + '       0 CANT_PORCENTAJE, '
      + '       0 EFE_CANT, 0 EFE_MONT, '
      + '       0 BAN_CANT, 0 BAN_MONT, '
      + '       0 REF_CANT, 0 REF_MONT, '
      + '       0 ABO_CANT, 0 ABO_MONT, '
      + '       0 LIQ_CANT, 0 LIQ_MONT FROM DUAL WHERE 1=2';
   DM1.cdsQry6.Close;
   DM1.cdsQry6.DataRequest(xsSQL);
   DM1.cdsQry6.Open;
   fn_cargar_formato_grilla_ubigeo();

   // calificacion
   btnExcelCal.Enabled := false;
   btnImprimirCal.Enabled := false;
   xsSQL := 'SELECT 0 ORDEN, '' '' CALIFICACION, '
      + '       '' '' UBIGEO, '' '' SUB_TOT_DESC, '
      + '       '' '' UBICABILIDAD, '' '' GESTION_DESC, '' '' IDGESTIONDET, '
      + '       0 CANT_GRUPO, '
      + '       0 CANT_PORCENTAJE, '
      + '       0 EFE_CANT, 0 EFE_MONT, '
      + '       0 BAN_CANT, 0 BAN_MONT, '
      + '       0 REF_CANT, 0 REF_MONT, '
      + '       0 ABO_CANT, 0 ABO_MONT, '
      + '       0 LIQ_CANT, 0 LIQ_MONT FROM DUAL WHERE 1=2';
   DM1.cdsQry7.Close;
   DM1.cdsQry7.DataRequest(xsSQL);
   DM1.cdsQry7.Open;
   fn_cargar_formato_grilla_calificacion();
End;
(******************************************************************************)

Procedure TfRepConsolidadoAsignacion.fn_cargar_formato_grilla_ubigeo();
Begin
   dbgPrincipalUbi.Selected.Clear;
   dbgPrincipalUbi.Selected.Add('DEPARTAMENTO'#9'20'#9'DEPARTAMENTO');
   If edDpto.Text <> '' Then
      dbgPrincipalUbi.Selected.Add('PROVINCIA'#9'20'#9'PROVINCIA');

   If edProv.Text <> '' Then
      dbgPrincipalUbi.Selected.Add('DISTRITO'#9'20'#9'DISTRITO');

   dbgPrincipalUbi.Selected.Add('UBICABILIDAD'#9'17'#9'UBICABILIDAD');
   dbgPrincipalUbi.Selected.Add('CANT_PORCENTAJE'#9'8'#9'%');
   dbgPrincipalUbi.Selected.Add('GESTION_DESC'#9'28'#9'GESTION');
   dbgPrincipalUbi.Selected.Add('IDGESTIONDET'#9'5'#9'COD');
   dbgPrincipalUbi.Selected.Add('CANT_GRUPO'#9'7'#9'N° REG');
   dbgPrincipalUbi.Selected.Add('EFE_CANT'#9'10'#9'EFECTIVO~CANT');
   dbgPrincipalUbi.Selected.Add('EFE_MONT'#9'10'#9'EFECTIVO~MONT');
   dbgPrincipalUbi.Selected.Add('BAN_CANT'#9'10'#9'BANCO~CANT');
   dbgPrincipalUbi.Selected.Add('BAN_MONT'#9'10'#9'BANCO~MONT');
   dbgPrincipalUbi.Selected.Add('REF_CANT'#9'15'#9'REFINANCIADO~CANT');
   dbgPrincipalUbi.Selected.Add('REF_MONT'#9'15'#9'REFINANCIADO~MONT');
   dbgPrincipalUbi.Selected.Add('ABO_CANT'#9'10'#9'ABONO~CANT');
   dbgPrincipalUbi.Selected.Add('ABO_MONT'#9'10'#9'ABONO~MONT');
   dbgPrincipalUbi.Selected.Add('LIQ_CANT'#9'13'#9'LIQUIDACION~CANT');
   dbgPrincipalUbi.Selected.Add('LIQ_MONT'#9'13'#9'LIQUIDACION~MONT');
   dbgPrincipalUbi.ApplySelected;

   TNumericField(Dm1.cdsQry6.fieldbyname('CANT_PORCENTAJE')).DisplayFormat := '###.#0';
   TNumericField(Dm1.cdsQry6.fieldbyname('CANT_GRUPO')).DisplayFormat := '###,##0';
   TNumericField(Dm1.cdsQry6.fieldbyname('EFE_CANT')).DisplayFormat := '###,##0';
   TNumericField(Dm1.cdsQry6.fieldbyname('EFE_MONT')).DisplayFormat := '###,###.#0';
   TNumericField(Dm1.cdsQry6.fieldbyname('BAN_CANT')).DisplayFormat := '###,##0';
   TNumericField(Dm1.cdsQry6.fieldbyname('BAN_MONT')).DisplayFormat := '###,###.#0';
   TNumericField(Dm1.cdsQry6.fieldbyname('REF_CANT')).DisplayFormat := '###,##0';
   TNumericField(Dm1.cdsQry6.fieldbyname('REF_MONT')).DisplayFormat := '###,###.#0';
   TNumericField(Dm1.cdsQry6.fieldbyname('ABO_CANT')).DisplayFormat := '###,##0';
   TNumericField(Dm1.cdsQry6.fieldbyname('ABO_MONT')).DisplayFormat := '###,###.#0';
   TNumericField(Dm1.cdsQry6.fieldbyname('LIQ_CANT')).DisplayFormat := '###,##0';
   TNumericField(Dm1.cdsQry6.fieldbyname('LIQ_MONT')).DisplayFormat := '###,###.#0';
End;
(******************************************************************************)

Procedure TfRepConsolidadoAsignacion.fn_cargar_formato_grilla_calificacion();
Begin
   dbgPrincipalCal.Selected.Clear;
   dbgPrincipalCal.Selected.Add('CALIFICACION'#9'10'#9'CALIFICACION');
   dbgPrincipalCal.Selected.Add('UBICABILIDAD'#9'17'#9'UBICABILIDAD');
   dbgPrincipalCal.Selected.Add('CANT_PORCENTAJE'#9'8'#9'%');
   dbgPrincipalCal.Selected.Add('GESTION_DESC'#9'28'#9'GESTION');
   dbgPrincipalCal.Selected.Add('IDGESTIONDET'#9'5'#9'COD');
   dbgPrincipalCal.Selected.Add('CANT_GRUPO'#9'7'#9'N° REG');
   dbgPrincipalCal.Selected.Add('EFE_CANT'#9'10'#9'EFECTIVO~CANT');
   dbgPrincipalCal.Selected.Add('EFE_MONT'#9'10'#9'EFECTIVO~MONT');
   dbgPrincipalCal.Selected.Add('BAN_CANT'#9'10'#9'BANCO~CANT');
   dbgPrincipalCal.Selected.Add('BAN_MONT'#9'10'#9'BANCO~MONT');
   dbgPrincipalCal.Selected.Add('REF_CANT'#9'15'#9'REFINANCIADO~CANT');
   dbgPrincipalCal.Selected.Add('REF_MONT'#9'15'#9'REFINANCIADO~MONT');
   dbgPrincipalCal.Selected.Add('ABO_CANT'#9'10'#9'ABONO~CANT');
   dbgPrincipalCal.Selected.Add('ABO_MONT'#9'10'#9'ABONO~MONT');
   dbgPrincipalCal.Selected.Add('LIQ_CANT'#9'13'#9'LIQUIDACION~CANT');
   dbgPrincipalCal.Selected.Add('LIQ_MONT'#9'13'#9'LIQUIDACION~MONT');
   dbgPrincipalCal.ApplySelected;

   TNumericField(Dm1.cdsQry7.fieldbyname('CANT_PORCENTAJE')).DisplayFormat := '###.#0';
   TNumericField(Dm1.cdsQry7.fieldbyname('CANT_GRUPO')).DisplayFormat := '###,##0';
   TNumericField(Dm1.cdsQry7.fieldbyname('EFE_CANT')).DisplayFormat := '###,##0';
   TNumericField(Dm1.cdsQry7.fieldbyname('EFE_MONT')).DisplayFormat := '###,###.#0';
   TNumericField(Dm1.cdsQry7.fieldbyname('BAN_CANT')).DisplayFormat := '###,##0';
   TNumericField(Dm1.cdsQry7.fieldbyname('BAN_MONT')).DisplayFormat := '###,###.#0';
   TNumericField(Dm1.cdsQry7.fieldbyname('REF_CANT')).DisplayFormat := '###,##0';
   TNumericField(Dm1.cdsQry7.fieldbyname('REF_MONT')).DisplayFormat := '###,###.#0';
   TNumericField(Dm1.cdsQry7.fieldbyname('ABO_CANT')).DisplayFormat := '###,##0';
   TNumericField(Dm1.cdsQry7.fieldbyname('ABO_MONT')).DisplayFormat := '###,###.#0';
   TNumericField(Dm1.cdsQry7.fieldbyname('LIQ_CANT')).DisplayFormat := '###,##0';
   TNumericField(Dm1.cdsQry7.fieldbyname('LIQ_MONT')).DisplayFormat := '###,###.#0';
End;

(******************************************************************************)

Function TfRepConsolidadoAsignacion.fn_validacion_general() : boolean;
Begin
   If trim(cboPeriodoGestion.text) = '' Then
   Begin
      MessageDlg('Seleccione un periodo de Gestion', mtInformation, [mbOk], 0);
      cboPeriodoGestion.SetFocus();
      result := false;
      Exit;
   End;
   If trim(dtFFinPeriodo.text) = '' Then
   Begin
      MessageDlg('Ingrese una Fecha Maxima de Gestion', mtInformation, [mbOk], 0);
      dtFFinPeriodo.SetFocus();
      result := false;
      Exit;
   End;
   If trim(dtFFinPago.text) = '' Then
   Begin
      MessageDlg('Ingrese una Fecha Maxima de Pago', mtInformation, [mbOk], 0);
      dtFFinPago.SetFocus();
      result := false;
      Exit;
   End;
   result := true;
End;
(******************************************************************************)

Procedure TfRepConsolidadoAsignacion.fn_cargar_formato_grilla_gestor();
Begin
   dbgPrincipalGestor.Selected.Clear;
   dbgPrincipalGestor.Selected.Add('GESTOR'#9'20'#9'GESTOR');
   dbgPrincipalGestor.Selected.Add('UBICABILIDAD'#9'17'#9'UBICABILIDAD');
   dbgPrincipalGestor.Selected.Add('CANT_PORCENTAJE'#9'8'#9'%');
   dbgPrincipalGestor.Selected.Add('GESTION_DESC'#9'28'#9'GESTION');
   dbgPrincipalGestor.Selected.Add('IDGESTIONDET'#9'5'#9'COD');
   dbgPrincipalGestor.Selected.Add('CANT_GRUPO'#9'7'#9'N° REG');
   dbgPrincipalGestor.Selected.Add('EFE_CANT'#9'10'#9'EFECTIVO~CANT');
   dbgPrincipalGestor.Selected.Add('EFE_MONT'#9'10'#9'EFECTIVO~MONT');
   dbgPrincipalGestor.Selected.Add('BAN_CANT'#9'10'#9'BANCO~CANT');
   dbgPrincipalGestor.Selected.Add('BAN_MONT'#9'10'#9'BANCO~MONT');
   dbgPrincipalGestor.Selected.Add('REF_CANT'#9'15'#9'REFINANCIADO~CANT');
   dbgPrincipalGestor.Selected.Add('REF_MONT'#9'15'#9'REFINANCIADO~MONT');
   dbgPrincipalGestor.Selected.Add('ABO_CANT'#9'10'#9'ABONO~CANT');
   dbgPrincipalGestor.Selected.Add('ABO_MONT'#9'10'#9'ABONO~MONT');
   dbgPrincipalGestor.Selected.Add('LIQ_CANT'#9'13'#9'LIQUIDACION~CANT');
   dbgPrincipalGestor.Selected.Add('LIQ_MONT'#9'13'#9'LIQUIDACION~MONT');
   dbgPrincipalGestor.ApplySelected;
   TNumericField(Dm1.cdsQry2.fieldbyname('CANT_PORCENTAJE')).DisplayFormat := '###.#0';
   TNumericField(Dm1.cdsQry2.fieldbyname('CANT_GRUPO')).DisplayFormat := '###,##0';
   TNumericField(Dm1.cdsQry2.fieldbyname('EFE_CANT')).DisplayFormat := '###,##0';
   TNumericField(Dm1.cdsQry2.fieldbyname('EFE_MONT')).DisplayFormat := '###,###.#0';
   TNumericField(Dm1.cdsQry2.fieldbyname('BAN_CANT')).DisplayFormat := '###,##0';
   TNumericField(Dm1.cdsQry2.fieldbyname('BAN_MONT')).DisplayFormat := '###,###.#0';
   TNumericField(Dm1.cdsQry2.fieldbyname('REF_CANT')).DisplayFormat := '###,##0';
   TNumericField(Dm1.cdsQry2.fieldbyname('REF_MONT')).DisplayFormat := '###,###.#0';
   TNumericField(Dm1.cdsQry2.fieldbyname('ABO_CANT')).DisplayFormat := '###,##0';
   TNumericField(Dm1.cdsQry2.fieldbyname('ABO_MONT')).DisplayFormat := '###,###.#0';
   TNumericField(Dm1.cdsQry2.fieldbyname('LIQ_CANT')).DisplayFormat := '###,##0';
   TNumericField(Dm1.cdsQry2.fieldbyname('LIQ_MONT')).DisplayFormat := '###,###.#0';
End;

(******************************************************************************)

Procedure TfRepConsolidadoAsignacion.ppGroupFooterBand2BeforePrint(
   Sender : TObject);
Begin
   pplblPorRegEfeGes.Caption := fn_get_porcentaje(pplblTotRegGes.Text, pplblTotRegEfeGes.Text);
   pplblPorRegBanGes.Caption := fn_get_porcentaje(pplblTotRegGes.Text, pplblTotRegBanGes.Text);
   pplblPorRegRefGes.Caption := fn_get_porcentaje(pplblTotRegGes.Text, pplblTotRegRefGes.Text);
   pplblPorRegAboGes.Caption := fn_get_porcentaje(pplblTotRegGes.Text, pplblTotRegAboGes.Text);
   pplblPorRegBenGes.Caption := fn_get_porcentaje(pplblTotRegGes.Text, pplblTotRegBenGes.Text);

   pplblTotRegTotGes.Caption := floattostr(DM1.valores(pplblTotRegEfeGes.Text) + DM1.valores(pplblTotRegBanGes.Text) + DM1.valores(pplblTotRegRefGes.Text) + DM1.valores(pplblTotRegAboGes.Text) + DM1.valores(pplblTotRegBenGes.Text));
   pplblPorRegTotGes.Caption := fn_get_porcentaje(pplblTotRegGes.Text, pplblTotRegTotGes.Caption);
End;
(******************************************************************************)

Procedure TfRepConsolidadoAsignacion.fn_cargar_gestores;
VAR xsSQL : String;
    xxCursor : TCursor;
Begin
   xxCursor := Screen.Cursor;
   Screen.Cursor := crHourGlass;
   Case rgTipoGestor.ItemIndex Of
      0 : // interno
         Begin
            xsSQL := 'SELECT A.USERID, B.USERNOM '
               + '     FROM (SELECT DISTINCT USUARIO USERID '
               + '             FROM ( SELECT USUARIO '
               + '                      FROM GES_COB_DOM '
               + '                     WHERE PERIODO = ' + QuotedStr(cboPeriodoGestion.Text)
               + '                       AND TIPGES = ''01'' '
               + '                     UNION '
               + '                    SELECT USUARIO '
               + '                      FROM GES_COB_DOM_HIS '
               + '                     WHERE PERIODO = ' + QuotedStr(cboPeriodoGestion.Text)
               + '                       AND TIPGES = ''01'' '
// Inicio: SPP_201305_GESCOB F2 nuevo campo en la BD
               + '                       AND ASIGNADO = ''S'' '
// Fin: SPP_201305_GESCOB
               + '                     UNION '
               + '                    SELECT USUARIO '
               + '                      FROM GES_COB_IND '
               + '                     WHERE PERIODO = ' + QuotedStr(cboPeriodoGestion.Text)
               + '                       AND TIPGES = ''01'' '
               + '                     UNION '
               + '                    SELECT USUARIO '
               + '                      FROM GES_COB_IND_HIS '
               + '                     WHERE PERIODO = ' + QuotedStr(cboPeriodoGestion.Text)
               + '                       AND TIPGES = ''01'' '
// Inicio: SPP_201305_GESCOB F2 nuevo campo en la BD
               + '                       AND ASIGNADO = ''S'' '
// Fin: SPP_201305_GESCOB
               + '                   )) A, TGE006 B '
               + '    WHERE A.USERID = B.USERID '
               + '    ORDER BY USERID ';
            //xsTGestor := '''01''';
            //xsTGestorDesc := 'INTERNO';
            //xsTGestorDescFem := 'INTERNA';
         End;
      1 : // externo
         Begin
            xsSQL := 'SELECT IDENTEXT USERID,DESENTEXT USERNOM '
               + '     FROM GES_TIP_USU_EXT '
               + '    WHERE REGACT = ''S'' '
               + '    ORDER BY USERID ';
            //xsTGestor := '''02''';
            //xsTGestorDesc := 'EXTERNO';
            //xsTGestorDescFem := 'EXTERNA';
         End;
   End;
   DM1.cdsQry1.Close;
   DM1.cdsQry1.DataRequest(xsSQL);
   DM1.cdsQry1.Open;
   cbGestor.LookupTable := DM1.cdsQry1;
   cbGestor.LookupField := 'USERID';
   Screen.Cursor := xxCursor;
End;

End.

