// Inicio Uso Estándares: 01/08/2011
// Unidad : Gestión de Cobranzas
// Formulario : FSelOficina
// Fecha de Creación : 17/07/2012
// Autor : Equipo de Sistemas
// Objetivo :  Asignar una ofides por gestor - para el Reporte de Asignacion de Cartera de Asociados a Gestionar
// Actualizaciones:
// HPC_201205_GESCOB 17/07/2012 Crear Reporte de Asignacion de Cartera de Asociados a Gestionar(nuevo)
// DPP_201205_GESCOB: Pase a producción a partir de los pases HPC_201205 y HPC_201206

Unit GES006;

Interface

Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, Buttons, ExtCtrls, wwdblook;

Type
   TConsulta = (tcSOLimaMetropolitana, tcSOProvincia);
   TFSelOficina = Class(TForm)
      pnl1 : TPanel;
      btnCancelar : TBitBtn;
      btnAceptar : TBitBtn;
      lbl1 : TLabel;
      cboOficina : TwwDBLookupCombo;
      edOficina : TEdit;
      Procedure btnAceptarClick(Sender : TObject);
      Procedure FormShow(Sender : TObject);
      Procedure cboOficinaExit(Sender : TObject);
   Private
      xxTipoConsulta : TConsulta;
   Public
      xsResultOfDesId : String;
      Constructor Create(AOwner : TComponent; wgTipoc : TConsulta); Overload;
   End;

Var
   FSelOficina : TFSelOficina;

Implementation

Uses GESDM1;

{$R *.dfm}

(******************************************************************************)

Constructor TFSelOficina.Create(AOwner : TComponent; wgTipoc : TConsulta);
Begin
   self.xxTipoConsulta := wgTipoc;
   self.Create(AOwner);
End;

(******************************************************************************)

Procedure TFSelOficina.btnAceptarClick(Sender : TObject);
Begin
   If trim(self.edOficina.Text) = '' Then
   Begin
      MessageDlg('Seleccione una Oficina', mtWarning, [mbOk], 0);
      exit;
   End;
   self.xsResultOfDesId := trim(self.cboOficina.Text);
   self.ModalResult := mrOk;
End;

(******************************************************************************)

Procedure TFSelOficina.FormShow(Sender : TObject);
Var
   xsSQL : String;
Begin
   Screen.Cursor := crHourGlass;
   Case self.xxTipoConsulta Of
      tcSOLimaMetropolitana :
         Begin
            xsSQL :=
               '  SELECT OFDESID, OFDESNOM, DPTOID '
               + '  FROM APO110 '
               + ' WHERE DPTOID = ''15'' '
               + '   AND IDCONOFI = ''S'' '
               + '   AND OFIPRI = ''01'' '
               + ' ORDER BY OFDESNOM ';
         End;
      tcSOProvincia :
         Begin
            xsSQL :=
               '  SELECT OFDESID, OFDESNOM, DPTOID '
               + '  FROM APO110 '
               + ' WHERE DPTOID <> ''15'' '
               + ' ORDER BY OFDESNOM ';
         End;
   End;
   DM1.cdsQry7.Close;
   DM1.cdsQry7.DataRequest(xsSQL);
   DM1.cdsQry7.Open;
   cboOficina.LookupTable := DM1.cdsQry7;
   cboOficina.LookupField := 'OFDESID';
   cboOficina.Selected.Clear;
   cboOficina.Selected.Add('OFDESID'#9'5'#9'ID');
   cboOficina.Selected.Add('OFDESNOM'#9'20'#9'OFIDES');
   Screen.Cursor := crDefault;
End;

(******************************************************************************)

Procedure TFSelOficina.cboOficinaExit(Sender : TObject);
Begin
   self.edOficina.Text := '';
   If DM1.cdsQry7.Locate('OFDESID', VarArrayof([self.cboOficina.Text]), []) Then
      self.edOficina.Text := DM1.cdsQry7.fieldbyname('OFDESNOM').AsString;
End;
(******************************************************************************)
End.

