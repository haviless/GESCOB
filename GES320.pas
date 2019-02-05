//INICIO HPP_201112_GESCOB
Unit GES320;

Interface

Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, Grids, DBGrids, wwdblook, Wwdbdlg, Buttons, Wwdbigrd,
   Wwdbgrid, ppParameter, ppStrtch, ppMemo, ppBands, ppClass, ppCtrls,
   ppVar, ppPrnabl, ppCache, ppProd, ppReport, ppRelatv, ppDB, ppDBPipe,
   ppDBBDE, ppComm, ppEndUsr, wwExport, shellapi;

Type
   TfRptAsoCenEdu = Class(TForm)
      grbFiltro: TGroupBox;
      Label1: TLabel;
      Label3: TLabel;
      btnProcesar: TBitBtn;
      cboDpto: TwwDBLookupComboDlg;
      txtDpto: TEdit;
      cboProv: TwwDBLookupComboDlg;
      txtProv: TEdit;
      gbControles: TGroupBox;
      btnCerrar: TBitBtn;
      btnExportar: TBitBtn;
      btnImprimir: TBitBtn;
      dbgPrincipal: TwwDBGrid;
      ppdPrincipal: TppDesigner;
      ppbdPrincipal: TppBDEPipeline;
      pprPrincipal: TppReport;
      ppParameterList1: TppParameterList;
      Label2: TLabel;
      cboDist: TwwDBLookupComboDlg;
      txtDist: TEdit;
    ppHeaderBand1: TppHeaderBand;
    ppltitulo: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppLabel22: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLabel880: TppLabel;
    ppLabel881: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppPageStyle1: TppPageStyle;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppDBText1: TppDBText;
    ppLabel1: TppLabel;
    ppLine3: TppLine;
    ppGroupFooterBand3: TppGroupFooterBand;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppDBText2: TppDBText;
    ppLabel2: TppLabel;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppDBText3: TppDBText;
    ppLabel3: TppLabel;
    ppLine4: TppLine;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppGroup4: TppGroup;
    ppGroupHeaderBand4: TppGroupHeaderBand;
    ppDBText4: TppDBText;
    ppLabel4: TppLabel;
    ppLine1: TppLine;
    ppGroupFooterBand4: TppGroupFooterBand;
    ppGroup5: TppGroup;
    ppGroupHeaderBand5: TppGroupHeaderBand;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppGroupFooterBand5: TppGroupFooterBand;
      Procedure FormShow(Sender: TObject);
      Procedure FormKeyPress(Sender: TObject; Var Key: Char);
      Procedure cboDptoExit(Sender: TObject);
      Procedure cboProvExit(Sender: TObject);
      Procedure cboDistExit(Sender: TObject);
      Procedure btnProcesarClick(Sender: TObject);
      Procedure btnExportarClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
   Private
      Procedure limpiarPantalla;
      Procedure pintarGrilla;
    { Private declarations }
   Public
    { Public declarations }
   End;

Var
   fRptAsoCenEdu: TfRptAsoCenEdu;

Implementation

Uses GESDM1;

{$R *.dfm}

(******************************************************************************)
Procedure TfRptAsoCenEdu.FormShow(Sender: TObject);
Var
   xSQL: String;
Begin
   xSQL := 'SELECT DPTOID, DPTODES FROM APO158 ORDER BY DPTOID';
   DM1.cdsDpto.Close;
   DM1.cdsDpto.DataRequest(xSQL);
   DM1.cdsDpto.Open;
   cboDpto.LookupTable := DM1.cdsDpto;
   cboDpto.Selected.Clear;
   cboDpto.Selected.Add('DPTOID'#9'3'#9'Código'#9#9);
   cboDpto.Selected.Add('DPTODES'#9'20'#9'Descripción'#9#9);

   xSQL := 'SELECT DPTOID,CIUDID,CIUDDES FROM APO123 ORDER BY DPTOID,CIUDID';
   DM1.cdsProvin.Close;
   DM1.cdsProvin.DataRequest(xSQL);
   DM1.cdsProvin.Open;
   cboProv.LookupTable := DM1.cdsProvin;
   cboProv.Selected.Clear;
   cboProv.Selected.Add('CIUDID'#9'5'#9'Código'#9#9);
   cboProv.Selected.Add('CIUDDES'#9'20'#9'Descripción'#9#9);
   DM1.cdsProvin.Filtered := false;
   DM1.cdsProvin.Filter := '1=2';
   DM1.cdsProvin.Filtered := true;

   xSQL := 'SELECT DPTOID, CIUDID, ZIPID, ZIPDES FROM APO122 ORDER BY DPTOID, CIUDID, ZIPID';
   DM1.cdsDist.Close;
   DM1.cdsDist.DataRequest(xSQL);
   DM1.cdsDist.Open;
   cboDist.LookupTable := DM1.cdsDist;
   cboDist.Selected.Clear;
   cboDist.Selected.Add('ZIPID'#9'7'#9'Código'#9#9);
   cboDist.Selected.Add('ZIPDES'#9'20'#9'Descripción'#9#9);
   DM1.cdsDist.Filtered := false;
   DM1.cdsDist.Filter := '1=2';
   DM1.cdsDist.Filtered := true;
   limpiarPantalla();
End;
(******************************************************************************)

Procedure TfRptAsoCenEdu.FormKeyPress(Sender: TObject; Var Key: Char);
Begin
   If Key = #13 Then
      Begin
         Key := #0;
         Perform(CM_DialogKey, VK_TAB, 0);
      End;
End;
(******************************************************************************)

Procedure TfRptAsoCenEdu.cboDptoExit(Sender: TObject);
Begin
   If DM1.cdsDpto.Locate('DPTOID', VarArrayof([cboDpto.Text]), []) Then
      Begin
         txtDpto.Text := DM1.cdsDpto.fieldbyname('DPTODES').AsString;
         DM1.cdsProvin.Filtered := false;
         DM1.cdsProvin.Filter := 'DPTOID = ' + QuotedStr(cboDpto.Text);
         DM1.cdsProvin.Filtered := true;
      End
   Else
      Begin
         txtDpto.Text := '';
         DM1.cdsProvin.Filtered := false;
         DM1.cdsProvin.Filter := '1 = 2';
         DM1.cdsProvin.Filtered := true;
      End;
   cboProv.Text := '';
   cboProvExit(cboProv);
End;
(******************************************************************************)

Procedure TfRptAsoCenEdu.cboProvExit(Sender: TObject);
Begin
   If DM1.cdsProvin.Locate('CIUDID', VarArrayof([cboProv.Text]), []) Then
      Begin
         txtProv.Text := DM1.cdsProvin.fieldbyname('CIUDDES').AsString;
         DM1.cdsDist.Filtered := false;
         DM1.cdsDist.Filter := 'CIUDID = ' + QuotedStr(cboProv.Text);
         DM1.cdsDist.Filtered := true;
      End
   Else
      Begin
         txtProv.Text := '';
         DM1.cdsDist.Filtered := false;
         DM1.cdsDist.Filter := '1 = 2';
         DM1.cdsDist.Filtered := true;
      End;
   cboDist.Text := '';
   cboDistExit(cboDist);
End;

(******************************************************************************)
Procedure TfRptAsoCenEdu.cboDistExit(Sender: TObject);
Begin
   If DM1.cdsDist.Locate('ZIPID', VarArrayof([cboDist.Text]), []) Then
      txtDist.Text := DM1.cdsDist.fieldbyname('ZIPDES').AsString
   Else
      txtDist.Text := '';
   limpiarPantalla();
End;

(******************************************************************************)
Procedure TfRptAsoCenEdu.limpiarPantalla();
Var
   xSQL: String;
Begin
   xSQL := 'SELECT '' '' DPTO_CEN_EDU, '' '' PROV_CEN_EDU, '' '' DIST_CEN_EDU, '
      + '          '' '' CPO_CEN_EDU, '' '' CEN_EDU, '' '' DIR_CEN_EDU, '' '' TUR_CEN_EDU, '
      + '          '' '' NIV_CEN_EDU, '' '' TIP_ASO, '' '' COD_MOD_ASO, '' '' DNI_ASO, '
      + '          '' '' APE_NOM_ASO '
      + '     FROM DUAL ';

   DM1.cdsQry1.Close;
   DM1.cdsQry1.DataRequest(xSQL);
   DM1.cdsQry1.Open;

   dbgPrincipal.DataSource := DM1.dsQry1;
   pintarGrilla();
   ppbdPrincipal.DataSource := DM1.dsQry1;
   btnExportar.Enabled := false;
   btnImprimir.Enabled := false;
End;
(******************************************************************************)
Procedure TfRptAsoCenEdu.pintarGrilla();
Begin
   dbgPrincipal.Selected.Clear;
   dbgPrincipal.Selected.Add('DPTO_CEN_EDU'#9'15'#9'Departamento'#9#9);
   dbgPrincipal.Selected.Add('PROV_CEN_EDU'#9'15'#9'Provincia'#9#9);
   dbgPrincipal.Selected.Add('DIST_CEN_EDU'#9'15'#9'Distrito'#9#9);
   dbgPrincipal.Selected.Add('CPO_CEN_EDU'#9'25'#9'Centro Poblado'#9#9);
   dbgPrincipal.Selected.Add('CEN_EDU'#9'25'#9'Centro Educativo'#9#9);
   dbgPrincipal.Selected.Add('DIR_CEN_EDU'#9'35'#9'Dirección'#9#9);
   dbgPrincipal.Selected.Add('TUR_CEN_EDU'#9'20'#9'Turno'#9#9);
   dbgPrincipal.Selected.Add('NIV_CEN_EDU'#9'15'#9'Nivel'#9#9);
   dbgPrincipal.Selected.Add('TIP_ASO'#9'5'#9'Tipo'#9#9);
   dbgPrincipal.Selected.Add('COD_MOD_ASO'#9'12'#9'Cod Mod'#9#9);
   dbgPrincipal.Selected.Add('DNI_ASO'#9'10'#9'D.N.I.'#9#9);
   dbgPrincipal.Selected.Add('APE_NOM_ASO'#9'35'#9'Apellidos y Nombres'#9#9);
   dbgPrincipal.ApplySelected;
End;
(******************************************************************************)

Procedure TfRptAsoCenEdu.btnProcesarClick(Sender: TObject);

   Function isProceso(): boolean;
   Var
      xSQL: String;
   Begin
      Screen.Cursor := crHourGlass;
      result := false;

      xSQL := 'SELECT DPTO.DPTODES DPTO_CEN_EDU, PROV.CIUDDES PROV_CEN_EDU, DIST.ZIPDES DIST_CEN_EDU, '
         + '          A.CENPO CPO_CEN_EDU, A.NOMCENEDU CEN_EDU, A.DIREC DIR_CEN_EDU, A.TURNO TUR_CEN_EDU, '
         + '          A.NIVEDU_DES NIV_CEN_EDU, B.ASOTIPID TIP_ASO, B.ASOCODMOD COD_MOD_ASO, B.ASODNI DNI_ASO, '
         + '          B.ASOAPENOM APE_NOM_ASO '
         + '     FROM (SELECT X.CENEDUID, X.UBIGEO_DIR, X.CENPO, X.NOMCENEDU, X.DIREC, X.TURNO, Y.NIVEDU_DES '
         + '             FROM ASO_CEN_EDU X, NIV_CEN_EDU Y '
         + '            WHERE X.NIVEDU_ID = Y.NIVEDU_ID(+) ';

      If (Trim(txtDist.Text) <> '') Then
         xSQL := xSQL + ' AND X.UBIGEO_DIR = ' + QuotedStr(DM1.cdsDist.fieldbyname('ZIPID').AsString)
      Else
         If (Trim(txtProv.Text) <> '') Then
            xSQL := xSQL + ' AND SUBSTR(X.UBIGEO_DIR, 1, 4) = ' + QuotedStr(DM1.cdsProvin.fieldbyname('CIUDID').AsString)
         Else
            If (Trim(txtDpto.Text) <> '') Then
               xSQL := xSQL + ' AND SUBSTR(X.UBIGEO_DIR, 1, 2) = ' + QuotedStr(DM1.cdsDpto.fieldbyname('DPTOID').AsString);

      xSQL := xSQL + ') A, '
         + '          (SELECT ASOID, ASOTIPID, ASOAPENOM, ASODNI, ASOCODMOD, CENEDUID '
         + '             FROM APO201 '
         + '            WHERE NVL(FALLECIDO, ''N'') = ''N'') B, '
         + '          (SELECT DPTOID, NVL(DPTODES, ''Z:DEPARTAMENTO NO UBICADO'') DPTODES '
         + '             FROM APO158) DPTO, '
         + '          (SELECT DPTOID, CIUDID, NVL(CIUDDES, ''Z:PROVINCIA NO UBICADA'') CIUDDES '
         + '             FROM APO123) PROV, '
         + '          (SELECT DPTOID, CIUDID, ZIPID, NVL(ZIPDES, ''Z:DISTRITO NO UBICADO'') ZIPDES '
         + '             FROM APO122) DIST '
         + '    WHERE A.CENEDUID = B.CENEDUID '
         + '      AND SUBSTR(A.UBIGEO_DIR, 1, 2) = DPTO.DPTOID(+) '
         + '      AND SUBSTR(A.UBIGEO_DIR, 1, 2) = PROV.DPTOID(+) '
         + '      AND SUBSTR(A.UBIGEO_DIR, 1, 4) = PROV.CIUDID(+) '
         + '      AND SUBSTR(A.UBIGEO_DIR, 1, 2) = DIST.DPTOID(+) '
         + '      AND SUBSTR(A.UBIGEO_DIR, 1, 4) = DIST.CIUDID(+) '
         + '      AND A.UBIGEO_DIR = DIST.ZIPID(+) '
         + '    ORDER BY DPTO.DPTODES, PROV.CIUDDES, DIST.ZIPDES, A.CENPO, A.NOMCENEDU, A.DIREC, A.TURNO, '
         + '             A.NIVEDU_DES, B.ASOTIPID';

      DM1.cdsQry1.Close;
      DM1.cdsQry1.DataRequest(xSQL);
      DM1.cdsQry1.Open;
      Screen.Cursor := crDefault;
      If DM1.cdsQry1.RecordCount > 0 Then result := true;
   End;
Begin

   If (trim(txtDpto.Text) <> '') Then
      Begin
         If isProceso Then
            Begin
               btnExportar.Enabled := true;
               btnImprimir.Enabled := true;
               pintarGrilla()
            End;
      End
   Else
      showmessage('Seleccione un Departamento');
End;

(******************************************************************************)
Procedure TfRptAsoCenEdu.btnExportarClick(Sender: TObject);
Begin
   Screen.Cursor := crHourGlass;
   Try
      With dbgPrincipal, dbgPrincipal.ExportOptions Do
         Begin
            ExportType := wwgetSYLK;
            FileName := 'AsoCenEdu.slk';
            DM1.OpcionesExportExcel(dbgPrincipal.ExportOptions);
            dbgPrincipal.ExportOptions.TitleName := 'Asociados';
            Save;
            If Not (esoClipboard In Options) Then
               ShellExecute(Handle, 'Open', PChar(dbgPrincipal.exportoptions.Filename), Nil, Nil, sw_shownormal);
         End;
      Screen.Cursor := crDefault;
   Except
      Screen.Cursor := crDefault;
      showmessage('No se puede grabar el Archivo ' + chr(13) + 'Cierre todos los Archivos en Excel y vuelva a intentarlo');
   End;
End;

(******************************************************************************)
procedure TfRptAsoCenEdu.btnImprimirClick(Sender: TObject);
begin
   ppltitulo.Caption := 'ASOCIADOS POR CENTRO EDUCATIVO';
   pprPrincipal.Print;
   //ppdPrincipal.Show;
end;
(******************************************************************************)

End.
//FIN HPP_201112_GESCOB

