// Inicio Uso Estándares: 01/08/2011
// Unidad : Gestión de Cobranzas
// Formulario : FCompararTrasladosGes
// Fecha de Creación :
// Autor : Equipo de Sistemas
// Objetivo : Mostrar resumen de control de metas por gestor
// Actualizaciones:
// HPC_201206_GESCOB - F3 28/08/2012 CREAR RESUMEN DE CONTROL DE METAS POR GESTOR
// DPP_201205_GESCOB: Pase a producción a partir de los pases HPC_201205 y HPC_201206 
// HPC_201301_GESCOB Se cambian los Parametros de las metas
// SPP_201301_GESCOB: El pase a producción se realiza de acuerdo al HPC_201301_GESCOB

Unit GES534;

Interface

Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, Buttons, ExtCtrls, wwdblook, Grids, Wwdbigrd, Wwdbgrid,
   ppParameter, ppBands, ppCtrls, ppVar, ppPrnabl, ppClass, ppCache, ppProd,
   ppReport, ppRelatv, ppDB, ppDBPipe, ppComm, ppEndUsr, wwExport, shellapi, db;

Type
   TFConMetGesRes = Class(TForm)
      pnlControles : TPanel;
      btnImprimir : TBitBtn;
      btnSalir : TBitBtn;
      btnExportar : TBitBtn;
      pnl1 : TPanel;
      dbgResultados : TwwDBGrid;
      lbl1 : TLabel;
      cboPeriodoCartera : TwwDBLookupCombo;
      btnProcesar : TBitBtn;
      desReporte : TppDesigner;
      dbpReporte : TppDBPipeline;
      repReporte : TppReport;
      ppParameterList1 : TppParameterList;
      ppHeaderBand1 : TppHeaderBand;
      ppShape1 : TppShape;
      ppShape2 : TppShape;
      ppLabel7 : TppLabel;
      ppLabel13 : TppLabel;
      ppLabel14 : TppLabel;
      ppLabel15 : TppLabel;
      ppLabel16 : TppLabel;
      ppSystemVariable1 : TppSystemVariable;
      ppSystemVariable2 : TppSystemVariable;
      ppSystemVariable3 : TppSystemVariable;
      ppLblTit : TppLabel;
      ppLabel17 : TppLabel;
      ppLabel18 : TppLabel;
      ppLabel19 : TppLabel;
      ppLabel1 : TppLabel;
      ppLabel5 : TppLabel;
      ppLabel6 : TppLabel;
      ppLabel2 : TppLabel;
      ppLabel3 : TppLabel;
      ppLabel4 : TppLabel;
      ppLabel8 : TppLabel;
      ppLabel9 : TppLabel;
      ppLabel10 : TppLabel;
      ppLabel11 : TppLabel;
      ppLabel12 : TppLabel;
      ppLine1 : TppLine;
      ppLine2 : TppLine;
      ppLine3 : TppLine;
      ppLine4 : TppLine;
      ppLine5 : TppLine;
      ppLine6 : TppLine;
      ppLine7 : TppLine;
      ppLine8 : TppLine;
      ppLine9 : TppLine;
      ppLine10 : TppLine;
      ppLine11 : TppLine;
      ppDetailBand1 : TppDetailBand;
      ppLine12 : TppLine;
      ppLine13 : TppLine;
      ppLine14 : TppLine;
      ppLine15 : TppLine;
      ppLine16 : TppLine;
      ppLine17 : TppLine;
      ppLine18 : TppLine;
      ppLine19 : TppLine;
      ppLine20 : TppLine;
      ppLine21 : TppLine;
      ppLine22 : TppLine;
      ppDBText1 : TppDBText;
      ppDBText2 : TppDBText;
      ppDBText3 : TppDBText;
      ppDBText4 : TppDBText;
      ppDBText5 : TppDBText;
      ppDBText6 : TppDBText;
      ppDBText7 : TppDBText;
      ppDBText8 : TppDBText;
      ppDBText9 : TppDBText;
      ppFooterBand1 : TppFooterBand;
      ppLblUser : TppLabel;
      ppSummaryBand1 : TppSummaryBand;
      ppLabel20 : TppLabel;
// Inicio: SPP_201301_GESCOB
    pplblPOREFE: TppLabel;
    pplblPORREFI: TppLabel;
    pplblPORREG: TppLabel;
      edMesCartera : TEdit;
    ppLabel21: TppLabel;
    ppDBText10: TppDBText;
    ppLine23: TppLine;
    ppLine24: TppLine;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppLine25: TppLine;
    ppLabel22: TppLabel;
// Fin: SPP_201301_GESCOB
      Procedure FormShow(Sender : TObject);
      Procedure btnProcesarClick(Sender : TObject);
      Procedure btnExportarClick(Sender : TObject);
      Procedure btnImprimirClick(Sender : TObject);
      Procedure btnSalirClick(Sender : TObject);
      Procedure ppSummaryBand1BeforePrint(Sender : TObject);
      Procedure cboPeriodoCarteraChange(Sender : TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
   Private
    { Private declarations }
// Inicio: SPP_201301_GESCOB
     xPorc_Efe : Double;
     xPorc_Ref : Double;
     xPorc_reg : Double;

   Public
    { Public declarations }
      xsPeriodoGestion : String;
// Fin: SPP_201301_GESCOB
   End;

Var
   FConMetGesRes : TFConMetGesRes;

Implementation

Uses GESDM1;

{$R *.dfm}
(******************************************************************************)

Procedure TFConMetGesRes.FormShow(Sender : TObject);
Var
   xsSQL : String;
Begin
// Inicio: SPP_201301_GESCOB
   edMesCartera.Text := '';
   xsSQL :=
      '  SELECT PERIODO '
      + '       ,F_MES(TO_CHAR(ADD_MONTHS(TO_DATE(PERIODO, ''YYYYMM''), 1),''MM'')) MESCARTERA '
      + '  FROM (SELECT DISTINCT PERIODO '
      + '          FROM GES_COB_CFC000_CAB) '
      + ' ORDER BY PERIODO DESC ';

   DM1.cdsQry7.Close;
   DM1.cdsQry7.DataRequest(xsSQL);
   DM1.cdsQry7.Open;
   cboPeriodoCartera.LookupTable := DM1.cdsQry7;
   cboPeriodoCartera.LookupField := 'PERIODO';
   cboPeriodoCartera.Text:=xsPeriodoGestion;
// Fin: SPP_201301_GESCOB

   cboPeriodoCartera.Selected.Clear;
   cboPeriodoCartera.Selected.Add('PERIODO'#9'8'#9'Periodo');
End;
(******************************************************************************)

Procedure TFConMetGesRes.btnProcesarClick(Sender : TObject);
Var
// Inicio: SPP_201301_GESCOB Se cambian los Parametros de las metas
   xsSQL, sPeriodoGes : String;
   xmeta_efe, xMONTO_EFECTIVO : Double;
   xmeta_Ref, xMONTO_REFI     : Double;
   xMeta_can, xREGULARIZADOS  : Double;
// Fin: SPP_201301_GESCOB Se cambian los Parametros de las metas
Begin
   If TRIM(cboPeriodoCartera.Text) = '' Then
   Begin
      MessageDlg('Seleccione un periodo!', mtInformation, [mbOk], 0);
      exit;
   End;

   sPeriodoGes:=cboPeriodoCartera.Text;

   Screen.Cursor := crHourGlass;
// Inicio: SPP_201301_GESCOB Se cambian los Parametros de las metas
   // xsSQL := 'BEGIN SP_GES_COB_CRE_UNI_CON_MET_GES(' + QuotedStr(cboPeriodoCartera.Text) + '); END;';
   // DM1.DCOM1.AppServer.EjecutaSql(xsSQL);
  xsSQL:='SELECT USUARIO USERID, USERNOM, max( NVL(mon_salven,0) ) Meta_ref, max(NVL(mon_saltot,0)) meta_efe, max(NVL(can_saltot,0)) Meta_can, '
       +     'SUM( CASE WHEN COD_NEG=''02''          and NVL(EFE_PAGO,0)+NVL(BAN_PAGO,0)>0  THEN 1 ELSE 0 END ) + '
       +     'SUM( CASE WHEN NOT COD_NEG IN (''02'') and NVL(EFE_PAGO,0)+NVL(BAN_PAGO,0)>0  THEN 1 ELSE 0 END ) +  '
       +     'SUM( CASE WHEN COD_NEG=''05''     AND NVL(REF_PAGO,0)>0      THEN 1 ELSE 0 END ) +  '
       +     'SUM( CASE WHEN NOT COD_NEG=''05'' AND NVL(REF_PAGO,0)>0      THEN 1 ELSE 0 END ) REGULARIZADOS, '
       +     'SUM( CASE WHEN NVL(EFE_PAGO,0)+NVL(BAN_PAGO,0)>0  THEN NVL(EFE_PAGO,0)+NVL(BAN_PAGO,0) ELSE 0 END ) MONTO_EFECTIVO, '
       +     'SUM( CASE WHEN NVL(REF_PAGO,0)>0                  THEN NVL(REF_PAGO,0) ELSE 0 END ) MONTO_REFI, '
       +     'ROUND(SUM( CASE WHEN NVL(EFE_PAGO,0)+NVL(BAN_PAGO,0)>0  THEN NVL(EFE_PAGO,0)+NVL(BAN_PAGO,0) ELSE 0 END )/max( mon_saltot )*100,2) Porc_Efe, '
       +     'ROUND(SUM( CASE WHEN NVL(REF_PAGO,0)>0                  THEN NVL(REF_PAGO,0) ELSE 0 END ) / max( mon_salven ) * 100,2) Porc_Ref, '
       +     'ROUND( '
       +     '( SUM( CASE WHEN COD_NEG=''02''          and NVL(EFE_PAGO,0)+NVL(BAN_PAGO,0)>0  THEN 1 ELSE 0 END ) + '
       +     '  SUM( CASE WHEN NOT COD_NEG IN (''02'') and NVL(EFE_PAGO,0)+NVL(BAN_PAGO,0)>0  THEN 1 ELSE 0 END ) + '
       +     '  SUM( CASE WHEN COD_NEG=''05''     AND NVL(REF_PAGO,0)>0      THEN 1 ELSE 0 END ) +  '
       +     '  SUM( CASE WHEN NOT COD_NEG=''05'' AND NVL(REF_PAGO,0)>0      THEN 1 ELSE 0 END ) ) / max(can_saltot) * 100, 2 ) Porc_reg '

       +   'FROM ( SELECT USUARIO, ASOID, SUM( NVL(CONTACTADOS,0) ) CONTACTADOS FROM ( '
       +                   'select DISTINCT A.USUARIO, A.ASOID, 1 CONTACTADOS '
       +                   'from ( '
       +                      'SELECT A.* FROM ( '
       +                         'select A.*, DENSE_RANK() OVER(PARTITION BY USUARIO, ASOID ORDER BY USUARIO, ASOID, FECHA DESC, HORA DESC ) DRNK '
       +                           'from GES_COB_SEG A '
       +                          'where periodo='''+sPeriodoGes+''' '
       +                           ' ) A '
       +                     ' WHERE DRNK = 1 ) A, '
       +                         'GES_REF_SEG_DET B '
       +                   'where periodo='''+sPeriodoGes+''' '
       +                     'and a.idgestion=b.idgtn(+) and a.idgestiondet=b.idgtndet(+) and b.contactado=''S'' AND NVL(B.DIRECTO,''N'')=''S'' '
       +                   'group by A.USUARIO, A.ASOID ) '
       +          'GROUP BY USUARIO, ASOID '
       +        ') A, '
       +        '( SELECT * FROM ( '
       +               'SELECT A.*, DENSE_RANK() OVER(PARTITION BY GESTOR, ASOID ORDER BY GESTOR, ASOID, CASE WHEN ESTADO=''CUMPLIDO'' THEN 1 ELSE 2 END, FEC_CONTACTO DESC, FREG DESC, COD_COMPROMISO ) DRNK '
       +                 'FROM GES_COB_COMPROMISO A '
       +                'WHERE PERIODO = '''+sPeriodoGes+''' '
       +                'ORDER BY ASOID ) '
       +               'WHERE DRNK = 1 '
       +        ') B, TGE006 U, GES_COB_MET_GES M '
       +  'where A.USUARIO=B.GESTOR(+) AND A.ASOID=B.ASOID(+) '
       +   ' and a.USUARIO = U.USERID(+) '
       +   ' and m.ESTADO=''ACTIVA'' '
       +   ' and a.usuario=m.userid '
       +  'GROUP BY USUARIO, USERNOM ';
   DM1.cdsQry8.Close;
   DM1.cdsQry8.DataRequest(xsSQL);
   DM1.cdsQry8.Open;
   dbgResultados.DataSource := DM1.dsQry8;

   With dbgResultados, DM1.cdsQry8 Do
   Begin
      Selected.Clear;
      Selected.Add('USERID'#9'10'#9'Id'#9'F'#9'Usuario');
      Selected.Add('USERNOM'#9'20'#9'Nombres'#9'F'#9'Usuario');

      Selected.Add('meta_efe'#9'11'#9'Meta(S/.)'#9'F'#9'Efectivo/Banco Cobrado');
      Selected.Add('MONTO_EFECTIVO'#9'11'#9'Avance'#9'F'#9'Efectivo/Banco Cobrado');
      Selected.Add('Porc_Efe'#9'6'#9'%'#9'F'#9'Efectivo/Banco Cobrado');

      Selected.Add('meta_Ref'#9'11'#9'Meta(S/.)'#9'F'#9'Refinanciado Cancelado');
      Selected.Add('MONTO_REFI'#9'11'#9'Avance'#9'F'#9'Refinanciado Cancelado');
      Selected.Add('Porc_Ref'#9'6'#9'%'#9'F'#9'Refinanciado Cancelado');

      Selected.Add('Meta_can'#9'7'#9'Meta'#9'F'#9'Docentes Regularizados');
      Selected.Add('REGULARIZADOS'#9'7'#9'Avance'#9'F'#9'Docentes Regularizados');
      Selected.Add('Porc_reg'#9'6'#9'%'#9'F'#9'Docentes Regularizados');
      ApplySelected;

      TNumericField(FieldByName('meta_efe')).DisplayFormat      := '###,###,##0.#0';
      TNumericField(FieldByName('MONTO_EFECTIVO')).DisplayFormat:= '###,###,##0.#0';
      TNumericField(FieldByName('Porc_Efe')).DisplayFormat      := '###,##0.00';

      TNumericField(FieldByName('meta_Ref')).DisplayFormat      := '###,###,##0.#0';
      TNumericField(FieldByName('MONTO_REFI')).DisplayFormat    := '###,###,##0.#0';
      TNumericField(FieldByName('Porc_Ref')).DisplayFormat      := '###,##0.00';

      TNumericField(FieldByName('Meta_can')).DisplayFormat      := '###,###,##0';
      TNumericField(FieldByName('REGULARIZADOS')).DisplayFormat := '###,###,##0';
      TNumericField(FieldByName('Porc_reg')).DisplayFormat      := '###,##0.00';


      ColumnByName('USERNOM').FooterValue := 'Totales';

      xmeta_efe       := 0;
      xMONTO_EFECTIVO := 0;
      xmeta_Ref       := 0;
      xMONTO_REFI     := 0;
      xMeta_can       := 0;
      xREGULARIZADOS  := 0;

      while not DM1.cdsQry8.Eof do
      begin
          xmeta_efe       := xmeta_efe       + DM1.cdsQry8.FieldByname('meta_efe').AsFloat;
          xMONTO_EFECTIVO := xMONTO_EFECTIVO + DM1.cdsQry8.FieldByname('MONTO_EFECTIVO').AsFloat;
          xmeta_Ref       := xmeta_Ref       + DM1.cdsQry8.FieldByname('meta_Ref').AsFloat;
          xMONTO_REFI     := xMONTO_REFI     + DM1.cdsQry8.FieldByname('MONTO_REFI').AsFloat;
          xMeta_can       := xMeta_can       + DM1.cdsQry8.FieldByname('Meta_can').AsFloat;
          xREGULARIZADOS  := xREGULARIZADOS  + DM1.cdsQry8.FieldByname('REGULARIZADOS').AsFloat;
          DM1.cdsQry8.Next;
      end;

      xPorc_Efe := xMONTO_EFECTIVO / xmeta_efe * 100;
      xPorc_Ref := xMONTO_REFI     / xmeta_Ref * 100;
      xPorc_reg := xREGULARIZADOS  / xMeta_can * 100;

      ColumnByName('meta_efe').FooterValue      := FormatCurr('###,##0.00', xmeta_efe );
      ColumnByName('MONTO_EFECTIVO').FooterValue:= FormatCurr('###,##0.00', xMONTO_EFECTIVO );
      ColumnByName('Porc_Efe').FooterValue      := FormatCurr('###,##0.00', xPorc_Efe );

      ColumnByName('meta_Ref').FooterValue      := FormatCurr('###,##0.00', xmeta_Ref );
      ColumnByName('MONTO_REFI').FooterValue    := FormatCurr('###,##0.00', xMONTO_REFI );
      ColumnByName('Porc_Ref').FooterValue      := FormatCurr('###,##0.00', xPorc_Ref );

      ColumnByName('Meta_can').FooterValue      := FormatCurr('###,##0',    xMeta_can );
      ColumnByName('REGULARIZADOS').FooterValue := FormatCurr('###,##0',    xREGULARIZADOS );
      ColumnByName('Porc_reg').FooterValue      := FormatCurr('###,##0.00', xPorc_reg );

      If (recordcount = 0) Then
         MessageDlg('El periodo no tiene metas asignadas!', mtInformation, [mbOk], 0);

   End;
// Fin: SPP_201301_GESCOB Se cambian los Parametros de las metas
   Screen.Cursor := crDefault;
End;
(******************************************************************************)

Procedure TFConMetGesRes.btnExportarClick(Sender : TObject);
Begin
   Screen.Cursor := crHourGlass;
   Try
      With dbgResultados, dbgResultados.ExportOptions Do
      Begin
         ExportType := wwgetSYLK;
         FileName := 'COMTRAS.slk';
         DM1.OpcionesExportExcel(dbgResultados.ExportOptions);
         dbgResultados.ExportOptions.TitleName := 'ComTras';
         Save;
         If Not (esoClipboard In Options) Then
            ShellExecute(Handle, 'Open', PChar(dbgResultados.exportoptions.Filename), Nil, Nil, sw_shownormal);
      End;
      Screen.Cursor := crDefault;
   Except
      Screen.Cursor := crDefault;
      showmessage('No se puede grabar el Archivo ' + chr(13) + 'Cierre todos los Archivos en Excel y vuelva a intentarlo');
   End;
   Screen.Cursor := crDefault;
End;
(******************************************************************************)

Procedure TFConMetGesRes.btnImprimirClick(Sender : TObject);
Begin
   dbpReporte.DataSource := DM1.dsQry8;
   ppLblTit.Text := 'CONTROL DE METAS POR GESTOR - PERIODO DE CARTERA ' + cboPeriodoCartera.Text + ' - ' + edMesCartera.Text;
   ppLblUser.Caption := 'Emitido Por :  ' + Trim(DM1.CrgDescrip('USERID=' + QuotedStr(Trim(DM1.wUsuario)), 'TGE006', 'USERNOM'));
   repReporte.Print;
// Inicio: SPP_201301_GESCOB
   //desReporte.ShowModal;
// Fin: SPP_201301_GESCOB

End;
(******************************************************************************)

Procedure TFConMetGesRes.btnSalirClick(Sender : TObject);
Begin
   Close;
End;
(******************************************************************************)

Procedure TFConMetGesRes.ppSummaryBand1BeforePrint(Sender : TObject);
Begin
// Inicio: SPP_201301_GESCOB Se cambian los Parametros de las metas
   With DM1.cdsQry8 Do
   Begin
      pplblPOREFE.Text  := FormatCurr('###,##0.00', xPorc_Efe );
      pplblPORREFI.Text := FormatCurr('###,##0.00', xPorc_Ref );
      pplblPORREG.Text  := FormatCurr('###,##0.00', xPorc_reg );
      {
      pplblMetCanSalTotTot.Text := FormatCurr('###,##0', FieldByName('META_CAN_SALTOT_TOT').AsCurrency);
      pplblPorMonSalVenTot.Text := FormatCurr('###,##0.00', FieldByName('POR_MON_SALVEN_TOT').AsCurrency);
      pplblPorCanSalVenTot.Text := FormatCurr('###,##0.00', FieldByName('POR_CAN_SALVEN_TOT').AsCurrency);
      pplblPorMonSalTotTot.Text := FormatCurr('###,##0.00', FieldByName('POR_MON_SALTOT_TOT').AsCurrency);
      pplblPorCanSalTotTot.Text := FormatCurr('###,##0.00', FieldByName('POR_CAN_SALTOT_TOT').AsCurrency);}
   End;
// Fin: SPP_201301_GESCOB Se cambian los Parametros de las metas
End;
(******************************************************************************)

Procedure TFConMetGesRes.cboPeriodoCarteraChange(Sender : TObject);
Begin
   edMesCartera.Text := 'MES DE GESTIÓN : ' + DM1.cdsQry7.fieldbyname('MESCARTERA').AsString;
End;
(******************************************************************************)
procedure TFConMetGesRes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;
(******************************************************************************)
End.
