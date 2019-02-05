object FRepGestor: TFRepGestor
  Left = 170
  Top = 32
  Width = 1012
  Height = 683
  Caption = 'Reportes por Gestor'
  Color = 10207162
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object gbFiltro: TGroupBox
    Left = 0
    Top = 0
    Width = 996
    Height = 45
    Align = alTop
    TabOrder = 0
    object lblTitulo: TLabel
      Left = 316
      Top = 13
      Width = 529
      Height = 26
      Alignment = taCenter
      AutoSize = False
      Caption = 'Reportes'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl1: TLabel
      Left = 12
      Top = 17
      Width = 135
      Height = 16
      Caption = 'Periodo de Gestion'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object cboPeriodoCartera: TwwDBLookupCombo
      Left = 156
      Top = 11
      Width = 90
      Height = 25
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      DropDownAlignment = taLeftJustify
      LookupTable = DM1.cdsQry3
      Options = [loColLines, loRowLines]
      Style = csDropDownList
      ParentFont = False
      TabOrder = 0
      AutoDropDown = False
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      OnChange = cboPeriodoCarteraChange
    end
  end
  object pnl1: TPanel
    Left = 0
    Top = 602
    Width = 996
    Height = 43
    Align = alBottom
    BevelOuter = bvNone
    ParentColor = True
    TabOrder = 1
    DesignSize = (
      996
      43)
    object lblReg: TLabel
      Left = 18
      Top = 13
      Width = 104
      Height = 16
      Caption = ' Registros : '
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Visible = False
    end
    object btnExportar: TBitBtn
      Left = 785
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
      TabOrder = 0
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
    object btnSalir: TBitBtn
      Left = 896
      Top = 7
      Width = 100
      Height = 32
      Hint = 'Salir'
      Anchors = [akTop, akRight]
      Caption = '&Salir'
      TabOrder = 1
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
    object btnImprimir: TBitBtn
      Left = 662
      Top = 6
      Width = 100
      Height = 32
      Hint = 'Imprimir'
      Anchors = [akTop, akRight]
      Caption = 'Imprimir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
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
  end
  object Panel1: TPanel
    Left = 0
    Top = 45
    Width = 996
    Height = 45
    Align = alTop
    Color = 10207162
    TabOrder = 2
    object BitBtn1: TBitBtn
      Left = 9
      Top = 9
      Width = 220
      Height = 29
      Caption = 'Gestores por Gestion Realizada'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 238
      Top = 9
      Width = 220
      Height = 29
      Caption = 'Gestores por Forma de Pago'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = BitBtn2Click
    end
    object BitBtn3: TBitBtn
      Left = 467
      Top = 9
      Width = 220
      Height = 29
      Caption = 'Docentes Asignados al Gestor'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = BitBtn3Click
    end
    object BitBtn4: TBitBtn
      Left = 696
      Top = 9
      Width = 220
      Height = 29
      Caption = 'Total de Docentes Asign.a un Gestor'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      Visible = False
      OnClick = BitBtn4Click
    end
  end
  object dbgData: TwwDBGrid
    Left = 0
    Top = 144
    Width = 996
    Height = 458
    DisableThemesInTitle = False
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
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    ParentFont = False
    TabOrder = 3
    TitleAlignment = taCenter
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
    TitleLines = 2
    TitleButtons = False
    OnCalcCellColors = dbgDataCalcCellColors
    OnDblClick = dbgDataDblClick
    FooterCellColor = 12180735
    PaintOptions.AlternatingRowColor = clInfoBk
  end
  object Panel2: TPanel
    Left = 0
    Top = 90
    Width = 996
    Height = 54
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvNone
    Color = 10207162
    TabOrder = 4
    object pnlBusca: TPanel
      Left = 1
      Top = 1
      Width = 994
      Height = 52
      Align = alClient
      BevelOuter = bvNone
      Color = 10207162
      TabOrder = 0
      Visible = False
      object Label1: TLabel
        Left = 346
        Top = 16
        Width = 51
        Height = 19
        Caption = 'Gestor'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 557
        Top = 16
        Width = 72
        Height = 19
        Caption = 'Asociado'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object dblcdGestor: TwwDBLookupComboDlg
        Left = 402
        Top = 14
        Width = 135
        Height = 24
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
        GridColor = clWhite
        GridTitleAlignment = taLeftJustify
        Caption = 'Lookup'
        MaxWidth = 0
        MaxHeight = 209
        ParentFont = False
        TabOrder = 0
        AutoDropDown = False
        ShowButton = True
        AllowClearKey = False
        OnChange = dblcdGestorChange
      end
      object edtBuscar: TEdit
        Left = 633
        Top = 12
        Width = 283
        Height = 24
        CharCase = ecUpperCase
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        OnChange = edtBuscarChange
        OnKeyPress = edtBuscarKeyPress
      end
      object rgContac: TRadioGroup
        Left = 8
        Top = 1
        Width = 310
        Height = 40
        Columns = 3
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ItemIndex = 0
        Items.Strings = (
          'Todos'
          'Contacto'
          'No Contacto')
        ParentFont = False
        TabOrder = 2
        OnClick = rgContacClick
      end
    end
    object pnlFiltros: TPanel
      Left = 0
      Top = 2
      Width = 993
      Height = 52
      BevelOuter = bvNone
      Color = 10207162
      TabOrder = 1
      Visible = False
      object dblcDpto: TwwDBLookupCombo
        Left = 6
        Top = 21
        Width = 39
        Height = 21
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'DPTOID'#9'3'#9'Codigo'#9'F'
          'DPTODES'#9'27'#9'Descripci'#243'n'#9'F')
        LookupTable = DM1.cdsDpto
        LookupField = 'DPTOID'
        Options = [loColLines, loRowLines]
        ParentFont = False
        TabOrder = 0
        AutoDropDown = False
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = False
        OnChange = dblcDptoChange
      end
      object dblcProvin: TwwDBLookupCombo
        Left = 141
        Top = 21
        Width = 39
        Height = 21
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'CIUDID'#9'3'#9'Codigo'#9'F'
          'CIUDDES'#9'27'#9'Descripci'#243'n'#9'F')
        LookupTable = DM1.cdsProvin
        LookupField = 'CIUDID'
        Options = [loColLines, loRowLines]
        ParentFont = False
        TabOrder = 1
        AutoDropDown = False
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = False
        OnChange = dblcProvinChange
        OnEnter = dblcProvinEnter
      end
      object dblcDist: TwwDBLookupCombo
        Left = 310
        Top = 21
        Width = 39
        Height = 21
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'ZIPID'#9'3'#9'Codigo'#9'F'
          'ZIPDES'#9'27'#9'Descripci'#243'n'#9'F')
        LookupTable = DM1.cdsDist
        LookupField = 'ZIPID'
        Options = [loColLines, loRowLines]
        ParentFont = False
        TabOrder = 2
        AutoDropDown = False
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = False
        OnChange = dblcDistChange
        OnEnter = dblcDistEnter
      end
      object edtDpto: TEdit
        Left = 47
        Top = 22
        Width = 90
        Height = 23
        BevelKind = bkFlat
        BorderStyle = bsNone
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 3
      end
      object edtProvin: TEdit
        Left = 182
        Top = 22
        Width = 125
        Height = 23
        BevelKind = bkFlat
        BorderStyle = bsNone
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 4
      end
      object edtDist: TEdit
        Left = 351
        Top = 22
        Width = 136
        Height = 23
        BevelKind = bkFlat
        BorderStyle = bsNone
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 5
      end
      object dblcGestores: TwwDBLookupCombo
        Left = 503
        Top = 21
        Width = 52
        Height = 21
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'CODIGO'#9'3'#9'Codigo'#9'F'
          'DESCRIPCION'#9'27'#9'Descripci'#243'n'#9'F')
        LookupTable = DM1.cdsGestores
        LookupField = 'CODIGO'
        Options = [loColLines, loRowLines]
        ParentFont = False
        TabOrder = 6
        AutoDropDown = False
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = False
        OnChange = dblcGestoresChange
      end
      object Panel11: TPanel
        Left = 8
        Top = 7
        Width = 961
        Height = 13
        BevelOuter = bvNone
        Color = 10207162
        TabOrder = 7
        object Label17: TLabel
          Left = 2
          Top = -1
          Width = 117
          Height = 14
          AutoSize = False
          Caption = 'Departamento (DOM)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
        end
        object Label18: TLabel
          Left = 137
          Top = -1
          Width = 93
          Height = 14
          AutoSize = False
          Caption = 'Provincia (DOM)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
        end
        object Label19: TLabel
          Left = 306
          Top = -1
          Width = 79
          Height = 14
          AutoSize = False
          Caption = 'Distrito (DOM)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
        end
        object Label3: TLabel
          Left = 500
          Top = -1
          Width = 79
          Height = 14
          AutoSize = False
          Caption = 'GESTORES'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
        end
        object Label4: TLabel
          Left = 679
          Top = -1
          Width = 79
          Height = 14
          AutoSize = False
          Caption = 'Campa'#241'as'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
        end
        object Label5: TLabel
          Left = 861
          Top = -1
          Width = 79
          Height = 14
          AutoSize = False
          Caption = 'Ordenar'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
        end
      end
      object edtGestores: TEdit
        Left = 556
        Top = 21
        Width = 114
        Height = 23
        BevelKind = bkFlat
        BorderStyle = bsNone
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 8
      end
      object edtCampanna: TEdit
        Left = 738
        Top = 21
        Width = 113
        Height = 23
        BevelKind = bkFlat
        BorderStyle = bsNone
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 9
      end
      object dblcCampannas: TwwDBLookupCombo
        Left = 683
        Top = 21
        Width = 52
        Height = 21
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'IDCONCAM'#9'3'#9'Codigo'#9'F'
          'NOMCAM'#9'27'#9'Descripci'#243'n'#9'F')
        LookupTable = DM1.cdsCampannas
        LookupField = 'IDCONCAM'
        Options = [loColLines, loRowLines]
        ParentFont = False
        TabOrder = 10
        AutoDropDown = False
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = False
        OnChange = dblcCampannasChange
      end
      object cmbOrden: TComboBox
        Left = 864
        Top = 21
        Width = 113
        Height = 21
        ItemHeight = 13
        TabOrder = 11
        OnChange = cmbOrdenChange
      end
    end
  end
  object dbpRptPipeline: TppDBPipeline
    UserName = 'dbpRptPipeline'
    Left = 72
    Top = 224
  end
  object repReport: TppReport
    AutoStop = False
    DataPipeline = dbpRptPipeline
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 210000
    PrinterSetup.mmPaperWidth = 297000
    PrinterSetup.PaperSize = 9
    Template.FileName = 
      'D:\Desarrollo DM\Gestion de Cobranza\HPC_201205_GESCOB - ROLANDO' +
      '\FUENTES_CLIENTE\limaMetropolitana.rtm'
    Units = utMillimeters
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zs100Percent
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 69
    Top = 280
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'dbpRptPipeline'
    object ppHeaderBand2: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 36777
      mmPrintPosition = 0
      object ppShape3: TppShape
        UserName = 'Shape1'
        mmHeight = 9525
        mmLeft = 0
        mmTop = 27252
        mmWidth = 284428
        BandType = 0
      end
      object ppLabel22: TppLabel
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
      object ppLabel23: TppLabel
        UserName = 'Label106'
        Caption = 'Sistema de Gesti'#243'n de Cobranzas'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3239
        mmLeft = 265
        mmTop = 4498
        mmWidth = 42947
        BandType = 0
      end
      object ppLabel24: TppLabel
        UserName = 'Label45'
        Caption = 'Fecha'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 255853
        mmTop = 529
        mmWidth = 7938
        BandType = 0
      end
      object ppLabel25: TppLabel
        UserName = 'Label46'
        Caption = 'Hora'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 257705
        mmTop = 5027
        mmWidth = 6085
        BandType = 0
      end
      object ppLabel26: TppLabel
        UserName = 'Label47'
        Caption = 'Pag'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 258763
        mmTop = 9525
        mmWidth = 5027
        BandType = 0
      end
      object ppSystemVariable4: TppSystemVariable
        UserName = 'SystemVariable4'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 267230
        mmTop = 529
        mmWidth = 16140
        BandType = 0
      end
      object ppSystemVariable5: TppSystemVariable
        UserName = 'SystemVariable5'
        VarType = vtTime
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 267230
        mmTop = 5027
        mmWidth = 16404
        BandType = 0
      end
      object ppSystemVariable6: TppSystemVariable
        UserName = 'SystemVariable6'
        VarType = vtPageNo
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 267230
        mmTop = 9525
        mmWidth = 1323
        BandType = 0
      end
      object ppLblTit01: TppLabel
        UserName = 'LblTit01'
        AutoSize = False
        Caption = 'ASIGNACION CARTERA LIMA METROPOLITANA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5027
        mmLeft = 0
        mmTop = 14023
        mmWidth = 284428
        BandType = 0
      end
      object ppLabel28: TppLabel
        UserName = 'Label48'
        Caption = ' : '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 264055
        mmTop = 9525
        mmWidth = 2910
        BandType = 0
      end
      object ppLabel29: TppLabel
        UserName = 'Label49'
        Caption = ' : '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 264055
        mmTop = 5027
        mmWidth = 2910
        BandType = 0
      end
      object ppLabel30: TppLabel
        UserName = 'Label50'
        Caption = ' : '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 264055
        mmTop = 529
        mmWidth = 2910
        BandType = 0
      end
      object ppLblTit02: TppLabel
        UserName = 'LblTit02'
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 0
        mmTop = 19315
        mmWidth = 284163
        BandType = 0
      end
      object ppLabel32: TppLabel
        UserName = 'Label3'
        Caption = 'USUARIO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3440
        mmLeft = 3969
        mmTop = 28310
        mmWidth = 32544
        BandType = 0
      end
      object ppLabel33: TppLabel
        UserName = 'Label4'
        Caption = 'Asignadas'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3260
        mmLeft = 38629
        mmTop = 28046
        mmWidth = 13250
        BandType = 0
      end
      object ppLine26: TppLine
        UserName = 'Line3'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 9525
        mmLeft = 52652
        mmTop = 27252
        mmWidth = 2117
        BandType = 0
      end
      object ppLine27: TppLine
        UserName = 'Line4'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 9260
        mmLeft = 130704
        mmTop = 27517
        mmWidth = 2117
        BandType = 0
      end
      object ppLine28: TppLine
        UserName = 'Line5'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 9260
        mmLeft = 145521
        mmTop = 27252
        mmWidth = 2117
        BandType = 0
      end
      object ppLine29: TppLine
        UserName = 'Line6'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 8996
        mmLeft = 233098
        mmTop = 27517
        mmWidth = 2117
        BandType = 0
      end
      object ppLine31: TppLine
        UserName = 'Line1'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 9525
        mmLeft = 188648
        mmTop = 27252
        mmWidth = 2117
        BandType = 0
      end
      object ppLine32: TppLine
        UserName = 'Line2'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 9260
        mmLeft = 174890
        mmTop = 27252
        mmWidth = 2117
        BandType = 0
      end
      object ppLine33: TppLine
        UserName = 'Line8'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 9260
        mmLeft = 160867
        mmTop = 27252
        mmWidth = 2117
        BandType = 0
      end
      object ppLabel34: TppLabel
        UserName = 'Label1'
        Caption = 'Gestionadas'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3260
        mmLeft = 53446
        mmTop = 28046
        mmWidth = 15917
        BandType = 0
      end
      object ppLabel35: TppLabel
        UserName = 'Label5'
        Caption = 'Contactados'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 100013
        mmTop = 28046
        mmWidth = 15875
        BandType = 0
      end
      object ppLabel36: TppLabel
        UserName = 'Label15'
        Caption = 'Directo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 117475
        mmTop = 28046
        mmWidth = 12435
        BandType = 0
      end
      object ppLabel37: TppLabel
        UserName = 'Label16'
        Caption = 'Ref x'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 189971
        mmTop = 28046
        mmWidth = 11642
        BandType = 0
      end
      object ppLabel38: TppLabel
        UserName = 'Label17'
        Caption = 'Efectivo x'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 146579
        mmTop = 28046
        mmWidth = 13229
        BandType = 0
      end
      object ppLabel39: TppLabel
        UserName = 'Label18'
        Caption = 'Efectivo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 161925
        mmTop = 28046
        mmWidth = 12171
        BandType = 0
      end
      object ppLabel40: TppLabel
        UserName = 'Label19'
        Caption = 'Monto'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 175948
        mmTop = 28046
        mmWidth = 11906
        BandType = 0
      end
      object ppLabel41: TppLabel
        UserName = 'Label20'
        Caption = 'Indirecto'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 131498
        mmTop = 28046
        mmWidth = 13229
        BandType = 0
      end
      object ppLine34: TppLine
        UserName = 'Line24'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 9260
        mmLeft = 69850
        mmTop = 27252
        mmWidth = 1588
        BandType = 0
      end
      object ppLine35: TppLine
        UserName = 'Line25'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 9260
        mmLeft = 116681
        mmTop = 27252
        mmWidth = 2117
        BandType = 0
      end
      object ppLabel43: TppLabel
        UserName = 'Label2'
        Caption = 'Promesa'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 146579
        mmTop = 32015
        mmWidth = 13229
        BandType = 0
      end
      object ppLabel44: TppLabel
        UserName = 'Label22'
        Caption = 'Otro Res.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 161925
        mmTop = 32015
        mmWidth = 12150
        BandType = 0
      end
      object ppLabel45: TppLabel
        UserName = 'Label23'
        Caption = 'Efectivo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 175948
        mmTop = 32015
        mmWidth = 11906
        BandType = 0
      end
      object ppLabel46: TppLabel
        UserName = 'Label24'
        Caption = 'Promesa'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 189707
        mmTop = 32015
        mmWidth = 11906
        BandType = 0
      end
      object ppLine36: TppLine
        UserName = 'Line12'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 8996
        mmLeft = 202407
        mmTop = 27517
        mmWidth = 2117
        BandType = 0
      end
      object ppLabel47: TppLabel
        UserName = 'Label25'
        Caption = 'Ref'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 203465
        mmTop = 28046
        mmWidth = 11377
        BandType = 0
      end
      object ppLabel48: TppLabel
        UserName = 'Label26'
        Caption = 'Otro Res'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3260
        mmLeft = 203465
        mmTop = 32015
        mmWidth = 11345
        BandType = 0
      end
      object ppLine37: TppLine
        UserName = 'Line27'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 8996
        mmLeft = 215900
        mmTop = 27517
        mmWidth = 2117
        BandType = 0
      end
      object ppLabel49: TppLabel
        UserName = 'Label27'
        Caption = 'Refinanciado'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3260
        mmLeft = 216430
        mmTop = 32015
        mmWidth = 16510
        BandType = 0
      end
      object ppLabel50: TppLabel
        UserName = 'Label28'
        Caption = 'Monto'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 216430
        mmTop = 28046
        mmWidth = 16404
        BandType = 0
      end
      object ppLabel51: TppLabel
        UserName = 'Label29'
        Caption = 'Abono'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 234157
        mmTop = 32015
        mmWidth = 12700
        BandType = 0
      end
      object ppLabel52: TppLabel
        UserName = 'Label30'
        Caption = 'Nota'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 234157
        mmTop = 28046
        mmWidth = 12700
        BandType = 0
      end
      object ppLine38: TppLine
        UserName = 'Line29'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 8996
        mmLeft = 247650
        mmTop = 27517
        mmWidth = 1588
        BandType = 0
      end
      object ppLabel53: TppLabel
        UserName = 'Label201'
        Caption = 'Beneficios'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3260
        mmLeft = 248444
        mmTop = 28046
        mmWidth = 13123
        BandType = 0
      end
      object ppLine39: TppLine
        UserName = 'Line30'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 8996
        mmLeft = 262203
        mmTop = 27517
        mmWidth = 2117
        BandType = 0
      end
      object ppLine2: TppLine
        UserName = 'Line33'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 9525
        mmLeft = 38100
        mmTop = 27252
        mmWidth = 2117
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label7'
        Caption = 'Tipo de Gesti'#243'n'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3260
        mmLeft = 73903
        mmTop = 28310
        mmWidth = 19939
        BandType = 0
      end
      object ppLine3: TppLine
        UserName = 'Line7'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 9260
        mmLeft = 98690
        mmTop = 27517
        mmWidth = 2117
        BandType = 0
      end
      object ppLblTit03: TppLabel
        UserName = 'ppLblTit03'
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 0
        mmTop = 23283
        mmWidth = 284692
        BandType = 0
      end
    end
    object ppDetailBand2: TppDetailBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 5292
      mmPrintPosition = 0
      object ppLine40: TppLine
        UserName = 'Line10'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5292
        mmLeft = 0
        mmTop = 0
        mmWidth = 2117
        BandType = 4
      end
      object ppLine41: TppLine
        UserName = 'Line11'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5292
        mmLeft = 52652
        mmTop = 0
        mmWidth = 1588
        BandType = 4
      end
      object ppLine42: TppLine
        UserName = 'Line14'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5292
        mmLeft = 69850
        mmTop = 0
        mmWidth = 2117
        BandType = 4
      end
      object ppLine43: TppLine
        UserName = 'Line15'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5292
        mmLeft = 116681
        mmTop = 0
        mmWidth = 2117
        BandType = 4
      end
      object ppLine44: TppLine
        UserName = 'Line16'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5292
        mmLeft = 130704
        mmTop = 0
        mmWidth = 529
        BandType = 4
      end
      object ppLine45: TppLine
        UserName = 'Line17'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5292
        mmLeft = 145521
        mmTop = 0
        mmWidth = 2117
        BandType = 4
      end
      object ppLine46: TppLine
        UserName = 'Line18'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5292
        mmLeft = 174890
        mmTop = 0
        mmWidth = 2117
        BandType = 4
      end
      object ppLine47: TppLine
        UserName = 'Line19'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 5292
        mmLeft = 282311
        mmTop = 0
        mmWidth = 2117
        BandType = 4
      end
      object ppDBText13: TppDBText
        UserName = 'DBText2'
        DataField = 'USUARIO_GES'
        DataPipeline = dbpRptPipeline
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpRptPipeline'
        mmHeight = 3175
        mmLeft = 2910
        mmTop = 1058
        mmWidth = 33073
        BandType = 4
      end
      object ppDBText14: TppDBText
        UserName = 'DBText3'
        DataField = 'GESTIONADAS'
        DataPipeline = dbpRptPipeline
        DisplayFormat = '#,0;-#,0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpRptPipeline'
        mmHeight = 3175
        mmLeft = 53711
        mmTop = 1058
        mmWidth = 15081
        BandType = 4
      end
      object ppDBText15: TppDBText
        UserName = 'DBText4'
        DataField = 'CONTACTADOS'
        DataPipeline = dbpRptPipeline
        DisplayFormat = '#,0;-#,0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpRptPipeline'
        mmHeight = 3175
        mmLeft = 99484
        mmTop = 1058
        mmWidth = 16669
        BandType = 4
      end
      object ppDBText16: TppDBText
        UserName = 'DBText5'
        DataField = 'INDIRECTO'
        DataPipeline = dbpRptPipeline
        DisplayFormat = '#,0;-#,0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpRptPipeline'
        mmHeight = 3175
        mmLeft = 131763
        mmTop = 1058
        mmWidth = 12965
        BandType = 4
      end
      object ppDBText17: TppDBText
        UserName = 'DBText6'
        DataField = 'DIRECTO'
        DataPipeline = dbpRptPipeline
        DisplayFormat = '#,0;-#,0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpRptPipeline'
        mmHeight = 3175
        mmLeft = 117211
        mmTop = 1058
        mmWidth = 12700
        BandType = 4
      end
      object ppDBText18: TppDBText
        UserName = 'DBText7'
        DataField = 'EFE_OTRO_RES'
        DataPipeline = dbpRptPipeline
        DisplayFormat = '#,0;-#,0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpRptPipeline'
        mmHeight = 3175
        mmLeft = 161925
        mmTop = 1058
        mmWidth = 12171
        BandType = 4
      end
      object ppDBText19: TppDBText
        UserName = 'DBText8'
        DataField = 'MONTO_EFECTIVO'
        DataPipeline = dbpRptPipeline
        DisplayFormat = '#,0;-#,0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpRptPipeline'
        mmHeight = 3175
        mmLeft = 175684
        mmTop = 1058
        mmWidth = 11906
        BandType = 4
      end
      object ppDBText20: TppDBText
        UserName = 'DBText9'
        DataField = 'REF_X_PROMESA'
        DataPipeline = dbpRptPipeline
        DisplayFormat = '#,0;-#,0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpRptPipeline'
        mmHeight = 3175
        mmLeft = 189177
        mmTop = 1058
        mmWidth = 12435
        BandType = 4
      end
      object ppDBText21: TppDBText
        UserName = 'DBText10'
        DataField = 'MONTO_REFINANCIADO'
        DataPipeline = dbpRptPipeline
        DisplayFormat = '#,0;-#,0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpRptPipeline'
        mmHeight = 3175
        mmLeft = 216694
        mmTop = 1058
        mmWidth = 15875
        BandType = 4
      end
      object ppDBText22: TppDBText
        UserName = 'DBText11'
        DataField = 'NOTA_ABONO'
        DataPipeline = dbpRptPipeline
        DisplayFormat = '#,0;-#,0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpRptPipeline'
        mmHeight = 3175
        mmLeft = 234157
        mmTop = 1058
        mmWidth = 12700
        BandType = 4
      end
      object ppDBText23: TppDBText
        UserName = 'DBText12'
        DataField = 'TOTAL'
        DataPipeline = dbpRptPipeline
        DisplayFormat = '#,0;-#,0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpRptPipeline'
        mmHeight = 3175
        mmLeft = 269876
        mmTop = 1058
        mmWidth = 13229
        BandType = 4
      end
      object ppLine48: TppLine
        UserName = 'Line20'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5292
        mmLeft = 188648
        mmTop = 0
        mmWidth = 2117
        BandType = 4
      end
      object ppLine49: TppLine
        UserName = 'Line21'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5292
        mmLeft = 233098
        mmTop = 0
        mmWidth = 2117
        BandType = 4
      end
      object ppLine50: TppLine
        UserName = 'Line22'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5292
        mmLeft = 262203
        mmTop = 0
        mmWidth = 2117
        BandType = 4
      end
      object ppLine51: TppLine
        UserName = 'Line23'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5292
        mmLeft = 247650
        mmTop = 0
        mmWidth = 2117
        BandType = 4
      end
      object ppDBText24: TppDBText
        UserName = 'DBText1'
        DataField = 'ASIGNADAS'
        DataPipeline = dbpRptPipeline
        DisplayFormat = '#,0;-#,0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpRptPipeline'
        mmHeight = 3440
        mmLeft = 39952
        mmTop = 1058
        mmWidth = 11377
        BandType = 4
      end
      object ppLine52: TppLine
        UserName = 'Line13'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5292
        mmLeft = 160867
        mmTop = 0
        mmWidth = 2117
        BandType = 4
      end
      object ppDBText25: TppDBText
        UserName = 'DBText13'
        DataField = 'EFE_X_PROMESA'
        DataPipeline = dbpRptPipeline
        DisplayFormat = '#,0;-#,0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpRptPipeline'
        mmHeight = 3175
        mmLeft = 146315
        mmTop = 1058
        mmWidth = 13494
        BandType = 4
      end
      object ppLine53: TppLine
        UserName = 'Line26'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5292
        mmLeft = 202407
        mmTop = 0
        mmWidth = 2117
        BandType = 4
      end
      object ppDBText27: TppDBText
        UserName = 'DBText15'
        DataField = 'REF_OTRO_RES'
        DataPipeline = dbpRptPipeline
        DisplayFormat = '#,0;-#,0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpRptPipeline'
        mmHeight = 3175
        mmLeft = 203465
        mmTop = 1058
        mmWidth = 11642
        BandType = 4
      end
      object ppLine54: TppLine
        UserName = 'Line28'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5292
        mmLeft = 215900
        mmTop = 0
        mmWidth = 2117
        BandType = 4
      end
      object ppDBText28: TppDBText
        UserName = 'DBText16'
        DataField = 'BENEFICIOS'
        DataPipeline = dbpRptPipeline
        DisplayFormat = '#,0;-#,0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpRptPipeline'
        mmHeight = 3175
        mmLeft = 248444
        mmTop = 1058
        mmWidth = 12965
        BandType = 4
      end
      object ppLine1: TppLine
        UserName = 'Line32'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5292
        mmLeft = 38100
        mmTop = 0
        mmWidth = 1588
        BandType = 4
      end
      object ppLine4: TppLine
        UserName = 'Line31'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5292
        mmLeft = 98690
        mmTop = 0
        mmWidth = 2117
        BandType = 4
      end
      object ppDBText1: TppDBText
        UserName = 'DBText14'
        DataField = 'TIPO_GESTION'
        DataPipeline = dbpRptPipeline
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpRptPipeline'
        mmHeight = 3175
        mmLeft = 70115
        mmTop = 1058
        mmWidth = 28840
        BandType = 4
      end
    end
    object ppFooterBand2: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 6615
      mmPrintPosition = 0
      object ppLblUser: TppLabel
        UserName = 'LblUser'
        AutoSize = False
        Caption = 'Emitido Por :  '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 1058
        mmTop = 1323
        mmWidth = 96044
        BandType = 8
      end
    end
    object ppSummaryBand2: TppSummaryBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 9525
      mmPrintPosition = 0
      object ppShape4: TppShape
        UserName = 'Shape2'
        mmHeight = 5821
        mmLeft = 0
        mmTop = 1058
        mmWidth = 284428
        BandType = 7
      end
      object ppLabel56: TppLabel
        UserName = 'Label6'
        Caption = 'Totales :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 10583
        mmTop = 2117
        mmWidth = 15081
        BandType = 7
      end
      object ppDBCalc11: TppDBCalc
        UserName = 'DBCalc1'
        DataField = 'ASIGNADAS'
        DataPipeline = dbpRptPipeline
        DisplayFormat = '#,0;-#,0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpRptPipeline'
        mmHeight = 3440
        mmLeft = 39423
        mmTop = 2117
        mmWidth = 13229
        BandType = 7
      end
      object ppDBCalc12: TppDBCalc
        UserName = 'DBCalc2'
        DataField = 'GESTIONADAS'
        DataPipeline = dbpRptPipeline
        DisplayFormat = '#,0;-#,0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpRptPipeline'
        mmHeight = 3440
        mmLeft = 55298
        mmTop = 2117
        mmWidth = 14288
        BandType = 7
      end
      object ppDBCalc13: TppDBCalc
        UserName = 'DBCalc3'
        DataField = 'CONTACTADOS'
        DataPipeline = dbpRptPipeline
        DisplayFormat = '#,0;-#,0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpRptPipeline'
        mmHeight = 3440
        mmLeft = 100013
        mmTop = 2117
        mmWidth = 16140
        BandType = 7
      end
      object ppDBCalc14: TppDBCalc
        UserName = 'DBCalc4'
        DataField = 'DIRECTO'
        DataPipeline = dbpRptPipeline
        DisplayFormat = '#,0;-#,0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpRptPipeline'
        mmHeight = 3440
        mmLeft = 117211
        mmTop = 2117
        mmWidth = 13494
        BandType = 7
      end
      object ppDBCalc15: TppDBCalc
        UserName = 'DBCalc5'
        DataField = 'EFE_X_PROMESA'
        DataPipeline = dbpRptPipeline
        DisplayFormat = '#,0;-#,0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpRptPipeline'
        mmHeight = 3440
        mmLeft = 145786
        mmTop = 2117
        mmWidth = 14552
        BandType = 7
      end
      object ppDBCalc16: TppDBCalc
        UserName = 'DBCalc6'
        DataField = 'EFE_OTRO_RES'
        DataPipeline = dbpRptPipeline
        DisplayFormat = '#,0;-#,0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpRptPipeline'
        mmHeight = 3440
        mmLeft = 161396
        mmTop = 2117
        mmWidth = 11377
        BandType = 7
      end
      object ppDBCalc17: TppDBCalc
        UserName = 'DBCalc7'
        DataField = 'MONTO_EFECTIVO'
        DataPipeline = dbpRptPipeline
        DisplayFormat = '#,0;-#,0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpRptPipeline'
        mmHeight = 3440
        mmLeft = 174096
        mmTop = 2117
        mmWidth = 13494
        BandType = 7
      end
      object ppDBCalc18: TppDBCalc
        UserName = 'DBCalc8'
        DataField = 'REF_X_PROMESA'
        DataPipeline = dbpRptPipeline
        DisplayFormat = '#,0;-#,0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpRptPipeline'
        mmHeight = 3440
        mmLeft = 188913
        mmTop = 2117
        mmWidth = 12965
        BandType = 7
      end
      object ppDBCalc19: TppDBCalc
        UserName = 'DBCalc9'
        DataField = 'REF_OTRO_RES'
        DataPipeline = dbpRptPipeline
        DisplayFormat = '#,0;-#,0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpRptPipeline'
        mmHeight = 3440
        mmLeft = 203200
        mmTop = 2117
        mmWidth = 10848
        BandType = 7
      end
      object ppDBCalc1: TppDBCalc
        UserName = 'DBCalc11'
        DataField = 'INDIRECTO'
        DataPipeline = dbpRptPipeline
        DisplayFormat = '#,0;-#,0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpRptPipeline'
        mmHeight = 3440
        mmLeft = 131763
        mmTop = 2117
        mmWidth = 13494
        BandType = 7
      end
      object ppDBCalc2: TppDBCalc
        UserName = 'DBCalc12'
        DataField = 'MONTO_REFINANCIADO'
        DataPipeline = dbpRptPipeline
        DisplayFormat = '#,0;-#,0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpRptPipeline'
        mmHeight = 3440
        mmLeft = 215371
        mmTop = 2117
        mmWidth = 14817
        BandType = 7
      end
      object ppDBCalc3: TppDBCalc
        UserName = 'DBCalc13'
        DataField = 'NOTA_ABONO'
        DataPipeline = dbpRptPipeline
        DisplayFormat = '#,0;-#,0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpRptPipeline'
        mmHeight = 3440
        mmLeft = 231775
        mmTop = 2117
        mmWidth = 13229
        BandType = 7
      end
      object ppDBCalc4: TppDBCalc
        UserName = 'DBCalc14'
        DataField = 'BENEFICIOS'
        DataPipeline = dbpRptPipeline
        DisplayFormat = '#,0;-#,0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpRptPipeline'
        mmHeight = 3440
        mmLeft = 246592
        mmTop = 2117
        mmWidth = 14023
        BandType = 7
      end
    end
    object ppGroup2: TppGroup
      BreakType = btCustomField
      KeepTogether = True
      OutlineSettings.CreateNode = True
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = ''
      object ppGroupHeaderBand2: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
      object ppGroupFooterBand2: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 265
        mmPrintPosition = 0
        object ppLine56: TppLine
          UserName = 'Line9'
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 0
          mmTop = 0
          mmWidth = 284163
          BandType = 5
          GroupNo = 0
        end
      end
    end
    object ppParameterList2: TppParameterList
    end
  end
end
