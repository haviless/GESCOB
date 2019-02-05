object FAsigOfiPer: TFAsigOfiPer
  Left = 277
  Top = 162
  Width = 800
  Height = 508
  BorderWidth = 2
  Caption = 'Asignaci'#243'n de Oficinas por Periodo'
  Color = 10207162
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pnlControles: TPanel
    Left = 0
    Top = 432
    Width = 788
    Height = 38
    Align = alBottom
    BevelOuter = bvNone
    ParentColor = True
    TabOrder = 0
    DesignSize = (
      788
      38)
    object btnSalir: TBitBtn
      Left = 682
      Top = 4
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
  object pnlFiltroGestor: TPanel
    Left = 0
    Top = 0
    Width = 788
    Height = 33
    Align = alTop
    BevelOuter = bvNone
    Color = 10207162
    TabOrder = 1
    object lbl1: TLabel
      Left = 10
      Top = 10
      Width = 90
      Height = 13
      Caption = 'Periodo de Gestion'
    end
    object cboPeriodoCartera: TwwDBLookupCombo
      Left = 107
      Top = 6
      Width = 115
      Height = 21
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
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
    Top = 33
    Width = 289
    Height = 399
    Align = alLeft
    BevelOuter = bvNone
    Caption = 'pnl1'
    ParentColor = True
    TabOrder = 2
    object gbx3: TGroupBox
      Left = 0
      Top = 0
      Width = 289
      Height = 399
      Align = alClient
      Caption = 'Gestores sin Oficina'
      TabOrder = 0
      object dbgGesSinOfi: TwwDBGrid
        Left = 2
        Top = 15
        Width = 285
        Height = 382
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
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        TitleAlignment = taCenter
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = [fsBold]
        TitleLines = 1
        TitleButtons = False
      end
    end
  end
  object pnl2: TPanel
    Left = 363
    Top = 33
    Width = 425
    Height = 399
    Align = alClient
    BevelOuter = bvNone
    Caption = 'pnl1'
    ParentColor = True
    TabOrder = 3
    object gbx1: TGroupBox
      Left = 0
      Top = 0
      Width = 425
      Height = 169
      Align = alTop
      Caption = 'Gestores de Lima Metropolitana'
      TabOrder = 0
      object dbgGesLimMet: TwwDBGrid
        Left = 2
        Top = 15
        Width = 421
        Height = 152
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
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        TitleAlignment = taCenter
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = [fsBold]
        TitleLines = 1
        TitleButtons = False
      end
    end
    object gbx2: TGroupBox
      Left = 0
      Top = 181
      Width = 425
      Height = 218
      Align = alClient
      Caption = 'Gestores de Provincias'
      TabOrder = 1
      object dbgGesProv: TwwDBGrid
        Left = 2
        Top = 15
        Width = 421
        Height = 201
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
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        TitleAlignment = taCenter
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = [fsBold]
        TitleLines = 1
        TitleButtons = False
      end
    end
    object TPanel
      Left = 0
      Top = 169
      Width = 425
      Height = 12
      Align = alTop
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 2
    end
  end
  object pnl3: TPanel
    Left = 289
    Top = 33
    Width = 74
    Height = 399
    Align = alLeft
    BevelOuter = bvNone
    ParentColor = True
    TabOrder = 4
    object btnAddLimMet: TButton
      Left = 7
      Top = 56
      Width = 60
      Height = 25
      Caption = '>'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = btnAddLimMetClick
    end
    object btnDelLimMet: TButton
      Left = 7
      Top = 85
      Width = 60
      Height = 25
      Caption = '<'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = btnDelLimMetClick
    end
    object btnAddProv: TButton
      Left = 7
      Top = 270
      Width = 60
      Height = 25
      Caption = '>'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = btnAddProvClick
    end
    object btnDelProv: TButton
      Left = 7
      Top = 299
      Width = 60
      Height = 25
      Caption = '<'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = btnDelProvClick
    end
  end
end
