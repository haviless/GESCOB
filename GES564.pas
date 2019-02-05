// Inicio Uso Estándares: 01/08/2011
// Unidad : Gestión de Cobranzas
// Formulario : FMantenimientoUgeles
// Fecha de Creación : 25/09/2014
// Autor : Equipo de Sistemas
// Objetivo : Mantenimiento de Ugeles
// Actualizaciones:
// HPC_201402_GESCOB: Re-Definicion de la emision de cartas a deudores (1.7)
// SPP_201402_GESCOB: Se realiza el pase a producción a partir del HPC_201402_GESCOB

unit GES564;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Grids, Wwdbigrd, Wwdbgrid,
  fcButton, fcImgBtn, fcShapeBtn, DB;

type
  TFMantenimientoOficinas = class(TForm)
    pnlControles: TPanel;
    btnSalir: TBitBtn;
    dtgOficina: TwwDBGrid;
    pnlMant: TPanel;
    Label6: TLabel;
    btnGesIntGrabar: TfcShapeBtn;
    edDireccion: TEdit;
    btnGesIntSalir: TfcShapeBtn;
    StaticText1: TStaticText;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnSalirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dtgOficinaDblClick(Sender: TObject);
    procedure btnGesIntSalirClick(Sender: TObject);
    procedure btnGesIntGrabarClick(Sender: TObject);
  private
    { Private declarations }
    xsSQL : string;
    procedure fn_cargar_grid;
  public
    { Public declarations }
  end;

var
  FMantenimientoOficinas: TFMantenimientoOficinas;

implementation

uses GESDM1;

{$R *.dfm}

(******************************************************************************)
procedure TFMantenimientoOficinas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    Action := caFree;
end;
(******************************************************************************)

procedure TFMantenimientoOficinas.btnSalirClick(Sender: TObject);
begin
  Close;
end;
(******************************************************************************)
procedure TFMantenimientoOficinas.fn_cargar_grid();
begin
  xsSQL :='SELECT OFDESID, OFDESNOM, OFDESDIR '
        + '  FROM APO110 '
        + ' WHERE DPTOID = ''15'' AND IDCONOFI = ''S'' AND OFIPRI = ''01'' '
        + ' UNION '
        + 'SELECT OFDESID, OFDESNOM, OFDESDIR  '
        + '  FROM APO110 '
        + ' WHERE DPTOID <> ''15'' '
        + ' ORDER BY OFDESNOM ';
  DM1.cdsQry1.Close;
  DM1.cdsQry1.DataRequest(xsSQL);
  DM1.cdsQry1.Open;
  dtgOficina.DataSource := DM1.dsQry1;

  dtgOficina.Selected.Clear;
  dtgOficina.Selected.Add('OFDESNOM'#9'30'#9'OFICINA');
  dtgOficina.Selected.Add('OFDESDIR'#9'70'#9'DIRECCIÓN');
  dtgOficina.ApplySelected;
end;

(******************************************************************************)

procedure TFMantenimientoOficinas.FormShow(Sender: TObject);
begin
  fn_cargar_grid();
end;
(******************************************************************************)
procedure TFMantenimientoOficinas.dtgOficinaDblClick(Sender: TObject);
begin
    if DM1.cdsQry1.RecordCount > 0 then
    begin
      pnlMant.Visible := true;
      edDireccion.Text := DM1.cdsQry1.fieldbyname('OFDESDIR').asstring;
      edDireccion.SetFocus;
    end;
end;
(******************************************************************************)

procedure TFMantenimientoOficinas.btnGesIntSalirClick(Sender: TObject);
begin
   pnlMant.Visible := false;
end;
(******************************************************************************)

procedure TFMantenimientoOficinas.btnGesIntGrabarClick(Sender: TObject);
Var
   xbmRegistro: TBookmark;
begin
   xbmRegistro := DM1.cdsQry1.GetBookmark;
   xsSQL := 'UPDATE APO110 '
          + '   SET OFDESDIR = ' + QuotedStr(edDireccion.Text)
          + ' WHERE OFDESID = ' + QuotedStr(DM1.cdsQry1.fieldbyname('OFDESID').asstring);
   DM1.DCOM1.AppServer.EjecutaSql(xsSQL);
   fn_cargar_grid();
   DM1.cdsQry1.GotoBookmark(xbmRegistro);
   pnlMant.Visible := false;
end;
(******************************************************************************)

end.
