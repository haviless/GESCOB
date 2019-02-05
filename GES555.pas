// Inicio Uso Estándares: 01/08/2011
// Unidad : Gestión de Cobranzas
// Formulario : FrmAlertaAcuerdos
// Fecha de Creación :
// Autor : Equipo de Sistemas
// Objetivo : Mostrar alertas sobre los acuerdos incumplidos y promesas de pagos indefinidas
// Actualizaciones:
// HPC_201209_GESCOB(F3) : 22/10/2012 IMPLEMENTAR NEGOCIACION Y COMPROMISO DE PAGO
// HPC_201211_GESCOB     : 21/11/2012 AGREGAR PESTAÑA DE GESTIONES CUMPLIDAS, MODIFICAR GESTIONES INCUMPLIDAS
// DPP_201210_GESCOB     : El pase se realiza a parti del pase HPC_201211_GESCOB
// HPC_201305_GESCOB: F4 04/06/2013 Se agregó periodo a consultar
// SPP_201305_GESCOB: Se realiza el pase a producción a partir del HPC_201305_GESCOB
// HPC_201402_GESCOB: Mantenimiento a las alertas de acuerdos de pago incumplidos (1.3)
//                    creacion de indicadores de acuerdos de pagos incumplidos    (1.4) 
// SPP_201402_GESCOB: Se realiza el pase a producción a partir del HPC_201402_GESCOB
// HPC_201501_GESCOB: mejoras al proceso depriorizacion de inicio de mes
Unit GES555;

Interface

Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, ExtCtrls, Grids, Wwdbigrd, Wwdbgrid, ComCtrls, StdCtrls, Buttons, wwExport, shellapi, db,
   wwdblook
   // INICIO : SPP_201402_GESCOB
   , Wwdbdlg, TeeProcs, TeEngine, Chart, Series;
   // FIN : SPP_201402_GESCOB
Type
   TFrmAlertaAcuerdos = Class(TForm)
      pnl2 : TPanel;
      btnExportar : TBitBtn;
      btnImprimir : TBitBtn;
      btnSalir : TBitBtn;
      pcAlertas : TPageControl;
      tsAcuerdosIncumplidos : TTabSheet;
      tsPromesasPagoIndefinidas : TTabSheet;
      dbgAcuerdosIncumplidos : TwwDBGrid;
      dbgPromesasPagoIndefinidas : TwwDBGrid;
      tsTodasNegociaciones : TTabSheet;
      pnl1 : TPanel;
      dbgTodasNegociaciones : TwwDBGrid;
      cbNegociacion : TwwDBLookupCombo;
      edtNegociacion : TEdit;
      lbl1 : TLabel;
   // Inicio: DPP_201210_GESCOB
      tsNegociacionesCumplidas: TTabSheet;
      dbgAcuerdosCumplidos: TwwDBGrid;
   // Fin: DPP_201210_GESCOB
//
// Inicio: SPP_201305_GESCOB F4 periodo
    pnlCab: TPanel;
      Label1: TLabel;
      cboPeriodoCartera: TwwDBLookupCombo;
    // INICIO : SPP_201402_GESCOB
    tsAcuerdosIncumplidosInd: TTabSheet;
    pnlIndFiltro: TPanel;
    pnIndGestor: TPanel;
    Label3: TLabel;
    dblcGestor: TwwDBLookupComboDlg;
    pnlIndTipoCartera: TPanel;
    pnlIndOrigenGestor: TPanel;
    Label4: TLabel;
    dblcTipoCartera: TwwDBLookupComboDlg;
    Label2: TLabel;
    dblcOrigenGestor: TwwDBLookupComboDlg;
    lblIndMsg: TLabel;
    Panel1: TPanel;
    lblIndAsignados: TLabel;
    lblIndGestionados: TLabel;
    lblIndCompromisoPago: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Shape4: TShape;
    Shape5: TShape;
    Shape6: TShape;
    Shape7: TShape;
    Shape8: TShape;
    Shape9: TShape;
    Shape10: TShape;
    Shape11: TShape;
    Shape12: TShape;
    Shape13: TShape;
    Shape14: TShape;
    Shape15: TShape;
    Shape16: TShape;
    Shape17: TShape;
    Shape18: TShape;
    Shape19: TShape;
    Shape20: TShape;
    Shape21: TShape;
    Shape22: TShape;
    Shape23: TShape;
    Shape24: TShape;
    Shape25: TShape;
    Shape26: TShape;
    Shape27: TShape;
    Shape29: TShape;
    Shape30: TShape;
    Shape31: TShape;
    Shape32: TShape;
    Shape33: TShape;
    Shape35: TShape;
    Shape38: TShape;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    lblIncCant: TLabel;
    lblIncProxVencCant: TLabel;
    lblIncPorVencerCant: TLabel;
    lblIncCumpCant: TLabel;
    lblIncTotAcuXCobCant: TLabel;
    lblIncTotAcuCobCant: TLabel;
    lblIncCuoPacCant: TLabel;
    lblIncCuoPacPorc: TLabel;
    lblIncTotAcuCobPorc: TLabel;
    lblIncTotAcuXCobPorc: TLabel;
    lblIncCumpPorc: TLabel;
    lblIncPorVencerPorc: TLabel;
    lblIncProxVencPorc: TLabel;
    lblIncPorc: TLabel;
    dbgIndAcuerdosIncumplidos: TwwDBGrid;
    Label22: TLabel;
    Label23: TLabel;
    // FIN : SPP_201402_GESCOB
// Fin: SPP_201305_GESCOB
      Procedure btnSalirClick(Sender : TObject);
      Procedure btnExportarClick(Sender : TObject);
      Procedure btnImprimirClick(Sender : TObject);
      Procedure FormShow(Sender : TObject);
      Procedure cbNegociacionChange(Sender : TObject);
   // Inicio: DPP_201210_GESCOB
      procedure dbgTodasNegociacionesTitleButtonClick(Sender: TObject; AFieldName: String);
   // Fin: DPP_201210_GESCOB
// Inicio: SPP_201305_GESCOB F4 periodo
    // INICIO : SPP_201402_GESCOB
    //procedure FormCreate(Sender: TObject);
    procedure cboPeriodoCarteraChange(Sender: TObject);
    procedure dblcOrigenGestorChange(Sender: TObject);
    procedure dblcTipoCarteraChange(Sender: TObject);
    procedure dblcGestorChange(Sender: TObject);
    // FIN : SPP_201402_GESCOB
// Fin: SPP_201305_GESCOB

   Private
      xsPeriodo : String;
      // INICIO : SPP_201402_GESCOB
      xsIndSQLUnivFiltro :String;
      xsIndSQLUnivDatos: string;
      procedure fn_cargar_todas_pestanhas();
      procedure fn_ind_acu_inc_cargar_datos;
      // FIN : SPP_201402_GESCOB
   Public
      xsGestor : String;
   End;

Var
   FrmAlertaAcuerdos : TFrmAlertaAcuerdos;

Implementation

// Inicio: SPP_201305_GESCOB F4 periodo
Uses GESDM1, GES001;
// Fin: SPP_201305_GESCOB

{$R *.dfm}

(******************************************************************************)
// INICIO : SPP_201402_GESCOB
(*
Procedure TFrmAlertaAcuerdos.FormShow(Sender : TObject);
Var
   xsSQL : String;
   xsSQLGestor : String;

   Procedure fn_cargar_acuerdos_incumplidos();
   Begin
   // Inicio: DPP_201210_GESCOB
      xsSQL :=
         '   SELECT A.PERIODO, A.ASOID, A.IDGTN, A.IDGTNDET, A.GESTOR, E.ASOAPENOMDNI, E.ASOCODMOD, '
         + '        B.DESCRIPCION TIPO_GESTION, C.DESCRIPCION GESTION, A.FEC_CONTACTO, A.COMPROMISO, '
         + '        A.FEC_COMPROMISO, A.COD_NEG, D.NEGOCIACION, A.OBSERVACIONES OBSERVACIONES, '
         + '        A.ESTADO '
         + '  FROM GES_COB_COMPROMISO A, GES_REF_SEG B, GES_REF_SEG_DET C, GES_COB_NEGOCIACION D, APO201 E '
         + ' WHERE A.PERIODO = ' + QuotedStr(self.xsPeriodo)
         + '   AND ( A.ESTADO = ''INCUMPLIDO'' OR A.ESTADO = ''NUEVO'' ) '
         + '   AND A.COMPROMISO = ''S'' '
         + '   AND TRUNC(A.FEC_COMPROMISO) < TRUNC(SYSDATE) '
         + xsSQlGestor
         + '   AND A.IDGTN = B.IDGTN '
         + '   AND A.IDGTNDET = C.IDGTNDET '
         + '   AND A.COD_NEG = D.COD_NEG '
         + '   AND A.ASOID = E.ASOID '
       //  + '   AND NOT EXISTS (SELECT ASOID '
       //  + '          FROM GES_COB_COMPROMISO '
       //  + '         WHERE PERIODO = ' + QuotedStr(self.xsPeriodo)
       //  + '           AND ESTADO = ''NUEVO'' '
       //  + '           AND COMPROMISO = ''S'' '
       //  + '           AND TRUNC(FEC_COMPROMISO) >= TRUNC(SYSDATE) '
       //  + '           AND GESTOR = A.GESTOR '
       //  + '           AND ASOID = A.ASOID) '
         + ' ORDER BY A.GESTOR DESC, A.FEC_COMPROMISO ASC ';
   // Fin: DPP_201210_GESCOB

      DM1.cdsQry1.Close;
      DM1.cdsQry1.DataRequest(xsSQL);
      DM1.cdsQry1.Open;
      dbgAcuerdosIncumplidos.DataSource := DM1.dsQry1;

      With dbgAcuerdosIncumplidos, DM1.cdsQry1 Do
      Begin
         Selected.Clear;
         Selected.Add('GESTOR'#9'10'#9'GESTOR');
         Selected.Add('ASOAPENOMDNI'#9'20'#9'ASOCIADO');
         Selected.Add('ASOCODMOD'#9'10'#9'COD.MOD.');
         Selected.Add('TIPO_GESTION'#9'20'#9'TIPO GESTION');
         Selected.Add('GESTION'#9'20'#9'GESTION');
         Selected.Add('FEC_COMPROMISO'#9'10'#9'FECHA~COMPROMISO');
         Selected.Add('NEGOCIACION'#9'20'#9'NEGOCIACION');
      // Inicio: DPP_201210_GESCOB
         Selected.Add('OBSERVACIONES'#9'50'#9'OBSERVACIONES');
      // Fin: DPP_201210_GESCOB
         ApplySelected;

         ColumnByName('GESTOR').FooterValue := 'Registros';
         ColumnByName('ASOAPENOMDNI').FooterValue := FormatCurr('###,##0', recordcount);
      End;
   End;

   Procedure fn_cargar_promesas_pago_indifinidas();
   Begin
      xsSQL :=
         '   SELECT A.PERIODO, A.ASOID, A.IDGTN, A.IDGTNDET, A.GESTOR, E.ASOAPENOMDNI, E.ASOCODMOD, '
         + '        B.DESCRIPCION TIPO_GESTION, C.DESCRIPCION GESTION, A.FEC_CONTACTO, A.COMPROMISO, '
      // Inicio: DPP_201210_GESCOB
      // + '        A.FEC_COMPROMISO, A.COD_NEG, D.NEGOCIACION, SUBSTR(A.OBSERVACIONES, 1, 100) OBSERVACIONES, '
         + '        A.FEC_COMPROMISO, A.COD_NEG, D.NEGOCIACION, A.OBSERVACIONES OBSERVACIONES, '
      // Fin: DPP_201210_GESCOB
         + '        A.ESTADO '
         + '  FROM GES_COB_COMPROMISO A, GES_REF_SEG B, GES_REF_SEG_DET C, GES_COB_NEGOCIACION D, APO201 E '
         + ' WHERE A.PERIODO = ' + QuotedStr(self.xsPeriodo)
         + '   AND A.ESTADO = ''NUEVO'' '
         + '   AND A.COMPROMISO = ''N'' '
         + '   AND (TRUNC(A.FEC_CONTACTO) + 7) <= TRUNC(SYSDATE) '
         + xsSQlGestor
         + '   AND A.IDGTN = B.IDGTN '
         + '   AND A.IDGTNDET = C.IDGTNDET '
         + '   AND A.COD_NEG = D.COD_NEG '
         + '   AND A.ASOID = E.ASOID '
         + '   AND NOT EXISTS (SELECT ASOID '
         + '          FROM GES_COB_COMPROMISO '
         + '         WHERE PERIODO = ' + QuotedStr(self.xsPeriodo)
         + '           AND ESTADO = ''NUEVO'' '
         + '           AND COMPROMISO = ''S'' '
         + '           AND TRUNC(FEC_COMPROMISO) >= TRUNC(SYSDATE) '
         + '           AND GESTOR = A.GESTOR '
         + '           AND ASOID = A.ASOID) '
         + ' ORDER BY A.GESTOR, A.FEC_CONTACTO ';

      DM1.cdsQry2.Close;
      DM1.cdsQry2.DataRequest(xsSQL);
      DM1.cdsQry2.Open;
      dbgPromesasPagoIndefinidas.DataSource := DM1.dsQry2;

      With dbgPromesasPagoIndefinidas, DM1.cdsQry2 Do
      Begin
         Selected.Clear;
         Selected.Add('GESTOR'#9'10'#9'GESTOR');
         Selected.Add('ASOAPENOMDNI'#9'20'#9'ASOCIADO');
         Selected.Add('ASOCODMOD'#9'10'#9'COD.MOD.');
         Selected.Add('TIPO_GESTION'#9'20'#9'TIPO GESTION');
         Selected.Add('GESTION'#9'20'#9'GESTION');
         Selected.Add('FEC_CONTACTO'#9'20'#9'FECHA~CONTACTO');
         Selected.Add('NEGOCIACION'#9'20'#9'NEGOCIACION');
      // Inicio: DPP_201210_GESCOB
         Selected.Add('OBSERVACIONES'#9'50'#9'OBSERVACIONES');
      // Fin: DPP_201210_GESCOB

         ApplySelected;

         ColumnByName('GESTOR').FooterValue := 'Registros';
         ColumnByName('ASOAPENOMDNI').FooterValue := FormatCurr('###,##0', recordcount);
      End;
   End;

   Procedure fn_cargar_todas_negociaciones();
   Begin
      xsSQL :=
   // Inicio: DPP_201210_GESCOB
         '   SELECT A.PERIODO, A.ASOID, A.IDGTN, A.IDGTNDET, A.GESTOR, E.ASOAPENOMDNI, E.ASOCODMOD, '
         + '        B.DESCRIPCION TIPO_GESTION, C.DESCRIPCION GESTION, A.FEC_CONTACTO, A.COMPROMISO, '
         + '        A.FEC_COMPROMISO, A.COD_NEG, D.NEGOCIACION, A.OBSERVACIONES OBSERVACIONES, '
         + '        A.ESTADO, COD_COMPROMISO '
         + '  FROM GES_COB_COMPROMISO A, GES_REF_SEG B, GES_REF_SEG_DET C, GES_COB_NEGOCIACION D, APO201 E '
         + ' WHERE A.PERIODO = ' + QuotedStr(self.xsPeriodo)
         + xsSQlGestor
         + '   AND A.IDGTN = B.IDGTN '
         + '   AND A.IDGTNDET = C.IDGTNDET '
         + '   AND A.COD_NEG = D.COD_NEG '
         + '   AND A.ASOID = E.ASOID '
         //+ ' ORDER BY A.GESTOR DESC, A.FEC_COMPROMISO ASC ';
         + ' ORDER BY A.GESTOR, E.ASOAPENOMDNI, COD_COMPROMISO, A.FEC_COMPROMISO';
   // Fin: DPP_201210_GESCOB

      DM1.cdsQry3.Close;
      DM1.cdsQry3.DataRequest(xsSQL);
      DM1.cdsQry3.Open;
      dbgTodasNegociaciones.DataSource := DM1.dsQry3;

      With dbgTodasNegociaciones, DM1.cdsQry3 Do
      Begin
         Selected.Clear;
      // Inicio: DPP_201210_GESCOB
         Selected.Add('GESTOR'#9'13'#9'GESTOR');
         Selected.Add('ASOAPENOMDNI'#9'20'#9'ASOCIADO');
         Selected.Add('ASOCODMOD'#9'10'#9'COD.MOD.');
         Selected.Add('TIPO_GESTION'#9'18'#9'TIPO GESTION');
         Selected.Add('GESTION'#9'20'#9'GESTION');
         Selected.Add('FEC_GESTION'#9'10'#9'FECHA~GESTION');
         Selected.Add('COMPROMISO'#9'10'#9'Compromiso~S/N');
         Selected.Add('ESTADO'#9'11'#9'ESTADO');
         Selected.Add('FEC_COMPROMISO'#9'10'#9'FECHA~COMPROMISO');
         Selected.Add('NEGOCIACION'#9'20'#9'NEGOCIACION');
         Selected.Add('OBSERVACIONES'#9'50'#9'OBSERVACIONES');
      // Fin: DPP_201210_GESCOB

         ApplySelected;

         ColumnByName('GESTOR').FooterValue := 'Registros';
         ColumnByName('ASOAPENOMDNI').FooterValue := FormatCurr('###,##0', recordcount);
      End;

      // llenar el filtro
      xsSQL :=
         '   SELECT ''00'' COD_NEG, ''TODAS LAS NEGOCIACIONES'' NEGOCIACION, ''N'' COMPROMISO '
         + '   FROM DUAL '
         + ' UNION ALL '
         + ' SELECT COD_NEG, NEGOCIACION, COMPROMISO '
         + '   FROM GES_COB_NEGOCIACION '
         + '  ORDER BY COD_NEG ';
      DM1.cdsQry4.Close;
      DM1.cdsQry4.DataRequest(xsSQL);
      DM1.cdsQry4.Open;
      cbNegociacion.LookupTable := DM1.cdsQry4;
      cbNegociacion.LookupField := 'COD_NEG';

      cbNegociacion.Selected.Clear;
      cbNegociacion.Selected.Add('COD_NEG'#9'3'#9'CODIGO'#9'F');
      cbNegociacion.Selected.Add('NEGOCIACION'#9'27'#9'DESCRIPCIÓN'#9'F');
      cbNegociacion.Selected.Add('COMPROMISO'#9'3'#9'COMPROMISO'#9'F');

   // Inicio: DPP_201210_GESCOB
      xsSQL :=
         '   SELECT A.PERIODO, A.ASOID, A.IDGTN, A.IDGTNDET, A.GESTOR, E.ASOAPENOMDNI, E.ASOCODMOD, '
         + '        B.DESCRIPCION TIPO_GESTION, C.DESCRIPCION GESTION, A.FEC_CONTACTO, A.COMPROMISO, '
         + '        A.FEC_COMPROMISO, A.COD_NEG, D.NEGOCIACION, A.OBSERVACIONES OBSERVACIONES, '
         + '        A.ESTADO, cod_compromiso '
         + '  FROM GES_COB_COMPROMISO A, GES_REF_SEG B, GES_REF_SEG_DET C, GES_COB_NEGOCIACION D, APO201 E '
         + ' WHERE A.PERIODO = ' + QuotedStr(self.xsPeriodo)
         + xsSQlGestor
         + '   AND A.ESTADO=''CUMPLIDO'''
         + '   AND A.IDGTN = B.IDGTN '
         + '   AND A.IDGTNDET = C.IDGTNDET '
         + '   AND A.COD_NEG = D.COD_NEG '
         + '   AND A.ASOID = E.ASOID '
         + ' ORDER BY A.GESTOR, E.ASOAPENOMDNI, cod_compromiso, A.FEC_COMPROMISO';

      DM1.cdsQry5.Close;
      DM1.cdsQry5.DataRequest(xsSQL);
      DM1.cdsQry5.Open;
      dbgAcuerdosCumplidos.DataSource := DM1.dsQry5;

      With dbgAcuerdosCumplidos, DM1.cdsQry5 Do
      Begin
         Selected.Clear;
         Selected.Add('GESTOR'#9'13'#9'GESTOR');
         Selected.Add('ASOAPENOMDNI'#9'20'#9'ASOCIADO');
         Selected.Add('ASOCODMOD'#9'10'#9'COD.MOD.');
         Selected.Add('TIPO_GESTION'#9'18'#9'TIPO GESTION');
         Selected.Add('GESTION'#9'20'#9'GESTION');
         Selected.Add('FEC_GESTION'#9'10'#9'FECHA~GESTION');
         Selected.Add('COMPROMISO'#9'10'#9'Compromiso~S/N');
         Selected.Add('ESTADO'#9'11'#9'ESTADO');
         Selected.Add('FEC_COMPROMISO'#9'10'#9'FECHA~COMPROMISO');
         Selected.Add('NEGOCIACION'#9'20'#9'NEGOCIACION');
         Selected.Add('OBSERVACIONES'#9'50'#9'OBSERVACIONES');
         ApplySelected;

         ColumnByName('GESTOR').FooterValue := 'Registros';
         ColumnByName('ASOAPENOMDNI').FooterValue := FormatCurr('###,##0', recordcount);
      End;
   // Fin: DPP_201210_GESCOB
   End;

Begin

// Inicio: SPP_201305_GESCOB F4 periodo
   if sInicioPri='N' then pnlCab.Enabled:=False else pnlCab.Enabled:=True;
// Fin: SPP_201305_GESCOB
   Screen.Cursor := crHourGlass;

// Inicio: SPP_201305_GESCOB F4 periodo
{   xsPeriodo := DM1.fn_get_periodo_gestion_actual();

   cboPeriodoCartera.Text:=xsPeriodo;}
// Fin: SPP_201305_GESCOB

   If self.xsGestor = '' Then
      xsSQLGestor := ''
   Else
      xsSQLGestor := ' AND A.GESTOR = ' + QuotedStr(self.xsGestor);

   pcAlertas.ActivePage := tsAcuerdosIncumplidos;
   fn_cargar_acuerdos_incumplidos();

   pcAlertas.ActivePage := tsPromesasPagoIndefinidas;
   fn_cargar_promesas_pago_indifinidas();

   pcAlertas.ActivePage := tsTodasNegociaciones;
   fn_cargar_todas_negociaciones();
   cbNegociacion.Text := '00';
   cbNegociacionChange(cbNegociacion);

   Screen.Cursor := crDefault;
   pcAlertas.ActivePage := tsAcuerdosIncumplidos;
End;
*)

procedure TFrmAlertaAcuerdos.fn_cargar_todas_pestanhas();
Var
   xsSQL : String;
   xsSQLGestor : String;
   tsSheetActiva : TTabSheet;

   Procedure fn_cargar_acuerdos_incumplidos();
   Begin
   // Inicio: DPP_201210_GESCOB
      xsSQL :=
         '   SELECT A.PERIODO, A.ASOID, A.IDGTN, A.IDGTNDET, A.GESTOR, E.ASOAPENOMDNI, E.ASOCODMOD, '
         + '        B.DESCRIPCION TIPO_GESTION, C.DESCRIPCION GESTION, A.FEC_CONTACTO, A.COMPROMISO, '
         + '        A.FEC_COMPROMISO, A.COD_NEG, D.NEGOCIACION, A.OBSERVACIONES OBSERVACIONES, '
         + '        A.ESTADO, NVL(A.MONCOM,0) MONCOM '
         + '  FROM GES_COB_COMPROMISO A, GES_REF_SEG B, GES_REF_SEG_DET C, GES_COB_NEGOCIACION D, APO201 E '
         + ' WHERE A.PERIODO = ' + QuotedStr(self.xsPeriodo)
         + '   AND ( A.ESTADO = ''INCUMPLIDO'' OR A.ESTADO = ''NUEVO'' ) '
         + '   AND A.COMPROMISO = ''S'' '
         + '   AND TRUNC(A.FEC_COMPROMISO) < TRUNC(SYSDATE) '
         + xsSQlGestor
         + '   AND A.IDGTN = B.IDGTN '
         + '   AND A.IDGTNDET = C.IDGTNDET '
         + '   AND A.COD_NEG = D.COD_NEG '
         + '   AND A.ASOID = E.ASOID '
       //  + '   AND NOT EXISTS (SELECT ASOID '
       //  + '          FROM GES_COB_COMPROMISO '
       //  + '         WHERE PERIODO = ' + QuotedStr(self.xsPeriodo)
       //  + '           AND ESTADO = ''NUEVO'' '
       //  + '           AND COMPROMISO = ''S'' '
       //  + '           AND TRUNC(FEC_COMPROMISO) >= TRUNC(SYSDATE) '
       //  + '           AND GESTOR = A.GESTOR '
       //  + '           AND ASOID = A.ASOID) '
         + ' ORDER BY A.GESTOR DESC, A.FEC_COMPROMISO ASC ';
   // Fin: DPP_201210_GESCOB

      DM1.cdsQry1.Close;
      DM1.cdsQry1.DataRequest(xsSQL);
      DM1.cdsQry1.Open;
      dbgAcuerdosIncumplidos.DataSource := DM1.dsQry1;

      With dbgAcuerdosIncumplidos, DM1.cdsQry1 Do
      Begin
         Selected.Clear;
         Selected.Add('GESTOR'#9'10'#9'GESTOR');
         Selected.Add('ASOAPENOMDNI'#9'20'#9'ASOCIADO');
         Selected.Add('ASOCODMOD'#9'10'#9'COD.MOD.');
         Selected.Add('TIPO_GESTION'#9'20'#9'TIPO GESTION');
         Selected.Add('GESTION'#9'20'#9'GESTION');
         Selected.Add('FEC_COMPROMISO'#9'10'#9'FECHA~COMPROMISO');
         Selected.Add('NEGOCIACION'#9'20'#9'NEGOCIACION');
      // Inicio: DPP_201210_GESCOB
         Selected.Add('OBSERVACIONES'#9'50'#9'OBSERVACIONES');
      // Fin: DPP_201210_GESCOB
         Selected.Add('MONCOM'#9'10'#9'MONTO COMPROMISO');
         ApplySelected;

         ColumnByName('GESTOR').FooterValue := 'Registros';
         ColumnByName('ASOAPENOMDNI').FooterValue := FormatCurr('###,##0', recordcount);
      End;
   End;

   Procedure fn_cargar_promesas_pago_indifinidas();
   Begin
      xsSQL :=
         '   SELECT A.PERIODO, A.ASOID, A.IDGTN, A.IDGTNDET, A.GESTOR, E.ASOAPENOMDNI, E.ASOCODMOD, '
         + '        B.DESCRIPCION TIPO_GESTION, C.DESCRIPCION GESTION, A.FEC_CONTACTO, A.COMPROMISO, '
      // Inicio: DPP_201210_GESCOB
      // + '        A.FEC_COMPROMISO, A.COD_NEG, D.NEGOCIACION, SUBSTR(A.OBSERVACIONES, 1, 100) OBSERVACIONES, '
         + '        A.FEC_COMPROMISO, A.COD_NEG, D.NEGOCIACION, A.OBSERVACIONES OBSERVACIONES, '
      // Fin: DPP_201210_GESCOB
         + '        A.ESTADO, NVL(A.MONCOM,0) MONCOM '
         + '  FROM GES_COB_COMPROMISO A, GES_REF_SEG B, GES_REF_SEG_DET C, GES_COB_NEGOCIACION D, APO201 E '
         + ' WHERE A.PERIODO = ' + QuotedStr(self.xsPeriodo)
         + '   AND A.ESTADO = ''NUEVO'' '
         + '   AND A.COMPROMISO = ''N'' '
         + '   AND (TRUNC(A.FEC_CONTACTO) + 7) <= TRUNC(SYSDATE) '
         + xsSQlGestor
         + '   AND A.IDGTN = B.IDGTN '
         + '   AND A.IDGTNDET = C.IDGTNDET '
         + '   AND A.COD_NEG = D.COD_NEG '
         + '   AND A.ASOID = E.ASOID '
         + '   AND NOT EXISTS (SELECT ASOID '
         + '          FROM GES_COB_COMPROMISO '
         + '         WHERE PERIODO = ' + QuotedStr(self.xsPeriodo)
         + '           AND ESTADO = ''NUEVO'' '
         + '           AND COMPROMISO = ''S'' '
         + '           AND TRUNC(FEC_COMPROMISO) >= TRUNC(SYSDATE) '
         + '           AND GESTOR = A.GESTOR '
         + '           AND ASOID = A.ASOID) '
         + ' ORDER BY A.GESTOR, A.FEC_CONTACTO ';

      DM1.cdsQry2.Close;
      DM1.cdsQry2.DataRequest(xsSQL);
      DM1.cdsQry2.Open;
      dbgPromesasPagoIndefinidas.DataSource := DM1.dsQry2;

      With dbgPromesasPagoIndefinidas, DM1.cdsQry2 Do
      Begin
         Selected.Clear;
         Selected.Add('GESTOR'#9'10'#9'GESTOR');
         Selected.Add('ASOAPENOMDNI'#9'20'#9'ASOCIADO');
         Selected.Add('ASOCODMOD'#9'10'#9'COD.MOD.');
         Selected.Add('TIPO_GESTION'#9'20'#9'TIPO GESTION');
         Selected.Add('GESTION'#9'20'#9'GESTION');
         Selected.Add('FEC_CONTACTO'#9'20'#9'FECHA~CONTACTO');
         Selected.Add('NEGOCIACION'#9'20'#9'NEGOCIACION');
      // Inicio: DPP_201210_GESCOB
         Selected.Add('OBSERVACIONES'#9'50'#9'OBSERVACIONES');
      // Fin: DPP_201210_GESCOB
         Selected.Add('MONCOM'#9'10'#9'MONTO COMPROMISO');
         ApplySelected;

         ColumnByName('GESTOR').FooterValue := 'Registros';
         ColumnByName('ASOAPENOMDNI').FooterValue := FormatCurr('###,##0', recordcount);
      End;
   End;

   Procedure fn_cargar_todas_negociaciones();
   Begin
      xsSQL :=
   // Inicio: DPP_201210_GESCOB
         '   SELECT A.PERIODO, A.ASOID, A.IDGTN, A.IDGTNDET, A.GESTOR, E.ASOAPENOMDNI, E.ASOCODMOD, '
         + '        B.DESCRIPCION TIPO_GESTION, C.DESCRIPCION GESTION, A.FEC_CONTACTO, A.COMPROMISO, '
         + '        A.FEC_COMPROMISO, A.COD_NEG, D.NEGOCIACION, A.OBSERVACIONES OBSERVACIONES, '
         + '        A.ESTADO, COD_COMPROMISO, NVL(A.MONCOM,0) MONCOM '
         + '  FROM GES_COB_COMPROMISO A, GES_REF_SEG B, GES_REF_SEG_DET C, GES_COB_NEGOCIACION D, APO201 E '
         + ' WHERE A.PERIODO = ' + QuotedStr(self.xsPeriodo)
         + xsSQlGestor
         + '   AND A.IDGTN = B.IDGTN '
         + '   AND A.IDGTNDET = C.IDGTNDET '
         + '   AND A.COD_NEG = D.COD_NEG '
         + '   AND A.ASOID = E.ASOID '
         //+ ' ORDER BY A.GESTOR DESC, A.FEC_COMPROMISO ASC ';
         + ' ORDER BY A.GESTOR, E.ASOAPENOMDNI, COD_COMPROMISO, A.FEC_COMPROMISO';
   // Fin: DPP_201210_GESCOB

      DM1.cdsQry3.Close;
      DM1.cdsQry3.DataRequest(xsSQL);
      DM1.cdsQry3.Open;
      dbgTodasNegociaciones.DataSource := DM1.dsQry3;

      With dbgTodasNegociaciones, DM1.cdsQry3 Do
      Begin
         Selected.Clear;
      // Inicio: DPP_201210_GESCOB
         Selected.Add('GESTOR'#9'13'#9'GESTOR');
         Selected.Add('ASOAPENOMDNI'#9'20'#9'ASOCIADO');
         Selected.Add('ASOCODMOD'#9'10'#9'COD.MOD.');
         Selected.Add('TIPO_GESTION'#9'18'#9'TIPO GESTION');
         Selected.Add('GESTION'#9'20'#9'GESTION');
         Selected.Add('FEC_GESTION'#9'10'#9'FECHA~GESTION');
         Selected.Add('COMPROMISO'#9'10'#9'Compromiso~S/N');
         Selected.Add('ESTADO'#9'11'#9'ESTADO');
         Selected.Add('FEC_COMPROMISO'#9'10'#9'FECHA~COMPROMISO');
         Selected.Add('NEGOCIACION'#9'20'#9'NEGOCIACION');
         Selected.Add('OBSERVACIONES'#9'50'#9'OBSERVACIONES');
      // Fin: DPP_201210_GESCOB
         Selected.Add('MONCOM'#9'10'#9'MONTO COMPROMISO');
         ApplySelected;

         ColumnByName('GESTOR').FooterValue := 'Registros';
         ColumnByName('ASOAPENOMDNI').FooterValue := FormatCurr('###,##0', recordcount);
      End;

      // llenar el filtro
      xsSQL :=
         '   SELECT ''00'' COD_NEG, ''TODAS LAS NEGOCIACIONES'' NEGOCIACION, ''N'' COMPROMISO '
         + '   FROM DUAL '
         + ' UNION ALL '
         + ' SELECT COD_NEG, NEGOCIACION, COMPROMISO '
         + '   FROM GES_COB_NEGOCIACION '
         + '  ORDER BY COD_NEG ';
      DM1.cdsQry4.Close;
      DM1.cdsQry4.DataRequest(xsSQL);
      DM1.cdsQry4.Open;
      cbNegociacion.LookupTable := DM1.cdsQry4;
      cbNegociacion.LookupField := 'COD_NEG';

      cbNegociacion.Selected.Clear;
      cbNegociacion.Selected.Add('COD_NEG'#9'3'#9'CODIGO'#9'F');
      cbNegociacion.Selected.Add('NEGOCIACION'#9'27'#9'DESCRIPCIÓN'#9'F');
      cbNegociacion.Selected.Add('COMPROMISO'#9'3'#9'COMPROMISO'#9'F');

   // Inicio: DPP_201210_GESCOB
      xsSQL :=
         '   SELECT A.PERIODO, A.ASOID, A.IDGTN, A.IDGTNDET, A.GESTOR, E.ASOAPENOMDNI, E.ASOCODMOD, '
         + '        B.DESCRIPCION TIPO_GESTION, C.DESCRIPCION GESTION, A.FEC_CONTACTO, A.COMPROMISO, '
         + '        A.FEC_COMPROMISO, A.COD_NEG, D.NEGOCIACION, A.OBSERVACIONES OBSERVACIONES, '
         + '        A.ESTADO, cod_compromiso, NVL(A.MONCOM,0) MONCOM '
         + '  FROM GES_COB_COMPROMISO A, GES_REF_SEG B, GES_REF_SEG_DET C, GES_COB_NEGOCIACION D, APO201 E '
         + ' WHERE A.PERIODO = ' + QuotedStr(self.xsPeriodo)
         + xsSQlGestor
         + '   AND A.ESTADO=''CUMPLIDO'''
         + '   AND A.IDGTN = B.IDGTN '
         + '   AND A.IDGTNDET = C.IDGTNDET '
         + '   AND A.COD_NEG = D.COD_NEG '
         + '   AND A.ASOID = E.ASOID '
         + ' ORDER BY A.GESTOR, E.ASOAPENOMDNI, cod_compromiso, A.FEC_COMPROMISO';

      DM1.cdsQry5.Close;
      DM1.cdsQry5.DataRequest(xsSQL);
      DM1.cdsQry5.Open;
      dbgAcuerdosCumplidos.DataSource := DM1.dsQry5;

      With dbgAcuerdosCumplidos, DM1.cdsQry5 Do
      Begin
         Selected.Clear;
         Selected.Add('GESTOR'#9'13'#9'GESTOR');
         Selected.Add('ASOAPENOMDNI'#9'20'#9'ASOCIADO');
         Selected.Add('ASOCODMOD'#9'10'#9'COD.MOD.');
         Selected.Add('TIPO_GESTION'#9'18'#9'TIPO GESTION');
         Selected.Add('GESTION'#9'20'#9'GESTION');
         Selected.Add('FEC_GESTION'#9'10'#9'FECHA~GESTION');
         Selected.Add('COMPROMISO'#9'10'#9'Compromiso~S/N');
         Selected.Add('ESTADO'#9'11'#9'ESTADO');
         Selected.Add('FEC_COMPROMISO'#9'10'#9'FECHA~COMPROMISO');
         Selected.Add('NEGOCIACION'#9'20'#9'NEGOCIACION');
         Selected.Add('OBSERVACIONES'#9'50'#9'OBSERVACIONES');
         Selected.Add('MONCOM'#9'10'#9'MONTO COMPROMISO');
         ApplySelected;

         ColumnByName('GESTOR').FooterValue := 'Registros';
         ColumnByName('ASOAPENOMDNI').FooterValue := FormatCurr('###,##0', recordcount);
      End;
   // Fin: DPP_201210_GESCOB
   End;

Begin

// Inicio: SPP_201305_GESCOB F4 periodo
   if sInicioPri='N' then pnlCab.Enabled:=False else pnlCab.Enabled:=True;
   Screen.Cursor := crHourGlass;
   tsSheetActiva := pcAlertas.ActivePage;
// Inicio: SPP_201305_GESCOB F4 periodo
{   xsPeriodo := DM1.fn_get_periodo_gestion_actual();

   cboPeriodoCartera.Text:=xsPeriodo;}
// Fin: SPP_201305_GESCOB

   If self.xsGestor = '' Then
      xsSQLGestor := ''
   Else
      xsSQLGestor := ' AND A.GESTOR = ' + QuotedStr(self.xsGestor);

   pcAlertas.ActivePage := tsAcuerdosIncumplidos;
   fn_cargar_acuerdos_incumplidos();

   pcAlertas.ActivePage := tsPromesasPagoIndefinidas;
   fn_cargar_promesas_pago_indifinidas();

   pcAlertas.ActivePage := tsTodasNegociaciones;
   fn_cargar_todas_negociaciones();
   cbNegociacion.Text := '00';
   cbNegociacionChange(cbNegociacion);

   //cargar Indicadores de acuerdos incumplidos
   pcAlertas.ActivePage := tsAcuerdosIncumplidosInd;

   xsIndSQLUnivFiltro := ' SELECT DISTINCT CASE WHEN A.TIPO_CAMPANHA = ''CAMPAÑA'' THEN ''CAMPAÑA'' '
                 + '             WHEN A.TIPO_CAMPANHA <> ''CAMPAÑA'' AND NVL(NVL(C.OFIPRI, D.OFIPRI), F.OFIPRI) = ''01'' THEN ''LIMA'' '
                 + '             WHEN A.TIPO_CAMPANHA <> ''CAMPAÑA'' AND NVL(NVL(C.OFIPRI, D.OFIPRI), F.OFIPRI) <> ''01'' THEN ''PROVINCIA'' '
                 + '             ELSE ''NO IDENTIFICADO'' '
                 + '         END TIPO_CARTERA '
                 + '       ,NVL(NVL(B.OFDESID, A.OFDESID), E.OFDESID) OFDESID, NVL(NVL(C.OFDESNOM, D.OFDESNOM),F.OFDESNOM) OFDESNOM, A.USUARIO '
                 + '   FROM (SELECT PERIODO, USUARIO, NVL(TIPCAM,''NORMAL'') TIPO_CAMPANHA, OFDESID, UPROID, UPAGOID, USEID, ASOID '
                 + '           FROM GES_COB_DOM '
                 + '          WHERE CODIGO_REGLA IS NOT NULL AND PERIODO = ' + QuotedStr(self.xsPeriodo)
                 + '         UNION ALL '
                 + '         SELECT PERIODO, USUARIO, NVL(TIPCAM,''NORMAL'') TIPO_CAMPANHA, OFDESID, UPROID, UPAGOID, USEID, ASOID '
                 + '           FROM GES_COB_DOM_HIS '
                 + '          WHERE CODIGO_REGLA IS NOT NULL AND PERIODO = '+QuotedStr(self.xsPeriodo)
                 + '            AND NVL(ASIGNADO,''S'') = ''S'') A '
                    + '       ,(SELECT PERIODO, USUARIO, OFDESID, ASOID '
                    + '           FROM (SELECT PERIODO, USUARIO, OFDESID, ASOID '
                    + '                       ,DENSE_RANK() OVER(PARTITION BY PERIODO, ASOID ORDER BY NROGEST DESC, FECHA DESC, TO_DATE(HORA, ''HH24:MI:SS'') DESC) DNRK '
                    + '                   FROM GES_COB_SEG '
                    + '                  WHERE PERIODO = '+QuotedStr(self.xsPeriodo)+') '
                    + '          WHERE DNRK = 1) B '
                 + '       ,APO110 C, APO110 D, APO101 E, APO110 F '
                 + '  WHERE A.PERIODO = B.PERIODO(+) '
                 + '    AND A.USUARIO = B.USUARIO(+) '
                 + '    AND A.ASOID   = B.ASOID(+) '
                 + '    AND B.OFDESID = C.OFDESID(+) '
                 + '    AND A.OFDESID = D.OFDESID(+) '
                 + '    AND A.UPROID  = E.UPROID(+) '
                 + '    AND A.UPAGOID = E.UPAGOID(+) '
                 + '    AND A.USEID   = E.USEID(+) '
                 + '    AND E.OFDESID = F.OFDESID(+) ';
   If self.xsGestor <> '' Then
      xsIndSQLUnivFiltro := xsIndSQLUnivFiltro
                 + '    AND A.USUARIO = ' + QuotedStr(self.xsGestor);

   // valida si existen regisstros para mostrar
   xsSQL := 'SELECT COUNT(USUARIO) CANT FROM ( '
          + xsIndSQLUnivFiltro
          + ')';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xsSQL);
   DM1.cdsQry.Open;
   if DM1.cdsQry.FieldByName('CANT').AsInteger = 0 then
   begin
      pnlIndFiltro.Enabled := false;
      lblIndMsg.Caption := 'NO EXISTEN COMPROMISOS REGISTRADOS';
   end
   else
   begin
      pnlIndFiltro.Enabled := true;
      lblIndMsg.Caption := '';
      xsSQL := '';
      If self.xsGestor = '' Then
        xsSQL := ' SELECT ''TODOS'' CODIGO, ''-- TODOS --'' DESCRIPCION FROM DUAL '
               + ' UNION ALL ';
      xsSQL :=   ' SELECT CODIGO, DESCRIPCION FROM( '
               + xsSQL
               + ' SELECT CODIGO, DESCRIPCION FROM ('
               + ' SELECT DISTINCT TIPO_CARTERA CODIGO, TIPO_CARTERA DESCRIPCION FROM ( '
               + xsIndSQLUnivFiltro
               + ' ) '
               + ' ) '
               + ' ) ORDER BY DESCRIPCION ';

      DM1.cdsQry6.Close;
      DM1.cdsQry6.DataRequest(xsSQL);
      DM1.cdsQry6.Open;
      dblcTipoCartera.LookupTable := DM1.cdsQry6;
      dblcTipoCartera.LookupField := 'CODIGO';
      dblcTipoCartera.Selected.Clear;
      dblcTipoCartera.Selected.Add('DESCRIPCION'#9'70'#9'DESCRIPCION');
      DM1.cdsQry6.First;
      dblcTipoCartera.Text := DM1.cdsQry6.fieldbyname('DESCRIPCION').asstring;
   end;

   Screen.Cursor := crDefault;
   pcAlertas.ActivePage := tsSheetActiva;

end;
(******************************************************************************)
Procedure TFrmAlertaAcuerdos.btnSalirClick(Sender : TObject);
Begin
   self.Close;
End;
(******************************************************************************)
Procedure TFrmAlertaAcuerdos.FormShow(Sender : TObject);
Var
   xsSQL : String;
Begin
   xsSQL:='SELECT PERIODO FROM GES_COB_COMPROMISO A GROUP BY PERIODO ORDER BY PERIODO DESC';
   DM1.cdsQry15.Close;
   DM1.cdsQry15.DataRequest(xsSQL);
   DM1.cdsQry15.Open;
   cboPeriodoCartera.LookupTable := DM1.cdsQry15;
   cboPeriodoCartera.LookupField := 'PERIODO';

   cboPeriodoCartera.Selected.Clear;
   cboPeriodoCartera.Selected.Add('PERIODO'#9'8'#9'Periodo');

   xsPeriodo := DM1.fn_get_periodo_gestion_actual();

   cboPeriodoCartera.Text:=xsPeriodo;

   pcAlertas.ActivePage := tsAcuerdosIncumplidosInd;

End;
// FIN : SPP_201402_GESCOB
(******************************************************************************)

Procedure TFrmAlertaAcuerdos.btnExportarClick(Sender : TObject);

   Procedure fn_exportar_acuerdos_incumplidos();
   Begin
      Screen.Cursor := crHourGlass;
      Try
         With dbgAcuerdosIncumplidos, dbgAcuerdosIncumplidos.ExportOptions Do
         Begin
            ExportType := wwgetSYLK;
            FileName := 'ACUINC.slk';
            DM1.OpcionesExportExcel(dbgAcuerdosIncumplidos.ExportOptions);
            dbgAcuerdosIncumplidos.ExportOptions.TitleName := 'ACUINC';
            Save;
            If Not (esoClipboard In Options) Then
               ShellExecute(Handle, 'Open', PChar(dbgAcuerdosIncumplidos.exportoptions.Filename), Nil, Nil, sw_shownormal);
         End;
         Screen.Cursor := crDefault;
      Except
         Screen.Cursor := crDefault;
         showmessage('No se puede grabar el Archivo ' + chr(13) + 'Cierre todos los Archivos en Excel y vuelva a intentarlo');
      End;
   End;

   Procedure fn_exportar_promesas_pago_indifinidas();
   Begin
      Screen.Cursor := crHourGlass;
      Try
         With dbgPromesasPagoIndefinidas, dbgPromesasPagoIndefinidas.ExportOptions Do
         Begin
            ExportType := wwgetSYLK;
            FileName := 'ACUIND.slk';
            DM1.OpcionesExportExcel(dbgPromesasPagoIndefinidas.ExportOptions);
            dbgPromesasPagoIndefinidas.ExportOptions.TitleName := 'ACUIND';
            Save;
            If Not (esoClipboard In Options) Then
               ShellExecute(Handle, 'Open', PChar(dbgPromesasPagoIndefinidas.exportoptions.Filename), Nil, Nil, sw_shownormal);
         End;
         Screen.Cursor := crDefault;
      Except
         Screen.Cursor := crDefault;
         showmessage('No se puede grabar el Archivo ' + chr(13) + 'Cierre todos los Archivos en Excel y vuelva a intentarlo');
      End;
   End;

   Procedure fn_exportar_todas_negociaciones();
   Begin
      Screen.Cursor := crHourGlass;
      Try
         With dbgTodasNegociaciones, dbgTodasNegociaciones.ExportOptions Do
         Begin
            ExportType := wwgetSYLK;
            FileName := 'TODNEG.slk';
            DM1.OpcionesExportExcel(dbgTodasNegociaciones.ExportOptions);
            dbgTodasNegociaciones.ExportOptions.TitleName := 'TODNEG';
            Save;
            If Not (esoClipboard In Options) Then
               ShellExecute(Handle, 'Open', PChar(dbgTodasNegociaciones.exportoptions.Filename), Nil, Nil, sw_shownormal);
         End;
         Screen.Cursor := crDefault;
      Except
         Screen.Cursor := crDefault;
         showmessage('No se puede grabar el Archivo ' + chr(13) + 'Cierre todos los Archivos en Excel y vuelva a intentarlo');
      End;
   End;

// Inicio: DPP_201210_GESCOB
   Procedure fn_exportar_negociaciones_Cumplidas();
   Begin
      Screen.Cursor := crHourGlass;
      Try
         With dbgAcuerdosCumplidos, dbgAcuerdosCumplidos.ExportOptions Do
         Begin
            ExportType := wwgetSYLK;
            FileName := 'ACUCUM.slk';
            DM1.OpcionesExportExcel(dbgAcuerdosCumplidos.ExportOptions);
            dbgAcuerdosCumplidos.ExportOptions.TitleName := 'ACUCUM';
            Save;
            If Not (esoClipboard In Options) Then
               ShellExecute(Handle, 'Open', PChar(dbgAcuerdosCumplidos.exportoptions.Filename), Nil, Nil, sw_shownormal);
         End;
         Screen.Cursor := crDefault;
      Except
         Screen.Cursor := crDefault;
         showmessage('No se puede grabar el Archivo ' + chr(13) + 'Cierre todos los Archivos en Excel y vuelva a intentarlo');
      End;
// Fin: DPP_201210_GESCOB
   End;
   // INICIO : SPP_201402_GESCOB
   PROCEDURE fn_exportar_Ind_Acuerdos_Incumplidos();
   begin
      Screen.Cursor := crHourGlass;

      DM1.cdsQry10.Close;
      DM1.cdsQry10.DataRequest(xsIndSQLUnivDatos);
      DM1.cdsQry10.Open;
      dbgIndAcuerdosIncumplidos.DataSource := DM1.dsQry10;
      With dbgIndAcuerdosIncumplidos, DM1.cdsQry10 Do
      Begin
           Selected.Clear;
           Selected.Add('ASOTIPID'#9'20'#9'TIPO_DOCENTE');
           Selected.Add('ASOCODMOD'#9'20'#9'CODIGO_MODULAR');
           Selected.Add('ASOAPENOM'#9'20'#9'APELLIDOS_NOMBRES');
           Selected.Add('ASODIR'#9'20'#9'DIRECCION');
           Selected.Add('ASOTELF1'#9'20'#9'TELEFONO');
           Selected.Add('FECHA_CONTACTO_COMPROMISO'#9'20'#9'FECHA_GESTION');
           Selected.Add('TIPO_GESTION'#9'20'#9'TIPO_GESTION');
           Selected.Add('GESTION_REALIZADA'#9'20'#9'GESTION_REALIZADA');
           Selected.Add('DISOPE'#9'20'#9'DISTRIBUCION_OPERATIVA');
           Selected.Add('USUARIO'#9'20'#9'USUARIO');
           Selected.Add('MONTO_COMPROMISO'#9'20'#9'MONTO_COMPROMISO');
           Selected.Add('MONTO_PAGADO'#9'20'#9'MONTO_PAGADO');
           Selected.Add('CUOTA_PACTADA'#9'20'#9'CUOTA_PACTADA');
           Selected.Add('ESTADO_ACUERDO'#9'20'#9'ESTADO_ACUERDO');
           ApplySelected;
      End;

      Try
         With dbgIndAcuerdosIncumplidos, dbgIndAcuerdosIncumplidos.ExportOptions Do
         Begin
            ExportType := wwgetSYLK;
            FileName := 'INDACUINC.slk';
            DM1.OpcionesExportExcel(dbgIndAcuerdosIncumplidos.ExportOptions);
            dbgIndAcuerdosIncumplidos.ExportOptions.TitleName := 'INDACUINC';
            Save;
            If Not (esoClipboard In Options) Then
               ShellExecute(Handle, 'Open', PChar(dbgIndAcuerdosIncumplidos.exportoptions.Filename), Nil, Nil, sw_shownormal);
         End;
         Screen.Cursor := crDefault;
      Except
         Screen.Cursor := crDefault;
         showmessage('No se puede grabar el Archivo ' + chr(13) + 'Cierre todos los Archivos en Excel y vuelva a intentarlo');
      End;
   end;
   // FIN : SPP_201402_GESCOB
Begin
   If pcAlertas.ActivePage = tsAcuerdosIncumplidos Then
      fn_exportar_acuerdos_incumplidos();
   If pcAlertas.ActivePage = tsPromesasPagoIndefinidas Then
      fn_exportar_promesas_pago_indifinidas();
   If pcAlertas.ActivePage = tsTodasNegociaciones Then
      fn_exportar_todas_negociaciones();
// Inicio: DPP_201210_GESCOB
   If pcAlertas.ActivePage = tsNegociacionesCumplidas Then
      fn_exportar_negociaciones_Cumplidas();
// Fin: DPP_201210_GESCOB
   // INICIO : SPP_201402_GESCOB
   If pcAlertas.ActivePage = tsAcuerdosIncumplidosInd Then
      fn_exportar_Ind_Acuerdos_Incumplidos();
   // FIN : SPP_201402_GESCOB
End;

(******************************************************************************)

Procedure TFrmAlertaAcuerdos.btnImprimirClick(Sender : TObject);

   Procedure fn_imprimir_acuerdos_incumplidos();
   Begin
      showmessage('implementando');
   End;

   Procedure fn_imprimir_promesas_pago_indifinidas();
   Begin
      showmessage('implementando');
   End;
Begin
   If pcAlertas.ActivePage = tsAcuerdosIncumplidos Then
      fn_imprimir_acuerdos_incumplidos();
   If pcAlertas.ActivePage = tsPromesasPagoIndefinidas Then
      fn_imprimir_promesas_pago_indifinidas();
End;
(******************************************************************************)

Procedure TFrmAlertaAcuerdos.cbNegociacionChange(Sender : TObject);
Begin
   If DM1.cdsQry4.Locate('COD_NEG', VarArrayof([cbNegociacion.text]), []) Then
   Begin
      edtNegociacion.Text := DM1.cdsQry4.FieldByName('NEGOCIACION').Asstring + '( COMPROMISO : ' + DM1.cdsQry4.FieldByName('COMPROMISO').Asstring + ' )';
   End
   Else
   Begin
      Beep;
      edtNegociacion.Text := '';
   End;
   DM1.cdsQry3.Filtered := False;
   If cbNegociacion.text <> '00' Then
   Begin
      DM1.cdsQry3.Filter := 'COD_NEG=''' + cbNegociacion.text + '''';
      DM1.cdsQry3.Filtered := true;
   End;
   dbgTodasNegociaciones.ColumnByName('ASOAPENOMDNI').FooterValue := FormatCurr('###,##0', DM1.cdsQry3.recordcount);
End;
(******************************************************************************)
// Inicio: DPP_201210_GESCOB
procedure TFrmAlertaAcuerdos.dbgTodasNegociacionesTitleButtonClick(
  Sender: TObject; AFieldName: String);
begin
   IF AFieldName='GESTOR' THEN
      DM1.cdsQry3.IndexFieldNames:='GESTOR; ASOAPENOMDNI; COD_COMPROMISO; FEC_COMPROMISO';
   IF AFieldName='ASOAPENOMDNI' THEN
      DM1.cdsQry3.IndexFieldNames:='ASOAPENOMDNI; COD_COMPROMISO';
   IF AFieldName='ASOCODMOD' THEN
      DM1.cdsQry3.IndexFieldNames:='ASOCODMOD; COD_COMPROMISO';
   IF AFieldName='TIPO_GESTION' THEN
      DM1.cdsQry3.IndexFieldNames:='TIPO_GESTION; ASOAPENOMDNI; COD_COMPROMISO';
end;
// Fin: DPP_201210_GESCOB
// Inicio: SPP_201305_GESCOB F4 periodo
// INICIO : SPP_201402_GESCOB
(*
procedure TFrmAlertaAcuerdos.FormCreate(Sender: TObject);
Var
   xsSQL : String;
Begin
   xsSQL:='SELECT PERIODO FROM GES_COB_COMPROMISO A GROUP BY PERIODO ORDER BY PERIODO DESC';
   DM1.cdsQry15.Close;
   DM1.cdsQry15.DataRequest(xsSQL);
   DM1.cdsQry15.Open;
   cboPeriodoCartera.LookupTable := DM1.cdsQry15;
   cboPeriodoCartera.LookupField := 'PERIODO';

   cboPeriodoCartera.Selected.Clear;
   cboPeriodoCartera.Selected.Add('PERIODO'#9'8'#9'Periodo');

   xsPeriodo := DM1.fn_get_periodo_gestion_actual();

   cboPeriodoCartera.Text:=xsPeriodo;

end;
*)
// FIN : SPP_201402_GESCOB
// Fin: SPP_201305_GESCOB
(******************************************************************************)
// Inicio: SPP_201305_GESCOB F4 periodo
procedure TFrmAlertaAcuerdos.cboPeriodoCarteraChange(Sender: TObject);
begin
   xsPeriodo:=cboPeriodoCartera.Text;
   // INICIO : SPP_201402_GESCOB
   fn_cargar_todas_pestanhas();
   //FormShow(Sender);
   // FIN : SPP_201402_GESCOB
end;
// Fin: SPP_201305_GESCOB
// INICIO : SPP_201402_GESCOB
(******************************************************************************)
procedure TFrmAlertaAcuerdos.dblcTipoCarteraChange(Sender: TObject);
var xsSQL : string;
begin
     xsSQL := '';
     If self.xsGestor = '' Then
        xsSQL := ' SELECT ''TODOS'' CODIGO, ''-- TODOS --'' DESCRIPCION FROM DUAL '
               + ' UNION ALL ';
     xsSQL := ' SELECT CODIGO, DESCRIPCION FROM( '
            + xsSQL
            + ' SELECT CODIGO, DESCRIPCION FROM ('
            + ' SELECT DISTINCT OFDESID  CODIGO, OFDESNOM DESCRIPCION FROM ( '
            + xsIndSQLUnivFiltro
            + ' ) '
            + ' WHERE TIPO_CARTERA = ' + QuotedStr(DM1.cdsQry6.fieldbyname('CODIGO').AsString)
            + ' )'
            + ' ) ORDER BY DESCRIPCION ';
     DM1.cdsQry7.Close;
     DM1.cdsQry7.DataRequest(xsSQL);
     DM1.cdsQry7.Open;
     dblcOrigenGestor.LookupTable := DM1.cdsQry7;
     dblcOrigenGestor.LookupField := 'CODIGO';
     dblcOrigenGestor.Selected.Clear;
     dblcOrigenGestor.Selected.Add('DESCRIPCION'#9'70'#9'DESCRIPCION');
     DM1.cdsQry7.First;
     dblcOrigenGestor.Text := DM1.cdsQry7.fieldbyname('DESCRIPCION').asstring;
     pnlIndOrigenGestor.Visible := NOT(DM1.cdsQry6.fieldbyname('CODIGO').AsString = 'TODOS');

end;
(******************************************************************************)
procedure TFrmAlertaAcuerdos.dblcOrigenGestorChange(Sender: TObject);
var xsSQL : string;
begin
     xsSQL := '';
     If self.xsGestor = '' Then
        xsSQL := ' SELECT ''TODOS'' CODIGO, ''-- TODOS --'' DESCRIPCION FROM DUAL '
               + ' UNION ALL ';
     xsSQL := ' SELECT CODIGO, DESCRIPCION FROM( '
            + xsSQL
            + ' SELECT CODIGO, DESCRIPCION FROM ('
            + ' SELECT DISTINCT USUARIO  CODIGO, USUARIO DESCRIPCION FROM ( '
            + xsIndSQLUnivFiltro
            + ' ) '
            + ' WHERE TIPO_CARTERA = ' + QuotedStr(DM1.cdsQry6.fieldbyname('CODIGO').AsString)
            + '   AND OFDESID = ' + QuotedStr(DM1.cdsQry7.fieldbyname('CODIGO').AsString)
            + ' )'
            + ' ) ORDER BY DESCRIPCION ';
     DM1.cdsQry8.Close;
     DM1.cdsQry8.DataRequest(xsSQL);
     DM1.cdsQry8.Open;
     dblcGestor.LookupTable := DM1.cdsQry8;
     dblcGestor.LookupField := 'CODIGO';
     dblcGestor.Selected.Clear;
     dblcGestor.Selected.Add('DESCRIPCION'#9'70'#9'DESCRIPCION');
     DM1.cdsQry8.First;
     dblcGestor.Text := DM1.cdsQry8.fieldbyname('DESCRIPCION').asstring;
     IF self.xsGestor = '' THEN
       pnIndGestor.Visible := NOT(DM1.cdsQry7.fieldbyname('CODIGO').AsString = 'TODOS')
     ELSE
       pnIndGestor.Visible := false;
end;
(******************************************************************************)
procedure TFrmAlertaAcuerdos.dblcGestorChange(Sender: TObject);
begin
    IF ((dblcTipoCartera.Text <> '') AND (dblcOrigenGestor.Text <> '') AND (dblcGestor.Text <> '')) THEN
        fn_ind_acu_inc_cargar_datos();
end;
(******************************************************************************)
PROCEDURE TFrmAlertaAcuerdos.fn_ind_acu_inc_cargar_datos();
var xsSQL:string;
begin
    Screen.Cursor := crHourGlass;
    // INICIO : HPC_201501_GESCOB
    xsIndSQLUnivDatos := 'SELECT TIPO_CARTERA, OFDESID, OFDESNOM, USUARIO, ASOID, GESTIONADO, COMPROMISO_PAGO, MONTO_COMPROMISO, FECHA_COMPROMISO, FECHA_CONTACTO_COMPROMISO, MONTO_PAGADO, CUOTA_PACTADA '
                    + '      ,ASOTIPID, ASOAPENOM, ASOCODMOD, ASODIR, ASOTELF1 '
                    + '      ,(SELECT MAX(DISOPE) DISOPE'
                    + '          FROM (SELECT D.DISOPE '
                    + '                       ,E.ASOID '
                    + '                  FROM (SELECT PERIODO, ASOID, CFC_F, SALDOS_FT, SALDOS_FV FROM GES000 WHERE PERIODO = ' + QuotedStr(self.xsPeriodo)
                    + '                        UNION '
                    + '                        SELECT PERIODO, ASOID, CFC_F, SALDOS_FT, SALDOS_FV FROM GES000_HIS WHERE PERIODO = ' + QuotedStr(self.xsPeriodo)
                    + '                       )E '
                    + '                       ,(SELECT A.ASOID, A.PERIODO, B.DISOPELAG DISOPE '
                    + '                           FROM GES000_MOD_PRO A, GES_COB_DIS_OPE_CAB B '
                    + '                          WHERE A.PERIODO = ' + QuotedStr(self.xsPeriodo)
                    + '                            AND A.CODDISOPE = B.CODDISOPE '
                    + '                          UNION '
                    + '                         SELECT A.ASOID, A.PERIODO, B.DISOPELAG DISOPE '
                    + '                           FROM GES000_MOD_PRO_HIS A, GES_COB_DIS_OPE_CAB B '
                    + '                          WHERE A.PERIODO = ' + QuotedStr(self.xsPeriodo)
                    + '                            AND A.CODDISOPE = B.CODDISOPE ) D '
                    + '                 WHERE E.PERIODO = '  + QuotedStr(self.xsPeriodo)
                    + '                   AND E.ASOID = D.ASOID(+) '
                    + '                   AND E.PERIODO = D.PERIODO(+)) '
                    + '        WHERE ASOID = UNIVERSO.ASOID '
                    + '       )DISOPE '
                    + '      ,TIPO_GESTION, GESTION_REALIZADA '
                    + '      ,CASE WHEN MONTO_PAGADO > 0 THEN ''CUMPLIDO'' '
                    + '            WHEN (MONTO_PAGADO = 0) AND (TRUNC(SYSDATE) > FECHA_COMPROMISO) THEN ''INCUMPLIDO'' '
                    + '            WHEN (MONTO_PAGADO = 0) AND (TRUNC(SYSDATE) BETWEEN (FECHA_COMPROMISO - 3) AND FECHA_COMPROMISO) THEN ''MUY PROXIMO VENCER'' '
                    + '            WHEN (MONTO_PAGADO = 0) AND (TRUNC(SYSDATE) < (FECHA_COMPROMISO - 3)) THEN ''PROXIMO VENCER'' '
                    + '        END ESTADO_ACUERDO '
                    + ' FROM ('
                    + ' SELECT CASE WHEN A.TIPO_CAMPANHA = ''CAMPAÑA'' THEN ''CAMPAÑA'' '
                    + '             WHEN A.TIPO_CAMPANHA <> ''CAMPAÑA'' AND NVL(NVL(C.OFIPRI, D.OFIPRI), F.OFIPRI) = ''01'' THEN ''LIMA'' '
                    + '             WHEN A.TIPO_CAMPANHA <> ''CAMPAÑA'' AND NVL(NVL(C.OFIPRI, D.OFIPRI), F.OFIPRI) <> ''01'' THEN ''PROVINCIA'' '
                    + '             ELSE ''NO IDENTIFICADO'' '
                    + '        END TIPO_CARTERA '
                    + '       ,NVL(NVL(B.OFDESID, A.OFDESID), E.OFDESID) OFDESID '
                    + '       ,NVL(NVL(C.OFDESNOM, D.OFDESNOM), F.OFDESNOM) OFDESNOM '
                    + '       ,A.USUARIO ,A.ASOID '
                    + '       ,CASE WHEN B.ASOID IS NOT NULL THEN ''GESTIONADO'' ELSE ''NO GESTIONADO'' END GESTIONADO '
                    + '       ,CASE WHEN G.ASOID IS NOT NULL THEN ''CON COMPROMISO'' ELSE ''SIN COMPROMISO'' END COMPROMISO_PAGO '
                    + '       ,NVL(G.MONCOM, 0) MONTO_COMPROMISO '
                    + '       ,G.FEC_COMPROMISO FECHA_COMPROMISO '
                    + '       ,G.FEC_CONTACTO FECHA_CONTACTO_COMPROMISO '
                    + '       ,NVL((SELECT SUM(CREMTOCOB) MONTO_PAGADO '
                    + '              FROM CRE310 C '
                    + '             WHERE CREESTID NOT IN (''23'', ''04'', ''13'', ''99'') '
                    + '               AND FORPAGID IN (''02'', ''03'') '
                    + '               AND FREG BETWEEN G.FEC_CONTACTO AND LAST_DAY(ADD_MONTHS(TO_DATE('+QuotedStr(self.xsPeriodo)+', ''YYYYMM''), 1)) '
                    + '               AND ASOID = A.ASOID), 0) MONTO_PAGADO '
                    + '       ,NVL(H.CUOTA_PACTADA, 0) CUOTA_PACTADA '
                    + '       ,ASOTIPID, ASOAPENOM, ASOCODMOD, ASODIR, ASOTELF1, TIPO_GESTION, GESTION_REALIZADA '
                    + '   FROM (SELECT PERIODO, USUARIO, NVL(TIPCAM, ''NORMAL'') TIPO_CAMPANHA, OFDESID, UPROID, UPAGOID, USEID, ASOID, ASOTIPID, ASOAPENOM '
                    + '           FROM GES_COB_DOM '
                    + '          WHERE CODIGO_REGLA IS NOT NULL AND PERIODO = ' + QuotedStr(self.xsPeriodo)
                    + '         UNION ALL '
                    + '         SELECT PERIODO, USUARIO, NVL(TIPCAM, ''NORMAL'') TIPO_CAMPANHA, OFDESID, UPROID, UPAGOID, USEID, ASOID, ASOTIPID, ASOAPENOM '
                    + '           FROM GES_COB_DOM_HIS '
                    + '          WHERE CODIGO_REGLA IS NOT NULL AND PERIODO = ' + QuotedStr(self.xsPeriodo)
                    + '            AND NVL(ASIGNADO, ''S'') = ''S'') A '
                    + '       ,(SELECT PERIODO, USUARIO, OFDESID, ASOID, TIPO_GESTION, GESTION_REALIZADA '
                    + '           FROM (SELECT A.PERIODO, A.USUARIO, A.OFDESID, A.ASOID, B.DESCRIPCION TIPO_GESTION, C.DESCRIPCION GESTION_REALIZADA '
                    + '                       ,DENSE_RANK() OVER(PARTITION BY A.PERIODO, A.ASOID ORDER BY A.NROGEST DESC, A.FECHA DESC, TO_DATE(A.HORA, ''HH24:MI:SS'') DESC) DNRK '
                    + '                   FROM GES_COB_SEG A, GES_REF_SEG B, GES_REF_SEG_DET C'
                    + '                  WHERE A.PERIODO = ' + QuotedStr(self.xsPeriodo)
                    + '                    AND A.IDGESTION = B.IDGTN(+) '
                    + '                    AND A.IDGESTION = C.IDGTN(+) '
                    + '                    AND A.IDGESTIONDET = C.IDGTNDET(+) '
                    + '                 ) '
                    + '          WHERE DNRK = 1) B '
                    + '       ,APO110 C, APO110 D, APO101 E, APO110 F '
                    + '       ,(SELECT PERIODO, ASOID, MONCOM, FEC_COMPROMISO, FEC_CONTACTO, USUARIO '
                    + '           FROM (SELECT PERIODO, ASOID, MONCOM, FEC_COMPROMISO, FEC_CONTACTO, GESTOR USUARIO '
                    + '                       ,DENSE_RANK() OVER(PARTITION BY ASOID ORDER BY FEC_COMPROMISO DESC, FREG DESC) DNRK '
                    + '                   FROM GES_COB_COMPROMISO '
                    + '                  WHERE COMPROMISO = ''S'' '
                    + '                    AND PERIODO = '+QuotedStr(self.xsPeriodo)+') '
                    + '          WHERE DNRK = 1) G '
                    + '       ,(SELECT ASOID, SUM(CRECUOTA) CUOTA_PACTADA '
                    + '           FROM CRE301 '
                    + '          WHERE CREESTID = ''02'' '
                    + '          GROUP BY ASOID) H '
                    + '       ,(SELECT ASOID, ASOCODMOD, ASODIR, ASOTELF1 '
                    + '           FROM APO201 ) I '
                    + '  WHERE A.PERIODO = B.PERIODO(+) '
                    + '    AND A.USUARIO = B.USUARIO(+) '
                    + '    AND A.ASOID = B.ASOID(+) '
                    + '    AND B.OFDESID = C.OFDESID(+) '
                    + '    AND A.OFDESID = D.OFDESID(+) '
                    + '    AND A.UPROID = E.UPROID(+) '
                    + '    AND A.UPAGOID = E.UPAGOID(+) '
                    + '    AND A.USEID = E.USEID(+) '
                    + '    AND E.OFDESID = F.OFDESID(+) '
                    + '    AND A.PERIODO = G.PERIODO(+) '
                    + '    AND A.USUARIO = G.USUARIO(+) '
                    + '    AND A.ASOID = G.ASOID(+) '
                    + '    AND A.ASOID = H.ASOID(+) '
                    + '    AND A.ASOID = I.ASOID(+) '
                    + ') UNIVERSO '
                    + ' WHERE '
                    + ' TIPO_CARTERA = CASE WHEN ' + QuotedStr(DM1.cdsQry6.fieldbyname('CODIGO').AsString) + ' = ''TODOS'' THEN TIPO_CARTERA ELSE ' + QuotedStr(DM1.cdsQry6.fieldbyname('CODIGO').AsString) + ' END '
                    + ' AND OFDESID  = CASE WHEN ' + QuotedStr(DM1.cdsQry7.fieldbyname('CODIGO').AsString) + ' = ''TODOS'' THEN OFDESID      ELSE ' + QuotedStr(DM1.cdsQry7.fieldbyname('CODIGO').AsString) + ' END '
                    + ' AND USUARIO  = CASE WHEN ' + QuotedStr(DM1.cdsQry8.fieldbyname('CODIGO').AsString) + ' = ''TODOS'' THEN USUARIO      ELSE ' + QuotedStr(DM1.cdsQry8.fieldbyname('CODIGO').AsString) + ' END ';
    //ASIGNACIONES
    xsSQL := 'SELECT COUNT (ASOID) CANT_ASIGNACIONES FROM ( '
           + xsIndSQLUnivDatos
           + ') ';
   // FIN : HPC_201501_GESCOB
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xsSQL);
   DM1.cdsQry.Open;
   lblIndAsignados.caption := DM1.FormatoNumerosEnteros(DM1.cdsQry.fieldbyname('CANT_ASIGNACIONES').asstring);


   // GESTIONES
    xsSQL := 'SELECT COUNT (ASOID) CANT_GESTIONES FROM ( '
           + xsIndSQLUnivDatos
           + ' ) WHERE GESTIONADO = ''GESTIONADO'' ';

   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xsSQL);
   DM1.cdsQry.Open;
   lblIndGestionados.caption := DM1.FormatoNumerosEnteros(DM1.cdsQry.fieldbyname('CANT_GESTIONES').asstring);

   // COMPROMISOS DE PAGO
    xsSQL := 'SELECT COUNT (ASOID) CANT_COMPROMISOS FROM ( '
           + xsIndSQLUnivDatos
           + ' ) WHERE GESTIONADO = ''GESTIONADO'' AND COMPROMISO_PAGO = ''CON COMPROMISO'' ';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xsSQL);
   DM1.cdsQry.Open;
   lblIndCompromisoPago.caption := DM1.FormatoNumerosEnteros(DM1.cdsQry.fieldbyname('CANT_COMPROMISOS').asstring);


    xsSQL := 'SELECT TIPO_CARTERA, OFDESID, OFDESNOM, USUARIO '
           + '      ,ASOID, GESTIONADO, COMPROMISO_PAGO, MONTO_COMPROMISO '
           + '      ,FECHA_COMPROMISO, FECHA_CONTACTO_COMPROMISO, MONTO_PAGADO, CUOTA_PACTADA '
           + '      ,CASE WHEN (MONTO_PAGADO = 0) AND (TRUNC(SYSDATE) > FECHA_COMPROMISO) THEN 1 ELSE 0 END CANT_INCUMPLIDOS '
           + '      ,CASE WHEN (MONTO_PAGADO = 0) AND (TRUNC(SYSDATE) BETWEEN (FECHA_COMPROMISO-3) AND FECHA_COMPROMISO) THEN 1 ELSE 0 END CANT_MUY_PROX_INCUMPLIR '
           + '      ,CASE WHEN (MONTO_PAGADO = 0) AND (TRUNC(SYSDATE) < (FECHA_COMPROMISO-3)) THEN 1 ELSE 0 END CANT_PROX_INCUMPLIR '
           + '      ,CASE WHEN MONTO_PAGADO > 0 THEN 1 ELSE 0 END CANT_CUMPLIDOS '
           + '  FROM ( '
           + xsIndSQLUnivDatos
           + ' ) WHERE GESTIONADO = ''GESTIONADO'' AND COMPROMISO_PAGO = ''CON COMPROMISO'' ';

   xsSQL :=  'SELECT CANT_COMPROMISOS '
           + '      ,CANT_INCUMPLIDOS '
           + '      ,CASE WHEN CANT_COMPROMISOS= 0 THEN 0 ELSE ROUND(100 - ROUND((CANT_MUY_PROX_INCUMPLIR/CANT_COMPROMISOS)*100,2) - ROUND((CANT_PROX_INCUMPLIR/CANT_COMPROMISOS)*100,2) - ROUND((CANT_CUMPLIDOS/CANT_COMPROMISOS)*100,2),2) END CANT_INCUMPLIDOS_PORC '
           + '      ,CANT_MUY_PROX_INCUMPLIR '
           + '      ,CASE WHEN CANT_COMPROMISOS= 0 THEN 0 ELSE ROUND((CANT_MUY_PROX_INCUMPLIR/CANT_COMPROMISOS)*100,2) END CANT_MUY_PROX_INCUMPLIR_PORC '
           + '      ,CANT_PROX_INCUMPLIR '
           + '      ,CASE WHEN CANT_COMPROMISOS= 0 THEN 0 ELSE ROUND((CANT_PROX_INCUMPLIR/CANT_COMPROMISOS)*100,2) END CANT_PROX_INCUMPLIR_PORC '
           + '      ,CANT_CUMPLIDOS '
           + '      ,CASE WHEN CANT_COMPROMISOS= 0 THEN 0 ELSE ROUND((CANT_CUMPLIDOS/CANT_COMPROMISOS)*100,2) END CANT_CUMPLIDOS_PORC '
           + '      ,MONTO_COMPROMISO '
           + '      ,100.00 MONTO_COMPROMISO_PORC '
           + '      ,MONTO_PAGADO '
           + '      ,CASE WHEN MONTO_COMPROMISO = 0 THEN 0 ELSE ROUND((MONTO_PAGADO/MONTO_COMPROMISO)*100,2) END MONTO_PAGADO_PORC '
           + '      ,CUOTA_PACTADA '
           + ' FROM ( '
           + 'SELECT  COUNT(ASOID) CANT_COMPROMISOS '
           + '       ,NVL(SUM(CANT_INCUMPLIDOS),0) CANT_INCUMPLIDOS '
           + '       ,NVL(SUM(CANT_MUY_PROX_INCUMPLIR),0) CANT_MUY_PROX_INCUMPLIR '
           + '       ,NVL(SUM(CANT_PROX_INCUMPLIR),0) CANT_PROX_INCUMPLIR '
           + '       ,NVL(SUM(CANT_CUMPLIDOS),0) CANT_CUMPLIDOS '
           + '       ,NVL(SUM(NVL(MONTO_COMPROMISO,0)),0) MONTO_COMPROMISO '
           + '       ,NVL(SUM(NVL(MONTO_PAGADO,0)),0) MONTO_PAGADO '
           + '       ,NVL(SUM(NVL(CUOTA_PACTADA,0)),0) CUOTA_PACTADA '
           + 'FROM ( '
           + xsSQL
           + '))';

   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xsSQL);
   DM1.cdsQry.Open;

   lblIncCant.Caption := FormatFloat('###,##0'   , DM1.cdsQry.fieldbyname('CANT_INCUMPLIDOS').value);
   lblIncPorc.Caption := FormatFloat('###,##0.#0', DM1.cdsQry.fieldbyname('CANT_INCUMPLIDOS_PORC').value) + ' %';

   lblIncProxVencCant.Caption := FormatFloat('###,##0'   , DM1.cdsQry.fieldbyname('CANT_MUY_PROX_INCUMPLIR').value);
   lblIncProxVencPorc.Caption := FormatFloat('###,##0.#0', DM1.cdsQry.fieldbyname('CANT_MUY_PROX_INCUMPLIR_PORC').value) + ' %';

   lblIncPorVencerCant.Caption := FormatFloat('###,##0'   , DM1.cdsQry.fieldbyname('CANT_PROX_INCUMPLIR').value);
   lblIncPorVencerPorc.Caption := FormatFloat('###,##0.#0', DM1.cdsQry.fieldbyname('CANT_PROX_INCUMPLIR_PORC').value) + ' %';

   lblIncCumpCant.Caption := FormatFloat('###,##0'   , DM1.cdsQry.fieldbyname('CANT_CUMPLIDOS').value);
   lblIncCumpPorc.Caption := FormatFloat('###,##0.#0', DM1.cdsQry.fieldbyname('CANT_CUMPLIDOS_PORC').value) + ' %';

   lblIncTotAcuXCobCant.Caption := FormatFloat('###,##0.#0', DM1.cdsQry.fieldbyname('MONTO_COMPROMISO').value);
   lblIncTotAcuXCobPorc.Caption := FormatFloat('###,##0.#0', DM1.cdsQry.fieldbyname('MONTO_COMPROMISO_PORC').value) + ' %';

   lblIncTotAcuCobCant.Caption := FormatFloat('###,##0.#0', DM1.cdsQry.fieldbyname('MONTO_PAGADO').value);
   lblIncTotAcuCobPorc.Caption := FormatFloat('###,##0.#0', DM1.cdsQry.fieldbyname('MONTO_PAGADO_PORC').value) + ' %';

   lblIncCuoPacCant.Caption := FormatFloat('###,##0.#0',DM1.cdsQry.fieldbyname('CUOTA_PACTADA').value);
   lblIncCuoPacPorc.Caption := FormatFloat('###,##0.#0',DM1.cdsQry.fieldbyname('CUOTA_PACTADA').value);
   Screen.Cursor := crDefault;
end;
(******************************************************************************)
// FIN : SPP_201402_GESCOB
End.

