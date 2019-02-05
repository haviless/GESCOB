// Inicio Uso Estándares: 01/08/2011
// Unidad : Gestión de Cobranzas
// Formulario : FRegistroIncidencias
// Fecha de Creación : 14/10/2014
// Autor : Equipo de Sistemas
// Objetivo : Registro de Incidencias
// Actualizaciones:
// HPC_201403_GESCOB:  Registro de incidencias durante el periodo de gestión(2.1)
// SPP_201404_GESCOB: Se realiza el pase a producción a partir del HPC_201403_GESCOB

unit GES567;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, wwdblook, Grids, Wwdbigrd, Wwdbgrid, DB;

type
  TFRegistroIncidencias = class(TForm)
    pnl1: TPanel;
    btnSalir: TBitBtn;
    pnIzquierdo: TPanel;
    pnlDerecho: TPanel;
    pnlIzquierdoSuperior: TPanel;
    dbgCabecera: TwwDBGrid;
    lbl1: TLabel;
    cboPeriodo: TwwDBLookupCombo;
    GroupBox1: TGroupBox;
    Panel1: TPanel;
    dbgDetalle: TwwDBGrid;
    dbgDetalleIButton: TwwIButton;
    pnlDetalleControles: TPanel;
    cboTipoIncidente: TwwDBLookupCombo;
    Label1: TLabel;
    txtIncidente: TMemo;
    Label2: TLabel;
    btnAnular: TBitBtn;
    btnGrabar: TBitBtn;
    lblCantCaracteres: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnSalirClick(Sender: TObject);
    procedure cboPeriodoChange(Sender: TObject);
    procedure dbgDetalleIButtonClick(Sender: TObject);
    procedure btnGrabarClick(Sender: TObject);
    procedure btnAnularClick(Sender: TObject);
    procedure txtIncidenteChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    procedure fn_cargar_cabecera;
    procedure cdsAfterScrollCab(DataSet: TDataSet);
    procedure cdsAfterScrollDet(DataSet: TDataSet);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRegistroIncidencias: TFRegistroIncidencias;

implementation

uses GESDM1;

{$R *.dfm}

(******************************************************************************)
procedure TFRegistroIncidencias.FormShow(Sender: TObject);
var xsSQL: string;
begin
   Screen.Cursor := crHourGlass;
   // CARGAR LOS TIPOS DE INCIDENTES
   xsSQL:='SELECT CODTIPINC, TIPINC FROM GES_COB_TIP_INC_CAT ORDER BY TIPINC';
   DM1.cdsQry4.Close;
   DM1.cdsQry4.DataRequest(xsSQL);
   DM1.cdsQry4.Open;
   DM1.cdsQry4.First;
   cboTipoIncidente.LookupTable := DM1.cdsQry4;
   cboTipoIncidente.LookupField := 'CODTIPINC';
   cboTipoIncidente.Selected.Clear;
   cboTipoIncidente.Selected.Add('TIPINC'#9'8'#9'Tipo de Incidente');

   // CARGAR LOS PERIODOS PARA SELECCIONAR
   DM1.fn_cargar_periodos_combo(cboPeriodo, DM1.cdsQry1);
   cboPeriodo.Text := DM1.cdsQry1.fieldbyname('PERIODO').asstring;
   Screen.Cursor := crDefault;
end;

(******************************************************************************)
procedure TFRegistroIncidencias.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  dbgDetalle.DataSource.DataSet.AfterScroll := nil;
  dbgCabecera.DataSource.DataSet.AfterScroll := nil;
  Action := caFree;
end;

(******************************************************************************)
procedure TFRegistroIncidencias.btnSalirClick(Sender: TObject);
begin
  Close;
end;

(******************************************************************************)
procedure TFRegistroIncidencias.cboPeriodoChange(Sender: TObject);
begin
  dbgDetalleIButton.Enabled := (cboPeriodo.text = DM1.fn_get_periodo_gestion_actual());
  pnlDetalleControles.Enabled := (cboPeriodo.text = DM1.fn_get_periodo_gestion_actual());
  if cboPeriodo.Text <> '' then fn_cargar_cabecera();
end;
(******************************************************************************)

procedure TFRegistroIncidencias.fn_cargar_cabecera();
var xsSQL : string;
    xnCANINCREG : integer;
    xnCANINCANU : integer;
begin
  WITH dbgCabecera DO
  begin
    if DataSource <> nil then DataSource.DataSet.AfterScroll := nil;

    xsSQL :='SELECT A.OFDESID, A.OFDESNOM '
          + '      ,SUM(CASE WHEN B.CODESTINC = ''01'' THEN 1 ELSE 0 END) CANT_INCIDENTES_REG '
          + '      ,SUM(CASE WHEN B.CODESTINC = ''02'' THEN 1 ELSE 0 END) CANT_INCIDENTES_ANU '
          + '  FROM (SELECT OFDESID, OFDESNOM '
          + '          FROM APO110 '
          + '         WHERE DPTOID = ''15'' '
          + '           AND IDCONOFI = ''S'' '
          + '           AND OFIPRI = ''01'' '
          + '        UNION '
          + '        SELECT OFDESID, OFDESNOM '
          + '          FROM APO110 '
          + '         WHERE DPTOID <> ''15'' '
          + '         ORDER BY OFDESNOM) A, GES_COB_INC_MOV B '
          + ' WHERE A.OFDESID = B.OFDESID(+) '
          + '   AND ' + QuotedStr(cboPeriodo.text) + '  = B.PERIODO(+) '
          + ' GROUP BY A.OFDESID, A.OFDESNOM '
          + ' ORDER BY A.OFDESNOM ';
    DM1.cdsQry2.Close;
    DM1.cdsQry2.DataRequest(xsSQL);
    DM1.cdsQry2.Open;
    DataSource := DM1.dsQry2;

    Selected.Clear;
    Selected.Add('OFDESNOM'#9'30'#9'ORIGEN DE OPERACION');
    Selected.Add('CANT_INCIDENTES_REG'#9'10'#9'REGISTRADOS'#9'F'#9'INCIDENTES');
    Selected.Add('CANT_INCIDENTES_ANU'#9'10'#9'ANULADOS'#9'F'#9'INCIDENTES');
    ApplySelected;

    xnCANINCREG := 0;
    xnCANINCANU := 0;
    DataSource.DataSet.first;
    while not DataSource.DataSet.eof do
    begin
        xnCANINCREG :=  xnCANINCREG + DataSource.DataSet.FieldByName('CANT_INCIDENTES_REG').Value;
        xnCANINCANU :=  xnCANINCANU + DataSource.DataSet.FieldByName('CANT_INCIDENTES_ANU').Value;
        DataSource.DataSet.next;
    end;
    TNumericField(DataSource.DataSet.FieldByName('CANT_INCIDENTES_REG')).DisplayFormat := '###,##0';
    TNumericField(DataSource.DataSet.FieldByName('CANT_INCIDENTES_ANU')).DisplayFormat    := '###,##0';
    ColumnByName('OFDESNOM').FooterValue := 'TOTAL';
    ColumnByName('CANT_INCIDENTES_REG').FooterValue := FormatCurr('###,##0', xnCANINCREG);
    ColumnByName('CANT_INCIDENTES_ANU').FooterValue    := FormatCurr('###,##0', xnCANINCANU);

    DataSource.DataSet.AfterScroll := cdsAfterScrollCab;
    DataSource.DataSet.first;
  end;
end;
(******************************************************************************)

procedure TFRegistroIncidencias.cdsAfterScrollCab(DataSet: TDataSet);
  var xsSQL : string;
begin
  if dbgCabecera.DataSource.DataSet.RecordCount > 0 then
  begin
    with dbgDetalle do
    begin
      if DataSource <> nil then DataSource.DataSet.AfterScroll := nil;
      xsSQL :='SELECT A.CODINC '
            + '      ,A.PERIODO '
            + '      ,C.OFDESNOM '
            + '      ,TO_CHAR(A.FECHA,''DD/MM/YYYY'') FECHA'
            + '      ,D.TIPINC '
            + '      ,A.INCIDENTE '
            + '      ,A.CODESTINC '
            + '      ,E.ESTINC '
            + '  FROM GES_COB_INC_MOV     A '
            + '      ,GES_COB_EST_INC_CAT B '
            + '      ,APO110 C '
            + '      ,GES_COB_TIP_INC_CAT D '
            + '      ,GES_COB_EST_INC_CAT E '
            + ' WHERE A.PERIODO = ' + QuotedStr(cboPeriodo.Text)
            + '   AND A.OFDESID = ' + QuotedStr(dbgCabecera.DataSource.DataSet.fieldbyname('OFDESID').AsString)
            + '   AND A.CODESTINC = B.CODESTINC '
            + '   AND A.OFDESID = C.OFDESID '
            + '   AND A.CODTIPINC = D.CODTIPINC '
            + '   AND A.CODESTINC = E.CODESTINC '
            + ' ORDER BY A.CODESTINC, A.FECHA ';
      DM1.cdsQry3.Close;
      DM1.cdsQry3.DataRequest(xsSQL);
      DM1.cdsQry3.Open;
      DataSource := DM1.dsQry3;

      dbgDetalle.Selected.Clear;
      dbgDetalle.Selected.Add('ESTINC'#9'15'#9'ESTADO');
      dbgDetalle.Selected.Add('FECHA'#9'10'#9'FECHA');
      dbgDetalle.Selected.Add('TIPINC'#9'25'#9'TIPO');
      dbgDetalle.Selected.Add('INCIDENTE'#9'30'#9'INCIDENTE');
      dbgDetalle.ApplySelected;
      DataSource.DataSet.AfterScroll := cdsAfterScrollDet;
      DataSource.DataSet.first;
    end;
  end;
end;
(******************************************************************************)

procedure TFRegistroIncidencias.cdsAfterScrollDet(DataSet: TDataSet);
begin
  cboTipoIncidente.Enabled := false;
  txtIncidente.Enabled := false;
  cboTipoIncidente.Text := DataSet.fieldbyname('TIPINC').AsString;
  txtIncidente.Text := DataSet.fieldbyname('INCIDENTE').AsString;
  IF pnlDetalleControles.Enabled THEN
  BEGIN
    btnGrabar.Enabled := false;
    btnAnular.Enabled := (DataSet.fieldbyname('CODESTINC').AsString = '01'); // SE ACTIVA SOLO CON LOS REGISTRADOS
  END
  ELSE
  BEGIN
    btnGrabar.Enabled := false;
    btnAnular.Enabled := false;
  END;
end;
(******************************************************************************)
procedure TFRegistroIncidencias.dbgDetalleIButtonClick(Sender: TObject);
begin
  IF pnlDetalleControles.Enabled THEN
  BEGIN
    cboTipoIncidente.Enabled := true;
    txtIncidente.Enabled := true;
    cboTipoIncidente.Text := '';
    txtIncidente.Text := '';
    btnGrabar.Enabled := true;
    btnAnular.Enabled := false;
  END;
end;

(******************************************************************************)
procedure TFRegistroIncidencias.btnGrabarClick(Sender: TObject);
var xsSQL: string;
    xxBMCab : TBookMark;
begin
    if cboTipoIncidente.Text = '' then
    begin
      MessageDlg('Seleccione un tipo de incidente!', mtInformation, [mbOk], 0);
      cboTipoIncidente.SetFocus;
      exit;
    end;
    IF Length(txtIncidente.Text) <= 0 THEN
    BEGIN
      MessageDlg('Ingrese un incidente!', mtInformation, [mbOk], 0);
      txtIncidente.SetFocus;
      exit;
    END;
    IF Length(txtIncidente.Text) > 200 THEN
    BEGIN
      MessageDlg('Máximo 200 caracteres para el incidente!', mtInformation, [mbOk], 0);
      txtIncidente.SetFocus;
      exit;
    END;

    xsSQL := 'INSERT INTO GES_COB_INC_MOV(CODINC, PERIODO, OFDESID, FECHA, CODTIPINC, INCIDENTE, CODESTINC, HREG, UREG) '
           + ' SELECT NVL(MAX(CODINC),0) + 1 CODINC, '
           +          QuotedStr(cboPeriodo.Text) + ' PERIODO, '
           +          QuotedStr(dbgCabecera.DataSource.DataSet.fieldbyname('OFDESID').AsString) +' OFDESID, '
           + '        SYSDATE FECHA, '
           +          QuotedStr(cboTipoIncidente.LookupTable.fieldbyname('CODTIPINC').AsString ) + ' CODTIPINC, '
           + '        SUBSTR(UPPER('   + QuotedStr(DM1.fn_TStrings_String(txtIncidente.Lines)) + '), 1, 200) INCIDENTE, '
           + '        ''01'' CODESTINC, '
           + '        SYSDATE HREG, '
           +          QuotedStr(DM1.wUsuario) + ' UREG '
           + '   FROM GES_COB_INC_MOV ';
    DM1.DCOM1.AppServer.EjecutaSql(xsSQL);
    xxBMCab := dbgCabecera.DataSource.DataSet.GetBookmark;
    fn_cargar_cabecera();
    dbgCabecera.DataSource.DataSet.GotoBookmark(xxBMCab);
    xsSQL := 'SELECT MAX(CODINC) CODINC '
           + '  FROM GES_COB_INC_MOV '
           + ' WHERE PERIODO = ' + QuotedStr(cboPeriodo.Text)
           + '   AND OFDESID = ' + QuotedStr(dbgCabecera.DataSource.DataSet.fieldbyname('OFDESID').AsString)
           + '   AND UREG    = ' + QuotedStr(DM1.wUsuario);
    DM1.cdsQry.Close;
    DM1.cdsQry.DataRequest(xsSQL);
    DM1.cdsQry.Open;
    dbgDetalle.DataSource.DataSet.Locate('CODINC', VarArrayof([DM1.cdsQry.FieldByName('CODINC').Value]), []);
end;

(******************************************************************************)
procedure TFRegistroIncidencias.btnAnularClick(Sender: TObject);
var xsSQL: string;
    xxBMCab : TBookMark;
    xnCodInc : integer;
begin
    xnCodInc := dbgDetalle.DataSource.DataSet.fieldbyname('CODINC').Value;
    xsSQL := 'UPDATE GES_COB_INC_MOV '
           + '   SET CODESTINC = ''02'' '
           + '      ,HANU     = SYSDATE '
           + '      ,UANU     = ' + QuotedStr(DM1.wUsuario)
           + ' WHERE CODINC = ' + inttostr(xnCodInc);
    DM1.DCOM1.AppServer.EjecutaSql(xsSQL);
    xxBMCab := dbgCabecera.DataSource.DataSet.GetBookmark;
    fn_cargar_cabecera();
    dbgCabecera.DataSource.DataSet.GotoBookmark(xxBMCab);
    dbgDetalle.DataSource.DataSet.Locate('CODINC', VarArrayof([xnCodInc]), []);
end;

(******************************************************************************)
procedure TFRegistroIncidencias.txtIncidenteChange(Sender: TObject);
var xnCantidad : integer;
begin
   xnCantidad := Length(txtIncidente.Text);
   lblCantCaracteres.Caption :=  inttostr(xnCantidad)+ '/200';
   if xnCantidad > 200 then lblCantCaracteres.Font.Color := clRed else lblCantCaracteres.Font.Color := clBlack;
end;
(******************************************************************************)

end.