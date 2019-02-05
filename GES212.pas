// Inicio Uso Estándares: 01/08/2011
// Unidad : Gestión de Cobranzas
// Formulario : TFGenPeriodo
// Fecha de Creación :
// Autor : Equipo de Sistemas
// Objetivo : Cambiar periodo de Gestiones
// Actualizaciones:
// HPC_201201_GESCOB 09/01/2012 Cierre Automatico de Periodo - Fin de Mes
// HPC_201202_GESCOB 27/01/2012 Colocar Matriz de Prioridades
// HPC_201203_GESCOB 03/02/2012 asegurar que se pueda crear el univeso cuando no hay data en la ges_cob_cab
// HPC_201205_GESCOB 28/06/2012 validar el formulario para que no se pueda generar el periodo mientras no se termine de procesa o crear el universo de asociados a gestionar
// DPP_201205_GESCOB: Pase a producción a partir de los pases HPC_201205 y HPC_201206

Unit GES212;

Interface

Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, wwdblook, Buttons, ExtCtrls, db;

Type
   TFGenPeriodo = Class(TForm)
      pAsigna : TPanel;
      lblTipGest : TLabel;
      BitAsigna : TBitBtn;
      dblcPeriodo : TwwDBLookupCombo;
      BitSalir : TBitBtn;
      Procedure FormActivate(Sender : TObject);
      Procedure BitAsignaClick(Sender : TObject);
      Procedure BitSalirClick(Sender : TObject);
      Procedure dblcPeriodoNotInList(Sender : TObject; LookupTable : TDataSet;
         NewValue : String; Var Accept : Boolean);
      Procedure FormClose(Sender : TObject; Var Action : TCloseAction);
   Private
    { Private declarations }
   Public
    { Public declarations }
   End;

Var
   FGenPeriodo : TFGenPeriodo;

Implementation

Uses GESDM1;

{$R *.dfm}

Procedure TFGenPeriodo.FormActivate(Sender : TObject);
Var
   xSQL : String;
Begin
   xSQL := 'SELECT MAX(PERIODO) PERIODO '
      + '     FROM (SELECT NVL(MAX(PERIODO),''200001'') PERIODO  '
      + '             FROM GES_COB_CAB '
      + '            UNION '
      + '           SELECT MAX(PER_CIERRE) PERIODO '
      + '             FROM GES_COB_CIERRE_MES) ';
   DM1.cdsQry1.Close;
   DM1.cdsQry1.DataRequest(xSQL);
   DM1.cdsQry1.Open;
   // INICIO: DPP_201205_GESCOB
   // EVITAR QUE MUESTRE PERIODOS QUE AUN SE ESTAN PROCESANDO
   xSQL :=
      'SELECT DISTINCT PERIODO '
      + '  FROM (SELECT PERIODO, '
      + '                SUM(CASE WHEN CODIGO_REGLA IS NULL THEN 1 ELSE 0 END) CODIGO_REGLA_NULL '
      + '           FROM GES000 '
      + '          WHERE PERIODO >' + QuotedStr(DM1.cdsQry1.Fieldbyname('PERIODO').Asstring)
      + '          GROUP BY PERIODO) '
      + ' WHERE CODIGO_REGLA_NULL = 0 ';
   // FIN: DPP_201205_GESCOB
   DM1.cdsQry6.Close;
   DM1.cdsQry6.DataRequest(xSQL);
   DM1.cdsQry6.Open;
End;

Procedure TFGenPeriodo.BitAsignaClick(Sender : TObject);
Var
   xSQL : String;
Begin
   If dblcPeriodo.text = '' Then
   Begin
      ShowMessage('Debe Seleccionar Periodo');
      Exit;
   End;

   If MessageDlg('¿ Seguro de Procesar Nuevo Periodo "' + dblcPeriodo.text + '" de la Gestión de cobranza?', mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
   Begin

      Screen.Cursor := crHourGlass;
      xSQL := 'Begin db2admin.SP_GENERA_DATA_GESCOB( ''' + dblcPeriodo.text + ''' ); end;';
      Try
         DM1.DCOM1.AppServer.EjecutaSql(xSQL);
      Except
         Screen.Cursor := crDefault;
         ShowMessage('Error el Proceso, Avise a Sistemas');
         Exit;
      End;

      Screen.Cursor := crDefault;
      FormActivate(Self);
      ShowMessage('Proceso realizado por el Usuario : ' + DM1.wUsuario + '. de fecha ' + datetostr(date));
   End;
End;

Procedure TFGenPeriodo.BitSalirClick(Sender : TObject);
Begin
   DM1.cdsQry6.Close;
   Close;
End;

Procedure TFGenPeriodo.dblcPeriodoNotInList(Sender : TObject;
   LookupTable : TDataSet; NewValue : String; Var Accept : Boolean);
Begin
   Accept := LookupTable.Locate(TwwDBCustomLookupCombo(Sender).LookupField, NewValue, []);
   If Not Accept Then
      TwwDBCustomLookupCombo(Sender).DropDown;
End;

Procedure TFGenPeriodo.FormClose(Sender : TObject;
   Var Action : TCloseAction);
Begin
   DM1.cdsQry1.Close;
   DM1.cdsQry6.Close;
End;

End.

