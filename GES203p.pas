// Inicio Uso Estándares: 01/08/2011
// Unidad : Gestión de Cobranzas
// Formulario : FObservacion
// Fecha de Creación : 11/01/2012
// Autor : Equipo de Sistemas
// Objetivo : Ingreso de Observaciones
// Actualizaciones:
// HPC_201201_GESCOB 09/01/2012 Registrar Hojas de Rutas

Unit GES203p;

Interface

Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, Buttons, ExtCtrls;

Type
   TFObservacion = Class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    pnlControles: TPanel;
    btnGrabar: TBitBtn;
    btnSalir: TBitBtn;
    Label1: TLabel;
    lblMsg: TLabel;
    memObservacion: TMemo;
      Procedure btnGrabarClick(Sender : TObject);
    procedure btnSalirClick(Sender: TObject);
   Private
    { Private declarations }
   Public
    { Public declarations }
   End;

Var
   FObservacion : TFObservacion;

Implementation

{$R *.dfm}
//******************************************************************************
// Nombre : btnGrabarClick
// Descripcion : Devolver confirmacion para que se pueda grabar
//******************************************************************************

Procedure TFObservacion.btnGrabarClick(Sender : TObject);
Begin
   If trim(memObservacion.Text) = '' Then
   Begin
      MessageDlg('Ingrese una Observación', mtError, [mbOk], 0);
      exit;
   End;
   self.ModalResult := mrOk;
End;

//******************************************************************************
// Nombre : btnSalirClick
// Descripcion : Salir sin confirmar la opcion de grabar
//******************************************************************************

procedure TFObservacion.btnSalirClick(Sender: TObject);
begin
   self.ModalResult := mrCancel;
end;

End.

