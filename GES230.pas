// Inicio Uso Estándares: 01/08/2011
// Unidad : Gestión de Cobranzas
// Formulario : fDistCart1
// Fecha de Creación :
// Autor : Equipo de Sistemas
// Objetivo : Distribucion de Asociados para su Gestion
// Actualizaciones:
// HPC_201119_GESCOB 04/10/2011 Acuerdo de Atencion 2011-02-V2.0
// HPC_201202_GESCOB 27/01/2012 Colocar Matriz de Prioridades
// HPC_201207_GESCOB - F1 12/09/2012 validar control de metas por gestor
// DPP_201206_GESCOB: Pase a producción a partir de los pases HPC_201207
// HPC_201209_GESCOB(F5) 29/10/2012 CREACION DE TIPOS DE ZONA (ALEJADA/CERCANA)
// HPC_201301_GESCOB 19/02/2013 Poder asignar cartera por provincia
// SPP_201301_GESCOB   : El pase a producción se realiza de acuerdo al HPC_201301_GESCOB
// SPP_201401_GESCOB: Importacion masiva interna y Mejoras del proceso de priorizacion
// SPP_201401_GESCOB: Se realiza el pase a producción a partir del HPC_201401_GESCOB
// HPC_201402_GESCOB: Colocar un filtro al combo box del colegios (1.8)
// SPP_201402_GESCOB: Se realiza el pase a producción a partir del HPC_201402_GESCOB

Unit GES230;

Interface

Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, Mask, wwdbedit, StdCtrls, ExtCtrls, wwdblook, Buttons, Grids,
   Wwdbigrd, Wwdbgrid, Db, Gauges, ppDB, ppDBPipe, ppCtrls, ppBands, ppVar,
   ppPrnabl, ppClass, ppCache, ppComm, ppRelatv, ppProd, ppReport, fcButton,
   fcImgBtn, fcShapeBtn, Spin
   // INICIO : SPP_201402_GESCOB
   , Wwdbdlg;
   // FIN : SPP_201402_GESCOB

Type
   TfDistCart1 = Class(TForm)
      GroupBox1 : TGroupBox;
      BitSalir : TBitBtn;
      grpDetalle : TGroupBox;
      Label5 : TLabel;
      Label6 : TLabel;
      pnlMontos : TPanel;
      Label2 : TLabel;
      Label3 : TLabel;
      Label4 : TLabel;
      dbeMtoIni : TwwDBEdit;
      dbeMtoFin : TwwDBEdit;
      BitMostrar : TBitBtn;
      Panel2 : TPanel;
      EdtOfDes : TEdit;
      dblOriOto : TwwDBLookupCombo;
      dblUses : TwwDBLookupCombo;
      Panel3 : TPanel;
      EdtDesUse : TEdit;
      dblTipAso : TwwDBLookupCombo;
      Label7 : TLabel;
      Panel4 : TPanel;
      EdtTipAso : TEdit;
      pAsigna : TPanel;
      BitAsigna : TBitBtn;
      dblUserInt : TwwDBLookupCombo;
      dblUserExt : TwwDBLookupCombo;
      Panel5 : TPanel;
      EdtUserNom : TEdit;
      rdbInt : TRadioButton;
      rdbExt : TRadioButton;
      Label8 : TLabel;
      Shape1 : TShape;
      lblTipGest : TLabel;
      dtgCartera : TwwDBGrid;
      chkSaldo : TCheckBox;
      grpProgress : TGroupBox;
      Gauge1 : TGauge;
      Panel6 : TPanel;
      Label10 : TLabel;
      dbeMonMin : TwwDBEdit;
      Label9 : TLabel;
      dbeMonMax : TwwDBEdit;
      lblRotulo : TLabel;
      RepFallecidos : TppReport;
      ppHeaderBand43 : TppHeaderBand;
      ppLabel870 : TppLabel;
      ppLabel880 : TppLabel;
      ppLabel881 : TppLabel;
      ppLabel892 : TppLabel;
      ppLabel893 : TppLabel;
      ppLabel894 : TppLabel;
      ppSystemVariable89 : TppSystemVariable;
      ppSystemVariable90 : TppSystemVariable;
      ppSystemVariable91 : TppSystemVariable;
      ppLabel895 : TppLabel;
      ppLabel896 : TppLabel;
      ppLabel897 : TppLabel;
      lblTit01 : TppLabel;
      ppLine220 : TppLine;
      ppLine222 : TppLine;
      ppLabel901 : TppLabel;
      ppLabel903 : TppLabel;
      ppLabel904 : TppLabel;
      ppLabel906 : TppLabel;
      ppLabel905 : TppLabel;
      ppLabel902 : TppLabel;
      ppLabel908 : TppLabel;
      ppLabel907 : TppLabel;
      ppLabel909 : TppLabel;
      ppDetailBand46 : TppDetailBand;
      ppDBText354 : TppDBText;
      ppDBText355 : TppDBText;
      ppDBText356 : TppDBText;
      ppDBText357 : TppDBText;
      ppDBText361 : TppDBText;
      ppDBText353 : TppDBText;
      ppDBText358 : TppDBText;
      ppDBText359 : TppDBText;
      ppDBText360 : TppDBText;
      ppFooterBand38 : TppFooterBand;
      ppSummaryBand43 : TppSummaryBand;
      ppDBCalc273 : TppDBCalc;
      ppDBCalc274 : TppDBCalc;
      ppDBCalc275 : TppDBCalc;
      ppDBCalc276 : TppDBCalc;
      ppLine221 : TppLine;
      ppLine225 : TppLine;
      ppLabel899 : TppLabel;
      ppLabel900 : TppLabel;
      DbConAsig : TppDBPipeline;
      BitBuscar : TBitBtn;
      grpBusAso : TGroupBox;
      z2bbtnBuscar : TfcShapeBtn;
      edtBuscar : TEdit;
      ChkIndidual : TCheckBox;
      chkSaldoTotal : TCheckBox;
      pRango : TPanel;
      ChkRango : TCheckBox;
      SpFin_R : TSpinEdit;
      Label14 : TLabel;
      Label15 : TLabel;
      rdbSeleccion : TRadioGroup;
      Label11 : TLabel;
      Shape3 : TShape;
      bbtnAsignaUno : TBitBtn;
      Label16 : TLabel;
      dblcDpto : TwwDBLookupCombo;
      Panel1 : TPanel;
      edtDpto : TEdit;
      Label17 : TLabel;
      dblcProvin : TwwDBLookupCombo;
      Panel7 : TPanel;
      edtProvin : TEdit;
      Label18 : TLabel;
      dblcDist : TwwDBLookupCombo;
      Panel8 : TPanel;
      edtDist : TEdit;
      Bevel1 : TBevel;
      Bevel2 : TBevel;
      Bevel3 : TBevel;
      Label1 : TLabel;
      dblcPrioridad : TwwDBLookupCombo;
      Panel9 : TPanel;
      EdtPrioridad : TEdit;
      Bevel4 : TBevel;
      Bevel6 : TBevel;
      Shape2 : TShape;
      lblRegistros : TLabel;
      Bevel5 : TBevel;
      // INICIO : SPP_201401_GESCOB
      rgRefinanciados : TRadioGroup;
      GroupBox2 : TGroupBox;      
      Shape4 : TShape;
      Label21 : TLabel;
      Shape5 : TShape;
      Label22 : TLabel;
      cbCobertura: TCheckBox;
      rgUbigeo: TRadioGroup;
      rgTipCam: TRadioGroup;      
      Panel10: TPanel;
      pnlColegio: TPanel;
      Label12: TLabel;
      // INICIO : SPP_201402_GESCOB
      dblcColegio: TwwDBLookupComboDlg;
      // FIN : SPP_201402_GESCOB
      edtColegio: TEdit;
      // FIN : SPP_201401_GESCOB
      Procedure dblTipCalfChange(Sender : TObject);
      Procedure dblOriOtoChange(Sender : TObject);
      Procedure dblUsesChange(Sender : TObject);
      Procedure dblTipAsoChange(Sender : TObject);
      Procedure FormKeyPress(Sender : TObject; Var Key : Char);
      Procedure dbeMtoIniKeyPress(Sender : TObject; Var Key : Char);
      Procedure dbeMtoFinKeyPress(Sender : TObject; Var Key : Char);
      Procedure BitMostrarClick(Sender : TObject);
      Procedure rdbIntClick(Sender : TObject);
      Procedure rdbExtClick(Sender : TObject);
      Procedure dblUserExtChange(Sender : TObject);
      Procedure dblUserIntChange(Sender : TObject);
      Procedure FormActivate(Sender : TObject);
      Procedure chkSaldoClick(Sender : TObject);
      Procedure BitAsignaClick(Sender : TObject);
      Procedure dtgCarteraDrawDataCell(Sender : TObject; Const Rect : TRect;
         Field : TField; State : TGridDrawState);
      Procedure dtgCarteraDrawFooterCell(Sender : TObject; Canvas : TCanvas;
         FooterCellRect : TRect; Field : TField; FooterText : String;
         Var DefaultDrawing : Boolean);
      Procedure dtgCarteraDrawTitleCell(Sender : TObject; Canvas : TCanvas;
         Field : TField; Rect : TRect; Var DefaultDrawing : Boolean);
      Procedure dbeMtoIniExit(Sender : TObject);
      Procedure dbeMtoFinExit(Sender : TObject);
      Procedure BitBuscarClick(Sender : TObject);
      Procedure edtBuscarChange(Sender : TObject);
      Procedure edtBuscarKeyPress(Sender : TObject; Var Key : Char);
      Procedure chkSaldoTotalClick(Sender : TObject);
      Procedure SpFin_RChange(Sender : TObject);
      Procedure SpFinChange(Sender : TObject);
      Procedure SpInicioChange(Sender : TObject);
      Procedure dbeMtoFinChange(Sender : TObject);
      Procedure dbeMtoIniChange(Sender : TObject);
      Procedure EdtTipAsoChange(Sender : TObject);
      Procedure rdbSeleccionClick(Sender : TObject);
      Procedure BitSalirClick(Sender : TObject);
      Procedure bbtnAsignaUnoClick(Sender : TObject);
      Procedure dblcDptoChange(Sender : TObject);
      Procedure dblcProvinChange(Sender : TObject);
      Procedure dblcDistChange(Sender : TObject);
      Procedure dblcPrioridadChange(Sender : TObject);
      Procedure rgRefinanciadosClick(Sender : TObject);
      procedure cbCoberturaClick(Sender: TObject);
      // INICIO : SPP_201401_GESCOB      
      procedure rgUbigeoClick(Sender: TObject);
      procedure rgTipCamClick(Sender: TObject);      
      procedure dblcColegioChange(Sender: TObject);
      // FIN : SPP_201401_GESCOB
   Private
    { Private declarations }
      xTipoCartera : String;
      xPeriodoCartera : String;
      // INICIO : SPP_201401_GESCOB
      xsZipIdCol : string;
      xsTipCam : String;
      // FIN : SPP_201401_GESCOB
      Procedure LimpiaGrid;
      Procedure MontosBetween(xSQL : String);
      Procedure Footers(xSQL : String);
      // INICIO : SPP_201401_GESCOB
      procedure fn_cargar_colegios;
      // FIN : SPP_201401_GESCOB
   Public
    { Public declarations }
   End;

Var
   fDistCart1 : TfDistCart1;

Implementation

Uses GESDM1, GES203h, StrUtils;

{$R *.dfm}

Procedure TfDistCart1.dblTipCalfChange(Sender : TObject);
Begin
   LimpiaGrid;

End;

Procedure TfDistCart1.dblOriOtoChange(Sender : TObject);
Var
   xSQL : String;
Begin
   LimpiaGrid;
   If DM1.cdsDFam.Locate('OFDESID', VarArrayof([dblOriOto.text]), []) Then
   Begin
      EdtOfDes.Text := DM1.cdsDFam.FieldByName('OFDESNOM').Asstring;
      xSQL := 'SELECT USEID,USENOM FROM APO101 WHERE OFDESID=' + QuotedStr(dblOriOto.text) + ' AND (FLGACT<>''!'' OR FLGACT IS NULL)  ORDER BY USEID';
      DM1.cdsTUSE.Close;
      DM1.cdsTUSE.DataRequest(xSQL);
      DM1.cdsTUSE.Open;
      dblUses.LookupTable := DM1.cdsTUSE;
      If DM1.cdsTUSE.RecordCount > 0 Then dblUses.Enabled := True;
   End
   Else
   Begin
      If Length(dblOriOto.Text) <> 2 Then
      Begin
         Beep;
         EdtOfDes.Text := '';
      End;
   End

End;

Procedure TfDistCart1.dblUsesChange(Sender : TObject);
Begin
   LimpiaGrid;
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

Procedure TfDistCart1.dblTipAsoChange(Sender : TObject);
Begin
   LimpiaGrid;
   If DM1.cdsTAso.Locate('ASOTIPID', VarArrayof([dblTipAso.text]), []) Then
   Begin
      EdtTipAso.Text := DM1.cdsTAso.FieldByName('ASOTIPDES').Asstring;
   End
   Else
   Begin
      If Length(dblTipAso.Text) <> 2 Then
      Begin
         Beep;
         EdtTipAso.Text := '';
      End;
   End

End;

Procedure TfDistCart1.FormKeyPress(Sender : TObject; Var Key : Char);
Begin
   If Key = #13 Then
   Begin
      Key := #0;
      Perform(WM_NEXTDLGCTL, 0, 0);
   End

End;

Procedure TfDistCart1.dbeMtoIniKeyPress(Sender : TObject; Var Key : Char);
Begin
   If Key In [' ', 'A'..'Z', 'a'..'z', '°', '|', '!', '"', '#', '$', '%', '&', '/', '(', ')', '=', '?', '\', '¡', '¿', '@', '¨', '´', '*', '+', '~', '~', '[', ']', '{', '}', '^', '`', '<', '>', ';', ',', ':', '''', '-', '_'] Then
      Key := #0;

End;

Procedure TfDistCart1.dbeMtoFinKeyPress(Sender : TObject; Var Key : Char);
Begin
   If Key In [' ', 'A'..'Z', 'a'..'z', '°', '|', '!', '"', '#', '$', '%', '&', '/', '(', ')', '=', '?', '\', '¡', '¿', '@', '¨', '´', '*', '+', '~', '~', '[', ']', '{', '}', '^', '`', '<', '>', ';', ',', ':', '''', '-', '_'] Then
      Key := #0;

End;

Procedure TfDistCart1.BitMostrarClick(Sender : TObject);
Var
   xSQL, xSQL1, xSQL2, xSQL3, xSQL4, xSQL5, xSQLOf, xSQLZip, sTipGes : String;
   xRefinanciado : String;
   xCobertura, xsIS_ZONA_ALEJADA : String;
Begin
   BitMostrar.Tag := 1;

   // Inicio: SPP_201301_GESCOB 19/02/2013 Poder asignar cartera por provincia
   if not cbCobertura.Checked then
   begin
     If (Length(Trim(edtProvin.Text)) = 0) Then
     Begin
        MessageDlg('Debe Seleccionar Departamento/Provincia !!', mtError, [mbOk], 0);
        Exit;
     End;
   end
   else
   begin
     If (Length(Trim(edtProvin.Text)) = 0) Then
     Begin
        MessageDlg('Debe Seleccionar Departamento/Provincia !!', mtError, [mbOk], 0);
        Exit;
     End;
   end;
// Fin: SPP_201301_GESCOB 19/02/2013 Poder asignar cartera por provincia

   If (rdbInt.Checked = False) And (rdbExt.Checked = False) Then
   Begin
      MessageDlg(' Seleccione algún TIPO DE GESTIÓN!!', mtError, [mbOk], 0);
      Exit;
   End;

   If rdbInt.Checked Then
      sTipGes := '01'
   Else
      sTipGes := '02';

   If Length(Trim(EdtDesUse.Text)) = 0 Then
      xSQL1 := ''
   Else
      xSQL1 := ' AND USEID=' + QuotedStr(dblUses.Text) + ' ';

   If Length(Trim(EdtTipAso.Text)) = 0 Then
      xSQL2 := ''
   Else
      xSQL2 := ' AND ASOTIPID=' + QuotedStr(dblTipAso.Text) + ' ';

   xSQLOf := '';
   If Length(Trim(EdtOfDes.Text)) <> 0 Then
      xSQLOf := 'OFDESID=' + QuotedStr(dblOriOto.Text);


// INICIO : SPP_201401_GESCOB 
   xSQLZip := '';
   If Length(Trim(edtDpto.Text)) <> 0 Then
      xSQLZip := 'ZIPID'+xsZipIdCol+' LIKE ''' + dblcDpto.text;
   If Length(Trim(edtProvin.Text)) <> 0 Then
      xSQLZip := xSQLZip + dblcProvin.text;
   If Length(Trim(edtDist.Text)) <> 0 Then
      xSQLZip := xSQLZip + dblcDist.text;
   If xSQLZip <> '' Then
      xSQLZip := xSQLZip + '%'' ';
   If (xSQLZip <> '') And (xSQLOf <> '') Then
      xSQLZip := ' and ' + xSQLZip;   
   
   IF (rgUbigeo.ItemIndex = 1) AND (edtColegio.Text <> '') then
   begin
      xSQLZip := xSQLZip + ' AND A.CENEDUID = ' + QuotedStr(edtColegio.Text)
   end;
   // FIN : SPP_201401_GESCOB

   if rdbExt.Checked Then
      xsIS_ZONA_ALEJADA := '1'
   else
      xsIS_ZONA_ALEJADA := '0';

   // NVL(B.COD_TIPO_ZONA, 1) = 1 THEN ''S'' ELSE ''N'' END IS_ZONA_ALEJADA

   xCobertura:='';
   if cbCobertura.Checked then
      xCobertura:=' AND EXISTS ( SELECT COD_TIPO_ZONA FROM GES_COB_UBI_TIPO_ZONA '	 
// Inicio: SPP_201401_GESCOB
                 +              'WHERE ZIPID LIKE SUBSTR(A.ZIPID'+xsZipIdCol+',1,4)||''%'' AND NVL(COD_TIPO_ZONA,0)='''+xsIS_ZONA_ALEJADA+''' ) ';
// Fin: SPP_201401_GESCOB
   If (chkSaldoTotal.Checked = False) And (chkSaldo.Checked = False) Then xSQL3 := '';

   If chkSaldoTotal.Checked Then
   Begin
      If DM1.Valores(dbeMtoIni.Text) > DM1.Valores(dbeMtoFin.Text) Then
      Begin
         MessageDlg(' El Monto Inicial No Puede Ser Mayor Que El Monto Final..!!!!', mtError, [mbOk], 0);
         Exit;
      End;

      If DM1.Valores(dbeMtoIni.Text) = 0 Then
      Begin
         MessageDlg(' El Monto Inicial No Puede Ser 0.00!!!!', mtError, [mbOk], 0);
         Exit;
      End;

      If DM1.Valores(dbeMtoFin.Text) = 0 Then
      Begin
         MessageDlg(' El Monto Final No Puede Ser 0.00!!!!', mtError, [mbOk], 0);
         Exit;
      End;
      xSQL3 := ' AND SALTOT BETWEEN ' + FloatToStr(DM1.Valores(dbeMtoIni.Text)) + ' AND ' + FloatToStr(DM1.Valores(dbeMtoFin.Text)) + ' ';
   End;

   If chkSaldo.Checked Then
   Begin
      If DM1.Valores(dbeMtoIni.Text) > DM1.Valores(dbeMtoFin.Text) Then
      Begin
         MessageDlg(' El Monto Inicial No Puede Ser Mayor Que El Monto Final..!!!!', mtError, [mbOk], 0);
         Exit;
      End;

      If DM1.Valores(dbeMtoIni.Text) = 0 Then
      Begin
         MessageDlg(' El Monto Inicial No Puede Ser 0.00!!!!', mtError, [mbOk], 0);
         Exit;
      End;

      If DM1.Valores(dbeMtoFin.Text) = 0 Then
      Begin
         MessageDlg(' El Monto Final No Puede Ser 0.00!!!!', mtError, [mbOk], 0);
         Exit;
      End;
      xSQL3 := ' AND SALVEN BETWEEN ' + FloatToStr(DM1.Valores(dbeMtoIni.Text)) + ' AND ' + FloatToStr(DM1.Valores(dbeMtoFin.Text)) + ' ';

   End;

   If (trim(dblcPrioridad.Text) <> '') Then
      xSQL4 := ' AND EXISTS(SELECT AA.CODIGO_REGLA '
         + '              FROM GES_COB_REG AA '
         + '             WHERE AA.CODIGO_PRIORIDAD = ' + QuotedStr(dblcPrioridad.Text)
         + '               AND AA.CODIGO_REGLA = A.CODIGO_REGLA ) '
   Else
      xSQL4 := ' ';

   xSQL5 := '  ';
   If ChkRango.Checked Then
   Begin
      If DM1.Valores(SpFin_R.Text) = 0 Then
      Begin
         MessageDlg(' El Valor para Número de Registros No Puede Ser 0!!', mtError, [mbOk], 0);
         Exit;
      End;
      xSQL5 := ' AND ROWNUM <=' + QuotedStr(SpFin_R.Text) + ' ';

   End;

   Screen.Cursor := crHourGlass;

   Case rgRefinanciados.ItemIndex Of
      0 :
         Begin
            xRefinanciado := ' and EXISTS ( SELECT ASOID FROM GES000 WHERE PERIODO=''' + xPeriodoCartera + ''' and a.ASOID=ASOID AND SALDOS_RT>=0 ) ';
         End;
      1 :
         Begin
            xRefinanciado := ' and EXISTS ( SELECT ASOID FROM GES000 WHERE PERIODO=''' + xPeriodoCartera + ''' and A.ASOID=ASOID AND SALDOS_RT=0 ) '
         End;
      2 :
         Begin
            xRefinanciado := ' and EXISTS ( SELECT ASOID FROM GES000 WHERE PERIODO=''' + xPeriodoCartera + ''' and a.ASOID=ASOID AND SALDOS_RT>0 ) ';
         End;
   End;
   // INICIO : SPP_201402_GESCOB
   If rdbSeleccion.ItemIndex = 0 Then
   Begin
      xSQL := 'SELECT A.PERIODO,A.OFDESID,A.UPROID,A.UPAGOID,A.USEID,A.ASOID,A.ASOTIPID,A.ASOAPENOM,NVL(A.SALDOS_FT,0) SALDOS_FT,NVL(A.SALDOS_FP,0) SALDOS_FP,NVL(A.SALDOS_FV,0) SALDOS_FV, ' +
         '       A.CFC_N, A.CFC_R, A.CFC_F, NVL(A.CUOVEN,0) CUOVEN, NVL(A.CUOPEN,0) CUOPEN,NVL(A.CUOVEN+A.CUOPEN,0) CUOTOT,NVL(A.SALTOT,0) SALTOT,NVL(A.SALPEN,0) SALPEN,NVL(A.SALVEN,0) SALVEN,A.DIASTRANS,A.SALACT,A.VENACT,A.PENACT,A.ESTGES,A.DIASTRANSACT ' +
         ' ,''S'' PRI_ALTA ' +
         ' ,C.DESCRIPCION_PRIORIDAD PRIORIDAD ' +
         ' , ''-'' USUARIO, ''01'' TIPACT ' +
         ' ,NVL(SALDIF, 0) SALDIF, NVL(CUODIF, 0) CUODIF ' +
         ' FROM GES_COB_CAB A, GES_COB_REG B, GES_COB_PRI C ' +
         ' WHERE ' + xSQLOf + xSQLZip + xSQL1 + xSQL2 + xSQL3 + xSQL4 + xSQL5 +
         ' AND A.CODIGO_REGLA = B.CODIGO_REGLA(+) AND B.CODIGO_PRIORIDAD = C.CODIGO_PRIORIDAD(+) ' +
         ' AND NVL(ESTGES,''00'')<>''03'' ' +
         ' AND NOT EXISTS (SELECT ASOID FROM PVS301 WHERE A.ASOID=ASOID AND PVSTIPBEN=''02'') ' +
         ' AND NOT EXISTS (SELECT ASOID FROM COB_LOG_BLO WHERE A.ASOID=ASOID AND CODTIP=''02'') ' +
         ' AND NOT EXISTS (SELECT ASOID FROM TGE310 WHERE A.ASOID=ASOID AND RECAREA =''COB'' AND RECCONC IS NULL) ' +
         ' AND NOT EXISTS (SELECT ASOID FROM GES_COB_IND WHERE A.ASOID=ASOID AND ESTGES<>''03'' AND TIPGES=''' + sTipGes + ''') ' +
         xCobertura +
         xTipoCartera + xRefinanciado + 'ORDER BY C.CODIGO_PRIORIDAD, ASOAPENOM';
   End;

   If rdbSeleccion.ItemIndex = 1 Then
   Begin
      xSQL := 'SELECT A.PERIODO,A.OFDESID,A.UPROID,A.UPAGOID,A.USEID,A.ASOID,A.ASOTIPID,A.ASOAPENOM,NVL(A.SALDOS_FT,0) SALDOS_FT,NVL(A.SALDOS_FP,0) SALDOS_FP,NVL(A.SALDOS_FV,0) SALDOS_FV, ' +
         '       A.CFC_N, A.CFC_R, A.CFC_F, NVL(A.CUOVEN,0) CUOVEN, NVL(A.CUOPEN,0) CUOPEN,NVL(A.CUOVEN+A.CUOPEN,0) CUOTOT,NVL(A.SALTOT,0) SALTOT,NVL(A.SALPEN,0) SALPEN,NVL(A.SALVEN,0) SALVEN,A.DIASTRANS,A.SALACT,A.VENACT,A.PENACT,A.ESTGES,A.DIASTRANSACT ' +
         ' ,''S'' PRI_ALTA ' +
         ' ,C.DESCRIPCION_PRIORIDAD PRIORIDAD ' +
         ' , ''-'' USUARIO, ''02'' TIPACT ' +
         ' ,NVL(SALDIF, 0) SALDIF, NVL(CUODIF, 0) CUODIF ' +
         ' FROM GES_COB_CAB A, GES_COB_REG B, GES_COB_PRI C ' +
         ' WHERE ' + xSQLOf + xSQLZip + xSQL1 + xSQL2 + xSQL3 + xSQL4 + xSQL5 +
         ' AND A.CODIGO_REGLA = B.CODIGO_REGLA(+) AND B.CODIGO_PRIORIDAD = C.CODIGO_PRIORIDAD(+) ' +
         ' AND NVL(ESTGES,''00'')<>''03'' ' +
         ' AND NOT EXISTS (SELECT ASOID FROM PVS301 WHERE A.ASOID=ASOID AND PVSTIPBEN=''02'') ' +
         ' AND NOT EXISTS (SELECT ASOID FROM COB_LOG_BLO WHERE A.ASOID=ASOID AND CODTIP=''02'') ' +
         ' AND NOT EXISTS (SELECT ASOID FROM TGE310 WHERE A.ASOID=ASOID AND RECAREA =''COB'' AND RECCONC IS NULL) ' +
         ' AND NOT EXISTS (SELECT ASOID FROM GES_COB_DOM WHERE A.ASOID=ASOID AND ESTGES<>''03'' AND TIPGES=''' + sTipGes + ''') ' +
         xCobertura +
         xTipoCartera + xRefinanciado + 'ORDER BY C.CODIGO_PRIORIDAD , ASOAPENOM';
   End;
   // FIN : SPP_201402_GESCOB
   DM1.cdsMovCre.Close;
   DM1.cdsMovCre.DataRequest(xSQL);
   DM1.cdsMovCre.Open;
   TNumericField(DM1.cdsMovCre.FieldByName('SALTOT')).DisplayFormat := '###,###,##0.#0';
   TNumericField(DM1.cdsMovCre.FieldByName('SALVEN')).DisplayFormat := '###,###,##0.#0';
   TNumericField(DM1.cdsMovCre.FieldByName('SALPEN')).DisplayFormat := '###,###,##0.#0';
   TNumericField(DM1.cdsMovCre.FieldByName('SALACT')).DisplayFormat := '###,###,##0.#0';
   Footers(xSQL);
   MontosBetween(xSQL);
   Screen.Cursor := crDefault;
End;

Procedure TfDistCart1.rdbIntClick(Sender : TObject);
Var
   xSQL : String;
Begin
   LimpiaGrid;
   If rdbSeleccion.ItemIndex = 0 Then
      xSQL := 'SELECT USERNIV,A.USERID,B.USERNOM FROM GES_NIV_USU_OTO A,TGE006 B WHERE A.USERID=B.USERID AND REGACT=''S'' AND A.USERNIV IN (''N1'') AND TIPACT=''01'' ORDER BY USERID';
   If rdbSeleccion.ItemIndex = 1 Then
      xSQL := 'SELECT USERNIV,A.USERID,B.USERNOM FROM GES_NIV_USU_OTO A,TGE006 B WHERE A.USERID=B.USERID AND REGACT=''S'' AND A.USERNIV IN (''N1'') AND TIPACT=''02'' ORDER BY USERID';
   DM1.cdsQry6.Close;
   DM1.cdsQry6.DataRequest(xSQL);
   DM1.cdsQry6.Open;
   dblUserInt.Enabled := True;
   dblUserExt.Text := '';
   dblUserExt.Enabled := False;
   dblUserInt.Visible := True;
   dblUserExt.Visible := False;
   lblTipGest.Caption := 'Tipo de Gestión : ' + rdbInt.Caption;
   dblcProvinChange(dblcProvin);
End;

Procedure TfDistCart1.rdbExtClick(Sender : TObject);
Var
   xSQL : String;
Begin
   LimpiaGrid;
   If rdbSeleccion.ItemIndex = 0 Then
      xSQL := 'SELECT IDENTEXT USERID,DESENTEXT USERNOM,REGACT FROM GES_TIP_USU_EXT WHERE REGACT=''S'' AND TIPACT=''01''  ORDER BY USERID';
   If rdbSeleccion.ItemIndex = 1 Then
      xSQL := 'SELECT IDENTEXT USERID,DESENTEXT USERNOM,REGACT FROM GES_TIP_USU_EXT WHERE REGACT=''S'' AND TIPACT=''02''  ORDER BY USERID';
   DM1.cdsQry5.Close;
   DM1.cdsQry5.DataRequest(xSQL);
   DM1.cdsQry5.Open;
   dblUserInt.Enabled := False;
   dblUserInt.Text := '';
   dblUserExt.Enabled := True;
   dblUserInt.Visible := False;
   dblUserExt.Visible := True;
   lblTipGest.Caption := 'Tipo de Gestión : ' + rdbExt.Caption;
   dblcProvinChange(dblcProvin);
End;

Procedure TfDistCart1.dblUserExtChange(Sender : TObject);
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

Procedure TfDistCart1.dblUserIntChange(Sender : TObject);
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
// INICIO : SPP_201402_GESCOB
Procedure TfDistCart1.LimpiaGrid;
Var
   xSQL : String;
Begin
   Screen.Cursor := crHourGlass;

   xSQL := 'SELECT PERIODO,OFDESID,UPROID,UPAGOID,USEID,ASOID,	ASOTIPID,ASOAPENOM,SALDOS_FT,SALDOS_FP,SALDOS_FV, ' +
      'CFC_N,CFC_R,CFC_F,CUOVEN,CUOPEN,CUOVEN+CUOPEN CUOTOT,SALTOT,SALPEN,SALVEN,DIASTRANS,SALACT,VENACT,PENACT,ESTGES,DIASTRANSACT ' +
      ' , ''N'' PRI_ALTA ' +
      ' , ''NORMAL'' PRIORIDAD ' +
      ' , ''-'' USUARIO, ''02'' TIPACT ' +
      ' ,NVL(SALDIF, 0) SALDIF, NVL(CUODIF, 0) CUODIF ' +
      'FROM GES_COB_CAB A WHERE 1 = 2';

   DM1.cdsMovCre.Close;
   DM1.cdsMovCre.DataRequest(xSQL);
   DM1.cdsMovCre.Open;
   Footers(xSQL);
   TNumericField(DM1.cdsMovCre.FieldByName('SALTOT')).DisplayFormat := '###,###,##0.#0';
   TNumericField(DM1.cdsMovCre.FieldByName('SALVEN')).DisplayFormat := '###,###,##0.#0';
   TNumericField(DM1.cdsMovCre.FieldByName('SALPEN')).DisplayFormat := '###,###,##0.#0';
   TNumericField(DM1.cdsMovCre.FieldByName('SALACT')).DisplayFormat := '###,###,##0.#0';
   lblRegistros.Caption := '0 Registros ';
   Screen.Cursor := crDefault;
End;
// FIN : SPP_201402_GESCOB
// INICIO : SPP_201401_GESCOB
(******************************************************************************)
Procedure TfDistCart1.FormActivate(Sender : TObject);
Var
   xSQL : String;
Begin
   xsZipIdCol := ''; // POR DEFECTO ZIP DOMICILIO
   xsTipCam := 'NORMAL'; // POR DEFECTO ES NORMAL

   xSQL := 'SELECT DPTOID, DPTODES, DPTOABR FROM APO158 ORDER BY DPTOID';
   DM1.cdsDpto.Close;
   DM1.cdsDpto.DataRequest(xSQL);
   DM1.cdsDpto.Open;

   xSQL := 'SELECT CIUDID, CIUDDES, CIUDABR, DPTOID FROM TGE121 ORDER BY DPTOID, CIUDID';
   DM1.cdsProvin.Close;
   DM1.cdsProvin.DataRequest(xSQL);
   DM1.cdsProvin.Open;

   // INICIO HPC_201209_GESCOB(F5)
   //xSQL := 'SELECT ZIPABR,ZIPDES,ZIPID,CIUDID,DPTOID FROM TGE122 ORDER BY DPTOID, CIUDID, ZIPID';
   xSQL :=
      '   SELECT A.ZIPABR, A.ZIPDES, A.DPTOID, A.CIUDID, A.ZIPID, '
      + '        CASE WHEN NVL(B.COD_TIPO_ZONA, 1) = 1 THEN ''S'' ELSE ''N'' END IS_ZONA_ALEJADA '
      + '   FROM TGE122 A, GES_COB_UBI_TIPO_ZONA B '
      + '  WHERE A.DPTOID || A.CIUDID || A.ZIPID = B.ZIPID(+) '
      + '  ORDER BY A.DPTOID, A.CIUDID, A.ZIPID';
   // FIN HPC_201209_GESCOB(F5)
   DM1.cdsDist.Close;
   DM1.cdsDist.DataRequest(xSQL);
   DM1.cdsDist.Open;
   
   fn_cargar_colegios();
   pnlColegio.Visible := rgUbigeo.ItemIndex = 1;
   
   LimpiaGrid;

   xSQL := 'select MAX(PERIODO) PERIODO from GES_COB_CAB';
   DM1.cdsQry1.Close;
   DM1.cdsQry1.DataRequest(xSQL);
   DM1.cdsQry1.Open;

   xPeriodoCartera := DM1.cdsQry1.FieldByname('PERIODO').AsString;

   xSQL := 'SELECT C.CODIGO_PRIORIDAD, C.DESCRIPCION_PRIORIDAD '
      + '  FROM GES_COB_PRI C '
      + ' ORDER BY C.CODIGO_PRIORIDAD ';
   DM1.cdsUPro.Close;
   DM1.cdsUPro.DataRequest(xSQL);
   DM1.cdsUPro.Open;

   DM1.cdsDpto.Filtered := False;
   DM1.cdsDpto.Filter := '';

   DM1.cdsProvin.Filter := 'DPTOID=''' + dblcDpto.text + '''';
   DM1.cdsProvin.Filtered := true;

   DM1.cdsProvin.Filtered := False;
   DM1.cdsProvin.Filter := 'DPTOID=''' + dblcDpto.text + '''';
   DM1.cdsProvin.Filtered := true;
   DM1.cdsDist.Filtered := False;
   DM1.cdsDist.Filter := 'DPTOID=''' + dblcDpto.text + ''' and CIUDID=''' + dblcProvin.text + '''';
   DM1.cdsDist.Filtered := true;

   rdbInt.checked := true;
   rdbIntClick(rdbInt);
End;
(******************************************************************************)
// FIN : SPP_201401_GESCOB

Procedure TfDistCart1.chkSaldoClick(Sender : TObject);
Begin
   If chkSaldo.Checked Then
   Begin
      chkSaldoTotal.Checked := False;
      pnlMontos.Enabled := True;
      dbeMtoIni.Text := '0.00';
      dbeMtoFin.Text := '0.00';
      lblRotulo.Visible := True;
      lblRotulo.Caption := 'SALDOS VENCIDOS';
   End
   Else
   Begin
      pnlMontos.Enabled := False;
      dbeMtoIni.Text := '';
      dbeMtoFin.Text := '';
      lblRotulo.Caption := 'SALDOS';
      lblRotulo.Visible := False;
   End

End;

Procedure TfDistCart1.Footers(xSQL : String);
Begin
   xSQL := 'SELECT SUM(NVL(SALTOT,0)) SALTOT,SUM(NVL(SALVEN,0)) SALVEN,SUM(NVL(SALPEN,0)) SALPEN,SUM(NVL(SALACT,0)) SALACT FROM (' + xSQL + ')';
   DM1.cdsQry3.Close;
   DM1.cdsQry3.DataRequest(xSQL);
   DM1.cdsQry3.Open;
   dtgCartera.ColumnByName('ASOAPENOM').FooterValue := 'Totales : ';
   dtgCartera.ColumnByName('SALTOT').FooterValue := FloatToStrF(DM1.cdsQry3.FieldByName('SALTOT').AsCurrency, ffNumber, 15, 2);
   dtgCartera.ColumnByName('SALVEN').FooterValue := FloatToStrF(DM1.cdsQry3.FieldByName('SALVEN').AsCurrency, ffNumber, 15, 2);
   dtgCartera.ColumnByName('SALPEN').FooterValue := FloatToStrF(DM1.cdsQry3.FieldByName('SALPEN').AsCurrency, ffNumber, 15, 2);
   dtgCartera.ColumnByName('SALACT').FooterValue := FloatToStrF(DM1.cdsQry3.FieldByName('SALACT').AsCurrency, ffNumber, 15, 2);
   DM1.cdsQry3.Close;
   lblRegistros.Caption := IntToStr(DM1.cdsMovCre.RecordCount) + ' Registros ';

End;
// INICIO : SPP_201402_GESCOB
Procedure TfDistCart1.BitAsignaClick(Sender : TObject);
Var
   xSQL, xAsoId, xUser, xTipGes, xTipTab : String;
   xReg : Integer;
Begin

   If dtgCartera.DataSource.DataSet.RecordCount = 0 Then
   Begin
      MessageDlg(' No Existe Datos Para ASIGNACION..!!!!', mtError, [mbOk], 0);
      Exit;
   End;
   If (Not rdbInt.Checked) And (Not rdbExt.Checked) Then
   Begin
      MessageDlg(' Debe Seleccionar Un Tipo de Gestion y un GESTOR DE COBRANZA..!!!!', mtError, [mbOk], 0);
      Exit;
   End;

   If rdbInt.Checked Then
   Begin
      If Length(Trim(dblUserInt.Text)) = 0 Then
      Begin
         MessageDlg(' Debe Seleccionar Un GESTOR DE COBRANZA INTERNO..!!!!', mtError, [mbOk], 0);
         Exit;
      End;
   End;
   If rdbExt.Checked Then
   Begin
      If Length(Trim(dblUserExt.Text)) = 0 Then
      Begin
         MessageDlg(' Debe Seleccionar Un GESTOR DE COBRANZA EXTERNO..!!!!', mtError, [mbOk], 0);
         Exit;
      End;
   End;

   If rdbInt.Checked Then
      If Not DM1.fn_is_asigno_meta_defecto(dblUserInt.Text, xPeriodoCartera) Then
      Begin
         MessageDlg('No se permite grabar si no asigna una meta!', mtError, [mbOk], 0);
         exit;
      End;

   If ChkIndidual.Checked Then
   Begin
      If (DM1.cdsMovCre.FieldByName('USUARIO').AsString <> '-') Then
      Begin
         showmessage('El Asociado ya esta Asignado a un Gestor');
         exit;
      End;

      xAsoId := DM1.cdsMovCre.FieldByName('ASOID').AsString;
      If rdbInt.Checked Then
      Begin
         xUser := dblUserInt.Text;
         xTipGes := '01';
      End
      Else
         If rdbExt.Checked Then
         Begin
            xUser := dblUserExt.Text;
            xTipGes := '02';
         End;
// INICIO : SPP_201401_GESCOB
      If rdbSeleccion.ItemIndex = 0 Then
         xSQL := 'INSERT INTO GES_COB_IND '
            + '    (PERIODO, OFDESID, USEID, UPAGOID, UPROID, CFC_F, CFC_N, ASOTIPID, ASOID, ASOAPENOM, SALVEN,  '
            + '     SALPEN, SALTOT, CUOVEN, CUOPEN, ESTDES, SALACT, RESGES, USUARIO,     USUASIG, FECASIG, ESTGES, TIPGES, ESTDEU, CFC_R, VENACT, PENACT, DIASTRANS, OBSGES, FHCIERRE, OFDES_ASIG,     DIASTRANSACT, ZIPID, CODIGO_REGLA, ZIPIDCOL, CENEDUID, TIPCAM '
            + '   , SALDIF, CUODIF) '
            + 'SELECT PERIODO, OFDESID, USEID, UPAGOID, UPROID, CFC_F, CFC_N, ASOTIPID, ASOID, ASOAPENOM, SALVEN, SALPEN, SALTOT, CUOVEN, CUOPEN, ''ASIGNADA'', SALACT, ''02'', ' + QuotedStr(xUser) + ', ' + QuotedStr(DM1.wUsuario) + ',SYSDATE,''01'',' + QuotedStr(xTipGes) + ',''01'',CFC_R, 0, 0, DIASTRANS,NULL,NULL,''' + DM1.xOfiDes + ''', DIASTRANSACT, ZIPID, CODIGO_REGLA, ZIPIDCOL, CENEDUID , '+QuotedStr(xsTipCam)+', SALDIF, CUODIF FROM GES_COB_CAB WHERE ASOID=' + QuotedStr(xAsoId) + ' AND ESTGES IS NULL '
      Else
         If rdbSeleccion.ItemIndex = 1 Then
            xSQL := 'INSERT INTO GES_COB_DOM '
               + '    (PERIODO, OFDESID, USEID, UPAGOID, UPROID, CFC_F, CFC_N, ASOTIPID, ASOID, ASOAPENOM, SALVEN,  '
               + '     SALPEN, SALTOT, CUOVEN, CUOPEN, ESTDES, SALACT, RESGES, USUARIO,     USUASIG, FECASIG, ESTGES, TIPGES, ESTDEU, CFC_R, VENACT, PENACT, DIASTRANS, OBSGES, FHCIERRE, OFDES_ASIG,     DIASTRANSACT, ZIPID, CODIGO_REGLA, ZIPIDCOL, CENEDUID, TIPCAM'
               + '   , SALDIF, CUODIF) '
               + 'SELECT PERIODO, OFDESID, USEID, UPAGOID, UPROID, CFC_F, CFC_N, ASOTIPID, ASOID, ASOAPENOM, SALVEN, SALPEN, SALTOT, CUOVEN, CUOPEN, ''ASIGNADA'', SALACT, ''02'', ' + QuotedStr(xUser) + ', ' + QuotedStr(DM1.wUsuario) + ',SYSDATE,''01'',' + QuotedStr(xTipGes) + ',''01'',CFC_R, 0, 0, DIASTRANS,NULL,NULL,''' + DM1.xOfiDes + ''', DIASTRANSACT, ZIPID, CODIGO_REGLA, ZIPIDCOL, CENEDUID, '+QuotedStr(xsTipCam)+', SALDIF, CUODIF FROM GES_COB_CAB WHERE ASOID=' + QuotedStr(xAsoId) + ' AND ESTGES IS NULL ';
// FIN : SPP_201401_GESCOB
      DM1.DCOM1.AppServer.EjecutaSql(xSQL);
      xSQL := 'UPDATE GES_COB_CAB SET ESTGES=''01'' WHERE ASOID=' + QuotedStr(xAsoId);
      DM1.DCOM1.AppServer.EjecutaSql(xSQL);

      If rdbSeleccion.ItemIndex = 0 Then xTipTab := 'TEL';
      If rdbSeleccion.ItemIndex = 1 Then xTipTab := 'DOM';

      xSQL := 'SELECT count(*) REG FROM DB2ADMIN.GES_COB_LOG '
         + 'WHERE TIPTABLA=''' + xTipTab + ''' AND PERIODO=''' + xPeriodoCartera + ''' '
         + ' AND TIPGES=''' + xTipGes + ''' AND USUARIO=' + QuotedStr(xUser);
      DM1.cdsQry7.Close;
      DM1.cdsQry7.DataRequest(xSQL);
      DM1.cdsQry7.Open;
      If DM1.cdsQry7.FieldByname('REG').AsInteger <= 0 Then
         xSQL := 'INSERT INTO DB2ADMIN.GES_COB_LOG( TIPTABLA, TIPGES, PERIODO, USUASIG, FECREG, USUARIO, TOTGESASI ) '
            + 'Values( ''' + xTipTab + ''', ''' + xTipGes + ''', ''' + xPeriodoCartera + ''', ' + QuotedStr(DM1.wUsuario) + ', sysdate, ' + QuotedStr(xUser) + ', 1 ) '
      Else
         xSQL := 'UPDATE DB2ADMIN.GES_COB_LOG SET TOTGESTRA=TOTGESTRA+1, USUCIE=' + QuotedStr(DM1.wUsuario) + ', FECCIE=SYSDATE '
            + 'WHERE TIPTABLA=''' + xTipTab + ''' and TIPGES=''' + xTipGes + ''' and PERIODO=''' + xPeriodoCartera + ''' '
            + ' and USUARIO=''' + xUser + ''' and USUCIE is null';
      DM1.DCOM1.AppServer.EjecutaSql(xSQL);

      dblUserInt.Text := '';
      dblUserExt.Text := '';
      BitMostrar.OnClick(BitMostrar);
   End
   Else
   Begin
      xReg := 0;
      grpProgress.Visible := True;
      Gauge1.MaxValue := DM1.cdsMovCre.RecordCount;
      DM1.cdsMovCre.First;
      While Not DM1.cdsMovCre.Eof Do
      Begin
         If (DM1.cdsMovCre.FieldByName('USUARIO').AsString = '-') Then
         Begin
            xReg := xReg + 1;
            Refresh;
            Gauge1.Progress := xReg;
            xAsoId := DM1.cdsMovCre.FieldByName('ASOID').AsString;
            If rdbInt.Checked Then
            Begin
               xUser := dblUserInt.Text;
               xTipGes := '01';
            End
            Else
               If rdbExt.Checked Then
               Begin
                  xUser := dblUserExt.Text;
                  xTipGes := '02';
               End;
// INICIO : SPP_201401_GESCOB
            If rdbSeleccion.ItemIndex = 0 Then
               xSQL := 'INSERT INTO GES_COB_IND '
                  + '    (PERIODO, OFDESID, USEID, UPAGOID, UPROID, CFC_F, CFC_N, ASOTIPID, ASOID, ASOAPENOM, SALVEN,  SALPEN, '
                  + '     SALTOT, CUOVEN, CUOPEN, ESTDES, SALACT, RESGES, USUARIO,     USUASIG, FECASIG, ESTGES, TIPGES, ESTDEU, CFC_R, VENACT, PENACT, DIASTRANS, OBSGES, FHCIERRE, OFDES_ASIG,     DIASTRANSACT, ZIPID, CODIGO_REGLA, ZIPIDCOL, CENEDUID, TIPCAM, SALDIF, CUODIF) '
                  + 'SELECT PERIODO, OFDESID, USEID, UPAGOID, UPROID, CFC_F, CFC_N, ASOTIPID, ASOID, ASOAPENOM, SALVEN, SALPEN, SALTOT, CUOVEN, CUOPEN, ''ASIGNADA'', SALACT, ''02'', ' + QuotedStr(xUser) + ', ' + QuotedStr(DM1.wUsuario) + ',SYSDATE,''01'',' + QuotedStr(xTipGes) + ',''01'',CFC_R, 0, 0, DIASTRANS,NULL,NULL,''' + DM1.xOfiDes + ''', DIASTRANSACT, ZIPID, CODIGO_REGLA, ZIPIDCOL, CENEDUID, '+QuotedStr(xsTipCam)+', SALDIF, CUODIF FROM GES_COB_CAB WHERE ASOID=' + QuotedStr(xAsoId)
            Else
               If rdbSeleccion.ItemIndex = 1 Then
                  xSQL := 'INSERT INTO GES_COB_DOM '
                     + '    (PERIODO, OFDESID, USEID, UPAGOID, UPROID, CFC_F, CFC_N, ASOTIPID, ASOID, ASOAPENOM, SALVEN,  SALPEN, '
                     + '     SALTOT, CUOVEN, CUOPEN, ESTDES, SALACT, RESGES, USUARIO,     USUASIG, FECASIG, ESTGES, TIPGES, ESTDEU, CFC_R, VENACT, PENACT, DIASTRANS, OBSGES, FHCIERRE, OFDES_ASIG,     DIASTRANSACT, ZIPID, CODIGO_REGLA, ZIPIDCOL, CENEDUID, TIPCAM, SALDIF, CUODIF) '
                     + 'SELECT PERIODO, OFDESID, USEID, UPAGOID, UPROID, CFC_F, CFC_N, ASOTIPID, ASOID, ASOAPENOM, SALVEN, SALPEN, SALTOT, CUOVEN, CUOPEN, ''ASIGNADA'', SALACT, ''02'', ' + QuotedStr(xUser) + ', ' + QuotedStr(DM1.wUsuario) + ',SYSDATE,''01'',' + QuotedStr(xTipGes) + ',''01'',CFC_R, 0, 0, DIASTRANS,NULL,NULL,''' + DM1.xOfiDes + ''', DIASTRANSACT, ZIPID, CODIGO_REGLA, ZIPIDCOL, CENEDUID, '+QuotedStr(xsTipCam)+', SALDIF, CUODIF FROM GES_COB_CAB WHERE ASOID=' + QuotedStr(xAsoId);
// FIN : SPP_201401_GESCOB
            DM1.DCOM1.AppServer.EjecutaSql(xSQL);
            xSQL := 'UPDATE GES_COB_CAB SET ESTGES=''01'' WHERE ASOID=' + QuotedStr(xAsoId);
            DM1.DCOM1.AppServer.EjecutaSql(xSQL);
         End;
         DM1.cdsMovCre.Next;
      End;

      If rdbSeleccion.ItemIndex = 0 Then xTipTab := 'TEL';
      If rdbSeleccion.ItemIndex = 1 Then xTipTab := 'DOM';

      xSQL := 'SELECT count(*) REG FROM DB2ADMIN.GES_COB_LOG '
         + 'WHERE TIPTABLA=''' + xTipTab + ''' AND PERIODO=''' + xPeriodoCartera + ''' '
         + ' AND TIPGES=''' + xTipGes + ''' AND USUARIO=' + QuotedStr(xUser);
      DM1.cdsQry7.Close;
      DM1.cdsQry7.DataRequest(xSQL);
      DM1.cdsQry7.Open;
      If DM1.cdsQry7.FieldByname('REG').AsInteger <= 0 Then
         xSQL := 'INSERT INTO DB2ADMIN.GES_COB_LOG( TIPTABLA, TIPGES, PERIODO, USUASIG, FECREG, USUARIO, TOTGESASI ) '
            + 'Values( ''' + xTipTab + ''', ''' + xTipGes + ''', ''' + xPeriodoCartera + ''', ' + QuotedStr(DM1.wUsuario) + ', sysdate, ' + QuotedStr(xUser) + ', ' + IntToStr(DM1.CdsMovCre.Recordcount) + ' ) '
      Else
         xSQL := 'UPDATE db2admin.GES_COB_LOG SET TOTGESASI=TOTGESASI+ ' + IntToStr(DM1.CdsMovCre.Recordcount) + ', USUASIG=' + QuotedStr(DM1.wUsuario) + ', FECREG=SYSDATE '
            + 'WHERE TIPTABLA=''' + xTipTab + ''' and TIPGES=''' + xTipGes + ''' and PERIODO=''' + xPeriodoCartera + ''' '
            + ' and USUARIO=''' + xUser + ''' and USUCIE is null';
      DM1.DCOM1.AppServer.EjecutaSql(xSQL);

      grpProgress.Visible := False;
      dblUserInt.Text := '';
      dblUserExt.Text := '';
      Gauge1.Progress := 0;
      BitMostrar.OnClick(BitMostrar);
   End;
End;
// FIN : SPP_201402_GESCOB

Procedure TfDistCart1.MontosBetween(xSQL : String);
Begin
   If chkSaldo.Checked Then
      xSQL := 'SELECT MIN(SALVEN) MINIMO,MAX(SALVEN) MAXIMO FROM (' + xSQL + ')';
   If chkSaldoTotal.Checked Then
      xSQL := 'SELECT MIN(SALTOT) MINIMO,MAX(SALTOT) MAXIMO FROM (' + xSQL + ')';

   If (chkSaldo.Checked) Or (chkSaldoTotal.Checked) Then
   Begin
      DM1.cdsQry3.Close;
      DM1.cdsQry3.DataRequest(xSQL);
      DM1.cdsQry3.Open;
      dbeMonMin.Text := FloatToStrF(DM1.cdsQry3.FieldByName('MINIMO').AsCurrency, ffNumber, 15, 2);
      dbeMonMax.Text := FloatToStrF(DM1.cdsQry3.FieldByName('MAXIMO').AsCurrency, ffNumber, 15, 2);
      DM1.cdsQry3.Close;
   End;
End;

Procedure TfDistCart1.dtgCarteraDrawDataCell(Sender : TObject;
   Const Rect : TRect; Field : TField; State : TGridDrawState);
Begin
   dtgCartera.Canvas.Font.Color := clNavy;
   dtgCartera.DefaultDrawDataCell(rect, Field, State);
   If Field.FieldName = 'SALVEN' Then
   Begin
      dtgCartera.Canvas.Font.Color := clRed;
      dtgCartera.DefaultDrawDataCell(rect, Field, State);
   End;
   If Field.FieldName = 'SALPEN' Then
   Begin
      dtgCartera.Canvas.Font.Color := clGreen;
      dtgCartera.DefaultDrawDataCell(rect, Field, State);
   End;

   If Field.FieldName = 'SALTOT' Then
   Begin
      dtgCartera.Canvas.Font.Color := clBlack;
      dtgCartera.DefaultDrawDataCell(rect, Field, State);
   End;

   If Field.FieldName = 'CUOTOT' Then
   Begin
      dtgCartera.Canvas.Font.Color := clBlack;
      dtgCartera.DefaultDrawDataCell(rect, Field, State);
   End;

   If Field.FieldName = 'CUOVEN' Then
   Begin
      dtgCartera.Canvas.Font.Color := clRed;
      dtgCartera.DefaultDrawDataCell(rect, Field, State);
   End;
   If Field.FieldName = 'CUOPEN' Then
   Begin
      dtgCartera.Canvas.Font.Color := clGreen;
      dtgCartera.DefaultDrawDataCell(rect, Field, State);
   End;
   If Field.FieldName = 'PRIORIDAD' Then
   Begin
      If (DM1.cdsMovCre.FieldByName('PRIORIDAD').asstring = 'ALTA') Then
      Begin
         dtgCartera.Canvas.Font.Color := clRed;
         dtgCartera.Canvas.Font.Style := [fsBold, fsUnderline];
         dtgCartera.DefaultDrawDataCell(rect, Field, State);
      End;
   End;

   If Field.FieldName = 'USUARIO' Then
   Begin
      If (DM1.cdsMovCre.FieldByName('TIPACT').asstring = '01') Then // 01 : TELEFONICA
         dtgCartera.Canvas.Font.Color := clMaroon
      Else // 02 : DOMICILIARIA
         dtgCartera.Canvas.Font.Color := clTeal;
      dtgCartera.DefaultDrawDataCell(rect, Field, State);
   End;
End;

Procedure TfDistCart1.dtgCarteraDrawFooterCell(Sender : TObject;
   Canvas : TCanvas; FooterCellRect : TRect; Field : TField;
   FooterText : String; Var DefaultDrawing : Boolean);
Begin
   dtgCartera.Canvas.Font.Color := clNavy;
   If Field.FieldName = 'SALTOT' Then
   Begin
      dtgCartera.Canvas.Font.Color := clBlack;
   End;

   If Field.FieldName = 'SALVEN' Then
   Begin
      dtgCartera.Canvas.Font.Color := clRed;
   End;
   If Field.FieldName = 'SALPEN' Then
   Begin
      dtgCartera.Canvas.Font.Color := clGreen;
   End;
   If Field.FieldName = 'CUOVEN' Then
   Begin
      dtgCartera.Canvas.Font.Color := clRed;
   End;
   If Field.FieldName = 'CUOPEN' Then
   Begin
      dtgCartera.Canvas.Font.Color := clGreen;
   End;
   If Field.FieldName = 'CUOTOT' Then
   Begin
      dtgCartera.Canvas.Font.Color := clBlack;
   End;

End;

Procedure TfDistCart1.dtgCarteraDrawTitleCell(Sender : TObject;
   Canvas : TCanvas; Field : TField; Rect : TRect;
   Var DefaultDrawing : Boolean);
Begin
   If Field.FieldName = 'SALVEN' Then
   Begin
      dtgCartera.Canvas.Font.Color := clRed;
   End;
   If Field.FieldName = 'SALPEN' Then
   Begin
      dtgCartera.Canvas.Font.Color := clGreen;
   End;
   If Field.FieldName = 'SALTOT' Then
   Begin
      dtgCartera.Canvas.Font.Color := clBlack;
   End;

   If Field.FieldName = 'CUOVEN' Then
   Begin
      dtgCartera.Canvas.Font.Color := clRed;
   End;
   If Field.FieldName = 'CUOPEN' Then
   Begin
      dtgCartera.Canvas.Font.Color := clGreen;
   End;

   If Field.FieldName = 'CUOTOT' Then
   Begin
      dtgCartera.Canvas.Font.Color := clBlack;
   End;

End;

Procedure TfDistCart1.dbeMtoIniExit(Sender : TObject);
Begin
   dbeMtoIni.Text := FloatToStrF(DM1.Valores(dbeMtoIni.Text), ffNumber, 15, 2);
   dbeMtoFin.Text := FloatToStrF(DM1.Valores(dbeMtoFin.Text), ffNumber, 15, 2);
End;

Procedure TfDistCart1.dbeMtoFinExit(Sender : TObject);
Begin
   dbeMtoIni.Text := FloatToStrF(DM1.Valores(dbeMtoIni.Text), ffNumber, 15, 2);
   dbeMtoFin.Text := FloatToStrF(DM1.Valores(dbeMtoFin.Text), ffNumber, 15, 2);
End;

Procedure TfDistCart1.BitBuscarClick(Sender : TObject);
Begin
   If dtgCartera.DataSource.DataSet.RecordCount = 0 Then Exit;
   edtBuscar.Text := '';
   If Not grpBusAso.Visible Then
   Begin
      grpBusAso.Visible := True;
      edtBuscar.SetFocus;
   End
   Else
      grpBusAso.Visible := False;

End;

Procedure TfDistCart1.edtBuscarChange(Sender : TObject);
Begin
   If Length(Trim(edtBuscar.Text)) > 0 Then
      DM1.cdsMovCre.Locate('ASOAPENOM', VarArrayOf([TRIM(edtBuscar.Text)]), [loPartialKey]);

End;

Procedure TfDistCart1.edtBuscarKeyPress(Sender : TObject; Var Key : Char);
Begin
   If Key = #13 Then
   Begin
      If Length(Trim(edtBuscar.Text)) > 0 Then
      Begin
         edtBuscar.Text := '';
         grpBusAso.Visible := False;
         dtgCartera.SetFocus;
      End
      Else
      Begin
         MessageDlg('DEBE DIGITAR EL NOMBRE DEL ASOCIADO, PARA INICIAR LA BUSQUEDA', mtError, [mbOk], 0);
         edtBuscar.SetFocus;
      End;
   End;

End;

Procedure TfDistCart1.chkSaldoTotalClick(Sender : TObject);
Begin
   If chkSaldoTotal.Checked Then
   Begin
      chkSaldo.Checked := False;
      pnlMontos.Enabled := True;
      dbeMtoIni.Text := '0.00';
      dbeMtoFin.Text := '0.00';
      lblRotulo.Visible := True;
      lblRotulo.Caption := 'SALDOS TOTALES';
   End
   Else
   Begin
      pnlMontos.Enabled := False;
      dbeMtoIni.Text := '';
      dbeMtoFin.Text := '';
      lblRotulo.Caption := 'SALDOS';
      lblRotulo.Visible := False;
   End

End;

Procedure TfDistCart1.SpFin_RChange(Sender : TObject);
Begin
   LimpiaGrid;
End;

Procedure TfDistCart1.SpFinChange(Sender : TObject);
Begin
   LimpiaGrid;
End;

Procedure TfDistCart1.SpInicioChange(Sender : TObject);
Begin
   LimpiaGrid;
End;

Procedure TfDistCart1.dbeMtoFinChange(Sender : TObject);
Begin
   LimpiaGrid;
End;

Procedure TfDistCart1.dbeMtoIniChange(Sender : TObject);
Begin
   LimpiaGrid;
End;

Procedure TfDistCart1.EdtTipAsoChange(Sender : TObject);
Begin
   LimpiaGrid;
End;

Procedure TfDistCart1.rdbSeleccionClick(Sender : TObject);
Var
   xSQL : String;
Begin
   LimpiaGrid;
   dblUserInt.Text := '';
   If rdbSeleccion.ItemIndex = 0 Then xSQL := 'SELECT USERNIV,A.USERID,B.USERNOM FROM GES_NIV_USU_OTO A,TGE006 B WHERE A.USERID=B.USERID AND REGACT=''S'' AND A.USERNIV IN (''N1'') AND TIPACT=''01''  ORDER BY USERID';
   If rdbSeleccion.ItemIndex = 1 Then xSQL := 'SELECT USERNIV,A.USERID,B.USERNOM FROM GES_NIV_USU_OTO A,TGE006 B WHERE A.USERID=B.USERID AND REGACT=''S'' AND A.USERNIV IN (''N1'') AND TIPACT=''02''  ORDER BY USERID';
   DM1.cdsQry6.Close;
   DM1.cdsQry6.DataRequest(xSQL);
   DM1.cdsQry6.Open;

   If rdbSeleccion.ItemIndex = 0 Then xSQL := 'SELECT IDENTEXT USERID,DESENTEXT USERNOM,REGACT FROM GES_TIP_USU_EXT WHERE REGACT=''S'' AND TIPACT=''01'' ORDER BY USERID';
   If rdbSeleccion.ItemIndex = 1 Then xSQL := 'SELECT IDENTEXT USERID,DESENTEXT USERNOM,REGACT FROM GES_TIP_USU_EXT WHERE REGACT=''S'' AND TIPACT=''02'' ORDER BY USERID ';
   DM1.cdsQry5.Close;
   DM1.cdsQry5.DataRequest(xSQL);
   DM1.cdsQry5.Open;
End;

Procedure TfDistCart1.BitSalirClick(Sender : TObject);
Begin
   Close;
End;

Procedure TfDistCart1.bbtnAsignaUnoClick(Sender : TObject);
Begin
   If (Not rdbInt.Checked) And (Not rdbExt.Checked) Then
   Begin
      MessageDlg(' Debe Seleccionar Un Tipo de Gestion y un GESTOR DE COBRANZA..!!!!', mtError, [mbOk], 0);
      Exit;
   End;

   If rdbInt.Checked Then
   Begin
      If Length(Trim(dblUserInt.Text)) = 0 Then
      Begin
         MessageDlg(' Debe Seleccionar Un GESTOR DE COBRANZA INTERNO..!!!!', mtError, [mbOk], 0);
         Exit;
      End;
   End;
   If rdbExt.Checked Then
   Begin
      If Length(Trim(dblUserExt.Text)) = 0 Then
      Begin
         MessageDlg(' Debe Seleccionar Un GESTOR DE COBRANZA EXTERNO..!!!!', mtError, [mbOk], 0);
         Exit;
      End;
   End;

   If rdbInt.Checked Then
      If Not DM1.fn_is_asigno_meta_defecto(dblUserInt.Text, xPeriodoCartera) Then
      Begin
         MessageDlg('No se permitira grabar si no asigna una meta!', mtError, [mbOk], 0);
         exit;
      End;

   Try
      fBusGenAso := TfBusGenAso.create(Self);

      If rdbInt.Checked Then fBusGenAso.sTipGesBus := '01';
      If rdbExt.Checked Then fBusGenAso.sTipGesBus := '02';
      If rdbSeleccion.ItemIndex = 0 Then fBusGenAso.sTablaBus := 'GES_COB_IND';
      If rdbSeleccion.ItemIndex = 1 Then fBusGenAso.sTablaBus := 'GES_COB_DOM';

      fBusGenAso.BitAsigna.Visible := false;
      fBusGenAso.bbtnAsignar.Visible := True;
// INICIO : SPP_201401_GESCOB
      fBusGenAso.xsTipCam := self.xsTipCam;
// FIN : SPP_201401_GESCOB
      fBusGenAso.ShowModal;
   Finally
      fBusGenAso.Free;
   End;
End;

Procedure TfDistCart1.dblcDptoChange(Sender : TObject);
Begin
   LimpiaGrid;
   If DM1.cdsDPTO.Locate('DPTOID', VarArrayof([dblcDpto.text]), []) Then
   Begin
      EdtDpto.Text := DM1.cdsDpto.FieldByName('DPTODES').Asstring;
      DM1.cdsProvin.Filtered := False;
      DM1.cdsProvin.Filter := 'DPTOID=''' + dblcDpto.text + '''';
      DM1.cdsProvin.Filtered := true;
   End
   Else
   Begin
      If Length(dblcDpto.Text) <> 2 Then
      Begin
         Beep;
         EdtDpto.Text := '';
         DM1.cdsProvin.Filtered := False;
         DM1.cdsProvin.Filter := 'DPTOID=''' + dblcDpto.text + '''';
         DM1.cdsProvin.Filtered := true;
         DM1.cdsDist.Filtered := False;
         DM1.cdsDist.Filter := 'DPTOID=''' + dblcDpto.text + ''' and CIUDID=''' + dblcProvin.text + '''';
         DM1.cdsDist.Filtered := true;
      End;
   End;
   dblcprovin.text := '';
   edtprovin.text := '';
   dblcDist.text := '';
   edtDist.text := '';
   // INICIO : SPP_201401_GESCOB
   dblcColegio.Text := '';
   edtColegio.Text := '';
   // FIN : SPP_201401_GESCOB
End;

Procedure TfDistCart1.dblcProvinChange(Sender : TObject);
Var
   xsIS_ZONA_ALEJADA : String;
Begin
   LimpiaGrid;
   If DM1.cdsProvin.Locate('CIUDID', VarArrayof([dblcProvin.text]), []) Then
   Begin
      Edtprovin.Text := DM1.cdsProvin.FieldByName('CIUDDES').Asstring;
      DM1.cdsDist.Filtered := False;
      If rdbExt.Checked Then
         xsIS_ZONA_ALEJADA := 'S'
      Else
         xsIS_ZONA_ALEJADA := 'N';
      DM1.cdsDist.Filter := 'IS_ZONA_ALEJADA = ' + QuotedStr(xsIS_ZONA_ALEJADA) + ' AND DPTOID=''' + dblcDpto.text + ''' and CIUDID=''' + dblcProvin.text + '''';
      DM1.cdsDist.Filtered := true;
   End
   Else
   Begin
      If Length(dblcProvin.Text) <> 2 Then
      Begin
         Beep;
         EdtProvin.Text := '';
      End;
   End;
   dblcDist.text := '';
   edtDist.text := '';
   // INICIO : SPP_201401_GESCOB
   dblcColegio.Text := '';
   edtColegio.Text := '';
   // FIN : SPP_201401_GESCOB
End;

Procedure TfDistCart1.dblcDistChange(Sender : TObject);
Begin
   // INICIO : SPP_201401_GESCOB
   LimpiaGrid;
   If DM1.cdsDist.Locate('ZIPID', VarArrayof([dblcDist.text]), []) Then
   Begin
      edtDist.Text := DM1.cdsDist.FieldByName('ZIPDES').Asstring;
   End
   Else
   Begin
      If Length(dblcDist.Text) <> 2 Then
      Begin
         Beep;
         EdtDist.Text := '';
      End;
   End;

   //agrega el colegio
   fn_cargar_colegios();

   dblcColegio.Text := '';
   edtColegio.Text := '';
   // FIN : SPP_201401_GESCOB
End;

Procedure TfDistCart1.dblcPrioridadChange(Sender : TObject);
Begin
   If DM1.cdsUPro.Locate('CODIGO_PRIORIDAD', VarArrayof([dblcPrioridad.text]), []) Then
   Begin
      EdtPrioridad.Text := DM1.cdsUPro.FieldByName('DESCRIPCION_PRIORIDAD').Asstring;
   End
   Else
   Begin
      If Length(dblcPrioridad.Text) <> 1 Then
      Begin
         Beep;
         EdtPrioridad.Text := '';
      End;
   End
End;

Procedure TfDistCart1.rgRefinanciadosClick(Sender : TObject);
Begin
   LimpiaGrid;
End;

procedure TfDistCart1.cbCoberturaClick(Sender: TObject);
begin
   if cbCobertura.Checked then
   begin
      dblcDist.Enabled:=False;
      dblcDist.Text:='';
   end
   else
      dblcDist.Enabled:=True;
end;

// INICIO : SPP_201401_GESCOB
(******************************************************************************)
procedure TfDistCart1.rgUbigeoClick(Sender: TObject);
begin
   IF rgUbigeo.ItemIndex = 0 then
      xsZipIdCol := ''
   else
      xsZipIdCol := 'COL';
  dblcDpto.Text := '';
  pnlColegio.Visible := rgUbigeo.ItemIndex = 1;
end;
(******************************************************************************)
procedure TfDistCart1.rgTipCamClick(Sender: TObject);
begin
   IF rgTipCam.ItemIndex = 0 THEN
      xsTipCam := 'NORMAL' // POR DEFECTO ES NORMAL
   ELSE
      xsTipCam := 'CAMPAÑA';
end;
(******************************************************************************)
procedure TfDistCart1.dblcColegioChange(Sender: TObject);
begin
   edtColegio.Text := '';
   If DM1.cdsColegio.Locate('NOMCENEDU', VarArrayof([dblcColegio.Text]), []) Then
      edtColegio.Text := DM1.cdsColegio.fieldbyname('CENEDUID').AsString;
end;

(******************************************************************************)
procedure TfDistCart1.fn_cargar_colegios();
var xSQL : String;
begin
   xSQL :='SELECT ACE.NOMCENEDU ||  '' ('' || NVE.NIVEDU_DES || '')'' NOMCENEDU, '
        + '       ACE.CENEDUID '
        + '  FROM ASO_CEN_EDU ACE, NIV_CEN_EDU NVE '
        + ' WHERE ACE.NIVEDU_ID = NVE.NIVEDU_ID(+) '
        + '   AND ACE.UBIGEO_DIR = ' + QuotedStr(dblcDpto.Text + dblcProvin.Text + dblcDist.Text)
        + ' ORDER BY NOMCENEDU, NIVEDU_DES';
   DM1.cdsColegio.Close;
   DM1.cdsColegio.DataRequest(xSQL);
   DM1.cdsColegio.Open;
   dblcColegio.LookupTable := DM1.cdsColegio;
   dblcColegio.LookupField := 'CENEDUID';
   dblcColegio.Selected.Clear;
   dblcColegio.Selected.Add('NOMCENEDU'#9'70'#9'Colegio');
end;
(******************************************************************************)
// FIN : SPP_201401_GESCOB
End.

