// Inicio Uso Estándares: 01/08/2011
// Unidad : Gestión de Cobranzas
// Formulario : fGestRealizadas
// Fecha de Creación :
// Autor : Equipo de Sistemas
// Objetivo : Seguimiento y control
// Actualizaciones:
// SPP_201401_GESCOB: Importacion masiva interna y Mejoras del proceso de priorizacion
// SPP_201401_GESCOB: Se realiza el pase a producción a partir del HPC_201401_GESCOB

unit GES207;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, Wwdbigrd, Wwdbgrid;

type
  TfGestRealizadas = class(TForm)
    dtgDetGes: TwwDBGrid;
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fGestRealizadas: TfGestRealizadas;

implementation

uses GESDM1;

{$R *.dfm}

procedure TfGestRealizadas.FormActivate(Sender: TObject);
var xTot01:Integer;
begin
      dtgDetGes.Selected.Clear;
      dtgDetGes.Selected.Add('DESGES'#9'25'#9'Tipo Gestión'#9#9);
      dtgDetGes.Selected.Add('DESGESDET'#9'45'#9'Resultados de Gestión'#9#9);
      dtgDetGes.Selected.Add('CONTACTADO'#9'5'#9'Contactado'#9#9);
      dtgDetGes.Selected.Add('DIRECTO'#9'5'#9'Directa'#9#9);
      dtgDetGes.Selected.Add('GESTIONES'#9'5'#9'N° Gestiones'#9#9);
      dtgDetGes.ApplySelected;
      dtgDetGes.DataSource := DM1.dsQry10;
      xTot01:=0;
      DM1.cdsQry10.First;
      While Not DM1.cdsQry10.Eof Do
       Begin
          xTot01:=xTot01 + DM1.cdsQry10.FieldByName('GESTIONES').AsInteger;
          DM1.cdsQry10.Next;
      End;
      dtgDetGes.ColumnByName('DESGESDET').FooterValue := 'Total';
      dtgDetGes.ColumnByName('GESTIONES').FooterValue := FloatToStrF(xTot01, ffNumber, 7, 0);
      DM1.cdsQry10.First;

end;

end.
