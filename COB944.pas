Unit COB944;

Interface

Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, Mask, wwdbedit, Wwdbspin, Buttons, Grids, Wwdbigrd,
   Wwdbgrid, ExtCtrls, wwdblook, Db, ComCtrls, ppCtrls, ppBands, ppVar,
   ppPrnabl, ppClass, ppCache, ppProd, ppReport, ppDB, ppComm, ppRelatv,
   ppDBPipe, DBGrids;

Type
   TfDistGestion = Class(TForm)
      GroupBox1: TGroupBox;
      BitSalir: TBitBtn;
      Panel1: TPanel;
      dbsAnoIni: TwwDBSpinEdit;
      dbsMesIni: TwwDBSpinEdit;
      lblNomMes: TLabel;
      Shape1: TShape;
      Panel2: TPanel;
      Edit1: TEdit;
      lblRegistros: TLabel;
      Shape2: TShape;
      dtgDetGest: TwwDBGrid;
      BitCartas: TBitBtn;
      BitTelef: TBitBtn;
      Label8: TLabel;
      EdtBuscar: TEdit;
      Panel3: TPanel;
      txtDist: TEdit;
      Shape3: TShape;
      BitSinDatos: TBitBtn;
      BitPorVerif: TBitBtn;
      dtgData: TDBGrid;
      grpDetalle: TGroupBox;
      Label1: TLabel;
      Label5: TLabel;
      Label6: TLabel;
      dblTipCalf: TwwDBLookupCombo;
      Panel4: TPanel;
      EdtDesCat: TEdit;
      chkMontos: TCheckBox;
      pnlMontos: TPanel;
      Label2: TLabel;
      Label3: TLabel;
      dbeMtoIni: TwwDBEdit;
      dbeMtoFin: TwwDBEdit;
      BitMostrar: TBitBtn;
      Panel5: TPanel;
      EdtDpto: TEdit;
      dblDpto: TwwDBLookupCombo;
      Panel6: TPanel;
      EdtDesUse: TEdit;
      chkMstUses: TCheckBox;
      Label4: TLabel;
      dblUses: TwwDBLookupCombo;
      BitEnvSel: TBitBtn;
      BitMstSele: TBitBtn;
      grbProceso: TGroupBox;
      lblPor: TLabel;
      prbAvance: TProgressBar;
      Procedure BitSalirClick(Sender: TObject);
      Procedure FormActivate(Sender: TObject);
      Procedure EdtBuscarChange(Sender: TObject);
      Procedure EdtBuscarKeyPress(Sender: TObject; Var Key: Char);
      Procedure BitTelefClick(Sender: TObject);
      Procedure BitCartasClick(Sender: TObject);
      Procedure BitSinDatosClick(Sender: TObject);
      Procedure BitPorVerifClick(Sender: TObject);
      Procedure dtgDetGestDblClick(Sender: TObject);
      Procedure dblTipCalfChange(Sender: TObject);
      Procedure dbeMtoIniExit(Sender: TObject);
      Procedure dbeMtoIniKeyPress(Sender: TObject; Var Key: Char);
      Procedure dbeMtoFinKeyPress(Sender: TObject; Var Key: Char);
      Procedure dbeMtoFinExit(Sender: TObject);
      Procedure chkMontosClick(Sender: TObject);
      Procedure chkMstUsesClick(Sender: TObject);
      Procedure dblDptoChange(Sender: TObject);
      Procedure dblUsesChange(Sender: TObject);
      Procedure FormKeyPress(Sender: TObject; Var Key: Char);
      Procedure BitEnvSelClick(Sender: TObject);
      Procedure BitMstSeleClick(Sender: TObject);
      Procedure BitMostrarClick(Sender: TObject);
   Private
    { Private declarations }
      Procedure LimpiaGrids;
      Function CountReg(xIdDist: String): Longint;
      Function CountRegF(xSQL: String): Longint;
   Public
    { Public declarations }
      xIdDist: String;
   End;

Var
   fDistGestion: TfDistGestion;

Implementation

(*Uses GESDM1, COB945, COB946;*)
Uses GESDM1, COB946, COB945;

{$R *.dfm}

Procedure TfDistGestion.BitSalirClick(Sender: TObject);
Begin
   Close;
End;

Procedure TfDistGestion.LimpiaGrids;
Var
   xSQL: String;
Begin
   Screen.Cursor := crHourglass;
   xSQL := 'SELECT DPTODES,USENOM,ASOCODMOD,ASOAPENOM,ASODIR,DPTODIR,CIUDDES,ZIPDES,ASOTELF1,SALDOS_FT,SALDOS_T  ' +
      'FROM (SELECT C.DPTODES,A.ASOID,A.ASOCODMOD,A.ASOAPENOM,A.USEID,F.USENOM,A.UPAGOID,A.UPROID, A.DPTOID, ' +
      'A.SALDOS_FT,ASODIR,ASODPTO,C.DPTODES DPTODIR,B.CIUDID,NVL(D.CIUDDES,''NO IDENTIFICADO'') CIUDDES,  ' +
      'B.ZIPID,NVL(E.ZIPDES,''NO IDENTIFICADO'') ZIPDES,B.ASOTELF1,SALDOS_T FROM CFC001 A,  ' +
      'APO201 B,APO158 C,TGE121 D,APO122 E,APO101 F WHERE  ' +
      'PERIODO=' + QuotedStr('@#$%') + ' AND IDDIST=''$%'' AND A.ASOID=B.ASOID(+) AND A.DPTOID=C.DPTOID(+) AND B.CIUDID=D.DPTOID(+)||D.CIUDID(+) ' +
      'AND B.ZIPID=E.ZIPID(+) AND A.USEID=F.USEID(+)  AND A.UPAGOID=F.UPAGOID(+) AND A.UPROID=F.UPROID(+)) ORDER BY DPTODES,USENOM,ASOAPENOM ';
   DM1.cdsProvin.Close;
   DM1.cdsProvin.DataRequest(xSQL);
   DM1.cdsProvin.Open;
   dtgDetGest.Refresh;
   lblRegistros.Caption := FormatFloat('###,###,##0', 0);
   lblRegistros.Refresh;
   Screen.Cursor := crDefault;

End;

Procedure TfDistGestion.FormActivate(Sender: TObject);
Begin
   LimpiaGrids;
End;

Function TfDistGestion.CountReg(xIdDist: String): Longint;
Var
   xSQL: String;
Begin
   xSQL := 'SELECT NVL(COUNT(*),0) REGISTROS FROM (SELECT DPTODES "DEPARTAMENTO(LABORAL)",USENOM "USES/UGEL",ASOCODMOD "CODIGO MODULAR",ASOAPENOM "APELLIDOS Y NOMBRES", ' +
      'ASODIR "DIRECCION DOMICILIARIA",DPTODIR "DEPARTAMENTO(DOMICILIO)",  CIUDDES "PROVINCIA(DOMICILIO)",ZIPDES "DISTRITO(DOMICILIO)",  ' +
      'ASOTELF1 "TELEFONOS",SALDOS_FT "DEUDA(K)",SALDOS_T "DEUDA TOTAL(K+I+G)"  ' +
      'FROM (SELECT C.DPTODES,A.ASOID,A.ASOCODMOD,A.ASOAPENOM,A.USEID,F.USENOM,A.UPAGOID,A.UPROID, A.DPTOID, ' +
      'A.SALDOS_FT,ASODIR,ASODPTO,C.DPTODES DPTODIR,B.CIUDID,NVL(D.CIUDDES,''NO IDENTIFICADO'') CIUDDES,  ' +
      'B.ZIPID,NVL(E.ZIPDES,''NO IDENTIFICADO'') ZIPDES,B.ASOTELF1,SALDOS_T FROM CFC001 A,  ' +
      'APO201 B,APO158 C,TGE121 D,APO122 E,APO101 F WHERE  ' +
      'PERIODO=' + QuotedStr(Trim(dbsAnoIni.Text + Format('%.2d', [StrToInt(Trim(dbsMesIni.Text))]))) + ' AND IDDIST=' + QuotedStr(xIdDist) + ' AND A.ASOID=B.ASOID(+) AND A.DPTOID=C.DPTOID(+) AND B.CIUDID=D.DPTOID(+)||D.CIUDID(+) ' +
   'AND B.ZIPID=E.ZIPID(+) AND A.USEID=F.USEID(+)  AND A.UPAGOID=F.UPAGOID(+) AND A.UPROID=F.UPROID(+)) )';
   DM1.cdsQry4.Close;
   DM1.cdsQry4.DataRequest(xSQL);
   DM1.cdsQry4.Open;
   Result := DM1.cdsQry4.fieldByName('REGISTROS').AsInteger;
End;

Procedure TfDistGestion.EdtBuscarChange(Sender: TObject);
Begin
   If Length(Trim(EdtBuscar.Text)) > 0 Then
      DM1.cdsProvin.Locate('ASOAPENOM', VarArrayOf([TRIM(edtBuscar.Text)]), [loPartialKey]);

End;

Procedure TfDistGestion.EdtBuscarKeyPress(Sender: TObject; Var Key: Char);
Begin
   If Key = #13 Then
      Begin
         If Length(Trim(EdtBuscar.Text)) > 0 Then
            Begin
               EdtBuscar.Text := '';
               dtgDetGest.SetFocus;
            End
         Else
            Begin
               MessageDlg('Debe Digitar El Nombre Del Asociado, Para Iniciar La Busqueda', mtError, [mbOk], 0);
               EdtBuscar.SetFocus;
            End;
      End;

End;

Procedure TfDistGestion.BitTelefClick(Sender: TObject);
Var
   xSQL: String;
Begin
   LimpiaGrids;
   Screen.Cursor := crHourglass;
   txtDist.Text := BitTelef.Caption;
   txtDist.Refresh;
   xIdDist := '02';
   lblRegistros.Caption := FormatFloat('###,###,##0', CountReg('02'));
   lblRegistros.Refresh;
   xSQL := 'SELECT ASOID,DPTODES,USENOM,ASOCODMOD,ASOAPENOM,ASODIR,DPTODIR,CIUDDES,ZIPDES,ASOTELF1,SALDOS_FT,SALDOS_T,FLGSEL  ' +
      'FROM (SELECT C.DPTODES,A.ASOID,A.ASOCODMOD,A.ASOAPENOM,A.USEID,F.USENOM,A.UPAGOID,A.UPROID, A.DPTOID, ' +
      'A.SALDOS_FT,ASODIR,ASODPTO,C.DPTODES DPTODIR,B.CIUDID,NVL(D.CIUDDES,''NO IDENTIFICADO'') CIUDDES,  ' +
      'B.ZIPID,NVL(E.ZIPDES,''NO IDENTIFICADO'') ZIPDES,B.ASOTELF1,SALDOS_T,FLGSEL  FROM CFC001 A,  ' +
      'APO201 B,APO158 C,TGE121 D,APO122 E,APO101 F WHERE  ' +
      'PERIODO=' + QuotedStr(Trim(dbsAnoIni.Text + Format('%.2d', [StrToInt(Trim(dbsMesIni.Text))]))) + ' AND IDDIST=''02'' AND A.ASOID=B.ASOID(+) AND A.DPTOID=C.DPTOID(+) AND B.CIUDID=D.DPTOID(+)||D.CIUDID(+) ' +
   'AND B.ZIPID=E.ZIPID(+) AND A.USEID=F.USEID(+)  AND A.UPAGOID=F.UPAGOID(+) AND A.UPROID=F.UPROID(+)) ORDER BY ASOAPENOM ';
   DM1.cdsProvin.Close;
   DM1.cdsProvin.DataRequest(xSQL);
   DM1.cdsProvin.Open;
   If DM1.cdsProvin.RecordCount > 0 Then
      Begin
         grpDetalle.Enabled := True;

      End;
   Screen.Cursor := crDefault;

End;

Procedure TfDistGestion.BitCartasClick(Sender: TObject);
Var
   xSQL: String;
Begin
   LimpiaGrids;
   Screen.Cursor := crHourglass;
   txtDist.Text := BitCartas.Caption;
   txtDist.Refresh;
   lblRegistros.Caption := FormatFloat('###,###,##0', CountReg('01'));
   lblRegistros.Refresh;
   xIdDist := '01';
   xSQL := 'SELECT ASOID,DPTODES,USENOM,ASOCODMOD,ASOAPENOM,ASODIR,DPTODIR,CIUDDES,ZIPDES,ASOTELF1,SALDOS_FT,SALDOS_T,FLGSEL  ' +
      'FROM (SELECT C.DPTODES,A.ASOID,A.ASOCODMOD,A.ASOAPENOM,A.USEID,F.USENOM,A.UPAGOID,A.UPROID, A.DPTOID, ' +
      'A.SALDOS_FT,ASODIR,ASODPTO,C.DPTODES DPTODIR,B.CIUDID,NVL(D.CIUDDES,''NO IDENTIFICADO'') CIUDDES,  ' +
      'B.ZIPID,NVL(E.ZIPDES,''NO IDENTIFICADO'') ZIPDES,B.ASOTELF1,SALDOS_T,FLGSEL FROM CFC001 A,  ' +
      'APO201 B,APO158 C,TGE121 D,APO122 E,APO101 F WHERE  ' +
      'PERIODO=' + QuotedStr(Trim(dbsAnoIni.Text + Format('%.2d', [StrToInt(Trim(dbsMesIni.Text))]))) + ' AND IDDIST=''01'' AND A.ASOID=B.ASOID(+) AND A.DPTOID=C.DPTOID(+) AND B.CIUDID=D.DPTOID(+)||D.CIUDID(+) ' +
   'AND B.ZIPID=E.ZIPID(+) AND A.USEID=F.USEID(+)  AND A.UPAGOID=F.UPAGOID(+) AND A.UPROID=F.UPROID(+)) ORDER BY ASOAPENOM ';
   DM1.cdsProvin.Close;
   DM1.cdsProvin.DataRequest(xSQL);
   DM1.cdsProvin.Open;
   Screen.Cursor := crDefault;
   If DM1.cdsProvin.RecordCount > 0 Then
      Begin
         grpDetalle.Enabled := True;
      End;

End;

Procedure TfDistGestion.BitSinDatosClick(Sender: TObject);
Var
   xSQL: String;
Begin
   LimpiaGrids;
   Screen.Cursor := crHourglass;
   txtDist.Text := BitSinDatos.Caption;
   txtDist.Refresh;
   lblRegistros.Caption := FormatFloat('###,###,##0', CountReg('03'));
   lblRegistros.Refresh;
   xIdDist := '03';
   xSQL := 'SELECT ASOID,DPTODES,USENOM,ASOCODMOD,ASOAPENOM,ASODIR,DPTODIR,CIUDDES,ZIPDES,ASOTELF1,SALDOS_FT,SALDOS_T,FLGSEL  ' +
      'FROM (SELECT C.DPTODES,A.ASOID,A.ASOCODMOD,A.ASOAPENOM,A.USEID,F.USENOM,A.UPAGOID,A.UPROID, A.DPTOID, ' +
      'A.SALDOS_FT,ASODIR,ASODPTO,C.DPTODES DPTODIR,B.CIUDID,NVL(D.CIUDDES,''NO IDENTIFICADO'') CIUDDES,  ' +
      'B.ZIPID,NVL(E.ZIPDES,''NO IDENTIFICADO'') ZIPDES,B.ASOTELF1,SALDOS_T,FLGSEL FROM CFC001 A,  ' +
      'APO201 B,APO158 C,TGE121 D,APO122 E,APO101 F WHERE  ' +
      'PERIODO=' + QuotedStr(Trim(dbsAnoIni.Text + Format('%.2d', [StrToInt(Trim(dbsMesIni.Text))]))) + ' AND IDDIST=''03'' AND A.ASOID=B.ASOID(+) AND A.DPTOID=C.DPTOID(+) AND B.CIUDID=D.DPTOID(+)||D.CIUDID(+) ' +
   'AND B.ZIPID=E.ZIPID(+) AND A.USEID=F.USEID(+)  AND A.UPAGOID=F.UPAGOID(+) AND A.UPROID=F.UPROID(+)) ORDER BY ASOAPENOM ';
   DM1.cdsProvin.Close;
   DM1.cdsProvin.DataRequest(xSQL);
   DM1.cdsProvin.Open;
   Screen.Cursor := crDefault;
   If DM1.cdsProvin.RecordCount > 0 Then
      Begin
         grpDetalle.Enabled := True;
      End;

End;

Procedure TfDistGestion.BitPorVerifClick(Sender: TObject);
Var
   xSQL: String;
Begin
   LimpiaGrids;
   Screen.Cursor := crHourglass;
   txtDist.Text := BitPorVerif.Caption;
   txtDist.Refresh;
   lblRegistros.Caption := FormatFloat('###,###,##0', CountReg('04'));
   lblRegistros.Refresh;
   xIdDist := '04';
   xSQL := 'SELECT ASOID,DPTODES,USENOM,ASOCODMOD,ASOAPENOM,ASODIR,DPTODIR,CIUDDES,ZIPDES,ASOTELF1,SALDOS_FT,SALDOS_T,FLGSEL  ' +
      'FROM (SELECT C.DPTODES,A.ASOID,A.ASOCODMOD,A.ASOAPENOM,A.USEID,F.USENOM,A.UPAGOID,A.UPROID, A.DPTOID, ' +
      'A.SALDOS_FT,ASODIR,ASODPTO,C.DPTODES DPTODIR,B.CIUDID,NVL(D.CIUDDES,''NO IDENTIFICADO'') CIUDDES,  ' +
      'B.ZIPID,NVL(E.ZIPDES,''NO IDENTIFICADO'') ZIPDES,B.ASOTELF1,SALDOS_T,FLGSEL FROM CFC001 A,  ' +
      'APO201 B,APO158 C,TGE121 D,APO122 E,APO101 F WHERE  ' +
      'PERIODO=' + QuotedStr(Trim(dbsAnoIni.Text + Format('%.2d', [StrToInt(Trim(dbsMesIni.Text))]))) + ' AND IDDIST=''04'' AND A.ASOID=B.ASOID(+) AND A.DPTOID=C.DPTOID(+) AND B.CIUDID=D.DPTOID(+)||D.CIUDID(+) ' +
   'AND B.ZIPID=E.ZIPID(+) AND A.USEID=F.USEID(+)  AND A.UPAGOID=F.UPAGOID(+) AND A.UPROID=F.UPROID(+)) ORDER BY ASOAPENOM ';
   DM1.cdsProvin.Close;
   DM1.cdsProvin.DataRequest(xSQL);
   DM1.cdsProvin.Open;
   Screen.Cursor := crDefault;
   If DM1.cdsProvin.RecordCount > 0 Then
      Begin
         grpDetalle.Enabled := True;
      End;

End;

Procedure TfDistGestion.dtgDetGestDblClick(Sender: TObject);
Var
   xSQL: String;
Begin
   If dtgDetGest.DataSource.DataSet.RecordCount = 0 Then Exit;
   xSQL := 'SELECT IDDIST,DESDIST FROM COB908 WHERE IDDIST NOT IN (' + QuotedStr(xIdDist) + ')';
   DM1.cdsTPension.Close;
   DM1.cdsTPension.DataRequest(xSQL);
   DM1.cdsTPension.Open;
   Try
      fCamGest := TfCamGest.Create(Self);
      fCamGest.EdtAsoCodMod.Text := DM1.cdsProvin.FieldByName('ASOCODMOD').AsString;
      fCamGest.EdtAsoApeNom.Text := DM1.cdsProvin.FieldByName('ASOAPENOM').AsString;
      fCamGest.EdtTelf.Text := DM1.cdsProvin.FieldByName('ASOTELF1').AsString;
      fCamGest.mDireccion.Text := DM1.cdsProvin.FieldByName('ASODIR').AsString;
      fCamGest.ShowModal;
   Finally
      fCamGest.Free;
   End;

End;

Procedure TfDistGestion.dblTipCalfChange(Sender: TObject);
Begin
   If DM1.cdsConcre.Locate('RESUMEID', VarArrayof([dblTipCalf.Text]), []) Then
      Begin
         EdtDesCat.Text := DM1.cdsConcre.fieldbyname('RESUMEDES').AsString;
      End
   Else
      Begin
         If Length(dblTipCalf.Text) <> 1 Then
            Begin
               Beep;
               EdtDesCat.Text := '';
            End;
      End;

End;

Procedure TfDistGestion.dbeMtoIniExit(Sender: TObject);
Begin
   dbeMtoIni.Text := DM1.FormatoNumeros(dbeMtoIni.Text);
End;

Procedure TfDistGestion.dbeMtoIniKeyPress(Sender: TObject; Var Key: Char);
Begin
   If Key In [' ', 'A'..'Z', 'a'..'z', '°', '|', '!', '"', '#', '$', '%', '&', '/', '(', ')', '=', '?', '\', '¡', '¿', '@', '¨', '´', '*', '+', '~', '~', '[', ']', '{', '}', '^', '`', '<', '>', ';', ',', ':', '''', '-', '_'] Then
      Key := #0;

End;

Procedure TfDistGestion.dbeMtoFinKeyPress(Sender: TObject; Var Key: Char);
Begin
   If Key In [' ', 'A'..'Z', 'a'..'z', '°', '|', '!', '"', '#', '$', '%', '&', '/', '(', ')', '=', '?', '\', '¡', '¿', '@', '¨', '´', '*', '+', '~', '~', '[', ']', '{', '}', '^', '`', '<', '>', ';', ',', ':', '''', '-', '_'] Then
      Key := #0;

End;

Procedure TfDistGestion.dbeMtoFinExit(Sender: TObject);
Begin
   dbeMtoFin.Text := DM1.FormatoNumeros(dbeMtoFin.Text);
End;

Procedure TfDistGestion.chkMontosClick(Sender: TObject);
Begin
   LimpiaGrids;
   If Not chkMontos.Checked Then
      Begin
         dbeMtoIni.Text := '0.00';
         dbeMtoFin.Text := '0.00';
         pnlMontos.Enabled := False;
      End
   Else
      Begin
         pnlMontos.Enabled := True;
         dbeMtoIni.SetFocus;
      End;

End;

Procedure TfDistGestion.chkMstUsesClick(Sender: TObject);
Begin
   If chkMstUses.Checked Then LimpiaGrids;
   If Length(Trim(EdtDpto.Text)) = 0 Then
      Begin
         If chkMstUses.Checked Then
            Begin
               chkMstUses.Checked := False;
               MessageDlg(' Debe Seleccionar Un Departamento..!!!!', mtError, [mbOk], 0);
               Exit;
            End;
      End
   Else
      If chkMstUses.Checked Then
         dblUses.Enabled := True
      Else
         Begin
            dblUses.Text := '';
            EdtDesUse.Text := '';
            dblUses.Enabled := False;
         End;

End;

Procedure TfDistGestion.dblDptoChange(Sender: TObject);
Var
   xSQL: String;
Begin
   LimpiaGrids;
   If DM1.cdsDFam.Locate('DPTOID', VarArrayof([dblDpto.text]), []) Then
      Begin
         EdtDpto.Text := DM1.cdsDFam.FieldByName('DPTODES').Asstring;
         xSQL := 'SELECT USEID,USENOM FROM APO101 WHERE DPTOID=' + QuotedStr(dblDpto.text) + ' AND (FLGACT<>''!'' OR FLGACT IS NULL)  ORDER BY USEID';
         DM1.cdsTUSE.Close;
         DM1.cdsTUSE.DataRequest(xSQL);
         DM1.cdsTUSE.Open;
      End
   Else
      Begin
         If Length(dblDpto.Text) <> 2 Then
            Begin
               Beep;
               EdtDpto.Text := '';
            End;
      End

End;

Procedure TfDistGestion.dblUsesChange(Sender: TObject);
Begin
   LimpiaGrids;
   If DM1.cdsTUse.Locate('USEID', VarArrayof([dblUses.text]), []) Then
      Begin
         EdtDesUse.Text := DM1.cdsTUse.FieldByName('USENOM').Asstring;
      End
   Else
      Begin
         If Length(dblUses.Text) <> 2 Then
            Begin
               Beep;
               EdtDesUse.Text := '';
            End;
      End

End;

Procedure TfDistGestion.FormKeyPress(Sender: TObject; Var Key: Char);
Begin
   If Key = #13 Then
      Begin
         Key := #0;
         Perform(WM_NEXTDLGCTL, 0, 0);
      End

End;

Procedure TfDistGestion.BitEnvSelClick(Sender: TObject);
Var
   xSQL: String;
Begin
   If dtgDetGest.DataSource.DataSet.RecordCount = 0 Then Exit;
   Screen.Cursor := crHourGlass;
   grbProceso.Visible := True;
   lblPor.Visible := True;
   prbAvance.Position := 0;
   prbAvance.Max := DM1.cdsProvin.RecordCount;
   prbAvance.Position := 1;
   DM1.cdsProvin.First;
   While Not DM1.cdsProvin.Eof Do
      Begin
         If DM1.cdsProvin.FieldByName('FLGSEL').AsString <> 'S' Then
            Begin
               fDistGestion.Refresh;
               prbAvance.Position := prbAvance.Position + 1;
               xSQL := 'UPDATE CFC001 SET FLGSEL=''S'',USUARIO=' + QuotedStr(DM1.wUsuario) + ',HREG=SYSDATE  WHERE ASOID=' + QuotedStr(DM1.cdsProvin.FieldByName('ASOID').AsString) + ' AND PERIODO=' + QuotedStr(Trim(dbsAnoIni.Text + Format('%.2d', [StrToInt(Trim(dbsMesIni.Text))]))) + ' AND IDDIST=' + QuotedStr(xIdDist);
               DM1.DCOM1.AppServer.EjecutaSql(xSQL);
               lblPor.Caption := FormatFloat('#,###,###', prbAvance.Position) + '  De  ' + FormatFloat('#,###,###', prbAvance.Max) + '  Registros';
            End;
         DM1.cdsProvin.Next;
      End;
   prbAvance.Position := 0;
   grbProceso.Visible := False;
   MessageDlg(' Proceso Termino Con EXITO..!!!!', mtInformation, [mbOk], 0);
   Screen.Cursor := crDefault;
End;

Procedure TfDistGestion.BitMstSeleClick(Sender: TObject);
Var
   xSQL: String;
Begin
   Try
      If dtgDetGest.DataSource.DataSet.RecordCount = 0 Then Exit;
      fSelGest := TfSelGest.Create(Self);
      Screen.Cursor := crHourGlass;
      xSQL := 'SELECT ASOID,DPTODES,USENOM,ASOCODMOD,ASOAPENOM,ASODIR,DPTODIR,CIUDDES,ZIPDES,ASOTELF1,SALDOS_FT,SALDOS_T  ' +
         'FROM (SELECT C.DPTODES,A.ASOID,A.ASOCODMOD,A.ASOAPENOM,A.USEID,F.USENOM,A.UPAGOID,A.UPROID, A.DPTOID, ' +
         'A.SALDOS_FT,ASODIR,ASODPTO,C.DPTODES DPTODIR,B.CIUDID,NVL(D.CIUDDES,''NO IDENTIFICADO'') CIUDDES,  ' +
         'B.ZIPID,NVL(E.ZIPDES,''NO IDENTIFICADO'') ZIPDES,B.ASOTELF1,SALDOS_T,FLGSEL FROM CFC001 A,  ' +
         'APO201 B,APO158 C,TGE121 D,APO122 E,APO101 F WHERE  ' +
         'PERIODO=' + QuotedStr(Trim(dbsAnoIni.Text + Format('%.2d', [StrToInt(Trim(dbsMesIni.Text))]))) + ' AND IDDIST=' + QuotedStr(xIdDist) + ' AND FLGSEL=''S''  AND A.ASOID=B.ASOID(+) AND A.DPTOID=C.DPTOID(+) AND B.CIUDID=D.DPTOID(+)||D.CIUDID(+) ' +
      'AND B.ZIPID=E.ZIPID(+) AND A.USEID=F.USEID(+)  AND A.UPAGOID=F.UPAGOID(+) AND A.UPROID=F.UPROID(+)) ORDER BY ASOAPENOM ';
      DM1.cdsProvCta.Close;
      DM1.cdsProvCta.DataRequest(xSQL);
      DM1.cdsProvCta.Open;
      fSelGest.lblRegistros.Caption := FormatFloat('###,###,##0', CountRegf(xSQL));
      lblRegistros.Refresh;
      Screen.Cursor := crDefault;
      fSelGest.Caption := 'ASOCIADOS SELECCIONADOS PARA GESTION DE COBRANZA';
      fSelGest.txtDist.Text := 'PERIODO :  ' + Trim(lblNomMes.Caption) + '-' + Trim(dbsAnoIni.Text) + '  /   TIPO DE GESTION : ' + txtDist.Text;
      fSelGest.ShowModal;
   Finally
      fSelGest.Free;
   End;

End;

Procedure TfDistGestion.BitMostrarClick(Sender: TObject);
Var
   xSQL, xSQL1, xSQL2, xSQL3, xSQL4: String;
Begin
  // If dtgDetGest.DataSource.DataSet.RecordCount=0 Then Exit;
   If Length(Trim(dblTipCalf.Text)) > 0 Then
      xSQL1 := ' AND CFC_F=' + QuotedStr(Trim(dblTipCalf.Text))
   Else
      xSQL1 := '';
   If (Length(Trim(dbeMtoIni.Text)) > 0) And (Length(Trim(dbeMtoFin.Text)) > 0) Then
      xSQL2 := ' AND SALDOS_FT BETWEEN ' + FloatToStr(DM1.Valores(dbeMtoIni.Text)) + ' AND ' + FloatToStr(DM1.Valores(dbeMtoFin.Text))
   Else
      xSQL2 := '';
   If Length(Trim(dblDpto.Text)) > 0 Then
      xSQL3 := ' AND A.DPTOID=' + QuotedStr(Trim(dblDpto.Text))
   Else
      xSQL3 := '';
   If Length(Trim(dblUses.Text)) > 0 Then
      xSQL4 := ' AND A.USEID=' + QuotedStr(Trim(dblUses.Text))
   Else
      xSQL4 := '';
   Screen.Cursor := crHourGlass;
   xSQL := 'SELECT ASOID,DPTODES,USENOM,ASOCODMOD,ASOAPENOM,ASODIR,DPTODIR,CIUDDES,ZIPDES,ASOTELF1,SALDOS_FT,SALDOS_T,FLGSEL  ' +
      'FROM (SELECT C.DPTODES,A.ASOID,A.ASOCODMOD,A.ASOAPENOM,A.USEID,F.USENOM,A.UPAGOID,A.UPROID, A.DPTOID, ' +
      'A.SALDOS_FT,ASODIR,ASODPTO,C.DPTODES DPTODIR,B.CIUDID,NVL(D.CIUDDES,''NO IDENTIFICADO'') CIUDDES,  ' +
      'B.ZIPID,NVL(E.ZIPDES,''NO IDENTIFICADO'') ZIPDES,B.ASOTELF1,SALDOS_T,FLGSEL FROM CFC001 A,  ' +
      'APO201 B,APO158 C,TGE121 D,APO122 E,APO101 F WHERE  ' +
      'PERIODO=' + QuotedStr(Trim(dbsAnoIni.Text + Format('%.2d', [StrToInt(Trim(dbsMesIni.Text))]))) + ' AND IDDIST=' + QuotedStr(xIdDist) + xSQL1 + xSQL2 + xSQL3 + xSQL4 + ' ' +
   ' AND A.ASOID=B.ASOID(+) AND A.DPTOID=C.DPTOID(+) AND B.CIUDID=D.DPTOID(+)||D.CIUDID(+) ' +
      'AND B.ZIPID=E.ZIPID(+) AND A.USEID=F.USEID(+)  AND A.UPAGOID=F.UPAGOID(+) AND A.UPROID=F.UPROID(+)) ORDER BY ASOAPENOM ';

   lblRegistros.Caption := FormatFloat('###,###,##0', CountRegF(xSQL));
   lblRegistros.Refresh;
   DM1.cdsProvin.Close;
   DM1.cdsProvin.DataRequest(xSQL);
   DM1.cdsProvin.Open;
   Screen.Cursor := crDefault;
   If DM1.cdsProvin.RecordCount > 0 Then
      Begin
      End;

End;

Function TfDistGestion.CountRegF(xSQL: String): Longint;
Var
   xSQL_: String;
Begin
   xSQL_ := 'SELECT COUNT(*) REGISTROS FROM (' + xSQL + ')';
   DM1.cdsQry4.Close;
   DM1.cdsQry4.DataRequest(xSQL_);
   DM1.cdsQry4.Open;
   Result := DM1.cdsQry4.fieldByName('REGISTROS').AsInteger;
End;

End.

