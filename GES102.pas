// Inicio Uso Estándares: 01/08/2011
// Unidad : Gestión de Cobranzas
// Formulario : fNivUsu
// Fecha de Creación : 08/08/2011
// Autor : JDCRUZ
// Objetivo : Control de Nivel de usuarios.
// Actualizaciones:
// HPC_201701_GESCOB: Se modifica al momento de quitar un nivel no se elimina el registro, solo se pone el nivel en nulo.
// GESCOB_201901_HPC: Reporte de Accesos al módulo
Unit GES102;

Interface

Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, Grids, Wwdbigrd, Wwdbgrid, Buttons, fcButton, fcImgBtn,
//Inicio GESCOB_201901_HPC
//Se adiciona unidades ShellApi,wwExport para exportar a Excel
   fcShapeBtn, wwdblook, StdCtrls, ExtCtrls, Mask, DBCtrls,ShellApi,wwExport;
//Fin GESCOB_201901_HPC

Type
   TfNivUsu = Class(TForm)
      dtgOfiDes: TwwDBGrid;
      dtgUsuarios: TwwDBGrid;
      BitAsignar: TButton;
      pnlNivel: TPanel;
      Shape2: TShape;
      Shape1: TShape;
      lblUser: TLabel;
      lblUserNOm: TLabel;
      Label1: TLabel;
      Label2: TLabel;
      Panel1: TPanel;
      edtDesEqpUsr: TEdit;
      dblNiveles: TwwDBLookupCombo;
      BitGraba: TfcShapeBtn;
      lblNivel: TLabel;
      dtgUserNiv: TwwDBGrid;
      BitQuitar: TButton;
      BitSalir: TBitBtn;
      BitNiv0: TButton;
      BitNiv1: TButton;
      BitNiv2: TButton;
      BitNiv3: TButton;
      cmbTipAcc: TComboBox;
      lblTipo: TLabel;
      gbOfides: TGroupBox;
      Label3: TLabel;
      Label5: TLabel;
      BitGrabaOF: TfcShapeBtn;
      Button1: TButton;
      meTel: TMaskEdit;
      Label6: TLabel;
      meFax: TMaskEdit;
      Label7: TLabel;
      lblOfdes: TLabel;
      lblofdesnom: TLabel;
      Shape3: TShape;
      Shape4: TShape;
      meDir: TMemo;
//Inicio GESCOB_201901_HPC
//Se adiciona botón y grid para exportar a Excel
    btnExcel: TBitBtn;
    dbgreporte: TwwDBGrid;
//Fin GESCOB_201901_HPC
      Procedure dtgOfiDesDblClick(Sender: TObject);
      Procedure dtgOfiDesRowChanged(Sender: TObject);
      Procedure BitSalirClick(Sender: TObject);
      Procedure BitAsignarClick(Sender: TObject);
      Procedure dblNivelesChange(Sender: TObject);
      Procedure BitGrabaClick(Sender: TObject);
      Procedure BitNiv0Click(Sender: TObject);
      Procedure BitNiv1Click(Sender: TObject);
      Procedure BitNiv2Click(Sender: TObject);
      Procedure BitNiv3Click(Sender: TObject);
      Procedure BitQuitarClick(Sender: TObject);
      Procedure FormActivate(Sender: TObject);
      Procedure Button1Click(Sender: TObject);
      Procedure BitGrabaOFClick(Sender: TObject);
//Inicio GESCOB_201901_HPC
//Se adiciona botón y grid para exportar a Excel
      procedure btnExcelClick(Sender: TObject);
//Fin GESCOB_201901_HPC
   Private
    { Private declarations }
      Procedure CargaUsers;
      Procedure CargaUsersNivel(xNivel: String);
      Procedure CargaLog(xUser: String; xTrans: Char);

   Public
    { Public declarations }
   End;

Var
   fNivUsu: TfNivUsu;

Implementation

Uses GESDM1;

{$R *.dfm}

{ TfNivUsu }

Procedure TfNivUsu.CargaUsers;
Var
   xSQL: String;
Begin
   xSQL := 'SELECT A.USERID, A.USERNOM, C.OFDESID ORIGEN FROM TGE007 A, TGE006 C WHERE GRUPOID=''GRPGESCOB'' AND C.OFDESID IS NOT NULL AND C.OFDESID=' + QuotedStr(DM1.cdsUSES.FieldByName('OFDESID').AsString) + ' AND A.USERID=C.USERID(+) AND C.FECEXP IS NULL ORDER BY A.USERNOM ';
   DM1.cdsDLabo.Close;
   DM1.cdsDLabo.DataRequest(xSQL);
   DM1.cdsDLabo.Open;

End;

Procedure TfNivUsu.dtgOfiDesDblClick(Sender: TObject);
Begin
   CargaUsers;

   gbOfides.Enabled := False;
   lblofdes.Caption := DM1.cdsUSES.FieldByName('OFDESID').AsString;
   lblofdesnom.Caption := DM1.cdsUSES.FieldByName('OFDESNOM').AsString;
   meDir.Text := DM1.cdsUSES.FieldByName('OFDESDIR').AsString;
   meTel.Text := DM1.cdsUSES.FieldByName('OFDESTEL').AsString;
   meFax.Text := DM1.cdsUSES.FieldByName('OFDESFAX').AsString;
End;

Procedure TfNivUsu.dtgOfiDesRowChanged(Sender: TObject);
Begin
   CargaUsers;
End;

Procedure TfNivUsu.BitSalirClick(Sender: TObject);
Begin
   Close;
End;

Procedure TfNivUsu.BitAsignarClick(Sender: TObject);
Var
   xSQL: String;
Begin
   lblUser.Caption := DM1.cdsDLabo.FieldByName('USERID').AsString;
   lblUserNom.Caption := DM1.cdsDLabo.FieldByName('USERNOM').AsString;
   xSQL := 'SELECT CODNIV,DESNIV FROM GES_NIV_USU ORDER BY CODNIV';
   DM1.cdsConsulta.Close;
   DM1.cdsConsulta.DataRequest(xSQL);
   DM1.cdsConsulta.Open;
   BitGraba.Enabled := True;
   pnlNivel.Enabled := True;
End;

Procedure TfNivUsu.dblNivelesChange(Sender: TObject);
Begin
   If DM1.cdsConsulta.Locate('CODNIV', VarArrayof([dblNiveles.Text]), []) Then
      Begin
         edtDesEqpUsr.Text := DM1.cdsConsulta.Fieldbyname('DESNIV').AsString;
         If (dblNiveles.Text = 'N0') Or (dblNiveles.Text = 'N1') Then
            Begin
               cmbTipAcc.Visible := True;
               lblTipo.Visible := True;
            End
         Else
            Begin
               lblTipo.Visible := True;
               cmbTipAcc.Visible := False;
            End;
      End
   Else
      Begin
         If Length(dblNiveles.Text) <> 2 Then
            Begin
               Beep;
               edtDesEqpUsr.Text := '';
            End;
      End;

End;

Procedure TfNivUsu.CargaLog(xUser: String; xTrans: Char);
Var
   xSQL: String;
Begin
   xSQL := 'INSERT INTO GES_NIV_USU_OTO_LOG SELECT USERID, USERNIV, USUAUT, FECAUT, ' + QuotedStr(DM1.wUsuario) + ',SYSDATE,' + QuotedStr(xTrans) + ' FROM GES_NIV_USU_OTO WHERE USERID=' + QuotedStr(xUser);
   DM1.DCOM1.AppServer.EjecutaSql(xSQL);
End;

Procedure TfNivUsu.CargaUsersNivel(xNivel: String);
Var
   xSQL: String;
Begin
   xSQL := 'SELECT A.USERID,A.USERNOM,A.USERNIV FROM GES_NIV_USU_OTO A, TGE006 B '
      + 'WHERE A.USERID=B.USERID(+) AND A.USERNIV=' + QuotedStr(xNivel)
      + ' AND B.OFDESID=' + QuotedStr(DM1.cdsUSES.FieldByName('OFDESID').AsString);
   DM1.cdsResol.Close;
   DM1.cdsResol.DataRequest(xSQL);
   DM1.cdsResol.Open;

End;

Procedure TfNivUsu.BitGrabaClick(Sender: TObject);
Var
   xSQL, xUser, xNomUser, xTipAct: String;
   Boton: Integer;
Begin
   If Length(Trim(dblNiveles.Text)) = 0 Then
      Begin
         MessageDlg('Debe Seleccionar Un Nivel De USUARIO !!!', mtError, [mbOk], 0);
         Exit;
      End;
   If dblNiveles.Text = 'N1' Then
      Begin
         If (Copy(cmbTipAcc.Text, 1, 2) = '01') Or (Copy(cmbTipAcc.Text, 1, 2) = '02') Then
         Else
            Begin
               MessageDlg('Debe Seleccionar Un Tipo de Gestión !!!', mtError, [mbOk], 0);
               Exit;
            End;

      End;
   Boton := Application.MessageBox('Seguro De GRABAR NIVEL DE AUTONOMIA ', 'Autonomia De Usuarios', MB_YESNO + MB_ICONQUESTION);
   If Boton = ID_YES Then
      Begin
         xUser := DM1.cdsDLabo.FieldByName('USERID').AsString;
         xNomUser := DM1.CrgDescrip('USERID=' + QuotedStr(Trim(xUser)), 'TGE006', 'USERNOM');
         If cmbTipAcc.Visible Then
            xTipAct := Copy(cmbTipAcc.Text, 1, 2)
         Else
            xTipAct := '';
//Inicio HPC_201701_GESCOB
//Se modifica al momento de quitar un nivel no se elimina el registro, solo se pone el nivel en nulo.
//         If Length(Trim(DM1.CrgDescrip('USERID=' + QuotedStr(Trim(xUser)), 'GES_NIV_USU_OTO', 'USERNIV'))) = 0 Then
           If Length(Trim(DM1.CrgDescrip('USERID=' + QuotedStr(Trim(xUser)), 'GES_NIV_USU_OTO', 'USERID'))) = 0 Then
//Final HPC_201701_GESCOB           
            Begin
               xSQL := 'INSERT INTO GES_NIV_USU_OTO(USERID, USERNIV, USUAUT, FECAUT, USERNOM, TIPACT) VALUES (' + QuotedStr(xUser) + ',' + QuotedStr(dblNiveles.Text) + ',' + QuotedStr(DM1.wUsuario) + ', SYSDATE,' + QuotedStr(xNomUser) + ',' + QuotedStr(xTipAct) + ' )  ';
            End
         Else
            Begin
               CargaLog(xUser, 'M');
               xSQL := 'UPDATE GES_NIV_USU_OTO SET USERNIV=' + QuotedStr(dblNiveles.Text) + ',TIPACT=' + QuotedStr(xTipAct) + ' WHERE USERID=' + QuotedStr(Trim(xUser));
            End;
         DM1.DCOM1.AppServer.EjecutaSql(xSQL);
         CargaUsersNivel(dblNiveles.Text);
         lblNivel.Caption := edtDesEqpUsr.Text;
         lblUser.Caption := '';
         lblUserNom.Caption := '';
         dblNiveles.Text := '';
         pnlNivel.Enabled := False;
         BitGraba.Enabled := False;
         cmbTipAcc.Visible := False;
      End;
   lblUser.Caption := '';
   lblUserNom.Caption := '';
   dblNiveles.Text := '';
   cmbTipAcc.Visible := False;
   pnlNivel.Enabled := False;
   BitGraba.Enabled := False;

End;

Procedure TfNivUsu.BitNiv0Click(Sender: TObject);
Begin
   lblNivel.Caption := BitNiv0.Caption;
   CargaUsersNivel('N0');

End;

Procedure TfNivUsu.BitNiv1Click(Sender: TObject);
Begin
   lblNivel.Caption := BitNiv1.Caption;
   CargaUsersNivel('N1');

End;

Procedure TfNivUsu.BitNiv2Click(Sender: TObject);
Begin
   lblNivel.Caption := BitNiv2.Caption;
   CargaUsersNivel('N2');

End;

Procedure TfNivUsu.BitNiv3Click(Sender: TObject);
Begin
   lblNivel.Caption := BitNiv3.Caption;
   CargaUsersNivel('N3');

End;

Procedure TfNivUsu.BitQuitarClick(Sender: TObject);
Var
   xSQL, xUser, xNivel: String;
   Boton: Integer;
Begin
   If dtgUserNiv.DataSource.DataSet.RecordCount = 0 Then Exit;
   xUser := DM1.cdsResol.FieldByName('USERID').AsString;
   xNivel := DM1.cdsResol.FieldByName('USERNIV').AsString;
   xSQL := 'SELECT USUARIO FROM GES_COB_IND WHERE USUARIO=' + QuotedStr(xUser);
   If DM1.Registros(xSQL) > 0 Then
      Begin
         MessageDlg('Imposible Realizar Esta Operación USUARIO Tiene Gestiones Pendientes !!!', mtError, [mbOk], 0);
         Exit;
      End;
   Boton := Application.MessageBox('Seguro De QUITAR NIVEL DE AUTONOMIA ', 'Autonomia De Usuarios', MB_YESNO + MB_ICONQUESTION);
   If Boton = ID_YES Then
      Begin
         CargaLog(xUser, 'B');
//INICIO HPC_201701_GESCOB
//Se modifica al momento de quitar el nivel ya no se elimina el registro, solo se pone el nivel en nulo.
       //xSQL := 'DELETE FROM GES_NIV_USU_OTO WHERE USERID=' + QuotedStr(xUser);
         xsQL := 'UPDATE GES_NIV_USU_OTO SET USERNIV=NULL WHERE USERID=' + QuotedStr(xUser);
//FINAL HPC_201701_GESCOB         
         DM1.DCOM1.AppServer.EjecutaSql(xSQL);
         CargaUsersNivel(xNivel);
      End;

End;

Procedure TfNivUsu.FormActivate(Sender: TObject);
Begin
   CargaUsers;
   CargaUsersNivel('XX');
End;

Procedure TfNivUsu.Button1Click(Sender: TObject);
Begin
   lblofdes.Caption := DM1.cdsUSES.FieldByName('OFDESID').AsString;
   lblofdesnom.Caption := DM1.cdsUSES.FieldByName('OFDESNOM').AsString;
   meDir.Text := DM1.cdsUSES.FieldByName('OFDESDIR').AsString;
   meTel.Text := DM1.cdsUSES.FieldByName('OFDESTEL').AsString;
   meFax.Text := DM1.cdsUSES.FieldByName('OFDESFAX').AsString;
   gbOfides.Enabled := True;
   BitGrabaOF.Enabled := True;
End;

Procedure TfNivUsu.BitGrabaOFClick(Sender: TObject);
Var
   Boton: Integer;
   xSQL: String;
Begin
   Boton := Application.MessageBox('Seguro De GRABAR DATOS ', 'Datos de Ofides', MB_YESNO + MB_ICONQUESTION);
   If Boton = ID_YES Then
      Begin
         xSQL := 'UPDATE APO110 '
            + 'SET OFDESDIR=' + QuotedStr(Trim(meDir.Text)) + ', '
            + 'OFDESTEL=' + QuotedStr(Trim(meTel.Text)) + ', '
            + 'OFDESFAX=' + QuotedStr(Trim(meFax.Text))
            + ' WHERE OFDESID=' + QuotedStr(Trim(lblOfdes.Caption));
         DM1.DCOM1.AppServer.EjecutaSql(xSQL);
         gbOfides.Enabled := False;

         If DM1.cdsUSES.FieldByName('OFDESID').AsString <> Trim(lblOfdes.Caption) Then
            Begin
               DM1.cdsUSES.First;
               While Not DM1.cdsUSES.Eof Do
                  Begin
                     If DM1.cdsUSES.FieldByName('OFDESID').AsString = Trim(lblOfdes.Caption) Then
                        Break;
                     DM1.cdsUSES.Next;
                  End;
            End;
         If DM1.cdsUSES.FieldByName('OFDESID').AsString = Trim(lblOfdes.Caption) Then
            Begin
               DM1.cdsUSES.Edit;
               DM1.cdsUSES.FieldByName('OFDESDIR').AsString := meDir.Text;
               DM1.cdsUSES.FieldByName('OFDESTEL').AsString := meTel.Text;
               DM1.cdsUSES.FieldByName('OFDESFAX').AsString := meFax.Text;
               DM1.cdsUSES.Post;
            End;
      End;
End;

//Inicio GESCOB_201901_HPC
//Reporte de Accesos al módulo
procedure TfNivUsu.btnExcelClick(Sender: TObject);
   Var xSql, xArchivo: String;
begin
   xSql := 'SELECT CASE WHEN E.CCOSDES IS NULL THEN ''NO IDENTIFICADO'' ELSE E.CCOSDES END DESC_AREA,'
   +' A.USERID CODIGO_USUARIO, A.USERNOM NOMBRE_USUARIO, A.NIVEL, B.OFDESNOM DESC_OFICINA, A.AREA, C.FECINI_PWD INICIO_VIGENCIA, C.FECFIN_PWD FIN_VIGENCIA'
   +' FROM USERTABLE A, APO110 B, TGE006 C, PLANI201 D, TGE203 E'
   +' WHERE  A.ORIGEN=B.OFDESID AND EXISTS'
   +' (SELECT USERID,GRUPOID FROM TGE007 WHERE A.USERID=USERID AND GRUPOID = ''GRPGESCOB'')'
   +' AND  A.NIVEL IS NOT NULL  AND A.USERID=C.USERID  AND C.FECEXP IS NULL'
   +' AND C.TRABID = D.TRABID(+) AND D.CCOSID = E.CCOSID(+) ORDER BY CODIGO_USUARIO';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSql);
   DM1.cdsQry.Open;

   xArchivo := 'Control_Acceso';
   If FileExists(xArchivo+'.slk') Then
      DeleteFile(xArchivo+'.slk');

   dbgreporte.ExportOptions.ExportType :=  wwgetSYLK;
   dbgreporte.ExportOptions.FileName := 'Control_Acceso.slk';
   DM1.OpcionesExportExcel(dbgreporte.ExportOptions);
   dbgreporte.ExportOptions.TitleName := 'TotalDocentesAsignadosPorGestor';
   dbgreporte.ExportOptions.Save;
   ShellExecute(Handle, 'Open', PChar(dbgreporte.exportoptions.Filename), Nil, Nil, sw_shownormal);
end;
//Fin GESCOB_201901_HPC
End.

