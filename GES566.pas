// Inicio Uso Estándares: 01/08/2011
// Unidad : Gestión de Cobranzas
// Formulario : FDisAsiCar
// Fecha de Creación : 14/10/2014
// Autor : Equipo de Sistemas
// Objetivo : Mantenimiento de los tipos de Incidentes
// Actualizaciones:
// HPC_201403_GESCOB:  Registro de incidencias durante el periodo de gestión(2.1)
// SPP_201404_GESCOB: Se realiza el pase a producción a partir del HPC_201403_GESCOB

unit GES566;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, Wwdbigrd, Grids, Wwdbgrid, StdCtrls, ExtCtrls,
  fcButton, fcImgBtn, fcShapeBtn;

type
  TFMantTiposIncidentes = class(TForm)
    pnl1: TPanel;
    btnSalir: TBitBtn;
    dbgPrincipal: TwwDBGrid;
    dbgPrincipalIButton: TwwIButton;
    pnlMant: TPanel;
    Label6: TLabel;
    btnAddMant: TfcShapeBtn;
    edMant: TEdit;
    btnSalirMant: TfcShapeBtn;
    StaticText1: TStaticText;
    btnUpdMant: TfcShapeBtn;
    procedure dbgPrincipalIButtonClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btnSalirMantClick(Sender: TObject);
    procedure btnAddMantClick(Sender: TObject);
    procedure dbgPrincipalDblClick(Sender: TObject);
    procedure btnUpdMantClick(Sender: TObject);
    procedure pnlMantEnter(Sender: TObject);
    procedure edMantKeyPress(Sender: TObject; var Key: Char);
    procedure btnSalirClick(Sender: TObject);
  private
    procedure fn_cargar_mantenimiento;
    function fn_datos_validos(psCODTIPINC: integer): boolean;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FMantTiposIncidentes: TFMantTiposIncidentes;

implementation

uses DB, GESDM1;

{$R *.dfm}

(******************************************************************************)
procedure TFMantTiposIncidentes.FormCreate(Sender: TObject);
begin
  fn_cargar_mantenimiento();
end;
(******************************************************************************)

procedure TFMantTiposIncidentes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;
(******************************************************************************)

procedure TFMantTiposIncidentes.dbgPrincipalIButtonClick(Sender: TObject);
begin
  edMant.Text := '';
  pnlMant.Tag := 0;
  pnlMant.Visible := True;
  pnlMant.SetFocus;
end;
(******************************************************************************)
procedure TFMantTiposIncidentes.dbgPrincipalDblClick(Sender: TObject);
begin
  with dbgPrincipal.DataSource do
  begin
    if DataSet.RecordCount = 0 then exit;
    pnlMant.Tag := 1;
    pnlMant.Visible := True;
    edMant.Text := DataSet.FieldByName('TIPINC').AsString;
    pnlMant.SetFocus;
  end;
end;
(******************************************************************************)

procedure TFMantTiposIncidentes.btnSalirMantClick(Sender: TObject);
begin
  pnlMant.Visible := False;
end;
(******************************************************************************)

function TFMantTiposIncidentes.fn_datos_validos(psCODTIPINC : integer) : boolean;
var xbValido : boolean;
    xsSQL : string;
begin
  xbValido := false;
  edMant.Text := trim(edMant.Text);
  if edMant.Text = '' then
    MessageDlg('Ingrese un Tipo de Incidente!', mtInformation, [mbOk], 0)
  ELSE
  BEGIN
    xsSQL := 'SELECT COUNT(CODTIPINC) CANT FROM GES_COB_TIP_INC_CAT WHERE CODTIPINC <> ' + IntToStr(psCODTIPINC)+ ' AND TIPINC = ' + QuotedStr(edMant.Text);
    DM1.cdsQry.Close;
    DM1.cdsQry.DataRequest(xsSQL);
    DM1.cdsQry.Open;
    if DM1.cdsQry.FieldByName('CANT').Value > 0 THEN
      MessageDlg('El Tipo de Incidente ya existe!', mtInformation, [mbOk], 0)
    ELSE
      xbValido := true;
  END;
  result := xbValido;
end;
(******************************************************************************)
procedure TFMantTiposIncidentes.btnAddMantClick(Sender: TObject);
var xsSQL: string;
begin
  with dbgPrincipal.DataSource do
  begin
    if not fn_datos_validos(0) then exit;
    pnlMant.Visible := False;
    xsSQL := 'INSERT INTO GES_COB_TIP_INC_CAT(CODTIPINC, TIPINC, HREG, UREG) '
           + ' SELECT NVL(MAX(CODTIPINC),0) + 1 CODTIPINC, ' + QuotedStr(edMant.Text) + 'TIPINC, SYSDATE, ' + QuotedStr(DM1.wUsuario) + 'UREG '
           + '   FROM GES_COB_TIP_INC_CAT ';
    DM1.DCOM1.AppServer.EjecutaSql(xsSQL);
    fn_cargar_mantenimiento();
    DataSet.Locate('TIPINC', VarArrayof([edMant.Text]), []);
  end;
end;
(******************************************************************************)
procedure TFMantTiposIncidentes.btnUpdMantClick(Sender: TObject);
var xxBM : TBookMark;
    xsSQL : String;
begin
  with dbgPrincipal.DataSource do
  begin
    if not fn_datos_validos(DataSet.FieldByName('CODTIPINC').Value) then exit;
    pnlMant.Visible := False;
    xsSQL := 'UPDATE GES_COB_TIP_INC_CAT '
           + '   SET TIPINC = ' + QuotedStr(edMant.Text)
           + '       ,HMOD = SYSDATE'
           + '       ,UMOD = ' + QuotedStr(DM1.wUsuario)
           + ' WHERE CODTIPINC = ' + DataSet.FieldByName('CODTIPINC').AsString;
    DM1.DCOM1.AppServer.EjecutaSql(xsSQL);
    xxBM := DataSet.GetBookMark;
    fn_cargar_mantenimiento();
    DataSet.GotoBookMark(xxBM);
  end;
end;
(******************************************************************************)

procedure TFMantTiposIncidentes.fn_cargar_mantenimiento();
var xsSQL : String;
begin
  xsSQL := 'SELECT CODTIPINC, TIPINC, HREG, UREG, HMOD, UMOD '
         + '  FROM GES_COB_TIP_INC_CAT '
         + ' ORDER BY TIPINC ';
  DM1.cdsQry1.Close;
  DM1.cdsQry1.DataRequest(xsSQL);
  DM1.cdsQry1.Open;
  dbgPrincipal.DataSource := DM1.dsQry1;
  dbgPrincipal.Selected.Clear;
  dbgPrincipal.Selected.Add('TIPINC'#9'60'#9'TIPO DE INCIDENTE');
  dbgPrincipal.ApplySelected;

end;
(******************************************************************************)

procedure TFMantTiposIncidentes.pnlMantEnter(Sender: TObject);
begin
  edMant.MaxLength := 50;
  btnUpdMant.Visible := (pnlMant.Tag = 1);
  btnAddMant.Visible := (pnlMant.Tag = 0);
  edMant.SetFocus;
end;
(******************************************************************************)

procedure TFMantTiposIncidentes.edMantKeyPress(Sender: TObject;
  var Key: Char);
begin
   If Key = #13 Then
   begin
    if btnAddMant.Visible then btnAddMantClick(btnAddMant);
    if btnUpdMant.Visible then btnUpdMantClick(btnUpdMant);    
   end;
end;
(******************************************************************************)
procedure TFMantTiposIncidentes.btnSalirClick(Sender: TObject);
begin
  Close;
end;
(******************************************************************************)
end.