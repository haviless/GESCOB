// Inicio Uso Estándares: 01/08/2011
// Unidad : Gestión de Cobranzas
// Formulario : fDetSeguimiento
// Fecha de Creación :
// Autor : Equipo de Sistemas
// Objetivo : Seguimiento y control
// Actualizaciones:
// SPP_201401_GESCOB: Importacion masiva interna y Mejoras del proceso de priorizacion
// SPP_201401_GESCOB: Se realiza el pase a producción a partir del HPC_201401_GESCOB

unit GES202;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, Wwdbigrd, Wwdbgrid, ExtCtrls, Buttons, Db;

type
  TfDetSeguimiento = class(TForm)
    lblGestor: TLabel;
    dtgAsignados: TwwDBGrid;
    Label1: TLabel;
    dtgGestionadas: TwwDBGrid;
    dtgContactado: TwwDBGrid;
    Label2: TLabel;
    Label3: TLabel;
    dtgResultados: TwwDBGrid;
    Label4: TLabel;
    lblPonderado: TLabel;
    Shape1: TShape;
    Label5: TLabel;
    Shape2: TShape;
    Label6: TLabel;
    Label7: TLabel;
    btnGestiones: TBitBtn;
    lblGest: TLabel;
    lblPeriodo: TLabel;
    procedure FormActivate(Sender: TObject);
    procedure btnGestionesClick(Sender: TObject);
  private
    { Private declarations }
  public
    xSufijoHis : string;
  end;

var
  fDetSeguimiento: TfDetSeguimiento;

implementation

uses GESDM1, GES207;

{$R *.dfm}

(******************************************************************************)
procedure TfDetSeguimiento.FormActivate(Sender: TObject);
var xTot01,xTot02,xTot03,xTot04:Integer;
    xPago:Currency;
begin

      dtgAsignados.Selected.Clear;
      dtgAsignados.Selected.Add('DISEST'#9'30'#9'Distribucion Estrategica'#9#9);
      dtgAsignados.Selected.Add('DISOPE'#9'30'#9'Distribucion Operativa'#9#9);
      dtgAsignados.Selected.Add('DEUDORES'#9'9'#9'Deudores'#9#9);
      dtgAsignados.ApplySelected;
      dtgAsignados.DataSource := DM1.dsqry5;
      xTot01:=0;
      DM1.cdsQry5.First;
      While Not DM1.cdsQry5.Eof Do
       Begin
          xTot01:=xTot01 + DM1.cdsQry5.FieldByName('DEUDORES').AsInteger;
          DM1.cdsQry5.Next;
      End;
      dtgAsignados.ColumnByName('DISOPE').FooterValue := 'Total';
      dtgAsignados.ColumnByName('DEUDORES').FooterValue := FloatToStrF(xTot01, ffNumber, 7, 0);
      DM1.cdsQry5.First;


      dtgGestionadas.Selected.Clear;
      dtgGestionadas.Selected.Add('DISEST'#9'30'#9'Distribucion Estrategica'#9#9);
      dtgGestionadas.Selected.Add('DISOPE'#9'30'#9'Distribucion Operativa'#9#9);
      dtgGestionadas.Selected.Add('DEUDORES'#9'9'#9'Deudores'#9#9);
      dtgGestionadas.ApplySelected;
      dtgGestionadas.DataSource := DM1.dsQry6;
      xTot02:=0;
      DM1.cdsQry6.First;
      While Not DM1.cdsQry6.Eof Do
       Begin
          xTot02:=xTot02 + DM1.cdsQry6.FieldByName('DEUDORES').AsInteger;
          DM1.cdsQry6.Next;
      End;
      dtgGestionadas.ColumnByName('DISEST').FooterValue := 'Total';
      dtgGestionadas.ColumnByName('DEUDORES').FooterValue := FloatToStrF(xTot02, ffNumber, 7, 0);
      DM1.cdsQry6.First;

      dtgContactado.Selected.Clear;
      dtgContactado.Selected.Add('DISEST'#9'30'#9'Distribucion Estrategica'#9#9);
      dtgContactado.Selected.Add('DISOPE'#9'30'#9'Distribucion Operativa'#9#9);
      dtgContactado.Selected.Add('DEUDORES'#9'9'#9'Deudores'#9#9);
      dtgContactado.ApplySelected;
      dtgContactado.DataSource := DM1.dsQry7;
      xTot03:=0;
      DM1.cdsQry7.First;
      While Not DM1.cdsQry7.Eof Do
       Begin
          xTot03:=xTot03 + DM1.cdsQry7.FieldByName('DEUDORES').AsInteger;
          DM1.cdsQry7.Next;
      End;
      dtgContactado.ColumnByName('DISEST').FooterValue := 'Total';
      dtgContactado.ColumnByName('DEUDORES').FooterValue := FloatToStrF(xTot03, ffNumber, 7, 0);
      DM1.cdsQry7.First;

      dtgResultados.Selected.Clear;
      dtgResultados.Selected.Add('DISEST'#9'30'#9'Distribucion Estrategica'#9#9);
      dtgResultados.Selected.Add('DISOPE'#9'30'#9'Distribucion Operativa'#9#9);
      dtgResultados.Selected.Add('DEUDORES'#9'9'#9'Deudores'#9#9);
      dtgResultados.Selected.Add('EFEBAN'#9'9'#9'Efectivo/Bancos'#9#9);
      dtgResultados.ApplySelected;
      dtgResultados.DataSource := DM1.dsQry8;
      xTot04:=0; xPago:=0;
      DM1.cdsQry8.First;
      While Not DM1.cdsQry8.Eof Do
       Begin
          xTot04:=xTot04 + DM1.cdsQry8.FieldByName('DEUDORES').AsInteger;
          xPago :=xPago  + DM1.cdsQry8.FieldByName('EFEBAN').AsFloat;
          DM1.cdsQry8.Next;
      End;
      dtgResultados.ColumnByName('DISEST').FooterValue := 'Total';
      dtgResultados.ColumnByName('DEUDORES').FooterValue := FloatToStrF(xTot04, ffNumber, 7, 0);
      dtgResultados.ColumnByName('EFEBAN').FooterValue := FloatToStrF(xPago, ffNumber, 7, 2);
      DM1.cdsQry8.First;
end;

(******************************************************************************)
procedure TfDetSeguimiento.btnGestionesClick(Sender: TObject);
var xSQL:String;
begin
      Screen.Cursor := crHourGlass;
      xSQL:='SELECT DESGES,DESGESDET,CONTACTADO,DIRECTO,COUNT(*) GESTIONES '
          + '  FROM (SELECT PERIODO,ASOID,A.FECHA,A.USUARIO,IDGESTION,B.DESCRIPCION DESGES, '
          + '               IDGESTIONDET,C.DESCRIPCION DESGESDET,OFDESID, CONTACTADO,NVL(DIRECTO,''N'') DIRECTO '
          + '          FROM GES_COB_SEG A, GES_REF_SEG B, GES_REF_SEG_DET C '
          + '         WHERE PERIODO= ' + lblPeriodo.Caption
          + '           AND A.USUARIO=' + QuotedStr(lblGest.Caption)
          + '           AND A.IDGESTION = B.IDGTN(+) '
          + '           AND A.IDGESTION=C.IDGTN(+) '
          + '           AND A.IDGESTIONDET=C.IDGTNDET(+) '
          + '           AND ASOID IN (SELECT ASOID '
          + '                           FROM GES_COB_DOM' + xSufijoHis
          + '                          WHERE PERIODO=' + lblPeriodo.Caption
          + '                            AND USUARIO=' + QuotedStr(lblGest.Caption)+')) '
          + ' GROUP BY DESGES,DESGESDET,CONTACTADO,DIRECTO ORDER BY DESGES,DESGESDET ';
      DM1.cdsQry10.Close;
      DM1.cdsQry10.DataRequest(xSQL);
      DM1.cdsQry10.Open;
      TNumericField(DM1.cdsQry10.FieldByName('GESTIONES')).DisplayFormat := '###,##0';
      Screen.Cursor := crDefault;
   Try
      fGestRealizadas := TfGestRealizadas.create(Self);
      fGestRealizadas.ShowModal;
   Finally
      fGestRealizadas.Free;
   End;
end;
(******************************************************************************)

end.
