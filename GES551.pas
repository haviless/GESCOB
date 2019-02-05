// Inicio Uso Estándares: 01/08/2011
// Unidad : Gestión de Cobranzas
// Formulario : FRepAsiCarDet
// Fecha de Creación : 17/07/2012
// Autor : Equipo de Sistemas
// Objetivo :  Mostrar el Detalle del Reporte de Asignacion de Cartera de Asociados a Gestionar
// Actualizaciones:
// HPC_201205_GESCOB 17/07/2012 Crear Reporte de Asignacion de Cartera de Asociados a Gestionar(nuevo)
// DPP_201205_GESCOB: Pase a producción a partir de los pases HPC_201205 y HPC_201206
// HPC_201305_GESCOB: F2 04/06/2013 Se modificó las consultas a la BD, para incluir la nueva marca asociada al motivo de liberación porque la BD fue actualizada
// SPP_201305_GESCOB: Se realiza el pase a producción a partir del HPC_201305_GESCOB

Unit GES551;

Interface

Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, Buttons, ExtCtrls, Grids, Wwdbigrd, Wwdbgrid,
   wwExport, shellapi;

Type
   TConsulta = (tcRACDLimMetAsig, tcRACDLimMetGesDom, tcRACDProvAsig, tcRACDProvGesDom);
   TFRepAsiCarDet = Class(TForm)
      pnl1 : TPanel;
      btnSalir : TBitBtn;
      btnExportar : TBitBtn;
      dbgDetalle : TwwDBGrid;
      Procedure btnSalirClick(Sender : TObject);
      Procedure btnExportarClick(Sender : TObject);
      Procedure FormShow(Sender : TObject);
   Private
      xxTipoConsulta : TConsulta;
      xsPeriodoCartera : String;
      xsUsuario : String;
   Public
      Constructor Create(AOwner : TComponent; wgTipoc : TConsulta; wgPeriodoCartera : String; wgUsuario : String); Overload;
   End;

Var
   FRepAsiCarDet : TFRepAsiCarDet;

Implementation

Uses GESDM1;

{$R *.dfm}

(******************************************************************************)

Constructor TFRepAsiCarDet.Create(AOwner : TComponent; wgTipoc : TConsulta; wgPeriodoCartera : String; wgUsuario : String);
Begin
   self.xxTipoConsulta := wgTipoc;
   self.xsPeriodoCartera := wgPeriodoCartera;
   self.xsUsuario := wgUsuario;
   self.Create(AOwner);
End;

(******************************************************************************)

Procedure TFRepAsiCarDet.FormShow(Sender : TObject);
Var
   xsSQL : String;
   xsSQLWhere : String;
Begin
   Case self.xxTipoConsulta Of
      tcRACDLimMetAsig, tcRACDLimMetGesDom :
         Begin
            xsSQLWhere := ' OFI.DPTOID = ''15'' AND OFI.IDCONOFI = ''S'' AND OFI.OFIPRI = ''01'' ';
         End;
      tcRACDProvAsig, tcRACDProvGesDom :
         Begin
            xsSQLWhere := ' OFI.DPTOID <> ''15'' ';
         End;
   End;

   If (self.xxTipoConsulta = tcRACDLimMetAsig) Or (self.xxTipoConsulta = tcRACDProvAsig) Then
   Begin
      xsSQL :=
         '  SELECT OFI.OFDESNOM, ASIG.USERID USUARIO, DPTO.DPTODES, PROV.CIUDDES, DIST.ZIPDES, '
         + '       REG.CODIGO_PRIORIDAD, APO.ASOAPENOMDNI, APO.ASODNI, APO.ASOCODMOD, APO.ASOTELF1, '
         + '       APO.ASODIR, APO.ZIPID, UNI.ASOID '
         + '  FROM GES_COB_USU_OFI_PER ASIG, APO110 OFI, '
         + '       (SELECT DISTINCT USUARIO, ASOID, CODIGO_REGLA '
         + '          FROM GES_COB_DOM '
         + '         WHERE PERIODO = ' + QuotedStr(self.xsPeriodoCartera)
         + '         UNION '
         + '        SELECT DISTINCT USUARIO, ASOID, CODIGO_REGLA '
         + '          FROM GES_COB_DOM_HIS '
         + '         WHERE PERIODO = ' + QuotedStr(self.xsPeriodoCartera)
// Inicio: SPP_201305_GESCOB F2 nuevo campo en la BD
         + '               AND ASIGNADO = ''S'' '
// Fin: SPP_201305_GESCOB
         + '        UNION '
         + '        SELECT DISTINCT USUARIO, ASOID, CODIGO_REGLA '
         + '          FROM GES_COB_IND '
         + '         WHERE PERIODO = ' + QuotedStr(self.xsPeriodoCartera)
         + '        UNION '
         + '        SELECT DISTINCT USUARIO, ASOID, CODIGO_REGLA '
         + '          FROM GES_COB_IND_HIS '
         + '         WHERE PERIODO = ' + QuotedStr(self.xsPeriodoCartera)
// Inicio: SPP_201305_GESCOB F2 nuevo campo en la BD
         + '               AND ASIGNADO = ''S'' '
// Fin: SPP_201305_GESCOB
         + '       ) UNI, GES_COB_REG REG, APO201 APO, APO158 DPTO, APO123 PROV, '
         + '       APO122 DIST '
         + ' WHERE ASIG.PERIODO = ' + QuotedStr(self.xsPeriodoCartera)
         + '   AND ASIG.OFDESID = OFI.OFDESID '
         + '   AND ' + xsSQLWhere
         + '   AND ASIG.USERID = ' + QuotedStr(self.xsUsuario)
         + '   AND ASIG.USERID = UNI.USUARIO '
         + '   AND UNI.CODIGO_REGLA = REG.CODIGO_REGLA '
         + '   AND UNI.ASOID = APO.ASOID '
         + '   AND SUBSTR(APO.ZIPID, 1, 2) = DPTO.DPTOID(+) '
         + '   AND SUBSTR(APO.ZIPID, 1, 4) = PROV.CIUDID(+) '
         + '   AND APO.ZIPID = DIST.ZIPID(+) '
         + '   AND UNI.CODIGO_REGLA IS NOT NULL '
         + ' ORDER BY OFI.OFDESNOM, ASIG.USERID, REG.CODIGO_PRIORIDAD, DPTO.DPTODES, PROV.CIUDDES, DIST.ZIPDES, '
         + '          REG.CODIGO_PRIORIDAD, APO.ASOAPENOMDNI ';
   End;

   If (self.xxTipoConsulta = tcRACDLimMetGesDom) Or (self.xxTipoConsulta = tcRACDProvGesDom) Then
   Begin
      xsSQL :=
         '  SELECT OFI.OFDESNOM, ASIG.USERID USUARIO, DPTO.DPTODES, PROV.CIUDDES, DIST.ZIPDES, '
         + '       REG.CODIGO_PRIORIDAD, APO.ASOAPENOMDNI, APO.ASODNI, APO.ASOCODMOD, APO.ASOTELF1, '
         + '       APO.ASODIR, APO.ZIPID, UNI.ASOID '
         + '  FROM GES_COB_USU_OFI_PER ASIG, APO110 OFI, '
         + '       (SELECT DISTINCT USUARIO, ASOID, CODIGO_REGLA, ''DOMICILIARIA'' TIPO_GESTION '
         + '          FROM GES_COB_DOM '
         + '         WHERE PERIODO = ' + QuotedStr(self.xsPeriodoCartera)
         + '         UNION '
         + '        SELECT DISTINCT USUARIO, ASOID, CODIGO_REGLA, ''DOMICILIARIA'' TIPO_GESTION '
         + '          FROM GES_COB_DOM_HIS '
         + '         WHERE PERIODO = ' + QuotedStr(self.xsPeriodoCartera)
// Inicio: SPP_201305_GESCOB F2 nuevo campo en la BD
         + '               AND ASIGNADO = ''S'' '
// Fin: SPP_201305_GESCOB
         + '        UNION '
         + '        SELECT DISTINCT USUARIO, ASOID, CODIGO_REGLA, ''TELEFONICA'' TIPO_GESTION '
         + '          FROM GES_COB_IND '
         + '         WHERE PERIODO = ' + QuotedStr(self.xsPeriodoCartera)
         + '        UNION '
         + '        SELECT DISTINCT USUARIO, ASOID, CODIGO_REGLA, ''TELEFONICA'' TIPO_GESTION '
         + '          FROM GES_COB_IND_HIS '
         + '         WHERE PERIODO = ' + QuotedStr(self.xsPeriodoCartera)
// Inicio: SPP_201305_GESCOB F2 nuevo campo en la BD
         + '               AND ASIGNADO = ''S'' '
// Fin: SPP_201305_GESCOB
         + '       ) UNI, GES_COB_REG REG, APO201 APO, APO158 DPTO, APO123 PROV, '
         + '       APO122 DIST, '
         + ' (SELECT PERIODO, ASOID, USUARIO, IDGESTIONDET '
         + '           FROM (SELECT PERIODO, ASOID, USUARIO, IDGESTIONDET, '
         + '                        DENSE_RANK() OVER(PARTITION BY PERIODO, ASOID, USUARIO ORDER BY PERIODO, ASOID, FECHA DESC, HORA DESC) DRNK '
         + '                    FROM GES_COB_SEG '
         + '                   WHERE PERIODO = ' + QuotedStr(self.xsPeriodoCartera)
         + '                     AND USUARIO = ' + QuotedStr(self.xsUsuario)
         + '                ) '
         + '          WHERE DRNK = 1 '
         + ' ) SEG '
         + ' WHERE ASIG.PERIODO = ' + QuotedStr(self.xsPeriodoCartera)
         + '   AND ASIG.OFDESID = OFI.OFDESID '
         + '   AND ' + xsSQLWhere
         + '   AND ASIG.USERID = ' + QuotedStr(self.xsUsuario)
         + '   AND ASIG.USERID = UNI.USUARIO '
         + '   AND UNI.CODIGO_REGLA = REG.CODIGO_REGLA '
         + '   AND UNI.ASOID = APO.ASOID '
         + '   AND SUBSTR(APO.ZIPID, 1, 2) = DPTO.DPTOID(+) '
         + '   AND SUBSTR(APO.ZIPID, 1, 4) = PROV.CIUDID(+) '
         + '   AND APO.ZIPID = DIST.ZIPID(+) '
         + '   AND UNI.CODIGO_REGLA IS NOT NULL '
         + '   AND UNI.TIPO_GESTION = ''DOMICILIARIA'' '
         + '   AND UNI.USUARIO = SEG.USUARIO '
         + '   AND UNI.ASOID = SEG.ASOID '
         + '   AND ' + QuotedStr(self.xsPeriodoCartera) + ' = SEG.PERIODO '
         + '   AND CASE WHEN UNI.TIPO_GESTION = ''DOMICILIARIA'' THEN ''3'' '
         + '            WHEN UNI.TIPO_GESTION = ''TELEFONICA'' THEN ''1'' '
         + '        END = SUBSTR(SEG.IDGESTIONDET, 1, 1) '
         + ' ORDER BY OFI.OFDESNOM, ASIG.USERID, REG.CODIGO_PRIORIDAD, DPTO.DPTODES, PROV.CIUDDES, DIST.ZIPDES, '
         + '          REG.CODIGO_PRIORIDAD, APO.ASOAPENOMDNI ';
   End;

   DM1.cdsQry6.Close;
   DM1.cdsQry6.DataRequest(xsSQL);
   DM1.cdsQry6.Open;
   dbgDetalle.DataSource := DM1.dsQry6;
   With dbgDetalle, dbgDetalle.DataSource.DataSet Do
   Begin
      Selected.Clear;
      Selected.Add('OFDESNOM'#9'20'#9'OFIDES');
      Selected.Add('USUARIO'#9'15'#9'GESTOR');
      Selected.Add('DPTODES'#9'15'#9'DEPARTAMENTO');
      Selected.Add('CIUDDES'#9'15'#9'PROVINCIA');
      Selected.Add('ZIPDES'#9'15'#9'DISTRITO');
      Selected.Add('CODIGO_PRIORIDAD'#9'5'#9'PRIO.');
      Selected.Add('ASOAPENOMDNI'#9'15'#9'ASOCIADO');
      Selected.Add('ASODNI'#9'10'#9'DNI');
      Selected.Add('ASOCODMOD'#9'10'#9'COD MOD');
      Selected.Add('ASOTELF1'#9'10'#9'TELEFONO');
      Selected.Add('ASODIR'#9'35'#9'DIRECCION');
      ApplySelected;

      ColumnByName('OFDESNOM').FooterValue := 'Cantidad';
      ColumnByName('USUARIO').FooterValue := FormatCurr('###,##0', DM1.cdsQry6.RecordCount);
   End;
End;

(******************************************************************************)

Procedure TFRepAsiCarDet.btnSalirClick(Sender : TObject);
Begin
   self.Close;
End;
(******************************************************************************)

Procedure TFRepAsiCarDet.btnExportarClick(Sender : TObject);
Begin
   With dbgDetalle, dbgDetalle.ExportOptions Do
   Begin
      ExportType := wwgetSYLK;
      FileName := 'DetalleAsignacion.slk';
      DM1.OpcionesExportExcel(ExportOptions);
      ExportOptions.TitleName := 'DetAsig';
      Save;
      If Not (esoClipboard In Options) Then
         ShellExecute(Handle, 'Open', PChar(exportoptions.Filename), Nil, Nil, sw_shownormal);
   End;
End;
(******************************************************************************)

End.

