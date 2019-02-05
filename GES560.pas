// Inicio Uso Estándares:
// Unidad : Gestión de Cobranzas
// Formulario : FRepGestor
// Fecha de Creación :
// Autor : Equipo de Sistemas
// Objetivo :  Mostrar Reporte detalle de asignaciones
// Actualizaciones:
// HPC_201304_GESCOB: F1 21/05/2013 Se agregó filtro que considera asociado contactado
// SPP_201304_GESCOB: Se realiza el pase a producción a partir del HPC_201304_GESCOB
// HPC_201305_GESCOB: F2 04/06/2013 Se modificó las consultas a la BD, para incluir la nueva marca asociada al motivo de liberación porque la BD fue actualizada
//                    F3 04/06/2013 Se agregó: impresión, condiciones de filtrado y ordenamiento
// SPP_201305_GESCOB: Se realiza el pase a producción a partir del HPC_201305_GESCOB

unit GES560;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, Wwdbigrd, Wwdbgrid, StdCtrls, Buttons, ExtCtrls, wwdblook,
  wwExport, shellapi, Wwdbdlg, db,
// Inicio: SPP_201305_GESCOB
  ppParameter, ppBands, ppClass, ppCtrls,
  ppVar, ppPrnabl, ppCache, ppProd, ppReport, ppComm, ppRelatv, ppDB,
  ppDBPipe;
// Fin: SPP_201305_GESCOB

type
  TFRepGestor = class(TForm)
    gbFiltro: TGroupBox;
    pnl1: TPanel;
    btnExportar: TBitBtn;
    btnSalir: TBitBtn;
    Panel1: TPanel;
    dbgData: TwwDBGrid;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    lblTitulo: TLabel;
    lbl1: TLabel;
    cboPeriodoCartera: TwwDBLookupCombo;
    Panel2: TPanel;
    pnlBusca: TPanel;
    Label1: TLabel;
    dblcdGestor: TwwDBLookupComboDlg;
    Label2: TLabel;
    edtBuscar: TEdit;
    rgContac: TRadioGroup;
    lblReg: TLabel;
// Inicio: SPP_201305_GESCOB
    pnlFiltros: TPanel;
    dblcDpto: TwwDBLookupCombo;
    dblcProvin: TwwDBLookupCombo;
    dblcDist: TwwDBLookupCombo;
    edtDpto: TEdit;
    edtProvin: TEdit;
    edtDist: TEdit;
    dblcGestores: TwwDBLookupCombo;
    Panel11: TPanel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    edtGestores: TEdit;
    edtCampanna: TEdit;
    dblcCampannas: TwwDBLookupCombo;
    cmbOrden: TComboBox;
    dbpRptPipeline: TppDBPipeline;
    repReport: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppShape3: TppShape;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppSystemVariable5: TppSystemVariable;
    ppSystemVariable6: TppSystemVariable;
    ppLblTit01: TppLabel;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppLblTit02: TppLabel;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLine26: TppLine;
    ppLine27: TppLine;
    ppLine28: TppLine;
    ppLine29: TppLine;
    ppLine31: TppLine;
    ppLine32: TppLine;
    ppLine33: TppLine;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppLabel36: TppLabel;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    ppLabel39: TppLabel;
    ppLabel40: TppLabel;
    ppLabel41: TppLabel;
    ppLine34: TppLine;
    ppLine35: TppLine;
    ppLabel43: TppLabel;
    ppLabel44: TppLabel;
    ppLabel45: TppLabel;
    ppLabel46: TppLabel;
    ppLine36: TppLine;
    ppLabel47: TppLabel;
    ppLabel48: TppLabel;
    ppLine37: TppLine;
    ppLabel49: TppLabel;
    ppLabel50: TppLabel;
    ppLabel51: TppLabel;
    ppLabel52: TppLabel;
    ppLine38: TppLine;
    ppLabel53: TppLabel;
    ppLine39: TppLine;
    ppLine2: TppLine;
    ppLabel1: TppLabel;
    ppLine3: TppLine;
    ppLblTit03: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppLine40: TppLine;
    ppLine41: TppLine;
    ppLine42: TppLine;
    ppLine43: TppLine;
    ppLine44: TppLine;
    ppLine45: TppLine;
    ppLine46: TppLine;
    ppLine47: TppLine;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppLine48: TppLine;
    ppLine49: TppLine;
    ppLine50: TppLine;
    ppLine51: TppLine;
    ppDBText24: TppDBText;
    ppLine52: TppLine;
    ppDBText25: TppDBText;
    ppLine53: TppLine;
    ppDBText27: TppDBText;
    ppLine54: TppLine;
    ppDBText28: TppDBText;
    ppLine1: TppLine;
    ppLine4: TppLine;
    ppDBText1: TppDBText;
    ppFooterBand2: TppFooterBand;
    ppLblUser: TppLabel;
    ppSummaryBand2: TppSummaryBand;
    ppShape4: TppShape;
    ppLabel56: TppLabel;
    ppDBCalc11: TppDBCalc;
    ppDBCalc12: TppDBCalc;
    ppDBCalc13: TppDBCalc;
    ppDBCalc14: TppDBCalc;
    ppDBCalc15: TppDBCalc;
    ppDBCalc16: TppDBCalc;
    ppDBCalc17: TppDBCalc;
    ppDBCalc18: TppDBCalc;
    ppDBCalc19: TppDBCalc;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppLine56: TppLine;
    ppParameterList2: TppParameterList;
    btnImprimir: TBitBtn;
// Fin: SPP_201305_GESCOB
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure btnExportarClick(Sender: TObject);
    procedure btnSalirClick(Sender: TObject);
    procedure cboPeriodoCarteraChange(Sender: TObject);
    procedure dblcdGestorChange(Sender: TObject);
    procedure edtBuscarChange(Sender: TObject);
    procedure edtBuscarKeyPress(Sender: TObject; var Key: Char);
    procedure dbgDataDblClick(Sender: TObject);
    procedure dbgDataCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure rgContacClick(Sender: TObject);
// Inicio: SPP_201305_GESCOB
    procedure dblcDptoChange(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure dblcProvinChange(Sender: TObject);
    procedure dblcDistChange(Sender: TObject);
    procedure dblcGestoresChange(Sender: TObject);
    procedure dblcCampannasChange(Sender: TObject);
    procedure cmbOrdenChange(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure dblcProvinEnter(Sender: TObject);
    procedure dblcDistEnter(Sender: TObject);
// Fin: SPP_201305_GESCOB
  private
    { Private declarations }
    nReporte : Integer;
    procedure cdsQry7GetText1( Sender: TField;
          var Text: String; DisplayText: Boolean );
    procedure cdsQry7GetText2( Sender: TField;
          var Text: String; DisplayText: Boolean );
    procedure cdsQry7GetText3( Sender: TField;
          var Text: String; DisplayText: Boolean );
    procedure EliminaGrupos;
// Inicio: SPP_201305_GESCOB
    procedure OrdenaDatos;
    procedure AgrupaVistaGrilla;
// Fin: SPP_201305_GESCOB
  public
    { Public declarations }
  end;

var
  FRepGestor: TFRepGestor;

implementation

uses GESDM1, GES562;

{$R *.dfm}

procedure TFRepGestor.FormCreate(Sender: TObject);
Var
   xsSQL : String;
Begin
   xsSQL:='SELECT PERIODO FROM GES_COB_COMPROMISO A GROUP BY PERIODO ORDER BY PERIODO DESC';
   DM1.cdsQry3.Close;
   DM1.cdsQry3.DataRequest(xsSQL);
   DM1.cdsQry3.Open;
   cboPeriodoCartera.LookupTable := DM1.cdsQry3;
   cboPeriodoCartera.LookupField := 'PERIODO';

   cboPeriodoCartera.Selected.Clear;
   cboPeriodoCartera.Selected.Add('PERIODO'#9'8'#9'Periodo');
   nReporte:=0;
end;

procedure TFRepGestor.BitBtn1Click(Sender: TObject);
var
  xSQL : String;
  sMes, xIndex, sGestor : String;
  nColor : Integer;
begin
  if cboPeriodoCartera.Text='' then
  begin
     ShowMessage('Debe Seleccionar periodo');
     Exit;
  end;

  lblReg.Visible:=False;
  lblTitulo.Caption:='Gestores por Gestion Realizada';
  sMes:=cboPeriodoCartera.Text;
  pnlBusca.Visible:=False;
  Screen.Cursor := crHourGlass;
  nReporte:=1;

// Inicio: SPP_201305_GESCOB F3 ocultar panel y bloquear impresión
  pnlFiltros.Visible:=False;
  btnImprimir.Enabled:=False;
// Fin: SPP_201305_GESCOB


  xSQL:='Select NVL(U.DESENTEXT,A.USUARIO) USUARIO_GES, A.USUARIO, ASIGNADAS, GESTIONADAS, NVL(B.TIPO_GESTION,''SIN CONTACTO'') TIPO_GESTION, NVL(CONTACTADOS,0)-CONTACTO_SIN_GESTION CONTACTADOS, '
       +  'C_P_RECIB, C_P_CUMPLIDOS, C_P_MONTO, C_R_RECIB, C_R_CUMPLIDOS, C_R_MONTO, '
       +  'RENUENTE_PAGO, ACERCARA_OFICINA, PROMESA_INDEFINIDA, '
       +  'U.DESENTEXT, 0 NUMCOL '
       +'FROM '
       +  '( SELECT DISTINCT GESTION, A.USUARIO, ASIGNADAS, GESTIONADAS FROM '
       +  '( SELECT A.GESTION, A.USUARIO, count(*) ASIGNADAS,  SUM( CASE WHEN ESTGES<>''01'' THEN 1 ELSE 0 END) GESTIONADAS FROM ( '
       +     ' SELECT DISTINCT ''DOMICILIARIAS'' GESTION, A.USUARIO, ASOID, CFC_F, ESTGES from GES_COB_DOM A where periodo='''+sMes+''' '
       +     ' UNION ALL '
       +     ' SELECT DISTINCT ''TELEFONICAS'' GESTION,   A.USUARIO, ASOID, CFC_F, ESTGES from GES_COB_IND A where periodo='''+sMes+''' '
       +     ' UNION ALL '
       +     ' SELECT DISTINCT ''DOMICILIARIAS'' GESTION, A.USUARIO, ASOID, CFC_F, ESTGES from GES_COB_DOM_HIS A where periodo='''+sMes+''' '
// Inicio: SPP_201305_GESCOB F2 nuevo campo en la BD
       + '                  AND ASIGNADO = ''S'' '
// Fin: SPP_201305_GESCOB
       +     ' UNION ALL '
       +     ' SELECT DISTINCT ''TELEFONICAS'' GESTION,   A.USUARIO, ASOID, CFC_F, ESTGES from GES_COB_IND_HIS A where periodo='''+sMes+''' '
// Inicio: SPP_201305_GESCOB F2 nuevo campo en la BD
       + '                  AND ASIGNADO = ''S'' '
// Fin: SPP_201305_GESCOB
       +     ' ) A '
       +    'GROUP BY A.GESTION, A.USUARIO '
       +  ') A ) A, '
       //  -- Contactados
       +  '( SELECT USUARIO, TIPO_GESTION, SUM( NVL(CONTACTADOS,0) ) CONTACTADOS FROM ( '
       +      'select DISTINCT A.USUARIO, A.ASOID, 1 CONTACTADOS, TIPO_GESTION '
       +      'from '
       +         '( SELECT CASE WHEN SUBSTR(IDGESTIONDET,1,1)=''5'' THEN ''TELEFONICA'' ELSE ''DOMICILIARIA'' END TIPO_GESTION, A.* FROM ( '
       +             'select A.*, DENSE_RANK() OVER(PARTITION BY USUARIO, ASOID ORDER BY USUARIO, ASOID, FECHA DESC, HORA DESC ) DRNK '
       +               'from GES_COB_SEG A '
       +              'where periodo='''+sMes+''' '
       +                ' ) A '
       +           'WHERE DRNK = 1 ) A, '
       +         'GES_REF_SEG_DET B '
       +      'where periodo='''+sMes+''' '
       +       ' and a.idgestion=b.idgtn(+) and a.idgestiondet=b.idgtndet(+) and b.contactado=''S'' AND NVL(B.DIRECTO,''N'')=''S'' '
       +      'group by A.USUARIO, A.ASOID, TIPO_GESTION ) '
       +    'GROUP BY USUARIO, TIPO_GESTION '
       +  ') B, '
       //  -- Compromisos
       +  '( SELECT USUARIO, TIPO_GESTION, '
       +      'SUM( CASE WHEN COD_NEG=''02'' THEN 1 ELSE 0 END ) C_P_RECIB, '
       +      'SUM( CASE WHEN COD_NEG=''02'' and NVL(EFE_PAGO,0) + NVL(BAN_PAGO,0) > 0 THEN 1 ELSE 0 END ) C_P_CUMPLIDOS, '
       +      'SUM( CASE WHEN COD_NEG=''02'' THEN NVL(EFE_PAGO,0) + NVL(BAN_PAGO,0) ELSE 0 END ) C_P_MONTO, '
       +      'SUM( CASE WHEN COD_NEG=''05'' THEN 1 ELSE 0 END ) C_R_RECIB, '
       +      'SUM( CASE WHEN COD_NEG=''05'' AND NVL(REF_PAGO,0)>0 THEN 1 ELSE 0 END ) C_R_CUMPLIDOS, '
       +      'SUM( CASE WHEN COD_NEG=''05'' AND NVL(REF_PAGO,0)>0 THEN NVL(REF_PAGO,0) ELSE 0 END ) C_R_MONTO, '
       +      'SUM( CASE WHEN COD_NEG=''01'' THEN 1 ELSE 0 END ) RENUENTE_PAGO, '
       +      'SUM( CASE WHEN COD_NEG=''03'' THEN 1 ELSE 0 END ) ACERCARA_OFICINA, '
       +      'SUM( CASE WHEN COD_NEG=''04'' THEN 1 ELSE 0 END ) PROMESA_INDEFINIDA, '
       +      'SUM( CASE WHEN COD_NEG IS NULL THEN 1 ELSE 0 END ) CONTACTO_SIN_GESTION '
       +    'FROM ( SELECT USUARIO, ASOID, SUM( NVL(CONTACTADOS,0) ) CONTACTADOS, TIPO_GESTION FROM ( '
       +             'select DISTINCT A.USUARIO, A.ASOID, 1 CONTACTADOS, TIPO_GESTION '
       +             'from ( '
       +                    'SELECT CASE WHEN SUBSTR(IDGESTIONDET,1,1)=''5'' THEN ''TELEFONICA'' ELSE ''DOMICILIARIA'' END TIPO_GESTION, A.* FROM ( '
       +                      'select A.*, DENSE_RANK() OVER(PARTITION BY USUARIO, ASOID ORDER BY USUARIO, ASOID, FECHA DESC, HORA DESC ) DRNK '
       +                        'from GES_COB_SEG A '
       +                       'where periodo='''+sMes+''' '
       +                        ' ) A '
       +                   ' WHERE DRNK = 1 ) A, '
       +               ' GES_REF_SEG_DET B '
       +             'where periodo='''+sMes+''' '
       +              ' and a.idgestion=b.idgtn(+) and a.idgestiondet=b.idgtndet(+) and b.contactado=''S'' AND NVL(B.DIRECTO,''N'')=''S'' '
       +             'group by A.USUARIO, A.ASOID, TIPO_GESTION  ) '
       +           'GROUP BY USUARIO, ASOID, TIPO_GESTION  '
       +         ') A, '
       +         '( SELECT * FROM ( '
       +             'SELECT A.*, DENSE_RANK() OVER(PARTITION BY GESTOR, ASOID ORDER BY GESTOR, ASOID, CASE WHEN ESTADO=''CUMPLIDO'' THEN 1 ELSE 2 END, FEC_CONTACTO DESC, FREG DESC, COD_COMPROMISO ) DRNK '
       +             'FROM GES_COB_COMPROMISO A '
       +             'WHERE PERIODO = '''+sMes+''' '
       +             'ORDER BY ASOID ) '
       +          ' WHERE DRNK = 1 ) B '
       +    'where A.USUARIO=B.GESTOR(+) AND A.ASOID=B.ASOID(+) '
       +    'GROUP BY USUARIO, TIPO_GESTION  '
       +  ') C, GES_TIP_USU_EXT U '
       +'where A.USUARIO=B.USUARIO(+) '
       + ' AND B.USUARIO=C.USUARIO(+) AND B.TIPO_GESTION=C.TIPO_GESTION(+) '
       + ' AND A.USUARIO = U.IDENTEXT(+) '
       +'ORDER BY A.USUARIO, C.TIPO_GESTION';

  DM1.cdsQry7.Close;
  DM1.cdsQry7.Filtered:=False;
  DM1.cdsQry7.IndexFieldNames:='';
  DM1.cdsQry7.DataRequest(xSQL);
  DM1.cdsQry7.Open;

  dbgData.Selected.Clear;
  //dbgData.Selected.Add('USUARIO'#9'12'#9'Gestor');
  dbgData.Selected.Add('USUARIO_GES'#9'17'#9'Gestor');
  dbgData.Selected.Add('ASIGNADAS'#9'10'#9'#~Asignadas');
  dbgData.Selected.Add('GESTIONADAS'#9'10'#9'#~Gestionadas');
  dbgData.Selected.Add('TIPO_GESTION'#9'13'#9'Tipo de~Gestion');
  dbgData.Selected.Add('CONTACTADOS'#9'10'#9'Contactados');
  dbgData.Selected.Add('C_P_RECIB'#9'11'#9'Compr.Pago~Recibidos');
  dbgData.Selected.Add('C_P_CUMPLIDOS'#9'11'#9'Compr.Pago~Cumplidos');
  dbgData.Selected.Add('C_P_MONTO'#9'11'#9'Compr.Pago~Monto Efe.');
  dbgData.Selected.Add('C_R_RECIB'#9'11'#9'Refinancia~Recibidos');
  dbgData.Selected.Add('C_R_CUMPLIDOS'#9'11'#9'Refinancia~Cumplidos');
  dbgData.Selected.Add('C_R_MONTO'#9'11'#9'Refinancia~Importe');
  dbgData.Selected.Add('RENUENTE_PAGO'#9'11'#9'Renuente~al Pago');
  dbgData.Selected.Add('ACERCARA_OFICINA'#9'11'#9'Se Acercara~a la Oficina');
  dbgData.Selected.Add('PROMESA_INDEFINIDA'#9'11'#9'Promesa Pago~Indefinida');
//  dbgData.Selected.Add('NUMCOL'#9'11'#9'Color');
  dbgData.ApplySelected;

  //dbgData.GroupFieldName:='USUARIO_GES;ASIGNADAS';

  DM1.cdsQry7.IndexFieldNames:='USUARIO_GES;TIPO_GESTION';

  DM1.cdsQry7.First;
  sGestor:='';
  nColor:=0;
  while not DM1.cdsQry7.Eof do
  begin
     if sGestor<>DM1.cdsQry7.FieldByname('USUARIO_GES').AsString then
     begin
        sGestor:=DM1.cdsQry7.FieldByname('USUARIO_GES').AsString;
        nColor:=nColor+1;
     end;
     DM1.cdsQry7.Edit;
     DM1.cdsQry7.FieldByname('NUMCOL').AsInteger:=nColor;
     DM1.cdsQry7.Next;
  end;
  DM1.cdsQry7.First;

  dbgData.DataSource := DM1.dsQry7;

  xIndex:='USUARIO_GES;ASIGNADAS;GESTIONADAS';

  if DM1.cdsQry7.IndexName='XXX' then
     DM1.cdsQry7.DeleteIndex( 'XXX' );
  DM1.cdsQry7.AddIndex( 'XXX', xIndex, [ixCaseInsensitive],'','', 3 );
  DM1.cdsQry7.IndexName:='XXX';

  DM1.cdsQry7.Aggregates.Add;
  DM1.cdsQry7.Aggregates[ 0 ].AggregateName:='USUARIO_GES';
  DM1.cdsQry7.Aggregates[ 0 ].GroupingLevel:=1;
  DM1.cdsQry7.Aggregates[ 0 ].IndexName    :='XXX';
  DM1.cdsQry7.FieldByName('USUARIO_GES').OnGetText:=cdsQry7GetText1;
  DM1.cdsQry7.Aggregates[ 0 ].Active := True;

  DM1.cdsQry7.Aggregates.Add;
  DM1.cdsQry7.Aggregates[ 1 ].AggregateName:='ASIGNADAS';
  DM1.cdsQry7.Aggregates[ 1 ].GroupingLevel:=2;
  DM1.cdsQry7.Aggregates[ 1 ].IndexName    :='XXX';
  DM1.cdsQry7.FieldByName('ASIGNADAS').OnGetText:=cdsQry7GetText2;
  DM1.cdsQry7.Aggregates[ 1 ].Active := True;

  DM1.cdsQry7.Aggregates.Add;
  DM1.cdsQry7.Aggregates[ 2 ].AggregateName:='GESTIONADAS';
  DM1.cdsQry7.Aggregates[ 2 ].GroupingLevel:=3;
  DM1.cdsQry7.Aggregates[ 2 ].IndexName    :='XXX';
  DM1.cdsQry7.FieldByName('GESTIONADAS').OnGetText:=cdsQry7GetText2;
  DM1.cdsQry7.Aggregates[ 2 ].Active := True;

  DM1.cdsQry7.AggregatesActive:=True;
  DM1.cdsQry7.First;

  Screen.Cursor := crDefault;
end;

procedure TFRepGestor.BitBtn2Click(Sender: TObject);
var
  xSQL, xSQL2, xSQL1  : String;
  wGrupoCols, ca : Integer;
  sMes, xIndex, sGestor : String;
  nColor : Integer;
// Inicio: SPP_201305_GESCOB F3 condiciones para filtrar la consulta
  xsDpto, xsProv, xsDist, xsGestores, xsCampa : String;
// Fin: SPP_201305_GESCOB
begin
  if cboPeriodoCartera.Text='' then
  begin
     ShowMessage('Debe Seleccionar periodo');
     Exit;
  end;

  lblReg.Visible:=False;
  lblTitulo.Caption:='Gestores por Forma de Pago';
  sMes:=cboPeriodoCartera.Text;
  pnlBusca.Visible:=False;
  Screen.Cursor := crHourGlass;
  nReporte:=2;

// Inicio: SPP_201305_GESCOB F3 condiciones para filtrar la consulta
  cmbOrden.Text := '';
  xsGestores := '';

  xsDpto := dblcDpto.Text;                                    if Trim(dblcDpto.Text) = ''      then Begin xsDpto := '0'   End;
  xsProv := dblcDpto.Text + dblcProvin.Text;                  if Trim(dblcProvin.Text) = ''    then Begin xsProv := '0'   End;
  xsDist := dblcDpto.Text + dblcProvin.Text + dblcDist.Text;  if Trim(dblcDist.Text) = ''      then Begin xsDist := '0'   End;
  if Trim(dblcGestores.Text) = '15'    then         // Gestores de Lima
     Begin
         xsGestores := '  AND (  ( A1.USUARIO IN (SELECT USUARIO FROM GES_COB_USU  WHERE DPTOID = ''15''  '
                    +  '         UNION ALL '
                    +  '         SELECT IDENTEXT USUARIO FROM GES_TIP_USU_EXT )) OR ( NOT A1.USUARIO IN (SELECT USUARIO FROM GES_COB_USU) ) ) '
     End;
  if Trim(dblcGestores.Text) = '99'    then         // Gestores de Provincia 
     Begin
         xsGestores := ' AND ( A1.USUARIO IN (SELECT USUARIO FROM GES_COB_USU  WHERE DPTOID <> ''15'' )) '
     End;
  xsCampa := dblcCampannas.Text;                              if Trim(dblcCampannas.Text) = '' then Begin xsCampa := '0'  End;
// Fin: SPP_201305_GESCOB

  xSQL1:='Select A.USUARIO, ASIGNADAS, GESTIONADAS, NVL(B.TIPO_GESTION,''SIN CONTACTO'') TIPO_GESTION, NVL(CONTACTADOS,0)-CONTACTO_SIN_GESTION CONTACTADOS, '
       +  'NVL(DIRECTO,0)-CONTACTO_SIN_GESTION DIRECTO, NVL(INDIRECTO,0) INDIRECTO, '
       +  'C_P_CUMPLIDOS EFE_X_PROMESA, C_P_O_CUMPLIDOS EFE_OTRO_RES, C_P_MONTO MONTO_EFECTIVO, '
// Inicio: SPP_201305_GESCOB F3 decia MONTO_REFINACIADO ahora dice MONTO_REFINANCIADO
       +  'C_R_CUMPLIDOS REF_X_PROMESA, C_R_O_CUMPLIDOS REF_OTRO_RES, C_R_MONTO MONTO_REFINANCIADO, '
// Fin: SPP_201305_GESCOB
       +  'NOTA_ABONO,  BENEFICIOS, '
       +  'U.DESENTEXT, NVL(U.DESENTEXT,A.USUARIO) USUARIO_GES, 0 NUMCOL '
// Inicio: SPP_201305_GESCOB F3 campo para ordenar de mayor a menor
       +  ', 0 TOTAL '
// Fin: SPP_201305_GESCOB
       +'FROM '
       + '( SELECT DISTINCT GESTION, A.USUARIO, ASIGNADAS, GESTIONADAS FROM '
       + '( SELECT A.GESTION, A.USUARIO, count(*) ASIGNADAS,  SUM( CASE WHEN ESTGES<>''01'' THEN 1 ELSE 0 END) GESTIONADAS FROM ( '
// Inicio: SPP_201305_GESCOB F3 aplicando las condiciones de filtrado en la consulta a la BD
       + '                SELECT A1.* FROM  '
       + '                       (          '
       +     'SELECT DISTINCT ''DOMICILIARIAS'' GESTION, A.USUARIO, ASOID, CFC_F, ESTGES, OFDESID from GES_COB_DOM A     where periodo='''+sMes+''' '
       +     'UNION ALL '
       +     'SELECT DISTINCT ''TELEFONICAS'' GESTION,   A.USUARIO, ASOID, CFC_F, ESTGES, OFDESID from GES_COB_IND A     where periodo='''+sMes+''' '
       +     'UNION ALL '
       +     'SELECT DISTINCT ''DOMICILIARIAS'' GESTION, A.USUARIO, ASOID, CFC_F, ESTGES, OFDESID from GES_COB_DOM_HIS A where periodo='''+sMes+''' '
// F2 nuevo campo en la BD
       +     '                         AND ASIGNADO = ''S'' '
       +     'UNION ALL '
       +     'SELECT DISTINCT ''TELEFONICAS'' GESTION,   A.USUARIO, ASOID, CFC_F, ESTGES, OFDESID from GES_COB_IND_HIS A where periodo='''+sMes+''' '
// F2 nuevo campo en la BD
       +     '                         AND ASIGNADO = ''S'' '
       + '                ) A1, APO201 APO                      '
       + '                WHERE A1.ASOID = APO.ASOID            '
       + '                      AND ( SUBSTR(APO.ZIPID,1,2) = ''' + xsDpto + ''' OR ''' + xsDpto + ''' = ''0'' ) '
       + '                      AND ( SUBSTR(APO.ZIPID,1,4) = ''' + xsProv + ''' OR ''' + xsProv + ''' = ''0'' ) '
       + '                      AND ( SUBSTR(APO.ZIPID,1,6) = ''' + xsDist + ''' OR ''' + xsDist + ''' = ''0'' ) '
       +                        xsGestores
       + '                      AND ( (APO.ZIPID IN (SELECT ZIPID FROM ges_cob_con_cam_ubi WHERE idconcam = ''' + xsCampa  + ''')) OR ''' + xsCampa + ''' = ''0'' ) '
// Fin: SPP_201305_GESCOB
       +   ') A '
       +   ' GROUP BY A.GESTION, A.USUARIO '
       + ') A ) A, '
       //  -- Contactados
       +  '( SELECT USUARIO, TIPO_GESTION, SUM( NVL(CONTACTADOS,0) ) CONTACTADOS, SUM( NVL(DIRECTO,0) ) DIRECTO, SUM( NVL(INDIRECTO,0) ) INDIRECTO FROM ( '
       +      'select DISTINCT A.USUARIO, A.ASOID, 1 CONTACTADOS, TIPO_GESTION, '
       +             ' CASE WHEN NVL(B.DIRECTO,''N'')=''S'' THEN 1 ELSE 0 END DIRECTO,  '
       +             ' CASE WHEN NVL(B.DIRECTO,''N'')=''N'' THEN 1 ELSE 0 END INDIRECTO '
       +      'from '
       +         '( SELECT CASE WHEN SUBSTR(IDGESTIONDET,1,1)=''5'' THEN ''TELEFONICA'' ELSE ''DOMICILIARIA'' END TIPO_GESTION, A.* FROM ( '
       +             'select A.*, DENSE_RANK() OVER(PARTITION BY USUARIO, ASOID ORDER BY USUARIO, ASOID, FECHA DESC, HORA DESC ) DRNK '
       +               'from GES_COB_SEG A '
       +              'where periodo='''+sMes+''' '
       +                ' ) A '
       +           'WHERE DRNK = 1 ) A, '
       +         'GES_REF_SEG_DET B '
       +      'where periodo='''+sMes+''' '
       +       ' and a.idgestion=b.idgtn(+) and a.idgestiondet=b.idgtndet(+) and b.contactado=''S'' '
       +      'group by A.USUARIO, A.ASOID, TIPO_GESTION, DIRECTO ) '
       +    'GROUP BY USUARIO, TIPO_GESTION '
       +  ') B, ';
       // -- Compromisos
  xSQL2:=
         '( SELECT USUARIO, TIPO_GESTION, '
       +     'SUM( CASE WHEN COD_NEG=''02''                                                 THEN 1 ELSE 0 END ) C_P_RECIBIDOS, '
       +     'SUM( CASE WHEN COD_NEG=''02''          and NVL(EFE_PAGO,0)+NVL(BAN_PAGO,0)>0  THEN 1 ELSE 0 END ) C_P_CUMPLIDOS, '
       +     'SUM( CASE WHEN NOT COD_NEG IN (''02'') and NVL(EFE_PAGO,0)+NVL(BAN_PAGO,0)>0  THEN 1 ELSE 0 END ) C_P_O_CUMPLIDOS, '
       +     'SUM( CASE WHEN                             NVL(EFE_PAGO,0)+NVL(BAN_PAGO,0)>0  THEN NVL(EFE_PAGO,0)+NVL(BAN_PAGO,0) ELSE 0 END ) C_P_MONTO, '
       +     'SUM( CASE WHEN COD_NEG=''05''                                THEN 1 ELSE 0 END ) C_R_RECIBIDOS, '
       +     'SUM( CASE WHEN COD_NEG=''05''     AND NVL(REF_PAGO,0)>0      THEN 1 ELSE 0 END ) C_R_CUMPLIDOS, '
       +     'SUM( CASE WHEN NOT COD_NEG=''05'' AND NVL(REF_PAGO,0)>0      THEN 1 ELSE 0 END ) C_R_O_CUMPLIDOS, '
       +     'SUM( CASE WHEN                        NVL(REF_PAGO,0)>0      THEN NVL(REF_PAGO,0) ELSE 0 END ) C_R_MONTO, '
       +     'SUM( NVL(ABO_PAGO,0) ) NOTA_ABONO, '
       +     'SUM( NVL(BEN_PAGO,0) ) BENEFICIOS, '
       +     'SUM( CASE WHEN COD_NEG IS NULL THEN 1 ELSE 0 END ) CONTACTO_SIN_GESTION '
       +   'FROM ( SELECT USUARIO, ASOID, SUM( NVL(CONTACTADOS,0) ) CONTACTADOS, TIPO_GESTION FROM ( '
       +                   'select DISTINCT A.USUARIO, A.ASOID, 1 CONTACTADOS, TIPO_GESTION '
       +                   'from ( '
       +                      'SELECT CASE WHEN SUBSTR(IDGESTIONDET,1,1)=''5'' THEN ''TELEFONICA'' ELSE ''DOMICILIARIA'' END TIPO_GESTION, A.* FROM ( '
       +                         'select A.*, DENSE_RANK() OVER(PARTITION BY USUARIO, ASOID ORDER BY USUARIO, ASOID, FECHA DESC, HORA DESC ) DRNK '
       +                           'from GES_COB_SEG A '
       +                          'where periodo='''+sMes+''' '
       +                           ' ) A '
       +                     ' WHERE DRNK = 1 ) A, '
       +                         'GES_REF_SEG_DET B '
       +                   'where periodo='''+sMes+''' '
       +                     'and a.idgestion=b.idgtn(+) and a.idgestiondet=b.idgtndet(+) and b.contactado=''S'' AND NVL(B.DIRECTO,''N'')=''S'' '
       +                   'group by A.USUARIO, A.ASOID, TIPO_GESTION ) '
       +          'GROUP BY USUARIO, ASOID, TIPO_GESTION '
       +        ') A, '
       +        '( SELECT * FROM ( '
       +               'SELECT A.*, DENSE_RANK() OVER(PARTITION BY GESTOR, ASOID ORDER BY GESTOR, ASOID, CASE WHEN ESTADO=''CUMPLIDO'' THEN 1 ELSE 2 END, FEC_CONTACTO DESC, FREG DESC, COD_COMPROMISO ) DRNK '
       +                 'FROM GES_COB_COMPROMISO A '
       +                'WHERE PERIODO = '''+sMes+''' '
       +                'ORDER BY ASOID ) '
       +               'WHERE DRNK = 1 ) B '
       +          'where A.USUARIO=B.GESTOR(+) AND A.ASOID=B.ASOID(+) '
       +          'GROUP BY USUARIO, TIPO_GESTION '
       + ') C, GES_TIP_USU_EXT U  '
       +'where A.USUARIO=B.USUARIO(+) '
       + ' and B.USUARIO=C.USUARIO(+) AND B.TIPO_GESTION=C.TIPO_GESTION(+) '
       + ' and A.USUARIO = U.IDENTEXT(+) '
       +'ORDER BY A.USUARIO, C.TIPO_GESTION ';
  xSQL:=xSQL1+xSQL2;

  DM1.cdsQry7.Close;
  DM1.cdsQry7.Filtered:=False;
  DM1.cdsQry7.IndexFieldNames:='';
  DM1.cdsQry7.DataRequest(xSQL);
  DM1.cdsQry7.Open;

  dbgData.Selected.Clear;
  //dbgData.Selected.Add('USUARIO'#9'12'#9'Gestor');
  dbgData.Selected.Add('USUARIO_GES'#9'17'#9'Gestor');
  dbgData.Selected.Add('ASIGNADAS'#9'10'#9'#~Asignadas');
  dbgData.Selected.Add('GESTIONADAS'#9'10'#9'#~Gestionadas');
  dbgData.Selected.Add('TIPO_GESTION'#9'14'#9'Tipo de~Gestion');
  dbgData.Selected.Add('CONTACTADOS'#9'10'#9'Contactados~Total');
  dbgData.Selected.Add('DIRECTO'#9'10'#9'Contactados~Directo');
  //dbgData.Selected.Add('INDIRECTO'#9'10'#9'Contactados~Indirectos');
  dbgData.Selected.Add('EFE_X_PROMESA'#9'12'#9'Efe.y Banco~x Promesa');
  dbgData.Selected.Add('EFE_OTRO_RES'#9'12'#9'Efe.y Banco~x Otro Res.');
  dbgData.Selected.Add('MONTO_EFECTIVO'#9'12'#9'Efe.y Banco~Monto Efec.');
  dbgData.Selected.Add('REF_X_PROMESA'#9'12'#9'Refinancia~x promesa');
  dbgData.Selected.Add('REF_OTRO_RES'#9'12'#9'Refinancia~x Otro Res.');
// Inicio: SPP_201305_GESCOB F3 decia MONTO_REFINACIADO ahora dice MONTO_REFINANCIADO
  dbgData.Selected.Add('MONTO_REFINANCIADO'#9'12'#9'Refinancia~Monto Refi.');
// Fin: SPP_201305_GESCOB
  dbgData.Selected.Add('NOTA_ABONO'#9'12'#9'Nota de~Abono');
  dbgData.Selected.Add('BENEFICIOS'#9'12'#9'Beneficios');
  dbgData.ApplySelected;
//  dbgData.GroupFieldName:='USUARIO_GES';

  dbgData.DataSource := DM1.dsQry7;
  DM1.cdsQry7.IndexFieldNames:='USUARIO_GES;TIPO_GESTION';

  DM1.cdsQry7.First;
  sGestor:='';
  nColor:=0;
  while not DM1.cdsQry7.Eof do
  begin
     if sGestor<>DM1.cdsQry7.FieldByname('USUARIO_GES').AsString then
     begin
        sGestor:=DM1.cdsQry7.FieldByname('USUARIO_GES').AsString;
        nColor:=nColor+1;
     end;
     DM1.cdsQry7.Edit;
     DM1.cdsQry7.FieldByname('NUMCOL').AsInteger:=nColor;
     DM1.cdsQry7.Next;
  end;
  DM1.cdsQry7.First;

  EliminaGrupos;

  xIndex:='USUARIO_GES;ASIGNADAS;GESTIONADAS';


  if DM1.cdsQry7.IndexName='XXX' then
     DM1.cdsQry7.DeleteIndex( 'XXX' );
  DM1.cdsQry7.AddIndex( 'XXX', xIndex, [ixCaseInsensitive],'','', 3 );
  DM1.cdsQry7.IndexName:='XXX';

  DM1.cdsQry7.Aggregates.Add;
  DM1.cdsQry7.Aggregates[ 0 ].AggregateName:='USUARIO_GES';
  DM1.cdsQry7.Aggregates[ 0 ].GroupingLevel:=1;
  DM1.cdsQry7.Aggregates[ 0 ].IndexName    :='XXX';
  DM1.cdsQry7.FieldByName('USUARIO_GES').OnGetText:=cdsQry7GetText1;
  DM1.cdsQry7.Aggregates[ 0 ].Active := True;

  DM1.cdsQry7.Aggregates.Add;
  DM1.cdsQry7.Aggregates[ 1 ].AggregateName:='ASIGNADAS';
  DM1.cdsQry7.Aggregates[ 1 ].GroupingLevel:=2;
  DM1.cdsQry7.Aggregates[ 1 ].IndexName    :='XXX';
  DM1.cdsQry7.FieldByName('ASIGNADAS').OnGetText:=cdsQry7GetText2;
  DM1.cdsQry7.Aggregates[ 1 ].Active := True;

  DM1.cdsQry7.Aggregates.Add;
  DM1.cdsQry7.Aggregates[ 2 ].AggregateName:='GESTIONADAS';
  DM1.cdsQry7.Aggregates[ 2 ].GroupingLevel:=3;
  DM1.cdsQry7.Aggregates[ 2 ].IndexName    :='XXX';
  DM1.cdsQry7.FieldByName('GESTIONADAS').OnGetText:=cdsQry7GetText2;
  DM1.cdsQry7.Aggregates[ 2 ].Active := True;

  DM1.cdsQry7.AggregatesActive:=True;
  DM1.cdsQry7.First;

// Inicio: SPP_201305_GESCOB F3 mostrar panel y desbloquear impresión
  pnlFiltros.Visible:=True;
  btnImprimir.Enabled:=True;
// Fin: SPP_201305_GESCOB

  Screen.Cursor := crDefault;
end;


procedure TFRepGestor.EliminaGrupos;
var
   ca : Integer;
begin
   if DM1.cdsQry7.Aggregates.Count>0 then begin
      For ca:=1 to DM1.cdsQry7.Aggregates.Count do begin
          if Length(DM1.cdsQry7.Aggregates[0].AggregateName)>0 then
             DM1.cdsQry7.FieldByName(DM1.cdsQry7.Aggregates[0].AggregateName).OnGetText:=nil;
          DM1.cdsQry7.Aggregates[0].Active:= False;
          DM1.cdsQry7.Aggregates.Delete(0);
      end;
   end;
   DM1.cdsQry7.AggregatesActive:=False;
end;


procedure TFRepGestor.cdsQry7GetText1( Sender: TField;
  var Text: String; DisplayText: Boolean );
begin
   if gbFirst in DM1.cdsQry7.GetGroupState (1) then
      Text := Sender.AsString
   else
      Text := '';
end;

procedure TFRepGestor.cdsQry7GetText2( Sender: TField;
  var Text: String; DisplayText: Boolean );
begin
   if gbFirst in DM1.cdsQry7.GetGroupState (1) then
      Text := Sender.AsString
   else
      Text := '';
end;

procedure TFRepGestor.cdsQry7GetText3( Sender: TField;
  var Text: String; DisplayText: Boolean );
begin
   if gbFirst in DM1.cdsQry7.GetGroupState (1) then
      Text := Sender.AsString
   else
      Text := '';
end;

procedure TFRepGestor.BitBtn3Click(Sender: TObject);
var
  xSQL : String;
  sMes : String;
begin
  if cboPeriodoCartera.Text='' then
  begin
     ShowMessage('Debe Seleccionar periodo');
     Exit;
  end;

  lblReg.Visible:=True;
  lblTitulo.Caption:='Docentes Asignados al Gestor';
  sMes:=cboPeriodoCartera.Text;
  dblcdGestor.Text:='';
  edtBuscar.Text:='';
  Screen.Cursor := crHourGlass;
  nReporte:=3;

// Inicio: SPP_201305_GESCOB F3 ocultar panel y bloquear impresión
  pnlFiltros.Visible:=False;
  btnImprimir.Enabled:=False;
// Fin: SPP_201305_GESCOB

  xSQL:='SELECT A.USUARIO, A.ASOID, D.ASOAPENOM DOCENTE, RESUMECLAS, '
       +    'case when NVL(c.contactado,''N'')=''S'' then ''CONTACTO'' else ''NO CONTACTO'' end RESULTADO, '
       +    'NVL(EFE_PAGO,0)+NVL(BAN_PAGO,0) EFE_Y_BANCO, '
       +    'NVL(REF_PAGO,0) REFINANCIADO, B.COD_NEG, GESTIONES, '
       +    'U.DESENTEXT, NVL(U.DESENTEXT,A.USUARIO) USUARIO_GES, D.ASOCODMOD, 0 NUMCOL, NEGOCIACION, DPTODES, D.ZIPID  '
       +'FROM ( '
       +  'SELECT A.USUARIO, A.ASOID, RESUMECLAS, GESTION, GESTOR, '
       +    'COUNT(*) GESTIONES, '
       +    'SUM(case when NVL(e.contactado,''N'')=''S'' then 1 else 0 end) contacto, '
       +    'SUM(case when NVL(e.contactado,''N'')=''N'' then 1 else 0 end) NOcontacto  '
       +  'FROM '
       +    '( SELECT DISTINCT GESTION, A.USUARIO, ASOID, CFC_F FROM '
       +    '( SELECT DISTINCT ''DOMICILIARIAS'' GESTION, A.USUARIO, ASOID, CFC_F from GES_COB_DOM A     where periodo='''+sMes+''' '
       +      'UNION ALL '
       +      'SELECT DISTINCT ''TELEFONICAS'' GESTION, A.USUARIO, ASOID, CFC_F   from GES_COB_IND A     where periodo='''+sMes+''' '
       +      'UNION ALL '
       +      'SELECT DISTINCT ''DOMICILIARIAS'' GESTION, A.USUARIO, ASOID, CFC_F from GES_COB_DOM_HIS A where periodo='''+sMes+''' '
// Inicio: SPP_201305_GESCOB F2 nuevo campo en la BD
       +      '                 AND ASIGNADO = ''S'' '
// Fin: SPP_201305_GESCOB
       +      'UNION ALL '
       +      'SELECT DISTINCT ''TELEFONICAS'' GESTION, A.USUARIO, ASOID, CFC_F   from GES_COB_IND_HIS A where periodo='''+sMes+''' '
// Inicio: SPP_201305_GESCOB F2 nuevo campo en la BD
       +      '                 AND ASIGNADO = ''S'' '
// Fin: SPP_201305_GESCOB
       +    ') A '
       +    ') A, COB113 C, GES_COB_COMPROMISO D, GES_REF_SEG_DET E '
       +  'WHERE A.CFC_F=C.RESUMEID(+) '
       +   ' AND A.ASOID=D.ASOID(+) AND D.PERIODO(+)='''+sMes+''' AND A.USUARIO=D.GESTOR(+) '
       +   ' and d.idgtn=e.idgtn(+) and d.idgtndet=e.idgtndet(+) '
       +  'GROUP BY A.USUARIO, A.ASOID, RESUMECLAS, GESTION, GESTOR '
       +') A, '
       +'( SELECT * FROM ( '
       +           'SELECT A.*, DENSE_RANK() OVER(PARTITION BY GESTOR, ASOID ORDER BY GESTOR, ASOID, CASE WHEN ESTADO=''CUMPLIDO'' THEN 1 ELSE 2 END, FEC_CONTACTO DESC, FREG DESC, COD_COMPROMISO ) DRNK '
       +           'FROM GES_COB_COMPROMISO A '
       +           'WHERE PERIODO = '''+sMes+''' '
       +           'ORDER BY ASOID ) '
       +  'WHERE DRNK = 1 '
       +') B, '
// Inicio: SPP_201304_GESCOB se agregó filtro (regla de negocio)
//          Se agregó el mismo filtro del reporte resumen: "Gestores Forma Pago"
//          para considerar como pago la gestión dependiendo según el último movimiento
      +           ' (                                                                            '
      +           ' SELECT * FROM                                                                '
      +           ' (                                                                            '
      +           ' SELECT USUARIO FUSUARIO,                                                     '
      +           '             ASOID  FASOID                                                    '
      +           ' FROM (                                                                       '
      +           '           select DISTINCT A.USUARIO,                                         '
      +           '                              A.ASOID,                                        '
      +           '                              1 CONTACTADOS,                                  '
      +           '                              TIPO_GESTION                                    '
      +           '                from (SELECT CASE WHEN SUBSTR(IDGESTIONDET, 1, 1) = ''5'' THEN ''TELEFONICA'' ELSE ''DOMICILIARIA'' END TIPO_GESTION,   '
      +           '                             A.*                                                                                                  '
      +           '                        FROM (select A.*,                                                                                         '
      +           '                                     DENSE_RANK() OVER(PARTITION BY A.USUARIO, A.ASOID ORDER BY A.USUARIO, A.ASOID, A.FECHA DESC, A.HORA DESC) DRNK  '
      +           '                                   from GES_COB_SEG A                         '
      +           '                                  where periodo = '''+sMes+''' ) A            '
      +           '                       WHERE DRNK = 1) A,                                     '
      +           '                      GES_REF_SEG_DET B                                       '
      +           '               where periodo = '''+sMes+'''                                   '
      +           '                 and a.idgestion = b.idgtn(+)                                 '
      +           '                 and a.idgestiondet = b.idgtndet(+)                           '
      +           '                 and b.contactado = ''S''                                     '
      +           '                 AND NVL(B.DIRECTO, ''N'') = ''S''                            '
      +           '               group by A.USUARIO, A.ASOID, TIPO_GESTION                      '
      +           '               )                                                              '
      +           '       GROUP BY USUARIO, ASOID, TIPO_GESTION                                  '
      +           ' )                                                                            '
      +           ' ) FILTRO,                                                                    '
       + ' GES_REF_SEG_DET C, APO201 D, GES_COB_NEGOCIACION N, GES_TIP_USU_EXT U, APO158 P '
       + ' WHERE A.GESTOR =  FILTRO.FUSUARIO(+)                   '
       + ' AND A.ASOID =  FILTRO.FASOID(+)                  '
       + ' AND FILTRO.FUSUARIO = B.GESTOR(+)                '
       + ' AND FILTRO.FASOID =  B.ASOID(+)                  '
///////       + ' WHERE A.ASOID=B.ASOID(+) '
///////       + ' AND A.GESTOR=B.GESTOR(+) '
       + ' and b.idgtn=c.idgtn(+) and b.idgtndet=c.idgtndet(+) '
       + ' AND A.ASOID=D.ASOID(+) '
       + ' AND B.COD_NEG=N.COD_NEG(+) '
       + ' AND A.USUARIO = U.IDENTEXT(+) '
       + ' AND SUBSTR(D.ZIPID,1,2) = P.DPTOID(+) '
       +' ORDER BY A.USUARIO, ASOAPENOM, RESUMECLAS, GESTION, FEC_CONTACTO';
// Fin: SPP_201304_GESCOB

  DM1.cdsQry7.Close;
  DM1.cdsQry7.Filtered:=False;
  DM1.cdsQry7.IndexFieldNames:='';
  DM1.cdsQry7.DataRequest(xSQL);
  DM1.cdsQry7.Open;

  DM1.cdsQry7.IndexFieldNames:='DOCENTE;RESUMECLAS';
  DM1.cdsQry7.First;

  dbgData.Selected.Clear;
  //dbgData.Selected.Add('USUARIO'#9'12'#9'Gestor');
  //dbgData.Selected.Add('ASOID'#9'11'#9'Código~Asociado');
  dbgData.Selected.Add('ASOCODMOD'#9'11'#9'Código~Modular');
  dbgData.Selected.Add('DOCENTE'#9'35'#9'Asociado');
  dbgData.Selected.Add('USUARIO_GES'#9'17'#9'Gestor');
  dbgData.Selected.Add('DPTODES'#9'11'#9'Departamento');
  dbgData.Selected.Add('RESUMECLAS'#9'9'#9'Categoria');
  dbgData.Selected.Add('RESULTADO'#9'14'#9'Resultado');
  dbgData.Selected.Add('EFE_Y_BANCO'#9'12'#9'Efectivo o~Banco');
  dbgData.Selected.Add('REFINANCIADO'#9'12'#9'Refinanciado');
  dbgData.Selected.Add('GESTIONES'#9'8'#9'#~Negociac.');
  dbgData.Selected.Add('NEGOCIACION'#9'18'#9'Negociación');
  dbgData.ApplySelected;

  dbgData.GroupFieldName:='';

  dbgData.DataSource := DM1.dsQry7;
  pnlBusca.Visible:=True;
  lblReg.Caption:= ' Registros : '+inttostr(DM1.cdsQry7.recordcount)+' ';
  Screen.Cursor := crDefault;
end;

procedure TFRepGestor.BitBtn4Click(Sender: TObject);
var
  xSQL : String;
  sMes : String;
begin
  lblTitulo.Caption:='Total de Docentes Asignados a un Gestor';
  sMes:=cboPeriodoCartera.Text;
  dblcdGestor.Text:='';
  edtBuscar.Text:='';
  Screen.Cursor := crHourGlass;
  nReporte:=4;

  xSQL:='SELECT A.USUARIO, A.ASOID, D.ASOAPENOM DOCENTE, RESUMECLAS CATEGORIA, NVL(TIPO_GESTION,''SIN CONTACTO'') TIPO_GESTION, '
       +  'contacto, nocontacto NO_CONTACTO, FEC_CONTACTO, '
       +  'case when NVL(c.contactado,''N'')=''S'' then ''CONTACTO'' else ''NO CONTACTO'' end RESULTADO, '
       +  'B.COD_NEG, NEGOCIACION,  FEC_COMPROMISO, NVL(EFE_PAGO,0)+NVL(BAN_PAGO,0) '
       +  'MONTO_EFECTIVO, NVL(REF_PAGO,0) MONTO_REFINANCIADO'
       +'FROM ( '
       +  'SELECT A.USUARIO ,A.ASOID, RESUMECLAS, GESTION, GESTOR, '
       +     'COUNT(*) GESTIONES, '
       +     'SUM(case when NVL(e.contactado,''N'')=''S'' then 1 else 0 end) contacto,  '
       +     'SUM(case when NVL(e.contactado,''N'')=''N'' then 1 else 0 end) NOcontacto '
       +  'FROM '
       +   '( SELECT DISTINCT GESTION, A.USUARIO, ASOID, CFC_F FROM '
       +   '( SELECT DISTINCT ''DOMICILIARIAS'' GESTION, A.USUARIO, ASOID, CFC_F from GES_COB_DOM A where periodo='''+sMes+''' '
       +   '  UNION ALL '
       +   '  SELECT DISTINCT ''TELEFONICAS'' GESTION, A.USUARIO, ASOID, CFC_F   from GES_COB_IND A where periodo='''+sMes+''' '
       +   '  UNION ALL '
       +   '  SELECT DISTINCT ''DOMICILIARIAS'' GESTION, A.USUARIO, ASOID, CFC_F from GES_COB_DOM_HIS A where periodo='''+sMes+''' '
// Inicio: SPP_201305_GESCOB F2 nuevo campo en la BD
       +   '                  AND ASIGNADO = ''S'' '
// Fin: SPP_201305_GESCOB
       +   '  UNION ALL '
       +   '  SELECT DISTINCT ''TELEFONICAS'' GESTION, A.USUARIO, ASOID, CFC_F   from GES_COB_IND_HIS A where periodo='''+sMes+''' '
// Inicio: SPP_201305_GESCOB F2 nuevo campo en la BD
       +   '                  AND ASIGNADO = ''S'' '
// Fin: SPP_201305_GESCOB
       +   ' ) A ) A, COB113 C, GES_COB_COMPROMISO D, GES_REF_SEG_DET e '
       +' WHERE A.CFC_F=C.RESUMEID(+) '
       +'   AND A.ASOID=D.ASOID(+) AND D.PERIODO(+)='''+sMes+''' AND A.USUARIO=D.GESTOR(+) '
       +'   and d.idgtn=e.idgtn(+) and d.idgtndet=e.idgtndet(+) '
       +' GROUP BY A.USUARIO ,A.ASOID, RESUMECLAS, GESTION, GESTOR '
       +' '
       +' ) A, ( SELECT A.*, CASE WHEN SUBSTR(IDGTNDET,1,1)=''5'' THEN ''TELEFONICA'' ELSE ''DOMICILIARIA'' END TIPO_GESTION  '
       +        'from GES_COB_COMPROMISO A where periodo='''+sMes+''' ) B, '
       +'        GES_REF_SEG_DET C, APO201 D, GES_COB_NEGOCIACION N, APO158 P '
       +' WHERE A.ASOID=B.ASOID(+) '
       +'   and b.idgtn=c.idgtn(+) and b.idgtndet=c.idgtndet(+) '
       +'   AND A.ASOID=D.ASOID(+) '
       +'   AND A.GESTOR=B.GESTOR(+) '
       +'   AND B.COD_NEG=N.COD_NEG(+) '
       +'   AND SUBSTR(D.ZIPID,1,2) = P.DPTOID(+) '
       +' ORDER BY A.USUARIO, A.ASOID, RESUMECLAS, GESTION, FEC_CONTACTO';

  DM1.cdsQry7.Close;
  DM1.cdsQry7.Filtered:=False;
  DM1.cdsQry7.IndexFieldNames:='';
  DM1.cdsQry7.DataRequest(xSQL);
  DM1.cdsQry7.Open;

  DM1.cdsQry7.IndexFieldNames:='DOCENTE;CATEGORIA';
  DM1.cdsQry7.First;

  dbgData.Selected.Clear;
  dbgData.Selected.Add('USUARIO'#9'12'#9'Gestor');
  dbgData.Selected.Add('ASOID'#9'10'#9'Código~Asociado');
  dbgData.Selected.Add('DOCENTE'#9'38'#9'#~Asociado');
  dbgData.Selected.Add('CATEGORIA'#9'9'#9'Categoria');
  dbgData.Selected.Add('TIPO_GESTION'#9'14'#9'Gestiones');
  dbgData.Selected.Add('contacto'#9'9'#9'Contacto');
  dbgData.Selected.Add('NO_CONTACTO'#9'9'#9'No~Contacto');
  dbgData.Selected.Add('FEC_CONTACTO'#9'11'#9'Fecha~Contacto');
  dbgData.Selected.Add('RESULTADO'#9'14'#9'Resultado');
  dbgData.Selected.Add('COD_NEG'#9'4'#9'Cod.~Neg.');
  dbgData.Selected.Add('NEGOCIACION'#9'15'#9'Negociacion');
  dbgData.Selected.Add('FEC_COMPROMISO'#9'11'#9'Fecha~Compromiso');
  dbgData.Selected.Add('MONTO_EFECTIVO'#9'11'#9'Efectivo/~Banco');
  dbgData.Selected.Add('MONTO_REFINANCIADO'#9'11'#9'Refinanciado');
  dbgData.ApplySelected;

  dbgData.DataSource := DM1.dsQry7;
  Screen.Cursor := crDefault;
end;

procedure TFRepGestor.btnExportarClick(Sender: TObject);
begin
   Screen.Cursor := crHourGlass;
   Try
      If nReporte = 1 Then
      Begin
         With dbgData, dbgData.ExportOptions Do
         Begin
            ExportType := wwgetSYLK;
            FileName := 'GestoresPorGestionRealizada.slk';
            DM1.OpcionesExportExcel(dbgData.ExportOptions);
            dbgData.ExportOptions.TitleName := 'GestoresPorGestionRealizada';
            Save;
            If Not (esoClipboard In Options) Then
               ShellExecute(Handle, 'Open', PChar(dbgData.exportoptions.Filename), Nil, Nil, sw_shownormal);
         End;
      end;
      If nReporte = 2 Then
      Begin
         With dbgData, dbgData.ExportOptions Do
         Begin
            ExportType := wwgetSYLK;
            FileName := 'GestoresPorFormaDePago.slk';
            DM1.OpcionesExportExcel(dbgData.ExportOptions);
            dbgData.ExportOptions.TitleName := 'GestoresPorFormaDePago';
            Save;
            If Not (esoClipboard In Options) Then
               ShellExecute(Handle, 'Open', PChar(dbgData.exportoptions.Filename), Nil, Nil, sw_shownormal);
         End;
      end;
      If nReporte = 3 Then
      Begin
         With dbgData, dbgData.ExportOptions Do
         Begin
            ExportType := wwgetSYLK;
            FileName := 'DocentesAsignadosPorGestor.slk';
            DM1.OpcionesExportExcel(dbgData.ExportOptions);
            dbgData.ExportOptions.TitleName := 'DocentesAsignadosPorGestor';
            Save;
            If Not (esoClipboard In Options) Then
               ShellExecute(Handle, 'Open', PChar(dbgData.exportoptions.Filename), Nil, Nil, sw_shownormal);
         End;
      end;
      If nReporte = 4 Then
      Begin
         With dbgData, dbgData.ExportOptions Do
         Begin
            ExportType := wwgetSYLK;
            FileName := 'TotalDocentesAsignadosPorGestor.slk';
            DM1.OpcionesExportExcel(dbgData.ExportOptions);
            dbgData.ExportOptions.TitleName := 'TotalDocentesAsignadosPorGestor';
            Save;
            If Not (esoClipboard In Options) Then
               ShellExecute(Handle, 'Open', PChar(dbgData.exportoptions.Filename), Nil, Nil, sw_shownormal);
         End;
      end;

      Screen.Cursor := crDefault;
   Except
      Screen.Cursor := crDefault;
      MessageDlg('No se puede grabar el Archivo ' + chr(13) + 'Cierre todos los Archivos en Excel y vuelva a intentarlo', mtWarning, [mbOk], 0);
   End;

end;

procedure TFRepGestor.btnSalirClick(Sender: TObject);
begin
   close;
end;

procedure TFRepGestor.cboPeriodoCarteraChange(Sender: TObject);
var
   xSQL, sMes : String;
begin
   DM1.cdsQry7.Close;
   sMes:=cboPeriodoCartera.Text;
   xSQL:='SELECT DISTINCT A.USUARIO '
        +'FROM ( SELECT DISTINCT A.USUARIO from GES_COB_DOM A where periodo = '''+sMes+''' '
        +       'UNION ALL '
        +       'SELECT DISTINCT A.USUARIO from GES_COB_IND A where periodo = '''+sMes+''' '
        +       'UNION ALL '
        +       'SELECT DISTINCT A.USUARIO from GES_COB_DOM_HIS A where periodo = '''+sMes+''' '
        +       'UNION ALL '
        +       'SELECT DISTINCT A.USUARIO from GES_COB_IND_HIS A where periodo = '''+sMes+''' '
        +       ') A '
        +'order by USUARIO ASC';
   DM1.cdsQry4.Close;
   DM1.cdsQry4.DataRequest(xSQL);
   DM1.cdsQry4.Open;

   dblcdGestor.LookupTable:=DM1.cdsQry4;
   dblcdGestor.LookupField:='USUARIO';
end;

procedure TFRepGestor.dblcdGestorChange(Sender: TObject);
begin
   edtBuscar.Text:='';
   DM1.cdsQry7.Filtered:=False;
   if dblcdGestor.Text<>'' then
   begin
      DM1.cdsQry7.Filter  :='USUARIO='''+dblcdGestor.Text+'''';
      DM1.cdsQry7.Filtered:=true;
   end;
   rgContac.ItemIndex:=0;

   lblReg.Caption:= ' Registros : '+inttostr(DM1.cdsQry7.recordcount)+' ';
end;

procedure TFRepGestor.edtBuscarChange(Sender: TObject);
begin
  If Length(Trim(edtBuscar.Text)) > 0 Then
     DM1.cdsQry7.Locate('DOCENTE', VarArrayOf([TRIM(edtBuscar.Text)]), [loPartialKey]);
end;

procedure TFRepGestor.edtBuscarKeyPress(Sender: TObject; var Key: Char);
begin
 If Key = #13 Then
   Begin
      If Length(Trim(edtBuscar.Text)) > 0 Then
      Begin
//         dbgPAgos.SetFocus;
         edtBuscar.Text := '';
      End
      Else
      Begin
         MessageDlg('Debe Digitar El Nombre Del Asociado, Para Iniciar La Busqueda', mtError, [mbOk], 0);
         edtBuscar.SetFocus;
      End;
   End;
end;

procedure TFRepGestor.dbgDataDblClick(Sender: TObject);
begin
  if nReporte=3 then
  begin
     Try
        FRepGestorDet := TFRepGestorDet.create(Self);
        FRepGestorDet.cboPeriodoCartera.Text:=cboPeriodoCartera.Text;
        FRepGestorDet.meCodMod.Text         :=DM1.cdsQry7.FieldByName('ASOCODMOD').AsString;
        FRepGestorDet.ShowModal;
     Finally
        FRepGestorDet.Free;
     End;
  end;
end;




procedure TFRepGestor.dbgDataCalcCellColors(Sender: TObject; Field: TField;
  State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
begin
  if nReporte<3 then
//     if (Field.FieldName='USUARIO_GES') or (Field.FieldName='ASIGNADAS') or (Field.FieldName='GESTIONADAS')then
//     begin
        if not Highlight then
           if ((dm1.cdsQry7.FieldByName('NUMCOL').AsInteger mod 2)>0)  then
              ABrush.Color:=$00B9DCFF   //  $008CC6FF

           else
              ABrush.Color:=$00CCFFFF;  //$009FFFFF;
//     end;
end;

procedure TFRepGestor.rgContacClick(Sender: TObject);
begin
   DM1.cdsQry7.Filtered:=False;

   DM1.cdsQry7.Filter  :='';

   if dblcdGestor.Text<>'' then
   begin
      DM1.cdsQry7.Filter  :='USUARIO='''+dblcdGestor.Text+'''';
   end;

   if rgContac.ItemIndex=0 then
      DM1.cdsQry7.Filtered:=true;

   if rgContac.ItemIndex=1 then
   begin
      if DM1.cdsQry7.Filter<>'' then DM1.cdsQry7.Filter:=DM1.cdsQry7.Filter+' and ';
      DM1.cdsQry7.Filter  :=DM1.cdsQry7.Filter + 'RESULTADO=''CONTACTO''';
      DM1.cdsQry7.Filtered:=true;
   END;
   if rgContac.ItemIndex=2 then
   begin
      if DM1.cdsQry7.Filter<>'' then DM1.cdsQry7.Filter:=DM1.cdsQry7.Filter+' and ';
      DM1.cdsQry7.Filter:=DM1.cdsQry7.Filter+'RESULTADO=''NO CONTACTO''';
      DM1.cdsQry7.Filtered:=true;
   END;

   lblReg.Caption:= ' Registros : '+inttostr(DM1.cdsQry7.recordcount)+' ';
end;


// Inicio: SPP_201305_GESCOB F3 carga combos
procedure TFRepGestor.FormActivate(Sender: TObject);
Var
   xsSQL : String;
begin
   Screen.Cursor := crHourGlass;

   xsSQL := 'SELECT DPTOID, DPTODES, DPTOABR FROM APO158 ORDER BY DPTOID';
   DM1.cdsDpto.Close;
   DM1.cdsDpto.DataRequest(xsSQL);
   DM1.cdsDpto.Open;

   xsSQL := 'SELECT CIUDID, CIUDDES, CIUDABR, DPTOID FROM TGE121 ORDER BY DPTOID, CIUDID';
   DM1.cdsProvin.Close;
   DM1.cdsProvin.DataRequest(xsSQL);
   DM1.cdsProvin.Open;

   xsSQL := 'SELECT ZIPABR,ZIPDES,ZIPID,CIUDID,DPTOID FROM TGE122 ORDER BY DPTOID, CIUDID, ZIPID';
   DM1.cdsDist.Close;
   DM1.cdsDist.DataRequest(xsSQL);
   DM1.cdsDist.Open;

///   xsSQL := 'SELECT OFDESID, OFDESNOM FROM APO110 WHERE DPTOID <> ''15'' ORDER BY OFDESNOM';
   xsSQL := ' SELECT ''15'' CODIGO, ''LIMA'' DESCRIPCION FROM DUAL '
         +  ' UNION ALL '
         +  ' SELECT ''99'' CODIGO, ''PROVINCIAS'' DESCRIPCION FROM DUAL ';
   DM1.cdsGestores.Close;
   DM1.cdsGestores.DataRequest(xsSQL);
   DM1.cdsGestores.Open;

   xsSQL := 'SELECT TO_CHAR(IDCONCAM) IDCONCAM, NOMCAM, FECINI FROM GES_COB_CON_CAM WHERE ESTADO = ''ACTIVA'' ORDER BY FECINI DESC';
   DM1.cdsCampannas.Close;
   DM1.cdsCampannas.DataRequest(xsSQL);
   DM1.cdsCampannas.Open;

   cmbOrden.Items.Add('POR CUENTAS');
   cmbOrden.Items.Add('POR EFECTIVO');
   cmbOrden.Items.Add('POR REFINANCIADO');

   Screen.Cursor := crDefault;
end;
// Fin: SPP_201305_GESCOB

// Inicio: SPP_201305_GESCOB F3 departamentos
procedure TFRepGestor.dblcDptoChange(Sender: TObject);
begin
   Screen.Cursor := crHourGlass;
   DM1.cdsQry7.Close;

   //ubigeo
   DM1.cdsDist.Filtered := False;
   DM1.cdsDist.Filter := '(DPTOID = ''xyz'' AND CIUDID = ''xyz'' AND ZIPID = ''xyz'')';
   DM1.cdsDist.Filtered := true;
   dblcDist.enabled := false;
   dblcDist.text := '';
   edtDist.text := '';
   btnImprimir.Enabled := false;

   If DM1.cdsDPTO.Locate('DPTOID', VarArrayof([dblcDpto.text]), []) Then
     Begin
        EdtDpto.Text := DM1.cdsDpto.FieldByName('DPTODES').Asstring;
        DM1.cdsProvin.Filtered := False;
        DM1.cdsProvin.Filter := '(DPTOID = ' + dblcDpto.text + ')';
        DM1.cdsProvin.Filtered := true;
        dblcProvin.Enabled := True;
     End
   Else
     Begin
        Beep;
        EdtDpto.Text := '';
     End;
   dblcprovin.text := '';
   edtprovin.text := '';
   Screen.Cursor := crDefault;
end;

// Fin: SPP_201305_GESCOB

// Inicio: SPP_201305_GESCOB F3 provincias
procedure TFRepGestor.dblcProvinChange(Sender: TObject);
begin
   Screen.Cursor := crHourGlass;
   DM1.cdsQry7.Close;
   btnImprimir.Enabled := false;


   If DM1.cdsProvin.Locate('CIUDID', VarArrayof([dblcProvin.text]), []) Then
     Begin
        Edtprovin.Text := DM1.cdsProvin.FieldByName('CIUDDES').Asstring;
        DM1.cdsDist.Filtered := False;
        DM1.cdsDist.Filter := '(DPTOID = ' + dblcDpto.text + ' AND CIUDID = ' + dblcProvin.text + ')';
        DM1.cdsDist.Filtered := True;
        dblcDist.Enabled := True;
     End
   Else
     Begin
        Beep;
        EdtProvin.Text := '';
     End;
   dblcDist.text := '';
   edtDist.text := '';
   Screen.Cursor := crDefault;
end;

// Fin: SPP_201305_GESCOB

// Inicio: SPP_201305_GESCOB F3 distritos
procedure TFRepGestor.dblcDistChange(Sender: TObject);
begin
   Screen.Cursor := crHourGlass;
   DM1.cdsQry7.Close;
   btnImprimir.Enabled := false;

   If DM1.cdsDist.Locate('ZIPID', VarArrayof([dblcDist.text]), []) Then
     Begin
        edtDist.Text := DM1.cdsDist.FieldByName('ZIPDES').Asstring;
     End
   Else
     Begin
        If Length(dblcDist.Text) <> 2 Then
        Begin
           Beep;
           EdtDist.Text := '';
        End;
   End;
   Screen.Cursor := crDefault;
end;
// Fin: SPP_201305_GESCOB

// Inicio: SPP_201305_GESCOB F3 distritos
procedure TFRepGestor.dblcDistEnter(Sender: TObject);
begin
   If dblcProvin.Text = '' Then
   Begin
      ShowMessage('Falta ingresar Provincia');
      dblcProvin.SetFocus;
   End;
end;
// Fin: SPP_201305_GESCOB

// Inicio: SPP_201305_GESCOB F3 provincias
procedure TFRepGestor.dblcProvinEnter(Sender: TObject);
begin
   If dblcDpto.Text = '' Then
   Begin
      ShowMessage('Falta ingresar departamento');
      dblcDpto.SetFocus;
   End;
end;
// Fin: SPP_201305_GESCOB

// Inicio: SPP_201305_GESCOB F3 Gestores
procedure TFRepGestor.dblcGestoresChange(Sender: TObject);
begin
   Screen.Cursor := crHourGlass;
   DM1.cdsQry7.Close;
   btnImprimir.Enabled := false;

   If DM1.cdsGestores.Locate('CODIGO', VarArrayof([dblcGestores.text]), []) Then
     Begin
        edtGestores.Text := DM1.cdsGestores.FieldByName('DESCRIPCION').Asstring;
     End
   Else
     Begin
        Beep;
        edtGestores.Text := '';
     End;
   Screen.Cursor := crDefault;
end;
// Fin: SPP_201305_GESCOB

// Inicio: SPP_201305_GESCOB F3 campañas
procedure TFRepGestor.dblcCampannasChange(Sender: TObject);
begin
   Screen.Cursor := crHourGlass;
   DM1.cdsQry7.Close;
   btnImprimir.Enabled := false;

   If DM1.cdsCampannas.Locate('IDCONCAM', VarArrayof([dblcCampannas.text]), []) Then
     Begin
        edtCampanna.Text := DM1.cdsCampannas.FieldByName('NOMCAM').Asstring;
     End
   Else
     Begin
        Beep;
        edtCampanna.Text := '';
     End;
   Screen.Cursor := crDefault;
end;
// Fin: SPP_201305_GESCOB

// Inicio: SPP_201305_GESCOB F3 Impresión
procedure TFRepGestor.btnImprimirClick(Sender: TObject);
var
  xsSubTit:String;
begin
  Screen.Cursor := crHourGlass;

  xsSubTit := '';

  If DM1.cdsQry7.RecordCount > 0 Then
     Begin
         if Trim(edtDpto.Text) <> ''     Then xsSubTit := 'DEPARTAMENTO: ' + Trim(edtDpto.Text);
         if Trim(edtProvin.Text) <> ''   Then xsSubTit := xsSubTit + '  - PROVINCIA: ' + Trim(edtProvin.Text);
         if Trim(edtDist.Text) <> ''     Then xsSubTit := xsSubTit + '  - DISTRITO: ' + Trim(edtDist.Text);
         if Trim(edtGestores.Text) <> ''   Then xsSubTit := xsSubTit + '  - GESTORES: ' + Trim(edtGestores.Text);
         if Trim(edtCampanna.Text) <> '' Then xsSubTit := xsSubTit + '  - CAMPAÑA: ' + Trim(edtCampanna.Text);
         if Trim(cmbOrden.Text) <> ''    Then xsSubTit := xsSubTit + '  - ORDENADO: ' + Trim(cmbOrden.Text);

         ppLblTit01.Text := 'GESTORES POR FORMA DE PAGO - PERIODO ' + cboPeriodoCartera.Text;
         ppLblTit02.Text := '';
         ppLblTit03.Text := xsSubTit;
         ppLblUser.Caption := 'Emitido Por :  ' + Trim(DM1.CrgDescrip('USERID=' + QuotedStr(Trim(DM1.wUsuario)), 'TGE006', 'USERNOM'));
         dbpRptPipeline.DataSource := DM1.dsQry7;
         repReport.Print;
     End;

   Screen.Cursor := crDefault;
end;
// Fin: SPP_201305_GESCOB

// Inicio: SPP_201305_GESCOB F3 combo ordenar
procedure TFRepGestor.cmbOrdenChange(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;

  OrdenaDatos;
  AgrupaVistaGrilla;

  Screen.Cursor := crDefault;
end;
// Fin: SPP_201305_GESCOB

// Inicio: SPP_201305_GESCOB F3 ordena
procedure TFRepGestor.OrdenaDatos;
type
  xRegistrosGrilla = record
    xsCampo1 : string;
    xnCampo2 : double;
  end;
var
  xsGestor : String;
  xnTotGestor : Double;
  xnCont, i : Integer;
  xnReg : Integer;
  xnOrdenadoPor : Integer;
  xnColor : Integer;

  xRegistro : xRegistrosGrilla;                //variable de tipo registroPrueba (tipo creado anteriormente)
  xArrayTemp : array of xRegistrosGrilla;      // una array con elementos de tipo "registro"

begin
  xnReg := DM1.cdsQry7.RecordCount;
  SetLength(xArrayTemp, xnReg);

  xnOrdenadoPor := cmbOrden.ItemIndex;

// 1.- Elimina agrupamientos en la vista de la grilla
  EliminaGrupos;


// 2.- Calcula y guarda totales de cada grupo
  xnTotGestor := 0;
  xnCont      := 0;

  DM1.cdsQry7.IndexFieldNames:='USUARIO_GES;TIPO_GESTION';
  DM1.cdsQry7.First;
  xsGestor    := DM1.cdsQry7.FieldByname('USUARIO_GES').AsString;
  While not DM1.cdsQry7.Eof do
  begin
     if xsGestor <> DM1.cdsQry7.FieldByname('USUARIO_GES').AsString then
        Begin
            xRegistro.xsCampo1 := xsGestor;
            xRegistro.xnCampo2 := xnTotGestor;
            xArrayTemp[xnCont] := xRegistro;
            xnCont := xnCont + 1;

            xsGestor := DM1.cdsQry7.FieldByname('USUARIO_GES').AsString;
            xnTotGestor := 0;
        End;

     If xnOrdenadoPor = 0 Then
        Begin
            xnTotGestor := xnTotGestor + DM1.cdsQry7.FieldByname('EFE_X_PROMESA').AsInteger;
            xnTotGestor := xnTotGestor + DM1.cdsQry7.FieldByname('EFE_OTRO_RES').AsInteger;
            xnTotGestor := xnTotGestor + DM1.cdsQry7.FieldByname('REF_X_PROMESA').AsInteger;
            xnTotGestor := xnTotGestor + DM1.cdsQry7.FieldByname('REF_OTRO_RES').AsInteger;
        End
     Else If xnOrdenadoPor = 1 Then
          Begin
              xnTotGestor := xnTotGestor + DM1.cdsQry7.FieldByname('MONTO_EFECTIVO').AsInteger;
          End
     Else If xnOrdenadoPor = 2 Then
          Begin
              xnTotGestor := xnTotGestor + DM1.cdsQry7.FieldByname('MONTO_REFINANCIADO').AsInteger;
          End;

     DM1.cdsQry7.Next;
  end;

// para el último gestor
  xRegistro.xsCampo1 := xsGestor;
  xRegistro.xnCampo2 := xnTotGestor;
  xArrayTemp[xnCont] := xRegistro;

// 3.- Graba totales de cada grupo en todos los registros
  for xnCont := 0 to (xnReg-1) do
  begin
      xRegistro := xArrayTemp[xnCont];
      xsGestor := xRegistro.xsCampo1;
      xnTotGestor := xRegistro.xnCampo2;

      If DM1.cdsQry7.Locate('USUARIO_GES', VarArrayof([xsGestor]), []) Then
         Begin
             while ((not DM1.cdsQry7.Eof) and (xsGestor = DM1.cdsQry7.FieldByname('USUARIO_GES').AsString)) do
             begin
                 DM1.cdsQry7.Edit;
                 DM1.cdsQry7.FieldByname('TOTAL').AsFloat := 999999 - xnTotGestor;
                 DM1.cdsQry7.Post;

                 DM1.cdsQry7.Next;
             end;
         end;
  end;

// 4.- agrupa x gestor con NUMCOL para que se pinte intercalado
  xsGestor := '';
  xnCont := 0;

  DM1.cdsQry7.IndexFieldNames:='TOTAL;USUARIO_GES;TIPO_GESTION';
  DM1.cdsQry7.First;
  While not DM1.cdsQry7.Eof do
  begin
     if xsGestor <> DM1.cdsQry7.FieldByname('USUARIO_GES').AsString then
     begin
        xsGestor := DM1.cdsQry7.FieldByname('USUARIO_GES').AsString;
        xnCont  := xnCont + 1;
     end;
     DM1.cdsQry7.Edit;
     DM1.cdsQry7.FieldByname('NUMCOL').AsInteger := xnCont;
     DM1.cdsQry7.Post;

     DM1.cdsQry7.Next;
  end;
  DM1.cdsQry7.First;
end;
// Fin: SPP_201305_GESCOB

// Inicio: SPP_201305_GESCOB F3 grilla
procedure TFRepGestor.AgrupaVistaGrilla;
var
  xIndex:String;

begin
  EliminaGrupos;

  xIndex:='TOTAL;USUARIO_GES;ASIGNADAS;GESTIONADAS;TIPO_GESTION';

 // if DM1.cdsQry7.IndexName='XXX' then
     DM1.cdsQry7.DeleteIndex( 'XXX' );
  DM1.cdsQry7.AddIndex( 'XXX', xIndex, [ixCaseInsensitive],'','', 3 );
  DM1.cdsQry7.IndexName:='XXX';

  DM1.cdsQry7.Aggregates.Add;
  DM1.cdsQry7.Aggregates[ 0 ].AggregateName:='USUARIO_GES';
  DM1.cdsQry7.Aggregates[ 0 ].GroupingLevel:=1;
  DM1.cdsQry7.Aggregates[ 0 ].IndexName    :='XXX';
  DM1.cdsQry7.FieldByName('USUARIO_GES').OnGetText:=cdsQry7GetText1;
  DM1.cdsQry7.Aggregates[ 0 ].Active := True;

  DM1.cdsQry7.Aggregates.Add;
  DM1.cdsQry7.Aggregates[ 1 ].AggregateName:='ASIGNADAS';
  DM1.cdsQry7.Aggregates[ 1 ].GroupingLevel:=2;
  DM1.cdsQry7.Aggregates[ 1 ].IndexName    :='XXX';
  DM1.cdsQry7.FieldByName('ASIGNADAS').OnGetText:=cdsQry7GetText2;
  DM1.cdsQry7.Aggregates[ 1 ].Active := True;

  DM1.cdsQry7.Aggregates.Add;
  DM1.cdsQry7.Aggregates[ 2 ].AggregateName:='GESTIONADAS';
  DM1.cdsQry7.Aggregates[ 2 ].GroupingLevel:=3;
  DM1.cdsQry7.Aggregates[ 2 ].IndexName    :='XXX';
  DM1.cdsQry7.FieldByName('GESTIONADAS').OnGetText:=cdsQry7GetText2;
  DM1.cdsQry7.Aggregates[ 2 ].Active := True;

  DM1.cdsQry7.AggregatesActive:=True;
  DM1.cdsQry7.First;
end;
// Fin: SPP_201305_GESCOB


end.

