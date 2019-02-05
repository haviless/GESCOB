// Inicio Uso Estándares: 01/08/2011
// Unidad : Gestión de Cobranzas
// Formulario : FResultadosGestionDet
// Fecha de Creación : 17/10/2014
// Autor : Equipo de Sistemas
// Objetivo : Medir el impacto de la gestion de cobranza
// Actualizaciones:
// HPC_201403_GESCOB:  Impacto de la gestión de cobranzas (saldos vencidos y contención del saldo total)(2.2)
// SPP_201404_GESCOB: Se realiza el pase a producción a partir del HPC_201403_GESCOB

unit GES569;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, wwdblook, Grids, Wwdbigrd, Wwdbgrid, db;

type
  TFResultadosGestionDet = class(TForm)
    pnl1: TPanel;
    btnSalir: TBitBtn;
    pnlIzquierdoSuperior: TPanel;
    lblPeriodoGestion: TLabel;
    lblTipoCartera: TLabel;
    dbgCabecera: TwwDBGrid;
    btnExportar: TBitBtn;
    lblOrigenOperaciones: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnSalirClick(Sender: TObject);
    procedure btnExportarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    xsPeriodo : string;
    xsTipoCarteraDes : string;
    xsTipoCarteraCod : string;
    xsOrigenOperacionesDes : string;
    xsOrigenOperacionesCod : string;

  end;

var
  FResultadosGestionDet: TFResultadosGestionDet;

implementation

uses GESDM1;

{$R *.dfm}

(******************************************************************************)

procedure TFResultadosGestionDet.FormShow(Sender: TObject);
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
 lblPeriodoGestion.Caption := 'Periodo de Gestion : ' + xsPeriodo;
 lblTipoCartera.Caption := 'Tipo de Cartera : ' + xsTipoCarteraDes;
 lblOrigenOperaciones.Caption := 'Origen de Operaciones : ' + xsOrigenOperacionesDes;

 WITH dbgCabecera DO
  begin
    xsSQL :='SELECT A.GESTOR '
          + '      ,A.ASIGNADO '
          + '      ,A.GESTIONADO '
          + '      ,A.CONTACTADO '
          + '      ,A.CONTACTO_EFECTIVO '
          + '      ,A.MONTO_COBRADO '
          + '      ,CASE WHEN A.GESTIONADO = 0 THEN 0 ELSE ROUND((A.CONTACTO_EFECTIVO / A.GESTIONADO)*100, 2) END TASA_CURA '
          + '      ,CASE WHEN A.CONTACTADO = 0 THEN 0 ELSE ROUND((A.CONTACTO_EFECTIVO / A.CONTACTADO)*100, 2) END TASA_EFECTIVIDAD '
          + '      ,A.CONTENCION '
          + '      ,A.RECUPERACION '
          + ' FROM(SELECT GESTOR '
          + '            ,SUM(CASE WHEN ASIGNADO = ''S'' THEN 1 ELSE 0 END) ASIGNADO '
          + '            ,SUM(CASE WHEN ASIGNADO = ''S'' AND GESTIONADO = ''S'' THEN 1 ELSE 0 END) GESTIONADO '
          + '            ,SUM(CASE WHEN ASIGNADO = ''S'' AND GESTIONADO = ''S'' AND CONTACTADO = ''S'' AND DIRECTO = ''S'' THEN 1 ELSE 0 END) CONTACTADO '
          + '            ,SUM(CASE WHEN ASIGNADO = ''S'' AND GESTIONADO = ''S'' AND CONTACTADO = ''S'' AND DIRECTO = ''S'' AND (NVL(MONCOBEFE,0) + NVL(MONCOBBAN,0)) > 0 THEN 1 ELSE 0 END) CONTACTO_EFECTIVO '
          + '            ,SUM(CASE WHEN ASIGNADO = ''S'' AND GESTIONADO = ''S'' AND CONTACTADO = ''S'' AND DIRECTO = ''S'' THEN (NVL(MONCOBEFE,0) + NVL(MONCOBBAN,0)) ELSE 0 END) MONTO_COBRADO '
          + '            ,SUM(CASE WHEN ASIGNADO = ''S'' AND GESTIONADO = ''S'' AND CONTACTADO = ''S'' AND DIRECTO = ''S'' AND (NVL(MONCOBEFE,0) + NVL(MONCOBBAN,0)) > 0 THEN NVL(SALTOT,0) ELSE 0 END) CONTENCION '
          + '            ,SUM(CASE WHEN ASIGNADO = ''S'' AND GESTIONADO = ''S'' AND CONTACTADO = ''S'' AND DIRECTO = ''S'' AND (NVL(MONCOBEFE,0) + NVL(MONCOBBAN,0)) > 0 THEN NVL(SALVEN,0) ELSE 0 END) RECUPERACION '          + '        FROM GES_COB_UNI_IMP_COB_GTT '
          + '       WHERE PERIODO = ' + QuotedStr(xsPeriodo)
          + '         AND ASIGNADO = ''S'' '
          + '         AND CODTIPCAR = CASE WHEN ' + QuotedStr(xsTipoCarteraCod) + ' = ''00'' THEN CODTIPCAR ELSE ' + QuotedStr(xsTipoCarteraCod) + ' END '
          + '         AND OFDESID = ' + QuotedStr(xsOrigenOperacionesCod)
          + '       GROUP BY GESTOR) A '
          + ' ORDER BY A.GESTOR ';

    DM1.cdsQry4.Close;
    DM1.cdsQry4.DataRequest(xsSQL);
    DM1.cdsQry4.Open;
    DataSource := DM1.dsQry4;

    Selected.Clear;
    Selected.Add('GESTOR'#9'15'#9'GESTOR');
    Selected.Add('ASIGNADO'#9'10'#9'ASIGNADO'#9'F'#9'OPERACIONES');
    Selected.Add('GESTIONADO'#9'10'#9'GESTIONADO'#9'F'#9'OPERACIONES');
    Selected.Add('CONTACTADO'#9'10'#9'CONTACTADO'#9'F'#9'OPERACIONES');
    Selected.Add('CONTACTO_EFECTIVO'#9'10'#9'CONTACTO~EFECTIVO'#9'F'#9'RESULTADOS');
    Selected.Add('MONTO_COBRADO'#9'15'#9'MONTO~COBRADO'#9'F'#9'RESULTADOS');
    Selected.Add('TASA_CURA'#9'10'#9'TASA DE~CURA(%)');
    Selected.Add('TASA_EFECTIVIDAD'#9'10'#9'TASA DE~EFECT(%)');
    Selected.Add('CONTENCION'#9'15'#9'CONTENCION'#9'F'#9'RESULTADOS');
    Selected.Add('RECUPERACION'#9'15'#9'RECUPERACION'#9'F'#9'RESULTADOS');
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

    ColumnByName('GESTOR').FooterValue  := 'TOTAL';
    ColumnByName('ASIGNADO').FooterValue          := FormatCurr('###,##0', xnASIGNADO);
    ColumnByName('GESTIONADO').FooterValue        := FormatCurr('###,##0', xnGESTIONADO);
    ColumnByName('CONTACTADO').FooterValue        := FormatCurr('###,##0', xnCONTACTADO);
    ColumnByName('CONTACTO_EFECTIVO').FooterValue := FormatCurr('###,##0', xnCONTACTO_EFECTIVO);
    ColumnByName('MONTO_COBRADO').FooterValue     := FormatCurr('###,##0.#0', xnMONTO_COBRADO);
    ColumnByName('TASA_CURA').FooterValue         := FormatCurr('###,##0.#0', xnTASA_CURA);
    ColumnByName('TASA_EFECTIVIDAD').FooterValue  := FormatCurr('###,##0.#0', xnTASA_EFECTIVIDAD);
    ColumnByName('CONTENCION').FooterValue        := FormatCurr('###,##0.#0', xnCONTENCION);
    ColumnByName('RECUPERACION').FooterValue      := FormatCurr('###,##0.#0', xnRECUPERACION);
    DataSource.DataSet.first;
  end;
  Screen.Cursor := crDefault;
end;
(******************************************************************************)
procedure TFResultadosGestionDet.btnExportarClick(Sender: TObject);
begin
   Screen.Cursor := crHourGlass;
   DM1.fn_ExpXLS(dbgCabecera.DataSource.DataSet, 'IMPGESCOBDET');
   Screen.Cursor := crDefault;
end;
(******************************************************************************)
procedure TFResultadosGestionDet.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;
(******************************************************************************)

procedure TFResultadosGestionDet.btnSalirClick(Sender: TObject);
begin
  Close;
end;
(******************************************************************************)
end.