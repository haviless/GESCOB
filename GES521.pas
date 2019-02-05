// Inicio Uso Estándares: 01/08/2011
// Unidad : Gestión de Cobranzas
// Formulario : FDirTelCenRieDet
// Fecha de Creación :
// Autor : Equipo de Sistemas
// Objetivo : Mostrar Detalles de direcciones y telefonos de centrales de riesgo
// Actualizaciones:
// HPC_201120_GESCOB 23/11/2011 reporte de direcciones y telefonos de centrales de riesgo
Unit GES521;

Interface

Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, wwExport, shellapi, StdCtrls, Buttons, wwdblook, Wwdbdlg,
   ExtCtrls, ppParameter, ppBands, ppCtrls, ppClass, ppVar, ppPrnabl,
   ppCache, ppProd, ppReport, ppRelatv, ppDB, ppDBPipe, ppDBBDE, ppComm,
   ppEndUsr, Grids, Wwdbigrd, Wwdbgrid;

Type
   TFDirTelCenRieDet = Class(TForm)
      gbFiltro : TGroupBox;
      Label1 : TLabel;
      edAsoapenom : TEdit;
      edAsoid : TEdit;
      pnlControles : TPanel;
      lblCantRegistros : TLabel;
      btnImprimir : TBitBtn;
      btnSalir : TBitBtn;
      btnExportar : TBitBtn;
      dbgPrincipal : TwwDBGrid;
      Label2 : TLabel;
      edAsodni : TEdit;
      Label6 : TLabel;
      edAsocodmod : TEdit;
      desReporte : TppDesigner;
      dbpReporte : TppDBPipeline;
      repReporte : TppReport;
      ppHeaderBand41 : TppHeaderBand;
      ppShape7 : TppShape;
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
      ppLabel5 : TppLabel;
      ppLabel2 : TppLabel;
      ppLabel3 : TppLabel;
      ppLabel4 : TppLabel;
      ppLabel10 : TppLabel;
      ppLabel12 : TppLabel;
      ppLine14 : TppLine;
      ppLine15 : TppLine;
      ppLine16 : TppLine;
      ppLine17 : TppLine;
      ppDetailBand44 : TppDetailBand;
      ppDBText2 : TppDBText;
      ppDBText3 : TppDBText;
      ppDBText4 : TppDBText;
      ppDBText5 : TppDBText;
      ppDBText6 : TppDBText;
      ppDBText7 : TppDBText;
      ppLine1 : TppLine;
      ppLine2 : TppLine;
      ppLine3 : TppLine;
      ppLine7 : TppLine;
      ppLine8 : TppLine;
      ppLine9 : TppLine;
      ppLine10 : TppLine;
      ppFooterBand36 : TppFooterBand;
      ppLblUser : TppLabel;
      ppSummaryBand41 : TppSummaryBand;
      ppParameterList1 : TppParameterList;
      ppLine4 : TppLine;
      ppLine5 : TppLine;
      pplblAsaciado : TppLabel;
      pplblDni : TppLabel;
      Procedure FormShow(Sender : TObject);
      Procedure btnSalirClick(Sender : TObject);
      Procedure btnExportarClick(Sender : TObject);
      Procedure btnImprimirClick(Sender : TObject);
   Private
      Procedure fn_pintar_grilla;

   Public
    { Public declarations }
   End;

Var
   FDirTelCenRieDet : TFDirTelCenRieDet;

Implementation

Uses GESDM1;

{$R *.dfm}

//******************************************************************************
// Nombre : fn_pintar_grilla
// Descripcion : dar formato a la grilla
//******************************************************************************
Procedure TFDirTelCenRieDet.fn_pintar_grilla;
Begin
   dbgPrincipal.Selected.Clear;
   dbgPrincipal.Selected.Add('DEPARTAMENTO'#9'15'#9'Departamento');
   dbgPrincipal.Selected.Add('PROVINCIA'#9'15'#9'Provincia');
   dbgPrincipal.Selected.Add('DISTRITO'#9'15'#9'Distrito');
   dbgPrincipal.Selected.Add('DIRECCION'#9'35'#9'Dirección');
   dbgPrincipal.Selected.Add('TELEFONO'#9'15'#9'Telefono');
   dbgPrincipal.Selected.Add('FUENTE'#9'15'#9'Fuente');
   dbgPrincipal.ApplySelected;
End;

//******************************************************************************
// Nombre : FormShow
// Descripcion : activar controles y cargar data
//******************************************************************************
Procedure TFDirTelCenRieDet.FormShow(Sender : TObject);

   Function fn_is_existe_data() : boolean;
   Var
      xsSQL : String;
   Begin
      Screen.Cursor := crHourGlass;
      result := false;

      xsSQL := 'SELECT ASOID, B1.DPTODES DEPARTAMENTO, C1.CIUDDES PROVINCIA, D1.ZIPDES DISTRITO, '
         + '           DIRECCION, TELEFONO, FUENTE '
         + '      FROM (SELECT ASOID, ZIPID UBIGEO, ASODIR DIRECCION, '
         + '                   ASOTELF1 || '' / '' || ASOTELF2 TELEFONO, '
         + '                   ''DERRAMA MAGISTERIAL'' FUENTE '
         + '              FROM APO201 '
         + '             WHERE ASOID = ' + QuotedStr(edAsoid.Text)
         + '             UNION '
         + '            SELECT A.ASOID, A.UBIGEO, A.DIRECCION, B.TELEFONO, C.DESCRIPCION FUENTE '
         + '              FROM CEN_RIE_DIRECCION A, CEN_RIE_TELEFONO B, CEN_RIE_FUENTE C '
         + '             WHERE A.ASOID = ' + QuotedStr(edAsoid.Text)
         + '               AND A.IDFUENTE = C.IDFUENTE '
         + '               AND A.ASOID = B.ASOID(+) '
         + '               AND A.IDFUENTE = B.IDFUENTE(+) '
         + '             UNION '
         + '            SELECT B.ASOID, A.UBIGEO, A.DIRECCION, B.TELEFONO, C.DESCRIPCION FUENTE '
         + '              FROM CEN_RIE_TELEFONO B, CEN_RIE_DIRECCION A, CEN_RIE_FUENTE C '
         + '             WHERE B.ASOID = ' + QuotedStr(edAsoid.Text)
         + '               AND B.IDFUENTE = C.IDFUENTE '
         + '               AND B.ASOID = A.ASOID(+) '
         + '               AND B.IDFUENTE = A.IDFUENTE(+)) A1, APO158 B1, APO123 C1, APO122 D1 '
         + '     WHERE SUBSTR(A1.UBIGEO, 1, 2) = B1.DPTOID(+) '
         + '       AND SUBSTR(A1.UBIGEO, 1, 4) = C1.CIUDID(+) '
         + '       AND A1.UBIGEO = D1.ZIPID(+) '
         + '     ORDER BY A1.FUENTE ';

      DM1.cdsQry2.Close;
      DM1.cdsQry2.DataRequest(xsSQL);
      DM1.cdsQry2.Open;
      Screen.Cursor := crDefault;
      If DM1.cdsQry2.RecordCount > 0 Then result := true;
   End;
Begin
   btnExportar.Enabled := false;
   btnImprimir.Enabled := false;
   dbgPrincipal.DataSource := DM1.dsQry2;
   If fn_is_existe_data Then
   Begin
      btnExportar.Enabled := true;
      btnImprimir.Enabled := true;
      fn_pintar_grilla();
      lblCantRegistros.Caption := inttostr(DM1.cdsQry2.RecordCount) + ' Registros';
   End;
End;

//******************************************************************************
// Nombre : btnSalirClick
// Descripcion : cerrar formulario
//******************************************************************************
Procedure TFDirTelCenRieDet.btnSalirClick(Sender : TObject);
Begin
   Close;
End;

//******************************************************************************
// Nombre : btnExportarClick
// Descripcion : exportar datos a excel
//******************************************************************************
Procedure TFDirTelCenRieDet.btnExportarClick(Sender : TObject);
Begin
   Screen.Cursor := crHourGlass;
   Try
      With dbgPrincipal, dbgPrincipal.ExportOptions Do
      Begin
         ExportType := wwgetSYLK;
         FileName := 'DirTelCenRieDet.slk';
         DM1.OpcionesExportExcel(dbgPrincipal.ExportOptions);
         dbgPrincipal.ExportOptions.TitleName := 'Asociados';
         Save;
         If Not (esoClipboard In Options) Then
            ShellExecute(Handle, 'Open', PChar(dbgPrincipal.exportoptions.Filename), Nil, Nil, sw_shownormal);
      End;
      Screen.Cursor := crDefault;
   Except
      Screen.Cursor := crDefault;
      MessageDlg('No se puede grabar el Archivo ' + chr(13) + 'Cierre todos los Archivos en Excel y vuelva a intentarlo', mtWarning, [mbOk], 0);
   End;
End;

//******************************************************************************
// Nombre : btnImprimirClick
// Descripcion : imprimir reporte
//******************************************************************************
Procedure TFDirTelCenRieDet.btnImprimirClick(Sender : TObject);
Begin
   dbpReporte.DataSource := DM1.dsQry2;
   ppLblTit.Caption := 'Detalle de Direcciones y Telefonos - Centrales de Riesgo';
   ppLblUser.Caption := 'Emitido Por :  ' + Trim(DM1.CrgDescrip('USERID=' + QuotedStr(Trim(DM1.wUsuario)), 'TGE006', 'USERNOM'));
   pplblAsaciado.Caption := 'Asociado : ' + edAsoapenom.Text;
   pplblDni.Caption := 'D.N.I. : ' + edAsodni.Text + '   Cod. Mod. : ' + edAsocodmod.Text;
   repReporte.Print;
   //desReporte.Show;
End;
(******************************************************************************)
End.

