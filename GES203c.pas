// Inicio Uso Estándares: 01/08/2011
// Unidad : Gestión de Cobranzas
// Formulario : fMasDatos
// Fecha de Creación :
// Autor : Equipo de Sistemas
// Objetivo : Contactabilidad
// Actualizaciones:
// HPC_201402_GESCOB     :  Información de Contactabilidad (Direcciones, teléfonos y correos electrónicos) (1.9)
// SPP_201402_GESCOB : Se realiza el pase a producción a partir del HPC_201402_GESCOB

Unit GES203c;

Interface

Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, Buttons, Grids, Wwdbigrd, Wwdbgrid, DB, DBClient, ppCtrls, ppBands, ppPrnabl, ppClass, ppVar, ppCache, ppProd, ppReport, ppDB, ppComm, ppRelatv, ppDBPipe, IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, IdFTP, ExtCtrls,
   wwdblook;

Type
   TfMasDatos = Class(TForm)
   // INICIO : SPP_201402_GESCOB
      BitSalir: TBitBtn;
      Panel1: TPanel;
      Label10: TLabel;
      Panel2: TPanel;
      Label1: TLabel;
      Panel3: TPanel;
      Label2: TLabel;
      dtgTelef: TwwDBGrid;
    dtgTelefonoIButton: TwwIButton;
      dtgDirecc: TwwDBGrid;
    dtgDireccionIButton: TwwIButton;
    BitActivarTelefono: TBitBtn;
    BitActivarDireccion: TBitBtn;
    bitActivarCorreo: TBitBtn;
    dtgCorreos: TwwDBGrid;
    dtgCorreoIButton: TwwIButton;
      //Procedure BitSalirClick(Sender: TObject);
      //Procedure dtgTelefIButtonClick(Sender: TObject);
      //Procedure dtgDireccButtonClick(Sender: TObject);
      //Procedure FormCreate(Sender: TObject);
      //Procedure chkSolActClick(Sender: TObject);
      //Procedure BitActivarTelefonoClick(Sender: TObject);
      //Procedure dtgTelefRowChanged(Sender: TObject);
      //Procedure dtgTelefCellChanged(Sender: TObject);
      //Procedure ChkSolAcClick(Sender: TObject);
      //Procedure BitActivarDireccionClick(Sender: TObject);
      //Procedure dtgDireccCellChanged(Sender: TObject);
      //Procedure dtgDireccRowChanged(Sender: TObject);
      //Procedure dtgDireccDblClick(Sender: TObject);
      //Procedure dtgTelefDblClick(Sender: TObject);
      //Procedure dtgDetGestionDblClick(Sender: TObject);
    //procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dtgTelefDrawDataCell(Sender: TObject; const Rect: TRect;
      Field: TField; State: TGridDrawState);
    procedure BitActivarTelefonoClick(Sender: TObject);
    procedure BitActivarDireccionClick(Sender: TObject);
    procedure bitActivarCorreoClick(Sender: TObject);
    procedure BitSalirClick(Sender: TObject);
    procedure dtgTelefonoIButtonClick(Sender: TObject);
    procedure dtgDireccionIButtonClick(Sender: TObject);
    procedure dtgCorreoIButtonClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    //procedure dtgCorreosDblClick(Sender: TObject);
    //procedure dtgTelefDblClick(Sender: TObject);
    //procedure dtgDireccDblClick(Sender: TObject);
    
   Private
    procedure fn_cargar_correos;
    procedure fn_cargar_direcciones;
    procedure fn_cargar_telefonos;
    procedure cdsAfterScrollTelefono(DataSet: TDataSet);
    procedure cdsAfterScrollDireccion(DataSet: TDataSet);
    procedure cdsAfterScrollCorreo(DataSet: TDataSet); 
// FIN : SPP_201402_GESCOB
    { Private declarations }
   Public
    { Public declarations }
    // INICIO : SPP_201402_GESCOB
    xsAsoId : string;
    // FIN : SPP_201402_GESCOB
   End;

Var
   fMasDatos: TfMasDatos;

Implementation
// INICIO : SPP_201402_GESCOB
Uses GESDM1, GES203l, GES203m, GES203s;
// FIN : SPP_201402_GESCOB

{$R *.dfm}

// INICIO : SPP_201402_GESCOB
(*
Procedure TfMasDatos.BitSalirClick(Sender: TObject);
Begin
   Close;
End;

Procedure TfMasDatos.dtgTelefIButtonClick(Sender: TObject);
Var
   xSQL: String;
Begin
   If StrToInt(Copy(DM1.NivelUsuario(DM1.wUsuario), 2, 1)) > 1 Then Exit;
   fInfmImp := Nil;
   fInfmImp := tfInfmImp.Create(Self);
   xSQL := 'SELECT ID IDTEL,DESCRIP FROM (SELECT ''01'' ID,''FIJO'' DESCRIP FROM DUAL UNION SELECT ''02'' ID,''CELULAR'' DESCRIP FROM DUAL UNION SELECT ''03'' ID,''FAX'' DESCRIP FROM DUAL)';
   DM1.cdsTPension.Close;
   DM1.cdsTPension.DataRequest(xSQL);
   DM1.cdsTPension.Open;
   DM1.xNuevo := 'S';
   fInfmImp.Showmodal;
   fInfmImp.Free;
End;

Procedure TfMasDatos.dtgDireccButtonClick(Sender: TObject);
Var
   xSQL: String;
Begin
   If StrToInt(Copy(DM1.NivelUsuario(DM1.wUsuario), 2, 1)) > 1 Then Exit;
   xSQL := 'SELECT * FROM TGE158';
   DM1.cdsPadre.Close;
   DM1.cdsPadre.DataRequest(xSQL);
   DM1.cdsPadre.Open;
   fInfDirecc := Nil;
   fInfDirecc := tfInfDirecc.Create(Self);
   DM1.xNuevo := 'S';
   fInfDirecc.Showmodal;
   fInfDirecc.Free;

End;

Procedure TfMasDatos.FormCreate(Sender: TObject);
Begin
   dtgTelef.SetControlType('ACTIVO', fctCheckBox, 'S;N');
   dtgDirecc.SetControlType('ACTIVO', fctCheckBox, 'S;N');
End;

Procedure TfMasDatos.chkSolActClick(Sender: TObject);
Var
   xAsoId, xSQL: String;
Begin
   xAsoId := DM1.cdsMovCre.fieldByname('ASOID').AsString;
   xAsoId := sCodAsociado;
   If chkSolAct.Checked Then
      Begin
         xSQL := 'SELECT IDTIPTEL,B.DESCRIP,NROTELF,ACTIVO,ASOID,USUARIO,HREG,OBSTEL, A.ROWID FROM GES_TEL_ASO A,(SELECT ID,DESCRIP FROM  ' +
            '(SELECT ''01'' ID,''FIJO'' DESCRIP FROM DUAL UNION SELECT ''02'' ID,''CELULAR'' DESCRIP FROM DUAL UNION SELECT ''03'' ID,''FAX'' DESCRIP FROM DUAL)) B ' +
            ' WHERE ASOID=' + QuotedStr(xAsoId) + ' AND A.IDTIPTEL=B.ID AND ACTIVO=''S'' ORDER BY HREG DESC';
         DM1.cdsDocPago.Close;
         DM1.cdsDocPago.DataRequest(xSQL);
         DM1.cdsDocPago.Open;
      End
   Else
      Begin
         xSQL := 'SELECT IDTIPTEL,B.DESCRIP,NROTELF,ACTIVO,ASOID,USUARIO,HREG,OBSTEL, A.ROWID FROM GES_TEL_ASO A,(SELECT ID,DESCRIP FROM  ' +
            '(SELECT ''01'' ID,''FIJO'' DESCRIP FROM DUAL UNION SELECT ''02'' ID,''CELULAR'' DESCRIP FROM DUAL UNION SELECT ''03'' ID,''FAX'' DESCRIP FROM DUAL)) B ' +
            ' WHERE ASOID=' + QuotedStr(xAsoId) + ' AND A.IDTIPTEL=B.ID ORDER BY HREG DESC';
         DM1.cdsDocPago.Close;
         DM1.cdsDocPago.DataRequest(xSQL);
         DM1.cdsDocPago.Open;
      End;
End;

Procedure TfMasDatos.BitActivarClick(Sender: TObject);
Var
   xSQL, xAsoId: String;
   xRegistro: TBookmark;
Begin
   xAsoId := DM1.cdsMovCre.fieldByname('ASOID').AsString;
   xAsoId := sCodAsociado;
   xRegistro := DM1.cdsDocPago.GetBookmark;
   If DM1.cdsDocPago.FieldByName('ACTIVO').AsString = 'S' Then
      xSQL := 'UPDATE GES_TEL_ASO SET ACTIVO=''N'',MODREG=SYSDATE,USUMOD=' + QuotedStr(DM1.wUsuario)
         + ' WHERE ASOID=' + QuotedStr(DM1.cdsDocPago.FieldByName('ASOID').AsString) + ' AND IDTIPTEL=' + QuotedStr(DM1.cdsDocPago.FieldByName('IDTIPTEL').AsString) + ' AND NROTELF=' + QuotedStr(DM1.cdsDocPago.FieldByName('NROTELF').AsString) + ' AND ROWID=' + QuotedStr(DM1.cdsDocPago.FieldByName('ROWID').AsString)
   Else
      xSQL := 'UPDATE GES_TEL_ASO SET ACTIVO=''S'',MODREG=SYSDATE,USUMOD=' + QuotedStr(DM1.wUsuario)
         + ' WHERE ASOID=' + QuotedStr(DM1.cdsDocPago.FieldByName('ASOID').AsString) + ' AND IDTIPTEL=' + QuotedStr(DM1.cdsDocPago.FieldByName('IDTIPTEL').AsString) + ' AND NROTELF=' + QuotedStr(DM1.cdsDocPago.FieldByName('NROTELF').AsString) + ' AND ROWID=' + QuotedStr(DM1.cdsDocPago.FieldByName('ROWID').AsString);

   DM1.DCOM1.AppServer.EjecutaSql(xSQL);
   xSQL := 'SELECT IDTIPTEL,B.DESCRIP,NROTELF,ACTIVO,ASOID,USUARIO,HREG,OBSTEL, A.ROWID FROM GES_TEL_ASO A,(SELECT ID,DESCRIP FROM  ' +
      '(SELECT ''01'' ID,''FIJO'' DESCRIP FROM DUAL UNION SELECT ''02'' ID,''CELULAR'' DESCRIP FROM DUAL UNION SELECT ''03'' ID,''FAX'' DESCRIP FROM DUAL)) B ' +
      ' WHERE ASOID=' + QuotedStr(xAsoId) + ' AND A.IDTIPTEL=B.ID ORDER BY HREG DESC';
   DM1.cdsDocPago.Close;
   DM1.cdsDocPago.DataRequest(xSQL);
   DM1.cdsDocPago.Open;
   DM1.cdsDocPago.GotoBookmark(xRegistro);
   chkSolAct.OnClick(chkSolAct);
End;

Procedure TfMasDatos.dtgTelefRowChanged(Sender: TObject);
Begin
   If DM1.cdsDocPago.FieldByName('ACTIVO').AsString = 'S' Then
      BitActivar.Caption := 'DesActivar'
   Else
      BitActivar.Caption := 'Activar';

End;

Procedure TfMasDatos.dtgTelefCellChanged(Sender: TObject);
Begin
   If DM1.cdsDocPago.FieldByName('ACTIVO').AsString = 'S' Then
      BitActivar.Caption := 'DesActivar'
   Else
      BitActivar.Caption := 'Activar';
End;

Procedure TfMasDatos.ChkSolAcClick(Sender: TObject);
Var
   xAsoId, xSQL: String;
Begin
   xAsoId := DM1.cdsMovCre.fieldByname('ASOID').AsString;
   xAsoId := sCodAsociado;
   If ChkSolAc.Checked Then
      Begin
         xSQL := 'SELECT ACTIVO,ASODIR,USUARIO,HREG,UBIGEO,ASOID,OBSTEL, ROWID FROM GES_DOM_ASO WHERE ASOID=' + QuotedStr(xAsoId) + ' AND ACTIVO=''S'' ORDER BY HREG DESC';
         DM1.cdsMGrupo.Close;
         DM1.cdsMGrupo.DataRequest(xSQL);
         DM1.cdsMGrupo.Open;
      End
   Else
      Begin
         xSQL := 'SELECT ACTIVO,ASODIR,USUARIO,HREG,UBIGEO,ASOID,OBSTEL, ROWID FROM GES_DOM_ASO WHERE ASOID=' + QuotedStr(xAsoId) + ' ORDER BY HREG DESC';
         DM1.cdsMGrupo.Close;
         DM1.cdsMGrupo.DataRequest(xSQL);
         DM1.cdsMGrupo.Open;
      End;

End;

Procedure TfMasDatos.BitActDirClick(Sender: TObject);
Var
   xSQL, xAsoId: String;
Begin
   xAsoId := DM1.cdsMovCre.fieldByname('ASOID').AsString;
   xAsoId := sCodAsociado;
   If DM1.cdsMGrupo.FieldByName('ACTIVO').AsString = 'S' Then
      xSQL := 'UPDATE GES_DOM_ASO SET ACTIVO=''N'',MODREG=SYSDATE,USUMOD=' + QuotedStr(DM1.wUsuario) + ' WHERE ASOID=' + QuotedStr(DM1.cdsMGrupo.FieldByName('ASOID').AsString) + ' AND ROWID=' + QuotedStr(DM1.cdsMGrupo.FieldByName('ROWID').AsString)
   Else
      xSQL := 'UPDATE GES_DOM_ASO SET ACTIVO=''S'',MODREG=SYSDATE,USUMOD=' + QuotedStr(DM1.wUsuario) + ' WHERE ASOID=' + QuotedStr(DM1.cdsMGrupo.FieldByName('ASOID').AsString) + ' AND ROWID=' + QuotedStr(DM1.cdsMGrupo.FieldByName('ROWID').AsString);

   DM1.DCOM1.AppServer.EjecutaSql(xSQL);

   xSQL := 'SELECT ACTIVO,ASODIR,USUARIO,HREG,UBIGEO,ASOID,OBSTEL, ROWID FROM GES_DOM_ASO WHERE ASOID=' + QuotedStr(xAsoId) + ' AND ACTIVO=''S'' ORDER BY HREG DESC';
   DM1.cdsMGrupo.Close;
   DM1.cdsMGrupo.DataRequest(xSQL);
   DM1.cdsMGrupo.Open;

//    DM1.cdsMGrupo.GotoBookmark(xRegistro);

   ChkSolAc.OnClick(chkSolAc);

End;

Procedure TfMasDatos.dtgDireccCellChanged(Sender: TObject);
Begin
   If DM1.cdsMGrupo.FieldByName('ACTIVO').AsString = 'S' Then
      BitActDir.Caption := 'DesActivar'
   Else
      BitActDir.Caption := 'Activar';

End;

Procedure TfMasDatos.dtgDireccRowChanged(Sender: TObject);
Begin
   If DM1.cdsMGrupo.FieldByName('ACTIVO').AsString = 'S' Then
      BitActDir.Caption := 'DesActivar'
   Else
      BitActDir.Caption := 'Activar';

End;

Procedure TfMasDatos.dtgDireccDblClick(Sender: TObject);
Var
   xSQL: String;
Begin
   If dtgDirecc.DataSource.DataSet.RecordCount = 0 Then Exit;
   xSQL := 'SELECT * FROM TGE158';
   DM1.cdsPadre.Close;
   DM1.cdsPadre.DataRequest(xSQL);
   DM1.cdsPadre.Open;
   fInfDirecc := Nil;
   fInfDirecc := tfInfDirecc.Create(Self);

   fInfDirecc.lkcDpto.Text := Copy(DM1.cdsMGrupo.FieldByName('UBIGEO').AsString, 1, 2);
   fInfDirecc.lkcProv.Text := Copy(DM1.cdsMGrupo.FieldByName('UBIGEO').AsString, 1, 4);
   fInfDirecc.lkcDist.Text := Copy(DM1.cdsMGrupo.FieldByName('UBIGEO').AsString, 1, 6);
   fInfDirecc.mDireccion.Text := DM1.cdsMGrupo.FieldByName('ASODIR').AsString;
   fInfDirecc.mObsDir.Text := DM1.cdsMGrupo.FieldByName('OBSTEL').AsString;
   If DM1.cdsMGrupo.FieldByName('ACTIVO').AsString = 'S' Then
      fInfDirecc.chkActivo.Checked := True
   Else
      fInfDirecc.chkActivo.Checked := False;
   DM1.xNuevo := 'N';
   If StrToInt(Copy(DM1.NivelUsuario(DM1.wUsuario), 2, 1)) <> 1 Then
      Begin
         fInfDirecc.grpDetDir.Enabled := False;
      End;

   fInfDirecc.Showmodal;
   fInfDirecc.Free;

End;

Procedure TfMasDatos.dtgTelefDblClick(Sender: TObject);
Var
   xSQL: String;
Begin
   If dtgTelef.DataSource.DataSet.RecordCount = 0 Then Exit;
   fInfmImp := Nil;
   fInfmImp := tfInfmImp.Create(Self);
   xSQL := 'SELECT ID IDTEL,DESCRIP FROM (SELECT ''01'' ID,''FIJO'' DESCRIP FROM DUAL UNION SELECT ''02'' ID,''CELULAR'' DESCRIP FROM DUAL UNION SELECT ''03'' ID,''FAX'' DESCRIP FROM DUAL)';
   DM1.cdsTPension.Close;
   DM1.cdsTPension.DataRequest(xSQL);
   DM1.cdsTPension.Open;
   fInfmImp.dblTipTel.Text := DM1.cdsDocPago.FieldByName('IDTIPTEL').AsString;
   fInfmImp.mObsTel.Text := DM1.cdsDocPago.FieldByName('OBSTEL').AsString;
   fInfmImp.EdtNroTel.Text := DM1.cdsDocPago.FieldByName('NROTELF').AsString;
   If DM1.cdsDocPago.FieldByName('ACTIVO').AsString = 'S' Then
      fInfmImp.chkActivo.Checked := True
   Else
      fInfmImp.chkActivo.Checked := False;
   fInfmImp.grpTelAso.Enabled := False;
   DM1.xNuevo := 'N';
   If StrToInt(Copy(DM1.NivelUsuario(DM1.wUsuario), 2, 1)) <> 1 Then
      Begin
         fInfmImp.chkActivo.Enabled := False;
         fInfmImp.BitGrabar.Enabled := False;
      End;
   fInfmImp.Showmodal;
   fInfmImp.Free;

End;

Procedure TfMasDatos.dtgDetGestionDblClick(Sender: TObject);
Begin
   If dtgDetGestion.DataSource.DataSet.RecordCount = 0 Then Exit;
   MessageDlg(DM1.cdsDSocioE.FieldByName('MASDAT').AsString, mtInformation, [mbOk], 0);
End;
*)
(******************************************************************************)

procedure TfMasDatos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dtgTelef.DataSource.DataSet.AfterScroll := nil;
  dtgDirecc.DataSource.DataSet.AfterScroll := nil;
  dtgCorreos.DataSource.DataSet.AfterScroll := nil;
  Action := caFree;
end;
(******************************************************************************)

procedure TfMasDatos.BitSalirClick(Sender: TObject);
begin
  Close;
end;

(******************************************************************************)

procedure TfMasDatos.FormShow(Sender: TObject);
var xSQL : string;
begin
   xSQL := 'SELECT ASOID FROM GES_TEL_ASO WHERE ASOID = ' + QuotedStr(xsAsoId);
   If DM1.CountReg(xSQL) = 0 Then
   Begin
      xSQL := 'INSERT INTO GES_TEL_ASO (IDTIPTEL, NROTELF, ACTIVO, ASOID, USUARIO, '
            + '                         HREG, OBSTEL, USUMOD, MODREG, FLGMIGUBIC, CODFUEINF )'
            + ' SELECT ''01'', ASOTELF1 || CASE WHEN TRIM(ASOTELF2) <> '''' AND ASOTELF2 IS NOT NULL THEN '' / '' END , ''N'', ASOID, USUARIO, '
            + '        SYSDATE, ''INSERTADO AUTOMATICAMENTE'', NULL, NULL, ''N'', ''02'' '
            + '   FROM APO201 '
            + '  WHERE ASOID = ' + QuotedStr(xsAsoId)
            + '    AND (ASOTELF1 IS NOT NULL OR ASOTELF2 IS NOT NULL)';
      DM1.DCOM1.AppServer.EjecutaSql(xSQL);
   End;

   xSQL := 'SELECT ASOID FROM GES_DOM_ASO WHERE ASOID = ' + QuotedStr(xsAsoId);
   If DM1.CountReg(xSQL) = 0 Then
   Begin
      xSQL := 'INSERT INTO GES_DOM_ASO(ASODIR, UBIGEO, ACTIVO, ASOID, USUARIO, '
            + '                        HREG, OBSTEL, MODREG, USUMOD, '
            + '                        FLGMIGUBIC, CODFUEINF)'
            + '     SELECT ASODIR, ZIPID, ''N'', ASOID, USUARIO, '
            + '            SYSDATE, ''INSERTADO AUTOMATICAMENTE'', NULL, NULL, '
            + '            ''N'', ''02'' '
            + '       FROM APO201 '
            + '      WHERE ASOID = ' + QuotedStr(xsAsoId)
            + '        AND ASODIR IS NOT NULL';
      DM1.DCOM1.AppServer.EjecutaSql(xSQL);
   End;

   xSQL := 'SELECT ASOID FROM GES_COR_ASO WHERE ASOID = ' + QuotedStr(xsAsoId);
   If DM1.CountReg(xSQL) = 0 Then
   Begin
      xSQL := 'INSERT INTO GES_COR_ASO(CODTIPCOR, CORREO, ACTIVO, ASOID, USUARIO, '
            + '                        HREG, OBSCOR, USUMOD, MODREG, '
            + '                        FLGMIGUBIC, CODFUEINF)'
            + '     SELECT ''01'', ASOEMAIL, ''N'', ASOID, USUARIO, '
            + '            SYSDATE, ''INSERTADO AUTOMATICAMENTE'', NULL, NULL, '
            + '            ''N'', ''02'' '
            + '       FROM APO201 '
            + '      WHERE ASOID = ' + QuotedStr(xsAsoId)
            + '        AND ASOEMAIL IS NOT NULL';
      DM1.DCOM1.AppServer.EjecutaSql(xSQL);
   End;
   fn_cargar_telefonos();
   fn_cargar_direcciones();
   fn_cargar_correos();
end;
(******************************************************************************)

procedure TfMasDatos.fn_cargar_telefonos;
var xSQL : string;
begin
   if dtgTelef.DataSource <> nil then
      dtgTelef.DataSource.DataSet.AfterScroll := nil;
   xSQL := 'SELECT B.DESTIPTEL, A.NROTELF, C.DESFUEINF, A.OBSTEL, A.IDTIPTEL, '
         + '       NVL(A.MODREG, A.HREG) FECHA, NVL(A.USUMOD, A.USUARIO) USUARIO, A.ACTIVO, A.ACTIVO, A.ROWID  '
         + '  FROM GES_TEL_ASO A, '
         + '       GES_TIP_TEL_MAE B, '
         + '       GES_FUE_INF_MAE C '
         + ' WHERE ASOID = ' + QuotedStr(xsAsoId)
         + '   AND A.IDTIPTEL = B.CODTIPTEL '
         + '   AND A.CODFUEINF = C.CODFUEINF '
         + ' ORDER BY A.ACTIVO DESC, NVL(A.MODREG, A.HREG) DESC ';
   DM1.cdsDocPago.Close;
   DM1.cdsDocPago.DataRequest(xSQL);
   DM1.cdsDocPago.Open;
   dtgTelef.DataSource := DM1.dsDocPago;
   with dtgTelef do
   begin
        Selected.Clear;
        Selected.Add('DESTIPTEL'#9'15'#9'TIPO');
        Selected.Add('NROTELF'#9'25'#9'NRO TELÉFONO');
        Selected.Add('DESFUEINF'#9'15'#9'FUENTE');
        Selected.Add('FECHA'#9'25'#9'FECHA');
        Selected.Add('USUARIO'#9'15'#9'USUARIO');
        ApplySelected;
        DataSource.DataSet.AfterScroll := cdsAfterScrollTelefono;
        cdsAfterScrollTelefono(DataSource.DataSet);
   end;
end;
(******************************************************************************)

procedure TfMasDatos.fn_cargar_direcciones;
var xSQL : string;
begin
   if dtgDirecc.DataSource <> nil then
      dtgDirecc.DataSource.DataSet.AfterScroll := nil;
   xSQL := 'SELECT A.ASODIR, B.DPTODES, C.CIUDDES, D.ZIPDES, E.DESFUEINF, A.UBIGEO, OBSTEL, '
         + '       NVL(A.MODREG, A.HREG) FECHA, NVL(A.USUMOD, A.USUARIO) USUARIO, A.ACTIVO, A.ROWID '
         + '  FROM GES_DOM_ASO A, TGE158 B, TGE121 C, TGE122 D, GES_FUE_INF_MAE E '
         + ' WHERE ASOID = ' + QuotedStr(xsAsoId)
         + '   AND SUBSTR(A.UBIGEO, 1, 2) = B.DPTOID '
         + '   AND SUBSTR(A.UBIGEO, 1, 4) = C.DPTOID||C.CIUDID '
         + '   AND SUBSTR(A.UBIGEO, 1, 6) = D.DPTOID||D.CIUDID||D.ZIPID '
         + '   AND A.CODFUEINF = E.CODFUEINF '
         + ' ORDER BY ACTIVO DESC, NVL(A.MODREG, A.HREG) DESC ';
   DM1.cdsMGrupo.Close;
   DM1.cdsMGrupo.DataRequest(xSQL);
   DM1.cdsMGrupo.Open;
   dtgDirecc.DataSource := DM1.dsMGrupo;
   with dtgDirecc do
   begin
        Selected.Clear;
        Selected.Add('ASODIR'#9'30'#9'DIRECCIÓN');
        Selected.Add('DPTODES'#9'20'#9'DEPARTAMENTO');
        Selected.Add('CIUDDES'#9'20'#9'PROVINCIA');
        Selected.Add('ZIPDES'#9'20'#9'DISTRITO');
        Selected.Add('DESFUEINF'#9'15'#9'FUENTE');
        Selected.Add('FECHA'#9'25'#9'FECHA');
        Selected.Add('USUARIO'#9'15'#9'USUARIO');
        ApplySelected;
        DataSource.DataSet.AfterScroll := cdsAfterScrollDireccion;
        cdsAfterScrollDireccion(DataSource.DataSet);
   end;
end;
(******************************************************************************)

procedure TfMasDatos.fn_cargar_correos;
var xSQL : string;
begin
   if dtgCorreos.DataSource <> nil then
      dtgCorreos.DataSource.DataSet.AfterScroll := nil;

   xSQL := 'SELECT B.DESTIPCOR, A.CORREO, C.DESFUEINF, '
         + '       NVL(A.MODREG, A.HREG) FECHA, NVL(A.USUMOD, A.USUARIO) USUARIO, '
         + '       A.ACTIVO, A.ROWID '
         + '  FROM GES_COR_ASO A, GES_TIP_COR_MAE B, GES_FUE_INF_MAE  C '
         + ' WHERE ASOID = ' + QuotedStr(xsAsoId)
         + '   AND A.CODTIPCOR = B.CODTIPCOR '
         + '   AND A.CODFUEINF = C.CODFUEINF '
         + ' ORDER BY ACTIVO DESC, NVL(A.MODREG, A.HREG) DESC ';
   DM1.cdsDSocioE.Close;
   DM1.cdsDSocioE.DataRequest(xSQL);
   DM1.cdsDSocioE.Open;
   dtgCorreos.DataSource := DM1.dsDSocioE;
   with dtgCorreos do
   begin
        Selected.Clear;
        Selected.Add('DESTIPCOR'#9'15'#9'TIPO');
        Selected.Add('CORREO'#9'15'#9'CORREO');
        Selected.Add('DESFUEINF'#9'15'#9'FUENTE');
        Selected.Add('FECHA'#9'25'#9'FECHA');
        Selected.Add('USUARIO'#9'15'#9'USUARIO');
        ApplySelected;
        DataSource.DataSet.AfterScroll := cdsAfterScrollCorreo;
        cdsAfterScrollCorreo(DataSource.DataSet);
   end;
end;
(******************************************************************************)

procedure TfMasDatos.dtgTelefDrawDataCell(Sender: TObject;
  const Rect: TRect; Field: TField; State: TGridDrawState);
begin
  // evento preparado y enlazado para telefonos, direcciones y correos
  if TwwDBGrid(Sender).DataSource.DataSet.FieldByName('ACTIVO').AsString = 'S' then
  begin
      if (State = [gdSelected..gdFocused]) or (State = [gdSelected]) then TwwDBGrid(Sender).Canvas.Font.Color := clBlack;
      TwwDBGrid(Sender).Canvas.Brush.Color := $00FFF2D9;
  end;
  TwwDBGrid(Sender).DefaultDrawDataCell(Rect, Field, State);
end;
(******************************************************************************)

procedure TfMasDatos.cdsAfterScrollTelefono(DataSet: TDataSet);
begin
  if DataSet.FieldByName('ACTIVO').AsString = 'S' then
    BitActivarTelefono.Caption := 'DesValidar'
  else
    BitActivarTelefono.Caption := 'Validar';
end;

(******************************************************************************)

procedure TfMasDatos.cdsAfterScrollDireccion(DataSet: TDataSet);
begin
  if DataSet.FieldByName('ACTIVO').AsString = 'S' then
    BitActivarDireccion.Caption := 'DesValidar'
  else
    BitActivarDireccion.Caption := 'Validar';
end;
(******************************************************************************)

procedure TfMasDatos.cdsAfterScrollCorreo(DataSet: TDataSet);
begin
  if DataSet.FieldByName('ACTIVO').AsString = 'S' then
    bitActivarCorreo.Caption := 'DesValidar'
  else
    bitActivarCorreo.Caption := 'Validar';
end;
(******************************************************************************)

procedure TfMasDatos.BitActivarTelefonoClick(Sender: TObject);
var xSQL, xActivo : string;
    xRowId : string;
begin
   with dtgTelef.DataSource do
   begin
      xRowId := DataSet.FieldByName('ROWID').AsString;
      xSQL := 'UPDATE GES_TEL_ASO '
            + '   SET ACTIVO = CASE WHEN ACTIVO = ''S'' THEN ''N'' ELSE ''S'' END '
            + '      ,MODREG = SYSDATE '
            + '      ,USUMOD = ' + QuotedStr(DM1.wUsuario)
            + ' WHERE ROWID = ' + QuotedStr(DataSet.FieldByName('ROWID').AsString);
      DM1.DCOM1.AppServer.EjecutaSql(xSQL);
      fn_cargar_telefonos;
      DataSet.Locate('ROWID',VarArrayOf([xRowId]),[]);
   end;
end;
(******************************************************************************)

procedure TfMasDatos.BitActivarDireccionClick(Sender: TObject);
var xSQL, xActivo : string;
    xRowId : string;
begin
   with dtgDirecc.DataSource do
   begin
      xRowId := DataSet.FieldByName('ROWID').AsString;
      xSQL := 'UPDATE GES_DOM_ASO '
            + '   SET ACTIVO = ''N'' '
            + '      ,MODREG = SYSDATE '
            + '      ,USUMOD = ' + QuotedStr(DM1.wUsuario)
            + ' WHERE ASOID = ' + QuotedStr(xsAsoId)
            + '   AND NVL(ACTIVO, ''N'') = ''S'' '
            + '   AND ROWID <> ' + QuotedStr(DataSet.FieldByName('ROWID').AsString);            
      DM1.DCOM1.AppServer.EjecutaSql(xSQL);
      xSQL := 'UPDATE GES_DOM_ASO '
            + '   SET ACTIVO = CASE WHEN ACTIVO = ''S'' THEN ''N'' ELSE ''S'' END '
            + '      ,MODREG = SYSDATE '
            + '      ,USUMOD = ' + QuotedStr(DM1.wUsuario)
            + ' WHERE ROWID = ' + QuotedStr(DataSet.FieldByName('ROWID').AsString);
      DM1.DCOM1.AppServer.EjecutaSql(xSQL);
      fn_cargar_direcciones;
      DataSet.Locate('ROWID',VarArrayOf([xRowId]),[]);
   end;
end;
(******************************************************************************)

procedure TfMasDatos.bitActivarCorreoClick(Sender: TObject);
var xSQL, xActivo : string;
    xRowId : string;
begin
   with dtgCorreos.DataSource do
   begin
      xRowId := DataSet.FieldByName('ROWID').AsString;
      xSQL := 'UPDATE GES_COR_ASO '
            + '   SET ACTIVO = CASE WHEN ACTIVO = ''S'' THEN ''N'' ELSE ''S'' END '
            + '      ,MODREG = SYSDATE '
            + '      ,USUMOD = ' + QuotedStr(DM1.wUsuario)
            + ' WHERE ROWID = ' + QuotedStr(DataSet.FieldByName('ROWID').AsString);
      DM1.DCOM1.AppServer.EjecutaSql(xSQL);
      fn_cargar_correos;
      DataSet.Locate('ROWID',VarArrayOf([xRowId]),[]);
   end;
end;
(******************************************************************************)

procedure TfMasDatos.dtgTelefonoIButtonClick(Sender: TObject);
Var xSQL: String;
Begin
   If StrToInt(Copy(DM1.NivelUsuario(DM1.wUsuario), 2, 1)) > 1 Then Exit;
   Try
      DM1.xNuevo := 'S';
      fInfmImp := TfInfmImp.create(Self);
      fInfmImp.xsAsoId := self.xsAsoId;
      if fInfmImp.ShowModal = mrOk then fn_cargar_telefonos;
   Finally
      fInfmImp.Free;
   End;
end;
(******************************************************************************)

procedure TfMasDatos.dtgDireccionIButtonClick(Sender: TObject);
Var
   xSQL: String;
Begin
   If StrToInt(Copy(DM1.NivelUsuario(DM1.wUsuario), 2, 1)) > 1 Then Exit;
   Try
      DM1.xNuevo := 'S';
      fInfDirecc := TfInfDirecc.create(Self);
      fInfDirecc.xsAsoId := self.xsAsoId;
      if fInfDirecc.ShowModal = mrOK then fn_cargar_direcciones;
   Finally
      fInfDirecc.Free;
   End;
end;
(******************************************************************************)

procedure TfMasDatos.dtgCorreoIButtonClick(Sender: TObject);
Var
   xSQL: String;
Begin
   If StrToInt(Copy(DM1.NivelUsuario(DM1.wUsuario), 2, 1)) > 1 Then Exit;
   Try
      DM1.xNuevo := 'S';
      fInfCorreo := TfInfCorreo.create(Self);
      fInfCorreo.xsAsoId := self.xsAsoId;
      if fInfCorreo.ShowModal = mrOK then fn_cargar_correos;
   Finally
      fInfCorreo.Free;
   End;
end;
(******************************************************************************)

// FIN : SPP_201402_GESCOB
End.

