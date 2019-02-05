Unit FSQL;

Interface

Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, Buttons, ExtCtrls, Grids, Wwdbigrd, Wwdbgrid, wwExport, shellapi;

Type
   TFRMSQL = Class(TForm)
      dbgPrincipal : TwwDBGrid;
      pnlControles : TPanel;
      btnExportar : TBitBtn;
      btnSalir : TBitBtn;
      btnEjecutar : TButton;
      txtSQL : TMemo;
      btnConsultar : TButton;
      btnCommit : TButton;
      btnRollback : TButton;
      btnIniTransaccion : TButton;
      Procedure btnExportarClick(Sender : TObject);
      Procedure btnEjecutarClick(Sender : TObject);
      Procedure btnConsultarClick(Sender : TObject);
      Procedure btnSalirClick(Sender : TObject);
      Procedure btnRollbackClick(Sender : TObject);
      Procedure btnCommitClick(Sender : TObject);
      Procedure btnIniTransaccionClick(Sender : TObject);
      Procedure FormShow(Sender : TObject);
      Procedure FormClose(Sender : TObject; Var Action : TCloseAction);
   Private
    { Private declarations }
   Public
    { Public declarations }
   End;

Var
   FRMSQL : TFRMSQL;

Implementation

Uses GESDM1;

{$R *.dfm}

Procedure TFRMSQL.btnExportarClick(Sender : TObject);
Begin
   Screen.Cursor := crHourGlass;
   Try
      With dbgPrincipal, dbgPrincipal.ExportOptions Do
      Begin
         ExportType := wwgetSYLK;
         FileName := 'PRUEBA.slk';
         DM1.OpcionesExportExcel(dbgPrincipal.ExportOptions);
         dbgPrincipal.ExportOptions.TitleName := 'PRUEBA';
         Save;
         If Not (esoClipboard In Options) Then
            ShellExecute(Handle, 'Open', PChar(dbgPrincipal.exportoptions.Filename), Nil, Nil, sw_shownormal);
      End;
      Screen.Cursor := crDefault;
   Except
      Screen.Cursor := crDefault;
      MessageDlg('No se puede grabar el Archivo ' + chr(13) + 'Cierre todos los Archivos en Excel y vuelva a intentarlo', mtWarning, [mbOk], 0);
   End;

End;

Procedure TFRMSQL.btnIniTransaccionClick(Sender : TObject);
Begin
   btnIniTransaccion.Tag := 1;
   btnIniTransaccion.Enabled := false;
   btnCommit.Enabled := true;
   btnRollback.Enabled := true;

   DM1.DCOM1.AppServer.iniciatransaccion;
   MessageDlg('Se inicio el control de Transacciones!', mtInformation, [mbOk], 0);
End;

Procedure TFRMSQL.btnEjecutarClick(Sender : TObject);
Var
   xsSQL : String;
Begin
   If (btnIniTransaccion.Tag = 0) Then
      If Not (MessageDlg('Confirma que desea ejecutar el Script "SIN CONTROL DE TRANSACCIONES" ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) Then
         Exit;
   Screen.Cursor := crHourGlass;
   xsSQL := txtSQL.Text;
   DM1.DCOM1.AppServer.EjecutaSql(xsSQL);
   Screen.Cursor := crDefault;
   MessageDlg('Operacion terminada!', mtInformation, [mbOk], 0);
End;

Procedure TFRMSQL.btnConsultarClick(Sender : TObject);
Var
   xsSQL : String;
Begin
   Screen.Cursor := crHourGlass;
   xsSQL := txtSQL.Text;
   DM1.cdsQry1.Close;
   DM1.cdsQry1.DataRequest(xsSQL);
   DM1.cdsQry1.Open;
   dbgPrincipal.DataSource := DM1.dsQry1;
   Screen.Cursor := crDefault;
   MessageDlg('Consulta terminada!', mtInformation, [mbOk], 0);
End;

Procedure TFRMSQL.btnSalirClick(Sender : TObject);
Begin
   close;
End;

Procedure TFRMSQL.btnCommitClick(Sender : TObject);
Begin
   btnIniTransaccion.Tag := 0;
   btnIniTransaccion.Enabled := true;
   btnCommit.Enabled := false;
   btnRollback.Enabled := false;

   DM1.DCOM1.AppServer.GrabaTransaccion;
   MessageDlg('Commit!', mtInformation, [mbOk], 0);
End;

Procedure TFRMSQL.btnRollbackClick(Sender : TObject);
Begin
   If (btnIniTransaccion.Tag = 1) Then
   Begin
      btnIniTransaccion.Tag := 0;
      btnIniTransaccion.Enabled := true;
      btnCommit.Enabled := false;
      btnRollback.Enabled := false;

      DM1.DCOM1.AppServer.RetornaTransaccion;
      MessageDlg('Rollbak!', mtInformation, [mbOk], 0);
   End;
End;

Procedure TFRMSQL.FormShow(Sender : TObject);
Begin
   btnIniTransaccion.Tag := 0;
   btnIniTransaccion.Enabled := true;
   btnEjecutar.Enabled := true;
   btnConsultar.Enabled := true;
   btnCommit.Enabled := false;
   btnRollback.Enabled := false;
End;

Procedure TFRMSQL.FormClose(Sender : TObject; Var Action : TCloseAction);
Begin
   self.btnRollbackClick(self.btnRollback);
   Action := caFree;
End;

End.

