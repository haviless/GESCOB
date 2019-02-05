object fDetRepConAsig: TfDetRepConAsig
  Left = 234
  Top = 216
  Width = 800
  Height = 408
  BorderWidth = 2
  Caption = 'Consolidado para Analisis de Asignaci'#243'n - Detalle'
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
  object Panel2: TPanel
    Left = 0
    Top = 324
    Width = 780
    Height = 42
    Align = alBottom
    BevelOuter = bvNone
    ParentColor = True
    TabOrder = 0
    DesignSize = (
      780
      42)
    object btnExcel: TBitBtn
      Left = 541
      Top = 7
      Width = 100
      Height = 30
      Anchors = [akTop, akRight]
      Caption = 'Exportar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = btnExcelClick
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
      Left = 680
      Top = 7
      Width = 100
      Height = 30
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
  end
  object dbgPrincipal: TwwDBGrid
    Left = 0
    Top = 33
    Width = 780
    Height = 291
    Cursor = crHandPoint
    DisableThemesInTitle = False
    Selected.Strings = (
      'ASOTIPID'#9'3'#9'Tip~Aso'
      'ASOAPENOM'#9'31'#9'Apellidos y Nombres'
      'FECASIG'#9'9'#9'Fecha~Asignado'
      'SALTOT'#9'12'#9'Saldo~Total'
      'SALPEN'#9'11'#9'Saldo~No~Vencido'
      'SALVEN'#9'11'#9'Saldo~Vencido'
      'CUOVEN'#9'3'#9'N'#176'~Cuo~Ven'
      'SALACT'#9'12'#9'Saldo~Actual'
      'DIASTRANS'#9'5'#9'Origi.'#9'F'#9'Antig.Deuda'
      'DIASTRANSACT'#9'5'#9'Actual'#9'F'#9'Antig.Deuda'
      'DESREF'#9'13'#9'Estado~de Gesti'#243'n'#9'F')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 1
    ShowHorzScrollBar = True
    Align = alClient
    Ctl3D = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Times New Roman'
    Font.Style = []
    MultiSelectOptions = [msoShiftSelect]
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgMultiSelect, dgShowFooter, dgFooter3DCells]
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 1
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
    TitleLines = 1
    TitleButtons = True
    PaintOptions.ActiveRecordColor = 13165023
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 780
    Height = 33
    Align = alTop
    BevelOuter = bvNone
    ParentColor = True
    TabOrder = 2
    object lblTipoGestor: TLabel
      Left = 226
      Top = 8
      Width = 55
      Height = 13
      Caption = 'Tipo Gestor'
    end
    object lblTipFiltroSeleccionado: TLabel
      Left = 410
      Top = 8
      Width = 31
      Height = 13
      Caption = 'Gestor'
    end
    object lblPeriodo: TLabel
      Left = 60
      Top = 8
      Width = 46
      Height = 13
      Caption = 'lblPeriodo'
    end
    object Label1: TLabel
      Left = 129
      Top = 8
      Width = 93
      Height = 13
      Caption = 'Tipo de Gestor :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblTipFiltro: TLabel
      Left = 360
      Top = 8
      Width = 46
      Height = 13
      Alignment = taRightJustify
      Caption = 'Gestor :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 4
      Top = 8
      Width = 52
      Height = 13
      Caption = 'Periodo :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
end
