// Inicio Uso Estándares: 01/08/2011
// Unidad : Gestión de Cobranzas
// Formulario : FResultadosGestion
// Fecha de Creación : 17/10/2014
// Autor : Equipo de Sistemas
// Objetivo : Medir el impacto de la gestion de cobranza
// Actualizaciones:
// HPC_201403_GESCOB :  Impacto de la gestión de cobranzas (saldos vencidos y contención del saldo total)(2.2)
// SPP_201404_GESCOB: Se realiza el pase a producción a partir del HPC_201403_GESCOB

unit GES568;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, wwdblook, Grids, Wwdbigrd, Wwdbgrid, db;

type
  TFResultadosGestion = class(TForm)
    pnl1: TPanel;
    btnSalir: TBitBtn;
    pnlIzquierdoSuperior: TPanel;
    lbl1: TLabel;
    cboPeriodo: TwwDBLookupCombo;
    Label1: TLabel;
    cboTipoCartera: TwwDBLookupCombo;
    dbgCabecera: TwwDBGrid;
    btnExportar: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnSalirClick(Sender: TObject);
    procedure cboPeriodoChange(Sender: TObject);
    procedure btnExportarClick(Sender: TObject);
    procedure dbgCabeceraDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FResultadosGestion: TFResultadosGestion;

implementation

uses GESDM1, GES569;

{$R *.dfm}

(******************************************************************************)
procedure TFResultadosGestion.FormShow(Sender: TObject);
begin
   Screen.Cursor := crHourGlass;
   // CARGAR TIPO DE CARTERA
   DM1.fn_cargar_tipo_cartera_combo(cboTipoCartera, DM1.cdsQry2);
   cboTipoCartera.Text := DM1.cdsQry2.fieldbyname('TIPCAR').asstring;

   // CARGAR PERIODO
   DM1.fn_cargar_periodos_combo(cboPeriodo, DM1.cdsQry1);
   cboPeriodo.Text := DM1.cdsQry1.fieldbyname('PERIODO').asstring;

   Screen.Cursor := crDefault;
end;

(******************************************************************************)
procedure TFResultadosGestion.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;
(******************************************************************************)

procedure TFResultadosGestion.btnSalirClick(Sender: TObject);
begin
  Close;
end;
(******************************************************************************)

procedure TFResultadosGestion.cboPeriodoChange(Sender: TObject);
Var xsSQL : string;
    xnASIGNADO : Double;
    xnGESTIONADO : Double;
    xnCONTACTADO : Double;
    xnCONTACTO_EFECTIVO : Double;
    xnMONTO_COBRADO : Double;
    xnTASA_CURA : Double;
    xnTASA_EFECTIVIDAD : Double;
    xnCONTENCION : Double;
    xnRECUPERACION : Double;
begin
 Screen.Cursor := crHourGlass;
 if  (cboPeriodO.Text = '') or (cboTipoCartera.Text = '') then exit;
 WITH dbgCabecera DO
  begin
    IF (Sender = cboPeriodo) THEN
    BEGIN
       xsSQL := 'BEGIN '
              + '   DELETE FROM GES_COB_UNI_IMP_COB_GTT; '
              + '   SP_GES_COB_GEN_UNI_IMP_COB(' + QuotedStr(cboPeriodo.Text) + '); '
              + 'END; ';
       DM1.DCOM1.AppServer.EjecutaSql(xsSQL);
    END;

    DM1.cdsQry2.Locate('TIPCAR', VarArrayof([cboTipoCartera.Text]), []);
    xsSQL :='SELECT D.DPTODES DEPARTAMENTO, B.OFDESNOM ORIGEN_OPERACION '
          + '      ,A.OFDESID '
          + '      ,A.ASIGNADO '
          + '      ,A.GESTIONADO '
          + '      ,A.CONTACTADO '
          + '      ,A.CONTACTO_EFECTIVO '
          + '      ,A.MONTO_COBRADO '
          + '      ,CASE WHEN A.GESTIONADO = 0 THEN 0 ELSE ROUND((A.CONTACTO_EFECTIVO / A.GESTIONADO)*100, 2) END TASA_CURA '
          + '      ,CASE WHEN A.CONTACTADO = 0 THEN 0 ELSE ROUND((A.CONTACTO_EFECTIVO / A.CONTACTADO)*100, 2) END TASA_EFECTIVIDAD '
          + '      ,A.CONTENCION '
          + '      ,A.RECUPERACION '
          + '      ,C.TIPO_INCIDENTE '
          + ' FROM(SELECT C.DPTOID, A.OFDESID '
          + '            ,SUM(CASE WHEN A.ASIGNADO = ''S'' THEN 1 ELSE 0 END) ASIGNADO '
          + '            ,SUM(CASE WHEN A.ASIGNADO = ''S'' AND A.GESTIONADO = ''S'' THEN 1 ELSE 0 END) GESTIONADO '
          + '            ,SUM(CASE WHEN A.ASIGNADO = ''S'' AND A.GESTIONADO = ''S'' AND A.CONTACTADO = ''S'' AND A.DIRECTO = ''S'' THEN 1 ELSE 0 END) CONTACTADO '
          + '            ,SUM(CASE WHEN A.ASIGNADO = ''S'' AND A.GESTIONADO = ''S'' AND A.CONTACTADO = ''S'' AND A.DIRECTO = ''S'' AND (NVL(MONCOBEFE,0) + NVL(MONCOBBAN,0)) > 0 THEN 1 ELSE 0 END) CONTACTO_EFECTIVO '
          + '            ,SUM(CASE WHEN A.ASIGNADO = ''S'' AND A.GESTIONADO = ''S'' AND A.CONTACTADO = ''S'' AND A.DIRECTO = ''S'' THEN (NVL(MONCOBEFE,0) + NVL(MONCOBBAN,0)) ELSE 0 END) MONTO_COBRADO '
          + '            ,SUM(CASE WHEN A.ASIGNADO = ''S'' AND A.GESTIONADO = ''S'' AND A.CONTACTADO = ''S'' AND A.DIRECTO = ''S'' AND (NVL(MONCOBEFE,0) + NVL(MONCOBBAN,0)) > 0 THEN NVL(SALTOT,0) ELSE 0 END) CONTENCION '
          + '            ,SUM(CASE WHEN A.ASIGNADO = ''S'' AND A.GESTIONADO = ''S'' AND A.CONTACTADO = ''S'' AND A.DIRECTO = ''S'' AND (NVL(MONCOBEFE,0) + NVL(MONCOBBAN,0)) > 0 THEN NVL(SALVEN,0) ELSE 0 END) RECUPERACION '
          + '        FROM GES_COB_UNI_IMP_COB_GTT A, APO110 B, TGE158 C'
          + '       WHERE A.PERIODO = ' + QuotedStr(cboPeriodo.Text)
          + '         AND A.ASIGNADO = ''S'' '
          + '         AND A.CODTIPCAR = CASE WHEN ' + QuotedStr(DM1.cdsQry2.Fieldbyname('CODTIPCAR').AsString) + ' = ''00'' THEN A.CODTIPCAR ELSE ' + QuotedStr(DM1.cdsQry2.Fieldbyname('CODTIPCAR').AsString) + ' END '
          + '         AND A.OFDESID = B.OFDESID(+) '
          + '         AND B.DPTOID  = C.DPTOID(+) '
          + '       GROUP BY C.DPTOID, A.OFDESID) A '
          + '       ,APO110 B '
          + '       ,(SELECT E.OFDESID ,SUBSTR(RTRIM(XMLAGG(XMLELEMENT(E, E.TIPINC || '', '') ORDER BY E.OFDESID).EXTRACT(''//text()''), '', ''), 1, 250) TIPO_INCIDENTE '
          + '           FROM (SELECT DISTINCT A.OFDESID, B.TIPINC '
          + '                   FROM GES_COB_INC_MOV A, GES_COB_TIP_INC_CAT B '
          + '                  WHERE A.PERIODO = ' + QuotedStr(cboPeriodo.Text)
          + '                    AND A.CODESTINC = ''01'' '
          + '                    AND A.CODTIPINC = B.CODTIPINC '
          + '                 ) E '
          + '          GROUP BY E.OFDESID '
          + '        ) C, TGE158 D'
          + ' WHERE A.OFDESID = B.OFDESID '
          + '   AND A.OFDESID = C.OFDESID(+) '
          + '   AND A.DPTOID  = D.DPTOID(+)'
          + ' ORDER BY D.DPTODES, B.OFDESNOM ';

    DM1.cdsQry3.Close;
    DM1.cdsQry3.DataRequest(xsSQL);
    DM1.cdsQry3.Open;
    DataSource := DM1.dsQry3;

    Selected.Clear;
    Selected.Add('DEPARTAMENTO'#9'20'#9'DEPARTAMENTO');
    Selected.Add('ORIGEN_OPERACION'#9'30'#9'ORIGEN DE OPERACION');
    Selected.Add('ASIGNADO'#9'10'#9'ASIGNADO'#9'F'#9'OPERACIONES');
    Selected.Add('GESTIONADO'#9'10'#9'GESTIONADO'#9'F'#9'OPERACIONES');
    Selected.Add('CONTACTADO'#9'10'#9'CONTACTADO'#9'F'#9'OPERACIONES');
    Selected.Add('CONTACTO_EFECTIVO'#9'10'#9'CONTACTO~EFECTIVO'#9'F'#9'RESULTADOS');
    Selected.Add('MONTO_COBRADO'#9'15'#9'MONTO~COBRADO'#9'F'#9'RESULTADOS');
    Selected.Add('TASA_CURA'#9'10'#9'TASA DE~CURA(%)');
    Selected.Add('TASA_EFECTIVIDAD'#9'10'#9'TASA DE~EFECT(%)');
    Selected.Add('CONTENCION'#9'15'#9'CONTENCION'#9'F'#9'RESULTADOS');
    Selected.Add('RECUPERACION'#9'15'#9'RECUPERACION'#9'F'#9'RESULTADOS');
    Selected.Add('TIPO_INCIDENTE'#9'40'#9'INCIDENCIAS');
    ApplySelected;

    xnASIGNADO := 0;
    xnGESTIONADO := 0;
    xnCONTACTADO := 0;
    xnCONTACTO_EFECTIVO := 0;
    xnMONTO_COBRADO := 0;
    xnTASA_CURA := 0;
    xnTASA_EFECTIVIDAD := 0;
    xnCONTENCION := 0;
    xnRECUPERACION := 0;
    DataSource.DataSet.first;
    while not DataSource.DataSet.eof do
    begin
        xnASIGNADO := xnASIGNADO + DataSource.DataSet.FieldByName('ASIGNADO').Value;
        xnGESTIONADO := xnGESTIONADO + DataSource.DataSet.FieldByName('GESTIONADO').Value;
        xnCONTACTADO := xnCONTACTADO + DataSource.DataSet.FieldByName('CONTACTADO').Value;
        xnCONTACTO_EFECTIVO := xnCONTACTO_EFECTIVO + DataSource.DataSet.FieldByName('CONTACTO_EFECTIVO').Value;
        xnMONTO_COBRADO := xnMONTO_COBRADO + DataSource.DataSet.FieldByName('MONTO_COBRADO').Value;
        xnCONTENCION := xnCONTENCION + DataSource.DataSet.FieldByName('CONTENCION').Value;
        xnRECUPERACION := xnRECUPERACION + DataSource.DataSet.FieldByName('RECUPERACION').Value;
        DataSource.DataSet.next;
    end;
    IF xnGESTIONADO = 0 THEN xnTASA_CURA := 0 ELSE xnTASA_CURA := (xnCONTACTO_EFECTIVO / xnGESTIONADO) *100;
    IF xnCONTACTADO = 0 THEN xnTASA_EFECTIVIDAD := 0 ELSE xnTASA_EFECTIVIDAD := (xnCONTACTO_EFECTIVO / xnCONTACTADO) *100;

    TNumericField(DataSource.DataSet.FieldByName('ASIGNADO')).DisplayFormat          := '###,##0';
    TNumericField(DataSource.DataSet.FieldByName('GESTIONADO')).DisplayFormat        := '###,##0';
    TNumericField(DataSource.DataSet.FieldByName('CONTACTADO')).DisplayFormat        := '###,##0';
    TNumericField(DataSource.DataSet.FieldByName('CONTACTO_EFECTIVO')).DisplayFormat := '###,##0';
    TNumericField(DataSource.DataSet.FieldByName('MONTO_COBRADO')).DisplayFormat     := '###,##0.#0';
    TNumericField(DataSource.DataSet.FieldByName('TASA_CURA')).DisplayFormat         := '###,##0.#0';
    TNumericField(DataSource.DataSet.FieldByName('TASA_EFECTIVIDAD')).DisplayFormat  := '###,##0.#0';
    TNumericField(DataSource.DataSet.FieldByName('CONTENCION')).DisplayFormat        := '###,##0.#0';
    TNumericField(DataSource.DataSet.FieldByName('RECUPERACION')).DisplayFormat      := '###,##0.#0';

    ColumnByName('ORIGEN_OPERACION').FooterValue  := 'TOTAL';
    ColumnByName('ASIGNADO').FooterValue          := FormatCurr('###,##0', xnASIGNADO);
    ColumnByName('GESTIONADO').FooterValue        := FormatCurr('###,##0', xnGESTIONADO);
    ColumnByName('CONTACTADO').FooterValue        := FormatCurr('###,##0', xnCONTACTADO);
    ColumnByName('CONTACTO_EFECTIVO').FooterValue := FormatCurr('###,##0', xnCONTACTO_EFECTIVO);
    ColumnByName('MONTO_COBRADO').FooterValue     := FormatCurr('###,##0.#0', xnMONTO_COBRADO);
    ColumnByName('TASA_CURA').FooterValue         := FormatCurr('###,##0.#0', xnTASA_CURA);
    ColumnByName('TASA_EFECTIVIDAD').FooterValue  := FormatCurr('###,##0.#0', xnTASA_EFECTIVIDAD);
    ColumnByName('CONTENCION').FooterValue        := FormatCurr('###,##0.#0', xnCONTENCION);
    ColumnByName('RECUPERACION').FooterValue      := FormatCurr('###,##0.#0', xnRECUPERACION);
    GroupFieldName := 'DEPARTAMENTO';
    DataSource.DataSet.first;
  end;
  Screen.Cursor := crDefault;
end;
(******************************************************************************)
procedure TFResultadosGestion.btnExportarClick(Sender: TObject);
begin
   Screen.Cursor := crHourGlass;
   DM1.fn_ExpXLS(dbgCabecera.DataSource.DataSet, 'IMPGESCOB');
   Screen.Cursor := crDefault;
end;
(******************************************************************************)
procedure TFResultadosGestion.dbgCabeceraDblClick(Sender: TObject);
begin
  with dbgCabecera.DataSource do
  begin
    IF DataSet.RecordCount > 0 THEN
    BEGIN
     Try
        DM1.cdsQry2.Locate('TIPCAR', VarArrayof([cboTipoCartera.Text]), []);
        FResultadosGestionDet := TFResultadosGestionDet.create(Self);
        FResultadosGestionDet.xsPeriodo := cboPeriodo.Text;
        FResultadosGestionDet.xsTipoCarteraDes := cboTipoCartera.Text;
        FResultadosGestionDet.xsTipoCarteraCod := DM1.cdsQry2.fieldbyname('CODTIPCAR').asstring;
        FResultadosGestionDet.xsOrigenOperacionesDes := DataSet.fieldbyname('ORIGEN_OPERACION').asstring;
        FResultadosGestionDet.xsOrigenOperacionesCod := DataSet.fieldbyname('OFDESID').asstring;
        FResultadosGestionDet.ShowModal;
     Finally
        FResultadosGestionDet.Free;
     End;
    END;
  end;
end;
(******************************************************************************)
end.