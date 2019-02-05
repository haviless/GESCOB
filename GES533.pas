// Inicio Uso Estándares: 01/08/2011
// Unidad : Gestión de Cobranzas
// Formulario : TFConMetGesDetalle
// Fecha de Creación : 19/01/2012
// Autor : Equipo de Sistemas
// Objetivo : Control de Metas por Gestor - Detalle
// Actualizaciones:
// HPC_201201_GESCOB 09/01/2012 Control de Metas por Gestor
// HPC_201301_GESCOB Se cambian los Parametros de las metas
// SPP_201301_GESCOB: El pase a producción se realiza de acuerdo al HPC_201301_GESCOB

Unit GES533;

Interface

Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, Buttons, ExtCtrls, Grids, Wwdbigrd, Wwdbgrid, wwExport, shellapi, db;

Type
   TFConMetGesDetalle = Class(TForm)
      dbgDetalle : TwwDBGrid;
      pnlControles : TPanel;
      lblCantRegistros : TLabel;
      btnExportar : TBitBtn;
      btnSalir : TBitBtn;
      Procedure btnSalirClick(Sender : TObject);
      Procedure FormClose(Sender : TObject; Var Action : TCloseAction);
      Procedure FormShow(Sender : TObject);
      Procedure btnExportarClick(Sender : TObject);
   Private
    { Private declarations }
   Public
      xsUsuario : String;
      xsPeriodo : String;
      xdFecIni : TDate;
      xdFecFin : TDate;
      xlNormal : Boolean;
// Inicio: SPP_201301_GESCOB
      sTipoRep : String;
// Fin: SPP_201301_GESCOB
   End;

Var
   FConMetGesDetalle : TFConMetGesDetalle;

Implementation

Uses GESDM1;

{$R *.dfm}

//******************************************************************************
// Nombre : btnSalirClick
// Descripcion : Cerrar el formulario
//******************************************************************************

Procedure TFConMetGesDetalle.btnSalirClick(Sender : TObject);
Begin
   Close;
End;

//******************************************************************************
// Nombre : FormClose
// Descripcion : Liberar la memoria despues de cerrar el formulario
//******************************************************************************

Procedure TFConMetGesDetalle.FormClose(Sender : TObject;
   Var Action : TCloseAction);
Begin
   Action := caFree;
End;

//******************************************************************************
// Nombre : btnExportarClick
// Descripcion : exportar los datos a excel
//******************************************************************************

Procedure TFConMetGesDetalle.btnExportarClick(Sender : TObject);
Begin
   Screen.Cursor := crHourGlass;
   Try
      With dbgDetalle, dbgDetalle.ExportOptions Do
      Begin
         ExportType := wwgetSYLK;
         FileName := 'DetalleMetasGestor.slk';
         DM1.OpcionesExportExcel(dbgDetalle.ExportOptions);
         dbgDetalle.ExportOptions.TitleName := 'Control';
         Save;
         If Not (esoClipboard In Options) Then
            ShellExecute(Handle, 'Open', PChar(dbgDetalle.exportoptions.Filename), Nil, Nil, sw_shownormal);
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

Procedure TFConMetGesDetalle.FormShow(Sender : TObject);
Var
   xsSQL : String;
Begin
// Inicio: SPP_201301_GESCOB Se cambian los Parametros de las metas
  xsSQL:='SELECT APO.ASODNI, APO.ASOCODMOD, APO.ASOAPENOM, MONTO_EFECTIVO, MONTO_REFI FROM ( '
       + 'SELECT USUARIO, A.ASOID, '
       +     'SUM( CASE WHEN COD_NEG=''02''          and NVL(EFE_PAGO,0)+NVL(BAN_PAGO,0)>0  THEN 1 ELSE 0 END ) + '
       +     'SUM( CASE WHEN NOT COD_NEG IN (''02'') and NVL(EFE_PAGO,0)+NVL(BAN_PAGO,0)>0  THEN 1 ELSE 0 END ) +  '
       +     'SUM( CASE WHEN COD_NEG=''05''     AND NVL(REF_PAGO,0)>0      THEN 1 ELSE 0 END ) +  '
       +     'SUM( CASE WHEN NOT COD_NEG=''05'' AND NVL(REF_PAGO,0)>0      THEN 1 ELSE 0 END ) REGULARIZADOS, '
       +     'SUM( CASE WHEN NVL(EFE_PAGO,0)+NVL(BAN_PAGO,0)>0  THEN NVL(EFE_PAGO,0)+NVL(BAN_PAGO,0) ELSE 0 END ) MONTO_EFECTIVO, '
       +     'SUM( CASE WHEN NVL(REF_PAGO,0)>0                  THEN NVL(REF_PAGO,0) ELSE 0 END ) MONTO_REFI '

       +   'FROM ( SELECT USUARIO, ASOID, SUM( NVL(CONTACTADOS,0) ) CONTACTADOS FROM ( '
       +                   'select DISTINCT A.USUARIO, A.ASOID, 1 CONTACTADOS '
       +                   'from ( '
       +                      'SELECT A.* FROM ( '
       +                         'select A.*, DENSE_RANK() OVER(PARTITION BY USUARIO, ASOID ORDER BY USUARIO, ASOID, FECHA DESC, HORA DESC ) DRNK '
       +                           'from GES_COB_SEG A '
       +                          'where periodo='''+xsPeriodo+''' '
       +                           ' ) A '
       +                     ' WHERE DRNK = 1 ) A, '
       +                         'GES_REF_SEG_DET B '
       +                   'where periodo='''+xsPeriodo+''' '
       +                     'and a.idgestion=b.idgtn(+) and a.idgestiondet=b.idgtndet(+) and b.contactado=''S'' AND NVL(B.DIRECTO,''N'')=''S'' '
       +                   'group by A.USUARIO, A.ASOID ) '
       +          'GROUP BY USUARIO, ASOID '
       +        ') A, '
       +        '( SELECT * FROM ( '
       +               'SELECT A.*, DENSE_RANK() OVER(PARTITION BY GESTOR, ASOID ORDER BY GESTOR, ASOID, CASE WHEN ESTADO=''CUMPLIDO'' THEN 1 ELSE 2 END, FEC_CONTACTO DESC, FREG DESC, COD_COMPROMISO ) DRNK '
       +                 'FROM GES_COB_COMPROMISO A '
       +                'WHERE PERIODO = '''+xsPeriodo+''' '
       +                'ORDER BY ASOID ) '
       +               'WHERE DRNK = 1 '
       +        ') B '
       +  'where A.USUARIO=B.GESTOR(+) AND A.ASOID=B.ASOID(+) '
       +   ' and a.USUARIO = ' + QuotedStr(xsUsuario)
       +  'GROUP BY USUARIO, A.ASOID ';

 if sTipoRep='1' then
 xsSQL:=xsSQL
       +  'HAVING SUM( CASE WHEN NVL(EFE_PAGO,0)+NVL(BAN_PAGO,0)>0  THEN NVL(EFE_PAGO,0)+NVL(BAN_PAGO,0) ELSE 0 END ) >0 ';

 if sTipoRep='2' then
 xsSQL:=xsSQL
       +  'HAVING SUM( CASE WHEN NVL(REF_PAGO,0)>0 THEN NVL(REF_PAGO,0) ELSE 0 END ) >0 ';

 if sTipoRep='3' then
 xsSQL:=xsSQL
       +  'HAVING SUM(CASE WHEN COD_NEG = ''02'' and NVL(EFE_PAGO, 0) + NVL(BAN_PAGO, 0) > 0 THEN 1 ELSE 0 END) + '
       +    'SUM(CASE WHEN NOT COD_NEG IN (''02'') and NVL(EFE_PAGO, 0) + NVL(BAN_PAGO, 0) > 0 THEN 1 ELSE 0 END) + '
       +    'SUM(CASE WHEN COD_NEG = ''05'' AND NVL(REF_PAGO, 0) > 0 THEN 1 ELSE 0 END) + '
       +    'SUM(CASE WHEN NOT COD_NEG = ''05'' AND NVL(REF_PAGO, 0) > 0 THEN 1 ELSE 0 END) =1 ';

 xsSQL:=xsSQL
       +' ) A, APO201 APO '
       +'WHERE A.ASOID=APO.ASOID(+)';

   DM1.cdsQry6.Close;
   DM1.cdsQry6.DataRequest(xsSQL);
   DM1.cdsQry6.Open;
   lblCantRegistros.caption := inttostr(DM1.cdsQry6.RecordCount) + ' Registros';

   dbgDetalle.DataSource := DM1.dsQry6;
   With dbgDetalle, dbgDetalle.DataSource.DataSet Do
   Begin
      Selected.Clear;
      Selected.Add('ASODNI'#9'10'#9'D.N.I.');
      Selected.Add('ASOCODMOD'#9'10'#9'Modular');
      Selected.Add('ASOAPENOM'#9'40'#9'Asociado');
      if (sTipoRep='1') or (sTipoRep='3') then
         Selected.Add('MONTO_EFECTIVO'#9'10'#9'Efectivo/Banco');
      if (sTipoRep='2') or (sTipoRep='3') then
         Selected.Add('MONTO_REFI'#9'10'#9'Refinanciado');
      ApplySelected;
   End;
// Fin: SPP_201301_GESCOB Se cambian los Parametros de las metas
End;

End.

