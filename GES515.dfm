object FCompararTraslados: TFCompararTraslados
  Left = 150
  Top = 131
  Width = 1022
  Height = 554
  Caption = 'Comparar Traslados'
  Color = 10207162
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object gbFiltro: TGroupBox
    Left = 0
    Top = 0
    Width = 1006
    Height = 81
    Align = alTop
    TabOrder = 0
    DesignSize = (
      1006
      81)
    object Label2: TLabel
      Left = 49
      Top = 20
      Width = 94
      Height = 13
      Caption = 'Periodo de Cartera :'
    end
    object Label1: TLabel
      Left = 10
      Top = 53
      Width = 133
      Height = 13
      Caption = 'Periodo de Cartera Anterior :'
    end
    object btnComparar: TBitBtn
      Left = 273
      Top = 16
      Width = 143
      Height = 56
      Hint = 'Comparar'
      Caption = 'Comparar Traslados'
      TabOrder = 0
      OnClick = btnCompararClick
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
    object edPeriodoAnterior: TEdit
      Left = 147
      Top = 49
      Width = 121
      Height = 21
      ReadOnly = True
      TabOrder = 1
      Text = 'yyyymm'
    end
    object rgMostrar: TRadioGroup
      Left = 576
      Top = 7
      Width = 300
      Height = 68
      Anchors = [akTop, akRight]
      Caption = 'Mostrar'
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        'Solo Cantidad'
        'Solo Saldo Vencido'
        'Cantidad y Saldo Vencido')
      TabOrder = 2
      OnClick = rgMostrarClick
    end
    object gbSimbologia: TGroupBox
      Left = 880
      Top = 7
      Width = 129
      Height = 68
      Anchors = [akTop, akRight]
      TabOrder = 3
      object shCaidas: TShape
        Left = 9
        Top = 15
        Width = 24
        Height = 11
        Pen.Width = 0
      end
      object Label3: TLabel
        Left = 39
        Top = 13
        Width = 48
        Height = 13
        Caption = 'Deterioros'
      end
      object shPermanencias: TShape
        Left = 9
        Top = 31
        Width = 24
        Height = 11
        Pen.Width = 0
      end
      object Label4: TLabel
        Left = 40
        Top = 29
        Width = 67
        Height = 13
        Caption = 'Permanencias'
      end
      object shMejoras: TShape
        Left = 9
        Top = 47
        Width = 24
        Height = 11
        Pen.Width = 0
      end
      object Label5: TLabel
        Left = 40
        Top = 45
        Width = 37
        Height = 13
        Caption = 'Mejoras'
      end
    end
    object cboPeriodoCarteraSeleccionado: TwwDBLookupCombo
      Left = 147
      Top = 16
      Width = 121
      Height = 21
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      DropDownAlignment = taLeftJustify
      Options = [loColLines, loRowLines]
      Style = csDropDownList
      ParentFont = False
      TabOrder = 4
      AutoDropDown = False
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      OnChange = cboPeriodoCarteraSeleccionadoChange
    end
  end
  object pnlControles: TPanel
    Left = 0
    Top = 473
    Width = 1006
    Height = 43
    Align = alBottom
    ParentColor = True
    TabOrder = 1
    DesignSize = (
      1006
      43)
    object btnImprimir: TBitBtn
      Left = 799
      Top = 6
      Width = 100
      Height = 32
      Anchors = [akTop, akRight]
      Caption = 'Imprimir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = btnImprimirClick
      Glyph.Data = {
        BE080000424DBE0800000000000036000000280000001B0000001A0000000100
        18000000000088080000CE0E0000D80E00000000000000000000C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000
        0000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C080
        8080000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000000808080C0C0
        C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C000000080808080800080808080
        8000808080808000808080808000808080808000808080808000808080808000
        808080808000808080808080808000000000C0C0C0C0C0C0C0C0C0000000C0C0
        C0C0C0C000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000C0C0C0C0C0C0000000C0C0C0C0C0C00000008080008080
        0080800080800080800080800080800080800080800080800080800080800080
        8000808000808000808000808000808000808000808000808000000000C0C0C0
        C0C0C0000000C0C0C0C0C0C00000008080008080000000000000008080000000
        0000000080800000000000000080800080800080800080800000000000000000
        0000000000000000000000808000000000C0C0C0C0C0C0000000C0C0C0C0C0C0
        0000008080008080000000000000008080000000000000008080000000000000
        0080800080800080800080800000000000000000000000000000000000000080
        8000000000C0C0C0C0C0C0000000C0C0C0C0C0C0000000808000808000808000
        8080008080008080008080008080008080008080008080008080008080008080
        00808000808000808000808000808000808000808000000000C0C0C0C0C0C000
        0000C0C0C0C0C0C0000000808000808000808000808000808000808000808000
        8080008080008080008080008080008080008080008080008080008080008080
        00808000808000808000000000C0C0C0C0C0C0000000C0C0C0C0C0C0000000C0
        C0C0C0C0C0FFFFFFFFFFFFC0C0C0FFFFFFC0C0C0FFFFFFC0C0C0FFFFFFFFFFFF
        C0C0C0FFFFFFC0C0C0FFFFFFC0C0C0FFFFFFFFFFFFC0C0C0FFFFFFC0C0C00000
        00C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000C0C0C0C0C0C0C0C0C0000000C0C0
        C0C0C0C0C0C0C0C0C0C0000000808000808000000000FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000808000808000
        000000C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C00000
        00000000000000000000FFFFFF00000000000080808080808000000080808000
        0000808080000000FFFFFF000000000000000000000000C0C0C0C0C0C0C0C0C0
        C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
        0000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000FFFFFF0000000000008080800000
        00808080000000000000C0C0C0000000FFFFFF000000C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000
        0000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000FFFFFF000000
        808080000000000000808080000000FFFFFFFFFFFFFFFFFFFFFFFF000000C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000
        0000FFFFFF000000000000808080808080000000000000FFFFFF000000000000
        000000000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFF000000C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF000000000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000000000
        00000000000000000000000000000000000000000000000000C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000
        0000}
      Spacing = 2
    end
    object btnSalir: TBitBtn
      Left = 907
      Top = 6
      Width = 100
      Height = 32
      Hint = 'Salir'
      Anchors = [akTop, akRight]
      Caption = '&Salir'
      TabOrder = 1
      OnClick = btnSalirClick
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00330000000000
        03333301BBBBBBBB033333011BBBBBBB0333330111BBBBBB03333301110BBBBB
        03333301110BBBBB03333301110BBBBB03333301110BBBBB03333301110BBBBB
        03333301110BBBBB0333330111B0BBBB03333301110BBBBB03333301110BBBBB
        03333301E10BBBBB03333301EE0BBBBB03333300000000000333}
    end
    object btnExportar: TBitBtn
      Left = 695
      Top = 6
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
      TabOrder = 2
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
  object pcPrincipal: TPageControl
    Left = 0
    Top = 193
    Width = 1006
    Height = 280
    ActivePage = tsMatrizTraslado
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    MultiLine = True
    ParentFont = False
    TabOrder = 2
    TabPosition = tpLeft
    object tsMatrizTraslado: TTabSheet
      Caption = 'Matriz de Traslado'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      object dbgResultados02: TwwDBGrid
        Left = 0
        Top = 0
        Width = 979
        Height = 272
        DisableThemesInTitle = False
        IniAttributes.Delimiter = ';;'
        TitleColor = clBtnFace
        OnRowChanged = dbgResultados02RowChanged
        FixedCols = 0
        ShowHorzScrollBar = True
        ShowVertScrollBar = False
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowFooter]
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        TitleAlignment = taCenter
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = [fsBold]
        TitleLines = 2
        TitleButtons = False
        OnDrawDataCell = dbgResultados02DrawDataCell
        OnDblClick = dbgResultados02DblClick
        OnMouseMove = dbgResultados02MouseMove
      end
    end
    object tsMovimientos: TTabSheet
      Caption = 'Movimientos'
      ImageIndex = 1
      object dbgResultados01: TwwDBGrid
        Left = 0
        Top = 0
        Width = 979
        Height = 272
        DisableThemesInTitle = False
        IniAttributes.Delimiter = ';;'
        TitleColor = clBtnFace
        OnRowChanged = dbgResultados01RowChanged
        FixedCols = 0
        ShowHorzScrollBar = False
        ShowVertScrollBar = False
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowFooter]
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        TitleAlignment = taCenter
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = [fsBold]
        TitleLines = 2
        TitleButtons = False
        OnDrawDataCell = dbgResultados01DrawDataCell
        OnDblClick = dbgResultados01DblClick
      end
    end
  end
  object pnl1: TPanel
    Left = 0
    Top = 81
    Width = 1006
    Height = 112
    Align = alTop
    BevelOuter = bvNone
    Caption = 'pnl1'
    Ctl3D = False
    ParentColor = True
    ParentCtl3D = False
    TabOrder = 3
    object dbgCalificaciones: TwwDBGrid
      Left = 25
      Top = 0
      Width = 977
      Height = 112
      DisableThemesInTitle = False
      IniAttributes.Delimiter = ';;'
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      ShowVertScrollBar = False
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      TitleAlignment = taCenter
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      TitleLines = 2
      TitleButtons = False
    end
    object pnl2: TPanel
      Left = 0
      Top = 0
      Width = 25
      Height = 112
      Align = alLeft
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 1
    end
    object pnl3: TPanel
      Left = 1002
      Top = 0
      Width = 4
      Height = 112
      Align = alRight
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 2
    end
  end
  object desReporte: TppDesigner
    Caption = 'ReportBuilder'
    DataSettings.SessionType = 'BDESession'
    DataSettings.AllowEditSQL = False
    DataSettings.CollationType = ctASCII
    DataSettings.DatabaseType = dtParadox
    DataSettings.IsCaseSensitive = True
    DataSettings.SQLType = sqBDELocal
    Position = poScreenCenter
    Report = repReporte
    IniStorageType = 'IniFile'
    IniStorageName = '($WINSYS)\RBuilder.ini'
    WindowHeight = 400
    WindowLeft = 100
    WindowTop = 50
    WindowWidth = 600
    Left = 127
    Top = 224
  end
  object dbpReporte: TppDBPipeline
    AutoCreateFields = False
    UserName = 'dbpReporte'
    Left = 125
    Top = 280
  end
  object repReporte: TppReport
    AutoStop = False
    DataPipeline = dbpReporte
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Carta'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 279000
    PrinterSetup.mmPaperWidth = 216000
    PrinterSetup.PaperSize = 1
    Template.FileName = 
      'D:\Desarrollo DM\Gestion de Cobranza\HPC_201206_GESCOB\Reportes\' +
      'FCompararTraslados 01.rtm'
    Units = utMillimeters
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    PreviewFormSettings.WindowState = wsMaximized
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 128
    Top = 336
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'dbpReporte'
    object ppHeaderBand41: TppHeaderBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 65088
      mmPrintPosition = 0
      object ppShape1: TppShape
        UserName = 'Shape1'
        mmHeight = 12171
        mmLeft = 0
        mmTop = 52917
        mmWidth = 202142
        BandType = 0
      end
      object ppLabel858: TppLabel
        UserName = 'Label43'
        Caption = 'DERRAMA MAGISTERIAL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 265
        mmTop = 0
        mmWidth = 34396
        BandType = 0
      end
      object ppLabel859: TppLabel
        UserName = 'Label106'
        Caption = 'Sistema De Gesti'#243'n De Cobranzas'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 0
        mmTop = 4498
        mmWidth = 44154
        BandType = 0
      end
      object ppLabel860: TppLabel
        UserName = 'Label45'
        Caption = 'Fecha   '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 163513
        mmTop = 0
        mmWidth = 10160
        BandType = 0
      end
      object ppLabel861: TppLabel
        UserName = 'Label46'
        Caption = 'Hora     '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 163513
        mmTop = 4233
        mmWidth = 11430
        BandType = 0
      end
      object ppLabel862: TppLabel
        UserName = 'Label47'
        Caption = 'Pag      '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 163513
        mmTop = 8467
        mmWidth = 11430
        BandType = 0
      end
      object ppSystemVariable83: TppSystemVariable
        UserName = 'SystemVariable4'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 177536
        mmTop = 0
        mmWidth = 16140
        BandType = 0
      end
      object ppSystemVariable84: TppSystemVariable
        UserName = 'SystemVariable5'
        VarType = vtTime
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 177271
        mmTop = 4233
        mmWidth = 16404
        BandType = 0
      end
      object ppSystemVariable85: TppSystemVariable
        UserName = 'SystemVariable6'
        VarType = vtPageNo
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 177800
        mmTop = 8467
        mmWidth = 1323
        BandType = 0
      end
      object ppLblTit: TppLabel
        UserName = 'LblTit'
        AutoSize = False
        Caption = 'COMPARAR TRASLADOS EN LOS PERIODOS 201110 - 201109'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5027
        mmLeft = 0
        mmTop = 17463
        mmWidth = 202936
        BandType = 0
      end
      object ppLabel863: TppLabel
        UserName = 'Label48'
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 175155
        mmTop = 8467
        mmWidth = 1588
        BandType = 0
      end
      object ppLabel864: TppLabel
        UserName = 'Label49'
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 175155
        mmTop = 4233
        mmWidth = 1588
        BandType = 0
      end
      object ppLabel865: TppLabel
        UserName = 'Label50'
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 175155
        mmTop = 0
        mmWidth = 1588
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Caption = 'Calificaci'#243'n'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 1588
        mmTop = 54769
        mmWidth = 15875
        BandType = 0
      end
      object ppLabel29: TppLabel
        UserName = 'Label29'
        Caption = 'Sal.Ven'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 190500
        mmTop = 61119
        mmWidth = 10054
        BandType = 0
      end
      object ppLabel30: TppLabel
        UserName = 'Label30'
        Caption = 'Cant.Aso'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 168805
        mmTop = 61119
        mmWidth = 12171
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label301'
        Caption = 'Total'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 180975
        mmTop = 54769
        mmWidth = 6615
        BandType = 0
      end
      object ppLine6: TppLine
        UserName = 'Line6'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 11642
        mmLeft = 20638
        mmTop = 53181
        mmWidth = 3175
        BandType = 0
      end
      object ppLine7: TppLine
        UserName = 'Line7'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 11906
        mmLeft = 93398
        mmTop = 52917
        mmWidth = 7408
        BandType = 0
      end
      object ppLine9: TppLine
        UserName = 'Line9'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 11906
        mmLeft = 129911
        mmTop = 52917
        mmWidth = 3969
        BandType = 0
      end
      object ppLine10: TppLine
        UserName = 'Line10'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 11642
        mmLeft = 166688
        mmTop = 53181
        mmWidth = 3704
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Caption = 'Nuevo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 143140
        mmTop = 55298
        mmWidth = 8467
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label302'
        Caption = 'Cant.Aso'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 132557
        mmTop = 61119
        mmWidth = 12171
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Caption = 'Sal.Ven'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 154252
        mmTop = 61119
        mmWidth = 10054
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        Caption = 'Mejoras'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 108215
        mmTop = 55298
        mmWidth = 10583
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label303'
        Caption = 'Cant.Aso'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 96044
        mmTop = 61119
        mmWidth = 12171
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        Caption = 'Sal.Ven'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 117740
        mmTop = 61119
        mmWidth = 10054
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        Caption = 'Permanencias'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 66411
        mmTop = 55298
        mmWidth = 19050
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label304'
        Caption = 'Cant.Aso'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 60590
        mmTop = 61119
        mmWidth = 12171
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label11'
        Caption = 'Sal.Ven'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 82286
        mmTop = 61119
        mmWidth = 10054
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        Caption = 'Deterioros'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3323
        mmLeft = 33338
        mmTop = 55563
        mmWidth = 14076
        BandType = 0
      end
      object ppLabel13: TppLabel
        UserName = 'Label305'
        Caption = 'Cant.Aso'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 25400
        mmTop = 61119
        mmWidth = 12171
        BandType = 0
      end
      object ppLabel14: TppLabel
        UserName = 'Label14'
        Caption = 'Sal.Ven'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 47096
        mmTop = 61119
        mmWidth = 10054
        BandType = 0
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 11906
        mmLeft = 58473
        mmTop = 52917
        mmWidth = 7408
        BandType = 0
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Position = lpBottom
        Weight = 0.750000000000000000
        mmHeight = 2117
        mmLeft = 20638
        mmTop = 57679
        mmWidth = 181240
        BandType = 0
      end
      object ppLabel33: TppLabel
        UserName = 'Label33'
        Caption = 'Actual'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 5292
        mmTop = 58738
        mmWidth = 8467
        BandType = 0
      end
      object ppSubReport2: TppSubReport
        UserName = 'SubReport2'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        TraverseAllData = False
        DataPipelineName = 'dbpReporteCalificaciones'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 27517
        mmWidth = 203300
        BandType = 0
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppChildReport2: TppChildReport
          AutoStop = False
          DataPipeline = dbpReporteCalificaciones
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report'
          PrinterSetup.PaperName = 'Carta'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.mmMarginBottom = 6350
          PrinterSetup.mmMarginLeft = 6350
          PrinterSetup.mmMarginRight = 6350
          PrinterSetup.mmMarginTop = 6350
          PrinterSetup.mmPaperHeight = 279000
          PrinterSetup.mmPaperWidth = 216000
          PrinterSetup.PaperSize = 1
          Units = utMillimeters
          Version = '7.02'
          mmColumnWidth = 0
          DataPipelineName = 'dbpReporteCalificaciones'
          object ppTitleBand2: TppTitleBand
            mmBottomOffset = 0
            mmHeight = 13229
            mmPrintPosition = 0
            object ppShape3: TppShape
              UserName = 'Shape3'
              mmHeight = 12171
              mmLeft = 529
              mmTop = 1058
              mmWidth = 171450
              BandType = 1
            end
            object ppLabel40: TppLabel
              UserName = 'Label40'
              Caption = 'Periodo'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 15cpi'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3323
              mmLeft = 3704
              mmTop = 6085
              mmWidth = 10478
              BandType = 1
            end
            object ppLabel41: TppLabel
              UserName = 'Label41'
              Caption = 'Sal.Ven'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 15cpi'
              Font.Size = 6
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 2381
              mmLeft = 163513
              mmTop = 8996
              mmWidth = 7673
              BandType = 1
            end
            object ppLabel42: TppLabel
              UserName = 'Label42'
              Caption = 'Cant.Aso'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 15cpi'
              Font.Size = 6
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 2381
              mmLeft = 142875
              mmTop = 8996
              mmWidth = 9260
              BandType = 1
            end
            object ppLabel43: TppLabel
              UserName = 'Label1'
              Caption = 'PER - Actual'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 15cpi'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3323
              mmLeft = 146844
              mmTop = 2646
              mmWidth = 16806
              BandType = 1
            end
            object ppLine31: TppLine
              UserName = 'Line31'
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 11642
              mmLeft = 21960
              mmTop = 1588
              mmWidth = 3175
              BandType = 1
            end
            object ppLine32: TppLine
              UserName = 'Line32'
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 11906
              mmLeft = 81227
              mmTop = 1323
              mmWidth = 7408
              BandType = 1
            end
            object ppLine33: TppLine
              UserName = 'Line33'
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 11906
              mmLeft = 111125
              mmTop = 1323
              mmWidth = 3969
              BandType = 1
            end
            object ppLine34: TppLine
              UserName = 'Line34'
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 11906
              mmLeft = 139700
              mmTop = 1058
              mmWidth = 3704
              BandType = 1
            end
            object ppLabel44: TppLabel
              UserName = 'Label44'
              Caption = 'DUD - Actual'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 15cpi'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3323
              mmLeft = 116152
              mmTop = 2646
              mmWidth = 17103
              BandType = 1
            end
            object ppLabel45: TppLabel
              UserName = 'Label201'
              Caption = 'Cant.Aso'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 15cpi'
              Font.Size = 6
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 2381
              mmLeft = 112977
              mmTop = 8996
              mmWidth = 9260
              BandType = 1
            end
            object ppLabel46: TppLabel
              UserName = 'Label2'
              Caption = 'Sal.Ven'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 15cpi'
              Font.Size = 6
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 2381
              mmLeft = 130969
              mmTop = 8996
              mmWidth = 7673
              BandType = 1
            end
            object ppLabel47: TppLabel
              UserName = 'Label3'
              Caption = 'DEF - Actual'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 15cpi'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3323
              mmLeft = 87048
              mmTop = 2646
              mmWidth = 16637
              BandType = 1
            end
            object ppLabel48: TppLabel
              UserName = 'Label4'
              Caption = 'Cant.Aso'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 15cpi'
              Font.Size = 6
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 2381
              mmLeft = 83344
              mmTop = 8996
              mmWidth = 9260
              BandType = 1
            end
            object ppLabel49: TppLabel
              UserName = 'Label5'
              Caption = 'Sal.Ven'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 15cpi'
              Font.Size = 6
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 2381
              mmLeft = 101865
              mmTop = 8996
              mmWidth = 7673
              BandType = 1
            end
            object ppLabel50: TppLabel
              UserName = 'Label6'
              Caption = 'CPP - Actual'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 15cpi'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3323
              mmLeft = 57679
              mmTop = 2646
              mmWidth = 16806
              BandType = 1
            end
            object ppLabel51: TppLabel
              UserName = 'Label51'
              Caption = 'Cant.Aso'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 15cpi'
              Font.Size = 6
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 2381
              mmLeft = 54769
              mmTop = 8996
              mmWidth = 9260
              BandType = 1
            end
            object ppLabel52: TppLabel
              UserName = 'Label52'
              Caption = 'Sal.Ven'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 15cpi'
              Font.Size = 6
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 2381
              mmLeft = 73025
              mmTop = 8996
              mmWidth = 7673
              BandType = 1
            end
            object ppLabel53: TppLabel
              UserName = 'Label53'
              Caption = 'NOR - Actual'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 15cpi'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3323
              mmLeft = 27252
              mmTop = 2646
              mmWidth = 17251
              BandType = 1
            end
            object ppLabel54: TppLabel
              UserName = 'Label54'
              Caption = 'Cant.Aso'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 15cpi'
              Font.Size = 6
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 2381
              mmLeft = 25665
              mmTop = 8996
              mmWidth = 9260
              BandType = 1
            end
            object ppLabel55: TppLabel
              UserName = 'Label55'
              Caption = 'Sal.Ven'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 15cpi'
              Font.Size = 6
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 2381
              mmLeft = 43921
              mmTop = 8996
              mmWidth = 7673
              BandType = 1
            end
            object ppLine35: TppLine
              UserName = 'Line35'
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 11906
              mmLeft = 52123
              mmTop = 1323
              mmWidth = 7408
              BandType = 1
            end
            object ppLine36: TppLine
              UserName = 'Line36'
              Position = lpBottom
              Weight = 0.750000000000000000
              mmHeight = 2117
              mmLeft = 21960
              mmTop = 5821
              mmWidth = 149754
              BandType = 1
            end
          end
          object ppDetailBand2: TppDetailBand
            mmBottomOffset = 0
            mmHeight = 3175
            mmPrintPosition = 0
            object ppDBText25: TppDBText
              UserName = 'DBText25'
              DataField = 'SALVEN_NOR'
              DataPipeline = dbpReporteCalificaciones
              DisplayFormat = '#,0.00;-#,0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 15cpi'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbpReporteCalificaciones'
              mmHeight = 2381
              mmLeft = 35983
              mmTop = 265
              mmWidth = 15081
              BandType = 4
            end
            object ppDBText26: TppDBText
              UserName = 'DBText26'
              DataField = 'CANT_NOR'
              DataPipeline = dbpReporteCalificaciones
              DisplayFormat = '#,0;-#,0'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 15cpi'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbpReporteCalificaciones'
              mmHeight = 2381
              mmLeft = 25929
              mmTop = 265
              mmWidth = 8467
              BandType = 4
            end
            object ppDBText27: TppDBText
              UserName = 'DBText27'
              DataField = 'PERIODO'
              DataPipeline = dbpReporteCalificaciones
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 15cpi'
              Font.Size = 6
              Font.Style = []
              Transparent = True
              DataPipelineName = 'dbpReporteCalificaciones'
              mmHeight = 2381
              mmLeft = 2381
              mmTop = 265
              mmWidth = 17463
              BandType = 4
            end
            object ppDBText28: TppDBText
              UserName = 'DBText28'
              DataField = 'SALVEN_CPP'
              DataPipeline = dbpReporteCalificaciones
              DisplayFormat = '#,0.00;-#,0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 15cpi'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbpReporteCalificaciones'
              mmHeight = 2381
              mmLeft = 65088
              mmTop = 265
              mmWidth = 15081
              BandType = 4
            end
            object ppDBText29: TppDBText
              UserName = 'DBText29'
              DataField = 'CANT_CPP'
              DataPipeline = dbpReporteCalificaciones
              DisplayFormat = '#,0;-#,0'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 15cpi'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbpReporteCalificaciones'
              mmHeight = 2381
              mmLeft = 55563
              mmTop = 265
              mmWidth = 7938
              BandType = 4
            end
            object ppDBText30: TppDBText
              UserName = 'DBText30'
              DataField = 'SALVEN_DEF'
              DataPipeline = dbpReporteCalificaciones
              DisplayFormat = '#,0.00;-#,0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 15cpi'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbpReporteCalificaciones'
              mmHeight = 2381
              mmLeft = 93927
              mmTop = 265
              mmWidth = 15081
              BandType = 4
            end
            object ppDBText31: TppDBText
              UserName = 'DBText31'
              DataField = 'CANT_DEF'
              DataPipeline = dbpReporteCalificaciones
              DisplayFormat = '#,0;-#,0'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 15cpi'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbpReporteCalificaciones'
              mmHeight = 2381
              mmLeft = 84138
              mmTop = 265
              mmWidth = 7938
              BandType = 4
            end
            object ppDBText32: TppDBText
              UserName = 'DBText32'
              DataField = 'SALVEN_DUD'
              DataPipeline = dbpReporteCalificaciones
              DisplayFormat = '#,0.00;-#,0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 15cpi'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbpReporteCalificaciones'
              mmHeight = 2381
              mmLeft = 123031
              mmTop = 265
              mmWidth = 15081
              BandType = 4
            end
            object ppDBText33: TppDBText
              UserName = 'DBText201'
              DataField = 'CANT_DUD'
              DataPipeline = dbpReporteCalificaciones
              DisplayFormat = '#,0;-#,0'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 15cpi'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbpReporteCalificaciones'
              mmHeight = 2381
              mmLeft = 114565
              mmTop = 265
              mmWidth = 7144
              BandType = 4
            end
            object ppDBText34: TppDBText
              UserName = 'DBText34'
              DataField = 'SALVEN_PER'
              DataPipeline = dbpReporteCalificaciones
              DisplayFormat = '#,0.00;-#,0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 15cpi'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbpReporteCalificaciones'
              mmHeight = 2381
              mmLeft = 155575
              mmTop = 265
              mmWidth = 15081
              BandType = 4
            end
            object ppDBText35: TppDBText
              UserName = 'DBText35'
              DataField = 'CANT_PER'
              DataPipeline = dbpReporteCalificaciones
              DisplayFormat = '#,0;-#,0'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 15cpi'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbpReporteCalificaciones'
              mmHeight = 2381
              mmLeft = 143669
              mmTop = 265
              mmWidth = 7938
              BandType = 4
            end
            object ppLine38: TppLine
              UserName = 'Line38'
              Position = lpBottom
              Weight = 0.750000000000000000
              mmHeight = 1588
              mmLeft = 794
              mmTop = 1587
              mmWidth = 171186
              BandType = 4
            end
            object ppLine40: TppLine
              UserName = 'Line40'
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 3175
              mmLeft = 21960
              mmTop = 0
              mmWidth = 4763
              BandType = 4
            end
            object ppLine41: TppLine
              UserName = 'Line41'
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 3175
              mmLeft = 52123
              mmTop = 0
              mmWidth = 7144
              BandType = 4
            end
            object ppLine42: TppLine
              UserName = 'Line42'
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 3175
              mmLeft = 81227
              mmTop = 0
              mmWidth = 7144
              BandType = 4
            end
            object ppLine43: TppLine
              UserName = 'Line201'
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 3175
              mmLeft = 111125
              mmTop = 0
              mmWidth = 7144
              BandType = 4
            end
            object ppLine44: TppLine
              UserName = 'Line44'
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 3175
              mmLeft = 139700
              mmTop = 0
              mmWidth = 7144
              BandType = 4
            end
            object ppLine46: TppLine
              UserName = 'Line301'
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 3175
              mmLeft = 171715
              mmTop = 0
              mmWidth = 7144
              BandType = 4
            end
            object ppLine39: TppLine
              UserName = 'Line401'
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 3175
              mmLeft = 529
              mmTop = 0
              mmWidth = 4763
              BandType = 4
            end
          end
          object ppSummaryBand2: TppSummaryBand
            mmBottomOffset = 0
            mmHeight = 7408
            mmPrintPosition = 0
            object ppDBCalc23: TppDBCalc
              UserName = 'DBCalc23'
              DataField = 'CANT_NOR'
              DataPipeline = dbpReporteCalificaciones
              DisplayFormat = '#,0;-#,0'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbpReporteCalificaciones'
              mmHeight = 2381
              mmLeft = 25400
              mmTop = 529
              mmWidth = 9790
              BandType = 7
            end
            object ppLabel60: TppLabel
              UserName = 'Label60'
              Caption = 'Total :'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 15cpi'
              Font.Size = 6
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 2381
              mmLeft = 11377
              mmTop = 529
              mmWidth = 6350
              BandType = 7
            end
            object ppDBCalc24: TppDBCalc
              UserName = 'DBCalc24'
              DataField = 'SALVEN_NOR'
              DataPipeline = dbpReporteCalificaciones
              DisplayFormat = '#,0.00;-#,0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbpReporteCalificaciones'
              mmHeight = 2381
              mmLeft = 35454
              mmTop = 529
              mmWidth = 16404
              BandType = 7
            end
            object ppDBCalc25: TppDBCalc
              UserName = 'DBCalc25'
              DataField = 'SALVEN_CPP'
              DataPipeline = dbpReporteCalificaciones
              DisplayFormat = '#,0.00;-#,0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbpReporteCalificaciones'
              mmHeight = 2381
              mmLeft = 64558
              mmTop = 529
              mmWidth = 16404
              BandType = 7
            end
            object ppDBCalc26: TppDBCalc
              UserName = 'DBCalc26'
              DataField = 'CANT_CPP'
              DataPipeline = dbpReporteCalificaciones
              DisplayFormat = '#,0;-#,0'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbpReporteCalificaciones'
              mmHeight = 2381
              mmLeft = 54504
              mmTop = 529
              mmWidth = 9790
              BandType = 7
            end
            object ppDBCalc27: TppDBCalc
              UserName = 'DBCalc27'
              DataField = 'SALVEN_DEF'
              DataPipeline = dbpReporteCalificaciones
              DisplayFormat = '#,0.00;-#,0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbpReporteCalificaciones'
              mmHeight = 2381
              mmLeft = 93398
              mmTop = 529
              mmWidth = 16404
              BandType = 7
            end
            object ppDBCalc28: TppDBCalc
              UserName = 'DBCalc28'
              DataField = 'CANT_DEF'
              DataPipeline = dbpReporteCalificaciones
              DisplayFormat = '#,0;-#,0'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbpReporteCalificaciones'
              mmHeight = 2381
              mmLeft = 83079
              mmTop = 529
              mmWidth = 9790
              BandType = 7
            end
            object ppDBCalc29: TppDBCalc
              UserName = 'DBCalc29'
              DataField = 'SALVEN_DUD'
              DataPipeline = dbpReporteCalificaciones
              DisplayFormat = '#,0.00;-#,0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbpReporteCalificaciones'
              mmHeight = 2381
              mmLeft = 122502
              mmTop = 529
              mmWidth = 16404
              BandType = 7
            end
            object ppDBCalc30: TppDBCalc
              UserName = 'DBCalc30'
              DataField = 'CANT_DUD'
              DataPipeline = dbpReporteCalificaciones
              DisplayFormat = '#,0;-#,0'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbpReporteCalificaciones'
              mmHeight = 2381
              mmLeft = 112713
              mmTop = 529
              mmWidth = 9790
              BandType = 7
            end
            object ppDBCalc31: TppDBCalc
              UserName = 'DBCalc31'
              DataField = 'SALVEN_PER'
              DataPipeline = dbpReporteCalificaciones
              DisplayFormat = '#,0.00;-#,0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbpReporteCalificaciones'
              mmHeight = 2381
              mmLeft = 155046
              mmTop = 529
              mmWidth = 16404
              BandType = 7
            end
            object ppDBCalc32: TppDBCalc
              UserName = 'DBCalc101'
              DataField = 'CANT_PER'
              DataPipeline = dbpReporteCalificaciones
              DisplayFormat = '#,0;-#,0'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbpReporteCalificaciones'
              mmHeight = 2381
              mmLeft = 142611
              mmTop = 529
              mmWidth = 9790
              BandType = 7
            end
          end
        end
      end
    end
    object ppDetailBand44: TppDetailBand
      BeforePrint = ppDetailBand44BeforePrint
      mmBottomOffset = 0
      mmHeight = 3175
      mmPrintPosition = 0
      object ppLine3: TppLine
        UserName = 'Line3'
        Position = lpBottom
        Weight = 0.750000000000000000
        mmHeight = 2646
        mmLeft = 0
        mmTop = 529
        mmWidth = 202142
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        DataField = 'SALVEN_CAIDAS_ACT'
        DataPipeline = dbpReporte
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpReporte'
        mmHeight = 2381
        mmLeft = 39423
        mmTop = 265
        mmWidth = 17727
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        DataField = 'CANT_CAIDAS_ACT'
        DataPipeline = dbpReporte
        DisplayFormat = '#,0;-#,0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpReporte'
        mmHeight = 2381
        mmLeft = 25400
        mmTop = 265
        mmWidth = 12171
        BandType = 4
      end
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        DataField = 'CAL_ACT_DES'
        DataPipeline = dbpReporte
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpReporte'
        mmHeight = 2381
        mmLeft = 1588
        mmTop = 265
        mmWidth = 17463
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        DataField = 'SALVEN_PERMANENCIAS_ACT'
        DataPipeline = dbpReporte
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpReporte'
        mmHeight = 2381
        mmLeft = 74613
        mmTop = 265
        mmWidth = 17727
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        DataField = 'CANT_PERMANENCIAS_ACT'
        DataPipeline = dbpReporte
        DisplayFormat = '#,0;-#,0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpReporte'
        mmHeight = 2381
        mmLeft = 61913
        mmTop = 265
        mmWidth = 10848
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        DataField = 'SALVEN_MEJORAS_ACT'
        DataPipeline = dbpReporte
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpReporte'
        mmHeight = 2381
        mmLeft = 110067
        mmTop = 265
        mmWidth = 17727
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        DataField = 'CANT_MEJORAS_ACT'
        DataPipeline = dbpReporte
        DisplayFormat = '#,0;-#,0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpReporte'
        mmHeight = 2381
        mmLeft = 97367
        mmTop = 265
        mmWidth = 10848
        BandType = 4
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        DataField = 'SALVEN_NUEVOS_ACT'
        DataPipeline = dbpReporte
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpReporte'
        mmHeight = 2381
        mmLeft = 146579
        mmTop = 265
        mmWidth = 17727
        BandType = 4
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        DataField = 'CANT_NUEVOS_ACT'
        DataPipeline = dbpReporte
        DisplayFormat = '#,0;-#,0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpReporte'
        mmHeight = 2381
        mmLeft = 133879
        mmTop = 265
        mmWidth = 10848
        BandType = 4
      end
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        DataField = 'SALVEN_TOTAL_ACT'
        DataPipeline = dbpReporte
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpReporte'
        mmHeight = 2381
        mmLeft = 182827
        mmTop = 265
        mmWidth = 17727
        BandType = 4
      end
      object ppDBText11: TppDBText
        UserName = 'DBText11'
        DataField = 'CANT_TOTAL_ACT'
        DataPipeline = dbpReporte
        DisplayFormat = '#,0;-#,0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpReporte'
        mmHeight = 2381
        mmLeft = 170127
        mmTop = 265
        mmWidth = 10848
        BandType = 4
      end
      object ppLine4: TppLine
        UserName = 'Line4'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3175
        mmLeft = 0
        mmTop = 0
        mmWidth = 7144
        BandType = 4
      end
      object ppLine5: TppLine
        UserName = 'Line5'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3175
        mmLeft = 20638
        mmTop = 0
        mmWidth = 2646
        BandType = 4
      end
      object ppLine8: TppLine
        UserName = 'Line8'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3175
        mmLeft = 58473
        mmTop = 0
        mmWidth = 7144
        BandType = 4
      end
      object ppLine11: TppLine
        UserName = 'Line11'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3175
        mmLeft = 93398
        mmTop = 0
        mmWidth = 7144
        BandType = 4
      end
      object ppLine12: TppLine
        UserName = 'Line12'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3175
        mmLeft = 129911
        mmTop = 0
        mmWidth = 7144
        BandType = 4
      end
      object ppLine13: TppLine
        UserName = 'Line13'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3175
        mmLeft = 166688
        mmTop = 0
        mmWidth = 7144
        BandType = 4
      end
      object ppLine14: TppLine
        UserName = 'Line14'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 3175
        mmLeft = 194998
        mmTop = 0
        mmWidth = 7144
        BandType = 4
      end
      object ppsCaidas: TppShape
        UserName = 'sCaidas'
        Brush.Color = 13421823
        Shape = stCircle
        mmHeight = 1852
        mmLeft = 21696
        mmTop = 529
        mmWidth = 1852
        BandType = 4
      end
      object ppsPermanencias: TppShape
        UserName = 'sCaidas1'
        Brush.Color = 16764108
        Shape = stCircle
        mmHeight = 1852
        mmLeft = 59267
        mmTop = 529
        mmWidth = 1852
        BandType = 4
      end
      object ppsMejoras: TppShape
        UserName = 'sCaidas2'
        Brush.Color = 13434828
        Shape = stCircle
        mmHeight = 1852
        mmLeft = 94192
        mmTop = 529
        mmWidth = 1852
        BandType = 4
      end
    end
    object ppFooterBand36: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 6350
      mmPrintPosition = 0
      object ppLblUser: TppLabel
        UserName = 'LblUser'
        AutoSize = False
        Caption = 'Emitido Por :  Juver De la Cruz'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 265
        mmTop = 1323
        mmWidth = 96044
        BandType = 8
      end
    end
    object ppSummaryBand41: TppSummaryBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 14817
      mmPrintPosition = 0
      object ppSubReport1: TppSubReport
        UserName = 'SubReport1'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        TraverseAllData = False
        DataPipelineName = 'dbpReporteDetalle'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 9525
        mmWidth = 203300
        BandType = 7
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppChildReport1: TppChildReport
          AutoStop = False
          DataPipeline = dbpReporteDetalle
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report'
          PrinterSetup.PaperName = 'Carta'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.mmMarginBottom = 6350
          PrinterSetup.mmMarginLeft = 6350
          PrinterSetup.mmMarginRight = 6350
          PrinterSetup.mmMarginTop = 6350
          PrinterSetup.mmPaperHeight = 279000
          PrinterSetup.mmPaperWidth = 216000
          PrinterSetup.PaperSize = 1
          Units = utMillimeters
          Version = '7.02'
          mmColumnWidth = 0
          DataPipelineName = 'dbpReporteDetalle'
          object ppTitleBand1: TppTitleBand
            mmBottomOffset = 0
            mmHeight = 12965
            mmPrintPosition = 0
            object ppShape2: TppShape
              UserName = 'Shape2'
              mmHeight = 12171
              mmLeft = 265
              mmTop = 794
              mmWidth = 202142
              BandType = 1
            end
            object ppLabel15: TppLabel
              UserName = 'Label15'
              Caption = 'Calificaci'#243'n'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 15cpi'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3440
              mmLeft = 1852
              mmTop = 2646
              mmWidth = 15875
              BandType = 1
            end
            object ppLabel16: TppLabel
              UserName = 'Label16'
              Caption = 'Sal.Ven'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 15cpi'
              Font.Size = 6
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 2381
              mmLeft = 162190
              mmTop = 8731
              mmWidth = 7673
              BandType = 1
            end
            object ppLabel17: TppLabel
              UserName = 'Label306'
              Caption = 'Cant.Aso'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 15cpi'
              Font.Size = 6
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 2381
              mmLeft = 141552
              mmTop = 8731
              mmWidth = 9260
              BandType = 1
            end
            object ppLabel18: TppLabel
              UserName = 'Label18'
              Caption = 'PER - Actual'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 15cpi'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3323
              mmLeft = 145521
              mmTop = 2381
              mmWidth = 16806
              BandType = 1
            end
            object ppLine23: TppLine
              UserName = 'Line23'
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 11642
              mmLeft = 20638
              mmTop = 1058
              mmWidth = 3175
              BandType = 1
            end
            object ppLine24: TppLine
              UserName = 'Line24'
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 11906
              mmLeft = 79904
              mmTop = 1058
              mmWidth = 7408
              BandType = 1
            end
            object ppLine25: TppLine
              UserName = 'Line25'
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 11906
              mmLeft = 109802
              mmTop = 1058
              mmWidth = 3969
              BandType = 1
            end
            object ppLine26: TppLine
              UserName = 'Line101'
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 11642
              mmLeft = 138377
              mmTop = 1058
              mmWidth = 3704
              BandType = 1
            end
            object ppLabel19: TppLabel
              UserName = 'Label19'
              Caption = 'DUD - Actual'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 15cpi'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3323
              mmLeft = 114829
              mmTop = 2381
              mmWidth = 17103
              BandType = 1
            end
            object ppLabel20: TppLabel
              UserName = 'Label20'
              Caption = 'Cant.Aso'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 15cpi'
              Font.Size = 6
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 2381
              mmLeft = 111654
              mmTop = 8731
              mmWidth = 9260
              BandType = 1
            end
            object ppLabel21: TppLabel
              UserName = 'Label21'
              Caption = 'Sal.Ven'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 15cpi'
              Font.Size = 6
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 2381
              mmLeft = 129646
              mmTop = 8731
              mmWidth = 7673
              BandType = 1
            end
            object ppLabel22: TppLabel
              UserName = 'Label22'
              Caption = 'DEF - Actual'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 15cpi'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3323
              mmLeft = 85725
              mmTop = 2381
              mmWidth = 16637
              BandType = 1
            end
            object ppLabel23: TppLabel
              UserName = 'Label23'
              Caption = 'Cant.Aso'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 15cpi'
              Font.Size = 6
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 2381
              mmLeft = 82021
              mmTop = 8731
              mmWidth = 9260
              BandType = 1
            end
            object ppLabel24: TppLabel
              UserName = 'Label24'
              Caption = 'Sal.Ven'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 15cpi'
              Font.Size = 6
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 2381
              mmLeft = 100542
              mmTop = 8731
              mmWidth = 7673
              BandType = 1
            end
            object ppLabel25: TppLabel
              UserName = 'Label25'
              Caption = 'CPP - Actual'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 15cpi'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3323
              mmLeft = 56356
              mmTop = 2381
              mmWidth = 16806
              BandType = 1
            end
            object ppLabel26: TppLabel
              UserName = 'Label26'
              Caption = 'Cant.Aso'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 15cpi'
              Font.Size = 6
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 2381
              mmLeft = 53446
              mmTop = 8731
              mmWidth = 9260
              BandType = 1
            end
            object ppLabel27: TppLabel
              UserName = 'Label27'
              Caption = 'Sal.Ven'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 15cpi'
              Font.Size = 6
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 2381
              mmLeft = 71702
              mmTop = 8731
              mmWidth = 7673
              BandType = 1
            end
            object ppLabel28: TppLabel
              UserName = 'Label28'
              Caption = 'NOR - Actual'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 15cpi'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3323
              mmLeft = 25929
              mmTop = 2381
              mmWidth = 17251
              BandType = 1
            end
            object ppLabel31: TppLabel
              UserName = 'Label31'
              Caption = 'Cant.Aso'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 15cpi'
              Font.Size = 6
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 2381
              mmLeft = 24342
              mmTop = 8731
              mmWidth = 9260
              BandType = 1
            end
            object ppLabel32: TppLabel
              UserName = 'Label32'
              Caption = 'Sal.Ven'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 15cpi'
              Font.Size = 6
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 2381
              mmLeft = 42598
              mmTop = 8731
              mmWidth = 7673
              BandType = 1
            end
            object ppLine27: TppLine
              UserName = 'Line27'
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 11906
              mmLeft = 50800
              mmTop = 1058
              mmWidth = 7408
              BandType = 1
            end
            object ppLine28: TppLine
              UserName = 'Line28'
              Position = lpBottom
              Weight = 0.750000000000000000
              mmHeight = 2117
              mmLeft = 20638
              mmTop = 5556
              mmWidth = 181505
              BandType = 1
            end
            object ppLabel34: TppLabel
              UserName = 'Label34'
              Caption = 'Anterior'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 15cpi'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3323
              mmLeft = 5556
              mmTop = 7408
              mmWidth = 10859
              BandType = 1
            end
            object ppLabel35: TppLabel
              UserName = 'Label35'
              Caption = 'CANCELADO - Actual'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 15cpi'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3323
              mmLeft = 171980
              mmTop = 2381
              mmWidth = 28808
              BandType = 1
            end
            object ppLabel36: TppLabel
              UserName = 'Label36'
              Caption = 'Cant.Aso'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 15cpi'
              Font.Size = 6
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 2381
              mmLeft = 174361
              mmTop = 8731
              mmWidth = 9260
              BandType = 1
            end
            object ppLabel37: TppLabel
              UserName = 'Label37'
              Caption = 'Sal.Ven'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 15cpi'
              Font.Size = 6
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 2381
              mmLeft = 193411
              mmTop = 8731
              mmWidth = 7673
              BandType = 1
            end
            object ppLine29: TppLine
              UserName = 'Line29'
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 11642
              mmLeft = 170657
              mmTop = 1058
              mmWidth = 3704
              BandType = 1
            end
          end
          object ppDetailBand1: TppDetailBand
            BeforePrint = ppDetailBand1BeforePrint
            mmBottomOffset = 0
            mmHeight = 3175
            mmPrintPosition = 0
            object ppDBText12: TppDBText
              UserName = 'DBText12'
              DataField = 'SALVEN_NOR'
              DataPipeline = dbpReporteDetalle
              DisplayFormat = '#,0.00;-#,0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 15cpi'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbpReporteDetalle'
              mmHeight = 2381
              mmLeft = 35190
              mmTop = 265
              mmWidth = 15081
              BandType = 4
            end
            object ppDBText13: TppDBText
              UserName = 'DBText13'
              DataField = 'CANT_NOR'
              DataPipeline = dbpReporteDetalle
              DisplayFormat = '#,0;-#,0'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 15cpi'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbpReporteDetalle'
              mmHeight = 2381
              mmLeft = 25135
              mmTop = 265
              mmWidth = 8467
              BandType = 4
            end
            object ppDBText14: TppDBText
              UserName = 'DBText14'
              DataField = 'CAL_ANT_DES'
              DataPipeline = dbpReporteDetalle
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 15cpi'
              Font.Size = 6
              Font.Style = []
              Transparent = True
              DataPipelineName = 'dbpReporteDetalle'
              mmHeight = 2381
              mmLeft = 1588
              mmTop = 265
              mmWidth = 17463
              BandType = 4
            end
            object ppDBText15: TppDBText
              UserName = 'DBText15'
              DataField = 'SALVEN_CPP'
              DataPipeline = dbpReporteDetalle
              DisplayFormat = '#,0.00;-#,0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 15cpi'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbpReporteDetalle'
              mmHeight = 2381
              mmLeft = 64294
              mmTop = 265
              mmWidth = 15081
              BandType = 4
            end
            object ppDBText16: TppDBText
              UserName = 'DBText16'
              DataField = 'CANT_CPP'
              DataPipeline = dbpReporteDetalle
              DisplayFormat = '#,0;-#,0'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 15cpi'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbpReporteDetalle'
              mmHeight = 2381
              mmLeft = 54769
              mmTop = 265
              mmWidth = 7938
              BandType = 4
            end
            object ppDBText17: TppDBText
              UserName = 'DBText17'
              DataField = 'SALVEN_DEF'
              DataPipeline = dbpReporteDetalle
              DisplayFormat = '#,0.00;-#,0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 15cpi'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbpReporteDetalle'
              mmHeight = 2381
              mmLeft = 93134
              mmTop = 265
              mmWidth = 15081
              BandType = 4
            end
            object ppDBText18: TppDBText
              UserName = 'DBText18'
              DataField = 'CANT_DEF'
              DataPipeline = dbpReporteDetalle
              DisplayFormat = '#,0;-#,0'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 15cpi'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbpReporteDetalle'
              mmHeight = 2381
              mmLeft = 83344
              mmTop = 265
              mmWidth = 7938
              BandType = 4
            end
            object ppDBText19: TppDBText
              UserName = 'DBText19'
              DataField = 'SALVEN_DUD'
              DataPipeline = dbpReporteDetalle
              DisplayFormat = '#,0.00;-#,0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 15cpi'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbpReporteDetalle'
              mmHeight = 2381
              mmLeft = 122238
              mmTop = 265
              mmWidth = 15081
              BandType = 4
            end
            object ppDBText20: TppDBText
              UserName = 'DBText20'
              DataField = 'CANT_DUD'
              DataPipeline = dbpReporteDetalle
              DisplayFormat = '#,0;-#,0'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 15cpi'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbpReporteDetalle'
              mmHeight = 2381
              mmLeft = 113771
              mmTop = 265
              mmWidth = 7144
              BandType = 4
            end
            object ppDBText21: TppDBText
              UserName = 'DBText101'
              DataField = 'SALVEN_PER'
              DataPipeline = dbpReporteDetalle
              DisplayFormat = '#,0.00;-#,0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 15cpi'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbpReporteDetalle'
              mmHeight = 2381
              mmLeft = 154782
              mmTop = 265
              mmWidth = 15081
              BandType = 4
            end
            object ppDBText22: TppDBText
              UserName = 'DBText22'
              DataField = 'CANT_PER'
              DataPipeline = dbpReporteDetalle
              DisplayFormat = '#,0;-#,0'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 15cpi'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbpReporteDetalle'
              mmHeight = 2381
              mmLeft = 142875
              mmTop = 265
              mmWidth = 7938
              BandType = 4
            end
            object ppLine15: TppLine
              UserName = 'Line15'
              Position = lpBottom
              Weight = 0.750000000000000000
              mmHeight = 1588
              mmLeft = 265
              mmTop = 1587
              mmWidth = 202142
              BandType = 4
            end
            object ppLine16: TppLine
              UserName = 'Line16'
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 3175
              mmLeft = 265
              mmTop = 0
              mmWidth = 7144
              BandType = 4
            end
            object ppLine17: TppLine
              UserName = 'Line17'
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 3175
              mmLeft = 20638
              mmTop = 0
              mmWidth = 4763
              BandType = 4
            end
            object ppLine18: TppLine
              UserName = 'Line18'
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 3175
              mmLeft = 50800
              mmTop = 0
              mmWidth = 7144
              BandType = 4
            end
            object ppLine19: TppLine
              UserName = 'Line19'
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 3175
              mmLeft = 79904
              mmTop = 0
              mmWidth = 7144
              BandType = 4
            end
            object ppLine20: TppLine
              UserName = 'Line20'
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 3175
              mmLeft = 109802
              mmTop = 0
              mmWidth = 7144
              BandType = 4
            end
            object ppLine21: TppLine
              UserName = 'Line21'
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 3175
              mmLeft = 138377
              mmTop = 0
              mmWidth = 7144
              BandType = 4
            end
            object ppLine22: TppLine
              UserName = 'Line22'
              Position = lpRight
              Weight = 0.750000000000000000
              mmHeight = 3175
              mmLeft = 195263
              mmTop = 0
              mmWidth = 7144
              BandType = 4
            end
            object ppsNOR: TppShape
              UserName = 'sCaidas3'
              Brush.Color = 13434828
              Shape = stCircle
              mmHeight = 1852
              mmLeft = 21696
              mmTop = 529
              mmWidth = 1852
              BandType = 4
            end
            object ppsCPP: TppShape
              UserName = 'sCPP'
              Brush.Color = 13434828
              Shape = stCircle
              mmHeight = 1852
              mmLeft = 51594
              mmTop = 529
              mmWidth = 1852
              BandType = 4
            end
            object ppsDEF: TppShape
              UserName = 'sDEF'
              Brush.Color = 13434828
              Shape = stCircle
              mmHeight = 1852
              mmLeft = 80698
              mmTop = 529
              mmWidth = 1852
              BandType = 4
            end
            object ppsDUD: TppShape
              UserName = 'sDUD'
              Brush.Color = 13434828
              Shape = stCircle
              mmHeight = 1852
              mmLeft = 110861
              mmTop = 529
              mmWidth = 1852
              BandType = 4
            end
            object ppsPER: TppShape
              UserName = 'sPER'
              Brush.Color = 13434828
              Shape = stCircle
              mmHeight = 1852
              mmLeft = 139171
              mmTop = 529
              mmWidth = 1852
              BandType = 4
            end
            object ppLine30: TppLine
              UserName = 'Line30'
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 3175
              mmLeft = 170657
              mmTop = 0
              mmWidth = 7144
              BandType = 4
            end
            object ppsSIN: TppShape
              UserName = 'sPER1'
              Brush.Color = 13434828
              Shape = stCircle
              mmHeight = 1852
              mmLeft = 171450
              mmTop = 529
              mmWidth = 1852
              BandType = 4
            end
            object ppDBText23: TppDBText
              UserName = 'DBText23'
              DataField = 'CANT_CAN'
              DataPipeline = dbpReporteDetalle
              DisplayFormat = '#,0;-#,0'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 15cpi'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbpReporteDetalle'
              mmHeight = 2381
              mmLeft = 174890
              mmTop = 265
              mmWidth = 8996
              BandType = 4
            end
            object ppDBText24: TppDBText
              UserName = 'DBText24'
              DataField = 'SALVEN_CAN'
              DataPipeline = dbpReporteDetalle
              DisplayFormat = '#,0.00;-#,0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 15cpi'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbpReporteDetalle'
              mmHeight = 2381
              mmLeft = 186002
              mmTop = 265
              mmWidth = 15081
              BandType = 4
            end
          end
          object ppSummaryBand1: TppSummaryBand
            mmBottomOffset = 0
            mmHeight = 6350
            mmPrintPosition = 0
            object ppDBCalc1: TppDBCalc
              UserName = 'DBCalc1'
              DataField = 'CANT_NOR'
              DataPipeline = dbpReporteDetalle
              DisplayFormat = '#,0;-#,0'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbpReporteDetalle'
              mmHeight = 2381
              mmLeft = 23813
              mmTop = 1058
              mmWidth = 9790
              BandType = 7
            end
            object ppLabel38: TppLabel
              UserName = 'Label38'
              Caption = 'Total :'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 15cpi'
              Font.Size = 6
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 2381
              mmLeft = 9790
              mmTop = 1058
              mmWidth = 6350
              BandType = 7
            end
            object ppDBCalc2: TppDBCalc
              UserName = 'DBCalc2'
              DataField = 'SALVEN_NOR'
              DataPipeline = dbpReporteDetalle
              DisplayFormat = '#,0.00;-#,0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbpReporteDetalle'
              mmHeight = 2381
              mmLeft = 33867
              mmTop = 1058
              mmWidth = 16404
              BandType = 7
            end
            object ppDBCalc3: TppDBCalc
              UserName = 'DBCalc3'
              DataField = 'SALVEN_CPP'
              DataPipeline = dbpReporteDetalle
              DisplayFormat = '#,0.00;-#,0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbpReporteDetalle'
              mmHeight = 2381
              mmLeft = 62971
              mmTop = 1058
              mmWidth = 16404
              BandType = 7
            end
            object ppDBCalc4: TppDBCalc
              UserName = 'DBCalc4'
              DataField = 'CANT_CPP'
              DataPipeline = dbpReporteDetalle
              DisplayFormat = '#,0;-#,0'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbpReporteDetalle'
              mmHeight = 2381
              mmLeft = 52917
              mmTop = 1058
              mmWidth = 9790
              BandType = 7
            end
            object ppDBCalc5: TppDBCalc
              UserName = 'DBCalc5'
              DataField = 'SALVEN_DEF'
              DataPipeline = dbpReporteDetalle
              DisplayFormat = '#,0.00;-#,0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbpReporteDetalle'
              mmHeight = 2381
              mmLeft = 91811
              mmTop = 1058
              mmWidth = 16404
              BandType = 7
            end
            object ppDBCalc6: TppDBCalc
              UserName = 'DBCalc6'
              DataField = 'CANT_DEF'
              DataPipeline = dbpReporteDetalle
              DisplayFormat = '#,0;-#,0'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbpReporteDetalle'
              mmHeight = 2381
              mmLeft = 81492
              mmTop = 1058
              mmWidth = 9790
              BandType = 7
            end
            object ppDBCalc7: TppDBCalc
              UserName = 'DBCalc7'
              DataField = 'SALVEN_DUD'
              DataPipeline = dbpReporteDetalle
              DisplayFormat = '#,0.00;-#,0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbpReporteDetalle'
              mmHeight = 2381
              mmLeft = 120915
              mmTop = 1058
              mmWidth = 16404
              BandType = 7
            end
            object ppDBCalc8: TppDBCalc
              UserName = 'DBCalc8'
              DataField = 'CANT_DUD'
              DataPipeline = dbpReporteDetalle
              DisplayFormat = '#,0;-#,0'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbpReporteDetalle'
              mmHeight = 2381
              mmLeft = 111125
              mmTop = 1058
              mmWidth = 9790
              BandType = 7
            end
            object ppDBCalc9: TppDBCalc
              UserName = 'DBCalc9'
              DataField = 'SALVEN_PER'
              DataPipeline = dbpReporteDetalle
              DisplayFormat = '#,0.00;-#,0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbpReporteDetalle'
              mmHeight = 2381
              mmLeft = 153459
              mmTop = 1058
              mmWidth = 16404
              BandType = 7
            end
            object ppDBCalc10: TppDBCalc
              UserName = 'DBCalc10'
              DataField = 'CANT_PER'
              DataPipeline = dbpReporteDetalle
              DisplayFormat = '#,0;-#,0'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbpReporteDetalle'
              mmHeight = 2381
              mmLeft = 141023
              mmTop = 1058
              mmWidth = 9790
              BandType = 7
            end
            object ppDBCalc11: TppDBCalc
              UserName = 'DBCalc11'
              DataField = 'SALVEN_CAN'
              DataPipeline = dbpReporteDetalle
              DisplayFormat = '#,0.00;-#,0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbpReporteDetalle'
              mmHeight = 2381
              mmLeft = 184680
              mmTop = 1058
              mmWidth = 16404
              BandType = 7
            end
            object ppDBCalc12: TppDBCalc
              UserName = 'DBCalc12'
              DataField = 'CANT_CAN'
              DataPipeline = dbpReporteDetalle
              DisplayFormat = '#,0;-#,0'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbpReporteDetalle'
              mmHeight = 2381
              mmLeft = 174096
              mmTop = 1058
              mmWidth = 9790
              BandType = 7
            end
          end
        end
      end
      object ppDBCalc13: TppDBCalc
        UserName = 'DBCalc13'
        DataField = 'CANT_CAIDAS_ACT'
        DataPipeline = dbpReporte
        DisplayFormat = '#,0;-#,0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpReporte'
        mmHeight = 2381
        mmLeft = 26723
        mmTop = 1323
        mmWidth = 10848
        BandType = 7
      end
      object ppLabel39: TppLabel
        UserName = 'Label39'
        Caption = 'Total :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 6
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2381
        mmLeft = 12700
        mmTop = 1323
        mmWidth = 6350
        BandType = 7
      end
      object ppDBCalc14: TppDBCalc
        UserName = 'DBCalc14'
        DataField = 'SALVEN_CAIDAS_ACT'
        DataPipeline = dbpReporte
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpReporte'
        mmHeight = 2381
        mmLeft = 39423
        mmTop = 1323
        mmWidth = 17727
        BandType = 7
      end
      object ppDBCalc15: TppDBCalc
        UserName = 'DBCalc15'
        DataField = 'SALVEN_PERMANENCIAS_ACT'
        DataPipeline = dbpReporte
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpReporte'
        mmHeight = 2381
        mmLeft = 74877
        mmTop = 1323
        mmWidth = 17727
        BandType = 7
      end
      object ppDBCalc16: TppDBCalc
        UserName = 'DBCalc16'
        DataField = 'CANT_PERMANENCIAS_ACT'
        DataPipeline = dbpReporte
        DisplayFormat = '#,0;-#,0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpReporte'
        mmHeight = 2381
        mmLeft = 61913
        mmTop = 1323
        mmWidth = 10848
        BandType = 7
      end
      object ppDBCalc17: TppDBCalc
        UserName = 'DBCalc17'
        DataField = 'SALVEN_MEJORAS_ACT'
        DataPipeline = dbpReporte
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpReporte'
        mmHeight = 2381
        mmLeft = 110067
        mmTop = 1323
        mmWidth = 17727
        BandType = 7
      end
      object ppDBCalc18: TppDBCalc
        UserName = 'DBCalc18'
        DataField = 'CANT_MEJORAS_ACT'
        DataPipeline = dbpReporte
        DisplayFormat = '#,0;-#,0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpReporte'
        mmHeight = 2381
        mmLeft = 97367
        mmTop = 1323
        mmWidth = 10848
        BandType = 7
      end
      object ppDBCalc19: TppDBCalc
        UserName = 'DBCalc19'
        DataField = 'SALVEN_NUEVOS_ACT'
        DataPipeline = dbpReporte
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpReporte'
        mmHeight = 2381
        mmLeft = 146579
        mmTop = 1323
        mmWidth = 17727
        BandType = 7
      end
      object ppDBCalc20: TppDBCalc
        UserName = 'DBCalc20'
        DataField = 'CANT_NUEVOS_ACT'
        DataPipeline = dbpReporte
        DisplayFormat = '#,0;-#,0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpReporte'
        mmHeight = 2381
        mmLeft = 133879
        mmTop = 1323
        mmWidth = 10848
        BandType = 7
      end
      object ppDBCalc21: TppDBCalc
        UserName = 'DBCalc21'
        DataField = 'SALVEN_TOTAL_ACT'
        DataPipeline = dbpReporte
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpReporte'
        mmHeight = 2381
        mmLeft = 182827
        mmTop = 1323
        mmWidth = 17727
        BandType = 7
      end
      object ppDBCalc22: TppDBCalc
        UserName = 'DBCalc22'
        DataField = 'CANT_TOTAL_ACT'
        DataPipeline = dbpReporte
        DisplayFormat = '#,0;-#,0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpReporte'
        mmHeight = 2381
        mmLeft = 170127
        mmTop = 1323
        mmWidth = 10848
        BandType = 7
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object dbpReporteDetalle: TppDBPipeline
    AutoCreateFields = False
    UserName = 'dbpReporteDetalle'
    Left = 221
    Top = 280
  end
  object dbpReporteCalificaciones: TppDBPipeline
    AutoCreateFields = False
    UserName = 'dbpReporteCalificaciones'
    Left = 317
    Top = 280
  end
end
