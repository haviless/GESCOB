// Inicio Uso Estándares: 01/08/2011
// Unidad : Gestión de Cobranzas
// Formulario : TFMantControlCampanhas
// Fecha de Creación : 20/12/2011
// Autor : Equipo de Sistemas
// Objetivo : Mantenimiento de Indicadores de Control de Campañas
// Actualizaciones:
// HPC_201121_GESCOB 20/12/2011 Indicadores de Control de Campañas
// HPC_201202_GESCOB 27/01/2012 Colocar Matriz de Prioridades
// HPC_201205_GESCOB 11/04/2012 cambiar etiqueta de "periodo de cartera" a "periodo de gestion"
// DPP_201205_GESCOB: Pase a producción a partir de los pases HPC_201205 y HPC_201206 
// HPC_201301_GESCOB Se cambian los Parametros de las metas
// SPP_201301_GESCOB: El pase a producción se realiza de acuerdo al HPC_201301_GESCOB

Unit GES526;

Interface

Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, GESDM1, ExtCtrls, StdCtrls, Buttons, ComCtrls, StrUtils,
   wwdblook, Wwdbdlg, DBCtrls;

Type
   TFMantControlCampanhas = Class(TForm)
      pnlControles : TPanel;
      btnSalir : TBitBtn;
      btnGrabar : TBitBtn;
      Label1 : TLabel;
      edtCampanha : TEdit;
      gbFechas : TGroupBox;
      Label2 : TLabel;
      dtpFInicio : TDateTimePicker;
      Label3 : TLabel;
      dtpFFin : TDateTimePicker;
      gbPeriodoCartera : TGroupBox;
      gbMetas : TGroupBox;
      edtMetSalEfeBan : TEdit;
      edtMetSalRef : TEdit;
      Label6 : TLabel;
      Label7 : TLabel;
      cboPeriodoCartera : TwwDBLookupCombo;
      Procedure btnSalirClick(Sender : TObject);
      Procedure btnGrabarClick(Sender : TObject);
      Procedure FormCreate(Sender : TObject);
// Inicio: SPP_201301_GESCOB
    procedure dtpFInicioExit(Sender: TObject);
// Fin: SPP_201301_GESCOB
   Private
      xsFechaSistema : TDate;
   Public
      tmFormulario : TMFormulario;
      xnIdConCam : integer;
      xnCarteraAnhoMin : integer;
   End;

Var
   FMantControlCampanhas : TFMantControlCampanhas;

Implementation

{$R *.dfm}

//******************************************************************************
// Nombre : btnSalirClick
// Descripcion : Salir
//******************************************************************************

Procedure TFMantControlCampanhas.btnSalirClick(Sender : TObject);
Begin
   self.ModalResult := mrCancel;
End;

//******************************************************************************
// Nombre : btnGrabarClick
// Descripcion : Grabar Campaña
//******************************************************************************

Procedure TFMantControlCampanhas.btnGrabarClick(Sender : TObject);
Var
   xsSQL : String;
  (****************************************************************************)

   Function fn_datos_validos() : boolean;
   Var
      xnMeta : Double;
   Begin
      result := false;
      edtCampanha.Text := trim(edtCampanha.Text);
      edtMetSalRef.Text := AnsiReplaceStr(trim(edtMetSalRef.Text), ',', '');
      edtMetSalEfeBAn.Text := AnsiReplaceStr(trim(edtMetSalEfeBAn.Text), ',', '');

      If (edtCampanha.Text = '') Then
      Begin
         MessageDlg('Ingrese un nombre o descripcion para la campaña', mtInformation, [mbOk], 0);
         edtCampanha.SetFocus;
         Exit;
      End;

      If (dtpFInicio.Date > dtpFFin.Date) Then
      Begin
         MessageDlg('La Fecha de Inicio debe ser menor que la Fecha de Fin', mtInformation, [mbOk], 0);
         dtpFInicio.SetFocus;
         Exit;
      End;
      // Inicio: SPP_201301_GESCOB Se cambian los Parametros de las metas
      {If (cboPeriodoCartera.Text = '') Then
      Begin
         MessageDlg('Seleccione un Periodo de Cartera para la campaña', mtInformation, [mbOk], 0);
         cboPeriodoCartera.SetFocus;
         Exit;
      End;
      }
      // Fin: SPP_201301_GESCOB Se cambian los Parametros de las metas

      If Not (TryStrToFloat(edtMetSalRef.Text, xnMeta)) Then
      Begin
         MessageDlg('Ingrese un monto valido para la Meta de Saldo Refinanciado', mtInformation, [mbOk], 0);
         edtMetSalRef.SetFocus;
         Exit;
      End;
      edtMetSalRef.Text := FloatToStr(xnMeta);

      If Not (TryStrToFloat(edtMetSalEfeBAn.Text, xnMeta)) Then
      Begin
         MessageDlg('Ingrese un monto valido para la Meta de Saldo EFE/BAN', mtInformation, [mbOk], 0);
         edtMetSalEfeBAn.SetFocus;
         Exit;
      End;
      edtMetSalEfeBAn.Text := FloatToStr(xnMeta);

      result := true;
   End;
Begin
   If fn_datos_validos() Then
   Begin
      If self.tmFormulario = tmAdd Then
         xsSQL := 'DECLARE '
            + '       XNIDCONCAM NUMBER;  '
            + '    BEGIN '
            + '       SELECT NVL(MAX(IDCONCAM), 0) + 1 '
            + '         INTO XNIDCONCAM '
            + '         FROM GES_COB_CON_CAM;  '
            + '       INSERT INTO GES_COB_CON_CAM (IDCONCAM, NOMCAM, '
            + '            FECINI, FECFIN, PERCAR, METSALEFEBAN, METSALREF, '
            + '            ESTADO, USERID, FREG, UREG) '
            + '       VALUES (XNIDCONCAM, ' + QuotedStr(edtCampanha.Text) + ', '
            + '               ' + QuotedStr(DateToStr(dtpFInicio.Date)) + ', '
            + '               ' + QuotedStr(DateToStr(dtpFFin.Date)) + ', '
            + '               ' + QuotedStr(cboPeriodoCartera.Text) + ','
            + '               ROUND(' + edtMetSalEfeBan.Text + ',2), ROUND(' + edtMetSalRef.Text + ',2), '
            + '               ''ACTIVA'', ' + QuotedStr(DM1.wUsuario) + ', SYSDATE, ' + QuotedStr(DM1.wUsuario) + '); '
            + '       COMMIT; '
            + '    END;'
      Else
         xsSQL := 'UPDATE GES_COB_CON_CAM '
            + '       SET NOMCAM = ' + QuotedStr(edtCampanha.Text)
            + '          ,FECINI = ' + QuotedStr(DateToStr(dtpFInicio.Date))
            + '          ,FECFIN = ' + QuotedStr(DateToStr(dtpFFin.Date))
            + '          ,PERCAR = ' + QuotedStr(cboPeriodoCartera.Text)
            + '          ,METSALEFEBAN = ROUND(' + edtMetSalEfeBan.Text + ',2)'
            + '          ,METSALREF = ROUND(' + edtMetSalRef.Text + ',2)'
            + '          ,USERID = ' + QuotedStr(DM1.wUsuario)
            + '          ,FREG = SYSDATE'
            + '          ,UREG =  ' + QuotedStr(DM1.wUsuario)
            + '     WHERE IDCONCAM = ' + IntToStr(Self.xnIdConCam);

      DM1.DCOM1.AppServer.EjecutaSql(xsSQL);
      self.ModalResult := mrOk;
   End;
End;

//******************************************************************************
// Nombre : FormCreate
// Descripcion : Llenar controles de opciones de campaña
//******************************************************************************

Procedure TFMantControlCampanhas.FormCreate(Sender : TObject);
Var
   xni : integer;
   xsSQL : String;
Begin
   Screen.Cursor := crHourGlass;
   xsFechaSistema := DM1.FechaSys;

   // Inicio: SPP_201301_GESCOB Se cambian los Parametros de las metas
   xsSQL := 'SELECT DISTINCT PERIODO'
      + '      FROM GES_COB_CFC000_CAB ' // SE PODRIA CAMBIAR POR GES000
      + '     ORDER BY PERIODO DESC';
   DM1.cdsQry3.Close;
   DM1.cdsQry3.DataRequest(xsSQL);
   DM1.cdsQry3.Open;
   cboPeriodoCartera.LookupTable := DM1.cdsQry3;
   cboPeriodoCartera.LookupField := 'PERIODO';
   cboPeriodoCartera.Text        := DM1.cdsQry3.FieldByName('PERIODO').AsString;
   // Fin: SPP_201301_GESCOB Se cambian los Parametros de las metas

   cboPeriodoCartera.Selected.Clear;
   cboPeriodoCartera.Selected.Add('PERIODO'#9'8'#9'Periodo');

   // limpiar controles
   xnIdConCam := 0;
   edtCampanha.Text := '';
   dtpFInicio.Date := xsFechaSistema;

   // Inicio: SPP_201301_GESCOB Se cambian los Parametros de las metas
   DM1.cdsQry15.Close;
   DM1.cdsQry15.DataRequest('select last_day('''+DATETOSTR(dtpFInicio.Date)+''') FECFIN from dual' );
   DM1.cdsQry15.Open;
   dtpFFin.Date := DM1.cdsQry15.FieldbyName('FECFIN').AsDateTIME;
   // Fin: SPP_201301_GESCOB Se cambian los Parametros de las metas

   edtMetSalRef.Text := '0.00';
   edtMetSalEfeBAn.Text := '0.00';
   Screen.Cursor := crDefault;

End;

procedure TFMantControlCampanhas.dtpFInicioExit(Sender: TObject);
begin
   // Inicio: SPP_201301_GESCOB Se cambian los Parametros de las metas
   DM1.cdsQry15.Close;
   DM1.cdsQry15.DataRequest('select last_day('''+DATETOSTR(dtpFInicio.Date)+''') FECFIN from dual' );
   DM1.cdsQry15.Open;
   dtpFFin.Date := DM1.cdsQry15.FieldbyName('FECFIN').AsDateTIME;
   // Fin: SPP_201301_GESCOB Se cambian los Parametros de las metas
end;

End.

