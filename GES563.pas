// Inicio Uso Estándares: 01/08/2011
// Unidad : Gestión de Cobranzas
// Formulario : FControlarImpresionCartas
// Fecha de Creación : 19/09/2014
// Autor : Equipo de Sistemas
// Objetivo : Controlar la impresion de cartas
// Actualizaciones:
// HPC_201402_GESCOB: Re-Definicion de la emision de cartas a deudores (1.7)
// SPP_201402_GESCOB: Se realiza el pase a producción a partir del HPC_201402_GESCOB
// HPC_201501_GESCOB: mejoras al proceso depriorizacion de inicio de mes
unit GES563;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Grids, Wwdbigrd, Wwdbgrid, Buttons,
  wwdblook, Wwdbdlg, DB, Wwdatsrc, DBClient, wwclient, StrUtils, ppEndUsr,
  ppParameter, ppBands, ppClass, ppStrtch, ppRichTx, ppCtrls, ppPrnabl,
  ppVar, ppCache, ppProd, ppReport, ppDB, ppComm, ppRelatv, ppDBPipe;

TYPE  TActivarBoton = (tabNuevo, tabScrollCabecera, tabFiltrar);
TYPE  TCargarDetalle = (cdLimpiar, cdCargar, cdFiltrar);

type
  TFControlarImpresionCartas = class(TForm)
    pnlCabecera: TPanel;
    Splitter1: TSplitter;
    pnlDetalle: TPanel;
    dtgCabecera: TwwDBGrid;
    pnlCabeceraFiltro: TPanel;
    lblPeriodo: TLabel;
    pnlDetalleFiltro: TPanel;
    pnlDetalleControles: TPanel;
    dtgDetalle: TwwDBGrid;
    btnNuevo: TBitBtn;
    btnGrabar: TBitBtn;
    btnImprimir: TBitBtn;
    btnSalir: TBitBtn;
    btnAnular: TBitBtn;
    btnFiltrar: TBitBtn;
    rgTipoCartera: TRadioGroup;
    gbGestionRealizada: TGroupBox;
    rgCompromiso: TRadioGroup;
    chbxGestionado: TCheckBox;
    chbxAsignado: TCheckBox;
    pnlGestor: TPanel;
    Label1: TLabel;
    cboGestor: TwwDBLookupComboDlg;
    rgUbigeoTodo: TGroupBox;
    rgTipoUbigeo: TRadioGroup;
    Label7: TLabel;
    pnlUbigeo: TPanel;
    pnlDepartamento: TPanel;
    Label6: TLabel;
    cboDepartamento: TwwDBLookupComboDlg;
    pnlProvincia: TPanel;
    Label3: TLabel;
    cboProvincia: TwwDBLookupComboDlg;
    pnlDistrito: TPanel;
    Label4: TLabel;
    cboDistrito: TwwDBLookupComboDlg;
    gbDatosImpresion: TGroupBox;
    pnlOficina: TPanel;
    Label2: TLabel;
    cboOficina: TwwDBLookupComboDlg;
    edDireccionOficina: TEdit;
    pnlColegio: TPanel;
    Label5: TLabel;
    cboColegio: TwwDBLookupComboDlg;
    ppdbCarta: TppDBPipeline;
    ppDBHojaRutaDetppField1: TppField;
    ppDBHojaRutaDetppField2: TppField;
    ppDBHojaRutaDetppField3: TppField;
    ppDBHojaRutaDetppField4: TppField;
    ppDBHojaRutaDetppField5: TppField;
    ppDBHojaRutaDetppField6: TppField;
    ppDBHojaRutaDetppField7: TppField;
    ppDBHojaRutaDetppField8: TppField;
    ppDBHojaRutaDetppField9: TppField;
    ppDBHojaRutaDetppField10: TppField;
    ppDBHojaRutaDetppField11: TppField;
    ppDBHojaRutaDetppField12: TppField;
    ppDBHojaRutaDetppField13: TppField;
    ppDBHojaRutaDetppField14: TppField;
    ppDBHojaRutaDetppField15: TppField;
    ppDBHojaRutaDetppField16: TppField;
    ppDBHojaRutaDetppField17: TppField;
    ppDBHojaRutaDetppField18: TppField;
    pprCartaEstandar: TppReport;
    ppdCarta: TppDesigner;
    ppParameterList1: TppParameterList;
    pprCartaTemprana: TppReport;
    ppParameterList2: TppParameterList;
    pprCartaContencion: TppReport;
    ppParameterList3: TppParameterList;
    pprCartaRecuperacion: TppReport;
    ppParameterList4: TppParameterList;
    pnlTelefonoContacto: TPanel;
    Label8: TLabel;
    edTelefonoContacto: TEdit;
    pnlCenPo: TPanel;
    Label9: TLabel;
    cboCenPo: TwwDBLookupComboDlg;
    lblCantRegistros: TLabel;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText40: TppDBText;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppDBText2: TppDBText;
    ppDBText41: TppDBText;
    ppDBText42: TppDBText;
    ppDBText43: TppDBText;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppFooterBand1: TppFooterBand;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppHeaderBand2: TppHeaderBand;
    ppDetailBand2: TppDetailBand;
    ppDBText9: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText39: TppDBText;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppDBText10: TppDBText;
    ppDBText45: TppDBText;
    ppDBText46: TppDBText;
    ppDBText47: TppDBText;
    ppFooterBand2: TppFooterBand;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppHeaderBand3: TppHeaderBand;
    ppDetailBand3: TppDetailBand;
    ppDBText18: TppDBText;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    ppDBText25: TppDBText;
    ppDBText26: TppDBText;
    ppDBText27: TppDBText;
    ppDBText38: TppDBText;
    ppLabel8: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppDBText19: TppDBText;
    ppDBText44: TppDBText;
    ppDBText48: TppDBText;
    ppDBText49: TppDBText;
    ppDBText50: TppDBText;
    ppLabel17: TppLabel;
    ppFooterBand3: TppFooterBand;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppGroupFooterBand3: TppGroupFooterBand;
    ppHeaderBand4: TppHeaderBand;
    ppDetailBand4: TppDetailBand;
    ppDBText28: TppDBText;
    ppDBText30: TppDBText;
    ppDBText31: TppDBText;
    ppDBText32: TppDBText;
    ppDBText33: TppDBText;
    ppDBText34: TppDBText;
    ppDBText35: TppDBText;
    ppDBText36: TppDBText;
    ppDBText37: TppDBText;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppDBText29: TppDBText;
    ppDBText51: TppDBText;
    ppDBText52: TppDBText;
    ppDBText53: TppDBText;
    ppDBText54: TppDBText;
    ppFooterBand4: TppFooterBand;
    ppGroup4: TppGroup;
    ppGroupHeaderBand4: TppGroupHeaderBand;
    ppGroupFooterBand4: TppGroupFooterBand;
    procedure btnSalirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnNuevoClick(Sender: TObject);
    procedure btnGrabarClick(Sender: TObject);
    procedure btnAnularClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure btnFiltrarClick(Sender: TObject);
    procedure chbxAsignadoClick(Sender: TObject);
    procedure chbxGestionadoClick(Sender: TObject);
    procedure rgTipoUbigeoClick(Sender: TObject);
    procedure cboDepartamentoChange(Sender: TObject);
    procedure cboProvinciaChange(Sender: TObject);
    procedure cboDistritoChange(Sender: TObject);
    procedure cboOficinaChange(Sender: TObject);
    procedure cboGestorChange(Sender: TObject);
    procedure rgTipoCarteraClick(Sender: TObject);
    procedure rgCompromisoClick(Sender: TObject);
    procedure cboColegioChange(Sender: TObject);
    procedure dtgCabeceraEnter(Sender: TObject);
    procedure cboCenPoChange(Sender: TObject);
    procedure ppDBText26GetText(Sender: TObject; var Text: String);
  private
    { Private declarations }
    xsPeriodoGestionActual : string;
    xsSQL : string;
    xnCodEmiCar : integer;
    procedure fn_activar_controles(opc: TActivarBoton);
    procedure fn_cargar_cabecera_grabado();
    procedure cdsAfterScroll(DataSet: TDataSet);
    procedure fn_cargar_datos_seleccion_filtros;
    procedure fn_cargar_detalle(xcdTipo : TCargarDetalle);
    function fn_obtener_sql_filtro(xcdTipo : TCargarDetalle; pn_codemicar: integer): string;
  public
    { Public declarations }
  end;

var
  FControlarImpresionCartas: TFControlarImpresionCartas;

implementation

uses GESDM1;

{$R *.dfm}
(******************************************************************************)
procedure TFControlarImpresionCartas.btnSalirClick(Sender: TObject);
begin
  Close;
end;

(******************************************************************************)
procedure TFControlarImpresionCartas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    dtgCabecera.DataSource.DataSet.AfterScroll := nil;
    Action := caFree;
end;

(******************************************************************************)
procedure TFControlarImpresionCartas.FormShow(Sender: TObject);
begin
  // llenar filtro de cabecera
  xsPeriodoGestionActual :=  DM1.fn_get_periodo_gestion_actual();
  lblPeriodo.Caption := 'Periodo : ' + xsPeriodoGestionActual;
  fn_cargar_datos_seleccion_filtros();
  fn_cargar_cabecera_grabado();
end;

(******************************************************************************)
procedure TFControlarImpresionCartas.fn_cargar_datos_seleccion_filtros();
begin

  // cargar oficinas
  xsSQL := 'SELECT OFDESID, OFDESNOM, OFDESABR, DPTOID, '
         + '       PROVINID, DISTID, OFDESDIR, OFDESTEL, '
         + '       OFDESFAX '
         + '  FROM APO110 '
         + ' WHERE DPTOID = ''15'' '
         + '   AND IDCONOFI = ''S'' '
         + '   AND OFIPRI = ''01'' '
         + 'UNION ALL '
         + 'SELECT OFDESID, OFDESNOM, OFDESABR, DPTOID, '
         + '       PROVINID, DISTID, OFDESDIR, OFDESTEL, '
         + '       OFDESFAX '
         + '  FROM APO110 '
         + ' WHERE DPTOID <> ''15'' '
         + ' ORDER BY OFDESNOM';
  DM1.cdsQry8.Close;
  DM1.cdsQry8.DataRequest(xsSQL);
  DM1.cdsQry8.Open;
  cboOficina.LookupTable := DM1.cdsQry8;
  cboOficina.LookupField := 'OFDESID';
  cboOficina.Selected.Clear;
  cboOficina.Selected.Add('OFDESNOM'#9'30'#9'OFICINA');

  // CARGAR GESTORES
  xsSQL := 'SELECT A.USERNIV, A.USERID, A.USERID || '' - ''|| B.USERNOM USERNOM, B.OFDESID '
         + '      ,A.TELEFONO '
         + '  FROM GES_NIV_USU_OTO A, TGE006 B '
         + ' WHERE A.USERID = B.USERID '
         + '   AND REGACT = ''S'' '
         + '   AND USERNIV IN (''N1'') '
         + ' ORDER BY USERID';
  DM1.cdsQry7.Close;
  DM1.cdsQry7.DataRequest(xsSQL);
  DM1.cdsQry7.Open;
  cboGestor.LookupTable := DM1.cdsQry7;
  cboGestor.LookupField := 'USERID';
  cboGestor.Selected.Clear;
  cboGestor.Selected.Add('USERNOM'#9'40'#9'USUARIO');


  //cargar departamento
  xsSQL := 'SELECT DPTOID, DPTODES, DPTOABR FROM APO158 ORDER BY DPTODES';
  DM1.cdsQry3.Close;
  DM1.cdsQry3.DataRequest(xsSQL);
  DM1.cdsQry3.Open;
  cboDepartamento.LookupTable := DM1.cdsQry3;
  cboDepartamento.LookupField := 'DPTOID';
  cboDepartamento.Selected.Clear;
  cboDepartamento.Selected.Add('DPTODES'#9'20'#9'DEPARTAMENTO');

end;

(******************************************************************************)
procedure TFControlarImpresionCartas.fn_cargar_cabecera_grabado();
begin
  //liberar el evento
  if dtgCabecera.DataSource <> nil then
    dtgCabecera.DataSource.DataSet.AfterScroll := nil;

  // llenar grilla de la cabecera
  xsSQL :='SELECT CODEMICAR, PERIODO, USUARIO, ESTADO '
         + '      ,FILTRO, FILTIPCAR, FILASIGNADO, FILGESTOR '
         + '      ,FILGESTIONADO, FILCOMPROMIO, FILTIPUBI, FILZIPID '
         + '      ,FILCENEDUID, FILOFICINA, HREG, ORDEN '
         + '      ,FILTELEFONO, FILCENPO '
         + ' FROM(SELECT CODEMICAR, PERIODO, USUARIO, ESTADO '
         + '            ,FILTRO, FILTIPCAR, FILASIGNADO, FILGESTOR '
         + '            ,FILGESTIONADO, FILCOMPROMIO, FILTIPUBI, FILZIPID '
         + '            ,FILCENEDUID, FILOFICINA, HREG '
         + '            ,CASE ESTADO  WHEN ''PROCESADO'' THEN 0 WHEN ''IMPRESO'' THEN 1 WHEN ''ANULADO'' THEN 2 END ORDEN'
         + '            ,FILTELEFONO, FILCENPO '
         + '        FROM GES_COB_EMI_CAR_CAB '
         + '       WHERE PERIODO = ' + QuotedStr(xsPeriodoGestionActual)
         + '         AND USUARIO = ' + QuotedStr(DM1.wUsuario)
         + '     )'
         + ' ORDER BY ORDEN, HREG DESC ';
  DM1.cdsQry1.Close;
  DM1.cdsQry1.DataRequest(xsSQL);
  DM1.cdsQry1.Open;
  dtgCabecera.DataSource := DM1.dsQry1;

  dtgCabecera.Selected.Clear;
  dtgCabecera.Selected.Add('FILGESTOR'#9'17'#9'GESTOR');
  dtgCabecera.Selected.Add('ESTADO'#9'12'#9'ESTADO');
  dtgCabecera.Selected.Add('HREG'#9'25'#9'FECHA~DE CREACIÓN');
  dtgCabecera.Selected.Add('FILTRO'#9'50'#9'FILTRO');  
  dtgCabecera.ApplySelected;
  
  //volver controlar el evento
  dtgCabecera.DataSource.DataSet.AfterScroll := cdsAfterScroll;

  //SELECCIONAR UN REGISTRO POR DEFECTO O DAR CLIC EN NUEVO
  IF dtgCabecera.DataSource.DataSet.RecordCount = 0 THEN
    btnNuevoClick(btnNuevo)
  ELSE
  begin
     if xnCodEmiCar = 0 then
       dtgCabecera.DataSource.DataSet.First // se lanza solo el evento afterScroll
     else
      IF not dtgCabecera.DataSource.DataSet.Locate('CODEMICAR', VarArrayof([xnCodEmiCar]), []) THEN
         dtgCabecera.DataSource.DataSet.First // se lanza solo el evento afterScroll
  end;
end;

(******************************************************************************)
procedure TFControlarImpresionCartas.btnNuevoClick(Sender: TObject);
begin
  xnCodEmiCar := 0;
  rgTipoCartera.ItemIndex := 0;

  chbxGestionado.Checked := false;
  chbxGestionadoClick(chbxGestionado);

  cboGestor.Text := '';
  cboOficina.Text := '';
  edDireccionOficina.Text := '';
  edTelefonoContacto.Text := '';
  IF DM1.NivelUsuario(DM1.wUsuario) = 'N3' then
  begin
    chbxAsignado.Checked := false;
    chbxAsignadoClick(chbxAsignado);
  end
  else
  begin
    chbxAsignado.Checked := true;
    chbxAsignadoClick(chbxAsignado);
    chbxAsignado.Enabled := false;
    pnlGestor.Enabled := false;
    pnlOficina.Enabled := false;
    pnlTelefonoContacto.Enabled := false;
    IF DM1.cdsQry7.Locate('USERID', VarArrayof([DM1.wUsuario]), []) THEN
        cboGestor.Text := DM1.cdsQry7.fieldbyname('USERNOM').AsString;
  end;

  rgTipoUbigeo.ItemIndex := 0;
  rgTipoUbigeoClick(rgTipoUbigeo);

  rgCompromiso.ItemIndex := 0;

  cboDepartamento.Text := '';
  cboProvincia.Text := '';
  cboDistrito.Text := '';
  cboCenPo.Text := '';
  cboColegio.Text := '';

  //limpiar detalle
  fn_cargar_detalle(cdLimpiar);

  // ACTIVAR CONTROLES
  fn_activar_controles(tabNuevo);
end;

(******************************************************************************)
procedure TFControlarImpresionCartas.btnGrabarClick(Sender: TObject);
var xsCodColegio : string;
    xsCodGestor : string;
    xnCodEmiCarTemp : integer;
    xsResumenFiltro : String;
    xsCodCenPo : string;
begin
  if edDireccionOficina.Text = '' then
  begin
    MessageDlg('Necesita una oficina que tenga asignada una dirección!', mtError, [mbOK],0);
    exit;
  end;

  if edDireccionOficina.Text = '' then
  begin
    MessageDlg('Necesita una telefono de contacto!', mtError, [mbOK],0);
    exit;
  end;

  try
    xnCodEmiCarTemp := xnCodEmiCar;
    xsSQL := 'SELECT NVL(MAX(CODEMICAR),0) + 1 CODEMICAR FROM GES_COB_EMI_CAR_CAB';
    DM1.cdsQry.Close;
    DM1.cdsQry.DataRequest(xsSQL);
    DM1.cdsQry.Open;
    xnCodEmiCar := DM1.cdsQry.fieldbyname('CODEMICAR').AsInteger;

    if pnlCenPo.visible then
      xsCodCenPo := QuotedStr(DM1.cdsQry11.fieldbyname('CENPO').AsString)
    else
      xsCodCenPo  := 'NULL';

    if pnlColegio.Visible then
      xsCodColegio := QuotedStr(DM1.cdsQry6.fieldbyname('CENEDUID').AsString)
    else
      xsCodColegio := 'NULL';

    if pnlGestor.Visible then
      xsCodGestor := QuotedStr(DM1.cdsQry7.fieldbyname('USERID').AsString)
    else
      xsCodGestor := 'NULL';

    xsResumenFiltro := '[TIPO DE CARTERA]=['+ rgTipoCartera.Items[rgTipoCartera.itemindex] +'];';
    IF chbxAsignado.Checked THEN
    BEGIN
       xsResumenFiltro := xsResumenFiltro + '[ASIGNADO]=[S];';
       xsResumenFiltro := xsResumenFiltro + '[GESTOR]=['+ xsCodGestor +'];';
       IF chbxGestionado.Checked THEN
       BEGIN
         xsResumenFiltro := xsResumenFiltro + '[GESTIONADO]=[S];';
         xsResumenFiltro := xsResumenFiltro + '[COMPROMISO]=['+ rgCompromiso.Items[rgCompromiso.ItemIndex] +'];';
       END
       ELSE
         xsResumenFiltro := xsResumenFiltro + '[GESTIONADO]=[N];';
    END
    ELSE
       xsResumenFiltro := xsResumenFiltro + '[ASIGNADO]=[N];';

    xsResumenFiltro := xsResumenFiltro + '[TIPO DE UBIGEO]=['+ rgTipoUbigeo.Items[rgTipoUbigeo.ItemIndex] +'];';
    xsResumenFiltro := xsResumenFiltro + '[DEPARTAMENTO]=['+ cboDepartamento.Text +'];';
    xsResumenFiltro := xsResumenFiltro + '[PROVINCIA]=['+ cboProvincia.Text +'];';
    xsResumenFiltro := xsResumenFiltro + '[DISTRITO]=['+ cboDistrito.Text +'];';
    IF rgTipoUbigeo.ItemIndex = 1 THEN
    begin
      xsResumenFiltro := xsResumenFiltro + '[CENTRO POBLADO]=['+ cboCenPo.Text +'];';
      xsResumenFiltro := xsResumenFiltro + '[COLEGIO]=['+ cboColegio.Text +'];';
    end;
    xsResumenFiltro := xsResumenFiltro + '[OFICINA]=['+ cboOficina.Text +'];';
    xsResumenFiltro := xsResumenFiltro + '[DIRECION DE OFICINA]=['+ edDireccionOficina.Text +'];';
    xsResumenFiltro := xsResumenFiltro + '[TELEFONO DE CONTACTO]=['+ edTelefonoContacto.Text +'];';

    xsSQL := 'BEGIN '
           + ' INSERT INTO GES_COB_EMI_CAR_CAB(CODEMICAR, PERIODO, USUARIO, ESTADO '
           + '                                ,FILTRO, FILTIPCAR, FILASIGNADO, FILGESTOR '
           + '                                ,FILGESTIONADO, FILCOMPROMIO, FILTIPUBI, FILZIPID '
           + '                                ,FILCENEDUID, FILOFICINA, HREG '
           + '                                ,USUANU, HREGANU, USUIMP, HREGIMP, FILTELEFONO, FILCENPO) '
           + ' VALUES(' + inttostr(xnCodEmiCar) + ', ' + QuotedStr(xsPeriodoGestionActual) + ', ' + QuotedStr(DM1.wUsuario) + ' , ''PROCESADO'' '
           + '     ,UPPER(SUBSTR('+QuotedStr(xsResumenFiltro)+',1,800)) , ' + inttostr(rgTipoCartera.ItemIndex) + ', ' + booltostr(chbxAsignado.Checked) + ', ' + xsCodGestor
           + '     ,' + booltostr(chbxGestionado.Checked) + ', '+inttostr(rgCompromiso.ItemIndex) + ', ' + inttostr(rgTipoUbigeo.ItemIndex) + ', ' + QuotedStr(DM1.cdsQry5.fieldbyname('ZIPID').AsString)
           + '     ,' + xsCodColegio + ', ' + QuotedStr(DM1.cdsQry8.fieldbyname('OFDESID').AsString) + ', SYSDATE '
           + '     ,NULL, NULL, NULL, NULL,'+QuotedStr(edTelefonoContacto.Text)+',' + xsCodCenPo + '); '
           + ' INSERT INTO GES_COB_EMI_CAR_DET(CODEMICAR, PERIODO, TIPCAR, GESTOR, GESTIONADO, '
           + '                                 COMPAG, ESTACU, ZIPIDDOM, DIRDOM, '
           + '                                 ZIPIDCOL, DIRCOL, ASOID, ASOCODMOD, ASODNI, ASOTIPID, '
           + '                                 ASOAPENOM, GESTION, CUOPAC, SALTOT, SALTOTACT, '
           + '                                 SALVENACT, SALNOVENACT, SALDIFACT) '
           + fn_obtener_sql_filtro(cdFiltrar, xnCodEmiCar) + ';'
           + ' COMMIT;'
           + 'END;';
    DM1.DCOM1.AppServer.EjecutaSql(xsSQL);
  except
    MessageDlg('Ocurrió un problema al intentar grabar, por favor inténtelo nuevamente!', mtError, [mbOK],0);
    xnCodEmiCar := xnCodEmiCarTemp;
    exit;
  end;

  fn_cargar_cabecera_grabado();
end;

(******************************************************************************)
procedure TFControlarImpresionCartas.btnAnularClick(Sender: TObject);
begin
 If MessageDlg('Confirma que desea ANULAR el registro?', mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
 begin
    xsSQL := 'UPDATE GES_COB_EMI_CAR_CAB '
           + '   SET ESTADO  = ''ANULADO'' '
           + '      ,USUANU  = ' + QuotedStr(DM1.wUsuario)
           + '      ,HREGANU = SYSDATE '
           + ' WHERE CODEMICAR = ' + IntToStr(xnCodEmiCar);
    DM1.DCOM1.AppServer.EjecutaSql(xsSQL);
    fn_cargar_cabecera_grabado();
 end
end;

(******************************************************************************)
procedure TFControlarImpresionCartas.btnImprimirClick(Sender: TObject);
begin
  IF xnCodEmiCar = 0 THEN btnGrabarClick(btnGrabar);
  if xnCodEmiCar > 0 then // si graba bien entonces el valor de xnCodEmiCar debe ser mayor que cero
  begin
    xsSQL := 'SELECT A.CODEMICAR, A.PERIODO, A.TIPCAR, A.GESTOR, A.GESTIONADO, A.COMPAG '
           + '      ,A.ESTACU, A.ZIPIDDOM, A.DIRDOM, A.ZIPIDCOL, A.DIRCOL, A.ASOID '
           + '      ,A.ASOCODMOD, A.ASODNI, A.ASOTIPID, A.ASOAPENOM, A.GESTION, A.CUOPAC, A.SALTOT '
           + '      ,A.SALTOTACT, A.SALVENACT, A.SALNOVENACT, A.SALDIFACT '
           + '      ,B.DPTODES DPTO_DOM, C.CIUDDES PROV_DOM, D.ZIPDES DIST_DOM, E.USERID || CASE WHEN E.USERNOM IS NOT NULL THEN '' - '' || E.USERNOM END GESTOR_NOMBRES '
           + '      ,G.OFDESNOM || '' - '' || G.OFDESDIR OFIDES_DIRECCION '
           + '      ,FILTELEFONO TELEFONO'
           + ' FROM GES_COB_EMI_CAR_DET A, TGE158 B, TGE121 C, TGE122 D, TGE006 E, GES_COB_EMI_CAR_CAB F, APO110 G '
           + 'WHERE A.CODEMICAR = ' + IntToStr(xnCodEmiCar)
           + '  AND SUBSTR(A.ZIPIDDOM,1,2) = B.DPTOID(+) '
           + '  AND SUBSTR(A.ZIPIDDOM,1,4) = C.DPTOID(+)||C.CIUDID(+) '
           + '  AND SUBSTR(A.ZIPIDDOM,1,6) = D.DPTOID(+)||D.CIUDID(+)||D.ZIPID(+) '
           + '  AND A.GESTOR = E.USERID(+) '
           + '  AND A.CODEMICAR = F.CODEMICAR '
           + '  AND F.FILOFICINA = G.OFDESID '
           + 'ORDER BY A.ASOAPENOM';
    DM1.cdsQry10.Close;
    DM1.cdsQry10.DataRequest(xsSQL);
    DM1.cdsQry10.Open;
    ppDBCarta.DataSource := DM1.dsQry10;

    case rgTipoCartera.ItemIndex of
      0 : begin
            pprCartaEstandar.Print;
          end;
      1 : begin
            pprCartaTemprana.Print;
          end;
      2 : begin
            pprCartaContencion.Print;
          end;
      3 : begin
            pprCartaRecuperacion.Print;
          end;
     end;
    //ppdCarta.Report := pprCartaEstandar;
    //ppdCarta.Report := pprCartaTemprana;
    //ppdCarta.Report := pprCartaContencion;
    //ppdCarta.Report := pprCartaRecuperacion;
    //ppdCarta.ShowModal;

    xsSQL := 'UPDATE GES_COB_EMI_CAR_CAB '
           + '   SET ESTADO = ''IMPRESO'' '
           + '      ,USUIMP  = ' + QuotedStr(DM1.wUsuario)
           + '      ,HREGIMP = SYSDATE '
           + ' WHERE CODEMICAR = ' + IntToStr(xnCodEmiCar);
    DM1.DCOM1.AppServer.EjecutaSql(xsSQL);
    fn_cargar_cabecera_grabado();
  end;  
end;

(******************************************************************************)
procedure TFControlarImpresionCartas.btnFiltrarClick(Sender: TObject);
begin
  if (pnlGestor.Visible) and (cboGestor.Text = '') then
  begin
    MessageDlg('Seleccione un Gestor!', mtError, [mbOK],0);
    exit;
  end;

  if (cboDepartamento.Text = '') or (cboProvincia.Text = '') or (cboDistrito.Text = '') then
  begin
    MessageDlg('Seleccione un ubigeo!', mtError, [mbOK],0);
    exit;
  end;

  if (pnlCenPo.Visible) and (cboCenPo.Text = '') then
  begin
    MessageDlg('Seleccione un centro poblado!', mtError, [mbOK],0);
    exit;
  end;

  if (pnlColegio.Visible) and (cboColegio.Text = '') then
  begin
    MessageDlg('Seleccione un colegio!', mtError, [mbOK],0);
    exit;
  end;

  fn_cargar_detalle(cdFiltrar);
end;

(******************************************************************************)
procedure TFControlarImpresionCartas.fn_activar_controles(opc : TActivarBoton);
begin
  case opc of
      tabNuevo:
        begin
          pnlDetalleFiltro.Enabled := true;
          gbDatosImpresion.Enabled := true;
          btnFiltrar.Enabled := true;
          btnAnular.Enabled := false;
          btnGrabar.Enabled := false;
          btnImprimir.Enabled := false;
        end;
      tabFiltrar:
        begin
          pnlDetalleFiltro.Enabled := true;
          gbDatosImpresion.Enabled := true;
          btnFiltrar.Enabled := true;
          btnAnular.Enabled := false;
          btnGrabar.Enabled := (DM1.cdsQry2.RecordCount > 0);
          btnImprimir.Enabled := (DM1.cdsQry2.RecordCount > 0);
        end;
      tabScrollCabecera:
        begin
          pnlDetalleFiltro.Enabled := false;
          gbDatosImpresion.Enabled := false;
          btnFiltrar.Enabled := false;
          btnAnular.Enabled := (DM1.cdsQry1.FieldByName('ESTADO').AsString = 'PROCESADO');
          btnGrabar.Enabled := false;
          btnImprimir.Enabled := ((DM1.cdsQry1.FieldByName('ESTADO').AsString = 'PROCESADO') OR (DM1.cdsQry1.FieldByName('ESTADO').AsString = 'IMPRESO'));
        end;
  end;
end;

(******************************************************************************)
procedure TFControlarImpresionCartas.chbxAsignadoClick(Sender: TObject);
begin
  fn_cargar_detalle(cdLimpiar);
  if chbxAsignado.Checked then
    gbGestionRealizada.Width := 480
  else
    gbGestionRealizada.Width := 110;

  chbxGestionado.Visible := chbxAsignado.Checked;
  chbxGestionado.Checked := false;
  pnlGestor.Visible := chbxAsignado.Checked;
end;

(******************************************************************************)
procedure TFControlarImpresionCartas.chbxGestionadoClick(Sender: TObject);
begin
  fn_cargar_detalle(cdLimpiar);
  rgCompromiso.Visible := chbxGestionado.Checked;
  IF rgCompromiso.Visible THEN
    rgCompromiso.ItemIndex := 0
  ELSE
    rgCompromiso.ItemIndex := -1;
end;

(******************************************************************************)
procedure TFControlarImpresionCartas.rgTipoUbigeoClick(Sender: TObject);
begin
   fn_cargar_detalle(cdLimpiar);
   pnlCenPo.Visible   := (rgTipoUbigeo.ItemIndex = 1);
   pnlColegio.Visible := (rgTipoUbigeo.ItemIndex = 1);
end;

(******************************************************************************)
procedure TFControlarImpresionCartas.cdsAfterScroll(DataSet: TDataSet);
begin
    xnCodEmiCar := DM1.cdsQry1.fieldbyname('CODEMICAR').AsInteger;

    // CARGAR FILTRO GRABADO
    rgTipoCartera.ItemIndex := DM1.cdsQry1.fieldbyname('FILTIPCAR').AsInteger;
    chbxAsignado.Checked := strtobool(DM1.cdsQry1.fieldbyname('FILASIGNADO').AsString);
    chbxAsignadoClick(chbxAsignado);

    IF DM1.cdsQry7.Locate('USERID', VarArrayof([DM1.cdsQry1.fieldbyname('FILGESTOR').AsString]), []) THEN
        cboGestor.Text := DM1.cdsQry7.fieldbyname('USERNOM').AsString
    ELSE
        cboGestor.Text := '';

    chbxGestionado.Checked := strtobool(DM1.cdsQry1.fieldbyname('FILGESTIONADO').AsString);
    chbxGestionadoClick(chbxGestionado);
    rgCompromiso.ItemIndex := DM1.cdsQry1.fieldbyname('FILCOMPROMIO').AsInteger;
    rgTipoUbigeo.ItemIndex := DM1.cdsQry1.fieldbyname('FILTIPUBI').AsInteger;

    IF DM1.cdsQry3.Locate('DPTOID', VarArrayof([AnsiLeftStr(DM1.cdsQry1.fieldbyname('FILZIPID').AsString,2)]), []) THEN
      cboDepartamento.Text := DM1.cdsQry3.fieldbyname('DPTODES').AsString
    ELSE
      cboDepartamento.Text := '';

    IF DM1.cdsQry4.Locate('CIUDID', VarArrayof([AnsiLeftStr(DM1.cdsQry1.fieldbyname('FILZIPID').AsString,4)]), []) THEN
      cboProvincia.Text := DM1.cdsQry4.fieldbyname('CIUDDES').AsString
    ELSE
      cboProvincia.Text := '';

    IF DM1.cdsQry5.Locate('ZIPID', VarArrayof([DM1.cdsQry1.fieldbyname('FILZIPID').AsString]), []) THEN
      cboDistrito.Text := DM1.cdsQry5.fieldbyname('ZIPDES').AsString
    ELSE
      cboDistrito.Text := '';

    IF DM1.cdsQry11.Locate('CENPO', VarArrayof([DM1.cdsQry1.fieldbyname('FILCENPO').AsString]), []) THEN
      cboCenPo.Text := DM1.cdsQry11.fieldbyname('CENPO').AsString
    ELSE
      cboCenPo.Text := '';

    IF (cboCenPo.Text <> '') and (DM1.cdsQry6.Locate('CENEDUID', VarArrayof([DM1.cdsQry1.fieldbyname('FILCENEDUID').AsString]), [])) THEN
      cboColegio.Text := DM1.cdsQry6.fieldbyname('NOMCENEDU').AsString
    ELSE
      cboColegio.Text := '';

    IF DM1.cdsQry8.Locate('OFDESID', VarArrayof([DM1.cdsQry1.fieldbyname('FILOFICINA').AsString]), []) THEN
      cboOficina.Text := DM1.cdsQry8.fieldbyname('OFDESNOM').AsString
    ELSE
      cboOficina.Text := '';

    edTelefonoContacto.Text := DM1.cdsQry1.fieldbyname('FILTELEFONO').AsString;

    fn_cargar_detalle(cdCargar);
    // CARGAR DETALLE GRABADO
    fn_activar_controles(tabScrollCabecera);
end;

(******************************************************************************)
procedure TFControlarImpresionCartas.cboDepartamentoChange(
  Sender: TObject);
begin
   fn_cargar_detalle(cdLimpiar);
  //cargar PROVINCIA
  xsSQL := 'SELECT DPTOID||CIUDID CIUDID, CIUDDES, CIUDABR FROM TGE121 WHERE DPTOID = '+ QuotedStr(DM1.cdsQry3.fieldbyname('DPTOID').AsString) +' ORDER BY CIUDDES';
  DM1.cdsQry4.Close;
  DM1.cdsQry4.DataRequest(xsSQL);
  DM1.cdsQry4.Open;
  cboProvincia.LookupTable := DM1.cdsQry4;
  cboProvincia.LookupField := 'CIUDID';
  cboProvincia.Selected.Clear;
  cboProvincia.Selected.Add('CIUDDES'#9'30'#9'PROVINCIA');
end;
(******************************************************************************)

procedure TFControlarImpresionCartas.cboProvinciaChange(Sender: TObject);
begin
  fn_cargar_detalle(cdLimpiar);
  //cargar DISTRITO
  xsSQL := 'SELECT ZIPABR, ZIPDES, DPTOID||CIUDID||ZIPID ZIPID FROM TGE122 WHERE DPTOID||CIUDID = '+ QuotedStr(DM1.cdsQry4.fieldbyname('CIUDID').AsString) +' ORDER BY ZIPDES';
  DM1.cdsQry5.Close;
  DM1.cdsQry5.DataRequest(xsSQL);
  DM1.cdsQry5.Open;
  cboDistrito.LookupTable := DM1.cdsQry5;
  cboDistrito.LookupField := 'ZIPID';
  cboDistrito.Selected.Clear;
  cboDistrito.Selected.Add('ZIPDES'#9'40'#9'DISTRITO');
end;
(******************************************************************************)

procedure TFControlarImpresionCartas.cboDistritoChange(Sender: TObject);
begin
  fn_cargar_detalle(cdLimpiar);
  //cargar CENPO
  xsSQL := 'SELECT DISTINCT ACE.CENPO '
         + '  FROM ASO_CEN_EDU ACE'
         + ' WHERE ACE.UBIGEO_DIR = ' + QuotedStr(DM1.cdsQry5.fieldbyname('ZIPID').AsString)
         + '   AND ACE.CENPO IS NOT NULL'
         + ' ORDER BY ACE.CENPO';
  DM1.cdsQry11.Close;
  DM1.cdsQry11.DataRequest(xsSQL);
  DM1.cdsQry11.Open;
  cboCenPo.LookupTable := DM1.cdsQry11;
  cboCenPo.LookupField := 'CENPO';
  cboCenPo.Selected.Clear;
  cboCenPo.Selected.Add('CENPO'#9'70'#9'CENTRO POBLADO');

end;
(******************************************************************************)

procedure TFControlarImpresionCartas.cboOficinaChange(Sender: TObject);
begin
  edDireccionOficina.Text := DM1.cdsQry8.fieldbyname('OFDESDIR').AsString;
end;
(******************************************************************************)
// INICIO : HPC_201501_GESCOB
function TFControlarImpresionCartas.fn_obtener_sql_filtro(xcdTipo : TCargarDetalle; pn_codemicar: integer): string;
var xsWhereUbigeo : string;
    xsSQLTemp : string;
begin
  if xcdTipo = cdLimpiar then
      xsSQLTemp := 'SELECT CODEMICAR, PERIODO, TIPCAR, GESTOR, GESTIONADO, COMPAG '
             + '      ,ESTACU, ZIPIDDOM, DIRDOM, ZIPIDCOL, DIRCOL, ASOID '
             + '      ,ASOCODMOD, ASODNI, ASOTIPID, ASOAPENOM, GESTION, CUOPAC, SALTOT '
             + '      ,SALTOTACT, SALVENACT, SALNOVENACT, SALDIFACT '
             + ' FROM GES_COB_EMI_CAR_DET WHERE 1 = 2 '
  else if xcdTipo = cdFiltrar then
    begin
      if pnlColegio.Visible then
      begin
        xsWhereUbigeo := 'AND C1.UBIGEO_DIR = ' + QuotedStr(DM1.cdsQry5.fieldbyname('ZIPID').AsString);
        IF cboColegio.Text <> '' THEN
           xsWhereUbigeo := xsWhereUbigeo + ' AND C1.CENEDUID = '+ QuotedStr(DM1.cdsQry6.fieldbyname('CENEDUID').AsString);
      end
      else
        xsWhereUbigeo := 'AND A1.ZIPID = ' + QuotedStr(DM1.cdsQry5.fieldbyname('ZIPID').AsString);

      IF chbxAsignado.Checked THEN
      BEGIN
        xsSQLTemp := 'SELECT CODEMICAR, PERIODO, TIPCAR, GESTOR, GESTIONADO, COMPAG '
               + '      ,ESTACU, ZIPIDDOM, DIRDOM, ZIPIDCOL, DIRCOL, ASOID '
               + '      ,ASOCODMOD, ASODNI, ASOTIPID, ASOAPENOM, GESTION '
               + '      ,CUOPAC, SALTOT, SALTOTACT, SALVENACT, SALNOVENACT, SALDIFACT '
               + ' FROM (SELECT '+IntToStr(pn_codemicar)+' CODEMICAR, PERIODO, DISOPE TIPCAR, USUARIO GESTOR, GESTIONADO, COMPAG '
               + '             ,CASE WHEN GESTIONADO = ''S'' AND COMPAG = ''S'' AND MONTO_PAGADO > 0 THEN ''CUMPLIDO'' '
               + '                   WHEN GESTIONADO = ''S'' AND COMPAG = ''S'' AND (MONTO_PAGADO = 0) AND (TRUNC(SYSDATE) > FECHA_COMPROMISO) THEN ''VENCIDO'' '
               + '                   WHEN GESTIONADO = ''S'' AND COMPAG = ''S'' AND (MONTO_PAGADO = 0) AND (TRUNC(SYSDATE) <= FECHA_COMPROMISO) THEN ''NO VENCIDO'' '
               + '               END ESTACU '
               + '             ,ZIPIDDOM, DIRDOM, ZIPIDCOL, DIRCOL, ASOID, ASOCODMOD, ASODNI, ASOTIPID, ASOAPENOM, GESTION '
               + '             ,CUOPAC, SALTOT, SALTOTACT, SALVENACT, SALNOVENACT, SALDIFACT '
               + '         FROM (SELECT A.PERIODO, A.ASOID, A.USUARIO, ASOCODMOD, ASODNI, ASOTIPID, A.ASOAPENOM, A.ZIPIDDOM, A.DIRDOM, A.ZIPIDCOL, A.DIRCOL '
               + '                     ,B.GESTION, CASE WHEN B.ASOID IS NOT NULL THEN ''S'' ELSE ''N'' END GESTIONADO, CASE WHEN G.ASOID IS NOT NULL THEN ''S'' ELSE ''N'' END COMPAG '
               + '                     ,G.FEC_COMPROMISO FECHA_COMPROMISO '
               + '                     ,NVL((SELECT SUM(CREMTOCOB) MONTO_PAGADO FROM CRE310 C '
               + '                            WHERE CREESTID NOT IN (''23'', ''04'', ''13'', ''99'') AND FORPAGID IN (''02'', ''03'') '
               + '                              AND FREG BETWEEN G.FEC_CONTACTO AND LAST_DAY(ADD_MONTHS(TO_DATE( ' + QuotedStr(xsPeriodoGestionActual) + ' , ''YYYYMM''), 1)) '
               + '                              AND ASOID = A.ASOID), 0) MONTO_PAGADO '
               + '                     ,A.DISOPE '
               + '                     ,NVL(H.CUOPAC,0) CUOPAC '
               + '                     ,NVL(I.SALTOT,0) SALTOT '
               + '                     ,NVL(I.SALNOVENACT,0)+NVL(I.SALVENACT,0)+NVL(I.SALDIFACT,0) SALTOTACT '
               + '                     ,NVL(I.SALVENACT,0) SALVENACT '
               + '                     ,NVL(I.SALNOVENACT,0) SALNOVENACT '
               + '                     ,NVL(I.SALDIFACT,0) SALDIFACT '
               + '                 FROM (SELECT A1.PERIODO, A1.USUARIO, A1.ASOID, A1.ZIPID ZIPIDDOM, B1.ASOCODMOD, B1.ASODNI, '
               + '                              B1.ASOTIPID, A1.ASOAPENOM, B1.ASODIR DIRDOM, C1.UBIGEO_DIR ZIPIDCOL, C1.DIREC DIRCOL '
               + '                              , D1.DISOPE  '
               + '                         FROM GES_COB_DOM A1, '
               + '                              (SELECT A.ASOID '
               + '                                     ,NVL(NVL(B.ASODIR, C.ASODIR), A.ASODIR) ASODIR '
               + '                                     ,NVL(NVL(B.UBIGEO, C.UBIGEO), A.ZIPID) ZIPID '
               + '                                     ,A.ASODNI, A.CENEDUID, A.ASOTIPID, A.ASOCODMOD '
               + '                                 FROM (SELECT B1.ASOID, B1.ASODIR, B1.ZIPID, B1.ASODNI, B1.CENEDUID, B1.ASOTIPID, B1.ASOCODMOD FROM APO201 B1) A '
               + '                                     ,(SELECT B1.ASOID, B1.ASODIR, B1.UBIGEO, B1.HREG, B1.MODREG, DENSE_RANK() OVER(PARTITION BY B1.ASOID ORDER BY NVL(B1.MODREG, B1.HREG) DESC) DNRK FROM GES_DOM_ASO B1 WHERE NVL(B1.ACTIVO(+), ''N'') = ''S'') B '
               + '                                     ,(SELECT B1.ASOID, B1.ASODIR, B1.UBIGEO, B1.HREG, B1.MODREG, DENSE_RANK() OVER(PARTITION BY B1.ASOID ORDER BY NVL(B1.MODREG, B1.HREG) DESC) DNRK FROM GES_DOM_ASO B1 WHERE NVL(B1.ACTIVO(+), ''N'') = ''N'') C '
               + '                                     ,TGE122 D '
               + '                                WHERE A.ASOID = B.ASOID(+) AND 1 =  B.DNRK(+) '
               + '                                  AND A.ASOID = C.ASOID(+) AND 1 = C.DNRK(+) '
               + '                                  AND NVL(NVL(B.UBIGEO, C.UBIGEO), A.ZIPID) =  D.DPTOID||D.CIUDID||D.ZIPID '
               + '                              ) B1, '
               + '                              ASO_CEN_EDU C1, '
               + '                              (SELECT A.ASOID, A.PERIODO, B.DISOPELAG DISOPE '
               + '                                 FROM GES000_MOD_PRO A, GES_COB_DIS_OPE_CAB B '
               + '                                WHERE A.PERIODO = ' + QuotedStr(xsPeriodoGestionActual)
               + '                                  AND A.CODDISOPE = B.CODDISOPE '
               + '                                UNION '
               + '                                SELECT A.ASOID, A.PERIODO, B.DISOPELAG DISOPE '
               + '                                  FROM GES000_MOD_PRO_HIS  A, GES_COB_DIS_OPE_CAB B '
               + '                                 WHERE A.PERIODO = ' + QuotedStr(xsPeriodoGestionActual)
               + '                                   AND A.CODDISOPE = B.CODDISOPE) D1, GES000 E1 '
               + '                        WHERE A1.CODIGO_REGLA IS NOT NULL AND A1.PERIODO = ' + QuotedStr(xsPeriodoGestionActual)
               + '                          AND A1.USUARIO = ' + QuotedStr(DM1.cdsQry7.fieldbyname('USERID').AsString)
               + '                          AND A1.ASOID = B1.ASOID '
               + '                          AND B1.CENEDUID = C1.CENEDUID(+) '
               + xsWhereUbigeo
               + '                          AND A1.ASOID = D1.ASOID(+) '
               + '                          AND A1.PERIODO = D1.PERIODO(+) '
               + '                          AND A1.ASOID = E1.ASOID(+) '
               + '                          AND A1.PERIODO = E1.PERIODO(+) '
               + '                      ) A '
               + '                     ,(SELECT A.PERIODO, A.USUARIO, A.ASOID, B.DESCRIPCION GESTION '
               + '                             ,DENSE_RANK() OVER(PARTITION BY A.PERIODO, A.ASOID ORDER BY A.NROGEST DESC, A.FECHA DESC, TO_DATE(A.HORA, ''HH24:MI:SS'') DESC) DNRK '
               + '                         FROM GES_COB_SEG     A, GES_REF_SEG     B, GES_REF_SEG_DET C '
               + '                        WHERE A.PERIODO = ' + QuotedStr(xsPeriodoGestionActual)
               + '                          AND A.USUARIO = ' + QuotedStr(DM1.cdsQry7.fieldbyname('USERID').AsString)
               + '                          AND A.IDGESTION = B.IDGTN(+) '
               + '                          AND A.IDGESTION = C.IDGTN(+) '
               + '                          AND A.IDGESTIONDET = C.IDGTNDET(+)) B '
               + '                     ,(SELECT PERIODO, ASOID, FEC_COMPROMISO, FEC_CONTACTO, GESTOR USUARIO '
               + '                             ,DENSE_RANK() OVER(PARTITION BY ASOID ORDER BY FEC_COMPROMISO DESC, FREG DESC) DNRK '
               + '                         FROM GES_COB_COMPROMISO '
               + '                        WHERE COMPROMISO = ''S'' '
               + '                          AND PERIODO = ' + QuotedStr(xsPeriodoGestionActual)
               + '                          AND GESTOR = ' + QuotedStr(DM1.cdsQry7.fieldbyname('USERID').AsString) + ' ) G '
               + '                     ,(SELECT DISTINCT ASOID, SUM(NVL(CRECUOTA, 0)) OVER(PARTITION BY ASOID) CUOPAC '
               + '                         FROM CRE301 '
               + '                        WHERE CREESTID = ''02'') H '
               + '                     ,(SELECT DISTINCT ASOID '
               + '                             ,SUM(NVL(CREMTO, 0) - NVL(CREMTOCOB, 0)) OVER(PARTITION BY ASOID) SALTOT '
               + '                             ,SUM(CASE WHEN CREFVEN > TRUNC(SYSDATE) AND CREFVEN = CREFVENINI THEN (CREAMORT + CREFLAT + MONPACDESGRAV) - CREMTOCOB ELSE 0 END) OVER(PARTITION BY ASOID) SALNOVENACT '
               + '                             ,SUM(CASE WHEN CREFVEN <= TRUNC(SYSDATE) AND CREFVEN = CREFVENINI THEN NVL(CREMTO, 0) - NVL(CREMTOCOB, 0) ELSE 0 END) OVER(PARTITION BY ASOID) SALVENACT '
               + '                             ,SUM(CASE WHEN CREFVEN <> CREFVENINI THEN NVL(CREMTO, 0) - NVL(CREMTOCOB, 0) ELSE 0 END) OVER(PARTITION BY ASOID) SALDIFACT '
               + '                        FROM CRE302 '
               + '                       WHERE CREESTID IN (''02'', ''11'', ''27'')) I '
               + '                WHERE A.USUARIO = ' + QuotedStr(DM1.cdsQry7.fieldbyname('USERID').AsString)
               + '                  AND A.PERIODO = B.PERIODO(+) '
               + '                  AND A.USUARIO = B.USUARIO(+) '
               + '                  AND A.ASOID   = B.ASOID(+) '
               + '                  AND 1         = B.DNRK(+) '
               + '                  AND A.PERIODO = G.PERIODO(+) '
               + '                  AND A.USUARIO = G.USUARIO(+) '
               + '                  AND 1         = G.DNRK(+) '
               + '                  AND A.ASOID   = G.ASOID(+) '
               + '                  AND A.ASOID   = H.ASOID(+) '
               + '                  AND A.ASOID   = I.ASOID(+) '
               + '               ) '
               + '       ) '
               + '  WHERE TIPCAR          = UPPER(' + QuotedStr(rgTipoCartera.Items[rgTipoCartera.ItemIndex]) +' )'
               + '    AND GESTIONADO      = CASE WHEN ' + BoolToStr(chbxGestionado.Checked) + ' = -1 THEN ''S'' ELSE ''N'' END '
               + '    AND COMPAG          = CASE WHEN ' + BoolToStr(chbxGestionado.Checked) + ' = -1 THEN ''S'' ELSE ''N'' END '
               + '    AND NVL(ESTACU,''NULL'') = CASE WHEN ' + BoolToStr(chbxGestionado.Checked) + ' = -1 THEN CASE ' + inttostr(rgCompromiso.ItemIndex) + ' WHEN 0 THEN ''VENCIDO'' WHEN 1 THEN ''NO VENCIDO'' ELSE ''NULL'' END ELSE ''NULL'' END '
               + '  ORDER BY ASOAPENOM';
      END
      ELSE
      BEGIN
        xsSQLTemp := ' SELECT '+IntToStr(pn_codemicar)+' CODEMICAR, PERIODO, DISOPE TIPCAR, USUARIO GESTOR, GESTIONADO '
               + '             ,NULL COMPAG, NULL ESTACU '
               + '             ,ZIPIDDOM, DIRDOM, ZIPIDCOL, DIRCOL, ASOID, ASOCODMOD, ASODNI, ASOTIPID, ASOAPENOM, GESTION '
               + '             ,CUOPAC, SALTOT, SALTOTACT, SALVENACT, SALNOVENACT, SALDIFACT '
               + '         FROM (SELECT A.PERIODO, A.ASOID, A.USUARIO, ASOCODMOD, ASODNI, ASOTIPID, A.ASOAPENOM, A.ZIPIDDOM, A.DIRDOM, A.ZIPIDCOL, A.DIRCOL '
               + '                     ,NULL GESTION, ''N'' GESTIONADO '
               + '                     ,A.DISOPE '
               + '                     ,NVL(H.CUOPAC,0) CUOPAC '
               + '                     ,NVL(I.SALTOT,0) SALTOT '
               + '                     ,NVL(I.SALNOVENACT,0)+NVL(I.SALVENACT,0)+NVL(I.SALDIFACT,0) SALTOTACT '
               + '                     ,NVL(I.SALVENACT,0) SALVENACT '
               + '                     ,NVL(I.SALNOVENACT,0) SALNOVENACT '
               + '                     ,NVL(I.SALDIFACT,0) SALDIFACT '
               + '                 FROM (SELECT A1.PERIODO, NULL USUARIO, A1.ASOID, A1.ZIPID ZIPIDDOM, B1.ASOCODMOD, B1.ASODNI, '
               + '                              B1.ASOTIPID, A1.ASOAPENOM, B1.ASODIR DIRDOM, C1.UBIGEO_DIR ZIPIDCOL, C1.DIREC DIRCOL,  '
               + '                              D1.DISOPE '
               + '                         FROM (SELECT PERIODO, ASOID, ZIPID, ASOTIPID, ASOAPENOM '
               + '                                 FROM GES_COB_CAB A '
               + '                                WHERE CODIGO_REGLA IS NOT NULL AND PERIODO = ' + QuotedStr(xsPeriodoGestionActual)
               + '                                  AND CODIGO_REGLA IS NOT NULL '
               + '                                  AND NOT EXISTS (SELECT ASOID FROM GES_COB_DOM B WHERE B.CODIGO_REGLA IS NOT NULL AND A.ASOID = B.ASOID AND B.PERIODO = ' + QuotedStr(xsPeriodoGestionActual)
               + '                                                   UNION ALL '
               + '                                                  SELECT ASOID FROM GES_COB_IND B WHERE B.CODIGO_REGLA IS NOT NULL AND A.ASOID = B.ASOID AND B.PERIODO = '+ QuotedStr(xsPeriodoGestionActual) +')) A1, '
               + '                              APO201 B1, ASO_CEN_EDU C1, '
               + '                              (SELECT A.ASOID, A.PERIODO, B.DISOPE '
               + '                                 FROM GES000_MOD_PRO A ,GES_COB_DIS_OPE_CAB B '
               + '                                WHERE A.PERIODO = ' + QuotedStr(xsPeriodoGestionActual)
               + '                                   AND A.CODDISOPE = B.CODDISOPE '
               + '                                UNION '
               + '                                SELECT A.ASOID, A.PERIODO, B.DISOPE '
               + '                                  FROM GES000_MOD_PRO_HIS A, GES_COB_DIS_OPE_CAB B '
               + '                                 WHERE A.PERIODO = ' + QuotedStr(xsPeriodoGestionActual)
               + '                                   AND A.CODDISOPE = B.CODDISOPE) D1, GES000 E1 '
               + '                        WHERE A1.PERIODO = ' + QuotedStr(xsPeriodoGestionActual)
               + '                          AND A1.ASOID = B1.ASOID '
               + '                          AND B1.CENEDUID = C1.CENEDUID(+) '
               + xsWhereUbigeo
               + '                          AND A1.ASOID = D1.ASOID(+) '
               + '                          AND A1.PERIODO = D1.PERIODO(+) '
               + '                          AND A1.ASOID = E1.ASOID(+) '
               + '                          AND A1.PERIODO = E1.PERIODO(+)) A '
               + '                     ,(SELECT DISTINCT ASOID, SUM(NVL(CRECUOTA, 0)) OVER(PARTITION BY ASOID) CUOPAC '
               + '                         FROM CRE301 '
               + '                        WHERE CREESTID = ''02'') H '
               + '                     ,(SELECT DISTINCT ASOID '
               + '                             ,SUM(NVL(CREMTO, 0) - NVL(CREMTOCOB, 0)) OVER(PARTITION BY ASOID) SALTOT '
               + '                             ,SUM(CASE WHEN CREFVEN > TRUNC(SYSDATE) AND CREFVEN = CREFVENINI THEN (CREAMORT + CREFLAT + MONPACDESGRAV) - CREMTOCOB ELSE 0 END) OVER(PARTITION BY ASOID) SALNOVENACT '
               + '                             ,SUM(CASE WHEN CREFVEN <= TRUNC(SYSDATE) AND CREFVEN = CREFVENINI THEN NVL(CREMTO, 0) - NVL(CREMTOCOB, 0) ELSE 0 END) OVER(PARTITION BY ASOID) SALVENACT '
               + '                             ,SUM(CASE WHEN CREFVEN <> CREFVENINI THEN NVL(CREMTO, 0) - NVL(CREMTOCOB, 0) ELSE 0 END) OVER(PARTITION BY ASOID) SALDIFACT '
               + '                        FROM CRE302 '
               + '                       WHERE CREESTID IN (''02'', ''11'', ''27'')) I '
               + '                WHERE A.ASOID   = H.ASOID(+) '
               + '                  AND A.ASOID   = I.ASOID(+) '
               + '               ) '
               + '  WHERE DISOPE    = UPPER(' + QuotedStr(rgTipoCartera.Items[rgTipoCartera.ItemIndex]) +' )'
               + '  ORDER BY ASOAPENOM';
      END;
    end
  else if xcdTipo = cdCargar then
    begin
      xsSQLTemp := 'SELECT CODEMICAR, PERIODO, TIPCAR, GESTOR, GESTIONADO, COMPAG '
                 + '      ,ESTACU, ZIPIDDOM, DIRDOM, ZIPIDCOL, DIRCOL, ASOID '
                 + '      ,ASOCODMOD, ASODNI, ASOTIPID, ASOAPENOM, GESTION, CUOPAC, SALTOT '
                 + '      ,SALTOTACT, SALVENACT, SALNOVENACT, SALDIFACT '
                 + ' FROM GES_COB_EMI_CAR_DET '
                 + 'WHERE CODEMICAR = ' + IntToStr(pn_codemicar)
                 + 'ORDER BY ASOAPENOM ';
    end;
    result := xsSQLTemp;
end;
// FIN : HPC_201501_GESCOB
(******************************************************************************)
procedure TFControlarImpresionCartas.fn_cargar_detalle(xcdTipo : TCargarDetalle);
begin
  Screen.Cursor := crHourGlass;
  xsSQL := fn_obtener_sql_filtro(xcdTipo, xnCodEmiCar);
  DM1.cdsQry2.Close;
  DM1.cdsQry2.DataRequest(xsSQL);
  DM1.cdsQry2.Open;
  lblCantRegistros.Caption := FormatFloat('###,##0', DM1.cdsQry2.RecordCount) +' Registros encontrados';
  dtgDetalle.DataSource := DM1.dsQry2;

  dtgDetalle.Selected.Clear;
  dtgDetalle.Selected.Add('GESTIONADO'#9'5'#9'GESTIO~NADO');
  dtgDetalle.Selected.Add('COMPAG'#9'5'#9'COMPRO~MISO');
  dtgDetalle.Selected.Add('ESTACU'#9'5'#9'ACUERDO');
  dtgDetalle.Selected.Add('ASOAPENOM'#9'20'#9'ASOCIADO');
  dtgDetalle.Selected.Add('CUOPAC'#9'10'#9'CUOTA~PACTADA');
  dtgDetalle.Selected.Add('SALTOT'#9'10'#9'SALDO~TOTAL');
  dtgDetalle.Selected.Add('SALTOTACT'#9'10'#9'SALDO~TOTAL~ACTUAL');
  dtgDetalle.Selected.Add('SALVENACT'#9'10'#9'SALDO~VENCIDO~ACTUAL');
  dtgDetalle.Selected.Add('SALNOVENACT'#9'10'#9'SALDO NO~VENCIDO~ACTUAL');
  dtgDetalle.Selected.Add('SALDIFACT'#9'10'#9'SALDO~DIFERIDO~ACTUAL');
  dtgDetalle.Selected.Add('ASOCODMOD'#9'5'#9'COD~MODULAR');
  dtgDetalle.Selected.Add('ASOTIPID'#9'5'#9'TIPO~ASOC');
  dtgDetalle.Selected.Add('GESTION'#9'20'#9'GESTION');
  dtgDetalle.Selected.Add('GESTOR'#9'20'#9'GESTOR');
  dtgDetalle.ApplySelected;

  Screen.Cursor := crDefault;
  fn_activar_controles(tabFiltrar);
end;
(******************************************************************************)

procedure TFControlarImpresionCartas.cboGestorChange(Sender: TObject);
begin
    fn_cargar_detalle(cdLimpiar);
    edTelefonoContacto.Text := DM1.cdsQry7.fieldbyname('TELEFONO').AsString;
    IF (cboGestor.Text <> '' ) AND DM1.cdsQry8.Locate('OFDESID', VarArrayof([DM1.cdsQry7.fieldbyname('OFDESID').AsString]), []) THEN
    BEGIN
      cboOficina.Text := DM1.cdsQry8.fieldbyname('OFDESNOM').AsString;
      cboOficinaChange(cboOficina);
    END  
    ELSE
    BEGIN
      edDireccionOficina.Text := '';
      cboOficina.Text := '';
    END
end;

(******************************************************************************)
procedure TFControlarImpresionCartas.rgTipoCarteraClick(Sender: TObject);
begin
   fn_cargar_detalle(cdLimpiar);
end;
(******************************************************************************)

procedure TFControlarImpresionCartas.rgCompromisoClick(Sender: TObject);
begin
   fn_cargar_detalle(cdLimpiar);
end;
(******************************************************************************)

procedure TFControlarImpresionCartas.cboColegioChange(Sender: TObject);
begin
   fn_cargar_detalle(cdLimpiar);
end;
(******************************************************************************)

procedure TFControlarImpresionCartas.dtgCabeceraEnter(Sender: TObject);
begin
  IF (dtgCabecera.DataSource.DataSet.RecordCount > 0) AND (xnCodEmiCar = 0) THEN
      cdsAfterScroll(dtgCabecera.DataSource.DataSet);
end;
(******************************************************************************)
procedure TFControlarImpresionCartas.cboCenPoChange(Sender: TObject);
begin
  fn_cargar_detalle(cdLimpiar);
  //cargar COLEGIO
  xsSQL := 'SELECT ACE.NOMCENEDU ||  '' ('' || NVE.NIVEDU_DES || '')'' NOMCENEDU, '
         + '       ACE.CENEDUID '
         + '  FROM ASO_CEN_EDU ACE, NIV_CEN_EDU NVE '
         + ' WHERE ACE.NIVEDU_ID = NVE.NIVEDU_ID(+) '
         + '   AND ACE.UBIGEO_DIR = ' + QuotedStr(DM1.cdsQry5.fieldbyname('ZIPID').AsString)
         + '   AND ACE.CENPO      = ' + QuotedStr(DM1.cdsQry11.fieldbyname('CENPO').AsString)
         + ' ORDER BY NOMCENEDU, NIVEDU_DES';
  DM1.cdsQry6.Close;
  DM1.cdsQry6.DataRequest(xsSQL);
  DM1.cdsQry6.Open;
  cboColegio.LookupTable := DM1.cdsQry6;
  cboColegio.LookupField := 'CENEDUID';
  cboColegio.Selected.Clear;
  cboColegio.Selected.Add('NOMCENEDU'#9'70'#9'COLEGIO');
end;
(******************************************************************************)
procedure TFControlarImpresionCartas.ppDBText26GetText(Sender: TObject;
  var Text: String);
begin
  Text := Copy(Text, Pos('-', Text) + 2, Length(Text));
end;
(******************************************************************************)
end.