// Inicio Uso Estándares: 01/08/2011
// Unidad : Gestión de Cobranzas
// Formulario : TfMatriz
// Fecha de Creación :
// Autor : Equipo de Sistemas
// Objetivo : Administracion de los parametros de Gestion
// Actualizaciones:
// HPC_201209_GESCOB(F2) 18/10/2012 agregar el campo de contactado directo e indirecto
// HPC_201601_GESCOB : Mantenimiento de Reportes de FSC EC
// HPC_201702_GESCOB : Incluir en la Base de Gestión de Módulo GESCOB, el puntaje de cada gestión
// HPC_201703_GESCOB : Mejoras funcionales en el registro de la atención del asociado
Unit GES105;

Interface

Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, fcButton, fcImgBtn, fcShapeBtn, Buttons, Wwdbigrd,
   Grids, Wwdbgrid, ExtCtrls, wwcheckbox;

Type
   TfMatriz = Class(TForm)
      GroupBox1 : TGroupBox;
      BitSalir : TBitBtn;
      Panel1 : TPanel;
      lblDet : TLabel;
      dtgCab : TwwDBGrid;
      dtgDet : TwwDBGrid;
      dtgDetIButton : TwwIButton;
      pnlNuevo : TPanel;
      Label3 : TLabel;
      Label4 : TLabel;
      BitGraba : TfcShapeBtn;
      EdtNombre : TEdit;
      BitClose : TfcShapeBtn;
      stText : TStaticText;
      pnlCod : TPanel;
      EdtCodigo : TEdit;
      cbActivo : TCheckBox;
      cbContactado : TCheckBox;
      rgContactoDirecto : TRadioGroup;
      // INICIO HPC_201601_GESCOB
      // DECLARACION DE VARIABLES
      chbGestionado: TCheckBox;
      // FIN HPC_201601_GESCOB
      // FIN HPC_201209_GESCOB(F2)
      // INICIO HPC_201702_GESCOB : Incluir en la Base de Gestión de Módulo GESCOB, el puntaje de cada gestión
      Label1: TLabel;
      EditRanking: TEdit;
//Inicio HPC_201703_GESCOB
//Mejoras funcionales en el registro de la atención del asociado
    gbVisualizar: TGroupBox;
    cbpnl1: TCheckBox;
    cbpnl2: TCheckBox;
    cbpnl3: TCheckBox;
//Fin HPC_201703_GESCOB
      // FIN HPC_201702_GESCOB : Incluir en la Base de Gestión de Módulo GESCOB, el puntaje de cada gestión
      Procedure dtgCabRowChanged(Sender : TObject);
      Procedure dtgDetIButtonClick(Sender : TObject);
      Procedure BitGrabaClick(Sender : TObject);
      Procedure BitCloseClick(Sender : TObject);
      Procedure dtgDetDblClick(Sender : TObject);
      Procedure BitSalirClick(Sender : TObject);
      Procedure cbContactadoClick(Sender : TObject);
      // INICIO HPC_201702_GESCOB : Incluir en la Base de Gestión de Módulo GESCOB, el puntaje de cada gestión
      procedure EditRankingKeyPress(Sender: TObject; var Key: Char);
      // FIN HPC_201702_GESCOB : Incluir en la Base de Gestión de Módulo GESCOB, el puntaje de cada gestión
   Private
    { Private declarations }
   Public
    { Public declarations }
      Procedure MstDetalles;
   End;

Var
   fMatriz : TfMatriz;

Implementation

{$R *.dfm}

Uses GESDM1;

Procedure tfMatriz.MstDetalles;
Var
   xSQL : String;
Begin
   // INICIO HPC_201702_GESCOB : Incluir en la Base de Gestión de Módulo GESCOB, el puntaje de cada gestión
   // INICIO HPC_201209_GESCOB(F2)
   // INICIO HPC_201601_GESCOB
   // MODIFICACION DE CONSULTA
   xSQL :=
      '   SELECT IDGTN, IDGTNDET, DESCRIPCION, '
      + '        INTERNA, EXTERNA, ACTIVO, USUARIO, '
//Inicio HPC_201703_GESCOB
//Mejoras funcionales en el registro de la atención del asociado
      + '        FECHA, CONTACTADO, DIRECTO, GESTIONADO ,RANKING';
    If (DM1.cdsCredito.FieldByName('IDGTN').AsString = '02') Then
    Begin
       xSQL := xSQL+ '        ,PNLOPCVIS1,PNLOPCVIS2,PNLOPCVIS3';
    End;

     xSQL := xSQL + '  FROM GES_REF_SEG_DET '
//Fin HPC_201703_GESCOB 
      + ' WHERE IDGTN = ' + QuotedStr(DM1.cdsCredito.FieldByName('IDGTN').AsString)
      + ' ORDER BY IDGTNDET';
   // FIN HPC_201601_GESCOB
   // FIN HPC_201209_GESCOB(F2)
   // FIN HPC_201702_GESCOB : Incluir en la Base de Gestión de Módulo GESCOB, el puntaje de cada gestión
   DM1.cdsSolicitud.Close;
   DM1.cdsSolicitud.DataRequest(xSQL);
   DM1.cdsSolicitud.Open;
   dtgDet.DataSource := DM1.dsSolicitud;
   lblDet.Caption := DM1.cdsCredito.FieldByName('DESCRIPCION').AsString;
//Inicio HPC_201703_GESCOB
//Mejoras funcionales en el registro de la atención del asociado
   If (DM1.cdsCredito.FieldByName('IDGTN').AsString = '02') Then
   Begin
      gbVisualizar.Visible:=true;
   End
   Else
   Begin
      gbVisualizar.Visible:=false;
   End;
//Fin HPC_201703_GESCOB
End;

Procedure TfMatriz.dtgCabRowChanged(Sender : TObject);
Begin
   MstDetalles;
End;

Procedure TfMatriz.dtgDetIButtonClick(Sender : TObject);
Var
   xSQL : String;
Begin
   xSQL := 'select to_char(nvl(max(IDGTNDET)+1,200)) IDGTNDET from GES_REF_SEG_DET '
      + 'WHERE IDGTN=' + QuotedStr(DM1.cdsCredito.FieldByName('IDGTN').AsString);
   DM1.cdsQry11.Close;
   DM1.cdsQry11.DataRequest(xSQL);
   DM1.cdsQry11.Open;
   pnlCod.Enabled := True;
   pnlNuevo.Visible := True;
   EdtCodigo.Text := DM1.cdsQry11.FieldByName('IDGTNDET').AsString;
   EdtNombre.Text := '';
   // INICIO HPC_201702_GESCOB : Incluir en la Base de Gestión de Módulo GESCOB, el puntaje de cada gestión
   EditRanking.Text:='';
   // FIN HPC_201702_GESCOB : Incluir en la Base de Gestión de Módulo GESCOB, el puntaje de cada gestión
   // INICIO HPC_201209_GESCOB(F2)
   cbActivo.Checked := True;
   cbContactado.Checked := True;
   rgContactoDirecto.Enabled := True;
   rgContactoDirecto.ItemIndex := 0;
   // FIN HPC_201209_GESCOB(F2)
   EdtNombre.SetFocus;
   //Inicio HPC_201703_GESCOB
   //Mejoras funcionales en el registro de la atención del asociado
   cbpnl1.Checked:=false;
   cbpnl2.Checked:=false;
   cbpnl3.Checked:=false;
   //Fin HPC_201703_GESCOB
End;

Procedure TfMatriz.BitGrabaClick(Sender : TObject);
Var
   xSQL, xInt, xExt, xAct : String;
   xContactado : String;
   // INICIO HPC_201209_GESCOB(F2)
   xsDirecto : String;
   // FIN HPC_201209_GESCOB(F2)
   // INICIO HPC_201601_GESCOB
   // DECLARACION DE VARIABLE	
   xsGestionado : String;
   // FIN HPC_201601_GESCOB
   // INICIO HPC_201702_GESCOB : Incluir en la Base de Gestión de Módulo GESCOB, el puntaje de cada gestión
   xsRanking:String;
   // FIN HPC_201702_GESCOB : Incluir en la Base de Gestión de Módulo GESCOB, el puntaje de cada gestión
   //Inicio HPC_201703_GESCOB
   //Mejoras funcionales en el registro de la atención del asociado
   xpnl1,xpnl2,xpnl3:String;
   //Fin HPC_201703_GESCOB
Begin

   If Length(Trim(EdtCodigo.Text)) = 0 Then
   Begin
      MessageDlg('No Se Ingresado El Concepto !!!', mtError, [mbOk], 0);
      Exit;
   End;

   If Length(Trim(EdtCodigo.Text)) <> 3 Then
   Begin
      MessageDlg('El Concepto debe ser de 3 digitos!!!', mtError, [mbOk], 0);
      Exit;
   End;

   If Length(Trim(EdtNombre.Text)) = 0 Then
   Begin
      MessageDlg('No Se Ingresado la Descripción El Concepto !!!', mtError, [mbOk], 0);
      Exit;
   End;

   // INICIO HPC_201209_GESCOB(F2)
   IF (DM1.cdsCredito.FieldByName('IDGTN').AsString = '02')
      OR (DM1.cdsCredito.FieldByName('IDGTN').AsString = '03')
      OR (DM1.cdsCredito.FieldByName('IDGTN').AsString = '05') THEN
      xInt := 'S'
   Else
      xInt := 'N';
   IF (DM1.cdsCredito.FieldByName('IDGTN').AsString = '01')
      OR (DM1.cdsCredito.FieldByName('IDGTN').AsString = '04') THEN
      xExt := 'S'
   Else
      xExt := 'N';

   If cbActivo.Checked Then
      xAct := 'S'
   Else
      xAct := 'N';
   If cbContactado.Checked Then
      xContactado := 'S'
   Else
      xContactado := 'N';

   If (rgContactoDirecto.enabled) And (rgContactoDirecto.ItemIndex = 0) Then
      xsDirecto := 'S'
   Else
      xsDirecto := 'N';
   
   // INICIO HPC_201601_GESCOB
   // VALICACION DE CHECK
   // MODIFICACION DE SCRIPTS DE BASE DE DATOS
   If chbGestionado.Checked Then
      xsGestionado := 'S'
   Else
      xsGestionado := 'N';
   // INICIO HPC_201702_GESCOB : Incluir en la Base de Gestión de Módulo GESCOB, el puntaje de cada gestión
   xsRanking:=EditRanking.Text;
   If Length(Trim(xsRanking)) = 0 Then
   Begin
      xsRanking:='NULL';
   End;
   //Inicio HPC_201703_GESCOB
   //Mejoras funcionales en el registro de la atención del asociado
   If cbpnl1.Checked Then
   Begin
      xpnl1 := 'S'
   End
   Else
   Begin
      xpnl1 := 'N'
   End;
   If cbpnl2.Checked Then
   Begin
      xpnl2 := 'S'
   End
   Else
   Begin
      xpnl2 := 'N'
   End;
   If cbpnl3.Checked Then
   Begin
      xpnl3 := 'S'
   End
   Else
   Begin
      xpnl3 := 'N'
   End;
   //Fin HPC_201703_GESCOB
   If pnlCod.Enabled Then
      xSQL :=
         //Inicio HPC_201703_GESCOB
         //Mejoras funcionales en el registro de la atención del asociado
         '   INSERT INTO GES_REF_SEG_DET(IDGTN, IDGTNDET, DESCRIPCION, '
         + '                             INTERNA, EXTERNA, ACTIVO, USUARIO, '
         + '                             FECHA, CONTACTADO, DIRECTO, GESTIONADO ,RANKING '
         + '                             ,PNLOPCVIS1,PNLOPCVIS2,PNLOPCVIS3 '
         + ' ) '
         + ' VALUES (' + QuotedStr(DM1.cdsCredito.FieldByName('IDGTN').AsString) + ', '
         + QuotedStr(EdtCodigo.Text) + ', ' + QuotedStr(EdtNombre.Text) + ', ' + QuotedStr(xInt) + ', '
         + QuotedStr(xExt) + ', ' + QuotedStr(xAct) + ', ' + QuotedStr(DM1.wUsuario)
         + ', SYSDATE,' + QuotedStr(xContactado) + ',' + QuotedStr(xsDirecto) + ', ' + QuotedStr(xsGestionado) + ','+xsRanking
         + ','+QuotedStr(xpnl1)+ ','+QuotedStr(xpnl2)+ ','+QuotedStr(xpnl3)
         +' )'
         //Fin HPC_201703_GESCOB
   Else
      xSQL :=
         '    UPDATE GES_REF_SEG_DET '
         + '     SET DESCRIPCION = ' + QuotedStr(EdtNombre.Text)
         + '        ,INTERNA = ' + QuotedStr(xInt)
         + '        ,EXTERNA = ' + QuotedStr(xExt)
         + '        ,ACTIVO = ' + QuotedStr(xAct)
         + '        ,USUARIO = ' + QuotedStr(DM1.wUsuario)
         + '        ,FECHA = SYSDATE '
         + '        ,CONTACTADO = ' + QuotedStr(xContactado)
         + '        ,DIRECTO = ' + QuotedStr(xsDirecto)
         + '        ,GESTIONADO = ' + QuotedStr(xsGestionado)
         + '        ,RANKING='+xsRanking
         //Inicio HPC_201703_GESCOB
         //Mejoras funcionales en el registro de la atención del asociado
          + '        ,PNLOPCVIS1='+QuotedStr(xpnl1)
          + '        ,PNLOPCVIS2='+QuotedStr(xpnl2)
          + '        ,PNLOPCVIS3='+QuotedStr(xpnl3)
         //Fin HPC_201703_GESCOB
         + '   WHERE IDGTN=' + QuotedStr(DM1.cdsCredito.FieldByName('IDGTN').AsString)
         + '     AND IDGTNDET=' + QuotedStr(DM1.cdsSolicitud.FieldByName('IDGTNDET').AsString);
   // FIN HPC_201601_GESCOB
   // FIN HPC_201209_GESCOB(F2)
   DM1.DCOM1.AppServer.EjecutaSql(xSQL);
   MstDetalles;
   pnlNuevo.Visible := False;
   // FIN HPC_201702_GESCOB : Incluir en la Base de Gestión de Módulo GESCOB, el puntaje de cada gestión
End;

Procedure TfMatriz.BitCloseClick(Sender : TObject);
Begin
   pnlNuevo.Visible := False;
End;

Procedure TfMatriz.dtgDetDblClick(Sender : TObject);
Begin
   pnlNuevo.Visible := True;

   EdtCodigo.Text := DM1.cdsSolicitud.FieldByName('IDGTNDET').AsString;
   pnlCod.Enabled := False;
   EdtNombre.Text := DM1.cdsSolicitud.FieldByName('DESCRIPCION').AsString;
   // INICIO HPC_201702_GESCOB : Incluir en la Base de Gestión de Módulo GESCOB, el puntaje de cada gestión
   EditRanking.Text := DM1.cdsSolicitud.FieldByName('RANKING').AsString;
   // FIN HPC_201702_GESCOB : Incluir en la Base de Gestión de Módulo GESCOB, el puntaje de cada gestión
   // INICIO HPC_201209_GESCOB(F2)
   If DM1.cdsSolicitud.FieldByName('ACTIVO').AsString = 'S' Then
      cbActivo.Checked := True
   Else
      cbActivo.Checked := False;
   
   // INICIO HPC_201601_GESCOB
   // CHECK EN CONTROL
   chbGestionado.Checked := (DM1.cdsSolicitud.FieldByName('GESTIONADO').AsString = 'S');
   // FIN HPC_201601_GESCOB

   If DM1.cdsSolicitud.FieldByName('CONTACTADO').AsString = 'S' Then
      cbContactado.Checked := True
   Else
      cbContactado.Checked := False;

   rgContactoDirecto.Enabled := (DM1.cdsSolicitud.FieldByName('CONTACTADO').AsString = 'S');
   If (DM1.cdsSolicitud.FieldByName('CONTACTADO').AsString = 'S')
      And (DM1.cdsSolicitud.FieldByName('DIRECTO').AsString = 'S') Then
      rgContactoDirecto.ItemIndex := 0
   Else
      rgContactoDirecto.ItemIndex := 1;
   // FIN HPC_201209_GESCOB(F2)

   EdtNombre.SetFocus;
   //Inicio HPC_201703_GESCOB
   //Mejoras funcionales en el registro de la atención del asociado
   If (DM1.cdsCredito.FieldByName('IDGTN').AsString = '02') Then
   Begin
    If DM1.cdsSolicitud.FieldByName('PNLOPCVIS1').AsString = 'S' Then
    Begin
      cbpnl1.Checked:=true;
    End
    Else
    Begin
      cbpnl1.Checked:=false;
    End;
    If DM1.cdsSolicitud.FieldByName('PNLOPCVIS2').AsString = 'S' Then
    Begin
      cbpnl2.Checked:=true;
    End
    Else
    Begin
      cbpnl2.Checked:=false;
    End;
    If DM1.cdsSolicitud.FieldByName('PNLOPCVIS3').AsString = 'S' Then
    Begin
      cbpnl3.Checked:=true;
    End
    Else
    Begin
      cbpnl3.Checked:=false;
    End;
   End;
   //Fin HPC_201703_GESCOB

End;

Procedure TfMatriz.BitSalirClick(Sender : TObject);
Begin
   Close;
End;

// INICIO HPC_201209_GESCOB(F2)

Procedure TfMatriz.cbContactadoClick(Sender : TObject);
Begin
   rgContactoDirecto.Enabled := cbContactado.Checked;
   If Not cbContactado.Checked Then
      rgContactoDirecto.ItemIndex := 1;
End;
// FIN HPC_201209_GESCOB(F2)
// INICIO HPC_201702_GESCOB : Incluir en la Base de Gestión de Módulo GESCOB, el puntaje de cada gestión
procedure TfMatriz.EditRankingKeyPress(Sender: TObject; var Key: Char);
begin
  if not(Key in ['0'..'9','.',#8]) then
  begin
    Key:=#0;
  end;
  if (Key='.') and  ( Pos('.',EditRanking.Text)>0 ) then
  begin
    Key:=#0;
  end;
end;
// FIN HPC_201702_GESCOB : Incluir en la Base de Gestión de Módulo GESCOB, el puntaje de cada gestión
End.
