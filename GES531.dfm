object FMetGes: TFMetGes
  Left = 575
  Top = 383
  BorderStyle = bsDialog
  Caption = 'Metas del Gestor'
  ClientHeight = 280
  ClientWidth = 409
  Color = 10207162
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlControles: TPanel
    Left = 0
    Top = 234
    Width = 409
    Height = 46
    Align = alBottom
    BevelOuter = bvNone
    ParentColor = True
    TabOrder = 2
    DesignSize = (
      409
      46)
    object btnGrabar: TBitBtn
      Left = 170
      Top = 6
      Width = 100
      Height = 32
      Anchors = [akTop, akRight]
      Caption = '&Grabar'
      TabOrder = 0
      OnClick = btnGrabarClick
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
    object btnSalir: TBitBtn
      Left = 300
      Top = 6
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
  end
  object gbFechas: TGroupBox
    Left = 7
    Top = 8
    Width = 393
    Height = 49
    Caption = 'Fechas'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label2: TLabel
      Left = 19
      Top = 20
      Width = 31
      Height = 16
      Caption = 'Inicio'
    end
    object Label3: TLabel
      Left = 198
      Top = 20
      Width = 18
      Height = 16
      Caption = 'Fin'
    end
    object dtpFInicio: TDateTimePicker
      Left = 58
      Top = 17
      Width = 95
      Height = 24
      Date = 40610.494412407410000000
      Time = 40610.494412407410000000
      TabOrder = 0
    end
    object dtpFFin: TDateTimePicker
      Left = 227
      Top = 17
      Width = 94
      Height = 24
      Date = 40610.494412407410000000
      Time = 40610.494412407410000000
      TabOrder = 1
    end
  end
  object gbMetas: TGroupBox
    Left = 7
    Top = 68
    Width = 394
    Height = 153
    Caption = 'Metas Por'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object Label6: TLabel
      Left = 39
      Top = 30
      Width = 208
      Height = 16
      Caption = 'Monto Refinanciado Cancelado S/.'
    end
    object Label7: TLabel
      Left = 39
      Top = 71
      Width = 179
      Height = 16
      Caption = 'Efectivo/Banco Cancelado S/.'
    end
    object Label4: TLabel
      Left = 39
      Top = 113
      Width = 143
      Height = 16
      Caption = 'Docentes regularizados'
    end
    object edtMetMonSalVen: TEdit
      Left = 261
      Top = 23
      Width = 90
      Height = 28
      BiDiMode = bdRightToLeft
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 0
    end
    object edtMetMonSalTot: TEdit
      Left = 261
      Top = 65
      Width = 90
      Height = 28
      BiDiMode = bdRightToLeft
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 1
    end
    object edtMetCantSalTot: TEdit
      Left = 261
      Top = 107
      Width = 90
      Height = 28
      BiDiMode = bdRightToLeft
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 2
    end
    object edtMetCantSalVen: TEdit
      Left = 363
      Top = 65
      Width = 18
      Height = 24
      BiDiMode = bdRightToLeft
      CharCase = ecUpperCase
      ParentBiDiMode = False
      TabOrder = 3
      Text = '1'
      Visible = False
    end
  end
end
