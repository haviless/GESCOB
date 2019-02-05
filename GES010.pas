// Inicio Uso Estándares: 01/08/2011
// Unidad : Gestión de Cobranzas
// Formulario : FrmAlertaAcuerdos
// Fecha de Creación :
// Autor : Equipo de Sistemas
// Objetivo : Mantenimiento de Tipos de zonas
// Actualizaciones:
// HPC_201209_GESCOB(F5) 29/10/2012 CREACION DE TIPOS DE ZONA (ALEJADA/CERCANA)
// HPC_201603_GESCOB : Mantenimiento de Tipos de Zona
// HPC_201704_GESCOB : Mantenimiento de Zonas

Unit GES010;

Interface
//Inicio HPC_201704_GESCOB : Mantenimiento de Zonas
// Inicio HPC_201603_GESCOB : Mantenimiento de Tipos de Zona
Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, ExtCtrls, StdCtrls, Buttons, wwdblook, Grids, Wwdbigrd,
   Wwdbgrid, ComCtrls, ppEndUsr, ppProd, ppClass, ppReport, ppComm,
  ppRelatv, ppDB, ppDBPipe, ppBands, ppCtrls, ppVar, jpeg, ppPrnabl,
  ppCache, ppParameter, fcButton, fcImgBtn, fcShapeBtn;
// Fin  HPC_201603_GESCOB : Mantenimiento de Tipos de Zona
// Fin HPC_201704_GESCOB : Mantenimiento de Zonas

Type
   TFrmTipoZona = Class(TForm)
      pnl1 : TPanel;
      pnl2 : TPanel;
//Inicio HPC_201704_GESCOB : Mantenimiento de Zonas
	  //btnGrabar : TBitBtn;
//Fin HPC_201704_GESCOB : Mantenimiento de Zonas      
	  btnSalir : TBitBtn;
      dblcDpto : TwwDBLookupCombo;
      dblcProvin : TwwDBLookupCombo;
      edtDpto : TEdit;
      edtProvin : TEdit;
      lbl1 : TLabel;
      lbl2 : TLabel;
      dbgDistritos : TwwDBGrid;
      btnMarcarTodos : TButton;
      btnDesmarcarTodos : TButton;
      pnlBarraProgreso : TPanel;
	  pgProgreso : TProgressBar;
      lbl3 : TLabel;
// Inicio HPC_201603_GESCOB : Mantenimiento de Tipos de Zona
    btnImprimir: TBitBtn;
    ppdb1: TppDBPipeline;
    ppr1: TppReport;
    ppd1: TppDesigner;
    ppParameterList1: TppParameterList;
    ppHeaderBand1: TppHeaderBand;
    ppImage2: TppImage;
    ppLabel105: TppLabel;
    ppLabel107: TppLabel;
    ppLabel108: TppLabel;
    ppLabel109: TppLabel;
    ppSystemVariable13: TppSystemVariable;
    ppSystemVariable14: TppSystemVariable;
    ppSystemVariable15: TppSystemVariable;
    ppLabel112: TppLabel;
    ppLabel113: TppLabel;
    ppLabel114: TppLabel;
    ppLabel1: TppLabel;
    ppLine1: TppLine;
    ppLabel2: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLine2: TppLine;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppLine5: TppLine;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppLabel6: TppLabel;
    ppLine3: TppLine;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLine6: TppLine;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppDBText1: TppDBText;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLabel9: TppLabel;
    ppLine7: TppLine;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppDBText5: TppDBText;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppLine8: TppLine;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppLine4: TppLine;
    ppLabel12: TppLabel;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppDBText6: TppDBText;
    btnExportar: TBitBtn;
    dbgExporta: TwwDBGrid;
//Inicio HPC_201704_GESCOB : Mantenimiento de Zonas
    cbZona: TwwDBLookupCombo;
    Label1: TLabel;
    panelZona: TPanel;
    Label2: TLabel;
    StaticText1: TStaticText;
    BitSave: TfcShapeBtn;
    BitOut: TfcShapeBtn;
    checkCoberturable: TCheckBox;
    cbZonaEditable: TwwDBLookupCombo;
    cbZonaTodos: TwwDBLookupCombo;
    Label3: TLabel;
    checkTodos: TCheckBox;
//Fin HPC_201704_GESCOB : Mantenimiento de Zonas
// Fin  HPC_201603_GESCOB : Mantenimiento de Tipos de Zona
      Procedure btnSalirClick(Sender : TObject);
      Procedure btnGrabarClick(Sender : TObject);
      Procedure dblcDptoChange(Sender : TObject);
      Procedure FormCreate(Sender : TObject);
      Procedure dblcProvinChange(Sender : TObject);
      Procedure btnMarcarTodosClick(Sender : TObject);
      Procedure btnDesmarcarTodosClick(Sender : TObject);
// Inicio HPC_201603_GESCOB : Mantenimiento de Tipos de Zona
    procedure dbgDistritosDblClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure btnExportarClick(Sender: TObject);
//Inicio HPC_201704_GESCOB : Mantenimiento de Zonas
    procedure BitOutClick(Sender: TObject);
    procedure BitSaveClick(Sender: TObject);
    procedure cbZonaEditableExit(Sender: TObject);
    procedure cbZonaChange(Sender: TObject);
    procedure cbZonaTodosExit(Sender: TObject);
//Fin HPC_201704_GESCOB : Mantenimiento de Zonas
// Fin  HPC_201603_GESCOB : Mantenimiento de Tipos de Zona
   Private
    { Private declarations }
//Inicio HPC_201704_GESCOB : Mantenimiento de Zonas
    Procedure cargarDistritos();
//Fin HPC_201704_GESCOB : Mantenimiento de Zonas
   Public
    { Public declarations }
   End;

Var
   FrmTipoZona : TFrmTipoZona;
Implementation

Uses GESDM1, DB, DBClient;

{$R *.dfm}

(******************************************************************************)

Procedure TFrmTipoZona.FormCreate(Sender : TObject);
Var
   xsSQL : String;
Begin
   Screen.Cursor := crHourGlass;
//Inicio HPC_201704_GESCOB : Mantenimiento de Zonas
// Inicio HPC_201603_GESCOB : Mantenimiento de Tipos de Zona
   {xsSQL :=
      '  SELECT A.ZIPABR, A.ZIPDES, A.DPTOID, A.CIUDID, '
      + '       A.DPTOID || A.CIUDID || A.ZIPID ZIPID, '
      + '       C.COD_TIPO_ZONA, C.TIPO_ZONA, '
      + '       CASE WHEN NVL(C.COD_TIPO_ZONA,1) = 2 THEN ''SI'' ELSE ''NO'' END CON_COBERTURA, '
      + '       USUREG, FECREG,TRIM(D.DESREF) ZONA,CODTIP,CODREF, '' '' EDITADO '
      + '  FROM TGE122 A, GES_COB_UBI_TIPO_ZONA B, GES_COB_TIPO_ZONA C,GES_TIP_REF_DET D '
      + ' WHERE A.DPTOID || A.CIUDID || A.ZIPID = B.ZIPID(+) '
      + '   AND B.COD_TIPO_ZONA = C.COD_TIPO_ZONA(+) AND B.CODZON=D.CODTIP(+)||D.CODREF(+) '
      + ' ORDER BY A.DPTOID, A.CIUDID, A.ZIPID';
   DM1.cdsDist.Close;
   DM1.cdsDist.DataRequest(xsSQL);
   DM1.cdsDist.Open;
   dbgDistritos.DataSource := DM1.dsDist;

   With dbgDistritos, DM1.cdsQry1 Do
   Begin
      Selected.Clear;
      Selected.Add('ZIPDES'#9'30'#9'DISTRITO');
      Selected.Add('CON_COBERTURA'#9'10'#9'CON~COBERTURA');
      Selected.Add('ZONA'#9'18'#9'ZONA');
      Selected.Add('USUREG'#9'18'#9'Usuario');
      Selected.Add('FECREG'#9'18'#9'Fecha Registro');
      ApplySelected;

      SetControlType('CON_COBERTURA', fctCheckBox, 'S;N');
   End;
// Fin  HPC_201603_GESCOB : Mantenimiento de Tipos de Zona

   xsSQL :=
      '  SELECT CIUDID, CIUDDES, CIUDABR, DPTOID '
      + '  FROM TGE121 '
      + ' ORDER BY DPTOID, CIUDID';
   DM1.cdsProvin.Close;
   DM1.cdsProvin.DataRequest(xsSQL);
   DM1.cdsProvin.Open;
   dblcProvin.LookupTable := DM1.cdsProvin; }

   xsSQL :=
      '  SELECT DPTOID, DPTODES, DPTOABR '
      + '  FROM APO158 '
      + ' ORDER BY DPTOID';
   DM1.cdsDpto.Close;
   DM1.cdsDpto.DataRequest(xsSQL);
   DM1.cdsDpto.Open;
   dblcDpto.LookupTable := DM1.cdsDpto;
   {dblcDptoChange(dblcDpto);}

   xsSQL :='SELECT ''00'' CODTIP,''00'' CODREF,''TODOS'' DESREF FROM DUAL UNION SELECT CODTIP,CODREF,TRIM(DESREF)DESREF FROM GES_TIP_REF_DET WHERE CODEST=1 AND CODTIP=''09'' ';
   DM1.cdsPadre.Close;
   DM1.cdsPadre.DataRequest(xsSQL);
   DM1.cdsPadre.Open;
   cbZona.LookupField:='CODREF';
   cbZona.LookupTable := DM1.cdsPadre;

   xsSQL :='SELECT CODTIP,CODREF,TRIM(DESREF)DESREF FROM GES_TIP_REF_DET WHERE CODEST=1 AND CODTIP=''09'' ';
   DM1.cdsQry11.Close;
   DM1.cdsQry11.DataRequest(xsSQL);
   DM1.cdsQry11.Open;
   cbZonaEditable.LookupField:='CODREF';
   cbZonaEditable.LookupTable := DM1.cdsQry11;
   cbZona.Text:='TODOS';

   xsSQL :='SELECT CODTIP,CODREF,TRIM(DESREF)DESREF FROM GES_TIP_REF_DET WHERE CODEST=1 AND CODTIP=''09'' ';
   DM1.cdsQry12.Close;
   DM1.cdsQry12.DataRequest(xsSQL);
   DM1.cdsQry12.Open;
   cbZonaTodos.LookupField:='CODREF';
   cbZonaTodos.LookupTable := DM1.cdsQry12;
//Fin HPC_201704_GESCOB : Mantenimiento de Zonas
   pnlBarraProgreso.visible := false;
   Screen.Cursor := crDefault;
End;

(******************************************************************************)
 //Inicio HPC_201704_GESCOB : Mantenimiento de Zonas
Procedure TFrmTipoZona.dblcDptoChange(Sender : TObject);
  var xsSQL:String;
Begin
   If DM1.cdsDPTO.Locate('DPTOID', VarArrayof([dblcDpto.text]), []) Then
   Begin
      EdtDpto.Text := DM1.cdsDpto.FieldByName('DPTODES').Asstring;
   End
   Else
   Begin
      Beep;
      EdtDpto.Text := '';
   End;
   xsSQL :=
      '  SELECT CIUDID, CIUDDES, CIUDABR, DPTOID '
      + '  FROM TGE121 WHERE DPTOID='''+dblcDpto.text+''' '
      + ' ORDER BY DPTOID, CIUDID';
   DM1.cdsProvin.Close;
   DM1.cdsProvin.DataRequest(xsSQL);
   DM1.cdsProvin.Open;
   dblcProvin.LookupTable := DM1.cdsProvin;
   edtProvin.Text:='';
   dblcprovin.text := '';
   cbZona.Text:='TODOS';
End;
//Fin HPC_201704_GESCOB : Mantenimiento de Zonas
//Inicio HPC_201704_GESCOB : Mantenimiento de Zonas
Procedure TFrmTipoZona.cargarDistritos();
  var xsSQL:String;
    xSQL:String;
    xCodigoZona:String;
Begin
  xSQL:='';
  if cbZona.Text<>'TODOS' Then
  Begin
    xCodigoZona:=DM1.cdsQry11.FieldByName('CODTIP').Asstring+DM1.cdsQry11.FieldByName('CODREF').Asstring;
    if xCodigoZona<>'' Then
    Begin
      xSQL:=xSQL+ ' AND B.CODZON='''+xCodigoZona+''' ';
    End;
  End;
  xsSQL :=
      '  SELECT A.ZIPABR, A.ZIPDES, A.DPTOID, A.CIUDID, '
      + '       A.DPTOID || A.CIUDID || A.ZIPID ZIPID, '
      + '       C.COD_TIPO_ZONA, C.TIPO_ZONA, '
      + '       CASE WHEN NVL(C.COD_TIPO_ZONA,1) = 2 THEN ''SI'' ELSE ''NO'' END CON_COBERTURA, '
      + '       USUREG, FECREG,TRIM(D.DESREF) ZONA,CODTIP,CODREF, '' '' EDITADO '
      + '  FROM TGE122 A, GES_COB_UBI_TIPO_ZONA B, GES_COB_TIPO_ZONA C,GES_TIP_REF_DET D '
      + ' WHERE A.DPTOID || A.CIUDID || A.ZIPID = B.ZIPID(+) '
      + '   AND B.COD_TIPO_ZONA = C.COD_TIPO_ZONA(+) AND B.CODZON=D.CODTIP(+)||D.CODREF(+) '
      + '  AND A.DPTOID=''' + dblcDpto.text + ''' AND A.CIUDID=''' + dblcProvin.text + ''' '
      + ''+ xSQL + ''
      + ' ORDER BY A.DPTOID, A.CIUDID, A.ZIPID';
   DM1.cdsDist.Close;
   DM1.cdsDist.DataRequest(xsSQL);
   DM1.cdsDist.Open;
   dbgDistritos.DataSource := DM1.dsDist;
   With dbgDistritos Do
   Begin
      Selected.Clear;
      Selected.Add('ZIPDES'#9'30'#9'DISTRITO');
      Selected.Add('CON_COBERTURA'#9'10'#9'CON~COBERTURA');
      Selected.Add('ZONA'#9'18'#9'ZONA');
      Selected.Add('USUREG'#9'18'#9'Usuario');
      Selected.Add('FECREG'#9'18'#9'Fecha Registro');
      ApplySelected;
   End;
End;
//Fin HPC_201704_GESCOB : Mantenimiento de Zonas
//Inicio HPC_201704_GESCOB : Mantenimiento de Zonas
Procedure TFrmTipoZona.dblcProvinChange(Sender : TObject);
Begin
   IF dblcProvin.text<> '' Then
   Begin
    If DM1.cdsProvin.Locate('CIUDID', VarArrayof([dblcProvin.text]), []) Then
    Begin
      Edtprovin.Text := DM1.cdsProvin.FieldByName('CIUDDES').Asstring;
    End
    Else
    Begin
      Beep;
      EdtProvin.Text := '';
    End;
   End;
   cargarDistritos();
   cbZona.Text:='TODOS';
End;
//Fin HPC_201704_GESCOB : Mantenimiento de Zonas
(******************************************************************************)

Procedure TFrmTipoZona.btnMarcarTodosClick(Sender : TObject);
Begin
   Screen.Cursor := crHourGlass;
   With DM1.cdsDist Do
   Begin
      ControlsDisabled;
      First;
      While Not Eof Do
      Begin
         Edit;
// Inicio HPC_201603_GESCOB : Mantenimiento de Tipos de Zona
         FieldByName('CON_COBERTURA').AsString := 'S';
         FieldByName('EDITADO').AsString := 'S';
// Fin  HPC_201603_GESCOB : Mantenimiento de Tipos de Zona
         post;
         Next;
      End;
      First;
      EnableControls;
   End;
   Screen.Cursor := crDefault;
End;
(******************************************************************************)

Procedure TFrmTipoZona.btnDesmarcarTodosClick(Sender : TObject);
Begin
   Screen.Cursor := crHourGlass;
   With DM1.cdsDist Do
   Begin
      ControlsDisabled;
      First;
      While Not Eof Do
      Begin
         Edit;
// Inicio HPC_201603_GESCOB : Mantenimiento de Tipos de Zona
         FieldByName('CON_COBERTURA').AsString := 'N';
         FieldByName('EDITADO').AsString := 'S';
// Fin  HPC_201603_GESCOB : Mantenimiento de Tipos de Zona
         Post;
         Next
      End;
      First;
      EnableControls;
   End;
   Screen.Cursor := crDefault;
End;
(******************************************************************************)

// Inicio HPC_201603_GESCOB : Mantenimiento de Tipos de Zona
Procedure TFrmTipoZona.btnGrabarClick(Sender : TObject);
Var
   xsSQL : String;
   xnCOD_TIPO_ZONA, nContador : integer;
//Inicio HPC_201704_GESCOB : Mantenimiento de Zonas
   xCODZON:String;
   Function fn_grabar() : Integer;
   var
      xCont : Integer;
      Bk : TBookmarkStr;
   Begin
      Screen.Cursor := crHourGlass;
      //Bk := DM1.cdsDist.Bookmark;
      With DM1.cdsDist Do
      Begin
         ControlsDisabled;
         //DM1.cdsDist.Filtered := False;
         pnlBarraProgreso.visible := true;
         pgProgreso.Min := 0;
         pgProgreso.Max := DM1.cdsDist.RecordCount;
         pgProgreso.Position := 0;
         First;
         xCont:=0;
         While Not Eof Do
         Begin
            if FieldByName('EDITADO').AsString='S' then
            begin
                xCODZON:=FieldByName('CODTIP').AsString+FieldByName('CODREF').AsString;
                If FieldByName('CON_COBERTURA').AsString = 'SI' Then
                   xnCOD_TIPO_ZONA := 2
                Else
                   xnCOD_TIPO_ZONA := 1;
    //            xsSQL :=
    //               ' INSERT INTO GES_COB_UBI_TIPO_ZONA(COD_TIPO_ZONA, ZIPID) '
    //               + ' VALUES (' + IntToStr(xnCOD_TIPO_ZONA) + ',' + QuotedStr(FieldByName('ZIPID').AsString) + ')';
                xsSQL :=
                   ' UPDATE GES_COB_UBI_TIPO_ZONA '
                   + ' SET COD_TIPO_ZONA = ' + IntToStr(xnCOD_TIPO_ZONA)+',CODZON='''+xCODZON+''','
                   +      'FECREG=SYSDATE, USUREG='+QuotedStr( DM1.wUsuario )
                   + ' WHERE ZIPID='+QuotedStr(FieldByName('ZIPID').AsString);

                try
                  DM1.DCOM1.AppServer.EjecutaSql(xsSQL);
                  xCont:=xCont+1
                except
                end;
            end;
            pgProgreso.Position := pgProgreso.Position + 1;
            Next;
         End;
         First;
         //DM1.cdsDist.Filtered := true;
         EnableControls;
      End;
      pnlBarraProgreso.visible := false;
      DM1.cdsDist.Close;
      DM1.cdsDist.Open;
      Result := xCont;
      //DM1.cdsDist.Bookmark := Bk;
      Screen.Cursor := crDefault;
   End;
   Function fn_contar() : integer;
   var
      nCon : Integer;
      Bk : TBookmarkStr;
   Begin
      Screen.Cursor := crHourGlass;
      //Bk := DM1.cdsDist.Bookmark;
      With DM1.cdsDist Do
      Begin
         ControlsDisabled;
         First;
         nCon:=0;
         While Not Eof Do
         Begin
            if FieldByName('EDITADO').AsString='S' then
               nCon:=nCon+1;
            Next;
         End;
         First;
         EnableControls;
      End;
      //DM1.cdsDist.Bookmark := Bk;

      Result := nCon;
      Screen.Cursor := crDefault;
   End;
Begin
   if not checkTodos.Checked Then
   Begin
   If (edtDpto.Text = '') Or (edtProvin.Text = '') Then
   Begin
      MessageDlg('Seleccione un Departamento y una Provincia!', mtInformation, [mbOk], 0);
      exit;
   End;
   End
   Else
   begin
   If (edtDpto.Text = '')  Then
   Begin
      MessageDlg('Seleccione un Departamento!', mtInformation, [mbOk], 0);
      exit;
   End;
   End;

   if checkTodos.Checked Then
   Begin
      IF dblcDpto.Text<>'' Then
      Begin
        if cbZonaTodos.Text<>'' Then
        Begin
        xCODZON:=DM1.cdsQry12.FieldByName('CODTIP').AsString+DM1.cdsQry12.FieldByName('CODREF').AsString;
        xsSQL :=' UPDATE GES_COB_UBI_TIPO_ZONA '
                   + ' SET CODZON='''+xCODZON+''','
                   +      'FECREG=SYSDATE, USUREG='+QuotedStr( DM1.wUsuario )
                   + ' WHERE SUBSTR(ZIPID,1,2)='+QuotedStr(dblcDpto.Text);
        DM1.DCOM1.AppServer.EjecutaSql(xsSQL);
        MessageDlg('Información actualizada!', mtInformation, [mbOk], 0);
        End
        Else
        Begin
          MessageDlg('Seleccione un zona todos!', mtInformation, [mbOk], 0);
          exit;
        End;
      End
      Else
      Begin
          MessageDlg('Seleccione un Departamento!', mtInformation, [mbOk], 0);
          exit;
      End;
   End
   Else
   Begin
   nContador := fn_contar();
   if nContador>0 then
   begin
       If MessageDlg('Se grabara(n) '+ inttostr(nContador)+' Cambio(s).  ¿ Esta Seguro ? ',mtconfirmation,[mbYes,mbNo],0)=mrYes then
       Begin
          //xsSQL := 'DELETE FROM GES_COB_UBI_TIPO_ZONA ';
          //DM1.DCOM1.AppServer.EjecutaSql(xsSQL);
          nContador := fn_grabar();
          MessageDlg('Se grabaron ' + intToStr(nContador) + ' cambios!', mtInformation, [mbOk], 0);
       end;
   end
   else
      ShowMessage('No existen cambios');
   End;
End;
//Fin HPC_201704_GESCOB : Mantenimiento de Zonas
// Fin  HPC_201603_GESCOB : Mantenimiento de Tipos de Zona

(******************************************************************************)

Procedure TFrmTipoZona.btnSalirClick(Sender : TObject);
Begin
   close;
End;
(******************************************************************************)

//Inicio HPC_201704_GESCOB : Mantenimiento de Zonas
// Inicio HPC_201603_GESCOB : Mantenimiento de Tipos de Zona
procedure TFrmTipoZona.dbgDistritosDblClick(Sender: TObject);
begin
   cbZonaEditable.Text:='';
   If DM1.cdsQry11.Locate('CODREF', VarArrayof([DM1.cdsDist.FieldByName('CODREF').AsString]), []) Then
   Begin
      cbZonaEditable.Text := DM1.cdsDist.FieldByName('ZONA').Asstring;
   End;

   IF DM1.cdsDist.FieldByName('CON_COBERTURA').AsString='SI' THEN
   Begin
    checkCoberturable.Checked:=True;
   end;
   IF DM1.cdsDist.FieldByName('CON_COBERTURA').AsString='NO' THEN
   Begin
    checkCoberturable.Checked:=false;
   End;

   panelZona.Visible:=true;
end;
// Fin  HPC_201603_GESCOB : Mantenimiento de Tipos de Zona
//Fin HPC_201704_GESCOB : Mantenimiento de Zonas

// Inicio HPC_201603_GESCOB : Mantenimiento de Tipos de Zona
procedure TFrmTipoZona.btnImprimirClick(Sender: TObject);
var
   xsSQL : String;
begin
   xsSQL :=
      '  SELECT A.ZIPABR, A.ZIPDES, A.DPTOID, A.CIUDID, '
      + '       A.DPTOID || A.CIUDID || A.ZIPID ZIPID, '
      + '       C.COD_TIPO_ZONA, C.TIPO_ZONA, '
      + '       CASE WHEN NVL(C.COD_TIPO_ZONA,1) = 2 THEN ''SI'' ELSE ''NO'' END CON_COBERTURA, '
      + '       USUREG, FECREG, '' '' EDITADO, d.dptodes, e.ciuddes, '
      + '       CASE WHEN NVL(C.COD_TIPO_ZONA,1) = 2 THEN 1 ELSE 0 END CONCOB, '
      + '       CASE WHEN NVL(C.COD_TIPO_ZONA,1) = 1 THEN 1 ELSE 0 END SINCOB '
      + '  FROM TGE122 A, GES_COB_UBI_TIPO_ZONA B, GES_COB_TIPO_ZONA C, APO158 d, TGE121 e '
      + ' WHERE A.DPTOID || A.CIUDID || A.ZIPID = B.ZIPID(+) '
      + '   AND B.COD_TIPO_ZONA = C.COD_TIPO_ZONA(+) '
      + '   and A.DPTOID= d.DPTOID(+) '
      + '   and A.DPTOID= e.DPTOID(+) and A.CIUDID = e.ciudid(+) '
      + ' ORDER BY A.DPTOID, A.CIUDID, A.ZIPID';

   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xsSQL);
   DM1.cdsQry.Open;

   ppdb1.DataSource := DM1.dsQry;
   ppr1.Print;
   //ppd1.ShowModal;
end;
// Fin  HPC_201603_GESCOB : Mantenimiento de Tipos de Zona

// Inicio HPC_201603_GESCOB : Mantenimiento de Tipos de Zona
procedure TFrmTipoZona.btnExportarClick(Sender: TObject);
VAR
   xxExcApp: OleVariant;
   xsSQL : String;
begin
   Screen.Cursor := crHourGlass;
//Inicio HPC_201704_GESCOB : Mantenimiento de Zonas
   xsSQL :=
      '  SELECT d.dptodes, e.ciuddes, a.zipdes, '
      + '       CASE WHEN NVL(C.COD_TIPO_ZONA,1) = 2 THEN ''SI'' ELSE ''NO'' END CON_COBERTURA,TRIM(D.DESREF) ZONA, '
      + '       USUREG, FECREG,  '
      + '       CASE WHEN NVL(C.COD_TIPO_ZONA,1) = 2 THEN 1 ELSE 0 END CONCOB, '
      + '       CASE WHEN NVL(C.COD_TIPO_ZONA,1) = 1 THEN 1 ELSE 0 END SINCOB '
      + '  FROM TGE122 A, GES_COB_UBI_TIPO_ZONA B, GES_COB_TIPO_ZONA C, APO158 d, TGE121 e,GES_TIP_REF_DET D  '
      + ' WHERE A.DPTOID || A.CIUDID || A.ZIPID = B.ZIPID(+) '
      + '   AND B.COD_TIPO_ZONA = C.COD_TIPO_ZONA(+) '
      + '   and A.DPTOID= d.DPTOID(+) '
      + '   and A.DPTOID= e.DPTOID(+) and A.CIUDID = e.ciudid(+)  AND B.CODZON=D.CODTIP(+)||D.CODREF(+)  '
      + ' ORDER BY A.DPTOID, A.CIUDID, A.ZIPID';
//Fin HPC_201704_GESCOB : Mantenimiento de Zonas
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xsSQL);
   DM1.cdsQry.Open;

   dbgExporta.DataSource := DM1.dsQry;
   xxExcApp := DM1.fn_ExpXLS(dbgExporta.DataSource.DataSet, 'COBERTURAS');
   Screen.Cursor := crDefault;
end;
// Fin  HPC_201603_GESCOB : Mantenimiento de Tipos de Zona
//Inicio HPC_201704_GESCOB : Mantenimiento de Zonas
procedure TFrmTipoZona.BitOutClick(Sender: TObject);
begin
panelZona.Visible:=false;
end;

procedure TFrmTipoZona.BitSaveClick(Sender: TObject);
begin
  DM1.cdsDist.Edit;
  if checkCoberturable.Checked Then
  begin
    DM1.cdsDist.FieldByName('CON_COBERTURA').AsString:= 'SI';
  end
  Else
  Begin
    DM1.cdsDist.FieldByName('CON_COBERTURA').AsString:= 'NO';
  End;
  IF cbZonaEditable.Text<>'' Then
  begin
  DM1.cdsDist.FieldByName('ZONA').AsString:= cbZonaEditable.Text;
  DM1.cdsDist.FieldByName('CODTIP').AsString := DM1.cdsQry11.FieldByName('CODTIP').AsString;
  DM1.cdsDist.FieldByName('CODREF').AsString := DM1.cdsQry11.FieldByName('CODREF').AsString;
  End
  Else
  Begin
    DM1.cdsDist.FieldByName('ZONA').AsString:= '';
    DM1.cdsDist.FieldByName('CODTIP').AsString := '';
    DM1.cdsDist.FieldByName('CODREF').AsString := '';
  End;
  DM1.cdsDist.FieldByName('EDITADO').AsString:='S';
  DM1.cdsDist.Post;
  panelZona.Visible:=false;
end;

procedure TFrmTipoZona.cbZonaEditableExit(Sender: TObject);
begin
 if DM1.cdsQry11.Locate('DESREF', VarArrayof([cbZonaEditable.text]), []) Then
   Begin
      cbZonaEditable.Text := DM1.cdsQry11.FieldByName('DESREF').Asstring;
   End
   Else
   Begin
      Beep;
      cbZonaEditable.Text := '';
   End;
end;

procedure TFrmTipoZona.cbZonaChange(Sender: TObject);
begin
  if cbZona.Text<>'TODOS' Then
   Begin
   If DM1.cdsQry11.Locate('DESREF', VarArrayof([cbZona.text]), []) Then
   Begin
      cbZona.Text := DM1.cdsQry11.FieldByName('DESREF').Asstring;
   End
   Else
   Begin
      Beep;
      cbZona.Text := '';
   End;
  End;
  cargarDistritos();
end;
procedure TFrmTipoZona.cbZonaTodosExit(Sender: TObject);
begin
   if DM1.cdsQry12.Locate('DESREF', VarArrayof([cbZonaTodos.text]), []) Then
   Begin
      cbZonaTodos.Text := DM1.cdsQry12.FieldByName('DESREF').Asstring;
   End
   Else
   Begin
      Beep;
      cbZonaTodos.Text := '';
   End;

   With DM1.cdsDist Do
   Begin
      ControlsDisabled;
      First;
      While Not Eof Do
      Begin
         Edit;
         IF cbZonaTodos.Text<>'' Then
         begin
         FieldByName('ZONA').AsString:= cbZonaTodos.Text;
         FieldByName('CODTIP').AsString := DM1.cdsQry12.FieldByName('CODTIP').AsString;
         FieldByName('CODREF').AsString := DM1.cdsQry12.FieldByName('CODREF').AsString;
         End
         Else
         Begin
          FieldByName('ZONA').AsString:= '';
          FieldByName('CODTIP').AsString := '';
          FieldByName('CODREF').AsString := '';
         End;
         FieldByName('EDITADO').AsString := 'S';
         post;
         Next;
      End;
      First;
      EnableControls;
   End;
end;
//Fin HPC_201704_GESCOB : Mantenimiento de Zonas
End.

