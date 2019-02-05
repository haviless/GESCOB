object fCtrlGest: TfCtrlGest
  Left = 227
  Top = 111
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Gesti'#243'n De Cobranza Individual'
  ClientHeight = 473
  ClientWidth = 790
  Color = 10207162
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Shape1: TShape
    Left = 4
    Top = 152
    Width = 782
    Height = 25
  end
  object GroupBox2: TGroupBox
    Left = 4
    Top = 176
    Width = 783
    Height = 294
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 9
      Width = 179
      Height = 16
      AutoSize = False
      Caption = 'Detalles De Gesti'#243'n'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object BitSalir: TBitBtn
      Left = 636
      Top = 261
      Width = 89
      Height = 27
      Cursor = crHandPoint
      Hint = 'Salir'
      Caption = '&Salir'
      TabOrder = 0
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
    object dtgCabGestion: TwwDBGrid
      Left = 7
      Top = 26
      Width = 771
      Height = 230
      Cursor = crHandPoint
      DisableThemesInTitle = False
      Selected.Strings = (
        'NROGEST'#9'10'#9'N'#176'~De Gesti'#243'n'
        'FECHA'#9'12'#9'Fecha~De Gesti'#243'n'
        'USUARIO'#9'20'#9'Usuario~Cobrador'
        'SALDO'#9'16'#9'Saldo~Actual'
        'CUOPEN'#9'16'#9'Cuotas~Pendientes'
        'CREESTADO'#9'25'#9'Situaci'#243'n~Actual'#9'F')
      IniAttributes.Delimiter = ';;'
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      DataSource = DM1.dsCambios
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowFooter, dgFooter3DCells]
      ParentFont = False
      TabOrder = 1
      TitleAlignment = taLeftJustify
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      TitleLines = 2
      TitleButtons = False
      OnDblClick = dtgCabGestionDblClick
      object dtgDetAsoCarIButton: TwwIButton
        Left = 0
        Top = 0
        Width = 26
        Height = 30
        Cursor = crHandPoint
        Hint = 'Nueva Gesti'#243'n De Cobranza'
        AllowAllUp = True
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
          333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
          0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
          07333337F33333337F333330FFFFFFFF07333337F33333337F333330FFFFFFFF
          07333FF7F33333337FFFBBB0FFFFFFFF0BB37777F3333333777F3BB0FFFFFFFF
          0BBB3777F3333FFF77773330FFFF000003333337F333777773333330FFFF0FF0
          33333337F3337F37F3333330FFFF0F0B33333337F3337F77FF333330FFFF003B
          B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
          3BB33773333773333773B333333B3333333B7333333733333337}
        NumGlyphs = 2
        ParentShowHint = False
        ShowHint = True
        OnClick = dtgDetAsoCarIButtonClick
      end
    end
    object BitHistorico: TBitBtn
      Left = 523
      Top = 262
      Width = 89
      Height = 27
      Cursor = crHandPoint
      Hint = 'Historial'
      Caption = '&Historico'
      TabOrder = 2
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33333FFFFFFFFFFFFFFF000000000000000077777777777777770FF7FF7FF7FF
        7FF07FF7FF7FF7F37F3709F79F79F7FF7FF077F77F77F7FF7FF7077777777777
        777077777777777777770FF7FF7FF7FF7FF07FF7FF7FF7FF7FF709F79F79F79F
        79F077F77F77F77F77F7077777777777777077777777777777770FF7FF7FF7FF
        7FF07FF7FF7FF7FF7FF709F79F79F79F79F077F77F77F77F77F7077777777777
        777077777777777777770FFFFF7FF7FF7FF07F33337FF7FF7FF70FFFFF79F79F
        79F07FFFFF77F77F77F700000000000000007777777777777777CCCCCC8888CC
        CCCC777777FFFF777777CCCCCCCCCCCCCCCC7777777777777777}
      NumGlyphs = 2
    end
  end
  object GroupBox1: TGroupBox
    Left = 4
    Top = -3
    Width = 784
    Height = 153
    Color = 10207162
    ParentColor = False
    TabOrder = 1
    object Label2: TLabel
      Left = 9
      Top = 11
      Width = 104
      Height = 17
      AutoSize = False
      Caption = 'Codigo Modular   '
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 145
      Top = 12
      Width = 17
      Height = 20
      Alignment = taCenter
      AutoSize = False
      Caption = ':'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object lblCodMod: TLabel
      Left = 183
      Top = 11
      Width = 113
      Height = 16
      AutoSize = False
      Caption = 'XXXXXXXXXX'
      Color = 10207162
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label4: TLabel
      Left = 9
      Top = 31
      Width = 137
      Height = 16
      AutoSize = False
      Caption = 'Apellidos y Nombres'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 145
      Top = 34
      Width = 17
      Height = 20
      Alignment = taCenter
      AutoSize = False
      Caption = ':'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object lblAsoNombres: TLabel
      Left = 183
      Top = 32
      Width = 352
      Height = 16
      AutoSize = False
      Caption = 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
      Color = 10207162
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label9: TLabel
      Left = 9
      Top = 52
      Width = 137
      Height = 20
      AutoSize = False
      Caption = 'Doc.Nac.Identidad'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label11: TLabel
      Left = 145
      Top = 52
      Width = 17
      Height = 20
      Alignment = taCenter
      AutoSize = False
      Caption = ':'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object lblDni: TLabel
      Left = 183
      Top = 52
      Width = 113
      Height = 20
      AutoSize = False
      Caption = 'XXXXXXXXXX'
      Color = 10207162
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label12: TLabel
      Left = 371
      Top = 11
      Width = 137
      Height = 18
      AutoSize = False
      Caption = 'Tipo De Asociado'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label13: TLabel
      Left = 521
      Top = 12
      Width = 17
      Height = 20
      Alignment = taCenter
      AutoSize = False
      Caption = ':'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object lblTipAso: TLabel
      Left = 547
      Top = 12
      Width = 210
      Height = 16
      AutoSize = False
      Caption = 'XXXXXXXXXXXXXXXXXX'
      Color = 10207162
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label14: TLabel
      Left = 371
      Top = 52
      Width = 137
      Height = 20
      AutoSize = False
      Caption = 'Cuenta de Ahorros'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label15: TLabel
      Left = 521
      Top = 51
      Width = 17
      Height = 20
      Alignment = taCenter
      AutoSize = False
      Caption = ':'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object lblCuenta: TLabel
      Left = 547
      Top = 52
      Width = 231
      Height = 20
      AutoSize = False
      Caption = 'XXXXXXXXXXXXXXXXXXXX'
      Color = 10207162
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label16: TLabel
      Left = 9
      Top = 72
      Width = 137
      Height = 20
      AutoSize = False
      Caption = 'Use/Ugel'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label17: TLabel
      Left = 145
      Top = 72
      Width = 17
      Height = 20
      Alignment = taCenter
      AutoSize = False
      Caption = ':'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object lblUses: TLabel
      Left = 183
      Top = 71
      Width = 442
      Height = 20
      AutoSize = False
      Caption = 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
      Color = 10207162
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label18: TLabel
      Left = 9
      Top = 91
      Width = 134
      Height = 20
      AutoSize = False
      Caption = 'Unidad de Proceso'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label19: TLabel
      Left = 144
      Top = 92
      Width = 17
      Height = 20
      Alignment = taCenter
      AutoSize = False
      Caption = ':'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object lblUniPro: TLabel
      Left = 183
      Top = 92
      Width = 442
      Height = 20
      AutoSize = False
      Caption = 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
      Color = 10207162
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label20: TLabel
      Left = 9
      Top = 110
      Width = 136
      Height = 20
      AutoSize = False
      Caption = 'Direcci'#243'n Domiciliaria'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label21: TLabel
      Left = 144
      Top = 110
      Width = 17
      Height = 20
      Alignment = taCenter
      AutoSize = False
      Caption = ':'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object lblDireccion: TLabel
      Left = 183
      Top = 112
      Width = 484
      Height = 20
      AutoSize = False
      Caption = 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
      Color = 10207162
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label23: TLabel
      Left = 9
      Top = 128
      Width = 56
      Height = 20
      AutoSize = False
      Caption = 'Telefono'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label24: TLabel
      Left = 144
      Top = 127
      Width = 17
      Height = 20
      Alignment = taCenter
      AutoSize = False
      Caption = ':'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object lblTelefono: TLabel
      Left = 183
      Top = 129
      Width = 322
      Height = 17
      AutoSize = False
      Caption = 'XXXXXXXXXX  Y  XXXXXXXXXXXXXXXXXXXXXX'
      Color = 10207162
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object lblCobrador: TLabel
      Left = 512
      Top = 129
      Width = 233
      Height = 17
      Alignment = taCenter
      AutoSize = False
      Caption = 'Cobrador :  Eduardo Alva Aliaga'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object BitDatGes: TBitBtn
      Left = 661
      Top = 80
      Width = 93
      Height = 25
      Caption = 'Datos '
      TabOrder = 0
      OnClick = BitDatGesClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033BBBBBBBBBB
        BB33337777777777777F33BB00BBBBBBBB33337F77333333F37F33BB0BBBBBB0
        BB33337F73F33337FF7F33BBB0BBBB000B33337F37FF3377737F33BBB00BB00B
        BB33337F377F3773337F33BBBB0B00BBBB33337F337F7733337F33BBBB000BBB
        BB33337F33777F33337F33EEEE000EEEEE33337F3F777FFF337F33EE0E80000E
        EE33337F73F77773337F33EEE0800EEEEE33337F37377F33337F33EEEE000EEE
        EE33337F33777F33337F33EEEEE00EEEEE33337F33377FF3337F33EEEEEE00EE
        EE33337F333377F3337F33EEEEEE00EEEE33337F33337733337F33EEEEEEEEEE
        EE33337FFFFFFFFFFF7F33EEEEEEEEEEEE333377777777777773}
      NumGlyphs = 2
    end
  end
  object Panel1: TPanel
    Left = 6
    Top = 154
    Width = 779
    Height = 21
    Color = clWindow
    TabOrder = 2
    object lblCalificacion: TLabel
      Left = 8
      Top = 1
      Width = 256
      Height = 14
      AutoSize = False
      Caption = 'XXXXXXXXXXXXXXXXXXXXXX'
      Color = clWindow
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label8: TLabel
      Left = 301
      Top = 1
      Width = 133
      Height = 15
      AutoSize = False
      Caption = 'Saldo Total (A+I+G)'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object Label10: TLabel
      Left = 435
      Top = 1
      Width = 17
      Height = 18
      Alignment = taCenter
      AutoSize = False
      Caption = ':'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object lblSaldo: TLabel
      Left = 454
      Top = -1
      Width = 84
      Height = 19
      Alignment = taRightJustify
      AutoSize = False
      Caption = '5,000.00'
      Color = clWindow
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object lblCuotas: TLabel
      Left = 581
      Top = 2
      Width = 186
      Height = 14
      AutoSize = False
      Caption = 'XXXXXXXXXXXXXXXXXX'
      Color = clWindow
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
  end
end
