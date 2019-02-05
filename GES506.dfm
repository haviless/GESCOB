object FVisRepBas: TFVisRepBas
  Left = 228
  Top = 104
  Width = 824
  Height = 578
  Caption = 'Visualizar Reporte Base'
  Color = 10207162
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel4: TPanel
    Left = 0
    Top = 0
    Width = 816
    Height = 129
    Align = alTop
    BevelOuter = bvNone
    ParentColor = True
    TabOrder = 0
    object lblPeriodoProcesado: TLabel
      Left = 0
      Top = 0
      Width = 816
      Height = 16
      Align = alTop
      Caption = ' Periodo Procesado'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 5
      Top = 50
      Width = 99
      Height = 16
      Caption = 'Departamento'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 38
      Top = 76
      Width = 66
      Height = 16
      Caption = 'Provincia'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 54
      Top = 101
      Width = 50
      Height = 16
      Caption = 'Distrito'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblFechaProceso: TLabel
      Left = 0
      Top = 16
      Width = 816
      Height = 16
      Align = alTop
      Caption = ' Fecha de Proceso'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Bevel1: TBevel
      Left = 0
      Top = 32
      Width = 816
      Height = 1
      Align = alTop
    end
    object cboDist: TwwDBLookupComboDlg
      Left = 109
      Top = 97
      Width = 73
      Height = 24
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      CharCase = ecUpperCase
      GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
      GridColor = clWhite
      GridTitleAlignment = taLeftJustify
      Caption = 'Lookup'
      MaxWidth = 0
      MaxHeight = 209
      LookupField = 'ZIPID'
      MaxLength = 4
      ParentFont = False
      TabOrder = 2
      AutoDropDown = True
      ShowButton = True
      AllowClearKey = False
      OnExit = cboDistExit
    end
    object cboProv: TwwDBLookupComboDlg
      Left = 109
      Top = 72
      Width = 73
      Height = 24
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      CharCase = ecUpperCase
      GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
      GridColor = clWhite
      GridTitleAlignment = taLeftJustify
      Caption = 'Lookup'
      MaxWidth = 0
      MaxHeight = 209
      LookupField = 'CIUDID'
      MaxLength = 4
      ParentFont = False
      TabOrder = 1
      AutoDropDown = True
      ShowButton = True
      AllowClearKey = False
      OnExit = cboProvExit
    end
    object cboDpto: TwwDBLookupComboDlg
      Left = 109
      Top = 47
      Width = 73
      Height = 24
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      CharCase = ecUpperCase
      GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
      GridColor = clWhite
      GridTitleAlignment = taLeftJustify
      Caption = 'Lookup'
      MaxWidth = 0
      MaxHeight = 209
      LookupField = 'DPTOID'
      MaxLength = 3
      ParentFont = False
      TabOrder = 0
      AutoDropDown = True
      ShowButton = True
      AllowClearKey = False
      OnExit = cboDptoExit
    end
    object txtDpto: TEdit
      Left = 183
      Top = 47
      Width = 190
      Height = 24
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 4
    end
    object txtProv: TEdit
      Left = 183
      Top = 72
      Width = 190
      Height = 24
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 5
    end
    object txtDist: TEdit
      Left = 183
      Top = 97
      Width = 190
      Height = 24
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 6
    end
    object btnFiltrar: TBitBtn
      Left = 378
      Top = 89
      Width = 100
      Height = 32
      Hint = 'Filtrar Datos'
      Caption = 'Filtrar'
      TabOrder = 3
      OnClick = btnFiltrarClick
      Glyph.Data = {
        E6040000424DE604000000000000360000002800000014000000140000000100
        180000000000B0040000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5656604747000D0D0BFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF42425CFFFF001A1A0DFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFEEEEF0696987CCCC443F3F00CDCDDEFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFEEEEF064646BFFFF81E5E565A5A547353500CCCCD7FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF50
        506FFFFF7CFFFF81E7E75CABAB67A3A345383800D3D3E3FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9E9EC575763FFFF89FFFF
        92FFFF96E2E26BBBBB70A7A771A8A849262600D4D4E4FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF676769FFFF84EEEE79F0F089EEEE87
        C8C85AA9A95F96965D99995BA7A73E444400D3D3D6FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF00000698985F73735816162A1818265656637C7C8783
        838B303037121220191900454500000000D4D4DEFFFFFFFFFFFFFFFFFFFFFFFF
        FBFBFF1F1F0D5A5A003737009696A2E9E9E9EFEFEFD9D9D9B5B5B5C8C8C88E8E
        8E85858A4444078080008181003D3D00CCCCD7FFFFFFFFFFFFF9F9FE3A3A1288
        88009494004D4D38DADADED8D8D8CACACAABABABACACACF1F1F1424242B5B5B5
        1B1B339A9A008787008F8F00424200D1D1D8FFFFFFECECF31E1E009595006262
        00818190B7B7B7A9A9A9D1D1D1D6D6D6D4D4D4E4E4E44E4E4EABABABBBBBC10B
        0B009393008B8B005A5A00A0A0ABFFFFFFFFFFFF737370707000242400C5C5CA
        AEAEAED7D7D7DADADAD3D3D3DADADADCDCDC747474D5D5D5A5A5A76262636C6C
        007575004B4B32FDFDFFFFFFFFFFFFFFFFFFFF666673737379CBCBCBC9C9C9EF
        EFEFBFBFBFC1C1C1F0F0F0373737FCFCFCD5D5D5A0A0A08484893D3D09727285
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF424242E1E1E1D3D3D3E9E9E9A8A8A8BBBB
        BBBCBCBCC3C3C3242424F2F2F2E6E6E6C5C5C5AAAAAA2B2B31FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFA9A9A9B0B0B0EBEBEBDFDFDFFFFFFFBDBDBD4B4B4B5A5A5A
        000000D2D2D2EDEDEDEEEEEEF8F8F8CCCCCC606060B5B5B5FFFFFFFFFFFFFFFF
        FFFFFFFF7A7A7A7777770606062828281A1A1A737373AFAFAFACACACFFFFFFFF
        FFFF9393937A7A7A6565654545455E5E5E323232FFFFFFFFFFFFFFFFFFF3F3F3
        3939396E6E6EB1B1B1AFAFAFACACACC5C5C5ACACAC1C1C1C3D3D3D484848C9C9
        C9BEBEBEF4F4F4FFFFFFE2E2E2484848E8E8E8FFFFFFFFFFFFFDFDFD4848483B
        3B3BA7A7A7AAAAAAA8A8A8D9D9D9EAEAEAF3F3F3EEEEEEFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF626262FAFAFAFFFFFFFFFFFFFFFFFFFFFFFFCACACA2B2B
        2B7D7D7D818181E1E1E1F7F7F7F4F4F4EBEBEBFFFFFFE9E9E9BCBCBCCBCBCB30
        3030474747FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA0A0A0
        A2A2A24444444646464545454E4E4E4949497C7C7CA5A5A5969696FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF}
    end
    object dbgExcel: TDBGrid
      Left = 512
      Top = 48
      Width = 168
      Height = 72
      TabOrder = 7
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Visible = False
    end
  end
  object dbgPrincipal: TwwDBGrid
    Left = 0
    Top = 129
    Width = 816
    Height = 372
    DisableThemesInTitle = False
    Selected.Strings = (
      'PERIODO'#9'8'#9'Periodo'
      'ASODNI'#9'8'#9'D.N.I.'
      'ASOCODMOD'#9'10'#9'COD.MOD'
      'ASOAPENOMDNI'#9'20'#9'ASOCIADO'
      'ZIPID'#9'8'#9'UBIGEO'
      'DEPARTAMENTO'#9'8'#9'DEPARTAMENTO'
      'PROVINCIA'#9'8'#9'PROVINCIA'
      'DISTRITO'#9'8'#9'DISTRITO'
      'ASODIR'#9'8'#9'DIRECCION'
      'ASOTIPID'#9'8'#9'TIP.ASO'
      'UPROID'#9'8'#9'U.PROC.ID'
      'UPRONOM'#9'8'#9'U.PROC.DES'
      'UPAGOID'#9'8'#9'U.PAGO ID'
      'UPAGONOM'#9'8'#9'U.PAGO DES'
      'USEID'#9'8'#9'UGEL ID'
      'USENOM'#9'8'#9'UGEL DES'
      'REGPENID'#9'8'#9'REG.PEN.ID'
      'REGPENDES'#9'8'#9'REG.PEN.DES'
      'CFC_PERIODO_01'#9'8'#9'CARTERA.PERIODO.01'
      'CFC_F_01'#9'8'#9'CARTERA.CAL.ID.01'
      'CFC_CFCDES_F_01'#9'8'#9'CARTERA.CAL.DES.01'
      'CFC_SALDOS_FV_01'#9'8'#9'CARTERA.SAL.VENCIDO.01'
      'CFC_SALDOS_FT_01'#9'8'#9'CARTERA.SAL.TOTAL.01'
      'CFC_PERIODO_02'#9'8'#9'CARTERA.PERIODO.02'
      'CFC_F_02'#9'8'#9'CARTERA.CAL.ID.02'
      'CFC_CFCDES_F_02'#9'8'#9'CARTERA.CAL.DES.02'
      'CFC_SALDOS_FV_02'#9'8'#9'CARTERA.SAL.VENCIDO.02'
      'CFC_SALDOS_FT_02'#9'8'#9'CARTERA.SAL.TOTAL.02'
      'CFC_PERIODO_03'#9'8'#9'CARTERA.PERIODO.03'
      'CFC_F_03'#9'8'#9'CARTERA.CAL.ID.03'
      'CFC_CFCDES_F_03'#9'8'#9'CARTERA.CAL.DES.03'
      'CFC_SALDOS_FV_03'#9'8'#9'CARTERA.SAL.VENCIDO.03'
      'CFC_SALDOS_FT_03'#9'8'#9'CARTERA.SAL.TOTAL.03'
      'GES_PERIODO_01'#9'8'#9'GESTION.PERIODO.01'
      'GES_TIPO_GESTION_01'#9'8'#9'GESTION.TIPO.GESTION.01'
      'GES_TIPO_GESTOR_01'#9'8'#9'GESTION.TIPO.GESTOR.01'
      'GES_CODIGO_01'#9'8'#9'GESTION.CODIGO.01'
      'GES_FECHA_01'#9'8'#9'GESTION.FECHA.01'
      'GES_GESTOR_01'#9'8'#9'GESTION.GESTOR.01'
      'GES_RESULTADO_01'#9'8'#9'GESTION.RESULTADO.01'
      'GES_PERIODO_02'#9'8'#9'GESTION.PERIODO.02'
      'GES_TIPO_GESTION_02'#9'8'#9'GESTION.TIPO.GESTION.02'
      'GES_TIPO_GESTOR_02'#9'8'#9'GESTION.TIPO.GESTOR.02'
      'GES_CODIGO_02'#9'8'#9'GESTION.CODIGO.02'
      'GES_FECHA_02'#9'8'#9'GESTION.FECHA.02'
      'GES_GESTOR_02'#9'8'#9'GESTION.GESTOR.02'
      'GES_RESULTADO_02'#9'8'#9'GESTION.RESULTADO.02'
      'GES_PERIODO_03'#9'8'#9'GESTION.PERIODO.03'
      'GES_TIPO_GESTION_03'#9'8'#9'GESTION.TIPO.GESTION.03'
      'GES_TIPO_GESTOR_03'#9'8'#9'GESTION.TIPO.GESTOR.03'
      'GES_CODIGO_03'#9'8'#9'GESTION.CODIGO.03'
      'GES_FECHA_03'#9'8'#9'GESTION.FECHA.03'
      'GES_GESTOR_03'#9'8'#9'GESTION.GESTOR.03'
      'GES_RESULTADO_03'#9'8'#9'GESTION.RESULTADO.03'
      'ING_PERIODO_01'#9'8'#9'INGRESO.PERIODO.01'
      'ING_CANDIF_01'#9'8'#9'INGRESO.CANT.DIFERIDO.01'
      'ING_SALDIF_01'#9'8'#9'INGRESO.SAL.DIFERIDO.01'
      'ING_TOTBAN_01'#9'8'#9'INGRESO.BANCO.01'
      'ING_TOTEFE_01'#9'8'#9'INGRESO.EFECTIVO.01'
      'ING_TOTPLA_01'#9'8'#9'INGRESO.PLANILLA.01'
      'ING_TOTREF_01'#9'8'#9'INGRESO.REF.01'
      'ING_TOTNAB_01'#9'8'#9'INGRESO.NOTA.ABONO.01'
      'ING_TOTBEN_01'#9'8'#9'INGRESO.BENEFICIO.01'
      'ING_VALCUO_01'#9'8'#9'VALOR.CUOTA.01'
      'ING_SALVEN_01'#9'8'#9'MONTO.SALDO.VENCIDO.01'
      'ING_CANVEN_01'#9'8'#9'CUOTAS.SALDO.VENCIDO.01'
      'ING_SALPEN_01'#9'8'#9'MONTO.SALDO.PENDIENTE.01'
      'ING_CANPEN_01'#9'8'#9'CUOTAS.SALDO.PENDIENTE.01'
      'ING_MONCUOPAG_01'#9'8'#9'MONTO.CUOTAS.PAGADAS.01'
      'ING_CANCUOPAG_01'#9'8'#9'CANTIDAD.CUOTAS.PAGADAS.01'
      'ING_NUMCREPENPAG_01'#9'8'#9'NUMERO.CREDITOS.01'
      'ING_PERIODO_02'#9'8'#9'INGRESO.PERIODO.02'
      'ING_CANDIF_02'#9'8'#9'INGRESO.CANT.DIFERIDO.02'
      'ING_SALDIF_02'#9'8'#9'INGRESO.SAL.DIFERIDO.02'
      'ING_TOTBAN_02'#9'8'#9'INGRESO.BANCO.02'
      'ING_TOTEFE_02'#9'8'#9'INGRESO.EFECTIVO.02'
      'ING_TOTPLA_02'#9'8'#9'INGRESO.PLANILLA.02'
      'ING_TOTREF_02'#9'8'#9'INGRESO.REF.02'
      'ING_TOTNAB_02'#9'8'#9'INGRESO.NOTA.ABONO.02'
      'ING_TOTBEN_02'#9'8'#9'INGRESO.BENEFICIO.02'
      'ING_VALCUO_02'#9'8'#9'VALOR.CUOTA.02'
      'ING_SALVEN_02'#9'8'#9'MONTO.SALDO.VENCIDO.02'
      'ING_CANVEN_02'#9'8'#9'CUOTAS.SALDO.VENCIDO.02'
      'ING_SALPEN_02'#9'8'#9'MONTO.SALDO.PENDIENTE.02'
      'ING_CANPEN_02'#9'8'#9'CUOTAS.SALDO.PENDIENTE.02'
      'ING_MONCUOPAG_02'#9'8'#9'MONTO.CUOTAS.PAGADAS.02'
      'ING_CANCUOPAG_02'#9'8'#9'CANTIDAD.CUOTAS.PAGADAS.02'
      'ING_NUMCREPENPAG_02'#9'8'#9'NUMERO.CREDITOS.02'
      'ING_PERIODO_03'#9'8'#9'INGRESO.PERIODO.03'
      'ING_CANDIF_03'#9'8'#9'INGRESO.CANT.DIFERIDO.03'
      'ING_SALDIF_03'#9'8'#9'INGRESO.SAL.DIFERIDO.03'
      'ING_TOTBAN_03'#9'8'#9'INGRESO.BANCO.03'
      'ING_TOTEFE_03'#9'8'#9'INGRESO.EFECTIVO.03'
      'ING_TOTPLA_03'#9'8'#9'INGRESO.PLANILLA.03'
      'ING_TOTREF_03'#9'8'#9'INGRESO.REF.03'
      'ING_TOTNAB_03'#9'8'#9'INGRESO.NOTA.ABONO.03'
      'ING_TOTBEN_03'#9'8'#9'INGRESO.BENEFICIO.03'
      'ING_VALCUO_03'#9'8'#9'VALOR.CUOTA.03'
      'ING_SALVEN_03'#9'8'#9'MONTO.SALDO.VENCIDO.03'
      'ING_CANVEN_03'#9'8'#9'CUOTAS.SALDO.VENCIDO.03'
      'ING_SALPEN_03'#9'8'#9'MONTO.SALDO.PENDIENTE.03'
      'ING_CANPEN_03'#9'8'#9'CUOTAS.SALDO.PENDIENTE.03'
      'ING_MONCUOPAG_03'#9'8'#9'MONTO.CUOTAS.PAGADAS.03'
      'ING_CANCUOPAG_03'#9'8'#9'CANTIDAD.CUOTAS.PAGADAS.03'
      'ING_NUMCREPENPAG_03'#9'8'#9'NUMERO.CREDITOS.03')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowFooter]
    ParentFont = False
    ReadOnly = True
    TabOrder = 1
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
    TitleLines = 2
    TitleButtons = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 501
    Width = 816
    Height = 43
    Align = alBottom
    ParentColor = True
    TabOrder = 2
    DesignSize = (
      816
      43)
    object lblNroRegistros: TLabel
      Left = 16
      Top = 16
      Width = 59
      Height = 13
      Caption = 'N'#176' Registros'
    end
    object btnSalir: TBitBtn
      Left = 712
      Top = 7
      Width = 100
      Height = 32
      Hint = 'Salir'
      Anchors = [akTop, akRight]
      Caption = '&Salir'
      TabOrder = 0
      OnClick = btnSalirClick
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00388888888877
        F7F787F8888888888333333F00004444400888FFF444448888888888F333FF8F
        000033334D5007FFF4333388888888883338888F0000333345D50FFFF4333333
        338F888F3338F33F000033334D5D0FFFF43333333388788F3338F33F00003333
        45D50FEFE4333333338F878F3338F33F000033334D5D0FFFF43333333388788F
        3338F33F0000333345D50FEFE4333333338F878F3338F33F000033334D5D0FFF
        F43333333388788F3338F33F0000333345D50FEFE4333333338F878F3338F33F
        000033334D5D0EFEF43333333388788F3338F33F0000333345D50FEFE4333333
        338F878F3338F33F000033334D5D0EFEF43333333388788F3338F33F00003333
        4444444444333333338F8F8FFFF8F33F00003333333333333333333333888888
        8888333F00003333330000003333333333333FFFFFF3333F00003333330AAAA0
        333333333333888888F3333F00003333330000003333333333338FFFF8F3333F
        0000}
      NumGlyphs = 2
    end
    object btnExportar: TBitBtn
      Left = 608
      Top = 7
      Width = 100
      Height = 32
      Anchors = [akTop, akRight]
      Caption = 'Exportar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = btnExportarClick
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000010000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DDDDDDDDDDDD
        DDDDDDDDDDDDDDDDDDDDDDDDDDDDDD00000DD00000000006660DD08888880E00
        000DD000000000EEE080DD07778E0EEE0080DDD078E0EEE07700DDDD0E0EEE00
        0000DDD0E0EEE080DDDDDD0E0EEE07080DDDD0E0EEE0777080DD0E0EEE0D0777
        080D00EEE0DDD077700D00000DDDDD00000DDDDDDDDDDDDDDDDD}
      Spacing = 2
    end
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 152
    Top = 296
    object ClientDataSet1DDDDDD: TDateTimeField
      FieldName = 'DDDDDD'
    end
  end
end
