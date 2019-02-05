// Inicio Uso Estándares: 01/08/2011
// Unidad : Gestión de Cobranzas
// Formulario : FProRepMacro
// Fecha de Creación :
// Autor : Equipo de Sistemas
// Objetivo : Detalle de Reporte de indicadores de efectividad a nivel macro
// Actualizaciones:
// HPC_201120_GESCOB 28/11/2011 reporte de indicadores de efectividad a nivel macro  (recreado)
// HPC_201205_GESCOB 10/04/2012 modificar reporte de efectividad para que se visualizen los datos en linea (recreado)
// HPC_201205_GESCOB 10/04/2012 agregar la opcion de consolidado de gestores.
// DPP_201205_GESCOB: Pase a producción a partir de los pases HPC_201205 y HPC_201206
// HPC_201305_GESCOB: F2 04/06/2013 Se modificó las consultas a la BD, para incluir la nueva marca asociada al motivo de liberación porque la BD fue actualizada
// SPP_201305_GESCOB: Se realiza el pase a producción a partir del HPC_201305_GESCOB

Unit GES315;

Interface

Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, Buttons, ExtCtrls, Grids, Wwdbigrd, Wwdbgrid, wwExport, shellapi, db,
   GESDM1;

Type
   TfDetRepConAsig = Class(TForm)
      Panel2 : TPanel;
      btnExcel : TBitBtn;
      btnSalir : TBitBtn;
      dbgPrincipal : TwwDBGrid;
      Panel1 : TPanel;
      lblTipoGestor : TLabel;
      lblTipFiltroSeleccionado : TLabel;
      lblPeriodo : TLabel;
      Label1 : TLabel;
      lblTipFiltro : TLabel;
      Label6 : TLabel;
      Procedure btnSalirClick(Sender : TObject);
      Procedure btnExcelClick(Sender : TObject);
      Procedure FormShow(Sender : TObject);
   Private
    { Private declarations }
   Public
      xxTipoReporte : TEDetRepConAsig;
      xsSQLTipGestor : String;
      xsSQLTablaUsuarios : String;
      xsSQLTipGestorDes : String;
      xsGestor : String;
      xsPeriodoGestion : String;
      xsFechaIniGestion : String;
      xsFechaFinGestion : String;
      xsFechaMaxPago : String;
      xsSQLUbiDom : String;
      xsSQLUbiTel : String;
      xsSQLGesDom : String;
      xsSQLGesTel : String;
      xsCFC_F : String;
      xsCFCDES_F : String;
      xsUbigeo : String;
      xsUbigeoDes : String;
   End;

Var
   fDetRepConAsig : TfDetRepConAsig;

Implementation

{$R *.dfm}
(******************************************************************************)

Procedure TfDetRepConAsig.FormShow(Sender : TObject);
Var
   xsSQL : String;
   xnTotal : Integer;
   xnEfeMont : Double;
   xnBanMont : Double;
   xnRefMont : Double;
   xnAboMont : Double;
   xnLiqMont : Double;
   xsWhereUbigeo : String;
   xsDptoid : String;
   xsCiudid : String;
   xsZipid : String;
Begin
   Screen.Cursor := crHourGlass;

   lblTipoGestor.Caption := xsSQLTipGestorDes;
   lblPeriodo.Caption := xsPeriodoGestion;

   If self.xxTipoReporte = trGestor Then
   Begin
      lblTipFiltro.Caption := 'Gestor';
      lblTipFiltroSeleccionado.Caption := xsGestor;
      xsSQL := 'SELECT ASODNI, ASOAPENOM, CFCDES_F, UPROID, UPAGOID, '
         + '       USEID, EFE_MONT, BAN_MONT, REF_MONT, ABO_MONT, '
         + '       LIQ_MONT, ' + QuotedStr(xsSQLTipGestorDes) + ' TIPO_GESTOR, '
         + '       TIP_GEST_DES TIPO_GESTION, USUARIO GESTOR_DESC, '
         + '       UBICABILIDAD, REFERENCIA GESTION_DESC, IDGESTIONDET '
         + '  FROM (SELECT UNIVERSO.TIP_GEST_DES, UNIVERSO.UBICABILIDAD, '
         + '               UNIVERSO.IDGESTIONDET, UNIVERSO.REFERENCIA, UNIVERSO.USUARIO, '
         + '               UNIVERSO.FECHA_ULT_GES, UNIVERSO.ASOID, '
         + '               SUM(CASE WHEN PAGO.TIPPAG = ''BAN'' THEN NVL(PAGO.MONCOBTOT, 0) ELSE 0 END) BAN_MONT, '
         + '               SUM(CASE WHEN PAGO.TIPPAG = ''REF'' THEN NVL(PAGO.MONCOBTOT, 0) ELSE 0 END) REF_MONT, '
         + '               SUM(CASE WHEN PAGO.TIPPAG = ''EFE'' THEN NVL(PAGO.MONCOBTOT, 0) ELSE 0 END) EFE_MONT, '
         + '               SUM(CASE WHEN PAGO.TIPPAG = ''ABO'' THEN NVL(PAGO.MONCOBTOT, 0) ELSE 0 END) ABO_MONT, '
         + '               SUM(CASE WHEN PAGO.TIPPAG = ''LIQ'' THEN NVL(PAGO.MONCOBTOT, 0) ELSE 0 END) LIQ_MONT, '
         + '               MAX(UPROID) UPROID, MAX(UPAGOID) UPAGOID, MAX(USEID) USEID, MAX(CFCDES_F) CFCDES_F, '
         + '               MAX(ASOAPENOM) ASOAPENOM, MAX(ASODNI) ASODNI '
         + '          FROM (SELECT ASIGNADO.TIP_GEST_DES, '
         + '                       CASE WHEN REFERENCIA.CONTACTADO = ''S'' THEN ''CONTACTADO'' '
         + '                            WHEN REFERENCIA.CONTACTADO = ''N'' THEN ''NO CONTACTADO'' '
         + '                            ELSE ''PENDIENTE'' '
         + '                        END UBICABILIDAD, GESTION.IDGESTIONDET, '
         + '                       REFERENCIA.DESCRIPCION REFERENCIA, ASIGNADO.USUARIO, '
         + '                       GESTION.FECHA_ULT_GES, ASIGNADO.ASOID, '
         + '                       ASIGNADO.UPROID, ASIGNADO.UPAGOID, ASIGNADO.USEID, ASIGNADO.CFC_F, '
         + '                       CALIFICACION.CFCDES_F, ASIGNADO.ASOAPENOM, APO201.ASODNI '
         + '                  FROM (SELECT ASOID, TIP_GEST_DES, USUARIO, UPROID, UPAGOID, USEID, CFC_F, ASOAPENOM, '
         + '                               DENSE_RANK() OVER(PARTITION BY TIP_GEST_DES, ASOID ORDER BY TIP_GEST_DES, ASOID, FECASIG DESC) DRNK '
         + '                          FROM (SELECT ASOID, ''DOMICILIARIA'' TIP_GEST_DES, FECASIG, USUARIO, UPROID, UPAGOID, USEID, CFC_F, ASOAPENOM '
         + '                                  FROM GES_COB_DOM '
         + '                                 WHERE PERIODO = ' + QuotedStr(xsPeriodoGestion)
         + '                                   AND TIPGES =  ' + QuotedStr(xsSQLTipGestor)
         + '                                 UNION '
         + '                                SELECT ASOID, ''DOMICILIARIA'' TIP_GEST_DES, FECASIG, USUARIO, UPROID, UPAGOID, USEID, CFC_F, ASOAPENOM '
         + '                                  FROM GES_COB_DOM_HIS '
         + '                                 WHERE PERIODO = ' + QuotedStr(xsPeriodoGestion)
         + '                                   AND TIPGES =  ' + QuotedStr(xsSQLTipGestor)
// Inicio: SPP_201305_GESCOB F2 nuevo campo en la BD
         + '                                   AND ASIGNADO = ''S'' '
// Fin: SPP_201305_GESCOB
         + '                                 UNION '
         + '                                SELECT ASOID, ''TELEFONICA'' TIP_GEST_DES, FECASIG, USUARIO, UPROID, UPAGOID, USEID, CFC_F, ASOAPENOM '
         + '                                  FROM GES_COB_IND '
         + '                                 WHERE PERIODO = ' + QuotedStr(xsPeriodoGestion)
         + '                                   AND TIPGES =  ' + QuotedStr(xsSQLTipGestor)
         + '                                 UNION '
         + '                                SELECT ASOID, ''TELEFONICA'' TIP_GEST_DES, FECASIG, USUARIO, UPROID, UPAGOID, USEID, CFC_F, ASOAPENOM '
         + '                                  FROM GES_COB_IND_HIS '
         + '                                 WHERE PERIODO = ' + QuotedStr(xsPeriodoGestion)
         + '                                   AND TIPGES =  ' + QuotedStr(xsSQLTipGestor)
// Inicio: SPP_201305_GESCOB F2 nuevo campo en la BD
         + '                                   AND ASIGNADO = ''S'' '
// Fin: SPP_201305_GESCOB
         + '                               )) ASIGNADO, '
         + '                         (SELECT ASOID, FECHA_ULT_GES, IDGESTIONDET '
         + '                             FROM (SELECT ASOID, FECHA FECHA_ULT_GES, IDGESTIONDET, '
         + '                                           DENSE_RANK() OVER(PARTITION BY ASOID ORDER BY ASOID, FECHA DESC, HORA DESC) DRNK '
         + '                                      FROM GES_COB_SEG, (' + xsSQLTablaUsuarios + ') USR '
         + '                                     WHERE PERIODO = ' + QuotedStr(xsPeriodoGestion)
         + '                                       AND FECHA >= ' + QuotedStr(xsFechaIniGestion)
         + '                                       AND FECHA <= ' + QuotedStr(xsFechaFinGestion)
         + '                                       AND USUARIO = USERID '
         + '                                       AND SUBSTR(IDGESTIONDET,1,1) IN (' + xsSQLGesDom + ',' + xsSQLGesTel + ')'
         + '                                   ) '
         + '                            WHERE DRNK = 1) GESTION, '
         + '                         (SELECT IDGTNDET, DESCRIPCION, CONTACTADO FROM GES_REF_SEG_DET) REFERENCIA, '
         + '                         (SELECT RESUMEID CFC_F, RESUMEDES CFCDES_F FROM COB113) CALIFICACION, '
         + '                         (SELECT ASOID, ASODNI '
         + '                            FROM (SELECT ASOID, ASODNI, DENSE_RANK() OVER(PARTITION BY ASOID ORDER BY ASOID) DRNK '
         + '                                    FROM APO201) '
         + '                                   WHERE DRNK = 1) APO201 '
         + '                   WHERE ASIGNADO.DRNK = 1 '
         + '                     AND ASIGNADO.ASOID = GESTION.ASOID(+) '
         + '                     AND GESTION.IDGESTIONDET = REFERENCIA.IDGTNDET(+) '
         + '                     AND ASIGNADO.CFC_F = CALIFICACION.CFC_F(+) '
         + '                     AND ASIGNADO.ASOID = APO201.ASOID(+)) UNIVERSO, '
         + '                (SELECT ASOID, FECHA, TIPPAG, MONCOBTOT FROM GES_COB_PAG_CON) PAGO '
         + '          WHERE UNIVERSO.ASOID = PAGO.ASOID(+) ';
      If xsGestor <> '' Then xsSQL := xsSQL + ' AND USUARIO = ' + QuotedStr(xsGestor);
      xsSQL := xsSQL + ' AND PAGO.FECHA(+) >= UNIVERSO.FECHA_ULT_GES '
         + '            AND PAGO.FECHA(+) <= ' + QuotedStr(xsFechaMaxPago)
         + '            AND ((' + xsSQLUbiDom + ') OR(' + xsSQLUbiTel + ')) '
         + '          GROUP BY UNIVERSO.TIP_GEST_DES, UNIVERSO.UBICABILIDAD, '
         + '                   UNIVERSO.IDGESTIONDET, UNIVERSO.REFERENCIA, UNIVERSO.USUARIO, '
         + '                   UNIVERSO.FECHA_ULT_GES, UNIVERSO.ASOID) UNIVERSO_PAGO ';
   End;

   If self.xxTipoReporte = trUbigeo Then
   Begin
      lblTipFiltro.Caption := 'Ubigeo';
      lblTipFiltroSeleccionado.Caption := xsUbigeoDes;
      xsSQL := 'SELECT ASODNI, ASOAPENOM, CFCDES_F, UPROID, UPAGOID, '
         + '       USEID, EFE_MONT, BAN_MONT, REF_MONT, ABO_MONT, '
         + '       LIQ_MONT, ' + QuotedStr(xsSQLTipGestorDes) + ' TIPO_GESTOR, '
         + '       TIP_GEST_DES TIPO_GESTION, USUARIO GESTOR_DESC, '
         + '       UBICABILIDAD, REFERENCIA GESTION_DESC, IDGESTIONDET '
         + '  FROM (SELECT UNIVERSO.TIP_GEST_DES, UNIVERSO.UBICABILIDAD, '
         + '               UNIVERSO.IDGESTIONDET, UNIVERSO.REFERENCIA, UNIVERSO.USUARIO, '
         + '               UNIVERSO.FECHA_ULT_GES, UNIVERSO.ASOID, '
         + '               SUM(CASE WHEN PAGO.TIPPAG = ''BAN'' THEN NVL(PAGO.MONCOBTOT, 0) ELSE 0 END) BAN_MONT, '
         + '               SUM(CASE WHEN PAGO.TIPPAG = ''REF'' THEN NVL(PAGO.MONCOBTOT, 0) ELSE 0 END) REF_MONT, '
         + '               SUM(CASE WHEN PAGO.TIPPAG = ''EFE'' THEN NVL(PAGO.MONCOBTOT, 0) ELSE 0 END) EFE_MONT, '
         + '               SUM(CASE WHEN PAGO.TIPPAG = ''ABO'' THEN NVL(PAGO.MONCOBTOT, 0) ELSE 0 END) ABO_MONT, '
         + '               SUM(CASE WHEN PAGO.TIPPAG = ''LIQ'' THEN NVL(PAGO.MONCOBTOT, 0) ELSE 0 END) LIQ_MONT, '
         + '               MAX(UPROID) UPROID, MAX(UPAGOID) UPAGOID, MAX(USEID) USEID, MAX(CFCDES_F) CFCDES_F, '
         + '               MAX(ASOAPENOM) ASOAPENOM, MAX(ASODNI) ASODNI '
         + '          FROM (SELECT ASIGNADO.TIP_GEST_DES, '
         + '                       CASE WHEN REFERENCIA.CONTACTADO = ''S'' THEN ''CONTACTADO'' '
         + '                            WHEN REFERENCIA.CONTACTADO = ''N'' THEN ''NO CONTACTADO'' '
         + '                            ELSE ''PENDIENTE'' '
         + '                        END UBICABILIDAD, GESTION.IDGESTIONDET, '
         + '                       REFERENCIA.DESCRIPCION REFERENCIA, ASIGNADO.USUARIO, '
         + '                       GESTION.FECHA_ULT_GES, ASIGNADO.ASOID, '
         + '                       ASIGNADO.UPROID, ASIGNADO.UPAGOID, ASIGNADO.USEID, ASIGNADO.CFC_F, '
         + '                       CALIFICACION.CFCDES_F, ASIGNADO.ASOAPENOM, APO201.ASODNI, '
         + '                       CASE WHEN ' + QuotedStr(xsUbigeo) + ' = ''99'' THEN ''99'' ELSE SUBSTR(ZIPID, 1, 2) END ZIPID '
         + '                  FROM (SELECT ASOID, TIP_GEST_DES, USUARIO, UPROID, UPAGOID, USEID, CFC_F, ASOAPENOM, ZIPID, '
         + '                               DENSE_RANK() OVER(PARTITION BY TIP_GEST_DES, ASOID ORDER BY TIP_GEST_DES, ASOID, FECASIG DESC) DRNK '
         + '                          FROM (SELECT ASOID, ''DOMICILIARIA'' TIP_GEST_DES, FECASIG, USUARIO, UPROID, UPAGOID, USEID, CFC_F, ASOAPENOM, ZIPID '
         + '                                  FROM GES_COB_DOM '
         + '                                 WHERE PERIODO = ' + QuotedStr(xsPeriodoGestion)
         + '                                   AND TIPGES =  ' + QuotedStr(xsSQLTipGestor)
         + '                                 UNION '
         + '                                SELECT ASOID, ''DOMICILIARIA'' TIP_GEST_DES, FECASIG, USUARIO, UPROID, UPAGOID, USEID, CFC_F, ASOAPENOM, ZIPID '
         + '                                  FROM GES_COB_DOM_HIS '
         + '                                 WHERE PERIODO = ' + QuotedStr(xsPeriodoGestion)
         + '                                   AND TIPGES =  ' + QuotedStr(xsSQLTipGestor)
// Inicio: SPP_201305_GESCOB F2 nuevo campo en la BD
         + '                                   AND ASIGNADO = ''S'' '
// Fin: SPP_201305_GESCOB
         + '                                 UNION '
         + '                                SELECT ASOID, ''TELEFONICA'' TIP_GEST_DES, FECASIG, USUARIO, UPROID, UPAGOID, USEID, CFC_F, ASOAPENOM, ZIPID '
         + '                                  FROM GES_COB_IND '
         + '                                 WHERE PERIODO = ' + QuotedStr(xsPeriodoGestion)
         + '                                   AND TIPGES =  ' + QuotedStr(xsSQLTipGestor)
         + '                                 UNION '
         + '                                SELECT ASOID, ''TELEFONICA'' TIP_GEST_DES, FECASIG, USUARIO, UPROID, UPAGOID, USEID, CFC_F, ASOAPENOM, ZIPID '
         + '                                  FROM GES_COB_IND_HIS '
         + '                                 WHERE PERIODO = ' + QuotedStr(xsPeriodoGestion)
         + '                                   AND TIPGES =  ' + QuotedStr(xsSQLTipGestor)
// Inicio: SPP_201305_GESCOB F2 nuevo campo en la BD
         + '                                   AND ASIGNADO = ''S'' '
// Fin: SPP_201305_GESCOB
         + '                               )) ASIGNADO, '
         + '                         (SELECT ASOID, FECHA_ULT_GES, IDGESTIONDET '
         + '                             FROM (SELECT ASOID, FECHA FECHA_ULT_GES, IDGESTIONDET, '
         + '                                           DENSE_RANK() OVER(PARTITION BY ASOID ORDER BY ASOID, FECHA DESC, HORA DESC) DRNK '
         + '                                      FROM GES_COB_SEG, (' + xsSQLTablaUsuarios + ') USR '
         + '                                     WHERE PERIODO = ' + QuotedStr(xsPeriodoGestion)
         + '                                       AND FECHA >= ' + QuotedStr(xsFechaIniGestion)
         + '                                       AND FECHA <= ' + QuotedStr(xsFechaFinGestion)
         + '                                       AND USUARIO = USERID '
         + '                                       AND SUBSTR(IDGESTIONDET,1,1) IN (' + xsSQLGesDom + ',' + xsSQLGesTel + ')'
         + '                                   ) '
         + '                            WHERE DRNK = 1) GESTION, '
         + '                         (SELECT IDGTNDET, DESCRIPCION, CONTACTADO FROM GES_REF_SEG_DET) REFERENCIA, '
         + '                         (SELECT RESUMEID CFC_F, RESUMEDES CFCDES_F FROM COB113) CALIFICACION, '
         + '                         (SELECT ASOID, ASODNI '
         + '                            FROM (SELECT ASOID, ASODNI, DENSE_RANK() OVER(PARTITION BY ASOID ORDER BY ASOID) DRNK '
         + '                                    FROM APO201) '
         + '                                   WHERE DRNK = 1) APO201 '
         + '                   WHERE ASIGNADO.DRNK = 1 '
         + '                     AND ASIGNADO.ASOID = GESTION.ASOID(+) '
         + '                     AND GESTION.IDGESTIONDET = REFERENCIA.IDGTNDET(+) '
         + '                     AND ASIGNADO.CFC_F = CALIFICACION.CFC_F(+) '
         + '                     AND ASIGNADO.ASOID = APO201.ASOID(+)) UNIVERSO, '
         + '                (SELECT ASOID, FECHA, TIPPAG, MONCOBTOT FROM GES_COB_PAG_CON) PAGO '
         + '          WHERE UNIVERSO.ASOID = PAGO.ASOID(+) '
         + '            AND SUBSTR(ZIPID,1,' + IntToStr(Length(TRIM(xsUbigeo))) + ') = ' + QuotedStr(xsUbigeo)
         + '            AND PAGO.FECHA(+) >= UNIVERSO.FECHA_ULT_GES '
         + '            AND PAGO.FECHA(+) <= ' + QuotedStr(xsFechaMaxPago)
         + '            AND ((' + xsSQLUbiDom + ') OR(' + xsSQLUbiTel + ')) '
         + '          GROUP BY UNIVERSO.TIP_GEST_DES, UNIVERSO.UBICABILIDAD, '
         + '                   UNIVERSO.IDGESTIONDET, UNIVERSO.REFERENCIA, UNIVERSO.USUARIO, '
         + '                   UNIVERSO.FECHA_ULT_GES, UNIVERSO.ASOID) UNIVERSO_PAGO ';

   End;

   If self.xxTipoReporte = trCalificacion Then
   Begin
      lblTipFiltro.Caption := 'Calificacion';
      lblTipFiltroSeleccionado.Caption := xsCFCDES_F;
      xsSQL := 'SELECT ASODNI, ASOAPENOM, CFCDES_F, UPROID, UPAGOID, '
         + '       USEID, EFE_MONT, BAN_MONT, REF_MONT, ABO_MONT, '
         + '       LIQ_MONT, ' + QuotedStr(xsSQLTipGestorDes) + ' TIPO_GESTOR, '
         + '       TIP_GEST_DES TIPO_GESTION, USUARIO GESTOR_DESC, '
         + '       UBICABILIDAD, REFERENCIA GESTION_DESC, IDGESTIONDET '
         + '  FROM (SELECT UNIVERSO.TIP_GEST_DES, UNIVERSO.UBICABILIDAD, '
         + '               UNIVERSO.IDGESTIONDET, UNIVERSO.REFERENCIA, UNIVERSO.USUARIO, '
         + '               UNIVERSO.FECHA_ULT_GES, UNIVERSO.ASOID, '
         + '               SUM(CASE WHEN PAGO.TIPPAG = ''BAN'' THEN NVL(PAGO.MONCOBTOT, 0) ELSE 0 END) BAN_MONT, '
         + '               SUM(CASE WHEN PAGO.TIPPAG = ''REF'' THEN NVL(PAGO.MONCOBTOT, 0) ELSE 0 END) REF_MONT, '
         + '               SUM(CASE WHEN PAGO.TIPPAG = ''EFE'' THEN NVL(PAGO.MONCOBTOT, 0) ELSE 0 END) EFE_MONT, '
         + '               SUM(CASE WHEN PAGO.TIPPAG = ''ABO'' THEN NVL(PAGO.MONCOBTOT, 0) ELSE 0 END) ABO_MONT, '
         + '               SUM(CASE WHEN PAGO.TIPPAG = ''LIQ'' THEN NVL(PAGO.MONCOBTOT, 0) ELSE 0 END) LIQ_MONT, '
         + '               MAX(UPROID) UPROID, MAX(UPAGOID) UPAGOID, MAX(USEID) USEID, MAX(CFCDES_F) CFCDES_F, '
         + '               MAX(ASOAPENOM) ASOAPENOM, MAX(ASODNI) ASODNI '
         + '          FROM (SELECT ASIGNADO.TIP_GEST_DES, '
         + '                       CASE WHEN REFERENCIA.CONTACTADO = ''S'' THEN ''CONTACTADO'' '
         + '                            WHEN REFERENCIA.CONTACTADO = ''N'' THEN ''NO CONTACTADO'' '
         + '                            ELSE ''PENDIENTE'' '
         + '                        END UBICABILIDAD, GESTION.IDGESTIONDET, '
         + '                       REFERENCIA.DESCRIPCION REFERENCIA, ASIGNADO.USUARIO, '
         + '                       GESTION.FECHA_ULT_GES, ASIGNADO.ASOID, '
         + '                       ASIGNADO.UPROID, ASIGNADO.UPAGOID, ASIGNADO.USEID, ASIGNADO.CFC_F, '
         + '                       CALIFICACION.CFCDES_F, ASIGNADO.ASOAPENOM, APO201.ASODNI '
         + '                  FROM (SELECT ASOID, TIP_GEST_DES, USUARIO, UPROID, UPAGOID, USEID, CFC_F, ASOAPENOM, '
         + '                               DENSE_RANK() OVER(PARTITION BY TIP_GEST_DES, ASOID ORDER BY TIP_GEST_DES, ASOID, FECASIG DESC) DRNK '
         + '                          FROM (SELECT ASOID, ''DOMICILIARIA'' TIP_GEST_DES, FECASIG, USUARIO, UPROID, UPAGOID, USEID, CFC_F, ASOAPENOM '
         + '                                  FROM GES_COB_DOM '
         + '                                 WHERE PERIODO = ' + QuotedStr(xsPeriodoGestion)
         + '                                   AND TIPGES =  ' + QuotedStr(xsSQLTipGestor)
         + '                                 UNION '
         + '                                SELECT ASOID, ''DOMICILIARIA'' TIP_GEST_DES, FECASIG, USUARIO, UPROID, UPAGOID, USEID, CFC_F, ASOAPENOM '
         + '                                  FROM GES_COB_DOM_HIS '
         + '                                 WHERE PERIODO = ' + QuotedStr(xsPeriodoGestion)
         + '                                   AND TIPGES =  ' + QuotedStr(xsSQLTipGestor)
// Inicio: SPP_201305_GESCOB F2 nuevo campo en la BD
         + '                                   AND ASIGNADO = ''S'' '
// Fin: SPP_201305_GESCOB
         + '                                 UNION '
         + '                                SELECT ASOID, ''TELEFONICA'' TIP_GEST_DES, FECASIG, USUARIO, UPROID, UPAGOID, USEID, CFC_F, ASOAPENOM '
         + '                                  FROM GES_COB_IND '
         + '                                 WHERE PERIODO = ' + QuotedStr(xsPeriodoGestion)
         + '                                   AND TIPGES =  ' + QuotedStr(xsSQLTipGestor)
         + '                                 UNION '
         + '                                SELECT ASOID, ''TELEFONICA'' TIP_GEST_DES, FECASIG, USUARIO, UPROID, UPAGOID, USEID, CFC_F, ASOAPENOM '
         + '                                  FROM GES_COB_IND_HIS '
         + '                                 WHERE PERIODO = ' + QuotedStr(xsPeriodoGestion)
         + '                                   AND TIPGES =  ' + QuotedStr(xsSQLTipGestor)
// Inicio: SPP_201305_GESCOB F2 nuevo campo en la BD
         + '                                   AND ASIGNADO = ''S'' '
// Fin: SPP_201305_GESCOB
         + '                               )) ASIGNADO, '
         + '                         (SELECT ASOID, FECHA_ULT_GES, IDGESTIONDET '
         + '                             FROM (SELECT ASOID, FECHA FECHA_ULT_GES, IDGESTIONDET, '
         + '                                           DENSE_RANK() OVER(PARTITION BY ASOID ORDER BY ASOID, FECHA DESC, HORA DESC) DRNK '
         + '                                      FROM GES_COB_SEG, (' + xsSQLTablaUsuarios + ') USR '
         + '                                     WHERE PERIODO = ' + QuotedStr(xsPeriodoGestion)
         + '                                       AND FECHA >= ' + QuotedStr(xsFechaIniGestion)
         + '                                       AND FECHA <= ' + QuotedStr(xsFechaFinGestion)
         + '                                       AND USUARIO = USERID '
         + '                                       AND SUBSTR(IDGESTIONDET,1,1) IN (' + xsSQLGesDom + ',' + xsSQLGesTel + ')'
         + '                                   ) '
         + '                            WHERE DRNK = 1) GESTION, '
         + '                         (SELECT IDGTNDET, DESCRIPCION, CONTACTADO FROM GES_REF_SEG_DET) REFERENCIA, '
         + '                         (SELECT RESUMEID CFC_F, RESUMEDES CFCDES_F FROM COB113) CALIFICACION, '
         + '                         (SELECT ASOID, ASODNI '
         + '                            FROM (SELECT ASOID, ASODNI, DENSE_RANK() OVER(PARTITION BY ASOID ORDER BY ASOID) DRNK '
         + '                                    FROM APO201) '
         + '                                   WHERE DRNK = 1) APO201 '
         + '                   WHERE ASIGNADO.DRNK = 1 '
         + '                     AND ASIGNADO.ASOID = GESTION.ASOID(+) '
         + '                     AND GESTION.IDGESTIONDET = REFERENCIA.IDGTNDET(+) '
         + '                     AND ASIGNADO.CFC_F = CALIFICACION.CFC_F(+) '
         + '                     AND ASIGNADO.ASOID = APO201.ASOID(+)) UNIVERSO, '
         + '                (SELECT ASOID, FECHA, TIPPAG, MONCOBTOT FROM GES_COB_PAG_CON) PAGO '
         + '          WHERE UNIVERSO.ASOID = PAGO.ASOID(+) '
         + '            AND CFC_F = ' + QuotedStr(xsCFC_F)
         + '            AND PAGO.FECHA(+) >= UNIVERSO.FECHA_ULT_GES '
         + '            AND PAGO.FECHA(+) <= ' + QuotedStr(xsFechaMaxPago)
         + '            AND ((' + xsSQLUbiDom + ') OR(' + xsSQLUbiTel + ')) '
         + '          GROUP BY UNIVERSO.TIP_GEST_DES, UNIVERSO.UBICABILIDAD, '
         + '                   UNIVERSO.IDGESTIONDET, UNIVERSO.REFERENCIA, UNIVERSO.USUARIO, '
         + '                   UNIVERSO.FECHA_ULT_GES, UNIVERSO.ASOID) UNIVERSO_PAGO ';
   End;

   DM1.cdsQry5.Close;
   DM1.cdsQry5.DataRequest(xsSQL);
   DM1.cdsQry5.Open;

   dbgPrincipal.Selected.Clear;
   dbgPrincipal.Selected.Add('ASODNI'#9'10'#9'D.N.I.');
   dbgPrincipal.Selected.Add('ASOAPENOM'#9'25'#9'ASOCIADO');
   dbgPrincipal.Selected.Add('CFCDES_F'#9'10'#9'CALIF.');
   dbgPrincipal.Selected.Add('UPROID'#9'8'#9'U.PROC');
   dbgPrincipal.Selected.Add('UPAGOID'#9'8'#9'U.PAGO');
   dbgPrincipal.Selected.Add('USEID'#9'8'#9'USE');
   dbgPrincipal.Selected.Add('EFE_MONT'#9'10'#9'EFECT');
   dbgPrincipal.Selected.Add('BAN_MONT'#9'10'#9'BANCO');
   dbgPrincipal.Selected.Add('REF_MONT'#9'10'#9'REFIN');
   dbgPrincipal.Selected.Add('ABO_MONT'#9'10'#9'N.ABO');
   dbgPrincipal.Selected.Add('LIQ_MONT'#9'10'#9'L.BEN.');
   dbgPrincipal.Selected.Add('TIPO_GESTOR'#9'15'#9'TIPO GESTOR');
   dbgPrincipal.Selected.Add('TIPO_GESTION'#9'15'#9'TIPO GESTION');
   dbgPrincipal.Selected.Add('GESTOR_DESC'#9'15'#9'GESTOR');
   dbgPrincipal.Selected.Add('UBICABILIDAD'#9'15'#9'UBICABILIDAD');
   dbgPrincipal.Selected.Add('GESTION_DESC'#9'20'#9'GESTION');
   dbgPrincipal.Selected.Add('IDGESTIONDET'#9'5'#9'COD');
   TNumericField(Dm1.cdsQry5.fieldbyname('EFE_MONT')).DisplayFormat := '###,###.#0';
   TNumericField(Dm1.cdsQry5.fieldbyname('BAN_MONT')).DisplayFormat := '###,###.#0';
   TNumericField(Dm1.cdsQry5.fieldbyname('REF_MONT')).DisplayFormat := '###,###.#0';
   TNumericField(Dm1.cdsQry5.fieldbyname('ABO_MONT')).DisplayFormat := '###,###.#0';
   TNumericField(Dm1.cdsQry5.fieldbyname('LIQ_MONT')).DisplayFormat := '###,###.#0';

   xnTotal := 0;
   xnEfeMont := 0;
   xnBanMont := 0;
   xnRefMont := 0;
   xnAboMont := 0;
   xnLiqMont := 0;

   DM1.cdsQry5.First;
   While Not Dm1.cdsQry5.Eof Do
   Begin
      xnTotal := xnTotal + 1;
      xnEfeMont := xnEfeMont + Dm1.cdsQry5.fieldbyname('EFE_MONT').value;
      xnBanMont := xnBanMont + Dm1.cdsQry5.fieldbyname('BAN_MONT').value;
      xnRefMont := xnRefMont + Dm1.cdsQry5.fieldbyname('REF_MONT').value;
      xnAboMont := xnAboMont + Dm1.cdsQry5.fieldbyname('ABO_MONT').value;
      xnLiqMont := xnLiqMont + Dm1.cdsQry5.fieldbyname('LIQ_MONT').value;
      DM1.cdsQry5.Next;
   End;
   DM1.cdsQry5.First;
   dbgPrincipal.DataSource := DM1.dsQry5;
   dbgPrincipal.ColumnByName('ASODNI').FooterValue := 'Totales';
   dbgPrincipal.ColumnByName('ASOAPENOM').FooterValue := FormatCurr('###,##0', xnTotal);
   dbgPrincipal.ColumnByName('EFE_MONT').FooterValue := FormatCurr('###,##0.#0', xnEfeMont);
   dbgPrincipal.ColumnByName('BAN_MONT').FooterValue := FormatCurr('###,##0.#0', xnBanMont);
   dbgPrincipal.ColumnByName('REF_MONT').FooterValue := FormatCurr('###,##0.#0', xnRefMont);
   dbgPrincipal.ColumnByName('ABO_MONT').FooterValue := FormatCurr('###,##0.#0', xnAboMont);
   dbgPrincipal.ColumnByName('LIQ_MONT').FooterValue := FormatCurr('###,##0.#0', xnLiqMont);

   Screen.Cursor := crDefault;
End;
(******************************************************************************)

Procedure TfDetRepConAsig.btnSalirClick(Sender : TObject);
Begin
   Close;
End;
(******************************************************************************)

Procedure TfDetRepConAsig.btnExcelClick(Sender : TObject);
Begin
   Screen.Cursor := crHourGlass;
   With dbgPrincipal, dbgPrincipal.ExportOptions Do
   Begin
      ExportType := wwgetSYLK;
      FileName := 'DetalleAnalisisAsignacion.slk';
      DM1.OpcionesExportExcel(dbgPrincipal.ExportOptions);
      dbgPrincipal.ExportOptions.TitleName := 'Detalle de Analisis Asignacion';
      Save;
      If Not (esoClipboard In Options) Then
         ShellExecute(Handle, 'Open', PChar(dbgPrincipal.exportoptions.Filename), Nil, Nil, sw_shownormal);
   End;
   Screen.Cursor := crDefault;
End;
(******************************************************************************)
End.

