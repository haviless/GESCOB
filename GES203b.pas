// Inicio Uso Estándares: 01/08/2011
// Unidad : Gestión de Cobranzas
// Formulario : fDetGest
// Fecha de Creación :
// Autor : Equipo de Sistemas
// Objetivo : Detalle de Gestion
// Actualizaciones:
// HPP_201110_GESCOB
// HPC_201201_GESCOB     : 09/01/2012 Registrar Hojas de Rutas
// HPC_201209_GESCOB(F3) : 22/10/2012 IMPLEMENTAR NEGOCIACION Y COMPROMISO DE PAGO
// HPC_201209_GESCOB(F4) : 24/10/2012 PERMITIR QUE LOS GESTORES INTERNOS INGRESEN GESTIONES DOMICILIARIAS
// HPC_201210_GESCOB(F1) : 06/11/2012 CORRECCION DE GRABACION DE GESTIONES REALIZADAS
// HPC_201302_GESCOB     : 05/04/2013 CORREGIR LA OPCIÓN MAS DATOS, SE CAMBIARION LOS INSERTS
// SPP_201302_GESCOB     : Se realiza el pase a producción a partir del HPC_201302_GESCOB.
// HPC_201305_GESCOB     : F6 04/06/2013 Se bloqueó el Tipo de Gestión porque se debe considerar según la apertura de la Hoja de Ruta
// SPP_201305_GESCOB     : Se realiza el pase a producción a partir del HPC_201305_GESCOB
// SPP_201401_GESCOB     : Importacion masiva interna y Mejoras del proceso de priorizacion
// SPP_201401_GESCOB     : Se realiza el pase a producción a partir del HPC_201401_GESCOB
// HPC_201402_GESCOB     : Mantenimiento a las alertas de acuerdos de pago incumplidos (1.3)
//                       : Re-Definicion de la emision de cartas a deudores (1.7)
//                       : Información de Contactabilidad (Direcciones, teléfonos y correos electrónicos) (1.9)
// SPP_201402_GESCOB     : Se realiza el pase a producción a partir del HPC_201402_GESCOB

Unit GES203b;

Interface

Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, Grids, Wwdbigrd, Wwdbgrid, ComCtrls, StdCtrls, wwdblook,
   Buttons, ExtCtrls, Db, ppDB, ppDBPipe, ppCtrls, ppBands, ppVar, ppPrnabl,
   ppClass, ppCache, ppComm, ppRelatv, ppProd, ppReport, ppStrtch, ppSubRpt,
   ppEndUsr, ppRegion, ppParameter;

Type
   TfDetGest = Class(TForm)
      GroupBox1 : TGroupBox;
      Shape3 : TShape;
      Shape2 : TShape;
      Label12 : TLabel;
      lblTipAso : TLabel;
      Label5 : TLabel;
      Label7 : TLabel;
      lblAsoNombres : TLabel;
      Label8 : TLabel;
      lblDias : TLabel;
      Label9 : TLabel;
      lblSaldo : TLabel;
      Label14 : TLabel;
      Label15 : TLabel;
      lblNroGest : TLabel;
      pnlItems : TPanel;
      Label6 : TLabel;
      Label1 : TLabel;
      Label2 : TLabel;
      BitGrabar : TBitBtn;
      dblGestion : TwwDBLookupCombo;
      mDetObs : TMemo;
      mRefCab : TMemo;
      Panel1 : TPanel;
      Shape1 : TShape;
      Label11 : TLabel;
      Label13 : TLabel;
      DtpFecGst : TDateTimePicker;
      dtgDetGestion : TwwDBGrid;
      BitPrint : TBitBtn;
      BitSalir : TBitBtn;
      BitDatGes : TBitBtn;
      lblPend : TLabel;
      lblVenc : TLabel;
      Label16 : TLabel;
      Label17 : TLabel;
      BitSaldoHoy : TBitBtn;
      Shape4 : TShape;
      Shape5 : TShape;
      RpFichaGes : TppReport;
      DBFichaGes : TppDBPipeline;
      Label10 : TLabel;
      dblGestionDet : TwwDBLookupCombo;
      BitPlanilla : TBitBtn;
      BitAtencion : TBitBtn;
      PPD1 : TppDesigner;
      DBSitReclamo : TppDBPipeline;
      ppParameterList1 : TppParameterList;
      ppHeaderBand41 : TppHeaderBand;
      ppShape7 : TppShape;
      ppShape6 : TppShape;
      ppShape5 : TppShape;
      ppShape4 : TppShape;
      ppLabel858 : TppLabel;
      ppLabel859 : TppLabel;
      ppLabel860 : TppLabel;
      ppLabel861 : TppLabel;
      ppLabel862 : TppLabel;
      ppSystemVariable83 : TppSystemVariable;
      ppSystemVariable84 : TppSystemVariable;
      ppSystemVariable85 : TppSystemVariable;
      ppLblTit : TppLabel;
      ppLabel863 : TppLabel;
      ppLabel864 : TppLabel;
      ppLabel865 : TppLabel;
      ppDBText339 : TppDBText;
      ppLabel1 : TppLabel;
      lblFecGes : TppLabel;
      ppLabel2 : TppLabel;
      ppLabel3 : TppLabel;
      ppLabel4 : TppLabel;
      ppLabel5 : TppLabel;
      ppLabel6 : TppLabel;
      ppLabel7 : TppLabel;
      ppLabel8 : TppLabel;
      ppLabel9 : TppLabel;
      ppLabel10 : TppLabel;
      ppLabel11 : TppLabel;
      ppLabel12 : TppLabel;
      ppLabel13 : TppLabel;
      ppLabel14 : TppLabel;
      ppLabel15 : TppLabel;
      ppLabel16 : TppLabel;
      ppLabel18 : TppLabel;
      ppLabel19 : TppLabel;
      ppLabel20 : TppLabel;
      ppLabel21 : TppLabel;
      ppLabel22 : TppLabel;
      ppLabel23 : TppLabel;
      ppLabel24 : TppLabel;
      ppLabel25 : TppLabel;
      ppLabel26 : TppLabel;
      pplblSaltot : TppLabel;
      pplblSalPen : TppLabel;
      pplblSalVen : TppLabel;
      ppLabel29 : TppLabel;
      ppLabel30 : TppLabel;
      ppLabel31 : TppLabel;
      pplblCodMod : TppLabel;
      pplblNomGen : TppLabel;
      ppLblDni : TppLabel;
      ppLblOriOto : TppLabel;
      ppLblAsodir : TppLabel;
      ppLblTelefono : TppLabel;
      ppLblTipAso : TppLabel;
      ppLblCtaAho : TppLabel;
      ppLblUses : TppLabel;
      ppLabel27 : TppLabel;
      ppLabel28 : TppLabel;
      pplDpto : TppLabel;
      ppLabel33 : TppLabel;
      ppLabel34 : TppLabel;
      pplProv : TppLabel;
      ppDetailBand44 : TppDetailBand;
      ppShape8 : TppShape;
      ppShape3 : TppShape;
      ppShape2 : TppShape;
      ppShape1 : TppShape;
      ppDBText340 : TppDBText;
      ppDBText342 : TppDBText;
      ppDBText343 : TppDBText;
      ppDBText1 : TppDBText;
      ppDBText2 : TppDBText;
      ppFooterBand36 : TppFooterBand;
      ppSummaryBand41 : TppSummaryBand;
      ppSubReport1 : TppSubReport;
      ppChildReport1 : TppChildReport;
      ppTitleBand1 : TppTitleBand;
      ppShape10 : TppShape;
      ppLabel17 : TppLabel;
      ppDetailBand1 : TppDetailBand;
      ppShape9 : TppShape;
      ppDBText3 : TppDBText;
      ppDBText4 : TppDBText;
      ppDBText5 : TppDBText;
      ppDBText6 : TppDBText;
      ppDBText7 : TppDBText;
      ppLine1 : TppLine;
      ppLine2 : TppLine;
      ppLine3 : TppLine;
      ppSummaryBand1 : TppSummaryBand;
      ppRegion1 : TppRegion;
      ppLblUser : TppLabel;
      ppLabel32 : TppLabel;
      ppLabel36 : TppLabel;
      pplDist : TppLabel;
      EdtDesGnt : TEdit;
      EdtDesGntDet : TEdit;
      gbNegociacion : TGroupBox;
      lbl2 : TLabel;
      cbNegociacion : TwwDBLookupCombo;
      edNegociacion : TEdit;
      edObservaciones : TMemo;
      lbl3 : TLabel;
      pnFechaCompromiso : TPanel;
      lbl1 : TLabel;
      dtpFec_Compromiso : TDateTimePicker;
      // INICIO : SPP_201402_GESCOB
      Label3: TLabel;
      edMonCom: TEdit;
      Panel2: TPanel;
      Label4: TLabel;
      lblCartasImpresas: TLabel;
      // FIN : SPP_201402_GESCOB
      Procedure BitSalirClick(Sender : TObject);
      Procedure FormActivate(Sender : TObject);
      Procedure dblGestionChange(Sender : TObject);
      Procedure BitGrabarClick(Sender : TObject);
      Procedure BitDatGesClick(Sender : TObject);
      Procedure BitSaldoHoyClick(Sender : TObject);
      Procedure BitAcuPagoClick(Sender : TObject);
      Procedure BitPrintClick(Sender : TObject);
      Procedure EdtDesGntChange(Sender : TObject);
      Procedure dblGestionDetChange(Sender : TObject);
      Procedure dtgDetGestionDblClick(Sender : TObject);
      Procedure BitPlanillaClick(Sender : TObject);
      Procedure BitAtencionClick(Sender : TObject);
      Procedure FormClose(Sender : TObject; Var Action : TCloseAction);
      Procedure cbNegociacionChange(Sender : TObject);
   Private
    { Private declarations }
      Function GnrNroGest() : String;
      Function OrdenGestion(xAsoid, xPeriodo, xNroGest, xAnoGest : String) : String;
      Function VrfNueGes(xAsoId, xNroGest, xAnoGest : String) : String;
   Public
    { Public declarations }
   End;

Var
   fDetGest : TfDetGest;

Implementation

Uses GESDM1, GES103, GES203a, GES203, GES203c, GES203g, GES203i, GES206g,
   GES203o, GES001;

{$R *.dfm}

Procedure TfDetGest.BitSalirClick(Sender : TObject);
Begin
   Close;
End;
// INICIO : SPP_201402_GESCOB
Procedure TfDetGest.FormActivate(Sender : TObject);
Var
   xSQL, xAsoTipId, xAsoId, xNroGest, xAnoGest : String;
Begin
   xAsoId := cdsActivo.fieldByname('ASOID').AsString;

   mRefCab.Text := DM1.VarRefencia;
   mDetObs.Text := DM1.VarGestion;
   xSQL :=
      '  SELECT IDGTN, DESCRIPCION '
      + '  FROM GES_REF_SEG '
      + ' WHERE IDGTN IN (''03'',''05'')';
   DM1.cdsTransacciones.Close;
   DM1.cdsTransacciones.DataRequest(xSQL);
   DM1.cdsTransacciones.Open;
   DtpFecGst.Date := DM1.FechaSys;
   lblAsoNombres.Caption := cdsActivo.fieldByname('ASOAPENOM').AsString;
   lblDias.Caption := cdsActivo.fieldByname('DIASTRANS').AsString;
   xNroGest := DM1.cdsCambios.fieldByname('NROGEST').AsString;
   xAnoGest := DM1.cdsCambios.fieldByname('ANOGEST').AsString;

   If DM1.CrgDescrip('USERID=' + QuotedStr(Trim(DM1.wUsuario)), 'GES_NIV_USU_OTO', 'TIPACT') = '01' Then dblGestion.Text := '01';
   If DM1.CrgDescrip('USERID=' + QuotedStr(Trim(DM1.wUsuario)), 'GES_NIV_USU_OTO', 'TIPACT') = '02' Then dblGestion.Text := '03';

   If VrfNueGes(xAsoId, xNroGest, xAnoGest) = 'N' Then
   Begin
      pnlItems.Enabled := False;
   End;

   lblSaldo.Caption := fGesIndInt.lblSalTotal.Caption;
   lblVenc.Caption := fGesIndInt.lblSalVen.Caption;
   lblPend.Caption := fGesIndInt.lblSalPend.Caption;

   xSQL := 'SELECT COUNT(ASOID) CANTIDAD '
         + '  FROM GES_COB_EMI_CAR_CAB A '
         + '      ,GES_COB_EMI_CAR_DET B '
         + ' WHERE A.ESTADO = ''IMPRESO'' '
         + '   AND A.PERIODO = ' + QuotedStr(cdsActivo.fieldByname('PERIODO').AsString)
         + '   AND A.CODEMICAR = B.CODEMICAR '
         + '   AND B.ASOID = ' + QuotedStr(xAsoId);
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSQL);
   DM1.cdsQry.Open;
   lblCartasImpresas.Caption := DM1.cdsQry.fieldbyname('CANTIDAD').AsString;

   xAsoTipId := DM1.CrgDescrip('ASOID=' + QuotedStr(Trim(cdsActivo.fieldByname('ASOID').AsString)), 'APO201', 'ASOTIPID');
   lblTipAso.Caption := xAsoTipId + '-' + DM1.CrgDescrip('ASOTIPID=' + QuotedStr(Trim(xAsoTipId)), 'APO107', 'ASOTIPDES');


// Inicio: SPP_201305_GESCOB
   // El TIPO DE GESTIÓN debe ser el mismo que se grabó en la apertura de la Hoja de Ruta. Se bloquea para que el usuario no lo pueda modificar
   if DM1.cdsQry12.FieldByname('TIPO_GESTION').AsString='DOM' then dblGestion.Text := '03';
   if DM1.cdsQry12.FieldByname('TIPO_GESTION').AsString='TEL' then dblGestion.Text := '05';
   if DM1.cdsQry12.FieldByname('TIPO_GESTION').AsString=''    then dblGestion.Text := '';

   dblGestion.Enabled:=false;
// Fin: SPP_201305_GESCOB
   dblGestionDetChange(dblGestionDet);
   dtpFec_Compromiso.Date := DtpFecGst.Date;
   edMonCom.Text := '0';
   If DM1.xCnd = 'MDF' Then
      fGesIndInt.MstDetalles(DM1.cdsCambios.fieldByname('ASOID').AsString, DM1.cdsCambios.fieldByname('PERIODO').AsString, DM1.cdsCambios.fieldByname('ANOGEST').AsString, DM1.cdsCambios.fieldByname('NROGEST').AsString);
End;
// FIN : SPP_201402_GESCOB

Procedure TfDetGest.dblGestionChange(Sender : TObject);
Begin
   If DM1.cdsTransacciones.Locate('IDGTN', VarArrayof([dblGestion.Text]), []) Then
   Begin
      EdtDesGnt.Text := DM1.cdsTransacciones.fieldbyname('DESCRIPCION').AsString;
   End
   Else
   Begin
      EdtDesGnt.Text := '';
   End;

End;

Procedure TfDetGest.BitGrabarClick(Sender : TObject);
Var
   xSQL, xAsoId, xNroGest, xPeriodo : String;
   xOrden : String;
   xsFechaCompromiso, xsTipoGestor : String;
   // INICIO : SPP_201402_GESCOB
   xnMonCom : double;
   // FIN : SPP_201402_GESCOB
Begin

   If (Length(Trim(EdtDesGnt.Text)) = 0) Then
   Begin
      MessageDlg(' <<<  A T E N C I O N  >>>   El Tipo de Gestión Es Un Dato Obligatorio..!!!  ', mtError, [mbOk], 0);
      Exit;
   End;

   If (Length(Trim(EdtDesGntDet.Text)) = 0) Then
   Begin
      MessageDlg(' <<<  A T E N C I O N  >>>   El Resultado de Gestión Es Un Dato Obligatorio..!!!  ', mtError, [mbOk], 0);
      Exit;
   End;

   If (Length(Trim(mDetObs.Text)) = 0) Then
   Begin
      MessageDlg(' <<<  A T E N C I O N  >>>   La Gestión Realizada Es Un Dato Obligatorio..!!!  ', mtError, [mbOk], 0);
      Exit;
   End;
   // INICIO : SPP_201402_GESCOB
   xnMonCom := 0;
   // FIN : SPP_201402_GESCOB
   If gbNegociacion.Visible Then
   Begin
      If edNegociacion.Text = '' Then
      Begin
         MessageDlg('Seleccione un tipo de Negociación', mtError, [mbOk], 0);
         cbNegociacion.SetFocus;
         Exit;
      End;

      If edObservaciones.Text = '' Then
      Begin
         MessageDlg('Ingrese una observacion sobre la Negociación', mtError, [mbOk], 0);
         edObservaciones.SetFocus;
         Exit;
      End;

      If pnFechaCompromiso.Visible Then
      Begin
         xSQL :=
            '  SELECT CASE WHEN ' + QuotedStr(DateToStr(dtpFec_Compromiso.Date)) + ' BETWEEN TRUNC(SYSDATE) AND TRUNC(LAST_DAY(SYSDATE)) THEN ''S'' ELSE ''N'' END IS_DENTRO_RANGO, '
            + '       TRUNC(SYSDATE) MIN_FECHA, LAST_DAY(TRUNC(SYSDATE)) MAX_FECHA '
            + '  FROM DUAL ';
         DM1.cdsQry.Close;
         DM1.cdsQry.DataRequest(xSQL);
         DM1.cdsQry.Open;
         If DM1.cdsQry.FieldByName('IS_DENTRO_RANGO').AsString = 'N' Then
         Begin
            MessageDlg('La fecha de compromiso debe estar entre el ' + DM1.cdsQry.FieldByName('MIN_FECHA').AsString + ' y el ' + DM1.cdsQry.FieldByName('MAX_FECHA').AsString, mtError, [mbOk], 0);
            dtpFec_Compromiso.SetFocus;
            Exit;
         End;
         // INICIO : SPP_201402_GESCOB
         // validar el monto ingresado
         if edMonCom.Text = '' then edMonCom.Text := '0';
         if not TryStrToFloat(edMonCom.Text, xnMonCom) then
         begin
              MessageDlg('Ingrese un monto valido! ', mtError, [mbOk], 0);
              edMonCom.SetFocus;
              Exit;
         end;
         // FIN : SPP_201402_GESCOB
      End;
   End;

   xAsoId := cdsActivo.fieldByname('ASOID').AsString;
   xPeriodo := cdsActivo.fieldByname('PERIODO').AsString;
   ////
   If gbNegociacion.Visible Then
   Begin
      DM1.cdsQry15.Locate('COD_NEG', VarArrayof([cbNegociacion.Text]), []);
      If pnFechaCompromiso.Visible Then
         xsFechaCompromiso := QuotedStr(DateToStr(dtpFec_Compromiso.Date))
      Else
         xsFechaCompromiso := 'NULL';

      xSQL :=
         '   SELECT CASE WHEN SUM(1) > 0 THEN ''INTERNO'' '
         + '             ELSE ''EXTERNO'' '
         + '         END TIPO_GESTOR '
         + '   FROM GES_NIV_USU_OTO '
         + '  WHERE USERID = ' + QuotedStr(DM1.wUsuario);
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest(xSQL);
      DM1.cdsQry.Open;
      xsTipoGestor := DM1.cdsQry.fieldbyname('TIPO_GESTOR').AsString;

      // VALIDACIONES

      xSQL :=
         '   SELECT CASE WHEN COUNT(ASOID) > 0 THEN ''S'' ELSE ''N'' END COMPROMISO_PENDIENTE '
         + '   FROM GES_COB_COMPROMISO '
         + '  WHERE PERIODO = ' + QuotedStr(xPeriodo)
         + '    AND ASOID = ' + QuotedStr(xAsoId)
         + '    AND TIPO_GESTOR = ' + QuotedStr(xsTipoGestor)
         + '    AND ESTADO = ''NUEVO'' '
         + '    AND COMPROMISO = ''S'' ';
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest(xSQL);
      DM1.cdsQry.Open;

      If (DM1.cdsQry15.fieldbyname('COMPROMISO').AsString = 'S')
         And (DM1.cdsQry.FieldByName('COMPROMISO_PENDIENTE').AsString = 'S') Then
      Begin
         xSQL :=
            '   UPDATE GES_COB_COMPROMISO '
            + '    SET ESTADO = ''INCUMPLIDO'' '
            + '        ,FEC_CIERRE = SYSDATE '
            + '        ,USU_CIERRE = ' + QuotedStr(DM1.wUsuario)
            + '  WHERE PERIODO = ' + QuotedStr(xPeriodo)
            + '    AND ASOID = ' + QuotedStr(xAsoId)
            + '    AND TIPO_GESTOR = ' + QuotedStr(xsTipoGestor)
            + '    AND ESTADO = ''NUEVO'' '
            + '    AND COMPROMISO = ''S'' ';
         DM1.DCOM1.AppServer.EjecutaSql(xSQL);
      End;
      // INICIO : SPP_201402_GESCOB
      xSQL :=
         '  DECLARE '
         + ' XNCOD_COMPROMISO NUMBER;  '
         + 'BEGIN  '
         + ' SELECT NVL(MAX(COD_COMPROMISO),0)+1 INTO XNCOD_COMPROMISO FROM GES_COB_COMPROMISO;'
         + ' INSERT INTO GES_COB_COMPROMISO '
         + '   (COD_COMPROMISO, PERIODO, ASOID, '
         + '    IDGTN, IDGTNDET, '
         + '    TIPO_GESTOR, GESTOR, FEC_CONTACTO, '
         + '    COMPROMISO, FEC_COMPROMISO, '
         + '    COD_NEG, OBSERVACIONES, '
         + '    ESTADO, UREG, FREG, MONCOM)'
         + ' VALUES '
         + '   (XNCOD_COMPROMISO, ' + QuotedStr(xPeriodo) + ', ' + QuotedStr(xAsoId) + ', '
         + QuotedStr(dblGestion.Text) + ', ' + QuotedStr(dblGestionDet.Text) + ', '
         + QuotedStr(xsTipoGestor) + ', ' + QuotedStr(DM1.wUsuario) + ', ' + QuotedStr(DateToStr(DtpFecGst.Date)) + ', '
         + QuotedStr(DM1.cdsQry15.fieldbyname('COMPROMISO').AsString) + ', ' + xsFechaCompromiso + ', '
         + QuotedStr(cbNegociacion.Text) + ', ' + QuotedStr(edObservaciones.Text) + ', '
         + '''NUEVO'',' + QuotedStr(DM1.wUsuario) + ', SYSDATE,'+ floattostr(xnMonCom) +');'
         + ' COMMIT; '
         + 'END; ';
      DM1.DCOM1.AppServer.EjecutaSql(xSQL);
      // FIN : SPP_201402_GESCOB
   End;
   ////
   If DM1.xCnd = 'NUE' Then
   Begin
      xNroGest := GnrNroGest;
      If xNroGest = '' Then
      Begin
         ShowMessage('Error Falta generar el Correlativo (CRE206) ');
         Exit;
      End;
      xSQL := 'INSERT INTO GES_INI_SEG(PERIODO,ASOID,NROGEST,FECHA,USUARIO,MASDAT,ANOGEST,OFDESID) VALUES (' + QuotedStr(cdsActivo.fieldByname('PERIODO').AsString) +
         ',' + QuotedStr(xAsoId) + ',' + QuotedStr(xNroGest) + ',' + QuotedStr(DateToStr(DtpFecGst.Date)) + ',' + QuotedStr(DM1.wUsuario) + ',' + QuotedStr(mRefCab.Text) + ',' + QuotedStr(Copy(DateToStr(DtpFecGst.Date), 7, 4)) + ',' + QuotedStr(DM1.xOfiDes) + ')';
      DM1.DCOM1.AppServer.EjecutaSql(xSQL);
      fGestInt.MstCabecera(xAsoId, cdsActivo.fieldByname('PERIODO').AsString);
   End;
   If DM1.xCnd = 'MDF' Then
   Begin
      xNroGest := DM1.cdsCambios.fieldByname('NROGEST').AsString;
      xSQL := 'UPDATE GES_INI_SEG SET MASDAT=' + QuotedStr(mRefCab.Text)
         + ' WHERE ASOID=' + QuotedStr(xAsoId) + ' AND NROGEST=' + QuotedStr(DM1.cdsCambios.fieldByname('NROGEST').AsString) + ' AND ANOGEST=' + QuotedStr(DM1.cdsCambios.fieldByname('ANOGEST').AsString) + ' AND PERIODO=' + QuotedStr(DM1.cdsCambios.fieldByname('PERIODO').AsString);
      DM1.DCOM1.AppServer.EjecutaSql(xSQL);
   End;

   xSQL := 'INSERT INTO GES_MAS_REF(ASOID,USUARIO,MASDAT,HREG,OFDESID) VALUES (' + QuotedStr(xAsoId) + ',' + QuotedStr(DM1.wUsuario) + ',' + QuotedStr(mRefCab.Text) + ',SYSDATE' + ',' + QuotedStr(DM1.xOfiDes) + ' )';
   DM1.DCOM1.AppServer.EjecutaSql(xSQL);

   xOrden := OrdenGestion(xAsoId, cdsActivo.fieldByname('PERIODO').AsString, xNroGest, Copy(DateToStr(DtpFecGst.Date), 7, 4));

   xSQL :=
      '   INSERT INTO GES_COB_SEG ( PERIODO, ASOID, NROGEST, FECHA,'
      + '                           HORA, USUARIO, IDGESTION, DETOBS, '
      + '                           ANOGEST, ORDEN, IDGESTIONDET, OFDESID) '
      + '                  VALUES (' + QuotedStr(cdsActivo.fieldByname('PERIODO').AsString) + ',' + QuotedStr(xAsoId) + ',' + QuotedStr(xNroGest) + ','
      + QuotedStr(DateToStr(DM1.FechaSys)) + ',' + QuotedStr(DM1.HoraSys) + ',' + QuotedStr(DM1.wUsuario) + ',' + QuotedStr(dblGestion.Text) + ','
      + QuotedStr(mDetObs.Text) + ',' + QuotedStr(Copy(DateToStr(DtpFecGst.Date), 7, 4)) + ',' + QuotedStr(xOrden) + ',' + QuotedStr(dblGestionDet.Text) + ',' + QuotedStr(DM1.xOfiDes) + ')';

   DM1.DCOM1.AppServer.EjecutaSql(xSQL);

   If dblGestion.Text = '05' Then xSQL := 'UPDATE GES_COB_IND SET ESTGES=''02'',ESTDES=''GESTIONADA'', OFDESID=''' + DM1.xOfiDes + ''' WHERE ASOID=' + QuotedStr(xAsoId) + ' AND USUARIO=' + QuotedStr(DM1.wUsuario);
   If dblGestion.Text = '03' Then xSQL := 'UPDATE GES_COB_DOM SET ESTGES=''02'',ESTDES=''GESTIONADA'', OFDESID=''' + DM1.xOfiDes + ''' WHERE ASOID=' + QuotedStr(xAsoId) + ' AND USUARIO=' + QuotedStr(DM1.wUsuario);
   DM1.DCOM1.AppServer.EjecutaSql(xSQL);

   fGesIndInt.MstDetalles(xAsoId, DM1.cdsCambios.fieldByname('PERIODO').AsString, DM1.cdsCambios.fieldByname('ANOGEST').AsString, DM1.cdsCambios.fieldByname('NROGEST').AsString);
   If Trim(dblGestion.Text) = '99' Then
   Begin
      xNroGest := DM1.cdsCambios.fieldByname('NROGEST').AsString;
      xSQL := 'UPDATE GES_INI_SEG SET ESTGES=''99'' WHERE ASOID=' + QuotedStr(xAsoId) + ' AND NROGEST=' + QuotedStr(DM1.cdsCambios.fieldByname('NROGEST').AsString) + ' AND ANOGEST=' + QuotedStr(DM1.cdsCambios.fieldByname('ANOGEST').AsString) + ' AND PERIODO=' + QuotedStr(DM1.cdsCambios.fieldByname('PERIODO').AsString);
      DM1.DCOM1.AppServer.EjecutaSql(xSQL);
      fGestInt.CerraGestion(xAsoId);
      pnlItems.Enabled := False;
   End;
   dblGestion.Text := '';
   mDetObs.Text := '';
   mRefCab.Text := '';
   fGestInt.CargaSaldo(xAsoid, xPeriodo);
   If fGestInt.SaldoFinal(xAsoId) = 0 Then
   Begin
      fGestInt.CerraGestion(xAsoId);
   End;
   DM1.wlGraboGestion := true;
   MessageDlg(' <<<  GESTION SE GRABO CON EXITO  >>> !!!  ', mtInformation, [mbOk], 0);

   Close;

End;

// INICIO : SPP_201401_GESCOB
Function TfDetGest.GnrNroGest : String;
Var
   xCorrAct : Integer;
   xCorrExe, xSQL : String;
   xSQLUpdate : String;
Begin
   xSQL := 'SELECT CREAREA,TIPO,CRENUMCOMP,CORREANO, ROWID ROW_ID FROM CRE206 WHERE CREAREA=''COB'' AND  CORREANO=' + QuotedStr(Copy(Trim(DateToStr(DM1.FechaSys)), 7, 4)) + ' AND TIPO=''G'' AND CTACTE=''GT-CB'' ';
   DM1.cdsFEfec.Close;
   DM1.cdsFEfec.DataRequest(xSQL);
   DM1.cdsFEfec.Open;
   If DM1.cdsFEfec.RecordCount = 1 Then
   Begin
      xCorrAct := StrToInt(DM1.cdsFEfec.fieldbyname('CRENUMCOMP').AsString) + 1;
      xCorrExe := Format('%.6d', [xCorrAct]);
      xCorrExe := copy(xCorrExe, 1, 6);

      //DM1.cdsFEfec.Edit;
      //DM1.cdsFEfec.fieldbyname('CRENUMCOMP').AsString := xCorrExe;
      //If DM1.cdsFEfec.ApplyUpdates(0) > 0 Then
      //   ShowMessage('error');

      xSQLUpdate :=
           '   UPDATE CRE206 '
           + '    SET CRENUMCOMP = LPAD( '  + xCorrExe + ',6,''0'')'
           + '  WHERE ROWID = ' + QuotedStr(DM1.cdsFEfec.fieldbyname('ROW_ID').AsString);
      DM1.DCOM1.AppServer.EjecutaSql(xSQLUpdate);

      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest(xSQL);
      DM1.cdsQry.Open;
      If Trim(xCorrExe) > Trim(DM1.cdsQry.fieldbyname('CRENUMCOMP').AsString) Then xCorrExe := '';
      DM1.cdsQry.Close;
      Result := xCorrExe;
   End;
   DM1.cdsFEfec.Close;
End;
// FIN : SPP_201401_GESCOB

Function TfDetGest.OrdenGestion(xAsoid, xPeriodo, xNroGest, xAnoGest : String) : String;
Var
   xSQL : String;
Begin
   xSQL := 'SELECT COUNT(*) REGISTROS FROM GES_COB_SEG WHERE ASOID=' + QuotedStr(xAsoId) + ' AND PERIODO=' + QuotedStr(xPeriodo) + ' ' +
      'AND NROGEST=' + QuotedStr(xNroGest) + '  AND ANOGEST=' + QuotedStr(xAnoGest);
   DM1.cdsLiquid.Close;
   DM1.cdsLiquid.DataRequest(xSQL);
   DM1.cdsLiquid.Open;
   If DM1.cdsLiquid.RecordCount > 0 Then
      Result := Format('%.3d', [(DM1.cdsLiquid.FieldByName('REGISTROS').AsInteger + 1)])
   Else
      Result := '001';

   DM1.cdsLiquid.Close;
End;

// INICIO : SPP_201402_GESCOB
Procedure TfDetGest.BitDatGesClick(Sender : TObject);
(*
Var
   xAsoId, xSQL : String;
*)
Begin
(*
   xAsoId := cdsActivo.fieldByname('ASOID').AsString;
   xAsoId := sCodAsociado;

// Inicio: SPP_201302_GESCOB  -   05/04/2013 CORREGIR LA OPCIÓN MAS DATOS, SE CAMBIARION LOS INSERTS
   xSQL := 'SELECT ASOID FROM GES_TEL_ASO WHERE ASOID=' + QuotedStr(xAsoId);
   If DM1.CountReg(xSQL) = 0 Then
   Begin
      xSQL := 'INSERT INTO GES_TEL_ASO (idtiptel, nrotelf, activo, asoid, usuario, hreg, obstel, usumod, modreg )' +
         'SELECT ''01'',ASOTELF1||'' - ''||ASOTELF2,''N'',ASOID,' + QuotedStr(DM1.wUsuario) + ', ' +
         'SYSDATE,''INSERTADO AUTOMATICAMENTE'',NULL,NULL FROM APO201 WHERE ASOID=' + QuotedStr(xAsoId);
      DM1.DCOM1.AppServer.EjecutaSql(xSQL);
   End;

   xSQL := 'SELECT ASOID FROM GES_DOM_ASO WHERE ASOID=' + QuotedStr(xAsoId);
   If DM1.CountReg(xSQL) = 0 Then
   Begin
      xSQL := 'INSERT INTO GES_DOM_ASO ( asodir, ubigeo, activo, asoid, usuario, hreg, obstel, modreg, usumod )' +
         'SELECT ASODIR,ZIPID,''N'',ASOID,' + QuotedStr(DM1.wUsuario) + ',SYSDATE,''INSERTADO AUTOMATICAMENTE'',NULL,NULL FROM APO201 ' +
         'WHERE ASOID=' + QuotedStr(xAsoId);
      DM1.DCOM1.AppServer.EjecutaSql(xSQL);
   End;
// Fin: SPP_201302_GESCOB  -   05/04/2013 CORREGIR LA OPCIÓN MAS DATOS, SE CAMBIARION LOS INSERTS

   fMasDatos := Nil;
   fMasDatos := tfMasDatos.Create(Self);
   xSQL := 'SELECT IDTIPTEL,B.DESCRIP,NROTELF,ACTIVO,ASOID,USUARIO,HREG,OBSTEL, A.ROWID FROM GES_TEL_ASO A,(SELECT ID,DESCRIP FROM  ' +
      '(SELECT ''01'' ID,''FIJO'' DESCRIP FROM DUAL UNION SELECT ''02'' ID,''CELULAR'' DESCRIP FROM DUAL UNION SELECT ''03'' ID,''FAX'' DESCRIP FROM DUAL)) B ' +
      ' WHERE ASOID=' + QuotedStr(xAsoId) + ' AND A.IDTIPTEL=B.ID AND ACTIVO=''S'' ORDER BY HREG DESC';
   DM1.cdsDocPago.Close;
   DM1.cdsDocPago.DataRequest(xSQL);
   DM1.cdsDocPago.Open;

   xSQL := 'SELECT ACTIVO,ASODIR,USUARIO,HREG,UBIGEO,ASOID,OBSTEL, ROWID FROM GES_DOM_ASO WHERE ASOID=' + QuotedStr(xAsoId) + ' AND ACTIVO=''S'' ORDER BY HREG DESC';
   DM1.cdsMGrupo.Close;
   DM1.cdsMGrupo.DataRequest(xSQL);
   DM1.cdsMGrupo.Open;

   xSQL := 'SELECT ASOID, USUARIO, MASDAT, HREG, A.ROWID FROM GES_MAS_REF A,USERTABLE B WHERE A.USUARIO=B.USERID AND ASOID=' + QuotedStr(cdsActivo.FieldByName('ASOID').AsString) + ' ORDER BY HREG DESC';
   DM1.cdsDSocioE.Close;
   DM1.cdsDSocioE.DataRequest(xSQL);
   DM1.cdsDSocioE.Open;

   fMasDatos.Showmodal;
   fMasDatos.Free;
*)
    Try
      fMasDatos := TfMasDatos.create(Self);
      fMasDatos.xsAsoId := sCodAsociado;
      fMasDatos.ShowModal;
   Finally
      fMasDatos.Free;
   End;
End;
// FIN : SPP_201402_GESCOB

Procedure TfDetGest.BitSaldoHoyClick(Sender : TObject);
Var
   xAsoId, xfecCalculo, xSQL : String;
Begin
   xAsoId := cdsActivo.fieldByname('ASOID').AsString;
   xAsoId := sCodAsociado;
   xfecCalculo := Trim(Copy(DateToStr(DM1.FechaSys), 7, 4) + Copy(DateToStr(DM1.FechaSys), 4, 2));
   xSQL := 'SELECT NUMPRE||'' - ''||TIPCREDES||'' - ''||ANOPRE NUMERO,COUNT(*) CUOTAS,SUM(NVL(ABONO,0)) SALDO,MAX(PACTADA) PACTADA FROM  (SELECT SUBSTR(A.CREDID,11,7) AS NUMPRE,SUBSTR(A.CREDID,3,4) AS ANOPRE, ' +
      'SUBSTR(A.CREDID,7,2) AS TIPPRE,SUBSTR(A.CREDID,1,2) AS ORIOTO, ' +
      'A.CRECUOTA,CREFVEN,C.CRECUOTA PACTADA,  ' +
      'CASE WHEN CREANO||CREMES>' + QuotedStr(Trim(xfecCalculo)) + ' AND CREFVEN=CREFVENINI THEN (NVL(CREAMORT,0)+NVL(CREFLAT,0))-NVL(CREMTOCOB,0) ' +
      'ELSE NVL(CREMTO,0)-NVL(CREMTOCOB,0)  END AS ABONO, ' +
      'A.CREESTADO,C.TIPCREDES FROM CRE302 A,CRE110 B,CRE301 C ' +
      'WHERE A.ASOID=' + QuotedStr(Trim(xAsoId)) + ' AND A.ASOID=C.ASOID AND A.CREDID=C.CREDID AND A.TIPCREID=B.TIPCREID AND ' +
      'A.CREESTID IN (''02'',''11'',''27'') ' +
      'ORDER BY A.CREDID,A.CRECUOTA ) GROUP BY NUMPRE||'' - ''||TIPCREDES||'' - ''||ANOPRE ';
   DM1.cdsAbonoCuotas.Close;
   DM1.cdsAbonoCuotas.DataRequest(xSQL);
   DM1.cdsAbonoCuotas.Open;
   TNumericField(DM1.cdsAbonoCuotas.fieldbyname('CUOTAS')).DisplayFormat := '###,##0';
   TNumericField(DM1.cdsAbonoCuotas.fieldbyname('SALDO')).DisplayFormat := '###,###.#0';
   Try
      fSalPagAct := TfSalPagAct.create(Self);
      fGestInt.lblGestor.Caption := 'Gestor(a) : ' + Trim(DM1.CrgDescrip('USERID=' + QuotedStr(Trim(DM1.wUsuario)), 'TGE006', 'USERNOM'));
      fSalPagAct.ShowModal;
   Finally
      fSalPagAct.Free;
   End;

End;

Procedure TfDetGest.BitAcuPagoClick(Sender : TObject);
Begin
   Try
      fProPago := TfProPago.create(Self);
      fProPago.ShowModal;
   Finally
      fProPago.Free;
   End;

End;

Procedure TfDetGest.BitPrintClick(Sender : TObject);
Var
   xSQL, sTelfAct, sZIP, xAsoId : String;
   sDpto, sProv, sDist : String;
Begin
   xAsoId := sCodAsociado;
   xSQL := 'SELECT CODATE,DESCRIPCION,ASOID,ASOAPENOM,ASODNI,OBSATE,A.USUARIO,HREG,FREG ' +
      'FROM COB_ATE_ASO A,GES_REF_SEG_DET B ' +
      'WHERE ASOID=' + QuotedStr(xAsoId) +
      ' AND A.CODATE=B.IDGTNDET(+) AND B.IDGTN=''02'' ORDER BY HREG DESC ';
   DM1.cdsSitReclamo.Close;
   DM1.cdsSitReclamo.DataRequest(xSQL);
   DM1.cdsSitReclamo.Open;

   xSQL := 'ASOID=' + QuotedStr(xAsoId) + ' and activo=''S''';
   sTelfAct := DM1.DisplayDescrip('prvSQL', 'GES_TEL_ASO', 'nrotelf', xSQL, 'nrotelf');

   ppLblTit.Caption := 'FICHA DE GESTION AL : ' + DateToStr(DM1.FechaSys);
   pplblCodMod.Caption := fGesIndInt.lblCodMod.Caption;
   pplblNomGen.Caption := fGesIndInt.lblAsoNombres.Caption;
   ppLblDni.Caption := fGesIndInt.lblDni.Caption;
   ppLblOriOto.Caption := fGesIndInt.lblUniPro.Caption;

   sZIP := cdsActivo.FieldByName('ZIPID').AsString;
   // INICIO : SPP_201402_GESCOB
   xSQL := 'SELECT ASODIR,USUARIO,UBIGEO,ASOID,OBSTEL FROM GES_DOM_ASO WHERE ASOID=' + QuotedStr(xAsoId) + ' AND NVL(ACTIVO, ''N'') = ''S'' ORDER BY NVL(MODREG, HREG) DESC';
   // FIN : SPP_201402_GESCOB
   DM1.cdsMGrupo.Close;
   DM1.cdsMGrupo.DataRequest(xSQL);
   DM1.cdsMGrupo.Open;

   If DM1.cdsMGrupo.recordcount > 0 Then
   Begin
      ppLblAsodir.Caption := DM1.cdsMGrupo.FieldByName('ASODIR').AsString;
      sDpto := Copy(DM1.cdsMGrupo.FieldByname('UBIGEO').AsString, 1, 2);
      sProv := Copy(DM1.cdsMGrupo.FieldByname('UBIGEO').AsString, 3, 2);
      sDist := Copy(DM1.cdsMGrupo.FieldByname('UBIGEO').AsString, 5, 2);
   End
   Else
   Begin
      // INICIO : SPP_201402_GESCOB
      ppLblAsodir.Caption := fGesIndInt.lblDireccionDomMaeAso.Caption;
      // FIN : SPP_201402_GESCOB
      sDpto := Copy(sZIP, 1, 2);
      sProv := Copy(sZIP, 3, 2);
      sDist := Copy(sZIP, 5, 2);
   End;

   // INICIO : SPP_201402_GESCOB
   If sTelfAct <> '' Then
      ppLblTelefono.Caption := sTelfAct
   Else
      ppLblTelefono.Caption := fGesIndInt.lblTelefonoFijoMaeAso.Caption;
   // FIN : SPP_201402_GESCOB

   sSQL := 'Select DPTODES, CIUDDES, ZIPDES '
      + 'from APO158 A, TGE121 B, TGE122 C '
      + 'where A.DPTOID=''' + sDpto + ''' '
      + ' AND B.DPTOID=''' + sDpto + ''' AND B.CIUDID=''' + sProv + ''' '
      + ' AND C.DPTOID=''' + sDpto + ''' AND C.CIUDID=''' + sProv + ''' AND C.ZIPID=''' + sDist + '''';

   DM1.cdsQry10.Close;
   DM1.cdsQry10.DataRequest(sSQL);
   DM1.cdsQry10.Open;

   pplDpto.Caption := DM1.cdsQry10.FieldByname('DPTODES').AsString;
   pplProv.Caption := DM1.cdsQry10.FieldByname('CIUDDES').AsString;
   pplDist.Caption := DM1.cdsQry10.FieldByname('ZIPDES').AsString;

   ppLblTipAso.Caption := fGesIndInt.lblTipAso.Caption;
   ppLblCtaAho.Caption := fGesIndInt.lblCuenta.Caption;
   ppLblUses.Caption := fGesIndInt.lblUses.Caption;
   lblFecGes.Caption := DM1.cdsCambios.FieldByName('FECHA').AsString;
   pplblSalVen.Caption := lblVenc.Caption;
   pplblSalPen.Caption := lblPend.Caption;
   pplblSalTot.Caption := lblSaldo.Caption;
   ppLblUser.Caption := 'Emitido Por :  ' + Trim(DM1.CrgDescrip('USERID=' + QuotedStr(Trim(DM1.wUsuario)), 'TGE006', 'USERNOM'));
   RpFichaGes.Print;
   //PPD1.ShowModal;
   //RpFichaGes.Cancel;
End;

Function TfDetGest.VrfNueGes(xAsoId, xNroGest, xAnoGest : String) : String;
Var
   xSQL, xEstGes : String;
Begin
   xEstGes := 'S';
   xSQL := 'SELECT ASOID,NROGEST,ANOGEST,IDGESTION FROM GES_COB_SEG ' +
      'WHERE ASOID=' + QuotedStr(xAsoId) + ' AND NROGEST=' + QuotedStr(xNroGest) + ' AND ANOGEST=' + QuotedStr(xAnoGest) + ' AND IDGESTION=''99'' ';
   DM1.cdsDLabo.Close;
   DM1.cdsDLabo.DataRequest(xSQL);
   DM1.cdsDLabo.Open;
   If DM1.cdsDLabo.RecordCount > 0 Then
   Begin
      xEstGes := 'N';
   End;
   DM1.cdsDLabo.Close;
   Result := xEstGes;

End;

Procedure TfDetGest.EdtDesGntChange(Sender : TObject);
Var
   xSQL : String;
Begin
   xSQL :=
      '   SELECT IDGTN, IDGTNDET, DESCRIPCION '
      + '   FROM GES_REF_SEG_DET '
      + '  WHERE IDGTN = ' + QuotedStr(dblGestion.Text)
      + '    AND ACTIVO = ''S'' ';
   DM1.cdsTipCreA.Close;
   DM1.cdsTipCreA.DataRequest(xSQL);
   DM1.cdsTipCreA.Open;
   If DM1.cdsTipCreA.RecordCount > 0 Then dblGestionDet.Enabled := True;
End;


Procedure TfDetGest.dblGestionDetChange(Sender : TObject);
Var
   xsSQL : String;
Begin
   If DM1.cdsTipCreA.Locate('IDGTNDET', VarArrayof([dblGestionDet.Text]), []) Then
   Begin
      EdtDesGntDet.Text := DM1.cdsTipCreA.fieldbyname('DESCRIPCION').AsString;
   End
   Else
   Begin
      EdtDesGntDet.Text := '';
   End;

   xsSQL :=
      'SELECT CASE WHEN COUNT(1)>0 THEN ''S'' ELSE ''N'' END IS_TIENE_DETALLE '
      + '  FROM GES_COB_TIP_GES_NEG '
      + ' WHERE IDGTN = ' + QuotedStr(dblGestion.Text)
      + '   AND IDGTNDET = ' + QuotedStr(dblGestionDet.Text);

   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xsSQL);
   DM1.cdsQry.Open;
   gbNegociacion.Visible := (DM1.cdsQry.FieldByName('IS_TIENE_DETALLE').AsString = 'S');

   xsSQL :=
      ' SELECT B.COD_NEG, B.NEGOCIACION, B.COMPROMISO '
      + '  FROM GES_COB_TIP_GES_NEG A, GES_COB_NEGOCIACION B '
      + ' WHERE A.IDGTN = ' + QuotedStr(dblGestion.Text)
      + '   AND A.IDGTNDET = ' + QuotedStr(dblGestionDet.Text)
      + '   AND A.COD_NEG = B.COD_NEG '
      + ' ORDER BY B.COD_NEG ';
   DM1.cdsQry15.Close;
   DM1.cdsQry15.DataRequest(xsSQL);
   DM1.cdsQry15.Open;
   cbNegociacion.LookupTable := DM1.cdsQry15;
   cbNegociacion.LookupField := 'COD_NEG';
   cbNegociacion.Selected.Clear;
   cbNegociacion.Selected.Add('COD_NEG'#9'3'#9'Código'#9#9);
   cbNegociacion.Selected.Add('NEGOCIACION'#9'30'#9'Descripción'#9#9);
   cbNegociacionChange(cbNegociacion);

End;

Procedure TfDetGest.dtgDetGestionDblClick(Sender : TObject);
Begin

   If Length(Trim(DM1.cdsDetRegCob.FieldByName('FECACU').AsString)) > 0 Then
      MessageDlg('Gestión Realizada : ' + DM1.cdsDetRegCob.FieldByName('DETOBS').AsString + #13 + 'Fecha de Acuerdo  : ' + DM1.cdsDetRegCob.FieldByName('FECACU').AsString, mtInformation, [mbOk], 0)
   Else
      MessageDlg(DM1.cdsDetRegCob.FieldByName('DETOBS').AsString, mtInformation, [mbOk], 0);
End;

Procedure TfDetGest.BitPlanillaClick(Sender : TObject);
Var
   xAsoId, xSQL : String;
Begin
   Try
      fInfPlanilla := TfInfPlanilla.create(Self);
      xAsoId := cdsActivo.FieldByName('ASOID').AsString;
      xAsoId := sCodAsociado;
      xSQL := 'SELECT ASOID,PERIODO,MESDESC||'' - ''||SUBSTR(PERIODO,1,4) PERCOB,MONCUOENV,MONCUOAPL, ' +
         'MONCUOENV-MONCUOAPL SALCUO,TIPOCARGA FROM GES_ENV_PLA A,TGE181 B WHERE ASOID=' + QuotedStr(xAsoId) + ' AND SUBSTR(A.PERIODO,5,2)=B.MESIDR ' +
         'ORDER BY PERIODO DESC';
      DM1.cdsCtasBco.Close;
      DM1.cdsCtasBco.DataRequest(xSQL);
      DM1.cdsCtasBco.Open;
      TNumericField(DM1.cdsCtasBco.FieldByName('MONCUOENV')).DisplayFormat := '###,###,##0.#0';
      TNumericField(DM1.cdsCtasBco.FieldByName('MONCUOAPL')).DisplayFormat := '###,###,##0.#0';
      TNumericField(DM1.cdsCtasBco.FieldByName('SALCUO')).DisplayFormat := '###,###,##0.#0';
      fInfPlanilla.ShowModal;
   Finally
      fInfPlanilla.Free;
   End;
End;

Procedure TfDetGest.BitAtencionClick(Sender : TObject);
Var
   xSQL, xAsoId : String;
Begin
   xAsoId := sCodAsociado;
   xSQL := 'SELECT CODATE, DESCRIPCION, ASOID, ASOAPENOM, '
      + '          ASODNI, OBSATE, A.USUARIO, HREG, FREG '
      + '     FROM COB_ATE_ASO A, GES_REF_SEG_DET B '
      + '    WHERE ASOID = ' + QuotedStr(xAsoId)
      + '      AND A.CODATE = B.IDGTNDET(+) '
      + '      AND B.IDGTN = ''02'' '
      + '    ORDER BY HREG DESC ';
   DM1.cdsSitReclamo.Close;
   DM1.cdsSitReclamo.DataRequest(xSQL);
   DM1.cdsSitReclamo.Open;
   If DM1.cdsSitReclamo.RecordCount > 0 Then
   Begin
      fAtenVen := Nil;
      fAtenVen := TfAtenVen.create(self);
      fAtenVen.Showmodal;
      fAtenVen.free;
   End;
   DM1.cdsSitReclamo.Close;
End;

Procedure TfDetGest.FormClose(Sender : TObject; Var Action : TCloseAction);
Begin
   DM1.VarRefencia := mRefCab.Text;
   DM1.VarGestion := mDetObs.Text;
End;


Procedure TfDetGest.cbNegociacionChange(Sender : TObject);
Begin
   If DM1.cdsQry15.Locate('COD_NEG', VarArrayof([cbNegociacion.Text]), []) Then
   Begin
      edNegociacion.Text := DM1.cdsQry15.fieldbyname('NEGOCIACION').AsString;
      pnFechaCompromiso.Visible := (DM1.cdsQry15.fieldbyname('COMPROMISO').AsString = 'S');
   End
   Else
   Begin
      edNegociacion.Text := '';
      pnFechaCompromiso.Visible := false;
   End;

End;

End.

