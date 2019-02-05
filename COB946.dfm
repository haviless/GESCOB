object fSelGest: TfSelGest
  Left = 109
  Top = 168
  BorderStyle = bsDialog
  ClientHeight = 464
  ClientWidth = 780
  Color = 10207162
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  DesignSize = (
    780
    464)
  PixelsPerInch = 96
  TextHeight = 13
  object dtgData: TDBGrid
    Left = 191
    Top = 151
    Width = 26
    Height = 10
    DataSource = DM1.dsProvCta
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    ParentFont = False
    ReadOnly = True
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
  end
  object dtgSetGest: TwwDBGrid
    Left = 3
    Top = 52
    Width = 773
    Height = 369
    Cursor = crHandPoint
    DisableThemesInTitle = False
    Selected.Strings = (
      'DPTODES'#9'15'#9'Departamento~(Laboral)'
      'USENOM'#9'20'#9'Uses/Ugel~(Laboral)'
      'ASOCODMOD'#9'10'#9'Codigo~Modular'
      'ASOAPENOM'#9'35'#9'Apellidos y Nombres'
      'ASODIR'#9'30'#9'Direcci'#243'n~(Domicilio)'
      'ZIPDES'#9'20'#9'Distrito~(Domicilio)'
      'CIUDDES'#9'20'#9'Provincia~(Domicilio)'
      'DPTODIR'#9'15'#9'Departamento~(Domicilio)'
      'ASOTELF1'#9'10'#9'Telefono'
      'SALDOS_FT'#9'13'#9'Saldo~(Amortizaci'#243'n(K))'
      'SALDOS_T'#9'13'#9'Saldo Total(K+I+G)'#9'F')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    DataSource = DM1.dsProvCta
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Times New Roman'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    ParentFont = False
    TabOrder = 0
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    TitleLines = 2
    TitleButtons = False
  end
  object BitSalir: TBitBtn
    Left = 639
    Top = 431
    Width = 89
    Height = 27
    Cursor = crHandPoint
    Hint = 'Salir'
    Caption = '&Salir'
    TabOrder = 1
    OnClick = BitSalirClick
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
  object Panel3: TPanel
    Left = 5
    Top = 12
    Width = 425
    Height = 30
    Caption = 'Panel3'
    Enabled = False
    TabOrder = 2
    object Shape3: TShape
      Left = 2
      Top = 2
      Width = 420
      Height = 26
    end
    object txtDist: TEdit
      Left = 7
      Top = 6
      Width = 402
      Height = 17
      AutoSize = False
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = bsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
  end
  object Panel2: TPanel
    Left = 538
    Top = 26
    Width = 239
    Height = 25
    Enabled = False
    TabOrder = 3
    object Shape2: TShape
      Left = 114
      Top = 1
      Width = 122
      Height = 21
    end
    object lblRegistros: TLabel
      Left = 116
      Top = 4
      Width = 113
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      Caption = '0'
      Color = clWindow
      ParentColor = False
    end
    object Edit1: TEdit
      Left = 4
      Top = 1
      Width = 107
      Height = 21
      TabOrder = 0
      Text = 'N'#176' De Asociados'
    end
  end
  object BitExporta: TBitBtn
    Left = 535
    Top = 431
    Width = 90
    Height = 27
    Anchors = [akTop, akRight]
    Caption = 'Exportar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnClick = BitExportaClick
    Glyph.Data = {
      F6000000424DF600000000000000760000002800000010000000100000000100
      0400000000008000000000000000000000001000000010000000000000000000
      BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DDDDDDDDDDDD
      DDDDDDDDDDDDDDDDDDDDDDDDDDDDDD00000DD00000000006660DD08888880E00
      000DD000000000EEE080DD07778E0EEE0080DDD078E0EEE07700DDDD0E0EEE00
      0000DDD0E0EEE080DDDDDD0E0EEE07080DDDD0E0EEE0777080DD0E0EEE0D0777
      080D00EEE0DDD077700D00000DDDDD00000DDDDDDDDDDDDDDDDD}
    Spacing = 10
  end
end
