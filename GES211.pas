// Unidad              : Gestión de Cobranzas
// Formulario          : fLiberaGes
// Fecha de Creación   :
// Autor               : Equipo de Sistemas
// Objetivo            : Gestion de Cobranzas
// Actualizaciones:
// HPC_201305_GESCOB   : F2 04/06/2013 Se modificó los parametros del store procedure SP_LIBERA_GESCOB
// SPP_201305_GESCOB   : Se realiza el pase a producción a partir del HPC_201305_GESCOB

Unit GES211;

Interface

Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, wwdblook, Buttons, ExtCtrls, db;

Type
   TFLiberaGes = Class(TForm)
      pAsigna: TPanel;
      lblTipGest: TLabel;
      BitAsigna: TBitBtn;
      dblUserInt: TwwDBLookupCombo;
      Panel5: TPanel;
      EdtUserNom: TEdit;
      BitSalir: TBitBtn;
      dblUserExt: TwwDBLookupCombo;
      Shape1: TShape;
      rdbInt: TRadioButton;
      rdbExt: TRadioButton;
      Label8: TLabel;
      Procedure BitAsignaClick(Sender: TObject);
      Procedure FormActivate(Sender: TObject);
      Procedure dblUserIntChange(Sender: TObject);
      Procedure BitSalirClick(Sender: TObject);
      Procedure dblUserIntNotInList(Sender: TObject; LookupTable: TDataSet;
         NewValue: String; Var Accept: Boolean);
      Procedure rdbIntClick(Sender: TObject);
      Procedure rdbExtClick(Sender: TObject);
      Procedure dblUserExtChange(Sender: TObject);
      Procedure rbPrevClick(Sender: TObject);
   Private
    { Private declarations }
   Public
    { Public declarations }
   End;

Var
   FLiberaGes: TFLiberaGes;

Implementation

Uses GESDM1;

{$R *.dfm}

Procedure TFLiberaGes.BitAsignaClick(Sender: TObject);
Var
   xSQL: String;
Begin
   If MessageDlg('¿ Seguro de Liberar Gestión de Cobranza ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
      Begin
         Screen.Cursor := crHourGlass;

// Inicio: SPP_201305_GESCOB F2 liberación individual y motivo de liberación
//       Se agregó 2 parametros en el SP: liberación individual/masiva y motivo de liberación
         If rdbInt.Checked Then
            xSQL := 'Begin db2admin.SP_LIBERA_GESCOB( ''' + dblUserInt.text + ''', ' + ' ''0'', ''01'' ' + ' ); end;';

         If rdbExt.Checked Then
            xSQL := 'Begin db2admin.SP_LIBERA_GESCOB( ''' + dblUserExt.text + ''', ' + ' ''0'', ''01'' ' + ' ); end;';
// Fin: SPP_201305_GESCOB

         DM1.DCOM1.AppServer.EjecutaSql(xSQL);

         Screen.Cursor := crDefault;
         ShowMessage('Gestion Liberada');
      End;
End;

Procedure TFLiberaGes.FormActivate(Sender: TObject);
Begin
   rdbIntClick(SeLF);
  {
  xSQL:='SELECT USERNIV,A.USERID,B.USERNOM FROM GES_NIV_USU_OTO A, TGE006 B '
       +'WHERE A.USERID=B.USERID AND A.USERID IN (SELECT USERID FROM GES_NIV_USU_OTO WHERE USERNIV=''N1'' )';
  DM1.cdsQry6.Close;
  DM1.cdsQry6.DataRequest(xSQL);
  DM1.cdsQry6.Open;}
   dblUserInt.Enabled := True;
   dblUserInt.Visible := True;
End;

Procedure TFLiberaGes.dblUserIntChange(Sender: TObject);
Begin
   If DM1.cdsQry6.Locate('USERID', VarArrayof([dblUserInt.Text]), []) Then
      Begin
         EdtUserNom.Text := DM1.cdsQry6.fieldbyname('USERNOM').AsString;
      End
   Else
      Begin
         If Length(dblUserInt.Text) <> 1 Then
            Begin
               Beep;
               EdtUserNom.Text := '';
            End;
      End;
End;

Procedure TFLiberaGes.BitSalirClick(Sender: TObject);
Begin
   DM1.cdsQry6.Close;
   Close;
End;

Procedure TFLiberaGes.dblUserIntNotInList(Sender: TObject;
   LookupTable: TDataSet; NewValue: String; Var Accept: Boolean);
Begin
   Accept := LookupTable.Locate(TwwDBCustomLookupCombo(Sender).LookupField, NewValue, []);
   If Not Accept Then
      TwwDBCustomLookupCombo(Sender).DropDown;
End;

Procedure TFLiberaGes.rdbIntClick(Sender: TObject);
Var
   xSQL: String;
Begin
   xSQL := 'SELECT USERNIV,A.USERID,B.USERNOM FROM GES_NIV_USU_OTO A,TGE006 B WHERE A.USERID=B.USERID AND REGACT=''S'' AND A.USERID IN (SELECT USERID FROM GES_NIV_USU_OTO WHERE USERNIV=''N1'' ) ';
   DM1.cdsQry6.Close;
   DM1.cdsQry6.DataRequest(xSQL);
   DM1.cdsQry6.Open;
   dblUserInt.Enabled := True;
   dblUserExt.Text := '';
   dblUserExt.Enabled := False;
   dblUserInt.Visible := True;
   dblUserExt.Visible := False;
   lblTipGest.Caption := 'Tipo de Gestión : ' + rdbInt.Caption;
End;

Procedure TFLiberaGes.rdbExtClick(Sender: TObject);
Var
   xSQL: String;
Begin
   xSQL := 'SELECT IDENTEXT USERID,DESENTEXT USERNOM,REGACT FROM GES_TIP_USU_EXT WHERE REGACT=''S''  ';
   DM1.cdsQry5.Close;
   DM1.cdsQry5.DataRequest(xSQL);
   DM1.cdsQry5.Open;
   dblUserInt.Enabled := False;
   dblUserInt.Text := '';
   dblUserExt.Enabled := True;
   dblUserInt.Visible := False;
   dblUserExt.Visible := True;
   lblTipGest.Caption := 'Tipo de Gestión : ' + rdbExt.Caption;
End;

Procedure TFLiberaGes.dblUserExtChange(Sender: TObject);
Begin
   If DM1.cdsQry5.Locate('USERID', VarArrayof([dblUserExt.Text]), []) Then
      Begin
         EdtUserNom.Text := DM1.cdsQry5.fieldbyname('USERNOM').AsString;
      End
   Else
      Begin
         If Length(dblUserExt.Text) <> 1 Then
            Begin
               Beep;
               EdtUserNom.Text := '';
            End;
      End;
End;

Procedure TFLiberaGes.rbPrevClick(Sender: TObject);
Var
   xSQL: String;
Begin
   xSQL := 'SELECT USERNIV,A.USERID,B.USERNOM FROM GES_NIV_USU_OTO A,TGE006 B WHERE A.USERID=B.USERID AND REGACT=''S'' AND A.USERID IN (SELECT USERID FROM GES_NIV_USU_OTO WHERE USERNIV=''N0'' ) AND TIPACT=''01'' ';
   DM1.cdsQry6.Close;
   DM1.cdsQry6.DataRequest(xSQL);
   DM1.cdsQry6.Open;
   dblUserInt.Enabled := True;
   dblUserExt.Text := '';
   dblUserExt.Enabled := False;
   dblUserInt.Visible := True;
   dblUserExt.Visible := False;
   lblTipGest.Caption := 'Tipo de Gestión : ' + rdbInt.Caption;
End;

End.
