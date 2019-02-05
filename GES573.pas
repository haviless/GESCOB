// Inicio Uso Estándares: 01/08/2011
// Unidad : Gestión de Cobranzas
// Formulario : FMantenimientoComision
// Fecha de Creación : 03/03/0216
// Autor : Juver De la Cruz
// Objetivo : Mantenimiento de Comisiones
// Actualizaciones:
// HPC_201601_GESCOB : Mantenimiento de Reportes de FSC EC

unit GES573;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, Wwdbigrd, Grids, Wwdbgrid, StdCtrls, ExtCtrls,
  fcButton, fcImgBtn, fcShapeBtn;

type
  TFMantenimientoComision = class(TForm)
    pnlPie: TPanel;
    btnSalir: TBitBtn;
    dbgPrincipal: TwwDBGrid;
    dbgPrincipalIButton: TwwIButton;
    pnlMantenimiento: TPanel;
    Label6: TLabel;
    btnInsertarMantenimiento: TfcShapeBtn;
    edtAnho: TEdit;
    btnSalirMantenimiento: TfcShapeBtn;
    StaticText1: TStaticText;
    btnActualizarMantenimiento: TfcShapeBtn;
    edtComision: TEdit;
    Label1: TLabel;
    edtGestor: TEdit;
    procedure dbgPrincipalIButtonClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btnSalirMantenimientoClick(Sender: TObject);
    procedure btnInsertarMantenimientoClick(Sender: TObject);
    procedure dbgPrincipalDblClick(Sender: TObject);
    procedure btnActualizarMantenimientoClick(Sender: TObject);
    procedure pnlMantenimientoEnter(Sender: TObject);
    procedure btnSalirClick(Sender: TObject);
  private
    procedure fn_cargar_mantenimiento;
    function fn_datos_validos(): boolean;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FMantenimientoComision: TFMantenimientoComision;

implementation

uses DB, GESDM1;
CONST CS_CODIGO_GESTOR : string = '00013';

{$R *.dfm}

(******************************************************************************)
procedure TFMantenimientoComision.FormCreate(Sender: TObject);
begin
  edtAnho.MaxLength := 4;
  edtGestor.Visible := false;
  fn_cargar_mantenimiento();
end;
(******************************************************************************)

procedure TFMantenimientoComision.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;
(******************************************************************************)

procedure TFMantenimientoComision.dbgPrincipalIButtonClick(Sender: TObject);
begin
  edtAnho.Enabled := true;
  edtAnho.Text := '';
  edtComision.Text := '';
  edtGestor.Text := CS_CODIGO_GESTOR;
  pnlMantenimiento.Tag := 0;
  pnlMantenimiento.Visible := True;
  pnlMantenimiento.SetFocus;
end;
(******************************************************************************)
procedure TFMantenimientoComision.dbgPrincipalDblClick(Sender: TObject);
begin
  with dbgPrincipal.DataSource do
  begin
    if DataSet.RecordCount = 0 then exit;
    pnlMantenimiento.Tag := 1;
    pnlMantenimiento.Visible := True;
    edtAnho.Enabled := false;
    edtAnho.Text := DataSet.FieldByName('ANHO').AsString;
    edtComision.Text := DataSet.FieldByName('COMISION').AsString;
    edtGestor.Text := DataSet.FieldByName('GESTOR').AsString;
    pnlMantenimiento.SetFocus;
  end;
end;
(******************************************************************************)

procedure TFMantenimientoComision.btnSalirMantenimientoClick(Sender: TObject);
begin
  pnlMantenimiento.Visible := False;
end;
(******************************************************************************)

function TFMantenimientoComision.fn_datos_validos() : boolean;
var xbValido : boolean;
    xsSQL : string;
    xnAnho : integer;
    xnComision : Double;
begin
  xbValido := false;
  edtAnho.Text := trim(edtAnho.Text);
  try
    if not(TryStrToInt(edtAnho.Text, xnAnho) and (xnAnho >= 1900)) then begin
      MessageDlg('Ingrese un Año válido!', mtInformation, [mbOk], 0);
      exit;
    end;

    if not(TryStrToFloat(edtComision.Text, xnComision) and (xnComision >= 0) and (xnComision <= 100) ) then begin
      MessageDlg('Ingrese porcentaje valido para la comisión( de 0 a 100 )!', mtInformation, [mbOk], 0);
      exit;
    end;

    if edtAnho.Enabled then begin // solo si es nuevo
      xsSQL := 'SELECT COUNT(1) CANTIDAD '
             + '  FROM GES_COMISION_MAE '
             + ' WHERE GESTOR = ' + QuotedStr(CS_CODIGO_GESTOR)
             + '   AND ANHO = ' + QuotedStr(edtAnho.Text);
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest(xsSQL);
      DM1.cdsQry.Open;
      if DM1.cdsQry.FieldByName('CANTIDAD').Value > 0 THEN begin
        MessageDlg('El Año ya existe!', mtInformation, [mbOk], 0);
        exit;
      end;
    end;

    xbValido := true;
  finally
    // codigo ejecutado luego del exit
    result := xbValido;
  end;
end;
(******************************************************************************)
procedure TFMantenimientoComision.btnInsertarMantenimientoClick(Sender: TObject);
var xsSQL: string;
begin
  with dbgPrincipal.DataSource do
  begin
    if not fn_datos_validos() then exit;
    pnlMantenimiento.Visible := False;
    xsSQL := 'INSERT INTO GES_COMISION_MAE(GESTOR, ANHO, COMISION) '
           + ' VALUES(' + QuotedStr(CS_CODIGO_GESTOR) + ', ' + QuotedStr(edtAnho.Text) + ', ' + edtComision.Text + ')';
    DM1.DCOM1.AppServer.EjecutaSql(xsSQL);
    fn_cargar_mantenimiento();
    DataSet.Locate('ANHO', VarArrayof([edtAnho.Text]), []);
  end;
end;
(******************************************************************************)
procedure TFMantenimientoComision.btnActualizarMantenimientoClick(Sender: TObject);
var xxBM : TBookMark;
    xsSQL : String;
begin
  with dbgPrincipal.DataSource do
  begin
    if not fn_datos_validos() then exit;
    pnlMantenimiento.Visible := False;
    xsSQL := 'UPDATE GES_COMISION_MAE '
           + '   SET COMISION = ' + QuotedStr(edtComision.Text)
           + '      ,USUMOD   = USER '
           + '      ,FECMOD   = SYSDATE '
           + ' WHERE GESTOR = ' + QuotedStr(CS_CODIGO_GESTOR)
           + '   AND ANHO   = ' + QuotedStr(edtAnho.Text);
    DM1.DCOM1.AppServer.EjecutaSql(xsSQL);
    xxBM := DataSet.GetBookMark;
    fn_cargar_mantenimiento();
    DataSet.GotoBookMark(xxBM);
  end;
end;
(******************************************************************************)

procedure TFMantenimientoComision.fn_cargar_mantenimiento();
var xsSQL : String;
begin
  xsSQL := 'SELECT GESTOR, ANHO, COMISION '
         + '  FROM GES_COMISION_MAE '
         + ' WHERE 1 = 1 '
         + ' ORDER BY GESTOR, ANHO ';
  DM1.cdsQry1.Close;
  DM1.cdsQry1.DataRequest(xsSQL);
  DM1.cdsQry1.Open;
  dbgPrincipal.DataSource := DM1.dsQry1;
  dbgPrincipal.Selected.Clear;
  dbgPrincipal.Selected.Add('ANHO'#9'10'#9'AÑO');
  dbgPrincipal.Selected.Add('COMISION'#9'10'#9'COMISIÓN(%)');
  dbgPrincipal.ApplySelected;
end;
(******************************************************************************)

procedure TFMantenimientoComision.pnlMantenimientoEnter(Sender: TObject);
begin
  btnActualizarMantenimiento.Visible := (pnlMantenimiento.Tag = 1);
  btnInsertarMantenimiento.Visible := (pnlMantenimiento.Tag = 0);
  if edtAnho.Enabled then edtAnho.SetFocus else edtComision.SetFocus;
end;

(******************************************************************************)
procedure TFMantenimientoComision.btnSalirClick(Sender: TObject);
begin
  Close;
end;
(******************************************************************************)
end.