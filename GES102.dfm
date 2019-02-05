object fNivUsu: TfNivUsu
  Left = 252
  Top = 203
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Niveles de Usuario'
  ClientHeight = 476
  ClientWidth = 632
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object lblNivel: TLabel
    Left = 220
    Top = 271
    Width = 59
    Height = 15
    AutoSize = False
    Caption = 'Nivel 0'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -15
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object dtgOfiDes: TwwDBGrid
    Left = 8
    Top = 7
    Width = 185
    Height = 422
    Cursor = crHandPoint
    DisableThemesInTitle = False
    Selected.Strings = (
      'OFDESID'#9'3'#9'Codigo'
      'OFDESNOM'#9'20'#9'Origen~De Operaciones'#9'F')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    OnRowChanged = dtgOfiDesRowChanged
    FixedCols = 0
    ShowHorzScrollBar = False
    ShowVertScrollBar = False
    DataSource = DM1.dsUSES
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -12
    Font.Name = 'MS Sans Serif'
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
    OnDblClick = dtgOfiDesDblClick
  end
  object dtgUsuarios: TwwDBGrid
    Left = 214
    Top = 8
    Width = 404
    Height = 160
    DisableThemesInTitle = False
    Selected.Strings = (
      'USERID'#9'18'#9'Usuario'
      'USERNOM'#9'40'#9'Descripci'#243'n'#9'F')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    DataSource = DM1.dsDLabo
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -12
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    ParentFont = False
    TabOrder = 1
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
  end
  object BitAsignar: TButton
    Left = 214
    Top = 170
    Width = 84
    Height = 20
    Caption = 'Asignar Nivel'
    TabOrder = 2
    OnClick = BitAsignarClick
  end
  object pnlNivel: TPanel
    Left = 214
    Top = 190
    Width = 407
    Height = 60
    Enabled = False
    TabOrder = 3
    object Shape2: TShape
      Left = 127
      Top = 8
      Width = 161
      Height = 19
    end
    object Shape1: TShape
      Left = 49
      Top = 8
      Width = 76
      Height = 19
    end
    object lblUser: TLabel
      Left = 51
      Top = 11
      Width = 70
      Height = 12
      AutoSize = False
      Color = clWindow
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object lblUserNOm: TLabel
      Left = 129
      Top = 11
      Width = 153
      Height = 15
      AutoSize = False
      Color = clWindow
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label1: TLabel
      Left = 4
      Top = 10
      Width = 42
      Height = 15
      AutoSize = False
      Caption = 'Usuario '
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 5
      Top = 37
      Width = 31
      Height = 15
      AutoSize = False
      Caption = 'Nivel'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblTipo: TLabel
      Left = 295
      Top = 19
      Width = 31
      Height = 15
      AutoSize = False
      Caption = 'Tipo'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object Panel1: TPanel
      Left = 87
      Top = 32
      Width = 180
      Height = 24
      Caption = 'Panel1'
      Enabled = False
      TabOrder = 0
      object edtDesEqpUsr: TEdit
        Left = 3
        Top = 0
        Width = 175
        Height = 22
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
      end
    end
    object dblNiveles: TwwDBLookupCombo
      Left = 48
      Top = 33
      Width = 38
      Height = 22
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = []
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'CODNIV'#9'3'#9'Codigo'#9'F'
        'DESNIV'#9'20'#9'Descripci'#243'n'#9'F')
      LookupTable = DM1.cdsConsulta
      LookupField = 'CODNIV'
      Options = [loColLines, loRowLines]
      ParentFont = False
      TabOrder = 1
      AutoDropDown = False
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      OnChange = dblNivelesChange
    end
    object BitGraba: TfcShapeBtn
      Left = 374
      Top = 25
      Width = 30
      Height = 31
      Cursor = crHandPoint
      Hint = 'Grabar'
      Color = cl3DLight
      DitherColor = clWhite
      Enabled = False
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333FFFFFFFFFFFFF33000077777770033377777777777773F000007888888
        00037F3337F3FF37F37F00000780088800037F3337F77F37F37F000007800888
        00037F3337F77FF7F37F00000788888800037F3337777777337F000000000000
        00037F3FFFFFFFFFFF7F00000000000000037F77777777777F7F000FFFFFFFFF
        00037F7F333333337F7F000FFFFFFFFF00037F7F333333337F7F000FFFFFFFFF
        00037F7F333333337F7F000FFFFFFFFF00037F7F333333337F7F000FFFFFFFFF
        00037F7F333333337F7F000FFFFFFFFF07037F7F33333333777F000FFFFFFFFF
        0003737FFFFFFFFF7F7330099999999900333777777777777733}
      NumGlyphs = 2
      Options = [boFocusable]
      ParentClipping = True
      ParentShowHint = False
      RoundRectBias = 25
      ShadeColors.BtnFocus = clNavy
      ShadeStyle = fbsHighlight
      Shape = bsEllipse
      ShowHint = True
      TabOrder = 2
      TabStop = True
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = BitGrabaClick
    end
    object cmbTipAcc: TComboBox
      Left = 270
      Top = 34
      Width = 100
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 13
      ParentFont = False
      TabOrder = 3
      Visible = False
      Items.Strings = (
        '01-Telef'#243'nica'
        '02-Domiciliaria')
    end
  end
  object dtgUserNiv: TwwDBGrid
    Left = 219
    Top = 289
    Width = 400
    Height = 140
    DisableThemesInTitle = False
    Selected.Strings = (
      'USERID'#9'18'#9'Usuario'
      'USERNOM'#9'40'#9'Descripci'#243'n'#9'F')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    DataSource = DM1.dsResol
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -12
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    ParentFont = False
    TabOrder = 4
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
  end
  object BitQuitar: TButton
    Left = 222
    Top = 432
    Width = 84
    Height = 20
    Caption = 'Quitar Nivel'
    TabOrder = 5
    OnClick = BitQuitarClick
  end
  object BitSalir: TBitBtn
    Left = 538
    Top = 437
    Width = 80
    Height = 28
    Cursor = crHandPoint
    Hint = 'Salir'
    Caption = '&Salir'
    TabOrder = 6
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
  object BitNiv0: TButton
    Left = 299
    Top = 263
    Width = 75
    Height = 23
    Caption = 'Nivel 0'
    TabOrder = 7
    OnClick = BitNiv0Click
  end
  object BitNiv1: TButton
    Left = 379
    Top = 263
    Width = 75
    Height = 23
    Caption = 'Nivel 1'
    TabOrder = 8
    OnClick = BitNiv1Click
  end
  object BitNiv2: TButton
    Left = 459
    Top = 263
    Width = 75
    Height = 23
    Caption = 'Nivel 2'
    TabOrder = 9
    OnClick = BitNiv2Click
  end
  object BitNiv3: TButton
    Left = 540
    Top = 263
    Width = 75
    Height = 23
    Caption = 'Nivel 3'
    TabOrder = 10
    OnClick = BitNiv3Click
  end
  object gbOfides: TGroupBox
    Left = 8
    Top = 485
    Width = 532
    Height = 110
    Caption = 'Datos de Oficinas'
    Enabled = False
    TabOrder = 11
    object Shape3: TShape
      Left = 108
      Top = 17
      Width = 161
      Height = 19
    end
    object Shape4: TShape
      Left = 71
      Top = 17
      Width = 34
      Height = 19
    end
    object Label3: TLabel
      Left = 9
      Top = 45
      Width = 50
      Height = 13
      Caption = 'Direcci'#243'n'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 9
      Top = 84
      Width = 57
      Height = 13
      Caption = 'Telefono(s)'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 266
      Top = 85
      Width = 17
      Height = 13
      Caption = 'Fax'
    end
    object Label7: TLabel
      Left = 10
      Top = 18
      Width = 42
      Height = 15
      AutoSize = False
      Caption = 'Oficina'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblOfdes: TLabel
      Left = 77
      Top = 20
      Width = 23
      Height = 12
      AutoSize = False
      Color = clWindow
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object lblofdesnom: TLabel
      Left = 112
      Top = 20
      Width = 153
      Height = 15
      AutoSize = False
      Color = clWindow
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object BitGrabaOF: TfcShapeBtn
      Left = 493
      Top = 72
      Width = 30
      Height = 31
      Cursor = crHandPoint
      Hint = 'Grabar'
      Color = cl3DLight
      DitherColor = clWhite
      Enabled = False
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333FFFFFFFFFFFFF33000077777770033377777777777773F000007888888
        00037F3337F3FF37F37F00000780088800037F3337F77F37F37F000007800888
        00037F3337F77FF7F37F00000788888800037F3337777777337F000000000000
        00037F3FFFFFFFFFFF7F00000000000000037F77777777777F7F000FFFFFFFFF
        00037F7F333333337F7F000FFFFFFFFF00037F7F333333337F7F000FFFFFFFFF
        00037F7F333333337F7F000FFFFFFFFF00037F7F333333337F7F000FFFFFFFFF
        00037F7F333333337F7F000FFFFFFFFF07037F7F33333333777F000FFFFFFFFF
        0003737FFFFFFFFF7F7330099999999900333777777777777733}
      NumGlyphs = 2
      Options = [boFocusable]
      ParentClipping = True
      ParentShowHint = False
      RoundRectBias = 25
      ShadeColors.BtnFocus = clNavy
      ShadeStyle = fbsHighlight
      Shape = bsEllipse
      ShowHint = True
      TabOrder = 0
      TabStop = True
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = BitGrabaOFClick
    end
    object meTel: TMaskEdit
      Left = 71
      Top = 80
      Width = 170
      Height = 21
      TabOrder = 1
    end
    object meFax: TMaskEdit
      Left = 288
      Top = 81
      Width = 101
      Height = 21
      TabOrder = 2
    end
    object meDir: TMemo
      Left = 71
      Top = 43
      Width = 418
      Height = 32
      Lines.Strings = (
        'meDir')
      TabOrder = 3
    end
  end
  object Button1: TButton
    Left = 9
    Top = 490
    Width = 84
    Height = 20
    Caption = 'Editar Datos'
    TabOrder = 12
    OnClick = Button1Click
  end
  object btnExcel: TBitBtn
    Left = 325
    Top = 428
    Width = 60
    Height = 24
    Caption = 'Excel'
    TabOrder = 13
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
  end
  object dbgreporte: TwwDBGrid
    Left = 409
    Top = 433
    Width = 28
    Height = 25
    DisableThemesInTitle = False
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    DataSource = DM1.dsQry
    Enabled = False
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowFooter, dgFooter3DCells]
    TabOrder = 14
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    TitleLines = 2
    TitleButtons = False
    PaintOptions.AlternatingRowColor = clInfoBk
    PaintOptions.ActiveRecordColor = clBlack
  end
end
