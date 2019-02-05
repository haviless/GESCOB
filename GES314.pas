// Inicio Uso Estándares: 01/08/2011
// Unidad : Gestión de Cobranzas
// Formulario : FProgProcCon
// Fecha de Creación :
// Autor : Equipo de Sistemas
// Objetivo : Agregar o Modificar Proceso Nocturno de carga de datos para reporte de Consolidado
// Actualizaciones:
Unit GES314;

Interface

Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, ComCtrls, StdCtrls, ExtCtrls, Buttons, DateUtils;

Type
   TFProgProcCon = Class(TForm)
      Panel1 : TPanel;
      Label1 : TLabel;
      dtpFInicio : TDateTimePicker;
      dtpFFin : TDateTimePicker;
      btnProgramar : TBitBtn;
      btnSalir : TBitBtn;
      Procedure btnSalirClick(Sender : TObject);
      Procedure btnProgramarClick(Sender : TObject);
      Procedure FormCreate(Sender : TObject);
   Private
    { Private declarations }
   Public
      xnCodPro : Integer;
   End;

Var
   FProgProcCon : TFProgProcCon;

Implementation

Uses GESDM1;

{$R *.dfm}

//******************************************************************************
// Nombre : FormCreate
// Descripcion : inicializar controles
//******************************************************************************

Procedure TFProgProcCon.FormCreate(Sender : TObject);
Begin
   dtpFInicio.Date := DM1.FechaSys;
   dtpFFin.Date := DM1.FechaSys;
   dtpFInicio.MaxDate := dtpFFin.Date;
   dtpFFin.MaxDate := dtpFFin.Date
End;

//******************************************************************************
// Nombre : btnProgramarClick
// Descripcion : inicializar controles
//******************************************************************************

Procedure TFProgProcCon.btnProgramarClick(Sender : TObject);
Var
   xsSQL : String;
Begin

   If (dtpFInicio.Date > dtpFFin.Date) Then
   Begin
      ShowMessage('La fecha de Fin debe ser mayor a la Fecha de Inicio');
      exit;
   End;

   If ((DaysBetween(dtpFFin.Date, dtpFInicio.Date) + 1) > 45) Then
   Begin
      ShowMessage('Solo puede seleccionar como maximo 45 dias de diferencia entre las fechas');
      exit;
   End;

   If self.xnCodPro > 0 Then
   Begin
      xsSQL := 'UPDATE GES_COB_PRO_REP_CON '
         + '      SET USUPRO = ' + QuotedStr(DM1.wUsuario)
         + '         ,FECPRO = SYSDATE '
         + '         ,FECINIRAN = ' + QuotedStr(DateToStr(dtpFInicio.Date))
         + '         ,FECFINRAN = ' + QuotedStr(DateToStr(dtpFFin.Date))
         + '         ,ESTADO = ''PROGRAMADO'''
         + '    WHERE CODPRO = ' + IntToStr(xnCodPro);
   End
   Else
   Begin
      xsSQL := 'SELECT (NVL(MAX(CODPRO),0) + 1) CODPRO FROM GES_COB_PRO_REP_CON';
      DM1.cdsQry3.Close;
      DM1.cdsQry3.DataRequest(xsSQL);
      DM1.cdsQry3.Open;
      xnCodPro := DM1.cdsQry3.fieldbyname('CODPRO').Value;
      DM1.cdsQry3.Close;

      xsSQL := 'INSERT INTO GES_COB_PRO_REP_CON(CODPRO, USUPRO, FECPRO, '
         + '                                   FECINIRAN, FECFINRAN, '
         + '                                   ESTADO) '
         + '           VALUES(' + IntToStr(xnCodPro) + ',' + QuotedStr(DM1.wUsuario) + ', SYSDATE,'
         + '                  ' + QuotedStr(DateToStr(dtpFInicio.Date)) + ',' + QuotedStr(DateToStr(dtpFFin.Date)) + ','
         + '                  ''PROGRAMADO'')';
   End;
   DM1.DCOM1.AppServer.EjecutaSql(xsSQL);
   Close;
End;

//******************************************************************************
// Nombre : btnSalirClick
// Descripcion : cerrar formulario
//******************************************************************************

Procedure TFProgProcCon.btnSalirClick(Sender : TObject);
Begin
   close;
End;
(******************************************************************************)

End.

