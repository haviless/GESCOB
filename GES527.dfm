object FMantControlCampanhasUbigeo: TFMantControlCampanhasUbigeo
  Left = 119
  Top = 93
  Width = 923
  Height = 514
  Caption = 'Mantenimiento del Control de Campa'#241'as - Ubigeos'
  Color = 10207162
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlControles: TPanel
    Left = 0
    Top = 434
    Width = 915
    Height = 46
    Align = alBottom
    BevelOuter = bvNone
    ParentColor = True
    TabOrder = 0
    DesignSize = (
      915
      46)
    object btnSalir: TBitBtn
      Left = 807
      Top = 6
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
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 393
    Height = 434
    Align = alLeft
    Caption = 'Por Asignar'
    TabOrder = 1
    object Panel2: TPanel
      Left = 2
      Top = 15
      Width = 389
      Height = 53
      Align = alTop
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 0
      object Label1: TLabel
        Left = 11
        Top = 5
        Width = 67
        Height = 13
        Caption = 'Departamento'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 34
        Top = 31
        Width = 44
        Height = 13
        Caption = 'Provincia'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object cboDpto: TwwDBLookupComboDlg
        Left = 83
        Top = 2
        Width = 73
        Height = 21
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
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
        OnChange = cboDptoChange
      end
      object cboProv: TwwDBLookupComboDlg
        Left = 83
        Top = 27
        Width = 73
        Height = 21
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
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
        OnChange = cboProvChange
      end
      object edProv: TEdit
        Left = 156
        Top = 27
        Width = 150
        Height = 21
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 2
      end
      object edDpto: TEdit
        Left = 156
        Top = 2
        Width = 150
        Height = 21
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 3
      end
    end
    object dbgPorAsignar: TwwDBGrid
      Left = 2
      Top = 68
      Width = 389
      Height = 343
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
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowFooter]
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
      TitleAlignment = taCenter
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      TitleLines = 2
      TitleButtons = False
    end
    object Panel3: TPanel
      Left = 2
      Top = 411
      Width = 389
      Height = 21
      Align = alBottom
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 2
      object lblNumRegPorAsig: TLabel
        Left = 8
        Top = 5
        Width = 110
        Height = 13
        Caption = '0 Registros Por Asignar'
      end
    end
  end
  object Panel1: TPanel
    Left = 393
    Top = 0
    Width = 52
    Height = 434
    Align = alLeft
    BevelOuter = bvNone
    ParentColor = True
    TabOrder = 2
    object btnAsignarUno: TButton
      Left = 5
      Top = 183
      Width = 43
      Height = 25
      Hint = 'Asignar Uno'
      Caption = '>'
      TabOrder = 0
      OnClick = btnAsignarUnoClick
    end
    object btnAsignarTodos: TButton
      Left = 5
      Top = 152
      Width = 43
      Height = 25
      Hint = 'Asignar Todos'
      Caption = '>>'
      TabOrder = 1
      OnClick = btnAsignarTodosClick
    end
    object btnDesasignarTodos: TButton
      Left = 5
      Top = 272
      Width = 43
      Height = 25
      Hint = 'Desasignar Todos'
      Caption = '<<'
      TabOrder = 2
      OnClick = btnDesasignarTodosClick
    end
    object btnDesasignarUno: TButton
      Left = 5
      Top = 241
      Width = 43
      Height = 25
      Hint = 'Desasignar Uno'
      Caption = '<'
      TabOrder = 3
      OnClick = btnDesasignarUnoClick
    end
  end
  object GroupBox2: TGroupBox
    Left = 445
    Top = 0
    Width = 470
    Height = 434
    Align = alClient
    Caption = 'Asignados'
    TabOrder = 3
    object Panel4: TPanel
      Left = 2
      Top = 411
      Width = 466
      Height = 21
      Align = alBottom
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 0
      object lblNumRegAsig: TLabel
        Left = 8
        Top = 5
        Width = 105
        Height = 13
        Caption = '0 Registros Asignados'
      end
    end
    object dbgAsignados: TwwDBGrid
      Left = 2
      Top = 15
      Width = 466
      Height = 396
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
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowFooter]
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
      TitleAlignment = taCenter
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      TitleLines = 2
      TitleButtons = False
    end
  end
end
