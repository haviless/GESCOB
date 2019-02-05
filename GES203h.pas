// Inicio Uso Estándares: 01/08/2011
// Unidad : Gestión de Cobranzas
// Formulario : fBusGenAso
// Fecha de Creación :
// Autor : Equipo de Sistemas
// Objetivo : Busqueda de Asociado
// Actualizaciones:
// HPP_201112_GESCOB 06/06/2011 Mejoras Internas del Sistema (F4)
// HPC_201202_GESCOB 27/01/2012 Colocar Matriz de Prioridades
// HPC_201205_GESCOB 17/04/2012 colocar codigo de regla en la busqueda.
// DPP_201205_GESCOB: Pase a producción a partir de los pases HPC_201205 y HPC_201206
// HPC_201301_GESCOB Eliminar Boton Autoasignar
// SPP_201301_GESCOB: El pase a producción se realiza de acuerdo al HPC_201301_GESCOB
// SPP_201401_GESCOB: Importacion masiva interna y Mejoras del proceso de priorizacion
// SPP_201401_GESCOB: Se realiza el pase a producción a partir del HPC_201401_GESCOB
// HPC_201402_GESCOB: Mantenimiento geeneral a la identificacion del deudor (1.5)
// SPP_201402_GESCOB: Se realiza el pase a producción a partir del HPC_201402_GESCOB

Unit GES203h;

Interface

Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, Grids, Wwdbigrd, Wwdbgrid, StdCtrls, fcButton, fcImgBtn,
   fcShapeBtn, Buttons, Db;

Type
   TfBusGenAso = Class(TForm)
      grpBusAso : TGroupBox;
      z2bbtnBuscar : TfcShapeBtn;
      edtBuscar : TEdit;
      dtgBusqueda : TwwDBGrid;
      BitSalir : TBitBtn;
      BitAsigna : TBitBtn;
      rdbNombre : TRadioButton;
      rdbDni : TRadioButton;
      bbtnAsignar : TBitBtn;
      Procedure z2bbtnBuscarClick(Sender : TObject);
      Procedure FormActivate(Sender : TObject);
      Procedure BitSalirClick(Sender : TObject);
      Procedure BitAsignaClick(Sender : TObject);
      Procedure FormKeyPress(Sender : TObject; Var Key : Char);
      Procedure dtgBusquedaDrawDataCell(Sender : TObject; Const Rect : TRect;
         Field : TField; State : TGridDrawState);
      Procedure rdbDniClick(Sender : TObject);
      Procedure rdbNombreClick(Sender : TObject);
      Procedure bbtnAsignarClick(Sender : TObject);
// INICIO : SPP_201401_GESCOB
    procedure FormCreate(Sender: TObject);
// FIN : SPP_201401_GESCOB
   Private
    { Private declarations }
      Procedure Limpia;
   Public
      sTablaBus : String;
      sTipGesBus : String;
      // INICIO : SPP_201401_GESCOB
      xsTipCam : String;
      // FIN : SPP_201401_GESCOB

    { Public declarations }
   End;

Var
   fBusGenAso : TfBusGenAso;

Implementation

Uses GESDM1, GES203, GES203a, GES230;

{$R *.dfm}

(******************************************************************************)

Procedure TfBusGenAso.FormActivate(Sender : TObject);
Begin
   Limpia;
   edtBuscar.SetFocus;
End;

(******************************************************************************)

Procedure TfBusGenAso.Limpia;
Var
   xSQL : String;
Begin
   xSQL := 'SELECT A.ASOID, A.DIASTRANS,''          '' ASODNI, '
      + '          A.ASOAPENOM, '' '' USUARIO, '
      + '          A.SALVEN, A.SALPEN,A.SALTOT '
      + '     FROM GES_COB_CAB A '
      + '    WHERE 1 = 2 ';
   DM1.cdsTipBoleta.Close;
   DM1.cdsTipBoleta.DataRequest(xSQL);
   DM1.cdsTipBoleta.Open;
End;

(******************************************************************************)

Procedure TfBusGenAso.z2bbtnBuscarClick(Sender : TObject);
Var
   xSQL, xWhere, xOrderBy : String;
Begin
   If Length(Trim(edtBuscar.Text)) = 0 Then
   Begin
      MessageDlg('Debe Digitar El Nombre Del Asociado, Para Iniciar La Busqueda', mtError, [mbOk], 0);
      Exit;
   End;

   xWhere := ' ';
   If rdbNombre.Checked Then
   Begin
      xWhere := ' AND CAB.ASOAPENOM LIKE ' + QuotedStr(Trim(edtBuscar.Text) + '%');
      xOrderBy := ' ORDER BY A.ASOAPENOM';
   End;
   If rdbDni.Checked Then
   Begin
      xWhere := ' AND APO.ASODNI LIKE ' + QuotedStr(Trim(edtBuscar.Text) + '%');
      xOrderBy := ' ORDER BY A.ASODNI';
   End;

   xSQL := 'SELECT A.ASOID, A.DIASTRANS, A.ASODNI, A.ASOAPENOM, NVL(B.USUARIO, ''NO ASIGNADO'') USUARIO, '
      + '          NVL(A.SALVEN, 0) SALVEN, NVL(A.SALPEN, 0) SALPEN, NVL(A.SALTOT, 0) SALTOT '
      + '          ,PRI_ALTA ,PRIORIDAD '
      + '     FROM (SELECT CAB.ASOID, CAB.DIASTRANS, APO.ASODNI, CAB.ASOAPENOM, NVL(CAB.SALVEN, 0) SALVEN, '
      + '                  NVL(CAB.SALPEN, 0) SALPEN, NVL(CAB.SALTOT, 0) SALTOT '
      + '                  ,''S'' PRI_ALTA '
      + '                  ,C.DESCRIPCION_PRIORIDAD PRIORIDAD '
      + '             FROM GES_COB_CAB CAB, APO201 APO, GES_COB_REG B, GES_COB_PRI C  '
      + '            WHERE CAB.ASOID = APO.ASOID '
      + '              AND CAB.CODIGO_REGLA = B.CODIGO_REGLA(+) AND B.CODIGO_PRIORIDAD = C.CODIGO_PRIORIDAD(+) '
      + xWhere
      + '              AND NOT EXISTS (SELECT A1.ASOID '
      + '                                FROM CRE310 A1 '
      + '                               WHERE A1.ASOID = CAB.ASOID '
// Inicio: SPP_201301_GESCOB Se cambian los Parametros de las metas
      + '                                 AND A1.FORPAGID IN (''23'', ''24'') AND CREESTID NOT IN (''13'',''04'',''99'') )) A, GES_COB_DOM B '
// Fin: SPP_201301_GESCOB Se cambian los Parametros de las metas
      + '    WHERE A.ASOID = B.ASOID(+) '
      + '      AND B.TIPGES(+) = ' + QuotedStr(sTipGesBus)
      + xOrderBy;

   //COLOCAR CURSOR DE ESPERA MIENTRA SE OBTIENEN LOS DATOS DEL SERVIDOR
   Screen.Cursor := crHourGlass;
   DM1.cdsTipBoleta.Close;
   DM1.cdsTipBoleta.DataRequest(xSQL);
   DM1.cdsTipBoleta.Open;
   TNumericField(DM1.cdsTipBoleta.FieldByName('SALVEN')).DisplayFormat := '###,###,##0.#0';
   TNumericField(DM1.cdsTipBoleta.FieldByName('SALPEN')).DisplayFormat := '###,###,##0.#0';
   TNumericField(DM1.cdsTipBoleta.FieldByName('SALTOT')).DisplayFormat := '###,###,##0.#0';
   Screen.Cursor := crDefault;
End;

(******************************************************************************)
// INICIO : SPP_201402_GESCOB
Procedure TfBusGenAso.BitAsignaClick(Sender : TObject);
Var
   xAsoId, xUser, xSQL : String;
Begin
   If dtgBusqueda.DataSource.DataSet.RecordCount = 0 Then Exit;
   If StrToInt(Copy(DM1.NivelUsuario(DM1.wUsuario), 2, 1)) >= 2 Then
      xUser := fGestInt.dblUserInt.Text
   Else
      xUser := DM1.wUsuario;

   xAsoId := DM1.cdsTipBoleta.FieldByName('ASOID').AsString;
   xSQL := 'SELECT ASOID FROM ' + sTablaBus + ' WHERE ASOID=' + QuotedStr(xAsoId) + ' AND TIPGES=' + QuotedStr(sTipGesBus);

   If DM1.CountReg(xSQL) > 0 Then
   Begin
      MessageDlg('ASOCIADO YA SE ENCUENTRA EN GESTION !!!', mtInformation, [mbOk], 0);
      Exit;
   End
   Else
   Begin
      Screen.Cursor := crHourGlass;
      // INICIO : SPP_201401_GESCOB
      xSQL := 'INSERT INTO ' + sTablaBus + ' '
         + '           (PERIODO, OFDESID, USEID, UPAGOID, UPROID, CFC_F, CFC_N, ASOTIPID, ASOID, ASOAPENOM, '
         + '            SALVEN, SALPEN, SALTOT, CUOVEN, CUOPEN, ESTDES, SALACT, RESGES, USUARIO, '
         + '            USUASIG, FECASIG, ESTGES, TIPGES, ESTDEU, CFC_R, VENACT, PENACT, DIASTRANS, OBSGES, FHCIERRE, OFDES_ASIG, '
         + '            DIASTRANSACT, ZIPID, CODIGO_REGLA, ZIPIDCOL, CENEDUID, TIPCAM, SALDIF, CUODIF) '
         + '   SELECT PERIODO, OFDESID, USEID, UPAGOID, UPROID, CFC_F, CFC_N, ASOTIPID, ASOID, ASOAPENOM, '
         + '          SALVEN, SALPEN, SALTOT, CUOVEN, CUOPEN, ''ASIGNADA'', SALACT, ''02'', ' + QuotedStr(xUser) + ', '
         + QuotedStr(DM1.wUsuario) + ',SYSDATE,''01'',' + QuotedStr(sTipGesBus) + ',''01'',CFC_R, 0, 0, DIASTRANS,NULL,NULL,''' + DM1.xOfiDes + ''', '
         + '          DIASTRANSACT, ZIPID, CODIGO_REGLA, ZIPIDCOL, CENEDUID, '+QuotedStr(xsTipCam) + ', SALDIF, CUODIF'
         + '     FROM GES_COB_CAB '
         + '    WHERE ASOID=' + QuotedStr(xAsoId);
      DM1.DCOM1.AppServer.EjecutaSql(xSQL);
      // FIN: SPP_201401_GESCOB

      xSQL := 'UPDATE GES_COB_CAB SET ESTGES=''01'' WHERE ASOID=' + QuotedStr(xAsoId);
      DM1.DCOM1.AppServer.EjecutaSql(xSQL);
      Screen.Cursor := crDefault;
      DM1.cdsMovCre.Locate('ASOAPENOM', VarArrayOf([TRIM(DM1.cdsTipBoleta.FieldByName('ASOAPENOM').AsString)]), [loPartialKey]);
      Close;
   End;
End;
(******************************************************************************)

Procedure TfBusGenAso.bbtnAsignarClick(Sender : TObject);
Var
   xAsoId, xUser, xSQL : String;
Begin
   If dtgBusqueda.DataSource.DataSet.RecordCount = 0 Then Exit;

   xUser := fDistCart1.dblUserInt.Text;
   xAsoId := DM1.cdsTipBoleta.FieldByName('ASOID').AsString;

   If fDistCart1.rdbSeleccion.ItemIndex = 0 Then
      xSQL := 'SELECT ASOID FROM GES_COB_IND WHERE ASOID=' + QuotedStr(xAsoId) + ' AND TIPGES=' + QuotedStr(sTipGesBus)
   Else
      xSQL := 'SELECT ASOID FROM GES_COB_DOM WHERE ASOID=' + QuotedStr(xAsoId) + ' AND TIPGES=' + QuotedStr(sTipGesBus);

   If DM1.CountReg(xSQL) > 0 Then
   Begin
      MessageDlg('ASOCIADO YA SE ENCUENTRA EN GESTION !!!', mtInformation, [mbOk], 0);
      Exit;
   End
   Else
   Begin
      Screen.Cursor := crHourGlass;
// INICIO : SPP_201401_GESCOB
      If fDistCart1.rdbSeleccion.ItemIndex = 0 Then
         xSQL := 'INSERT INTO GES_COB_IND '
            + '    (PERIODO, OFDESID, USEID, UPAGOID, UPROID, CFC_F, CFC_N, ASOTIPID, ASOID, ASOAPENOM, SALVEN,  SALPEN, '
            + '     SALTOT, CUOVEN, CUOPEN, ESTDES, SALACT, RESGES, USUARIO,     USUASIG, FECASIG, ESTGES, TIPGES, ESTDEU, CFC_R, VENACT, PENACT, DIASTRANS, OBSGES, FHCIERRE, OFDES_ASIG,     DIASTRANSACT, ZIPID, CODIGO_REGLA, ZIPIDCOL, CENEDUID, TIPCAM, SALDIF, CUODIF) '
            + 'SELECT PERIODO, OFDESID, USEID, UPAGOID, UPROID, CFC_F, CFC_N, ASOTIPID, ASOID, ASOAPENOM, SALVEN, SALPEN, SALTOT, CUOVEN, CUOPEN, ''ASIGNADA'', SALACT, ''02'', ' + QuotedStr(xUser) + ', ' + QuotedStr(DM1.wUsuario) + ',SYSDATE,''01'',' + QuotedStr(sTipGesBus) + ',''01'',CFC_R, 0, 0, DIASTRANS,NULL,NULL,''' + DM1.xOfiDes + ''', DIASTRANSACT, ZIPID, CODIGO_REGLA, ZIPIDCOL, CENEDUID, '+QuotedStr(xsTipCam)+', SALDIF, CUODIF  FROM GES_COB_CAB WHERE ASOID=' + QuotedStr(xAsoId)
      Else
         If fDistCart1.rdbSeleccion.ItemIndex = 1 Then
            xSQL := 'INSERT INTO GES_COB_DOM '
               + '    (PERIODO, OFDESID, USEID, UPAGOID, UPROID, CFC_F, CFC_N, ASOTIPID, ASOID, ASOAPENOM, SALVEN,  SALPEN, '
               + '     SALTOT, CUOVEN, CUOPEN, ESTDES, SALACT, RESGES, USUARIO,     USUASIG, FECASIG, ESTGES, TIPGES, ESTDEU, CFC_R, VENACT, PENACT, DIASTRANS, OBSGES, FHCIERRE, OFDES_ASIG,     DIASTRANSACT, ZIPID, CODIGO_REGLA, ZIPIDCOL, CENEDUID, TIPCAM, SALDIF, CUODIF) '
               + 'SELECT PERIODO, OFDESID, USEID, UPAGOID, UPROID, CFC_F, CFC_N, ASOTIPID, ASOID, ASOAPENOM, SALVEN, SALPEN, SALTOT, CUOVEN, CUOPEN, ''ASIGNADA'', SALACT, ''02'', ' + QuotedStr(xUser) + ', ' + QuotedStr(DM1.wUsuario) + ',SYSDATE,''01'',' + QuotedStr(sTipGesBus) + ',''01'',CFC_R, 0, 0, DIASTRANS,NULL,NULL,''' + DM1.xOfiDes + ''', DIASTRANSACT, ZIPID, CODIGO_REGLA, ZIPIDCOL, CENEDUID, '+QuotedStr(xsTipCam)+', SALDIF, CUODIF  FROM GES_COB_CAB WHERE ASOID=' + QuotedStr(xAsoId);
      DM1.DCOM1.AppServer.EjecutaSql(xSQL);
      xSQL := 'UPDATE GES_COB_CAB SET ESTGES=''01'' WHERE ASOID=' + QuotedStr(xAsoId) + ' AND ESTGES IS NULL';
      DM1.DCOM1.AppServer.EjecutaSql(xSQL);
// FIN : SPP_201401_GESCOB
      Screen.Cursor := crDefault;
      Close;
   End;
End;
// FIN : SPP_201402_GESCOB
(******************************************************************************)
(******************************************************************************)
(******************************************************************************)

Procedure TfBusGenAso.FormKeyPress(Sender : TObject; Var Key : Char);
Begin
   If Key = #13 Then
   Begin
      Key := #0;
      Perform(WM_NEXTDLGCTL, 0, 0);
   End
End;

(******************************************************************************)

Procedure TfBusGenAso.dtgBusquedaDrawDataCell(Sender : TObject;
   Const Rect : TRect; Field : TField; State : TGridDrawState);
Begin
   dtgBusqueda.Canvas.Font.Color := clNavy;
   dtgBusqueda.DefaultDrawDataCell(rect, Field, State);

   If Field.FieldName = 'SALVEN' Then
   Begin
      dtgBusqueda.Canvas.Font.Color := clRed;
      dtgBusqueda.DefaultDrawDataCell(rect, Field, State);
   End;
   If Field.FieldName = 'SALPEN' Then
   Begin
      dtgBusqueda.Canvas.Font.Color := clGreen;
      dtgBusqueda.DefaultDrawDataCell(rect, Field, State);
   End;

   If Field.FieldName = 'SALTOT' Then
   Begin
      dtgBusqueda.Canvas.Font.Color := clBlack;
      dtgBusqueda.DefaultDrawDataCell(rect, Field, State);
   End;

   If Field.FieldName = 'PRIORIDAD' Then
   Begin
      If (DM1.cdsTipBoleta.FieldByName('PRIORIDAD').asstring = 'ALTA') Then
      Begin
         dtgBusqueda.Canvas.Font.Color := clRed;
         dtgBusqueda.Canvas.Font.Style := [fsBold, fsUnderline];
         dtgBusqueda.DefaultDrawDataCell(rect, Field, State);
      End;
   End;

End;

(******************************************************************************)

Procedure TfBusGenAso.rdbDniClick(Sender : TObject);
Begin
   Limpia;
   edtBuscar.MaxLength := 8;
   edtBuscar.Width := 85;
   z2bbtnBuscar.Left := 250;
   edtBuscar.Text := '';
   edtBuscar.SetFocus;
End;

(******************************************************************************)

Procedure TfBusGenAso.rdbNombreClick(Sender : TObject);
Begin
   Limpia;
   edtBuscar.MaxLength := 60;
   edtBuscar.Width := 316;
   z2bbtnBuscar.Left := 479;
   edtBuscar.Text := '';
   edtBuscar.SetFocus;
End;

(******************************************************************************)

Procedure TfBusGenAso.BitSalirClick(Sender : TObject);
Begin
   Close;
End;
(******************************************************************************)
// INICIO : SPP_201401_GESCOB
procedure TfBusGenAso.FormCreate(Sender: TObject);
begin
  xsTipCam := 'NORMAL';
end;
// FIN : SPP_201401_GESCOB
(******************************************************************************)
End.

