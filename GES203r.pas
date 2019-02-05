// Inicio Uso Estándares:
// Unidad : Gestión de Cobranzas
// Formulario : fLibGesInd
// Fecha de Creación :
// Autor : Equipo de Sistemas
// Objetivo : Gestion de Cobranzas
// Actualizaciones:
// HPC_201305_GESCOB: F2 04/06/2013 Se agregó nueva opción, liberación individual para el Gestor de un asociado
//                                  Se agregó parametros al sp SP_LIBERA_GESCOB, el AsoId del socio y el motivo de liberación


// HPC_201305_GESCOB: F2 nuevo formulario para liberación individual.
//                               Es obligatorio que el usuario seleccione el motivo de liberación
// SPP_201305_GESCOB: Se realiza el pase a producción a partir del HPC_201305_GESCOB
// SPP_201401_GESCOB: Importacion masiva interna y Mejoras del proceso de priorizacion
// SPP_201401_GESCOB: Se realiza el pase a producción a partir del HPC_201401_GESCOB


unit GES203r;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, wwdblook, Buttons;

type
  TfLibGesInd = class(TForm)
    Label4: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    Label3: TLabel;
    Label6: TLabel;
    BitSalir: TBitBtn;
    BitLiberar: TBitBtn;
    lblGestorNombre: TLabel;
    lblAsoNombres: TLabel;
    dblcMotivos: TwwDBLookupCombo;
    Label8: TLabel;
    lblDescMotivo: TLabel;
    procedure BitSalirClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BitLiberarClick(Sender: TObject);
    procedure dblcMotivosChange(Sender: TObject);
    procedure dblcMotivosExit(Sender: TObject);
  private
    { Private declarations }
  public
    // INICIO : SPP_201401_GESCOB
    xsAsoId: String;
    xsGestor: String;
    // FIN : SPP_201401_GESCOB
  end;

var
  fLibGesInd: TfLibGesInd;

implementation

uses GES203a, GES203, GESDM1;

{$R *.dfm}

procedure TfLibGesInd.BitSalirClick(Sender: TObject);
begin
   Close;
end;

procedure TfLibGesInd.FormActivate(Sender: TObject);
Var
   xsSQL : String;
begin
   // INICIO : SPP_201401_GESCOB
   BitLiberar.Enabled := false;
   lblDescMotivo.Caption := '';

   xsSQL := 'SELECT IDMOTIVO, DESCRIPCION, ASIGNACION, INDIVIDUAL FROM GES_COB_MOT_LIB WHERE INDIVIDUAL = ''S'' ORDER BY IDMOTIVO';
   DM1.cdsMotivosLib.Close;
   DM1.cdsMotivosLib.DataRequest(xsSQL);
   DM1.cdsMotivosLib.Open;
   // FIN : SPP_201401_GESCOB
end;

// INICIO : SPP_201401_GESCOB
procedure TfLibGesInd.BitLiberarClick(Sender: TObject);
Var
   xsSQL: String;
begin
   Screen.Cursor := crHourGlass;

   xsSQL := 'Begin db2admin.SP_LIBERA_GESCOB( ''' + xsGestor + ''', ' + QuotedStr(xsAsoId) + ', ''' + dblcMotivos.Text + ''' ); end;';
   DM1.DCOM1.AppServer.EjecutaSql(xsSQL);

   Screen.Cursor := crDefault;
   ShowMessage('Gestion Liberada');
   self.ModalResult :=  mrOk;
end;
// FIN : SPP_201401_GESCOB

procedure TfLibGesInd.dblcMotivosChange(Sender: TObject);
begin
   Screen.Cursor := crHourGlass;
   lblDescMotivo.Caption := '';

   If DM1.cdsMotivosLib.Locate('IDMOTIVO', VarArrayof([dblcMotivos.Text]), []) Then
      Begin
      lblDescMotivo.Caption := DM1.cdsMotivosLib.fieldbyname('DESCRIPCION').AsString;
      BitLiberar.Enabled := true;
      End
   Else
      Begin
      Beep;
      lblDescMotivo.Caption := '';
      BitLiberar.Enabled := false;
      End;
   Screen.Cursor := crDefault;
end;

procedure TfLibGesInd.dblcMotivosExit(Sender: TObject);
begin
   Screen.Cursor := crHourGlass;
   If trim(lblDescMotivo.Caption) <> '' Then
      Begin
          Screen.Cursor := crHourGlass;
          BitLiberar.Enabled := true;
      End
   Else
      Begin
          BitLiberar.Enabled := false;
      End;
   Screen.Cursor := crDefault;
end;


end.
