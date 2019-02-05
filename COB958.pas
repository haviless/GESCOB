Unit COB958;

Interface

Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, Grids, Wwdbigrd, Wwdbgrid, StdCtrls, Mask, wwdbedit, Wwdbspin, Db,
   ExtCtrls, Buttons, DBGrids;

Type
   TfGesTel = Class(TForm)
      dtgPerCob: TwwDBGrid;
      dbsAnoIni: TwwDBSpinEdit;
      Label1: TLabel;
      dtgOriCob: TwwDBGrid;
      pnlOriCob: TPanel;
      BitSalir: TBitBtn;
      Panel1: TPanel;
      BitExporta: TBitBtn;
      ChkGeneral: TCheckBox;
      dtgData: TDBGrid;
      Procedure dbsAnoIniChange(Sender: TObject);
      Procedure BitSalirClick(Sender: TObject);
      Procedure dtgPerCobRowChanged(Sender: TObject);
      Procedure dtgPerCobDblClick(Sender: TObject);
      Procedure BitExportaClick(Sender: TObject);
      Procedure FormActivate(Sender: TObject);
   Private
    { Private declarations }
      Procedure CrgDet(xPeriodo: String);
      Procedure CrgLpa(xPeriodo: String);
   Public
    { Public declarations }
      Procedure CrgCab(xAno: String);
   End;

Var
   fGesTel: TfGesTel;

Implementation

Uses GESDM1;

{$R *.dfm}

Procedure TfGesTel.CrgCab(xAno: String);
Var
   xSQL: String;
Begin
   xSQL := 'SELECT MES,B.MESDESL MESDES,ANO,SALDOS,REGISTROS FROM (SELECT SUBSTR(PERCOB,5,2) MES,  SUBSTR(PERCOB,1,4) ANO, ' +
      'NVL(MONENV,0)-NVL(MONCOB,0) SALDOS,NVL(NUMENV,0)-NVL(NUMCOB,0) REGISTROS FROM COB400) A,TGE181 B WHERE A.MES=B.MESIDR AND ANO=' + QuotedStr(xAno);
   DM1.cdsLiquid.Close;
   DM1.cdsLiquid.DataRequest(xSQL);
   DM1.cdsLiquid.Open;
   TNumericField(DM1.cdsLiquid.FieldByName('SALDOS')).DisplayFormat := '###,###,##0.#0';
   TNumericField(DM1.cdsLiquid.FieldByName('REGISTROS')).DisplayFormat := '###,###,##0';
   CrgLpa('300015');

End;

Procedure TfGesTel.dbsAnoIniChange(Sender: TObject);
Begin
   CrgCab(dbsAnoIni.Text);
End;

Procedure TfGesTel.BitSalirClick(Sender: TObject);
Begin
   Close;
End;

Procedure TfGesTel.CrgDet(xPeriodo: String);
Var
   xSQL: String;
   xMonto: Currency;
   xRegistros: Integer;
Begin
   pnlOriCob.Caption := '  ' + DM1.cdsLiquid.FieldByName('MESDES').AsString + ' - ' + DM1.cdsLiquid.FieldByName('ANO').AsString;
   xSQL := 'SELECT A.PROVBCOID,B.PROVBCODES,MONTO,REGISTROS FROM (SELECT PROVBCOID,SUM(NVL(MONENVIO,0)) MONTO,COUNT(*) REGISTROS FROM COB402 WHERE PERCOB=' + QuotedStr(xPeriodo) + ' AND NVL(MONRECUP,0)=0  AND NVL(MONENVIO,0)>0 AND SITCTA IN (''A'',''V'') GROUP BY PROVBCOID) A,APO213 B WHERE A.PROVBCOID=B.PROVBCOID(+) ';
   DM1.cdsHijo.Close;
   DM1.cdsHijo.DataRequest(xSQL);
   DM1.cdsHijo.Open;
   TNumericField(DM1.cdsHijo.FieldByName('MONTO')).DisplayFormat := '###,###,##0.#0';
   TNumericField(DM1.cdsHijo.FieldByName('REGISTROS')).DisplayFormat := '###,###,##0';
   xMonto := 0;
   xRegistros := 0;
   DM1.cdsHijo.First;
   While Not DM1.cdsHijo.Eof Do
      Begin
         xMonto := xMonto + DM1.cdsHijo.fieldByname('MONTO').AsCurrency;
         xRegistros := xRegistros + DM1.cdsHijo.fieldByname('REGISTROS').AsInteger;
         DM1.cdsHijo.Next;
      End;
   dtgOriCob.ColumnByName('PROVBCODES').FooterValue := 'Totales           :';
   dtgOriCob.ColumnByName('MONTO').FooterValue := FloatToStrF(xMonto, ffNumber, 15, 2);
   dtgOriCob.ColumnByName('REGISTROS').FooterValue := FloatToStrF(xRegistros, ffNumber, 15, 0);
   If DM1.cdsHijo.RecordCount > 0 Then
      Begin
         DM1.cdsHijo.First;
         dtgOriCob.SetFocus;
      End;
End;

Procedure TfGesTel.CrgLpa(xPeriodo: String);
Var
   xSQL: String;
   xMonto: Currency;
   xRegistros: Integer;
Begin
   xSQL := 'SELECT A.PROVBCOID,B.PROVBCODES,MONTO,REGISTROS FROM (SELECT PROVBCOID,SUM(NVL(MONENVIO,0)) MONTO,COUNT(*) REGISTROS FROM COB402 WHERE ASOID=''@#$ %^& * (!@ '' And PERCOB = '+QuotedStr(xPeriodo)+' And NVL(MONRECUP, 0) = 0 GROUP BY PROVBCOID)A, APO213 B WHERE A.PROVBCOID = B.PROVBCOID(+)';
      DM1.cdsHijo.Close;
   DM1.cdsHijo.DataRequest(xSQL);
   Screen.Cursor := crHourGlass;
   DM1.cdsHijo.Open;
   TNumericField(DM1.cdsHijo.FieldByName('MONTO')).DisplayFormat := '###,###,##0.#0';
   TNumericField(DM1.cdsHijo.FieldByName('REGISTROS')).DisplayFormat := '###,###,##0';
   xMonto := 0;
   xRegistros := 0;
   DM1.cdsHijo.First;
   While Not DM1.cdsHijo.Eof Do
      Begin
         xMonto := xMonto + DM1.cdsHijo.fieldByname('MONTO').AsCurrency;
         xRegistros := xRegistros + DM1.cdsHijo.fieldByname('REGISTROS').AsInteger;
         DM1.cdsHijo.Next;
      End;
   dtgOriCob.ColumnByName('PROVBCODES').FooterValue := 'Totales           :';
   dtgOriCob.ColumnByName('MONTO').FooterValue := FloatToStrF(xMonto, ffNumber, 15, 2);
   dtgOriCob.ColumnByName('REGISTROS').FooterValue := FloatToStrF(xRegistros, ffNumber, 15, 0);
   Screen.Cursor := crDefault;

End;

Procedure TfGesTel.dtgPerCobRowChanged(Sender: TObject);
Begin
   Screen.Cursor := crHourGlass;
   CrgDet(DM1.cdsLiquid.FieldByName('ANO').AsString + DM1.cdsLiquid.FieldByName('MES').AsString);
   Screen.Cursor := crDefault;
End;

Procedure TfGesTel.dtgPerCobDblClick(Sender: TObject);
Begin
   CrgDet(DM1.cdsLiquid.FieldByName('ANO').AsString + DM1.cdsLiquid.FieldByName('MES').AsString);
End;

Procedure TfGesTel.BitExportaClick(Sender: TObject);
Var
   xSQL, xTitulo: String;
Begin
   If ChkGeneral.Checked Then
      Begin
         xSQL := 'SELECT PROVBCODES "CODIGO DE PROVINCIA",DPTODES "DEPARTAMENTO(LABORAL)",USENOM "USES/UGEL",ASOCODMOD "CODIGO MODULAR",ASOAPENOM "APELLIDOS Y NOMBRES",ASONCTA "CUENTA DE AHORROS",SITCTA "SITUACION",   ' +
            'ASODIR "DIRECCION DOMICILIARIA",DPTODIR "DEPARTAMENTO(DOMICILIO)",CIUDDES "PROVINCIA(DOMICILIO)",ZIPDES "DISTRITO(DOMICILIO)", ASOTELF "TELEFONOS",MONENVIO "CUOTA POR DESCONTAR" ' +
            'FROM ( SELECT A.PROVBCOID,G.PROVBCODES,C.DPTODES,A.ASOID,B.ASOCODMOD,A.ASOAPENOM,A.ASONCTA,A.SITCTA,B.USEID,F.USENOM,B.UPAGOID,B.UPROID, B.DPTOID,ASODIR,ASODPTO, C.DPTODES DPTODIR,B.CIUDID, ' +
            'NVL(D.CIUDDES,''NO IDENTIFICADO'') CIUDDES,B.ZIPID,NVL(E.ZIPDES,''NO IDENTIFICADO'') ZIPDES,NVL(B.ASOTELF1,B.ASOTELF1) ASOTELF,MONENVIO FROM COB402 A,APO201 B,APO158 C,TGE121 D,APO122 E,APO101 F,APO213 G ' +
            'WHERE PERCOB=' + QuotedStr(DM1.cdsLiquid.FieldByName('ANO').AsString + DM1.cdsLiquid.FieldByName('MES').AsString) + ' AND A.ASOID=B.ASOID(+) AND (A.SITCTA=''A'' OR A.SITCTA=''V'') AND B.DPTOID=C.DPTOID(+) AND B.CIUDID=D.DPTOID(+)||D.CIUDID(+) AND NVL(MONENVIO,0)>0 AND NVL(MONRECUP,0)=0 ' +
            'AND B.ZIPID=E.ZIPID(+) AND B.USEID=F.USEID(+)  AND B.UPAGOID=F.UPAGOID(+) AND B.UPROID=F.UPROID(+) AND A.PROVBCOID=G.PROVBCOID(+)  ) ORDER BY PROVBCODES,DPTODES,USENOM,ASOAPENOM ';
         xTitulo := 'PERIODO-' + DM1.cdsLiquid.FieldByName('ANO').AsString + DM1.cdsLiquid.FieldByName('MES').AsString + '-TEL GENERAL';
      End
   Else
      Begin
         xSQL := 'SELECT PROVBCODES "CODIGO DE PROVINCIA",DPTODES "DEPARTAMENTO(LABORAL)",USENOM "USES/UGEL",ASOCODMOD "CODIGO MODULAR",ASOAPENOM "APELLIDOS Y NOMBRES",ASONCTA "CUENTA DE AHORROS",SITCTA "SITUACION",    ' +
            'ASODIR "DIRECCION DOMICILIARIA",DPTODIR "DEPARTAMENTO(DOMICILIO)",CIUDDES "PROVINCIA(DOMICILIO)",ZIPDES "DISTRITO(DOMICILIO)", ASOTELF "TELEFONOS",MONENVIO "CUOTA POR DESCONTAR" ' +
            'FROM ( SELECT A.PROVBCOID,G.PROVBCODES,C.DPTODES,A.ASOID,B.ASOCODMOD,A.ASOAPENOM,A.ASONCTA,A.SITCTA,B.USEID,F.USENOM,B.UPAGOID,B.UPROID, B.DPTOID,ASODIR,ASODPTO, C.DPTODES DPTODIR,B.CIUDID, ' +
            'NVL(D.CIUDDES,''NO IDENTIFICADO'') CIUDDES,B.ZIPID,NVL(E.ZIPDES,''NO IDENTIFICADO'') ZIPDES,NVL(B.ASOTELF1,B.ASOTELF1) ASOTELF,MONENVIO FROM COB402 A,APO201 B,APO158 C,TGE121 D,APO122 E,APO101 F,APO213 G ' +
            'WHERE PERCOB=' + QuotedStr(DM1.cdsLiquid.FieldByName('ANO').AsString + DM1.cdsLiquid.FieldByName('MES').AsString) + ' AND A.ASOID=B.ASOID(+) AND (A.SITCTA=''A'' OR A.SITCTA=''V'') AND B.DPTOID=C.DPTOID(+) AND B.CIUDID=D.DPTOID(+)||D.CIUDID(+) AND NVL(MONENVIO,0)>0 AND NVL(MONRECUP,0)=0 ' +
            'AND B.ZIPID=E.ZIPID(+) AND B.USEID=F.USEID(+)  AND B.UPAGOID=F.UPAGOID(+) AND B.UPROID=F.UPROID(+) AND A.PROVBCOID=G.PROVBCOID(+) AND A.PROVBCOID=' + QuotedStr(DM1.cdsHijo.fieldByname('PROVBCOID').AsString) + ' ) ORDER BY PROVBCODES,DPTODES,USENOM,ASOAPENOM ';
         xTitulo := 'PERIODO-' + DM1.cdsLiquid.FieldByName('ANO').AsString + DM1.cdsLiquid.FieldByName('MES').AsString + '-TEL-' + Trim(DM1.cdsHijo.FieldByName('PROVBCODES').AsString);
      End;

   DM1.cdsUSES.Close;
   DM1.cdsUSES.DataRequest(xSQL);
   Screen.Cursor := crHourGlass;
   DM1.cdsUSES.Open;
   If DM1.cdsUSES.RecordCount > 0 Then
      Begin
         Try
            DM1.HojaExcel('PERIODO-' + DM1.cdsLiquid.FieldByName('ANO').AsString + DM1.cdsLiquid.FieldByName('MES').AsString + '-TEL', DM1.dsUSES, dtgData);
         Except
            On Ex: Exception Do
               Application.MessageBox(PChar(Ex.Message), 'ERROR', 16);
         End;
      End;
   Screen.Cursor := crDefault;

End;

Procedure TfGesTel.FormActivate(Sender: TObject);
Begin
   dtgPerCob.OnDblClick(dtgPerCob);
End;

End.
