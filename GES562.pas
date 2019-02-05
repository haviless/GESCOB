// Inicio Uso Estándares:
// Unidad : Gestión de Cobranzas
// Formulario : fLibGesInd
// Fecha de Creación :
// Autor : Equipo de Sistemas
// Objetivo : Gestion de Cobranzas
// Actualizaciones:
// HPC_201305_GESCOB: F2 04/06/2013 Se agregó nueva opción, liberación individual para el Gestor de un asociado
// SPP_201305_GESCOB: Se realiza el pase a producción a partir del HPC_201305_GESCOB

unit GES562;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, Wwdbigrd, Wwdbgrid, StdCtrls, Buttons, ExtCtrls, wwdblook,
  shellapi, db, wwExport, Mask;

type
  TFRepGestorDet = class(TForm)
    gbFiltro: TGroupBox;
    lbl1: TLabel;
    cboPeriodoCartera: TwwDBLookupCombo;
    pnl1: TPanel;
    btnExportar: TBitBtn;
    btnSalir: TBitBtn;
    dbgData: TwwDBGrid;
    meAso: TMaskEdit;
    Label1: TLabel;
    Label2: TLabel;
    meCodMod: TMaskEdit;
    Label3: TLabel;
    meDpto: TMaskEdit;
    Label4: TLabel;
    meProv: TMaskEdit;
    Label5: TLabel;
    meDist: TMaskEdit;
    Label6: TLabel;
    procedure FormActivate(Sender: TObject);
    procedure btnExportarClick(Sender: TObject);
    procedure btnSalirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRepGestorDet: TFRepGestorDet;

implementation

uses GESDM1;

{$R *.dfm}

procedure TFRepGestorDet.FormActivate(Sender: TObject);
var
  xSQL : String;
  sMes : String;
  sDpto, sProv, sDist : String;
begin
  sMes:=cboPeriodoCartera.Text;
  Screen.Cursor := crHourGlass;
  meAso.Text :=DM1.cdsQry7.FIELDBYNAME('DOCENTE').AsString;
  meDpto.Text:=DM1.cdsQry7.FIELDBYNAME('DPTODES').AsString;

  sDpto:=Copy(DM1.cdsQry7.FIELDBYNAME('ZIPID').AsString,1,2);
  sProv:=Copy(DM1.cdsQry7.FIELDBYNAME('ZIPID').AsString,3,2);
  sDist:=Copy(DM1.cdsQry7.FIELDBYNAME('ZIPID').AsString,5,2);

  xSQL:='SELECT * FROM TGE121 WHERE DPTOID='''+sDpto+''' AND CIUDID='''+sProv+'''';
  DM1.cdsQry5.Close;
  DM1.cdsQry5.DataRequest(xSQL);
  DM1.cdsQry5.Open;
  meProv.Text:=DM1.cdsQry5.FIELDBYNAME('CIUDDES').AsString;

  xSQL:='SELECT * FROM TGE122 WHERE DPTOID='''+sDpto+''' AND CIUDID='''+sProv+''' AND ZIPID='''+sDist+'''';
  DM1.cdsQry5.Close;
  DM1.cdsQry5.DataRequest(xSQL);
  DM1.cdsQry5.Open;
  meDist.Text:=DM1.cdsQry5.FIELDBYNAME('ZIPDES').AsString;

  xSQL:='SELECT A.USUARIO, A.ASOID, D.ASOAPENOM DOCENTE, RESUMECLAS CATEGORIA, NVL(TIPO_GESTION,''SIN CONTACTO'') TIPO_GESTION, '
       +  'contacto, nocontacto NO_CONTACTO, FEC_CONTACTO, '
       +  'case when NVL(c.contactado,''N'')=''S'' then ''CONTACTO'' else ''NO CONTACTO'' end RESULTADO, '
       +  'B.COD_NEG, NEGOCIACION,  FEC_COMPROMISO, '
       +  'NVL(EFE_PAGO,0)+NVL(BAN_PAGO,0) MONTO_EFECTIVO, NVL(EFE_FECHA,BAN_FECHA) EFE_FECHA, '
       +  'NVL(REF_PAGO,0) MONTO_REFINANCIADO, REF_FECHA, B.ESTADO '
       +'FROM ( '
       +  'SELECT A.USUARIO ,A.ASOID, RESUMECLAS, GESTION, GESTOR, '
       +     'COUNT(*) GESTIONES, '
       +     'SUM(case when NVL(e.contactado,''N'')=''S'' then 1 else 0 end) contacto,  '
       +     'SUM(case when NVL(e.contactado,''N'')=''N'' then 1 else 0 end) NOcontacto '
       +  'FROM '
       +   '( SELECT DISTINCT GESTION, A.USUARIO, ASOID, CFC_F FROM '
       +   '( SELECT DISTINCT ''DOMICILIARIAS'' GESTION, A.USUARIO, ASOID, CFC_F from GES_COB_DOM A where periodo='''+sMes+''' '
       +   '  AND ASOID='''+DM1.cdsQry7.FIELDBYNAME('ASOID').AsString+''' '
       +   '  UNION ALL '
       +   '  SELECT DISTINCT ''TELEFONICAS'' GESTION, A.USUARIO, ASOID, CFC_F   from GES_COB_IND A where periodo='''+sMes+''' '
       +   '  AND ASOID='''+DM1.cdsQry7.FIELDBYNAME('ASOID').AsString+''' '
       +   '  UNION ALL '
       +   '  SELECT DISTINCT ''DOMICILIARIAS'' GESTION, A.USUARIO, ASOID, CFC_F from GES_COB_DOM_HIS A where periodo='''+sMes+''' '
// Inicio: SPP_201305_GESCOB F2 nuevo campo en la BD
       +   '  AND ASIGNADO = ''S'' '
// Fin: SPP_201305_GESCOB
       +   '  AND ASOID='''+DM1.cdsQry7.FIELDBYNAME('ASOID').AsString+''' '
       +   '  UNION ALL '
       +   '  SELECT DISTINCT ''TELEFONICAS'' GESTION, A.USUARIO, ASOID, CFC_F   from GES_COB_IND_HIS A where periodo='''+sMes+''' '
// Inicio: SPP_201305_GESCOB F2 nuevo campo en la BD
       +   '  AND ASIGNADO = ''S'' '
// Fin: SPP_201305_GESCOB
       +   '  AND ASOID='''+DM1.cdsQry7.FIELDBYNAME('ASOID').AsString+''' '
       +   ' ) A ) A, COB113 C, GES_COB_COMPROMISO D, GES_REF_SEG_DET e '
       +' WHERE A.CFC_F=C.RESUMEID(+) '
       +'   AND A.ASOID=D.ASOID(+) AND D.PERIODO(+)='''+sMes+''' AND A.USUARIO=D.GESTOR(+) '
       +'   and d.idgtn=e.idgtn(+) and d.idgtndet=e.idgtndet(+) '
       +' GROUP BY A.USUARIO ,A.ASOID, RESUMECLAS, GESTION, GESTOR '
       +' '
       +' ) A, ( SELECT A.*, CASE WHEN SUBSTR(IDGTNDET,1,1)=''5'' THEN ''TELEFONICA'' ELSE ''DOMICILIARIA'' END TIPO_GESTION  '
       +        'from GES_COB_COMPROMISO A where periodo='''+sMes+''' AND ASOID='''+DM1.cdsQry7.FIELDBYNAME('ASOID').AsString+''' ) B, '
       +'        GES_REF_SEG_DET C, APO201 D, GES_COB_NEGOCIACION N '
       +' WHERE A.ASOID=B.ASOID(+) '
       +'   and b.idgtn=c.idgtn(+) and b.idgtndet=c.idgtndet(+) '
       +'   AND A.ASOID=D.ASOID(+) '
       +'   AND A.GESTOR=B.GESTOR(+) '
       +'   AND B.COD_NEG=N.COD_NEG(+) '
       +' ORDER BY A.USUARIO, A.ASOID, RESUMECLAS, GESTION, FEC_CONTACTO';

  DM1.cdsQry8.Close;
  DM1.cdsQry8.Filtered:=False;
  DM1.cdsQry8.IndexFieldNames:='';
  DM1.cdsQry8.DataRequest(xSQL);
  DM1.cdsQry8.Open;
  DM1.cdsQry8.Filter  :='ASOID='''+DM1.cdsQry7.FIELDBYNAME('ASOID').AsString+'''';
  DM1.cdsQry8.Filtered:=true;
  DM1.cdsQry8.First;

  DM1.cdsQry8.IndexFieldNames:='FEC_CONTACTO';
  DM1.cdsQry8.First;



  dbgData.Selected.Clear;
  dbgData.Selected.Add('USUARIO'#9'12'#9'Gestor');
//  dbgData.Selected.Add('ASOID'#9'10'#9'Código~Asociado');
//  dbgData.Selected.Add('DOCENTE'#9'38'#9'#~Asociado');
  dbgData.Selected.Add('CATEGORIA'#9'5'#9'Categ.');
  dbgData.Selected.Add('TIPO_GESTION'#9'14'#9'Gestiones');
//  dbgData.Selected.Add('contacto'#9'9'#9'Contacto');
//  dbgData.Selected.Add('NO_CONTACTO'#9'9'#9'No~Contacto');
  dbgData.Selected.Add('FEC_CONTACTO'#9'10'#9'Fecha~Contacto');
  dbgData.Selected.Add('RESULTADO'#9'13'#9'Resultado');
  dbgData.Selected.Add('COD_NEG'#9'4'#9'Cod.~Neg.');
  dbgData.Selected.Add('NEGOCIACION'#9'25'#9'Negociacion');
  dbgData.Selected.Add('FEC_COMPROMISO'#9'11'#9'Fecha~Compromiso');

  dbgData.Selected.Add('MONTO_EFECTIVO'#9'10'#9'Importe'#9'F'#9'Efectivo/Banco');
  dbgData.Selected.Add('EFE_FECHA'#9'10'#9'Fecha'#9'F'#9'Efectivo/Banco');
  dbgData.Selected.Add('MONTO_REFINANCIADO'#9'10'#9'Importe'#9'F'#9'Refinanciado');
  dbgData.Selected.Add('REF_FECHA'#9'10'#9'Fecha'#9'F'#9'Refinanciado');
  dbgData.Selected.Add('ESTADO'#9'15'#9'Estado');
  dbgData.ApplySelected;

//               'DIRECTO'#9'8'#9'Directo'#9'F'#9'Sobre lo Contactado'
//             'INDIRECTO'#9'8'#9'Indirecto'#9'F'#9'Sobre lo Contactado'

  dbgData.DataSource := DM1.dsQry8;
  Screen.Cursor := crDefault;
end;

procedure TFRepGestorDet.btnExportarClick(Sender: TObject);
begin
   Screen.Cursor := crHourGlass;
   Try
      With dbgData, dbgData.ExportOptions Do
      Begin
         ExportType := wwgetSYLK;
         FileName := 'TotalDocentesAsignadosPorGestor.slk';
         DM1.OpcionesExportExcel(dbgData.ExportOptions);
         dbgData.ExportOptions.TitleName := 'GestoresPorGestionRealizada';
         Save;
         If Not (esoClipboard In Options) Then
            ShellExecute(Handle, 'Open', PChar(dbgData.exportoptions.Filename), Nil, Nil, sw_shownormal);
      End;
      Screen.Cursor := crDefault;
   Except
      Screen.Cursor := crDefault;
      MessageDlg('No se puede grabar el Archivo ' + chr(13) + 'Cierre todos los Archivos en Excel y vuelva a intentarlo', mtWarning, [mbOk], 0);
   End;

end;

procedure TFRepGestorDet.btnSalirClick(Sender: TObject);
begin
  Close;
end;

end.
