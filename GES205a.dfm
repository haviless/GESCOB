object fNueAcuerdo: TfNueAcuerdo
  Left = 235
  Top = 311
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Nuevo Acuerdo de Pago'
  ClientHeight = 123
  ClientWidth = 553
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 2
    Top = -1
    Width = 550
    Height = 122
    TabOrder = 0
    object Shape1: TShape
      Left = 18
      Top = 28
      Width = 113
      Height = 24
    end
    object Shape2: TShape
      Left = 154
      Top = 28
      Width = 113
      Height = 24
    end
    object lblSalVen: TLabel
      Left = 160
      Top = 32
      Width = 104
      Height = 15
      Alignment = taRightJustify
      AutoSize = False
      Caption = '9,999.99'
      Color = clWindow
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label1: TLabel
      Left = 155
      Top = 14
      Width = 103
      Height = 13
      Alignment = taCenter
      AutoSize = False
      Caption = 'Saldo Vencido'
    end
    object Label2: TLabel
      Left = 27
      Top = 69
      Width = 96
      Height = 13
      Alignment = taCenter
      AutoSize = False
      Caption = 'Cuota Inicial'
    end
    object Label3: TLabel
      Left = 290
      Top = 70
      Width = 70
      Height = 13
      Alignment = taCenter
      AutoSize = False
      Caption = 'N'#176' de Cuotas'
    end
    object Label4: TLabel
      Left = 159
      Top = 70
      Width = 102
      Height = 13
      Alignment = taCenter
      AutoSize = False
      Caption = 'Monto de Cuota'
    end
    object Label5: TLabel
      Left = 289
      Top = 16
      Width = 102
      Height = 13
      Alignment = taCenter
      AutoSize = False
      Caption = 'Fecha de Acuerdo'
    end
    object Label6: TLabel
      Left = 19
      Top = 14
      Width = 103
      Height = 13
      Alignment = taCenter
      AutoSize = False
      Caption = 'Saldo Total'
    end
    object lblSalTot: TLabel
      Left = 21
      Top = 32
      Width = 104
      Height = 15
      Alignment = taRightJustify
      AutoSize = False
      Caption = '9,999.99'
      Color = clWindow
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object BitGrabar: TBitBtn
      Left = 442
      Top = 58
      Width = 96
      Height = 26
      Cursor = crHandPoint
      Hint = 'Grabar'
      Caption = '&Grabar'
      TabOrder = 4
      OnClick = BitGrabarClick
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
    end
    object BitSalir: TBitBtn
      Left = 442
      Top = 90
      Width = 96
      Height = 26
      Cursor = crHandPoint
      Hint = 'Salir'
      Caption = '&Salir'
      TabOrder = 5
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
    object dbeCuoIni: TwwDBEdit
      Left = 24
      Top = 84
      Width = 102
      Height = 24
      BorderStyle = bsNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      Frame.Enabled = True
      Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
      ParentFont = False
      TabOrder = 1
      UnboundDataType = wwDefault
      UnboundAlignment = taRightJustify
      WantReturns = False
      WordWrap = False
      OnExit = dbeCuoIniExit
      OnKeyPress = dbeCuoIniKeyPress
    end
    object dbeMonCuo: TwwDBEdit
      Left = 160
      Top = 85
      Width = 102
      Height = 24
      BorderStyle = bsNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      Frame.Enabled = True
      Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
      ParentFont = False
      TabOrder = 2
      UnboundDataType = wwDefault
      UnboundAlignment = taRightJustify
      WantReturns = False
      WordWrap = False
      OnExit = dbeMonCuoExit
      OnKeyPress = dbeMonCuoKeyPress
    end
    object SpCuotas: TSpinEdit
      Left = 301
      Top = 84
      Width = 43
      Height = 28
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      MaxLength = 2
      MaxValue = 36
      MinValue = 1
      ParentFont = False
      TabOrder = 3
      Value = 1
    end
    object Panel1: TPanel
      Left = 279
      Top = 27
      Width = 113
      Height = 37
      BevelOuter = bvNone
      Caption = 'Panel1'
      Enabled = False
      TabOrder = 0
      object DtpFecAcu: TDateTimePicker
        Left = 11
        Top = 4
        Width = 101
        Height = 25
        CalColors.TextColor = clBtnText
        Date = 37814.000000000000000000
        Time = 37814.000000000000000000
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
    end
  end
end
