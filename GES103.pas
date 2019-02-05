// Inicio Uso Estándares: 01/08/2011
// Unidad : Gestión de Cobranzas
// Formulario : fMatrizGestCob
// Fecha de Creación :
// Autor : Equipo de Sistemas
// Objetivo : habilitar gestores
// Actualizaciones:
// HPC_201402_GESCOB :  Re-Definicion de la emision de cartas a deudores (1.7)
// SPP_201402_GESCOB : Se realiza el pase a producción a partir del HPC_201402_GESCOB

Unit GES103;

Interface

Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, Buttons, Grids, Wwdbigrd, Wwdbgrid, DB, DBClient, ppCtrls, ppBands, ppPrnabl, ppClass, ppVar, ppCache, ppProd, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ExtCtrls, ppStrtch, ppSubRpt, ppDBBDE, ppParameter,
   fcButton, fcImgBtn, fcShapeBtn;
Type
   TfMatrizGestCob = Class(TForm)
      dtgGestInt: TwwDBGrid;
      dtgGestExt: TwwDBGrid;
      BitSalir: TBitBtn;
      Label1: TLabel;
      Label2: TLabel;
      dtgGestExtIButton: TwwIButton;
      pnlNuevo: TPanel;
      BitGraba: TfcShapeBtn;
      EdtNombre: TEdit;
      Label3: TLabel;
      Label4: TLabel;
      BitClose: TfcShapeBtn;
      stText: TStaticText;
      Panel1: TPanel;
      EdtCodigo: TEdit;
      rdbSeleccion: TRadioGroup;
      // INICIO : SPP_201402_GESCOB
      pnlGesInt: TPanel;
      Label6: TLabel;
      btnGesIntGrabar: TfcShapeBtn;
      edGesIntTelefonoContacto: TEdit;
      btnGesIntSalir: TfcShapeBtn;
      StaticText1: TStaticText;
      chbxGesIntActivo: TCheckBox;
      // FIN : SPP_201402_GESCOB
      Procedure BitSalirClick(Sender: TObject);
      Procedure FormCreate(Sender: TObject);
      Procedure dtgGestExtIButtonClick(Sender: TObject);
      Procedure BitGrabaClick(Sender: TObject);
      Procedure BitCloseClick(Sender: TObject);
      Function GnrIdExt: String;
      Procedure dtgGestIntDblClick(Sender: TObject);
      Procedure dtgGestIntDrawDataCell(Sender: TObject; Const Rect: TRect;
         Field: TField; State: TGridDrawState);
      Procedure dtgGestExtDblClick(Sender: TObject);
      Procedure dtgGestExtDrawDataCell(Sender: TObject; Const Rect: TRect;
         Field: TField; State: TGridDrawState);
      Procedure rdbSeleccionClick(Sender: TObject);
      // INICIO : SPP_201402_GESCOB
      procedure btnGesIntSalirClick(Sender: TObject);
      procedure btnGesIntGrabarClick(Sender: TObject);
      // FIN : SPP_201402_GESCOB 
   Private
    { Private declarations }
   Public
    { Public declarations }
   End;

Var
   fMatrizGestCob: TfMatrizGestCob;

Implementation

Uses GESDM1;

{$R *.dfm}

Procedure TfMatrizGestCob.BitSalirClick(Sender: TObject);
Begin
   Close;
End;

Procedure TfMatrizGestCob.FormCreate(Sender: TObject);
Begin
   dtgGestInt.SetControlType('REGACT', fctCheckBox, 'S;N');
   dtgGestExt.SetControlType('REGACT', fctCheckBox, 'S;N');
End;

Procedure TfMatrizGestCob.dtgGestExtIButtonClick(Sender: TObject);
Begin
   pnlNuevo.Visible := True;
   EdtNombre.Text := '';
   EdtCodigo.Text := GnrIdExt;
End;

Procedure TfMatrizGestCob.BitGrabaClick(Sender: TObject);
Var
   xSQL, xTipAct: String;
Begin
   If Length(Trim(EdtNombre.Text)) = 0 Then
      Begin
         MessageDlg('No Se Ingresado El Nombre De La Entidad Externa!!!', mtError, [mbOk], 0);
         Exit;
      End;

   If rdbSeleccion.ItemIndex = 0 Then
      Begin
         xTipAct := '01';
         xSQL := 'INSERT INTO GES_TIP_USU_EXT(IDENTEXT,DESENTEXT,REGACT,USUARIO,HREG,TIPACT) VALUES (' + QuotedStr(EdtCodigo.Text) + ',' + QuotedStr(EdtNombre.Text) + ',' + QuotedStr('N') + ',' + QuotedStr(DM1.wUsuario) + ',SYSDATE, ''' + xTipAct + ''')';
         DM1.DCOM1.AppServer.EjecutaSql(xSQL);
         xSQL := 'SELECT IDENTEXT,DESENTEXT,NVL(REGACT,''N'') REGACT FROM GES_TIP_USU_EXT where TIPACT=''01'' order by IDENTEXT';
         DM1.cdsDocPago.Close;
         DM1.cdsDocPago.DataRequest(xSQL);
         DM1.cdsDocPago.Open;
      End;
   If rdbSeleccion.ItemIndex = 1 Then
      Begin
         xTipAct := '02';
         xSQL := 'INSERT INTO GES_TIP_USU_EXT(IDENTEXT,DESENTEXT,REGACT,USUARIO,HREG,TIPACT) VALUES (' + QuotedStr(EdtCodigo.Text) + ',' + QuotedStr(EdtNombre.Text) + ',' + QuotedStr('N') + ',' + QuotedStr(DM1.wUsuario) + ',SYSDATE, ''' + xTipAct + ''')';
         DM1.DCOM1.AppServer.EjecutaSql(xSQL);
         xSQL := 'SELECT IDENTEXT,DESENTEXT,NVL(REGACT,''N'') REGACT FROM GES_TIP_USU_EXT where TIPACT=''02'' order by IDENTEXT';
         DM1.cdsDocPago.Close;
         DM1.cdsDocPago.DataRequest(xSQL);
         DM1.cdsDocPago.Open;
      End;

   pnlNuevo.Visible := False;
End;

Procedure TfMatrizGestCob.BitCloseClick(Sender: TObject);
Begin
   pnlNuevo.Visible := False;
End;

Function TfMatrizGestCob.GnrIdExt: String;
Var
   xSQL: String;
   xIdExt: Integer;
Begin
   xSQL := 'SELECT MAX(IDENTEXT) IDCALEXT FROM GES_TIP_USU_EXT';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSQL);
   DM1.cdsQry.Open;
   If Length(Trim(DM1.cdsQry.FieldByName('IDCALEXT').AsString)) = 0 Then
      Begin
         xIdExt := 1;
      End
   Else
      Begin
         xIdExt := DM1.cdsQry.FieldByName('IDCALEXT').AsInteger + 1;
      End;
   DM1.cdsQry.Close;
   Result := Format('%.5d', [xIdExt]);

End;

// INICIO : SPP_201402_GESCOB
Procedure TfMatrizGestCob.dtgGestIntDblClick(Sender: TObject);
{Var
   xRegistro: TBookmark;
   xSQL, xTipAct: String;}
Begin
 {  xRegistro := DM1.cdsDLabo.GetBookmark;
   If DM1.cdsDLabo.FieldByName('REGACT').AsString = 'S' Then
      Begin
         xSQL := 'UPDATE GES_NIV_USU_OTO SET REGACT=''N'' WHERE USERID=' + QuotedStr(DM1.cdsDLabo.FieldByName('USERID').AsString);
      End
   Else
      Begin
         xSQL := 'UPDATE GES_NIV_USU_OTO SET REGACT=''S'' WHERE USERID=' + QuotedStr(DM1.cdsDLabo.FieldByName('USERID').AsString);
      End;
   DM1.DCOM1.AppServer.EjecutaSql(xSQL);

   If rdbSeleccion.ItemIndex = 0 Then xTipAct := '01';
   If rdbSeleccion.ItemIndex = 1 Then xTipAct := '02';
   xSQL := 'SELECT USERNIV,A.USERID,B.USERNOM,NVL(REGACT,''N'') REGACT FROM GES_NIV_USU_OTO A,TGE006 B WHERE A.USERID=B.USERID AND TIPACT=' + QuotedStr(xTipAct);
   DM1.cdsDLabo.Close;
   DM1.cdsDLabo.DataRequest(xSQL);
   DM1.cdsDLabo.Open;
   DM1.cdsDLabo.GotoBookmark(xRegistro);  }

   chbxGesIntActivo.Checked := (DM1.cdsDLabo.FieldByName('REGACT').AsString = 'S');
   edGesIntTelefonoContacto.Text := DM1.cdsDLabo.FieldByName('TELEFONO').AsString;
   pnlGesInt.Visible := true;
   edGesIntTelefonoContacto.SetFocus;
End;
// FIN : SPP_201402_GESCOB

Procedure TfMatrizGestCob.dtgGestIntDrawDataCell(Sender: TObject;
   Const Rect: TRect; Field: TField; State: TGridDrawState);
Begin
   If DM1.cdsDLabo.FieldByName('REGACT').AsString = 'S' Then
      Begin
         dtgGestInt.Canvas.Font.Color := clRed;
         dtgGestInt.DefaultDrawDataCell(rect, Field, State);
      End;
End;

Procedure TfMatrizGestCob.dtgGestExtDblClick(Sender: TObject);
Var
   xRegistro: TBookmark;
   xSQL: String;
Begin
   xRegistro := DM1.cdsDocPago.GetBookmark;
   If DM1.cdsDocPago.FieldByName('REGACT').AsString = 'S' Then
      Begin
         xSQL := 'UPDATE GES_TIP_USU_EXT SET REGACT=''N'' WHERE IDENTEXT=' + QuotedStr(DM1.cdsDocPago.FieldByName('IDENTEXT').AsString);
      End
   Else
      Begin
         xSQL := 'UPDATE GES_TIP_USU_EXT SET REGACT=''S'' WHERE IDENTEXT=' + QuotedStr(DM1.cdsDocPago.FieldByName('IDENTEXT').AsString);
      End;
   DM1.DCOM1.AppServer.EjecutaSql(xSQL);

   If rdbSeleccion.ItemIndex = 0 Then
      Begin
         xSQL := 'SELECT IDENTEXT,DESENTEXT,NVL(REGACT,''N'') REGACT FROM GES_TIP_USU_EXT where TIPACT=''01'' order by IDENTEXT';
         DM1.cdsDocPago.Close;
         DM1.cdsDocPago.DataRequest(xSQL);
         DM1.cdsDocPago.Open;
      End;
   If rdbSeleccion.ItemIndex = 1 Then
      Begin
         xSQL := 'SELECT IDENTEXT,DESENTEXT,NVL(REGACT,''N'') REGACT FROM GES_TIP_USU_EXT where TIPACT=''02'' order by IDENTEXT';
         DM1.cdsDocPago.Close;
         DM1.cdsDocPago.DataRequest(xSQL);
         DM1.cdsDocPago.Open;
      End;

   DM1.cdsDocPago.GotoBookmark(xRegistro);
End;

Procedure TfMatrizGestCob.dtgGestExtDrawDataCell(Sender: TObject;
   Const Rect: TRect; Field: TField; State: TGridDrawState);
Begin
   If DM1.cdsDocPago.FieldByName('REGACT').AsString = 'S' Then
      Begin
         dtgGestExt.Canvas.Font.Color := clRed;
         dtgGestExt.DefaultDrawDataCell(rect, Field, State);
      End;

End;

// INICIO : SPP_201402_GESCOB
Procedure TfMatrizGestCob.rdbSeleccionClick(Sender: TObject);
Var
   xSQL: String;
Begin
   If rdbSeleccion.ItemIndex = 0 Then
      Begin
         xSQL := 'SELECT USERNIV,A.USERID,B.USERNOM,NVL(REGACT,''N'') REGACT, A.TELEFONO FROM GES_NIV_USU_OTO A,TGE006 B WHERE A.USERID=B.USERID AND TIPACT=''01'' order by A.USERID';
         DM1.cdsDLabo.Close;
         DM1.cdsDLabo.DataRequest(xSQL);
         DM1.cdsDLabo.Open;
      End;
   If rdbSeleccion.ItemIndex = 1 Then
      Begin
         xSQL := 'SELECT USERNIV,A.USERID,B.USERNOM,NVL(REGACT,''N'') REGACT, A.TELEFONO FROM GES_NIV_USU_OTO A,TGE006 B WHERE A.USERID=B.USERID AND TIPACT=''02'' order by A.USERID';
         DM1.cdsDLabo.Close;
         DM1.cdsDLabo.DataRequest(xSQL);
         DM1.cdsDLabo.Open;
      End;

   If rdbSeleccion.ItemIndex = 0 Then
      Begin
         xSQL := 'SELECT IDENTEXT,DESENTEXT,NVL(REGACT,''N'') REGACT FROM GES_TIP_USU_EXT where TIPACT=''01'' order by IDENTEXT';
         DM1.cdsDocPago.Close;
         DM1.cdsDocPago.DataRequest(xSQL);
         DM1.cdsDocPago.Open;
      End;
   If rdbSeleccion.ItemIndex = 1 Then
      Begin
         xSQL := 'SELECT IDENTEXT,DESENTEXT,NVL(REGACT,''N'') REGACT FROM GES_TIP_USU_EXT where TIPACT=''02'' order by IDENTEXT';
         DM1.cdsDocPago.Close;
         DM1.cdsDocPago.DataRequest(xSQL);
         DM1.cdsDocPago.Open;
      End;
End;
// FIN : SPP_201402_GESCOB
(******************************************************************************)

// INICIO : SPP_201402_GESCOB
procedure TfMatrizGestCob.btnGesIntSalirClick(Sender: TObject);
begin
  pnlGesInt.Visible := false;
end;
(******************************************************************************)

procedure TfMatrizGestCob.btnGesIntGrabarClick(Sender: TObject);
Var
   xbmRegistro: TBookmark;
   xsSQL : String;
begin
   xbmRegistro := DM1.cdsDLabo.GetBookmark;
   xsSQL := 'UPDATE GES_NIV_USU_OTO '
          + '   SET REGACT = CASE WHEN ' + BoolToStr(chbxGesIntActivo.Checked) + ' = -1 THEN ''S'' ELSE ''N'' END '
          + '      ,TELEFONO = ' + QuotedStr(edGesIntTelefonoContacto.Text)
          + ' WHERE USERID = ' + QuotedStr(DM1.cdsDLabo.FieldByName('USERID').AsString);
   DM1.DCOM1.AppServer.EjecutaSql(xsSQL);
   rdbSeleccionClick(rdbSeleccion);
   DM1.cdsDLabo.GotoBookmark(xbmRegistro);
   pnlGesInt.Visible := false;
end;
(******************************************************************************)

// FIN : SPP_201402_GESCOB
End.

