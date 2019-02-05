// HPC_201704_GESCOB : Mantenimiento de Zonas
Unit GES101;

Interface

Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, Buttons, Grids, Wwdbigrd, Wwdbgrid, ExtCtrls,
   fcButton, fcImgBtn, fcShapeBtn;

Type
   TfParGest = Class(TForm)
      GroupBox1: TGroupBox;
      BitSalir: TBitBtn;
      Panel1: TPanel;
      dtgCab: TwwDBGrid;
      dtgDet: TwwDBGrid;
      lblDet: TLabel;
      dtgDetIButton: TwwIButton;
      pnlNuevo: TPanel;
      Label3: TLabel;
      Label4: TLabel;
      BitGraba: TfcShapeBtn;
      EdtNombre: TEdit;
      BitClose: TfcShapeBtn;
      stText: TStaticText;
      Panel2: TPanel;
      EdtCodigo: TEdit;
// Inicio HPC_201704_GESCOB : Mantenimiento de Zonas
    cbEstado: TCheckBox;
// Fin HPC_201704_GESCOB : Mantenimiento de Zonas
      Procedure BitSalirClick(Sender: TObject);
      Procedure dtgCabRowChanged(Sender: TObject);
      Procedure dtgDetIButtonClick(Sender: TObject);
      Procedure BitGrabaClick(Sender: TObject);
      Procedure BitCloseClick(Sender: TObject);
// Inicio HPC_201704_GESCOB : Mantenimiento de Zonas
    procedure dtgDetDblClick(Sender: TObject);
// Fin HPC_201704_GESCOB : Mantenimiento de Zonas
   Private
    { Private declarations }
      Function GnrIdGest(xCodIni: String): String;
   Public
    { Public declarations }
      Procedure MstDetalles;
   End;

Var
   fParGest: TfParGest;

Implementation

Uses GESDM1;

{$R *.dfm}

Procedure TfParGest.BitSalirClick(Sender: TObject);
Begin
   Close;
End;

Procedure TfParGest.MstDetalles;
Var
   xSQL: String;
Begin
// Inicio HPC_201704_GESCOB : Mantenimiento de Zonas
   xSQL := 'SELECT CODTIP,CODREF,DESREF,CODEST,CASE WHEN CODEST = 1 THEN ''ACTIVO'' ELSE ''INACTIVO'' END ESTADO FROM GES_TIP_REF_DET WHERE CODTIP=' + QuotedStr(DM1.cdsCredito.FieldByName('CODTIP').AsString) + ' ORDER BY CODREF';
// Fin HPC_201704_GESCOB : Mantenimiento de Zonas
   DM1.cdsSolicitud.Close;
   DM1.cdsSolicitud.DataRequest(xSQL);
   DM1.cdsSolicitud.Open;
   dtgDet.DataSource := DM1.dsSolicitud;
   lblDet.Caption := DM1.cdsCredito.FieldByName('DESTIP').AsString;

End;

Procedure TfParGest.dtgCabRowChanged(Sender: TObject);
Begin
   MstDetalles;
End;

Procedure TfParGest.dtgDetIButtonClick(Sender: TObject);
Begin
// Inicio HPC_201704_GESCOB : Mantenimiento de Zonas
   pnlNuevo.Visible := True;
   EdtNombre.Text := '';
   cbEstado.Checked:=true;
   EdtCodigo.Text := GnrIdGest(DM1.cdsCredito.FieldByName('CODTIP').AsString);
// Fin HPC_201704_GESCOB : Mantenimiento de Zonas
End;

Procedure TfParGest.BitGrabaClick(Sender: TObject);
Var
   xSQL: String;
// Inicio HPC_201704_GESCOB : Mantenimiento de Zonas
   xEstado:String;
   xCantidad:String;
// Fin HPC_201704_GESCOB : Mantenimiento de Zonas
Begin

   If Length(Trim(EdtNombre.Text)) = 0 Then
      Begin
         MessageDlg('No Se Ingresado El Concepto !!!', mtError, [mbOk], 0);
         Exit;
      End;
// Inicio HPC_201704_GESCOB : Mantenimiento de Zonas
   if cbEstado.Checked Then
   begin
    xEstado:='1';
   end
   else
   begin
    xEstado:='0';
   end;
   xSQL := 'SELECT COUNT(1) TOTAL FROM GES_TIP_REF_DET WHERE  CODTIP||CODREF='''+EdtCodigo.Text+''' ';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSQL);
   DM1.cdsQry.Open;
   If DM1.cdsQry.FieldByName('TOTAL').AsInteger > 0 Then
   Begin
      xCantidad := '1';
   End
   Else
   Begin
      xCantidad:='0';
   End;
   DM1.cdsQry.Close;
   if xCantidad='0' Then
   begin
    xSQL := 'INSERT INTO GES_TIP_REF_DET(CODTIP,CODREF,DESREF,CODEST) VALUES (' + QuotedStr(DM1.cdsCredito.FieldByName('CODTIP').AsString) + ',' + QuotedStr(Copy(EdtCodigo.Text, 3, 2)) + ',' + QuotedStr(EdtNombre.Text) + ','+xEstado+') ';
    DM1.DCOM1.AppServer.EjecutaSql(xSQL);
   end
   else
   begin
     xSQL := 'UPDATE GES_TIP_REF_DET SET DESREF='+QuotedStr(EdtNombre.Text)+',CODEST='+xEstado+' WHERE CODTIP='+QuotedStr(DM1.cdsCredito.FieldByName('CODTIP').AsString)+'AND CODREF='+QuotedStr(Copy(EdtCodigo.Text, 3, 2));
     DM1.DCOM1.AppServer.EjecutaSql(xSQL);
   end;
// Fin HPC_201704_GESCOB : Mantenimiento de Zonas
   MstDetalles;
   pnlNuevo.Visible := False;
End;

Procedure TfParGest.BitCloseClick(Sender: TObject);
Begin
   pnlNuevo.Visible := False;
End;

Function TfParGest.GnrIdGest(xCodIni: String): String;
Var
   xSQL: String;
   xIdGest: Integer;
Begin
   xSQL := 'SELECT MAX(CODREF) CODREF FROM GES_TIP_REF_DET WHERE CODTIP=' + QuotedStr(xCodIni);
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSQL);
   DM1.cdsQry.Open;
   If Length(Trim(DM1.cdsQry.FieldByName('CODREF').AsString)) = 0 Then
      Begin
         xIdGest := 1;
      End
   Else
      Begin
         xIdGest := DM1.cdsQry.FieldByName('CODREF').AsInteger + 1;
      End;
   DM1.cdsQry.Close;
   Result := xCodIni + Format('%.2d', [xIdGest]);

End;
// Inicio HPC_201704_GESCOB : Mantenimiento de Zonas
procedure TfParGest.dtgDetDblClick(Sender: TObject);
  var xEstado:String;
begin
   pnlNuevo.Visible := True;
   EdtCodigo.Text:=DM1.cdsSolicitud.FieldByName('CODTIP').AsString+DM1.cdsSolicitud.FieldByName('CODREF').AsString;
   EdtNombre.Text:=DM1.cdsSolicitud.FieldByName('DESREF').AsString;
   if DM1.cdsSolicitud.FieldByName('CODEST').AsString='1' Then
   begin
    cbEstado.Checked:=true;
   end
   else
   begin
    cbEstado.Checked:=false;
   end;
end;
// Fin HPC_201704_GESCOB : Mantenimiento de Zonas
End.
