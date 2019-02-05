// Inicio Uso Estándares: 01/08/2011
// Unidad : Gestión de Cobranzas
// Formulario : FCtrlAcceso
// Fecha de Creación :
// Autor : Equipo de Sistemas
// Objetivo : Control de Acceso
// Actualizaciones:
Unit GES002;

Interface

Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, Buttons, Mask, wwdbedit, Qt;

Type
   TFCtrlAcceso = Class(TForm)
      gbControlAcceso : TGroupBox;
      lblUsuario : TLabel;
      lblContrasena : TLabel;
      dbePassword : TwwDBEdit;
      dbeUsuario : TwwDBEdit;
      bbtnOkIngreso : TBitBtn;
      bbtnCancelaIngreso : TBitBtn;
      Label1 : TLabel;
      Label2 : TLabel;
      Procedure bbtnOkIngresoClick(Sender : TObject);
      Procedure FormShow(Sender : TObject);
      Procedure FormKeyPress(Sender : TObject; Var Key : Char);
      Procedure dbePasswordKeyDown(Sender : TObject; Var Key : Word;
         Shift : TShiftState);
   Private
    { Private declarations }
      xVez : integer;
   Public
      wBD : String;
    { Public declarations }
   End;

Var
   FCtrlAcceso : TFCtrlAcceso;
   xSQL : String;

Implementation

Uses GESDM1, GES001, GES003, Math;

{$R *.dfm}

Procedure TFCtrlAcceso.bbtnOkIngresoClick(Sender : TObject);
Var
   xfecfin : TDate;
   xdiasexppass : Integer;
   xdiasfaltantes : Integer;
   xpassact, xctrl_ip, xingresa : String;
   xMsgCaduco : String;
Begin
   Screen.Cursor := crHourGlass;
   DM1.wUsuario := dbeUsuario.Text;
   DM1.wModulo := 'GES';

// Obtiene IP del cliente
   Try
      DM1.cIP := DM1.ObtenerIpdeNetbios(DM1.computerName);
   Except
      Screen.Cursor := crDefault;
      ShowMessage('ERROR de Conexión.');
      ModalResult := mrCancel;
      Exit;
   End;

// Usuario se conecta a la base de datos
   xVez := xVez + 1;
   Try
      xIngresa := DM1.DCOM1.AppServer.Conectate(DM1.wModulo, dbeUsuario.Text, dbePassword.Text);
      If xIngresa = 'error' Then
      Begin
         Screen.Cursor := crDefault;
         Showmessage('Usuario y/o contraseña no reconocido por la Base de Datos');
         If xVez < 3 Then
            dbeUsuario.SetFocus
         Else
            Close;
         exit; // para uqe no cierre la pantalla //ModalResult := mrCancel;
      End
      Else
      Begin
         If Not DM1.DCOM1.Connected Then
            DM1.DCOM1.Connected := True;
         DM1.wPWDAnt := dbePassword.text;
      End;
   Except
      Screen.Cursor := crDefault;
      Showmessage('Usuario y/o contraseña no reconocido por la Base de Datos');
      ModalResult := mrCancel;
      Exit;
   End;
// busca en tabla DE USUARIO (TGE006) para determinar que es un usuario de base de datos
   xSQL := 'select FECEXP, OFDESID, nvl(CTRL_IP,''S'') CTRL_IP, '
      + '       TO_DATE(nvl(FECINI_PWD,sysdate-30)) FECINI_PWD, '
      + '       TO_DATE(nvl(FECFIN_PWD, sysdate-1)) FECFIN_PWD, '
      + '       nvl(DIASEXP_PWD,7) DIASEXP_PWD,'
      + '       nvl(DIASDURAC_PWD,30) DIASDURAC_PWD '
      + 'from TGE006 '
      + 'where USERID = ' + QuotedStr(DM1.wUsuario);
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSql);
   DM1.cdsQry.Open;
   If DM1.cdsQry.RecordCount = 0 Then
   Begin
      Screen.Cursor := crDefault;
      Showmessage('Usuario no reconocido para el uso de Aplicaciones');
      ModalResult := mrCancel;
      Exit;
   End;

// valida que contraseña en control de aplicaciones (TGE006), no haya expirado
   If (DM1.cdsQry.FieldByName('FECEXP').AsDateTime > 0) And
      (DM1.cdsQry.FieldByName('FECEXP').AsDateTime < Date) Then
   Begin
      Screen.Cursor := crDefault;
      Showmessage('Usuario ha caducado para el uso de Aplicaciones');
      ModalResult := mrCancel;
      Exit;
   End;
   xfecfin := DM1.cdsQry.FieldByName('FECFIN_PWD').AsDateTime;
   xdiasexppass := DM1.cdsQry.FieldByName('DIASEXP_PWD').AsInteger;
   xpassact := dbePassword.Text;
   DM1.xOfiDes := DM1.cdsQry.FieldByName('OFDESID').AsString;
   xctrl_ip := DM1.cdsQry.FieldByName('CTRL_IP').AsString;
   DM1.widepc := DM1.computerName;

// determina que el usuario tenga acceso al módulo
// busca en tabla TGE006 para determinar que es un usuario de base de datos y de la aplicación
   xSQL := 'Select USUARIOS.USERID, USUARIOS.USERNOM, USUARIOGRUPO.GRUPOID, '
      + '       GRUPOS.GRUPODES, GRUPOS.GRUPOADM, ACCESOGRUPO.MODULOID, '
      + '       ACCESOGRUPO.TIPO, ACCESOGRUPO.OBJETO, ACCESOGRUPO.FORMA '
      + 'From TGE006 USUARIOS, TGE007 USUARIOGRUPO, TGE003 GRUPOS, TGE001 ACCESOGRUPO '
      + 'where USUARIOS.USERID=' + quotedstr(DM1.wUsuario) // -- TGE006 USUARIOS
      + '  and USUARIOGRUPO.USERID=USUARIOS.USERID' // -- TGE007 USUARIOGRUPO
      + '  and GRUPOS.GRUPOID=USUARIOGRUPO.GRUPOID' // -- TGE003 GRUPOS
      + '  and ACCESOGRUPO.GRUPOID=USUARIOGRUPO.GRUPOID '
      + '  and ACCESOGRUPO.MODULOID=' + quotedstr(DM1.wModulo)
      + '  and ACCESOGRUPO.TIPO=''0'' '; // TGE001 ACCESOGRUPO
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSQL);
   DM1.cdsQry.Open;

   If DM1.cdsQry.RecordCount = 0 Then
   Begin
      Screen.Cursor := crDefault;
      ShowMessage('No tiene Acceso al módulo');
      ModalResult := mrCancel;
      Exit;
   End;

// Identifica si el usuario puede ejecutar los sistemas de cualquier maquina
// o solo de las máquina que se le han asignado
   xingresa := 'N';
   If xctrl_ip = 'S' Then
   Begin
      xSQL := 'SELECT IP_ASIGNADO FROM TGE010 WHERE USERID = ' + QuotedStr(DM1.wUsuario);
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest(xSQL);
      DM1.cdsQry.Open;
      While Not DM1.cdsQry.Eof Do
      Begin
         If DM1.cdsQry.FieldByName('IP_ASIGNADO').AsString = DM1.cIP Then xingresa := 'S';
         DM1.cdsQry.Next;
      End;
   End;
   If (xingresa = 'N') And (xctrl_ip = 'S') Then
   Begin
      Screen.Cursor := crDefault;
      Showmessage('Usuario no autorizado para ingresar de este equipo');
      ModalResult := mrCancel;
      Exit;
   End;

// DETERMINA NRO DE IDENTIFICADOR PARA GRABAR EN ARCHIVO LOG DE ACCESOS
// SE DETERMINA EN BASE A LA FECHA+HORA DE INGRESO A LA BASE DE DATOS
   xSQL := 'SELECT TO_CHAR(SYSDATE,''YYYYMMDDHH24MISS'') IDE, SYSDATE FECHORCON FROM DUAL';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSQL);
   DM1.cdsQry.Open;
   DM1.ideconex := DM1.cdsQry.FieldByName('IDE').AsString;
   DM1.fechorcon := DM1.cdsQry.FieldByName('FECHORCON').AsString;

// ENVIA PARAMETROS DE LA PC DEL USUARIO HACIA LA APLICACION SERVIDOR
   DM1.DCOM1.AppServer.ConexionON(DM1.wUsuario, DM1.cIP, DM1.wModulo, DM1.ideconex, DM1.fechorcon, DM1.widepc);

// controla caducidad de contraseña
   xSQL := 'SELECT TO_DATE(' + QuotedStr(DateToStr(xfecfin)) + ') - TO_DATE(SYSDATE) DIASFALTANTE FROM DUAL';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSQL);
   DM1.cdsQry.Open;

   xdiasfaltantes := DM1.cdsQry.FieldByName('DIASFALTANTE').AsInteger; // dias que faltan
   If xdiasfaltantes <= xdiasexppass Then
   Begin
      If xdiasfaltantes <= 0 Then
         xMsgCaduco := 'SU CONTRASEÑA HA CADUCADO, DEBE CAMBIARLA AHORA'
      Else
         If xdiasfaltantes = 1 Then
            xMsgCaduco := '!!! FALTA 1 DíA PARA EL VENCIMIENTO DE SU CONTRASEÑA ¡¡¡' + chr(13)
               + '            SE SUGIERE CAMBIARLA AHORA                  '
         Else
            xMsgCaduco := '!!! FALTAN ' + IntToStr(xdiasfaltantes) + ' DÍAS PARA EL VENCIMIENTO DE SU CONTRASEÑA ¡¡¡' + chr(13)
               + '            SE SUGIERE CAMBIARLA AHORA                  ';

      Screen.Cursor := crDefault;
      MessageDlg(xMsgCaduco, mtInformation, [mbOk], 0);
      FCambioContrasena := TFCambioContrasena.create(self);
      Try
         FCambioContrasena.ShowModal;
      Finally
         FCambioContrasena.Free;
      End;
   End;
   If xdiasfaltantes <= 0 Then
   Begin
      Screen.Cursor := crDefault;
      ModalResult := mrCancel;
      Exit;
   End;
   Screen.Cursor := crDefault;
   ModalResult := mrOk;
End;

Procedure TFCtrlAcceso.FormShow(Sender : TObject);
Begin
   dbeUsuario.SetFocus;
End;

Procedure TFCtrlAcceso.FormKeyPress(Sender : TObject; Var Key : Char);
Begin
   If Key = #13 Then
   Begin
      Key := #0;
      Perform(WM_NEXTDLGCTL, 0, 0);
   End;
End;

Procedure TFCtrlAcceso.dbePasswordKeyDown(Sender : TObject; Var Key : Word;
   Shift : TShiftState);
Begin
   If Key = 13 Then
      bbtnOkIngreso.OnClick(bbtnOkIngreso);
End;

End.

