// Inicio Uso Estándares: 01/08/2011
// Unidad : Gestión de Cobranzas
// Formulario : FAsigOfiPer
// Fecha de Creación : 17/07/2012
// Autor : Equipo de Sistemas
// Objetivo :  Asignar una ofides por gestor - para el Reporte de Asignacion de Cartera de Asociados a Gestionar
// Actualizaciones:
// HPC_201205_GESCOB 17/07/2012 Crear Reporte de Asignacion de Cartera de Asociados a Gestionar(nuevo)
// DPP_201205_GESCOB: Pase a producción a partir de los pases HPC_201205 y HPC_201206

Unit GES005;

Interface

Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, Buttons, ExtCtrls, wwdblook, Grids, Wwdbigrd, Wwdbgrid,
   GES006;

Type
   TFAsigOfiPer = Class(TForm)
      pnlControles : TPanel;
      btnSalir : TBitBtn;
      pnlFiltroGestor : TPanel;
      lbl1 : TLabel;
      cboPeriodoCartera : TwwDBLookupCombo;
      pnl1 : TPanel;
      pnl2 : TPanel;
      pnl3 : TPanel;
      btnAddLimMet : TButton;
      btnDelLimMet : TButton;
      btnAddProv : TButton;
      btnDelProv : TButton;
      gbx1 : TGroupBox;
      gbx2 : TGroupBox;
      gbx3 : TGroupBox;
      dbgGesSinOfi : TwwDBGrid;
      dbgGesLimMet : TwwDBGrid;
      dbgGesProv : TwwDBGrid;
      Procedure FormCreate(Sender : TObject);
      Procedure cboPeriodoCarteraChange(Sender : TObject);
      Procedure btnAddLimMetClick(Sender : TObject);
      Procedure btnAddProvClick(Sender : TObject);
      Procedure btnDelLimMetClick(Sender : TObject);
      Procedure btnDelProvClick(Sender : TObject);
      Procedure btnSalirClick(Sender : TObject);
   Private
      Procedure fn_cargar_usuarios_lim_metropolitana;
      Procedure fn_cargar_usuarios_provincias;
      Procedure fn_cargar_usuarios_sin_asignar;
      Function fn_is_selecciono_oficina_lim_metropolitana : boolean;
      Function fn_is_selecciono_oficina_provincia : boolean;
      Function fn_is_retiro_usu_lim_Metropolitana : boolean;
      Function fn_is_retiro_usu_provincia : boolean;
      Function fn_insertar_seleccion(wgOfdesid : String; wgUserId : String) : boolean;
      Function fn_retirar_seleccion(wgUserId : String) : boolean;
    { Private declarations }
   Public
    { Public declarations }
   End;

Var
   FAsigOfiPer : TFAsigOfiPer;

Implementation

Uses GESDM1;

{$R *.dfm}
(******************************************************************************)

Procedure TFAsigOfiPer.FormCreate(Sender : TObject);
Var
   xsSQL : String;
Begin
   xsSQL := 'SELECT DISTINCT PERIODO'
      + '      FROM GES_COB_CFC000_CAB ' // SE PODRIA CAMBIAR POR GES000
      + '     ORDER BY PERIODO DESC ';
   DM1.cdsQry3.Close;
   DM1.cdsQry3.DataRequest(xsSQL);
   DM1.cdsQry3.Open;
   cboPeriodoCartera.LookupTable := DM1.cdsQry3;
   cboPeriodoCartera.LookupField := 'PERIODO';

   cboPeriodoCartera.Selected.Clear;
   cboPeriodoCartera.Selected.Add('PERIODO'#9'8'#9'Periodo');

End;

(******************************************************************************)

Procedure TFAsigOfiPer.cboPeriodoCarteraChange(Sender : TObject);
Begin
   If trim(cboPeriodoCartera.Text) <> '' Then
   Begin
      Screen.Cursor := crHourGlass;
      fn_cargar_usuarios_sin_asignar();
      fn_cargar_usuarios_lim_metropolitana();
      fn_cargar_usuarios_provincias();
      Screen.Cursor := crDefault;
   End;
End;
(******************************************************************************)

Procedure TFAsigOfiPer.fn_cargar_usuarios_sin_asignar();
Var
   xsSQL : String;
Begin
   xsSQL :=
      '  SELECT A.USERNIV, A.USERID, B.USERNOM '
      + '  FROM GES_NIV_USU_OTO A, TGE006 B '
      + ' WHERE A.USERID = B.USERID '
      + '   AND A.USERNIV = ''N1'' '
      + '   AND NOT EXISTS (SELECT USERID '
      + '                     FROM GES_COB_USU_OFI_PER C '
      + '                    WHERE C.USERID = A.USERID '
      + '                      AND PERIODO = ' + QuotedStr(cboPeriodoCartera.Text) + ') '
      + ' ORDER BY A.USERID ';
   DM1.cdsQry4.Close;
   DM1.cdsQry4.DataRequest(xsSQL);
   DM1.cdsQry4.Open;

   With dbgGesSinOfi Do
   Begin
      DataSource := DM1.dsQry4;
      Selected.Clear;
      Selected.Add('USERID'#9'15'#9'ID');
      Selected.Add('USERNOM'#9'25'#9'GESTOR');
      ApplySelected;
   End;
   btnAddLimMet.Enabled := DM1.cdsQry4.RecordCount > 0;
   btnAddProv.Enabled := btnAddLimMet.Enabled;
End;
(******************************************************************************)

Procedure TFAsigOfiPer.fn_cargar_usuarios_lim_metropolitana();
Var
   xsSQL : String;
Begin
   xsSQL :=
      '  SELECT A.USERNIV, A.USERID, B.USERNOM, D.OFDESNOM '
      + '  FROM GES_NIV_USU_OTO A, TGE006 B, GES_COB_USU_OFI_PER C, APO110 D '
      + ' WHERE A.USERID = B.USERID'
      + '   AND A.USERNIV = ''N1'' '
      + '   AND A.USERID = C.USERID '
      + '   AND C.PERIODO = ' + QuotedStr(cboPeriodoCartera.Text)
      + '   AND C.OFDESID = D.OFDESID '
      + '   AND D.DPTOID = ''15'' '
      + '   AND D.IDCONOFI = ''S'' '
      + '   AND D.OFIPRI = ''01'' '
      + ' ORDER BY A.USERID ';
   DM1.cdsQry5.Close;
   DM1.cdsQry5.DataRequest(xsSQL);
   DM1.cdsQry5.Open;

   With dbgGesLimMet Do
   Begin
      DataSource := DM1.dsQry5;
      Selected.Clear;
      Selected.Add('USERID'#9'15'#9'ID');
      Selected.Add('USERNOM'#9'25'#9'GESTOR');
      Selected.Add('OFDESNOM'#9'30'#9'OFIDES');
      ApplySelected;
   End;
   btnDelLimMet.Enabled := DM1.cdsQry5.RecordCount > 0;
End;
(******************************************************************************)

Procedure TFAsigOfiPer.fn_cargar_usuarios_provincias();
Var
   xsSQL : String;
Begin
   xsSQL :=
      '  SELECT A.USERNIV, A.USERID, B.USERNOM, D.OFDESNOM '
      + '  FROM GES_NIV_USU_OTO A, TGE006 B, GES_COB_USU_OFI_PER C, APO110 D '
      + ' WHERE A.USERID = B.USERID'
      + '   AND A.USERNIV = ''N1'' '
      + '   AND A.USERID = C.USERID '
      + '   AND C.PERIODO = ' + QuotedStr(cboPeriodoCartera.Text)
      + '   AND C.OFDESID = D.OFDESID '
      + '   AND D.DPTOID <> ''15'' '
      + ' ORDER BY A.USERID ';
   DM1.cdsQry6.Close;
   DM1.cdsQry6.DataRequest(xsSQL);
   DM1.cdsQry6.Open;

   With dbgGesProv Do
   Begin
      DataSource := DM1.dsQry6;
      Selected.Clear;
      Selected.Add('USERID'#9'15'#9'ID');
      Selected.Add('USERNOM'#9'25'#9'GESTOR');
      Selected.Add('OFDESNOM'#9'30'#9'OFIDES');
      ApplySelected;
   End;
   btnDelProv.Enabled := DM1.cdsQry6.RecordCount > 0;
End;

(******************************************************************************)

Function TFAsigOfiPer.fn_insertar_seleccion(wgOfdesid : String; wgUserId : String) : boolean;
Var
   xSQL : String;
Begin
   Try
      xSQL := 'INSERT INTO GES_COB_USU_OFI_PER '
         + '          (PERIODO, OFDESID, USERID, FREG, UREG) '
         + ' VALUES (' + QuotedStr(cboPeriodoCartera.Text) + ' , ' + QuotedStr(wgOfdesid) + ' , '
         + QuotedStr(wgUserId) + ', SYSDATE ,' + QuotedStr(DM1.wUsuario) + ') ';
      DM1.DCOM1.AppServer.EjecutaSql(xSQL);
      result := true;
   Except
      result := false;
   End;
End;

(******************************************************************************)

Function TFAsigOfiPer.fn_is_selecciono_oficina_lim_metropolitana : boolean;
Var
   xxFrm : TFSelOficina;
   xlResult : Boolean;
Begin
   xlResult := false;
   Try
      xxFrm := TFSelOficina.Create(Self,tcSOLimaMetropolitana);
      If xxFrm.ShowModal = mrok Then
         xlResult := fn_insertar_seleccion(xxFrm.xsResultOfDesId, DM1.cdsQry4.fieldbyname('USERID').asstring)
      Else
         xlResult := False;
   Finally
      xxFrm.Free;
   End;
   result := xlResult;
End;
(******************************************************************************)

Function TFAsigOfiPer.fn_is_selecciono_oficina_provincia() : boolean;
Var
   xxFrm : TFSelOficina;
   xlResult : Boolean;
Begin
   xlResult := false;
   Try
      xxFrm := TFSelOficina.Create(Self,tcSOProvincia);
      If xxFrm.ShowModal = mrok Then
         xlResult := fn_insertar_seleccion(xxFrm.xsResultOfDesId, DM1.cdsQry4.fieldbyname('USERID').asstring)
      Else
         xlResult := False;
   Finally
      xxFrm.Free;
   End;
   result := xlResult;
End;
(******************************************************************************)

Function TFAsigOfiPer.fn_retirar_seleccion(wgUserId : String) : boolean;
Var
   xSQL : String;
Begin
   Try
      xSQL :=
         '  DELETE FROM GES_COB_USU_OFI_PER '
         + ' WHERE PERIODO = ' + QuotedStr(cboPeriodoCartera.Text)
         + '   AND USERID = ' + QuotedStr(wgUserId);
      DM1.DCOM1.AppServer.EjecutaSql(xSQL);
      result := true;
   Except
      result := false;
   End;
End;
(******************************************************************************)

Function TFAsigOfiPer.fn_is_retiro_usu_lim_Metropolitana() : boolean;
Begin
   result := fn_retirar_seleccion(DM1.cdsQry5.fieldbyname('USERID').AsString);
End;
(******************************************************************************)

Function TFAsigOfiPer.fn_is_retiro_usu_provincia() : boolean;
Begin
   result := fn_retirar_seleccion(DM1.cdsQry6.fieldbyname('USERID').AsString);
End;
(******************************************************************************)

Procedure TFAsigOfiPer.btnAddLimMetClick(Sender : TObject);
Begin
   If fn_is_selecciono_oficina_lim_metropolitana() Then
   Begin
      Screen.Cursor := crHourGlass;
      fn_cargar_usuarios_sin_asignar();
      fn_cargar_usuarios_lim_metropolitana();
      Screen.Cursor := crDefault;
   End;
End;

(******************************************************************************)

Procedure TFAsigOfiPer.btnAddProvClick(Sender : TObject);
Begin
   If fn_is_selecciono_oficina_provincia() Then
   Begin
      Screen.Cursor := crHourGlass;
      fn_cargar_usuarios_sin_asignar();
      fn_cargar_usuarios_provincias();
      Screen.Cursor := crDefault;
   End;
End;
(******************************************************************************)

Procedure TFAsigOfiPer.btnDelLimMetClick(Sender : TObject);
Begin
   If DM1.cdsQry5.RecordCount > 0 Then
   Begin
      If fn_is_retiro_usu_lim_Metropolitana() Then
      Begin
         Screen.Cursor := crHourGlass;
         fn_cargar_usuarios_sin_asignar();
         fn_cargar_usuarios_lim_metropolitana();
         Screen.Cursor := crDefault;
      End;
   End;
End;
(******************************************************************************)

Procedure TFAsigOfiPer.btnDelProvClick(Sender : TObject);
Begin
   If DM1.cdsQry6.RecordCount > 0 Then
   Begin
      If fn_is_retiro_usu_provincia() Then
      Begin
         Screen.Cursor := crHourGlass;
         fn_cargar_usuarios_sin_asignar();
         fn_cargar_usuarios_provincias();
         Screen.Cursor := crDefault;
      End;
   End;
End;
(******************************************************************************)

Procedure TFAsigOfiPer.btnSalirClick(Sender : TObject);
Begin
   close();
End;
(******************************************************************************)
End.

