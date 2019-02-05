// Inicio Uso Estándares: 01/08/2011
// Unidad : Gestión de Cobranzas
// Formulario : FMetGes
// Fecha de Creación : 16/01/2012
// Autor : Equipo de Sistemas
// Objetivo : Metas de los Gestores Activos
// Actualizaciones:
// HPC_201201_GESCOB 09/01/2012 Control de Metas por Gestor
// HPC_201202_GESCOB 26/01/2012 Mejoras en calculo e impresion de graficos (pagos >= 50%, estaba como >50%, pero segun el rescate ampliado es >=50%)
// HPC_201202_GESCOB 27/01/2012 Colocar Matriz de Prioridades
// HPC_201207_GESCOB - F1 12/09/2012 validar control de metas por gestor
// DPP_201206_GESCOB: Pase a producción a partir de los pases HPC_201207
// HPC_201305_GESCOB: F4 04/06/2013 Se modificó parametros de las metas
// SPP_201305_GESCOB: Se realiza el pase a producción a partir del HPC_201305_GESCOB

Unit GES531;

Interface

Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, wwdblook, ComCtrls, StdCtrls, Buttons, ExtCtrls, GESDM1, StrUtils;

Type
   TFMetGes = Class(TForm)
      pnlControles : TPanel;
      btnGrabar : TBitBtn;
      btnSalir : TBitBtn;
      gbFechas : TGroupBox;
      Label2 : TLabel;
      Label3 : TLabel;
      dtpFInicio : TDateTimePicker;
      dtpFFin : TDateTimePicker;
      gbMetas : TGroupBox;
      Label6 : TLabel;
      edtMetMonSalVen : TEdit;

      Label4 : TLabel;
      edtMetCantSalTot : TEdit;

      edtMetCantSalVen : TEdit;
      edtMetMonSalTot : TEdit;
      Label7 : TLabel;




      Procedure btnSalirClick(Sender : TObject);
      Procedure FormCreate(Sender : TObject);
      Procedure btnGrabarClick(Sender : TObject);
      Procedure FormKeyPress(Sender : TObject; Var Key : Char);
      Procedure FormShow(Sender : TObject);
   Private
    { Private declarations }
   Public
      tmFormulario : TMFormulario;
      xnID_MET_GES : Integer;
      xsPeriodoGestion : String;
      xsGestor : String;
   End;

Var
   FMetGes : TFMetGes;

Implementation

{$R *.dfm}
//******************************************************************************
// Nombre : btnSalirClick
// Descripcion : Cerrar el formulario
//******************************************************************************

Procedure TFMetGes.btnSalirClick(Sender : TObject);
Begin
   self.ModalResult := mrCancel;
End;

//******************************************************************************
// Nombre : FormShow
// Descripcion : Muesta el formulario
//******************************************************************************

Procedure TFMetGes.FormShow(Sender : TObject);
Var
   xsSQL : String;
Begin
// Inicio: SPP_201305_GESCOB F5 parametros
{   xsSQL := 'SELECT ' + QuotedStr(xsGestor) + ' USERID, '
      + '       ''REAL'' VALORES, '
      + '       SUM(NVL(CASE WHEN B.CFC_F =  ''0'' THEN B.SALTOT ELSE 0 END,0)) MONTO_SALDO_TOTAL, '
      + '       SUM(NVL(CASE WHEN B.CFC_F =  ''0'' THEN 1 ELSE 0 END,0)) CANTIDAD_SALDO_TOTAL,'
      + '       SUM(NVL(CASE WHEN B.CFC_F <> ''0'' THEN B.SALDOS_FV ELSE 0 END,0)) MONTO_SALDO_VENCIDO,'
      + '       SUM(NVL(CASE WHEN B.CFC_F <> ''0'' THEN 1 ELSE 0 END,0)) CANTIDAD_SALDO_VENCIDO'
      + '  FROM (SELECT DISTINCT ASOID '
      + '           FROM (SELECT DISTINCT ASOID '
      + '                    FROM GES_COB_DOM '
      + '                   WHERE PERIODO = ' + QuotedStr(xsPeriodoGestion)
      + '                     AND USUARIO = ' + QuotedStr(xsGestor)
      + '                   UNION '
      + '                  SELECT DISTINCT ASOID '
      + '                    FROM GES_COB_IND '
      + '                   WHERE PERIODO = ' + QuotedStr(xsPeriodoGestion)
      + '                     AND USUARIO = ' + QuotedStr(xsGestor) + ')) A, GES_COB_CFC000_DET B ' // GES000
      + ' WHERE ' + QuotedStr(xsPeriodoGestion) + ' = B.PERIODO '
      + '   AND A.ASOID = B.ASOID ';
   DM1.cdsQry3.Close;
   DM1.cdsQry3.DataRequest(xsSQL);
   DM1.cdsQry3.Open;
   DM1.cdsQry3.First;
   lblMontoSaltoTotalAsignado.Caption := FormatFloat('###,##0.#0', DM1.cdsQry3.fieldbyname('MONTO_SALDO_TOTAL').AsCurrency);
   lblCantidadSaltoTotalAsignado.Caption := FormatFloat('###,##0', DM1.cdsQry3.fieldbyname('CANTIDAD_SALDO_TOTAL').AsCurrency);
   lblMontoSaltoVencidoAsignado.Caption := FormatFloat('###,##0.#0', DM1.cdsQry3.fieldbyname('MONTO_SALDO_VENCIDO').AsCurrency);
   lblCantidadSaltoVencidoAsignado.Caption := FormatFloat('###,##0', DM1.cdsQry3.fieldbyname('CANTIDAD_SALDO_VENCIDO').AsCurrency);
   }
// Fin: SPP_201305_GESCOB
End;

//******************************************************************************
// Nombre : FormCreate
// Descripcion : Inicializa los controles
//******************************************************************************

Procedure TFMetGes.FormCreate(Sender : TObject);
Var
   xni : integer;
   xsSQL : String;
   xsFechaSistema : TDate;
Begin
   Screen.Cursor := crHourGlass;
   xsFechaSistema := DM1.FechaSys;

   // limpiar controles
   xnID_MET_GES := 0;
   dtpFInicio.Date := xsFechaSistema;
   dtpFFin.Date := xsFechaSistema;
   edtMetMonSalTot.Text := '0.00';
   edtMetCantSalTot.Text := '0';
   edtMetMonSalVen.Text := '0.00';
// Inicio: SPP_201305_GESCOB F5 parametros
   edtMetCantSalVen.Text := '1';
// Fin: SPP_201305_GESCOB
   Screen.Cursor := crDefault;
End;

//******************************************************************************
// Nombre : btnGrabarClick
// Descripcion : Inserta o actualiza la Meta Actual
//******************************************************************************

Procedure TFMetGes.btnGrabarClick(Sender : TObject);
Var
   xsSQL : String;
  (****************************************************************************)
   // INICIO: DPP_201206_GESCOB - F1

   Function fn_datos_validos() : boolean;
   Var
      xnMeta : Double;
   Begin
      result := false;
      edtMetMonSalVen.Text := AnsiReplaceStr(trim(edtMetMonSalVen.Text), ',', '');
      edtMetMonSalTot.Text := AnsiReplaceStr(trim(edtMetMonSalTot.Text), ',', '');

      If (dtpFInicio.Date > dtpFFin.Date) Then
      Begin
         MessageDlg('La Fecha de Inicio debe ser menor que la Fecha de Fin', mtInformation, [mbOk], 0);
         dtpFInicio.SetFocus;
         Exit;
      End;

      xsSQL :=
         '   SELECT CASE WHEN FECINI = MESGESTION AND FECFIN = MESGESTION THEN ''SI'' ELSE ''NO'' END IS_MESES_VALIDOS '
         + '        ,F_MES(SUBSTR(MESGESTION, 5, 2)) DESCRIPCION_MES_VALIDO '
         + '   FROM (SELECT TO_CHAR(TO_DATE(' + QuotedStr(DateToStr(dtpFInicio.Date)) + ', ''DD/MM/YYYY''), ''YYYYMM'') FECINI '
         + '               ,TO_CHAR(TO_DATE(' + QuotedStr(DateToStr(dtpFFin.Date)) + ', ''DD/MM/YYYY''), ''YYYYMM'') FECFIN '
         + '               ,TO_CHAR(ADD_MONTHS(TO_DATE('+QuotedStr(xsPeriodoGestion)+', ''YYYYMM''), 1), ''YYYYMM'') MESGESTION '
         + '           FROM DUAL) ';
      DM1.cdsQryMeta.Close;
      DM1.cdsQryMeta.DataRequest(xsSQL);
      DM1.cdsQryMeta.Open;

      If (DM1.cdsQryMeta.fieldbyname('IS_MESES_VALIDOS').AsString = 'NO') Then
      Begin
         MessageDlg('Las fechas de Inicio y fin deben ser del mes de : ' + DM1.cdsQryMeta.fieldbyname('DESCRIPCION_MES_VALIDO').AsString, mtInformation, [mbOk], 0);
         dtpFInicio.SetFocus;
         Exit;
      End;

      If (Not (TryStrToFloat(edtMetMonSalVen.Text, xnMeta))) Or (xnMeta <= 0) Then
      Begin
         MessageDlg('Ingrese un Monto valido para la Meta de Saldo Vencido', mtInformation, [mbOk], 0);
         edtMetMonSalVen.SetFocus;
         Exit;
      End;
      edtMetMonSalVen.Text := FloatToStr(xnMeta);

      If (Not(TryStrToFloat(edtMetCantSalVen.Text, xnMeta))) Or (xnMeta <= 0) Then
      Begin
         MessageDlg('Ingrese un Monto valido para la Meta de Saldo Vencido', mtInformation, [mbOk], 0);
         edtMetCantSalVen.SetFocus;
         Exit;
      End;
      edtMetCantSalVen.Text := FloatToStr(xnMeta);

      If (Not (TryStrToFloat(edtMetMonSalTot.Text, xnMeta))) Or (xnMeta <= 0) Then
      Begin
         MessageDlg('Ingrese un monto valido para la Meta de Saldo Total', mtInformation, [mbOk], 0);
         edtMetMonSalTot.SetFocus;
         Exit;
      End;
      edtMetMonSalTot.Text := FloatToStr(xnMeta);

      If (Not (TryStrToFloat(edtMetCantSalTot.Text, xnMeta))) Or (xnMeta <= 0) Then
      Begin
         MessageDlg('Ingrese un monto valido para la Meta de Saldo Total', mtInformation, [mbOk], 0);
         edtMetCantSalTot.SetFocus;
         Exit;
      End;
      edtMetCantSalTot.Text := FloatToStr(xnMeta);

      result := true;
   End;
   // FIN: DPP_201206_GESCOB - F1
Begin
   If fn_datos_validos() Then
   Begin
      If self.tmFormulario = tmAdd Then
         xsSQL := 'BEGIN '
            + '       SP_GES_COB_MET_GES_ADD( ' + QuotedStr(xsPeriodoGestion) + ', '
            + QuotedStr(DateToStr(dtpFInicio.Date)) + ', '
            + QuotedStr(DateToStr(dtpFFin.Date)) + ', '
            + QuotedStr(xsGestor) + ', '
            + '          ROUND(' + edtMetMonSalVen.Text + ',2), '
            + '          ROUND(' + edtMetMonSalTot.Text + ',2), '
            + '          ROUND(' + edtMetCantSalVen.Text + ',2), '
            + '          ROUND(' + edtMetCantSalTot.Text + ',2), '
            + QuotedStr(DM1.wUsuario) + ' ); '
            + '    END;'
      Else
         xsSQL := 'UPDATE GES_COB_MET_GES '
            + '       SET PERIODO = ' + QuotedStr(xsPeriodoGestion)
            + '          ,FEC_INI        = ' + QuotedStr(DateToStr(dtpFInicio.Date))
            + '          ,FEC_FIN        = ' + QuotedStr(DateToStr(dtpFFin.Date))
            + '          ,MON_SALVEN = ROUND(' + edtMetMonSalVen.Text + ',2) '
            + '          ,MON_SALTOT = ROUND(' + edtMetMonSalTot.Text + ',2) '
            + '          ,CAN_SALVEN = ROUND(' + edtMetCantSalVen.Text + ',2) '
            + '          ,CAN_SALTOT = ROUND(' + edtMetCantSalTot.Text + ',2) '
            + '     WHERE ID_MET_GES = ' + IntToStr(Self.xnID_MET_GES);

      DM1.DCOM1.AppServer.EjecutaSql(xsSQL);
      self.ModalResult := mrOk;
   End;
End;

//******************************************************************************
// Nombre : FormKeyPress
// Descripcion : Captura el Enter y lo convierte en Tab
//******************************************************************************

Procedure TFMetGes.FormKeyPress(Sender : TObject; Var Key : Char);
Begin
   If Key = #13 Then
   Begin
      Key := #0;
      Perform(CM_DialogKey, VK_TAB, 0);
   End;
End;

End.

