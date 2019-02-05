Unit COB925;

Interface

Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, Mask, wwdbedit, Wwdbspin, Buttons, Grids, Wwdbigrd,
   Wwdbgrid, ExtCtrls, wwdblook, Db, ComCtrls, ppCtrls, ppBands, ppVar,
   ppPrnabl, ppClass, ppCache, ppProd, ppReport, ppDB, ppComm, ppRelatv,
   ppDBPipe, ppEndUsr, ppParameter;

Type
   TfGestCob = Class(TForm)
      GroupBox1: TGroupBox;
      dtgClfCar: TwwDBGrid;
      grbParametros: TGroupBox;
      lblNomMes: TLabel;
      BitProcesar: TBitBtn;
      dbsAnoIni: TwwDBSpinEdit;
      dbsMesIni: TwwDBSpinEdit;
      chkRecImp: TCheckBox;
      grbProceso: TGroupBox;
      lblPor: TLabel;
      prbAvance: TProgressBar;
      grpDetalles: TGroupBox;
      BitSalir: TBitBtn;
      grpDetalle: TGroupBox;
      Label1: TLabel;
      dblTipCalf: TwwDBLookupCombo;
      Panel1: TPanel;
      EdtDesCat: TEdit;
      chkMontos: TCheckBox;
      pnlMontos: TPanel;
      Label2: TLabel;
      Label3: TLabel;
      Label4: TLabel;
      dbeMtoIni: TwwDBEdit;
      dbeMtoFin: TwwDBEdit;
      BitMostrar: TBitBtn;
      dtgDetAsoCar: TwwDBGrid;
      Panel2: TPanel;
      EdtDpto: TEdit;
      Label5: TLabel;
      dblDpto: TwwDBLookupCombo;
      dblUses: TwwDBLookupCombo;
      Label6: TLabel;
      Panel3: TPanel;
      EdtDesUse: TEdit;
      chkMstUses: TCheckBox;
      Label7: TLabel;
      dblAsigCob: TwwDBLookupCombo;
      Panel4: TPanel;
      EdtCobrador: TEdit;
      Label8: TLabel;
      EdtBuscar: TEdit;
      grbAsigCob: TGroupBox;
      BitPrint: TBitBtn;
      ChkAsigna: TCheckBox;
      DbDatGst01: TppDBPipeline;
      ppRepGest01: TppReport;
      ppHeaderBand20: TppHeaderBand;
      ppLblCategoria: TppLabel;
      ppLblTit01: TppLabel;
      ppLabel405: TppLabel;
      ppLabel406: TppLabel;
      ppLabel407: TppLabel;
      ppLabel408: TppLabel;
      ppLabel409: TppLabel;
      ppSystemVariable32: TppSystemVariable;
      ppSystemVariable33: TppSystemVariable;
      ppSystemVariable34: TppSystemVariable;
      ppLabel410: TppLabel;
      ppLabel411: TppLabel;
      ppLabel412: TppLabel;
      ppLblTit02: TppLabel;
      ppLine108: TppLine;
      ppLine111: TppLine;
      ppLabel416: TppLabel;
      ppLabel417: TppLabel;
      ppLabel418: TppLabel;
      ppLabel419: TppLabel;
      ppLabel420: TppLabel;
      ppLabel421: TppLabel;
      ppLabel422: TppLabel;
      ppLabel423: TppLabel;
      ppLabel424: TppLabel;
      ppDetailBand22: TppDetailBand;
      ppDBText188: TppDBText;
      ppDBText187: TppDBText;
      ppDBText189: TppDBText;
      ppDBText190: TppDBText;
      ppDBText191: TppDBText;
      ppFooterBand15: TppFooterBand;
      ppSummaryBand20: TppSummaryBand;
      ppLabel403: TppLabel;
      ppLabel414: TppLabel;
      ppLine109: TppLine;
      ppDBCalc171: TppDBCalc;
      ppDBCalc172: TppDBCalc;
      ppLabel415: TppLabel;
      ppDBCalc173: TppDBCalc;
      ppLine110: TppLine;
      ppLblTit03: TppLabel;
      grbProcesos: TGroupBox;
      prbAvances: TProgressBar;
      Timer1: TTimer;
      BitDist: TBitBtn;
      BitBloq: TBitBtn;
      RepBloq: TppReport;
      DbBloq: TppDBPipeline;
      BitGesTel: TBitBtn;
      ppDesigner1: TppDesigner;
      ppParameterList1: TppParameterList;
      ppHeaderBand37: TppHeaderBand;
      Titulo: TppLabel;
      ppLabel762: TppLabel;
      ppLabel763: TppLabel;
      ppLabel764: TppLabel;
      ppLabel765: TppLabel;
      ppLabel766: TppLabel;
      ppSystemVariable80: TppSystemVariable;
      ppSystemVariable81: TppSystemVariable;
      ppSystemVariable82: TppSystemVariable;
      ppLabel767: TppLabel;
      ppLabel768: TppLabel;
      ppLabel769: TppLabel;
      ppDetailBand39: TppDetailBand;
      ppDBText306: TppDBText;
      ppDBText307: TppDBText;
      ppDBText308: TppDBText;
      ppDBText311: TppDBText;
      ppDBText312: TppDBText;
      ppDBText313: TppDBText;
      ppDBText1: TppDBText;
      ppDBText2: TppDBText;
      ppDBText3: TppDBText;
      ppFooterBand32: TppFooterBand;
      ppSummaryBand37: TppSummaryBand;
      ppLabel760: TppLabel;
      ppDBCalc234: TppDBCalc;
      ppDBCalc235: TppDBCalc;
      ppLine203: TppLine;
      ppLine204: TppLine;
      ppGroup42: TppGroup;
      ppGroupHeaderBand42: TppGroupHeaderBand;
      ppDBText304: TppDBText;
      ppLabel739: TppLabel;
      ppLabel740: TppLabel;
      ppLabel746: TppLabel;
      ppLabel751: TppLabel;
      ppLabel752: TppLabel;
      ppLabel753: TppLabel;
      ppLabel754: TppLabel;
      ppLabel756: TppLabel;
      ppLabel757: TppLabel;
      ppLabel758: TppLabel;
      ppLine200: TppLine;
      ppLine201: TppLine;
      ppLabel1: TppLabel;
      ppLabel2: TppLabel;
      ppLabel3: TppLabel;
      ppLabel4: TppLabel;
      ppLabel5: TppLabel;
      ppLabel6: TppLabel;
      ppGroupFooterBand42: TppGroupFooterBand;
      ppLabel759: TppLabel;
      ppDBCalc204: TppDBCalc;
      ppDBCalc206: TppDBCalc;
      ppLine202: TppLine;
      ppDBCalc1: TppDBCalc;
      ppDBCalc2: TppDBCalc;
      ppDBCalc3: TppDBCalc;
      Procedure BitProcesarClick(Sender: TObject);
      Procedure dblTipCalfChange(Sender: TObject);
      Procedure FormActivate(Sender: TObject);
      Procedure dbsMesIniChange(Sender: TObject);
      Procedure chkRecImpClick(Sender: TObject);
      Procedure BitSalirClick(Sender: TObject);
      Procedure dbeMtoIniKeyPress(Sender: TObject; Var Key: Char);
      Procedure dbeMtoFinKeyPress(Sender: TObject; Var Key: Char);
      Procedure chkMontosClick(Sender: TObject);
      Procedure dbeMtoIniExit(Sender: TObject);
      Procedure dbeMtoFinExit(Sender: TObject);
      Procedure FormKeyPress(Sender: TObject; Var Key: Char);
      Procedure BitMostrarClick(Sender: TObject);
      Procedure dblDptoChange(Sender: TObject);
      Procedure chkMstUsesClick(Sender: TObject);
      Procedure dblUsesChange(Sender: TObject);
      Procedure dtgDetAsoCarDblClick(Sender: TObject);
      Procedure ChkAsignaClick(Sender: TObject);
      Procedure BitPrintClick(Sender: TObject);
      Procedure dblAsigCobChange(Sender: TObject);
      Procedure EdtBuscarChange(Sender: TObject);
      Procedure EdtBuscarKeyPress(Sender: TObject; Var Key: Char);
      Procedure dtgClfCarDblClick(Sender: TObject);
      Procedure Timer1Timer(Sender: TObject);
      {Procedure BitTelefClick(Sender: TObject);}
      Procedure BitBloqClick(Sender: TObject);
      Procedure BitGesTelClick(Sender: TObject);
   Private
    { Private declarations }
      Procedure CargarSaldos;
      Procedure CrgGridClfCar;
      Procedure LimpiaGrid;
      Procedure MstDetalles;
      Procedure MstDetallesGen;
      Procedure MstAsociados;
      Procedure LimpiaDetalles;
      Function SaldosActuales(xAsoid, xPeriodo: String): Currency;
      Function SaldosTotales(xAsoid, xPeriodo: String): Currency;
      Function CuotasPendientes(xAsoid, xPeriodo: String): Integer;
      Function MesesAtrazo(xAsoid, xPeriodo: String): Integer;
      Function VerificaAsignacion(xTipClf, xDptoId, xUseId, xPeriodo: String): String;
   Public
    { Public declarations }
      Procedure MstCabecera(xAsoid, xPeriodo: String);
   End;

Var
   fGestCob: TfGestCob;

Implementation

(*Uses GESDM1, COB926, COB935, COB944, COB958;*)
Uses GESDM1, COB944, COB958, COB926, COB935;

{$R *.dfm}

Procedure TfGestCob.BitProcesarClick(Sender: TObject);
Begin
   LimpiaGrid;
   LimpiaDetalles;
   Try
      If chkRecImp.Checked Then
         Begin
            If DM1.UsrConsulta(Trim(DM1.wUsuario)) Then
               Begin
                  MessageDlg('Usuario No Autorizado A Esta Opción / Solo CONSULTA !!!', mtError, [mbOk], 0);
                  Exit;
               End;
            MessageDlg(#13 + ' Se Procedera a Acumular La Recuperación De Cuotas Para Este Periodo ' + #13 + #13 + '                Este Proceso Puede Tardar Varios Minutos...!', mtInformation, [mbOk], 0);
            CargarSaldos;
         End;
      CrgGridClfCar;
      Screen.Cursor := crDefault;
   Except
      DM1.cdsMGrupo.Close;
      DM1.cdsModelo.Close;
      Screen.Cursor := crDefault;
   End;

End;

Procedure TfGestCob.CrgGridClfCar;
Var
   xSQL: String;
   xSaldo, xSaldoV, xSaldoP, xRecup, xPend, xMovim: Currency;
   xVALCUO, xSALCUO, xSALDIF: Currency;
Begin
   Screen.Cursor := crHourglass;
   xSQL := 'SELECT CFC_F CFC,RESUMEDES CFCDES,COUNT(*) MOVIM,SUM(NVL(SALDOS_FT,0)) SALDOS, '
      + '          SUM(NVL(SALDOS_FV,0)) SALDOSV , SUM(NVL(SALDOS_FP,0)) SALDOSP, '
      + '          SUM(NVL(SALDOS_FT,0)-NVL(RECUP_FT,0)) RECUPERADO,SUM(NVL(RECUP_FT,0) ) PENDIENTE,  '
      + '          SUM(NVL(VALCUO,0)) VALCUO, SUM(NVL(SALCUO,0)) SALCUO, SUM(NVL(SALDIF,0)) SALDIF '
      + '     FROM CFC000 CFC000, COB113 '
      + '    WHERE PERIODO = ' + QuotedStr(Trim(dbsAnoIni.Text + Format('%.2d', [StrToInt(Trim(dbsMesIni.Text))])))
   + '      AND CFC000.CFC_F = COB113.RESUMEID(+) '
      + '    GROUP BY CFC_F, RESUMEDES ';
   DM1.cdsModelo.Close;
   DM1.cdsModelo.DataRequest(xSQL);
   DM1.cdsModelo.Open;
   If DM1.cdsModelo.RecordCount > 0 Then
      Begin
         MstDetallesGen;
         grpDetalle.Enabled := True;
      End
   Else
      Begin
         grpDetalle.Enabled := False;
         MessageDlg(' No Existe Información Procesada Para Este Periodo..!!!!', mtError, [mbOk], 0);
      End;
   TNumericField(DM1.cdsModelo.FieldByName('MOVIM')).DisplayFormat := '###,###,###';
   TNumericField(DM1.cdsModelo.FieldByName('SALDOS')).DisplayFormat := '###,###,###.#0';
   TNumericField(DM1.cdsModelo.FieldByName('SALDOSV')).DisplayFormat := '###,###,###.#0';
   TNumericField(DM1.cdsModelo.FieldByName('SALDOSP')).DisplayFormat := '###,###,###.#0';
   TNumericField(DM1.cdsModelo.FieldByName('RECUPERADO')).DisplayFormat := '###,###,###.#0';
   TNumericField(DM1.cdsModelo.FieldByName('PENDIENTE')).DisplayFormat := '###,###,###.#0';

   TNumericField(DM1.cdsModelo.FieldByName('VALCUO')).DisplayFormat := '###,###,###.#0';
   TNumericField(DM1.cdsModelo.FieldByName('SALCUO')).DisplayFormat := '###,###,###.#0';
   TNumericField(DM1.cdsModelo.FieldByName('SALDIF')).DisplayFormat := '###,###,###.#0';

   xSaldo := 0;
   xSaldoV := 0;
   xSaldoP := 0;
   xRecup := 0;
   xPend := 0;
   xMovim := 0;
   xVALCUO := 0;
   xSALCUO := 0;
   xSALDIF := 0;

   DM1.cdsModelo.First;
   While Not DM1.cdsModelo.Eof Do
      Begin
         xSaldo := xSaldo + DM1.cdsModelo.FieldByName('SALDOS').AsCurrency;
         xSaldoV := xSaldoV + DM1.cdsModelo.FieldByName('SALDOSV').AsCurrency;
         xSaldoP := xSaldoP + DM1.cdsModelo.FieldByName('SALDOSP').AsCurrency;
         xRecup := xRecup + DM1.cdsModelo.FieldByName('RECUPERADO').AsCurrency;
         xPend := xPend + DM1.cdsModelo.FieldByName('PENDIENTE').AsCurrency;
         xMovim := xMovim + DM1.cdsModelo.FieldByName('MOVIM').AsCurrency;
         xVALCUO := xVALCUO + DM1.cdsModelo.FieldByName('VALCUO').AsCurrency;
         xSALCUO := xSALCUO + DM1.cdsModelo.FieldByName('SALCUO').AsCurrency;
         xSALDIF := xSALDIF + DM1.cdsModelo.FieldByName('SALDIF').AsCurrency;
         DM1.cdsModelo.Next;
      End;
   dtgClfCar.ColumnByName('CFCDES').FooterValue := 'Total';
   dtgClfCar.ColumnByName('MOVIM').FooterValue := FloatToStrF(xMovim, ffNumber, 10, 0);
   dtgClfCar.ColumnByName('SALDOS').FooterValue := FloatToStrF(xSaldo, ffNumber, 15, 2);
   dtgClfCar.ColumnByName('SALDOSV').FooterValue := FloatToStrF(xSaldoV, ffNumber, 15, 2);
   dtgClfCar.ColumnByName('SALDOSP').FooterValue := FloatToStrF(xSaldoP, ffNumber, 15, 2);
   dtgClfCar.ColumnByName('RECUPERADO').FooterValue := FloatToStrF(xRecup, ffNumber, 15, 2);
   dtgClfCar.ColumnByName('PENDIENTE').FooterValue := FloatToStrF(xPend, ffNumber, 15, 2);

   dtgClfCar.ColumnByName('VALCUO').FooterValue := FloatToStrF(xVALCUO, ffNumber, 15, 2);
   dtgClfCar.ColumnByName('SALCUO').FooterValue := FloatToStrF(xSALCUO, ffNumber, 15, 2);
   dtgClfCar.ColumnByName('SALDIF').FooterValue := FloatToStrF(xSALDIF, ffNumber, 15, 2);

   xSQL := 'SELECT CFC_F RESUMEID,RESUMEDES '
      + '     FROM CFC000, COB113 '
      + '    WHERE PERIODO = ' + QuotedStr(Trim(dbsAnoIni.Text + Format('%.2d', [StrToInt(Trim(dbsMesIni.Text))])))
   + '      AND CFC000.CFC_F = COB113.RESUMEID(+) '
      + '      AND CFC_F <> ''0'' '
      + '    GROUP BY CFC_F, RESUMEDES ';
   DM1.cdsConcre.Close;
   DM1.cdsConcre.DataRequest(xSQL);
   DM1.cdsConcre.Open;
   Screen.Cursor := crDefault;
End;

Procedure TfGestCob.LimpiaGrid;
Var
   xSQL: String;
Begin
   xSQL := 'SELECT 0.0 CFC, '' '' CFCDES, 0 MOVIM, 0.0 SALDOS, '
      + '          0.0 SALDOSV, 0.0 SALDOSP, '
      + '          0.0 RECUPERADO, 0.0 PENDIENTE,  '
      + '          0.0 VALCUO, 0.0 SALCUO, 0.0 SALDIF '
      + '     FROM DUAL '
      + '    WHERE 1 = 2';
   DM1.cdsModelo.Close;
   DM1.cdsModelo.DataRequest(xSQL);
   DM1.cdsModelo.Open;
   dtgClfCar.ColumnByName('CFCDES').FooterValue := 'Total';
   dtgClfCar.ColumnByName('MOVIM').FooterValue := FloatToStrF(0, ffNumber, 10, 0);
   dtgClfCar.ColumnByName('SALDOS').FooterValue := FloatToStrF(0, ffNumber, 15, 2);
   dtgClfCar.ColumnByName('SALDOSV').FooterValue := FloatToStrF(0, ffNumber, 15, 2);
   dtgClfCar.ColumnByName('SALDOSP').FooterValue := FloatToStrF(0, ffNumber, 15, 2);
   dtgClfCar.ColumnByName('RECUPERADO').FooterValue := FloatToStrF(0, ffNumber, 15, 2);
   dtgClfCar.ColumnByName('PENDIENTE').FooterValue := FloatToStrF(0, ffNumber, 15, 2);

   dtgClfCar.ColumnByName('VALCUO').FooterValue := FloatToStrF(0, ffNumber, 15, 2);
   dtgClfCar.ColumnByName('SALCUO').FooterValue := FloatToStrF(0, ffNumber, 15, 2);
   dtgClfCar.ColumnByName('SALDIF').FooterValue := FloatToStrF(0, ffNumber, 15, 2);

End;

Procedure TfGestCob.dblTipCalfChange(Sender: TObject);
Begin
   LimpiaDetalles;
   If DM1.cdsConcre.Locate('RESUMEID', VarArrayof([dblTipCalf.Text]), []) Then
      Begin
         EdtDesCat.Text := DM1.cdsConcre.fieldbyname('RESUMEDES').AsString;
      End
   Else
      Begin
         If Length(dblTipCalf.Text) <> 1 Then
            Begin
               Beep;
               EdtDesCat.Text := '';
            End;
      End;

End;

Procedure TfGestCob.FormActivate(Sender: TObject);
Var
   xSQL: String;
Begin
   xSQL := 'SELECT DPTOID,DPTODES '
      + '     FROM TGE158 '
      + '    ORDER BY DPTODES';
   DM1.cdsDFam.Close;
   DM1.cdsDFam.DataRequest(xSQL);
   DM1.cdsDFam.Open;

   dbsAnoIni.Value := StrToInt(Copy(DateToStr(DM1.FechaSys), 7, 4));
   dbsMesIni.Value := StrToInt(Copy(DateToStr(DM1.FechaSys), 4, 2));
   lblNomMes.Caption := DM1.DesMes(StrToInt(dbsMesIni.Text), 'N');
   dbeMtoIni.Text := '0.00';
   dbeMtoFin.Text := '0.00';
   LimpiaGrid;
   LimpiaDetalles;
End;

Procedure TfGestCob.dbsMesIniChange(Sender: TObject);
Begin
   lblNomMes.Caption := DM1.DesMes(StrToInt(dbsMesIni.Text), 'N');
   LimpiaGrid;

End;

Function TfGestCob.SaldosActuales(xAsoid, xPeriodo: String): Currency;
Var
   xSQL: String;
Begin
   xSQL := 'SELECT SUM(NVL(CREAMORT,0)-NVL(CRECAPITAL,0)) SALDOS '
      + '     FROM CRE302 A,CRE301 B '
      + '    WHERE A.ASOID=' + QuotedStr(xAsoId)
      + '      AND A.ASOID=B.ASOID '
      + '      AND A.CREDID=B.CREDID '
      + '      AND A.CREESTID NOT IN (''04'',''13'') '
      + '      AND TO_CHAR(B.CREFOTORG,''YYYYMM'') BETWEEN ''199601'' AND ' + QuotedStr(xPeriodo);
   DM1.cdsSolicitudes.Close;
   DM1.cdsSolicitudes.DataRequest(xSQL);
   DM1.cdsSolicitudes.Open;
   If DM1.cdsSolicitudes.RecordCount > 0 Then
      Begin
         If DM1.cdsSolicitudes.fieldByName('SALDOS').AsCurrency <= 0 Then
            Result := 0
         Else
            Result := DM1.cdsSolicitudes.fieldByName('SALDOS').AsCurrency;
      End
   Else
      Result := 0;

   DM1.cdsSolicitudes.Close;
End;

Procedure TfGestCob.chkRecImpClick(Sender: TObject);
Begin
   LimpiaGrid;
   LimpiaDetalles;
   If Not chkRecImp.Checked Then
      BitProcesar.Caption := 'Solo Mostrar'
   Else
      BitProcesar.Caption := 'Procesar y Mostrar';
End;

Procedure TfGestCob.CargarSaldos;
Var
   xSQL, xAsoId, xEstado: String;
   xSaldo, xSaltot: Currency;
   xCuoPen, xMeses: Integer;
Begin
   Screen.Cursor := crHourGlass;
   xSQL := 'SELECT PERIODO, ASOID, SALDOS_FT, RECUP_FT,NVL(ESTADO,''P'') ESTADO '
      + '     FROM CFC000 '
      + '    WHERE PERIODO=' + QuotedStr(Trim(dbsAnoIni.Text + Format('%.2d', [StrToInt(Trim(dbsMesIni.Text))])))
   + '      AND NVL(ESTADO,''P'')<>''C'' ';
   DM1.cdsCambios.Close;
   DM1.cdsCambios.DataRequest(xSQL);
   DM1.cdsCambios.Open;
   If DM1.cdsCambios.RecordCount > 0 Then
      Begin
         grbProceso.Visible := True;
         lblPor.Visible := True;
         prbAvance.Position := 0;
         prbAvance.Max := DM1.cdsCambios.RecordCount;
         prbAvance.Position := 1;
         xSaldo := 0;
         xSaltot := 0;
         DM1.cdsCambios.First;
         While Not DM1.cdsCambios.Eof Do
            Begin
               fGestCob.Refresh;
               prbAvance.Position := prbAvance.Position + 1;
               xAsoId := DM1.cdsCambios.fieldByName('ASOID').AsString;
               xSaldo := SaldosActuales(xAsoid, Trim(dbsAnoIni.Text + Format('%.2d', [StrToInt(Trim(dbsMesIni.Text))])));
               xSalTot := SaldosTotales(xAsoid, Trim(dbsAnoIni.Text + Format('%.2d', [StrToInt(Trim(dbsMesIni.Text))])));
               xCuoPen := CuotasPendientes(xAsoid, Trim(dbsAnoIni.Text + Format('%.2d', [StrToInt(Trim(dbsMesIni.Text))])));
               xMeses := MesesAtrazo(xAsoid, Trim(dbsAnoIni.Text + Format('%.2d', [StrToInt(Trim(dbsMesIni.Text))])));
               If DM1.cdsCambios.fieldByName('ESTADO').AsString = 'P' Then
                  Begin
                     If xSalTot = 0 Then
                        xEstado := 'C'
                     Else
                        xEstado := 'P';
                     xSQL := 'UPDATE CFC000 SET MESTRA=' + IntToStr(xMeses) + ',RECUP_FT=' + CurrToStr(xSaldo) + ',SALDOS_T=' + CurrToStr(xSalTot) + ',ESTADO=' + QuotedStr(xEstado) + ',CUO_PEN=' + IntTostr(xCuoPen) + ' WHERE ASOID=' + QuotedStr(xAsoId) + ' AND PERIODO=' + QuotedStr(Trim(dbsAnoIni.Text + Format('%.2d', [StrToInt(Trim(dbsMesIni.Text))])));
                     DM1.DCOM1.AppServer.EjecutaSql(xSQL);
                  End;
               lblPor.Caption := FormatFloat('#,###,###', prbAvance.Position) + '  De  ' + FormatFloat('#,###,###', prbAvance.Max) + '  Registros';
               DM1.cdsCambios.Next;
            End;
         prbAvance.Position := 0;
         grbProceso.Visible := False;
         MessageDlg(' Proceso Termino Con EXITO..!!!!', mtInformation, [mbOk], 0);
      End
   Else
      MessageDlg(' No Existe Información Procesada Para Este Periodo..!!!!', mtError, [mbOk], 0);

   Screen.Cursor := crDefault;
End;

Procedure TfGestCob.BitSalirClick(Sender: TObject);
Begin
   Close;
End;

Procedure TfGestCob.dbeMtoIniKeyPress(Sender: TObject; Var Key: Char);
Begin
   If Key In [' ', 'A'..'Z', 'a'..'z', '°', '|', '!', '"', '#', '$', '%', '&', '/', '(', ')', '=', '?', '\', '¡', '¿', '@', '¨', '´', '*', '+', '~', '~', '[', ']', '{', '}', '^', '`', '<', '>', ';', ',', ':', '''', '-', '_'] Then
      Key := #0;

End;

Procedure TfGestCob.dbeMtoFinKeyPress(Sender: TObject; Var Key: Char);
Begin
   If Key In [' ', 'A'..'Z', 'a'..'z', '°', '|', '!', '"', '#', '$', '%', '&', '/', '(', ')', '=', '?', '\', '¡', '¿', '@', '¨', '´', '*', '+', '~', '~', '[', ']', '{', '}', '^', '`', '<', '>', ';', ',', ':', '''', '-', '_'] Then
      Key := #0;

End;

Procedure TfGestCob.chkMontosClick(Sender: TObject);
Begin
   LimpiaDetalles;
   If Not chkMontos.Checked Then
      Begin
         dbeMtoIni.Text := '0.00';
         dbeMtoFin.Text := '0.00';
         pnlMontos.Enabled := False;
      End
   Else
      Begin
         pnlMontos.Enabled := True;
         dbeMtoIni.SetFocus;
      End;
End;

Procedure TfGestCob.dbeMtoIniExit(Sender: TObject);
Begin
   dbeMtoIni.Text := DM1.FormatoNumeros(dbeMtoIni.Text);
End;

Procedure TfGestCob.dbeMtoFinExit(Sender: TObject);
Begin
   dbeMtoFin.Text := DM1.FormatoNumeros(dbeMtoFin.Text);
End;

Procedure TfGestCob.FormKeyPress(Sender: TObject; Var Key: Char);
Begin
   If Key = #13 Then
      Begin
         Key := #0;
         Perform(WM_NEXTDLGCTL, 0, 0);
      End

End;

Procedure TfGestCob.BitMostrarClick(Sender: TObject);
Begin
   If Length(Trim(EdtDesCat.Text)) = 0 Then
      Begin
         MessageDlg(' Debe Seleccionar Una Categoria De Riesgo..!!!!', mtError, [mbOk], 0);
         Exit;
      End;

   If chkMontos.Checked Then
      Begin
         If DM1.Valores(dbeMtoIni.Text) > DM1.Valores(dbeMtoFin.Text) Then
            Begin
               MessageDlg(' El Monto Inicial No Puede Ser Mayor Que El Monto Final..!!!!', mtError, [mbOk], 0);
               Exit;
            End;
      End;

   If Length(Trim(EdtDpto.Text)) = 0 Then
      Begin
         MessageDlg(' Debe Seleccionar Un Departamento..!!!!', mtError, [mbOk], 0);
         Exit;
      End;

   Screen.Cursor := crHourGlass;
   MstDetalles;
   Screen.Cursor := crDefault;

End;

Procedure TfGestCob.dblDptoChange(Sender: TObject);
Var
   xSQL: String;
Begin
   LimpiaDetalles;
   If DM1.cdsDFam.Locate('DPTOID', VarArrayof([dblDpto.text]), []) Then
      Begin
         EdtDpto.Text := DM1.cdsDFam.FieldByName('DPTODES').Asstring;
         xSQL := 'SELECT USEID, USENOM '
            + '     FROM APO101 '
            + '    WHERE DPTOID=' + QuotedStr(dblDpto.text)
            + '      AND (FLGACT<>''!'' OR FLGACT IS NULL)  '
            + '    ORDER BY USEID';
         DM1.cdsTUSE.Close;
         DM1.cdsTUSE.DataRequest(xSQL);
         DM1.cdsTUSE.Open;
      End
   Else
      Begin
         If Length(dblDpto.Text) <> 2 Then
            Begin
               Beep;
               EdtDpto.Text := '';
            End;
      End

End;

Procedure TfGestCob.chkMstUsesClick(Sender: TObject);
Begin
   If chkMstUses.Checked Then LimpiaDetalles;
   If Length(Trim(EdtDpto.Text)) = 0 Then
      Begin
         If chkMstUses.Checked Then
            Begin
               chkMstUses.Checked := False;
               MessageDlg(' Debe Seleccionar Un Departamento..!!!!', mtError, [mbOk], 0);
               Exit;
            End;
      End
   Else
      If chkMstUses.Checked Then
         dblUses.Enabled := True
      Else
         Begin
            dblUses.Text := '';
            EdtDesUse.Text := '';
            dblUses.Enabled := False;
         End;
End;

Procedure TfGestCob.dblUsesChange(Sender: TObject);
Begin
   LimpiaDetalles;
   If DM1.cdsTUse.Locate('USEID', VarArrayof([dblUses.text]), []) Then
      Begin
         EdtDesUse.Text := DM1.cdsTUse.FieldByName('USENOM').Asstring;
      End
   Else
      Begin
         If Length(dblUses.Text) <> 2 Then
            Begin
               Beep;
               EdtDesUse.Text := '';
            End;
      End

End;

Function TfGestCob.SaldosTotales(xAsoid, xPeriodo: String): Currency;
Var
   xSQL: String;
Begin
   xSQL := 'SELECT SUM(NVL(CREMTO,0)-NVL(CREMTOCOB,0)) SALDOSTOT '
      + '     FROM CRE302 A,CRE301 B '
      + '    WHERE A.ASOID=' + QuotedStr(xAsoId)
      + '      AND A.ASOID=B.ASOID '
      + '      AND A.CREDID=B.CREDID '
      + '      AND A.CREESTID IN (''02'',''11'',''14'',''19'',''27'') '
      + '      AND TO_CHAR(B.CREFOTORG,''YYYYMM'') BETWEEN ''199601'' AND ' + QuotedStr(xPeriodo);
   DM1.cdsSolicitudes.Close;
   DM1.cdsSolicitudes.DataRequest(xSQL);
   DM1.cdsSolicitudes.Open;
   If DM1.cdsSolicitudes.RecordCount > 0 Then
      Begin
         If DM1.cdsSolicitudes.fieldByName('SALDOSTOT').AsCurrency <= 0 Then
            Result := 0
         Else
            Result := DM1.cdsSolicitudes.fieldByName('SALDOSTOT').AsCurrency;
      End
   Else
      Result := 0;

   DM1.cdsSolicitudes.Close;

End;

Procedure TfGestCob.MstDetalles;
Var
   xSaldos_Ft, xSaldos_Fv, xSaldos_Fp, xRecup, xSaldos_T: Currency;
   xRegistros: Integer;
   xSQL, xQuery, xQuerys: String;
Begin
   If chkMontos.Checked Then
      Begin
         xQuerys := ' AND SALDOS_FT BETWEEN ' + FloatToStr(DM1.Valores(dbeMtoIni.Text)) + ' AND ' + FloatToStr(DM1.Valores(dbeMtoFin.Text));
      End
   Else
      Begin
         xQuerys := '';
      End;
   If chkMstUses.Checked Then
      Begin
         If Length(Trim(EdtDesUse.Text)) = 0 Then
            Begin
               MessageDlg(' Debe Seleccionar Un Codigo De Use..!!!!', mtError, [mbOk], 0);
               Exit;
            End;
         xQuery := ' AND USEID=' + QuotedStr(Trim(dblUses.Text));
      End
   Else
      Begin
         xQuery := '';
      End;
   LimpiaDetalles;

   xSQL := 'SELECT PERIODO, USEID, UPAGOID, UPROID, CFC_F, '
      + '          CFCDES_F, ASOTIPID, ASOID, ASOCODMOD, ASOAPENOM, NVL(SALDOS_FT,0) SALDOS_FT, '
      + '          NVL(SALDOS_FV,0) SALDOS_FV,NVL(SALDOS_FP,0) SALDOS_FP,  '
      + '          (NVL(SALDOS_FT,0)-NVL(RECUP_FT,0)) RECUPERADO, NVL(SALDOS_T,0) SALDOS_T, '
      + '          NVL(CUOVEN,0) CUOVEN,NVL(CUOPEN,0) CUOPEN,DECODE(ESTADO,''P'',''POR COBRAR'',''C'',''CANCELADO'') ESTDES, '
      + '          ESTADO,NVL(TOT_CUO,0) TOT_CUO,NVL(CUO_PEN,0) CUO_PEN,NVL(MESTRA,0) MESTRA  '
      + '     FROM CFC000 '
      + '    WHERE PERIODO=' + QuotedStr(Trim(dbsAnoIni.Text + Format('%.2d', [StrToInt(Trim(dbsMesIni.Text))])))
   + '      AND CFC_F=' + QuotedStr(Trim(dblTipCalf.Text))
      + '      AND DPTOID=' + QuotedStr(Trim(dblDpto.Text))
      + xQuery
      + xQuerys
      + '    ORDER BY ASOAPENOM';
   DM1.cdsMovCre.Close;
   DM1.cdsMovCre.DataRequest(xSQL);
   DM1.cdsMovCre.Open;
   TNumericField(DM1.cdsMovCre.FieldByName('SALDOS_FT')).DisplayFormat := '###,###,###.#0';
   TNumericField(DM1.cdsMovCre.FieldByName('SALDOS_FV')).DisplayFormat := '###,###,###.#0';
   TNumericField(DM1.cdsMovCre.FieldByName('SALDOS_FP')).DisplayFormat := '###,###,###.#0';
   TNumericField(DM1.cdsMovCre.FieldByName('RECUPERADO')).DisplayFormat := '###,###,###.#0';
   TNumericField(DM1.cdsMovCre.FieldByName('SALDOS_T')).DisplayFormat := '###,###,###.#0';
   If DM1.cdsMovCre.RecordCount > 0 Then
      Begin
         xSaldos_Ft := 0;
         xRecup := 0;
         xSaldos_T := 0;
         xRegistros := 0;
         xSaldos_Fv := 0;
         xSaldos_Fp := 0;
         DM1.cdsMovCre.First;
         While Not DM1.cdsMovCre.Eof Do
            Begin
               xSaldos_Ft := xSaldos_Ft + DM1.cdsMovCre.fieldByname('SALDOS_FT').AsCurrency;
               xSaldos_Fp := xSaldos_Fp + DM1.cdsMovCre.fieldByname('SALDOS_FP').AsCurrency;
               xSaldos_Fv := xSaldos_Fv + DM1.cdsMovCre.fieldByname('SALDOS_FV').AsCurrency;
               xRecup := xRecup + DM1.cdsMovCre.fieldByname('RECUPERADO').AsCurrency;
               xSaldos_T := xSaldos_T + DM1.cdsMovCre.fieldByname('SALDOS_T').AsCurrency;
               xRegistros := xRegistros + 1;
               DM1.cdsMovCre.Next;
            End;
         dtgDetAsoCar.ColumnByName('ASOAPENOM').FooterValue := 'Totales           :';
         dtgDetAsoCar.ColumnByName('SALDOS_FT').FooterValue := FloatToStrF(xSaldos_Ft, ffNumber, 15, 2);
         dtgDetAsoCar.ColumnByName('SALDOS_FV').FooterValue := FloatToStrF(xSaldos_Fv, ffNumber, 15, 2);
         dtgDetAsoCar.ColumnByName('SALDOS_FP').FooterValue := FloatToStrF(xSaldos_Fp, ffNumber, 15, 2);
         dtgDetAsoCar.ColumnByName('RECUPERADO').FooterValue := FloatToStrF(xRecup, ffNumber, 15, 2);
         dtgDetAsoCar.ColumnByName('SALDOS_T').FooterValue := FloatToStrF(xSaldos_T, ffNumber, 15, 2);
         dtgDetAsoCar.ColumnByName('ESTDES').FooterValue := '  ' + FormatFloat('###,###', xRegistros) + ' Asociados';
         grbAsigCob.Enabled := True;
      End
   Else
      Begin
         dtgDetAsoCar.ColumnByName('ASOAPENOM').FooterValue := 'Totales           :';
         dtgDetAsoCar.ColumnByName('SALDOS_FT').FooterValue := FloatToStrF(0, ffNumber, 15, 2);
         dtgDetAsoCar.ColumnByName('SALDOS_FV').FooterValue := FloatToStrF(0, ffNumber, 15, 2);
         dtgDetAsoCar.ColumnByName('SALDOS_FP').FooterValue := FloatToStrF(0, ffNumber, 15, 2);
         dtgDetAsoCar.ColumnByName('RECUPERADO').FooterValue := FloatToStrF(0, ffNumber, 15, 2);
         dtgDetAsoCar.ColumnByName('SALDOS_T').FooterValue := FloatToStrF(0, ffNumber, 15, 2);
         dtgDetAsoCar.ColumnByName('ESTDES').FooterValue := ' 0 Asociados';
         MessageDlg(' No Existe Información Para Ese Criterio De Busqueda..!!!!', mtError, [mbOk], 0);
      End;
End;

Procedure TfGestCob.dtgDetAsoCarDblClick(Sender: TObject);
Begin
   If DM1.cdsMovCre.fieldByname('ESTADO').AsString = 'P' Then
      Begin
         Try
            fCtrlGest := TfCtrlGest.create(Self);
            MstAsociados;
            If DM1.RecuperaDatos('USERTABLE', 'USERID', DM1.wUsuario, 'USROPE') <> 'C' Then
               Begin
                  fCtrlGest.dtgDetAsoCarIButton.Enabled := False;
                  fCtrlGest.lblCobrador.Caption := 'No Es Cobrador';
               End;

            MstCabecera(DM1.cdsMovCre.fieldByname('ASOID').AsString, DM1.cdsMovCre.fieldByname('PERIODO').AsString);
            fCtrlGest.ShowModal;
         Finally
            fCtrlGest.Free;
         End;
      End;
End;

Procedure TfGestCob.LimpiaDetalles;
Var
   xSQL: String;
Begin
   xSQL := 'SELECT PERIODO,CFC_F,CFCDES_F,ASOID,ASOTIPID, '
      + '          ASOCODMOD,ASOAPENOM,NVL(SALDOS_FT,0) SALDOS_FT, '
      + '          NVL(SALDOS_FV,0) SALDOS_FV,NVL(SALDOS_FP,0) SALDOS_FP,  '
      + '          (NVL(SALDOS_FT,0)-NVL(RECUP_FT,0)) RECUPERADO,NVL(SALDOS_T,0) SALDOS_T, '
      + '          NVL(CUOVEN,0) CUOVEN,NVL(CUOPEN,0) CUOPEN,''POR COBRAR'' ESTDES, ESTADO, TOT_CUO, CUO_PEN, MESTRA, '
      + '          NVL(VALCUO,0) VALCUO, NVL(SALCUO,0) SALCUO, NVL(SALDIF,0) SALDIF '
      + '     FROM CFC000 '
      + '    WHERE 1 = 2';
   DM1.cdsMovCre.Close;
   DM1.cdsMovCre.DataRequest(xSQL);
   DM1.cdsMovCre.Open;
   dtgDetAsoCar.ColumnByName('ASOAPENOM').FooterValue := 'Totales           :';
   dtgDetAsoCar.ColumnByName('SALDOS_FT').FooterValue := FloatToStrF(0, ffNumber, 15, 2);
   dtgDetAsoCar.ColumnByName('SALDOS_FV').FooterValue := FloatToStrF(0, ffNumber, 15, 2);
   dtgDetAsoCar.ColumnByName('SALDOS_FP').FooterValue := FloatToStrF(0, ffNumber, 15, 2);
   dtgDetAsoCar.ColumnByName('RECUPERADO').FooterValue := FloatToStrF(0, ffNumber, 15, 2);
   dtgDetAsoCar.ColumnByName('SALDOS_T').FooterValue := FloatToStrF(0, ffNumber, 15, 2);
   dtgDetAsoCar.ColumnByName('VALCUO').FooterValue := FloatToStrF(0, ffNumber, 15, 2);
   dtgDetAsoCar.ColumnByName('SALCUO').FooterValue := FloatToStrF(0, ffNumber, 15, 2);
   dtgDetAsoCar.ColumnByName('SALDIF').FooterValue := FloatToStrF(0, ffNumber, 15, 2);
   dtgDetAsoCar.ColumnByName('ESTDES').FooterValue := ' 0  Asociados';
End;

Procedure TfGestCob.MstAsociados;
Var
   xCondicion, xAsoTipId: String;
Begin
   fCtrlGest.lblCodMod.Caption := DM1.cdsMovCre.fieldByname('ASOCODMOD').AsString;
   fCtrlGest.lblAsoNombres.Caption := DM1.cdsMovCre.fieldByname('ASOAPENOM').AsString;
   fCtrlGest.lblCalificacion.Caption := DM1.cdsMovCre.fieldByname('CFCDES_F').AsString;
   fCtrlGest.lblDni.Caption := DM1.CrgDescrip('ASOID=' + QuotedStr(Trim(DM1.cdsMovCre.fieldByname('ASOID').AsString)), 'APO201', 'ASODNI');
   fCtrlGest.lblSaldo.Caption := FormatFloat('###,###.#0', DM1.Valores(DM1.cdsMovCre.fieldByname('SALDOS_T').AsString));
   xAsoTipId := DM1.CrgDescrip('ASOID=' + QuotedStr(Trim(DM1.cdsMovCre.fieldByname('ASOID').AsString)), 'APO201', 'ASOTIPID');
   fCtrlGest.lblTipAso.Caption := xAsoTipId + '-' + DM1.CrgDescrip('ASOTIPID=' + QuotedStr(Trim(xAsoTipId)), 'APO107', 'ASOTIPDES');
   fCtrlGest.lblCuenta.Caption := DM1.CrgDescrip('ASOID=' + QuotedStr(Trim(DM1.cdsMovCre.fieldByname('ASOID').AsString)), 'APO201', 'ASONCTA') + ' (' + DM1.CrgDescrip('SITCTAID=' + QuotedStr(Trim(DM1.CrgDescrip('ASOID=' + QuotedStr(Trim(DM1.cdsMovCre.fieldByname('ASOID').AsString)), 'APO201', 'SITCTA'))), 'COB103', 'SITCTADES') + ')';
   xCondicion := 'UPROID=' + QuotedStr(Trim(DM1.cdsMovCre.fieldbyname('UPROID').AsString)) + ' AND USEID=' + QuotedStr(Trim(DM1.cdsMovCre.fieldbyname('USEID').AsString)) + ' AND UPAGOID=' + QuotedStr(Trim(DM1.cdsMovCre.fieldbyname('UPAGOID').AsString));
   fCtrlGest.lblUses.Caption := DM1.cdsMovCre.FieldByName('USEID').AsString + ' - ' + DM1.CrgDescrip(xCondicion, 'APO101', 'USENOM');
   fCtrlGest.lblUniPro.Caption := DM1.cdsMovCre.FieldByName('UPROID').AsString + ' - ' + DM1.CrgDescrip('UPROID=' + QuotedStr(Trim(DM1.cdsMovCre.FieldByName('UPROID').AsString)), 'APO102', 'UPRONOM');
   fCtrlGest.lblDireccion.Caption := DM1.CrgDescrip('ASOID=' + QuotedStr(Trim(DM1.cdsMovCre.fieldByname('ASOID').AsString)), 'APO201', 'ASODIR');
   fCtrlGest.lblTelefono.Caption := DM1.CrgDescrip('ASOID=' + QuotedStr(Trim(DM1.cdsMovCre.fieldByname('ASOID').AsString)), 'APO201', 'ASOTELF1') + ' - ' + DM1.CrgDescrip('ASOID=' + QuotedStr(Trim(DM1.cdsMovCre.fieldByname('ASOID').AsString)), 'APO201', 'ASOTELF2');
   fCtrlGest.lblCuotas.Caption := DM1.cdsMovCre.fieldByname('CUO_PEN').AsString + ' Cuotas Pendientes De ' + DM1.cdsMovCre.fieldByname('TOT_CUO').AsString;
   fCtrlGest.lblCobrador.Caption := 'Cobrador : ' + DM1.wUsuario;
End;

Function TfGestCob.CuotasPendientes(xAsoid, xPeriodo: String): Integer;
Var
   xSQL: String;
Begin
   xSQL := 'SELECT NVL(COUNT(*),0) CUOPEND '
      + '     FROM CRE302 A,CRE301 B '
      + '    WHERE A.ASOID=' + QuotedStr(xAsoId)
      + '      AND A.ASOID=B.ASOID '
      + '      AND A.CREDID=B.CREDID '
      + '      AND A.CREESTID IN (''02'',''11'',''14'',''19'',''27'') '
      + '      AND TO_CHAR(B.CREFOTORG,''YYYYMM'') BETWEEN ''199601'' AND ' + QuotedStr(xPeriodo);
   DM1.cdsSolicitudes.Close;
   DM1.cdsSolicitudes.DataRequest(xSQL);
   DM1.cdsSolicitudes.Open;
   If DM1.cdsSolicitudes.RecordCount > 0 Then
      Begin
         Result := DM1.cdsSolicitudes.fieldByName('CUOPEND').AsInteger;
      End
   Else
      Result := 0;

   DM1.cdsSolicitudes.Close;
End;

Procedure TfGestCob.MstCabecera(xAsoid, xPeriodo: String);
Var
   xSQL: String;
Begin
   xSQL := 'SELECT PERIODO,CFC_F,CFCDES_F,SALDO_FT,ASOID,NROGEST,FECHA, '
      + '          USUARIO,SALDO,CREESTID,CREESTADO,MASDAT,CUOPEN,ANOGEST,MASDAT '
      + '     FROM COB345 '
      + '    WHERE ASOID=' + QuotedStr(xAsoId)
      + '      AND PERIODO=' + QuotedStr(xPeriodo)
      + '    ORDER BY NROGEST';
   DM1.cdsCambios.Close;
   DM1.cdsCambios.DataRequest(xSQL);
   DM1.cdsCambios.Open;
   If DM1.cdsCambios.RecordCount > 0 Then
      Begin
         DM1.cdsCambios.Last;
         dtgDetAsoCar.SetFocus;
      End
   Else
      Begin
      End;
End;

Procedure TfGestCob.ChkAsignaClick(Sender: TObject);
Var
   xSQL: String;
Begin
   If ChkAsigna.Checked Then
      Begin
         xSQL := 'SELECT USERID,USERNOM '
            + '     FROM USERTABLE '
            + '    WHERE AREA=''COB'' '
            + '      AND USROPE=''C'' ';
         DM1.cdsAsoX.Close;
         DM1.cdsAsoX.DataRequest(xSQL);
         DM1.cdsAsoX.Open;
         dblAsigCob.Enabled := True;
      End
   Else
      dblAsigCob.Enabled := False;
End;

Procedure TfGestCob.BitPrintClick(Sender: TObject);
Var
   xSQL: String;
   xSaldo, xRecup: Currency;
   xMovim: Integer;
Begin

   If ChkAsigna.Checked Then
      Begin
         If DM1.UsrConsulta(Trim(DM1.wUsuario)) Then
            Begin
               MessageDlg('Usuario No Autorizado A Esta Opción / Solo CONSULTA !!!', mtError, [mbOk], 0);
               Exit;
            End;

         If Length(Trim(EdtDesUse.Text)) = 0 Then
            Begin
               MessageDlg(' Debe Seleccionar Una USE/UGEL Para Asignación..!!!!', mtError, [mbOk], 0);
               Exit;
            End;

         If Length(Trim(EdtCobrador.Text)) = 0 Then
            Begin
               MessageDlg(' Debe Asignar Un Cobrador Para Asignación..!!!!', mtError, [mbOk], 0);
               Exit;
            End;
         If Length(Trim(VerificaAsignacion(Trim(dblTipCalf.Text), Trim(dblDpto.Text), Trim(dblUses.Text), Trim(DM1.cdsMovCre.fieldByname('PERIODO').AsString)))) > 0 Then
            Begin
               MessageDlg('Esta USE/UGEL Ya Fue Asignada Al Cobrador : ' + pChar(VerificaAsignacion(Trim(dblTipCalf.Text), Trim(dblDpto.Text), Trim(dblUses.Text), Trim(DM1.cdsMovCre.fieldByname('PERIODO').AsString))), mtError, [mbOk], 0);
               Exit;
            End;
         xSaldo := DM1.Valores(dtgDetAsoCar.ColumnByName('SALDOS_T').FooterValue);
         xRecup := DM1.Valores(dtgDetAsoCar.ColumnByName('RECUPERADO').FooterValue);
         xMovim := dtgDetAsoCar.DataSource.DataSet.RecordCount;

         xSQL := 'INSERT INTO COB349(PERIODO,CFC_F,CFCDES_F,FECHA,USUARIO,SALDO_G,RECUP_G,MOV_GEN,ANOGEST,DPTOID,USEID,UPROID,UPAGOID) ' +
            'VALUES (' + QuotedStr(DM1.cdsMovCre.fieldByname('PERIODO').AsString) + ',' + QuotedStr(DM1.cdsMovCre.fieldByname('CFC_F').AsString) + ' ' +
            ',' + QuotedStr(DM1.cdsMovCre.fieldByname('CFCDES_F').AsString) + ',' + QuotedStr(DateToStr(DM1.FechaSys)) + ',' + QuotedStr(Trim(dblAsigCob.Text)) + ' ' +
            ',' + CurrToStr(xSaldo) + ',' + CurrToStr(xRecup) + ',' + IntToStr(xMovim) + ',' + QuotedStr(Copy(DateToStr(DM1.FechaSys), 7, 4)) + ',' + QuotedStr(Trim(dblDpto.Text)) + ',' + QuotedStr(Trim(dblUses.Text)) + ',' + QuotedStr(DM1.cdsMovCre.fieldByname('UPROID').AsString) + ',' + QuotedStr(DM1.cdsMovCre.fieldByname('UPAGOID').AsString) + ')';
         DM1.DCOM1.AppServer.EjecutaSql(xSQL);
         MessageDlg('USE/UGEL Asignada Al Cobrador : ' + pChar(dblAsigCob.Text), mtInformation, [mbOk], 0);
         dblAsigCob.Text := '';
      End;

   xSQL := 'SELECT PERIODO,ASOCODMOD,ASOAPENOM,SALDOS_FT,SALDOS_T,ESTADO,DPTOID,UPROID,UPAGOID,USEID,CFC_F,CFCDES_F,CUO_PEN ' +
      'FROM CFC000 WHERE PERIODO=' + QuotedStr(DM1.cdsMovCre.fieldByname('PERIODO').AsString) + ' AND CFC_F=' + QuotedStr(Trim(dblTipCalf.Text)) + ' AND ' +
      'DPTOID=' + QuotedStr(Trim(dblDpto.Text)) + ' AND USEID=' + QuotedStr(Trim(dblUses.Text));
   DM1.cdsOfDes.Close;
   DM1.cdsOfDes.DataRequest(xSQL);
   DM1.cdsOfDes.Open;
   If DM1.cdsOfDes.RecordCount > 0 Then
      Begin
         ppLblTit01.Caption := 'REPORTE DE ASOCIADOS POR CATEGORIA DE RIESGO Y USE/UGEL PERIODO : ' + lblNomMes.Caption + ' - ' + dbsAnoIni.Text;
         ppLblTit02.Caption := 'USE : ' + Trim(dblUses.Text) + '-' + Trim(EdtDesUse.Text) + ' (' + Trim(EdtDpto.Text) + ')';
         If Length(Trim(DM1.CrgDescrip('USERID=' + QuotedStr(DM1.CrgDescrip('PERIODO=' + QuotedStr(DM1.cdsMovCre.fieldByname('PERIODO').AsString) + ' AND CFC_F=' + QuotedStr(Trim(dblTipCalf.Text)) + ' AND DPTOID=' + QuotedStr(Trim(dblDpto.Text)) + ' AND USEID=' + QuotedStr(Trim(dblUses.Text)), 'COB349', 'USUARIO')), 'USERTABLE', 'USERNOM'))) = 0 Then
            ppLblTit03.Caption := 'COBRANZA ASIGNADA A : NO ASIGNADO'
         Else
            ppLblTit03.Caption := 'COBRANZA ASIGNADA A : ' + DM1.CrgDescrip('USERID=' + QuotedStr(DM1.CrgDescrip('PERIODO=' + QuotedStr(DM1.cdsMovCre.fieldByname('PERIODO').AsString) + ' AND CFC_F=' + QuotedStr(Trim(dblTipCalf.Text)) + ' AND DPTOID=' + QuotedStr(Trim(dblDpto.Text)) + ' AND USEID=' + QuotedStr(Trim(dblUses.Text)), 'COB349', 'USUARIO')), 'USERTABLE', 'USERNOM');
         ppLblCategoria.Caption := Trim(EdtDesCat.Text);
         ppRepGest01.Print;
         ppRepGest01.Cancel;
      End
   Else
      Begin
         MessageDlg(' No Existe Información Para Este Periodo y USE/UGEL..!!!!', mtError, [mbOk], 0);
         Exit;
      End;

   DM1.cdsOfDes.Close;

   ChkAsigna.Checked := False;
   dblAsigCob.Enabled := False;
End;

Procedure TfGestCob.dblAsigCobChange(Sender: TObject);
Begin
   If DM1.cdsAsoX.Locate('USERID', VarArrayof([dblAsigCob.Text]), []) Then
      Begin
         EdtCobrador.Text := DM1.cdsAsoX.fieldbyname('USERNOM').AsString;
      End
   Else
      Begin
         If Length(dblAsigCob.Text) <> 1 Then
            Begin
               Beep;
               EdtCobrador.Text := '';
            End;
      End;

End;

Function TfGestCob.VerificaAsignacion(xTipClf, xDptoId, xUseId, xPeriodo: String): String;
Var
   xSQL: String;
Begin
   xSQL := 'SELECT PERIODO,CFC_F,DPTOID,USEID,USUARIO FROM COB349 WHERE PERIODO=' + QuotedStr(xPeriodo) + ' ' +
      'AND CFC_F=' + QuotedStr(xTipClf) + ' AND DPTOID=' + QuotedStr(xDptoId) + ' AND USEID=' + QuotedStr(xUseId);

   DM1.cdsDLabo.Close;
   DM1.cdsDLabo.DataRequest(xSQL);
   DM1.cdsDLabo.Open;
   If DM1.cdsDLabo.RecordCount > 0 Then
      Begin
         Result := DM1.cdsDLabo.FieldByName('USUARIO').AsString;
      End
   Else
      Begin
         Result := '';
      End;
   DM1.cdsDLabo.Close;
End;

Procedure TfGestCob.EdtBuscarChange(Sender: TObject);
Begin
   If Length(Trim(EdtBuscar.Text)) > 0 Then
      DM1.cdsMovCre.Locate('ASOAPENOM', VarArrayOf([TRIM(edtBuscar.Text)]), [loPartialKey]);

End;

Procedure TfGestCob.EdtBuscarKeyPress(Sender: TObject; Var Key: Char);
Begin
   If Key = #13 Then
      Begin
         If Length(Trim(EdtBuscar.Text)) > 0 Then
            Begin
               EdtBuscar.Text := '';
               dtgDetAsoCar.SetFocus;
            End
         Else
            Begin
               MessageDlg('Debe Digitar El Nombre Del Asociado, Para Iniciar La Busqueda', mtError, [mbOk], 0);
               EdtBuscar.SetFocus;
            End;
      End;
End;

Procedure TfGestCob.dtgClfCarDblClick(Sender: TObject);
Var
   xSQL: String;
Begin
   Try
      fDatComple := TfDatComple.create(Self);
      Screen.Cursor := crHourglass;
      xSQL := 'SELECT DPTODES "DEPARTAMENTO(LABORAL)", USENOM "USES/UGEL", ASOTIPID "TIPO DE ASOCIADO", '
         + '          REGPENID || ''-'' || REGPENABR "REGIMEN DE PENSION", '
         + '          ASOCODMOD "CODIGO MODULAR", ASODNI "DNI", ASOAPENOM "APELLIDOS Y NOMBRES", '
         + '          ASODIR "DIRECCION DOMICILIARIA",DPTODIR "DEPARTAMENTO(DOMICILIO)",CIUDDES "PROVINCIA(DOMICILIO)",'
         + '          ZIPDES "DISTRITO(DOMICILIO)", '
         + '          ASOTELF "TELEFONOS",SALDOS_FT "SALDO DEL PERIODO",SALDOS_FV "SALDO VENCIDO",'
         + '          SALDOS_FP "SALDO PENDIENTE",SALDOS_T "SALDO TOTAL (AMO+INT+GAS)",CUOVEN "CUOTAS VENCIDAS",'
         + '          CUOPEN "CUOTAS PENDIENTES",MESTRA "ATRASO EN MESES", '
         + '          VALCUO "Val.Cuota~Cred", SALCUO "Sal.Valor~Cuota Mes", SALDIF "Sal por pagar~Diferidas" '
         + '     FROM (SELECT C.DPTODES,A.ASOID,A.ASOTIPID,A.ASOCODMOD,A.ASOAPENOM, B.ASODNI, B.REGPENID, REGPENABR, '
         + '                  A.USEID,F.USENOM,A.UPAGOID,A.UPROID, '
         + '                  A.DPTOID,A.SALDOS_FT,A.SALDOS_FV,A.SALDOS_FP,A.SALDOS_T, '
         + '                  NVL(A.CUOVEN,0) CUOVEN,NVL(A.CUOPEN,0) CUOPEN,ASODIR,ASODPTO, '
         + '                  C.DPTODES DPTODIR,B.CIUDID,NVL(D.CIUDDES,''NO IDENTIFICADO'') CIUDDES,'
         + '                  B.ZIPID,NVL(E.ZIPDES,''NO IDENTIFICADO'') ZIPDES,NVL(B.ASOTELF1,B.ASOTELF1) ASOTELF, A.MESTRA MESTRA, '
         + '                  NVL(VALCUO,0) VALCUO, NVL(SALCUO,0) SALCUO, NVL(SALDIF,0) SALDIF '
         + '             FROM CFC000 A,APO201 B,APO158 C,TGE121 D,APO122 E,APO101 F, APO105 G '
         + '            WHERE PERIODO=' + QuotedStr(Trim(dbsAnoIni.Text + Format('%.2d', [StrToInt(Trim(dbsMesIni.Text))])))
      + '              AND CFC_F=' + QuotedStr(DM1.cdsModelo.FieldByName('CFC').AsString)
         + '              AND A.ASOID=B.ASOID(+) '
         + '              AND A.DPTOID=C.DPTOID(+) '
         + '              AND B.CIUDID=D.DPTOID(+)||D.CIUDID(+) '
         + '              AND B.ZIPID=E.ZIPID(+) '
         + '              AND B.REGPENID=G.REGPENID(+) '
         + '              AND A.USEID=F.USEID(+) '
         + '              AND A.UPAGOID=F.UPAGOID(+) '
         + '              AND A.UPROID=F.UPROID(+)'
         + '          ) '
         + '    ORDER BY DPTODES,USENOM,ASOAPENOM ';
      DM1.cdsUSES.Close;
      DM1.cdsUSES.DataRequest(xSQL);
      DM1.cdsUSES.Open;
      If DM1.cdsUSES.RecordCount > 0 Then
         Begin
            fDatComple.lblCalif.Caption := DM1.cdsModelo.FieldByName('CFCDES').AsString + '  a :    (' + Trim(lblNomMes.Caption) + ' - ' + dbsAnoIni.Text + ')';
            fDatComple.ShowModal;
         End;
      Screen.Cursor := crDefault;
   Finally
      fDatComple.Free;
   End;

End;

Procedure TfGestCob.MstDetallesGen;
Var
   xSaldos_Ft, xSaldos_Fv, xSaldos_Fp, xRecup, xSaldos_T: Currency;
   xRegistros: Integer;
   xVALCUO, xSALCUO, xSALDIF: Currency;
   xSQL: String;
Begin
   LimpiaDetalles;
   Screen.Cursor := crHourGlass;
   xSQL := 'SELECT PERIODO,USEID,UPAGOID,UPROID,CFC_F, '
      + '          CFCDES_F,ASOTIPID,ASOID,ASOCODMOD,ASOAPENOM,NVL(SALDOS_FT,0) SALDOS_FT, '
      + '          NVL(SALDOS_FV,0) SALDOS_FV,NVL(SALDOS_FP,0) SALDOS_FP,  '
      + '          (NVL(SALDOS_FT,0)-NVL(RECUP_FT,0)) RECUPERADO, NVL(SALDOS_T,0) SALDOS_T, '
      + '          NVL(CUOVEN,0) CUOVEN,NVL(CUOPEN,0) CUOPEN,DECODE(ESTADO,''P'',''POR COBRAR'',''C'',''CANCELADO'') ESTDES, '
      + '          ESTADO,NVL(TOT_CUO,0) TOT_CUO,NVL(CUO_PEN,0) CUO_PEN,NVL(MESTRA,0) MESTRA,  '
      + '          NVL(VALCUO,0) VALCUO, NVL(SALCUO,0) SALCUO, NVL(SALDIF,0) SALDIF '
      + '     FROM CFC000 '
      + '    WHERE PERIODO=' + QuotedStr(Trim(dbsAnoIni.Text + Format('%.2d', [StrToInt(Trim(dbsMesIni.Text))])))
   + '      AND CFC_F<>''0'' '
      + '    ORDER BY ASOAPENOM';
   DM1.cdsMovCre.Close;
   DM1.cdsMovCre.DataRequest(xSQL);
   DM1.cdsMovCre.Open;
   TNumericField(DM1.cdsMovCre.FieldByName('SALDOS_FT')).DisplayFormat := '###,###,###.#0';
   TNumericField(DM1.cdsMovCre.FieldByName('SALDOS_FV')).DisplayFormat := '###,###,###.#0';
   TNumericField(DM1.cdsMovCre.FieldByName('SALDOS_FP')).DisplayFormat := '###,###,###.#0';
   TNumericField(DM1.cdsMovCre.FieldByName('RECUPERADO')).DisplayFormat := '###,###,###.#0';
   TNumericField(DM1.cdsMovCre.FieldByName('SALDOS_T')).DisplayFormat := '###,###,###.#0';

   TNumericField(DM1.cdsMovCre.FieldByName('VALCUO')).DisplayFormat := '###,###,###.#0';
   TNumericField(DM1.cdsMovCre.FieldByName('SALCUO')).DisplayFormat := '###,###,###.#0';
   TNumericField(DM1.cdsMovCre.FieldByName('SALDIF')).DisplayFormat := '###,###,###.#0';

   If DM1.cdsMovCre.RecordCount > 0 Then
      Begin
         xSaldos_Ft := 0;
         xSaldos_Fv := 0;
         xSaldos_Fp := 0;
         xRecup := 0;
         xSaldos_T := 0;
         xRegistros := 0;
         xVALCUO := 0;
         xSALCUO := 0;
         xSALDIF := 0;

         DM1.cdsMovCre.First;
         While Not DM1.cdsMovCre.Eof Do
            Begin
               xSaldos_Ft := xSaldos_Ft + DM1.cdsMovCre.fieldByname('SALDOS_FT').AsCurrency;
               xSaldos_Fv := xSaldos_Fv + DM1.cdsMovCre.fieldByname('SALDOS_FV').AsCurrency;
               xSaldos_Fp := xSaldos_Fp + DM1.cdsMovCre.fieldByname('SALDOS_FP').AsCurrency;
               xRecup := xRecup + DM1.cdsMovCre.fieldByname('RECUPERADO').AsCurrency;
               xSaldos_T := xSaldos_T + DM1.cdsMovCre.fieldByname('SALDOS_T').AsCurrency;

               xVALCUO := xVALCUO + DM1.cdsMovCre.fieldByname('VALCUO').AsCurrency;
               xSALCUO := xSALCUO + DM1.cdsMovCre.fieldByname('SALCUO').AsCurrency;
               xSALDIF := xSALDIF + DM1.cdsMovCre.fieldByname('SALDIF').AsCurrency;

               xRegistros := xRegistros + 1;
               DM1.cdsMovCre.Next;
            End;
         dtgDetAsoCar.ColumnByName('ASOAPENOM').FooterValue := 'Totales           :';
         dtgDetAsoCar.ColumnByName('SALDOS_FT').FooterValue := FloatToStrF(xSaldos_Ft, ffNumber, 15, 2);
         dtgDetAsoCar.ColumnByName('SALDOS_FV').FooterValue := FloatToStrF(xSaldos_Fv, ffNumber, 15, 2);
         dtgDetAsoCar.ColumnByName('SALDOS_FP').FooterValue := FloatToStrF(xSaldos_Fp, ffNumber, 15, 2);
         dtgDetAsoCar.ColumnByName('RECUPERADO').FooterValue := FloatToStrF(xRecup, ffNumber, 15, 2);
         dtgDetAsoCar.ColumnByName('SALDOS_T').FooterValue := FloatToStrF(xSaldos_T, ffNumber, 15, 2);

         dtgDetAsoCar.ColumnByName('VALCUO').FooterValue := FloatToStrF(xVALCUO, ffNumber, 15, 2);
         dtgDetAsoCar.ColumnByName('SALCUO').FooterValue := FloatToStrF(xSALCUO, ffNumber, 15, 2);
         dtgDetAsoCar.ColumnByName('SALDIF').FooterValue := FloatToStrF(xSALDIF, ffNumber, 15, 2);

         dtgDetAsoCar.ColumnByName('ESTDES').FooterValue := '  ' + FormatFloat('###,###', xRegistros) + ' Asociados';
         grbAsigCob.Enabled := True;
      End
   Else
      Begin
         dtgDetAsoCar.ColumnByName('ASOAPENOM').FooterValue := 'Totales           :';
         dtgDetAsoCar.ColumnByName('SALDOS_FT').FooterValue := FloatToStrF(0, ffNumber, 15, 2);
         dtgDetAsoCar.ColumnByName('SALDOS_FV').FooterValue := FloatToStrF(0, ffNumber, 15, 2);
         dtgDetAsoCar.ColumnByName('SALDOS_FP').FooterValue := FloatToStrF(0, ffNumber, 15, 2);
         dtgDetAsoCar.ColumnByName('RECUPERADO').FooterValue := FloatToStrF(0, ffNumber, 15, 2);
         dtgDetAsoCar.ColumnByName('SALDOS_T').FooterValue := FloatToStrF(0, ffNumber, 15, 2);

         dtgDetAsoCar.ColumnByName('VALCUO').FooterValue := FloatToStrF(0, ffNumber, 15, 2);
         dtgDetAsoCar.ColumnByName('SALCUO').FooterValue := FloatToStrF(0, ffNumber, 15, 2);
         dtgDetAsoCar.ColumnByName('SALDIF').FooterValue := FloatToStrF(0, ffNumber, 15, 2);

         dtgDetAsoCar.ColumnByName('ESTDES').FooterValue := ' 0 Asociados';
         MessageDlg(' No Existe Información Para Ese Criterio De Busqueda..!!!!', mtError, [mbOk], 0);
      End;
   Screen.Cursor := crDefault;
End;

Procedure TfGestCob.Timer1Timer(Sender: TObject);
Var
   I: Integer;
Begin
   grbProcesos.Visible := True;
   prbAvances.Position := 0;
   prbAvances.Max := 100;
   prbAvances.Position := 1;
   For I := prbAvances.Position To prbAvances.Max Do
      prbAvances.Position := I;
   prbAvances.Position := 0;
   grbProcesos.Visible := False;
   fGestCob.Refresh;
End;

{
Procedure TfGestCob.BitTelefClick(Sender: TObject);
Var
   xSQL: String;
   xGenera: Boolean;
Begin
   Screen.Cursor := crHourGlass;
   Timer1.Enabled := True;
   xGenera := True;

   xSQL := 'SELECT * FROM TGE158';
   DM1.cdsDFam.Close;
   DM1.cdsDFam.DataRequest(xSQL);
   DM1.cdsDFam.Open;

   xSQL := 'SELECT CFC_F RESUMEID,RESUMEDES FROM CFC000,COB113 ' +
      'WHERE PERIODO=' + QuotedStr(Trim(dbsAnoIni.Text + Format('%.2d', [StrToInt(Trim(dbsMesIni.Text))]))) + ' AND CFC000.CFC_F=COB113.RESUMEID(+) ' +
   'AND CFC_F<>''0'' GROUP BY CFC_F,RESUMEDES ';
   DM1.cdsConcre.Close;
   DM1.cdsConcre.DataRequest(xSQL);
   DM1.cdsConcre.Open;

   xSQL := 'SELECT NVL(COUNT(*),0) REGISTROS FROM CFC001 WHERE PERIODO=' + QuotedStr(Trim(dbsAnoIni.Text + Format('%.2d', [StrToInt(Trim(dbsMesIni.Text))])));
   DM1.cdsQry5.Close;
   DM1.cdsQry5.DataRequest(xSQL);
   DM1.cdsQry5.Open;
   If DM1.cdsQry5.FieldByName('REGISTROS').AsInteger > 0 Then
      Begin
         Screen.Cursor := crDefault;
         Timer1.Enabled := False;
         MessageDlg(' El PROCESO De Distribución De Información Para GESTION DE COBRANZAS Ya Fue Realizado !!! ', mtError, [mbOk], 0);
         xGenera := False;
      End;
   DM1.cdsQry5.Close;

   If xGenera Then
      Begin
         xSQL := 'SELECT PERIODO, ASOCODMOD, ASOCODAUX, ASOID, ASOAPENOM, USEID, UPAGOID, UPROID, DPTOID, ' +
            'CFC_F, CFCDES_F, SALDOS_FV, SALDOS_FP, SALDOS_FT, ASOTIPID, RECUP_FT, SALDOS_T, ESTADO, ' +
            'OFDESID FROM CFC000 WHERE PERIODO=' + QuotedStr(Trim(dbsAnoIni.Text + Format('%.2d', [StrToInt(Trim(dbsMesIni.Text))]))) + ' AND CFC_F<>''0'' ';
         DM1.cdsQry6.Close;
         DM1.cdsQry6.DataRequest(xSQL);
         DM1.cdsQry6.Open;
         If DM1.cdsQry6.RecordCount > 0 Then
            Begin
               xSQL := 'INSERT INTO CFC001(PERIODO, ASOCODMOD, ASOCODAUX, ASOID, ASOAPENOM, USEID, UPAGOID, UPROID, DPTOID,CFC_F, CFCDES_F, SALDOS_FV, SALDOS_FP, SALDOS_FT, ASOTIPID, RECUP_FT, SALDOS_T, ESTADO,OFDESID,IDDIST,HREG,MESTRA) ' +
                  'SELECT PERIODO, A.ASOCODMOD, A.ASOCODAUX, A.ASOID, A.ASOAPENOM, A.USEID, A.UPAGOID, A.UPROID, A.DPTOID,  ' +
                  'CFC_F, CFCDES_F, SALDOS_FV, SALDOS_FP, SALDOS_FT, A.ASOTIPID, RECUP_FT, SALDOS_T, ESTADO,  ' +
                  'OFDESID,''03'' IDDIST, SYSDATE, MESTRA FROM CFC000 A,APO201 B  ' +
                  'WHERE PERIODO=' + QuotedStr(Trim(dbsAnoIni.Text + Format('%.2d', [StrToInt(Trim(dbsMesIni.Text))]))) + ' AND CFC_F<>''0'' AND A.ASOID=B.ASOID(+) AND ASODIR IS NULL  ' +
               'AND ASOTELF1 IS NULL  ' +
                  'UNION  ' +
                  'SELECT PERIODO, A.ASOCODMOD, A.ASOCODAUX, A.ASOID, A.ASOAPENOM, A.USEID, A.UPAGOID, A.UPROID, A.DPTOID,  ' +
                  'CFC_F, CFCDES_F, SALDOS_FV, SALDOS_FP, SALDOS_FT, A.ASOTIPID, RECUP_FT, SALDOS_T, ESTADO,  ' +
                  'OFDESID,''02'' IDDIST, SYSDATE, MESTRA FROM CFC000 A,APO201 B  ' +
                  'WHERE PERIODO=' + QuotedStr(Trim(dbsAnoIni.Text + Format('%.2d', [StrToInt(Trim(dbsMesIni.Text))]))) + ' AND CFC_F<>''0'' AND A.ASOID=B.ASOID(+) AND  ASOTELF1 IS NOT NULL  ' +
               'UNION  ' +
                  'SELECT PERIODO, A.ASOCODMOD, A.ASOCODAUX, A.ASOID, A.ASOAPENOM, A.USEID, A.UPAGOID, A.UPROID, A.DPTOID,  ' +
                  'CFC_F, CFCDES_F, SALDOS_FV, SALDOS_FP, SALDOS_FT, A.ASOTIPID, RECUP_FT, SALDOS_T, ESTADO,  ' +
                  'OFDESID,''01'' IDDIST, SYSDATE, MESTRA FROM CFC000 A,APO201 B  ' +
                  'WHERE PERIODO=' + QuotedStr(Trim(dbsAnoIni.Text + Format('%.2d', [StrToInt(Trim(dbsMesIni.Text))]))) + ' AND CFC_F<>''0'' AND A.ASOID=B.ASOID(+) AND ASODIR IS NOT NULL  ' +
               'AND ASOTELF1 IS  NULL ';
               DM1.DCOM1.AppServer.EjecutaSql(xSQL);
               Screen.Cursor := crDefault;
               Timer1.Enabled := False;
            End;
         DM1.cdsQry6.Close;
      End;

   Try
      fDistGestion := TfDistGestion.Create(Self);
      fDistGestion.dbsAnoIni.Text := dbsAnoIni.Text;
      fDistGestion.dbsMesIni.Text := dbsMesIni.Text;
      fDistGestion.lblNomMes.Caption := lblNomMes.Caption;
      fDistGestion.ShowModal;
   Finally
      fDistGestion.Free;
   End;

End;
}

Procedure TfGestCob.BitBloqClick(Sender: TObject);
Var
   xSQL: String;
Begin
   If dtgDetAsoCar.DataSource.DataSet.RecordCount = 0 Then Exit;
   Screen.Cursor := crHourGlass;
   xSQL := 'SELECT CFC_F, CFCDES_F, ASOCODMOD, ASOAPENOM,NVL(SALDOS_FT,0) SALDOS_FT, '
      + '          NVL(SALDOS_T,0) SALDOS_T, NVL(CUOVEN,0) CUOVEN, NVL(CUOPEN,0) CUOPEN, '
      + '          NVL(VALCUO,0) VALCUO, NVL(SALCUO,0) SALCUO, NVL(SALDIF,0) SALDIF '
      + '     FROM CFC000 A  '
      + '    WHERE PERIODO=' + QuotedStr(Trim(dbsAnoIni.Text + Format('%.2d', [StrToInt(Trim(dbsMesIni.Text))])))
   + '      AND EXISTS (SELECT ASOID '
      + '                    FROM CRE302 '
      + '                   WHERE A.ASOID=ASOID '
      + '                     AND CREESTID=''19'') '
      + '      AND CFC_F<>''0'' '
      + '    ORDER BY CFC_F,ASOAPENOM ';
   DM1.cdsDetalle.Close;
   DM1.cdsDetalle.DataRequest(xSQL);
   DM1.cdsDetalle.Open;
   If DM1.cdsDetalle.RecordCount > 0 Then
      Begin
         Titulo.Caption := 'ASOCIADOS EN CALIFICACION DE CARTERA CON CUOTAS BLOQUEADAS AL : ' + Trim(lblNomMes.Caption) + ' - ' + dbsAnoIni.Text;
         RepBloq.Print;
         RepBloq.Cancel;
         //ppDesigner1.ShowModal;
      End;
   DM1.cdsDetalle.Close;
   Screen.Cursor := crDefault;
End;

Procedure TfGestCob.BitGesTelClick(Sender: TObject);
Begin
   Try
      fGesTel := TfGesTel.Create(Self);
      fGesTel.dbsAnoIni.Value := StrToInt(Copy(DateToStr(DM1.FechaSys), 7, 4));
      fGesTel.CrgCab(dbsAnoIni.Text);
      fGesTel.ShowModal;
   Finally
      fGesTel.Free;
   End;

End;

Function TfGestCob.MesesAtrazo(xAsoid, xPeriodo: String): Integer;
Var
   xSQL: String;
   xCrefVen: TDate;
Begin
   xSQL := 'SELECT MIN(CREFVEN) CREFVEN FROM CRE302 WHERE ASOID=' + QuotedStr(xAsoId) + ' AND CREESTID IN (''02'',''11'',''14'',''27'',''19'') ';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSQL);
   DM1.cdsQry.Open;
   If Length(Trim(DM1.cdsQry.FieldByName('CREFVEN').AsString)) = 0 Then
      Begin
         xCrefVen := DM1.FechaSys;
      End
   Else
      Begin
         xCrefVen := StrToDate('01' + Copy(DM1.cdsQry.FieldByName('CREFVEN').AsString, 3, 8));
      End;
   DM1.cdsQry.Close;
   xSQL := 'SELECT ROUND(MONTHS_BETWEEN(TO_DATE(SYSDATE),' + QuotedStr(DateToStr(xCrefVen)) + '),0) MESES FROM DUAL';
   DM1.cdsQry.DataRequest(xSQL);
   DM1.cdsQry.Open;
   Result := DM1.cdsQry.FieldByName('MESES').AsInteger;
End;

End.

