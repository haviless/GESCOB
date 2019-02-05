object fRegPago: TfRegPago
  Left = 286
  Top = 206
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Registro de Pagos'
  ClientHeight = 277
  ClientWidth = 348
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
    Top = -3
    Width = 345
    Height = 280
    TabOrder = 0
    object Shape1: TShape
      Left = 218
      Top = 16
      Width = 115
      Height = 45
    end
    object Label1: TLabel
      Left = 9
      Top = 14
      Width = 73
      Height = 13
      Caption = 'Fecha de Pago'
    end
    object Label2: TLabel
      Left = 8
      Top = 58
      Width = 72
      Height = 13
      Caption = 'Forma de Pago'
    end
    object Label3: TLabel
      Left = 8
      Top = 106
      Width = 75
      Height = 13
      Caption = 'Importe Pagado'
    end
    object Label4: TLabel
      Left = 134
      Top = 108
      Width = 55
      Height = 13
      Caption = 'Documento'
    end
    object Label5: TLabel
      Left = 10
      Top = 151
      Width = 74
      Height = 13
      Caption = 'Observaciones '
    end
    object Label6: TLabel
      Left = 248
      Top = 21
      Width = 70
      Height = 13
      Caption = 'Monto a Pagar'
      Color = clWhite
      ParentColor = False
    end
    object lblMonCuo: TLabel
      Left = 220
      Top = 36
      Width = 98
      Height = 22
      Alignment = taRightJustify
      AutoSize = False
      Caption = '9,999.99'
      Color = clCaptionText
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object BitSalir: TBitBtn
      Left = 237
      Top = 247
      Width = 96
      Height = 26
      Cursor = crHandPoint
      Hint = 'Salir'
      Caption = '&Salir'
      TabOrder = 7
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
    object BitGrabar: TBitBtn
      Left = 136
      Top = 247
      Width = 96
      Height = 26
      Cursor = crHandPoint
      Hint = 'Grabar'
      Caption = '&Grabar'
      TabOrder = 6
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
    object DtpFecPag: TDateTimePicker
      Left = 7
      Top = 28
      Width = 102
      Height = 25
      CalColors.TextColor = clBlack
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
    object DBLCTipCob: TwwDBLookupCombo
      Left = 7
      Top = 73
      Width = 42
      Height = 24
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = []
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'FORPAGOID'#9'2'#9'Codigo'#9'F'
        'FORPAGODES'#9'35'#9'Descripci'#243'n'#9'F')
      LookupTable = DM1.cdsFormaPago
      LookupField = 'FORPAGOID'
      Options = [loColLines, loRowLines]
      ParentFont = False
      TabOrder = 1
      AutoDropDown = False
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      OnChange = DBLCTipCobChange
    end
    object Panel1: TPanel
      Left = 50
      Top = 72
      Width = 285
      Height = 26
      Caption = 'Panel1'
      Enabled = False
      TabOrder = 2
      object EdtForPago: TEdit
        Left = 2
        Top = 1
        Width = 279
        Height = 24
        BevelKind = bkFlat
        BorderStyle = bsNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
      end
    end
    object mObsPag: TMemo
      Left = 8
      Top = 166
      Width = 326
      Height = 73
      MaxLength = 200
      TabOrder = 5
    end
    object EdtDocPag: TEdit
      Left = 133
      Top = 121
      Width = 97
      Height = 25
      AutoSize = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      TabOrder = 4
    end
    object dbeMonPag: TwwDBEdit
      Left = 8
      Top = 121
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
      TabOrder = 3
      UnboundDataType = wwDefault
      UnboundAlignment = taRightJustify
      WantReturns = False
      WordWrap = False
      OnExit = dbeMonPagExit
      OnKeyPress = dbeMonPagKeyPress
    end
  end
end
