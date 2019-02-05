// Inicio Uso Estándares: 01/08/2011
// Unidad : Gestión de Cobranzas
// Formulario : FrmCambioAsignacion
// Fecha de Creación : 03/08/2015
// Autor : Equipo de Sistemas
// Objetivo : Cambiar la asignacion interna
// Actualizaciones:
// HPC_201502_GESCOB: automatizar la importacion de las asignaciones y gestiones

unit GES301;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, wwdblook, Buttons;

type
  TFrmCambioAsignacionInt = class(TForm)
    Panel3: TPanel;
    btnSalir: TBitBtn;
    gbx01: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    cboGestorOrigen: TwwDBLookupCombo;
    cboGestorDestino: TwwDBLookupCombo;
    rgTipoCambio: TRadioGroup;
    btnProcesar: TBitBtn;
    Label3: TLabel;
    procedure btnSalirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnProcesarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCambioAsignacionInt: TFrmCambioAsignacionInt;

implementation

uses GESDM1;

{$R *.dfm}

(******************************************************************************)
procedure TFrmCambioAsignacionInt.FormCreate(Sender: TObject);
var xsSQL : String;
begin
   rgTipoCambio.ItemIndex := 0;
   // cargar gestor origen
   xsSQL := 'SELECT USERNIV, A.USERID, B.USERNOM '
      + '     FROM GES_NIV_USU_OTO A, TGE006 B '
      + '    WHERE A.USERID = B.USERID '
      + '      AND REGACT = ''S'' '
      + '      AND USERNIV IN (''N1'') '
      + '    ORDER BY USERID';
   DM1.cdsQry1.Close;
   DM1.cdsQry1.DataRequest(xsSQL);
   DM1.cdsQry1.Open;
   cboGestorOrigen.LookupTable := DM1.cdsQry1;
   cboGestorOrigen.LookupField := 'USERID';
   cboGestorOrigen.Selected.Clear;
   cboGestorOrigen.Selected.Add('USERID'#9'8'#9'Gestor');

   DM1.cdsQry2.Close;
   DM1.cdsQry2.DataRequest(xsSQL);
   DM1.cdsQry2.Open;
   cboGestorDestino.LookupTable := DM1.cdsQry2;
   cboGestorDestino.LookupField := 'USERID';
   cboGestorDestino.Selected.Clear;
   cboGestorDestino.Selected.Add('USERID'#9'8'#9'Gestor');

   if (DM1.fn_validar_periodo_asignacion_actual() = 'TRUE') then begin
      gbx01.Enabled := true;
   end else begin
      gbx01.Enabled := false;
      MessageDlg('EL PERIODO DE ASIGNACION DEBE SER ACTUALIZADO, COMUNIQUESE CON EL EQUIPO DE SISTEMAS !!!', mtInformation, [mbOk], 0);
   end;
end;

(******************************************************************************)
procedure TFrmCambioAsignacionInt.btnSalirClick(Sender: TObject);
begin
  Close;
end;

(******************************************************************************)
procedure TFrmCambioAsignacionInt.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Action := caFree;
end;

(******************************************************************************)
procedure TFrmCambioAsignacionInt.btnProcesarClick(Sender: TObject);
var
  xsTipoCambio : String;
  xsSQL : String;
begin
  if (cboGestorOrigen.text = '') then begin
      MessageDlg('SELECCIONE EL GESTOR QUE SERA DESASIGNADO!!!', mtInformation, [mbOk], 0);
      Exit;
  end;
  if (cboGestorDestino.text = '') then begin
      MessageDlg('SELECCIONE EL GESTOR QUE SERA ASIGNADO!!!', mtInformation, [mbOk], 0);
      Exit;
  end;

  if (cboGestorOrigen.text = cboGestorDestino.text) then begin
      MessageDlg('SELECCIONE GESTORES DISTINTOS!!!', mtInformation, [mbOk], 0);
      Exit;
  end;

  if (rgTipoCambio.ItemIndex < 0 ) then begin
      MessageDlg('SELECCIONE EL TIPO DE CAMBIO!!!', mtInformation, [mbOk], 0);
      Exit;
  end;

  Screen.Cursor := crHourGlass;
  if rgTipoCambio.ItemIndex = 1 then xsTipoCambio := 'N' else xsTipoCambio := 'S'; 
  xsSQL := 'BEGIN '
         + '  SP_GES_CAMBIO_ASIGNACION(TO_CHAR(ADD_MONTHS(SYSDATE ,-1) ,''YYYYMM'') '
         + '                          ,'+QuotedStr(cboGestorOrigen.Text)
         + '                          ,'+QuotedStr(cboGestorDestino.Text)
         + '                          ,'+QuotedStr(xsTipoCambio)+'); END; ';
  DM1.DCOM1.AppServer.EjecutaSql(xsSQL);
  MessageDlg('LA ASIGNACIÓN TERMINO CORRECTAMENTE!!!', mtInformation, [mbOk], 0);
  Screen.Cursor := crDefault;
end;
(******************************************************************************)
end.
