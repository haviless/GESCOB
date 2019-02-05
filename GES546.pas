// Inicio Uso Estándares: 01/08/2011
// Unidad : Gestión de Cobranzas
// Formulario : FRepHojRutDet
// Fecha de Creación : 04/04/2012
// Autor : Equipo de Sistemas
// Objetivo :  Mostrar Detalle de Reporte de Hojas de Rutas
// Actualizaciones:
// HPC_201205_GESCOB 02/04/2012 Mostrar Reporte de Hojas de Ruta - Detalle(Nuevo)
// DPP_201205_GESCOB: Pase a producción a partir de los pases HPC_201205 y HPC_201206 

Unit GES546;

Interface

Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, Buttons, ExtCtrls, Grids, Wwdbigrd, Wwdbgrid, wwExport, shellapi, db,
   ppParameter, ppBands, ppCtrls, ppVar, ppPrnabl, ppClass, ppCache, ppProd,
   ppReport, ppRelatv, ppDB, ppDBPipe, ppComm, ppEndUsr, ppStrtch, ppRichTx;

Type
   TFRepHojRutDet = Class(TForm)
      dbgPrincipal : TwwDBGrid;
      pnlControles : TPanel;
      btnExportar : TBitBtn;
      btnSalir : TBitBtn;
      btnImprimir : TBitBtn;
      Label1 : TLabel;
      ppDBHojaRuta : TppDBPipeline;
      ppDBHojaRutappField1 : TppField;
      ppDBHojaRutappField2 : TppField;
      ppDBHojaRutappField3 : TppField;
      ppDBHojaRutappField4 : TppField;
      ppDBHojaRutappField5 : TppField;
      pprHojaRuta : TppReport;
      ppHeaderBand8 : TppHeaderBand;
      ppShape5 : TppShape;
      ppLabel189 : TppLabel;
      ppLabel190 : TppLabel;
      ppLine12 : TppLine;
      ppLine14 : TppLine;
      ppLine15 : TppLine;
      ppSystemVariable9 : TppSystemVariable;
      ppSystemVariable10 : TppSystemVariable;
      ppLabel202 : TppLabel;
      ppLabel203 : TppLabel;
      ppLabel204 : TppLabel;
      ppLabel205 : TppLabel;
      pplblGestor : TppLabel;
      ppSystemVariable11 : TppSystemVariable;
      pplblFecHojRut : TppLabel;
      ppLine11 : TppLine;
      ppLabel191 : TppLabel;
      ppLabel192 : TppLabel;
      ppLabel193 : TppLabel;
      ppLabel194 : TppLabel;
      ppLabel195 : TppLabel;
      ppLabel196 : TppLabel;
      ppSystemVariable12 : TppSystemVariable;
      ppLabel197 : TppLabel;
      pplblUsuario : TppLabel;
      ppLabel198 : TppLabel;
      ppLabel199 : TppLabel;
      ppDetailBand13 : TppDetailBand;
      ppDBText27 : TppDBText;
      ppDBText28 : TppDBText;
      ppDBText29 : TppDBText;
      ppDBText30 : TppDBText;
      ppDBText31 : TppDBText;
      ppLine13 : TppLine;
      ppLine17 : TppLine;
      ppLine18 : TppLine;
      ppLine19 : TppLine;
      ppLine20 : TppLine;
      ppLine21 : TppLine;
      ppLine22 : TppLine;
      ppFooterBand8 : TppFooterBand;
      ppRichText1 : TppRichText;
      ppLine16 : TppLine;
      ppLabel207 : TppLabel;
      ppSummaryBand8 : TppSummaryBand;
      ppParameterList4 : TppParameterList;
      ppdHojaRuta : TppDesigner;
      Procedure btnSalirClick(Sender : TObject);
      Procedure FormClose(Sender : TObject; Var Action : TCloseAction);
      Procedure FormShow(Sender : TObject);
      Procedure btnExportarClick(Sender : TObject);
      Procedure btnImprimirClick(Sender : TObject);
   Private
    { Private declarations }
   Public
      xsIdCab : String;
      xsGestor : String;
      xsPeriodo : String;
      xsFechaHojaRuta : String;
   End;

Var
   FRepHojRutDet : TFRepHojRutDet;

Implementation

Uses GESDM1;

{$R *.dfm}

//******************************************************************************
// Nombre : btnSalirClick
// Descripcion : Cerrar el formulario
//******************************************************************************

Procedure TFRepHojRutDet.btnSalirClick(Sender : TObject);
Begin
   Close;
End;

//******************************************************************************
// Nombre : FormClose
// Descripcion : Liberar la memoria despues de cerrar el formulario
//******************************************************************************

Procedure TFRepHojRutDet.FormClose(Sender : TObject;
   Var Action : TCloseAction);
Begin
   Action := caFree;
End;

//******************************************************************************
// Nombre : btnExportarClick
// Descripcion : exportar los datos a excel
//******************************************************************************

Procedure TFRepHojRutDet.btnExportarClick(Sender : TObject);
Begin
   Screen.Cursor := crHourGlass;
   Try
      With dbgPrincipal, dbgPrincipal.ExportOptions Do
      Begin
         ExportType := wwgetSYLK;
         FileName := 'HojasRutaDet.slk';
         DM1.OpcionesExportExcel(dbgPrincipal.ExportOptions);
         dbgPrincipal.ExportOptions.TitleName := 'HojasRutaDet';
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
// Nombre : FormShow
// Descripcion : Inicializar los controles
//******************************************************************************

Procedure TFRepHojRutDet.FormShow(Sender : TObject);
Var
   xsSQL : String;
Begin
   Screen.Cursor := crHourGlass;
   xsSQL := 'SELECT IDCAB, ASOID, ESTADO, USU_ASIGNA, ASOCODMOD, '
      + '           ASODIR, ASOAPENOM, DISTRITO, '
      + '           FEC_CREA, USU_CREA, FEC_GES, USU_GES, USU_ORI, ROWNUM NRO, '
      + '           ' + QuotedStr(xsGestor) + ' GESTOR, '
      + '           ' + QuotedStr(xsPeriodo) + ' PERIODO '
      + '      FROM (SELECT IDCAB, ASOID, ESTADO, USU_ASIGNA, ASOCODMOD, '
      + '                   ASODIR , ASOAPENOM , DISTRITO, '
      + '                   FEC_CREA, USU_CREA, FEC_GES, USU_GES, USU_ORI '
      + '              FROM GES_COB_HOJ_RUT_DET '
      + '             WHERE IDCAB = ' + xsIdCab
      + '             ORDER BY ASOAPENOM) ';

   DM1.cdsQry3.Close;
   DM1.cdsQry3.DataRequest(xsSQL);
   DM1.cdsQry3.Open;

   dbgPrincipal.DataSource := DM1.dsQry3;
   With dbgPrincipal, dbgPrincipal.DataSource.DataSet Do
   Begin
      Selected.Clear;
      Selected.Add('NRO'#9'5'#9'NRO');
      Selected.Add('ESTADO'#9'17'#9'ESTADO');
      Selected.Add('ASOAPENOM'#9'35'#9'ASOCIADO');
      Selected.Add('ASOCODMOD'#9'10'#9'CODIGO~MODULAR');
      Selected.Add('DISTRITO'#9'30'#9'DISTRITO');
      Selected.Add('ASODIR'#9'40'#9'DIRECCION');
      ApplySelected;
   End;
   dbgPrincipal.ColumnByName('ASOAPENOM').FooterValue := 'Nro Registros : ';
   dbgPrincipal.ColumnByName('ASOCODMOD').FooterValue := FormatCurr('###,###,##0', DM1.cdsQry3.RecordCount);
   Screen.Cursor := crDefault;
End;

//******************************************************************************
// Nombre : btnImprimirClick
// Descripcion : Imprimir Reporte
//******************************************************************************

Procedure TFRepHojRutDet.btnImprimirClick(Sender : TObject);
Begin
   ppDBHojaRuta.DataSource := DM1.dsQry3;
   pplblUsuario.Text := DM1.wUsuario;
   pplblGestor.Text := xsGestor;
   pplblFecHojRut.Text := xsFechaHojaRuta;
   pprHojaRuta.Print;
End;

End.
