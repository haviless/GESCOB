object FObservacion: TFObservacion
  Left = 239
  Top = 145
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Observaci'#243'n'
  ClientHeight = 179
  ClientWidth = 288
  Color = 10207162
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 6
    Height = 179
    Align = alLeft
    BevelOuter = bvNone
    ParentColor = True
    TabOrder = 0
  end
  object Panel2: TPanel
    Left = 282
    Top = 0
    Width = 6
    Height = 179
    Align = alRight
    BevelOuter = bvNone
    ParentColor = True
    TabOrder = 1
  end
  object Panel3: TPanel
    Left = 6
    Top = 0
    Width = 276
    Height = 179
    Align = alClient
    BevelOuter = bvNone
    ParentColor = True
    TabOrder = 2
    object Label1: TLabel
      Left = 0
      Top = 0
      Width = 276
      Height = 16
      Align = alTop
      Caption = 'Ingrese una Observaci'#243'n'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblMsg: TLabel
      Left = 0
      Top = 16
      Width = 276
      Height = 26
      Align = alTop
      Caption = 'msg'#13#10'msg'
    end
    object pnlControles: TPanel
      Left = 0
      Top = 140
      Width = 276
      Height = 39
      Align = alBottom
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 0
      DesignSize = (
        276
        39)
      object btnGrabar: TBitBtn
        Left = 73
        Top = 3
        Width = 100
        Height = 32
        Anchors = [akTop, akRight]
        Caption = '&Grabar'
        TabOrder = 1
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
        Left = 176
        Top = 3
        Width = 100
        Height = 32
        Hint = 'Salir'
        Anchors = [akTop, akRight]
        Cancel = True
        Caption = '&Salir'
        ModalResult = 2
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
    object memObservacion: TMemo
      Left = 0
      Top = 42
      Width = 276
      Height = 98
      Align = alClient
      MaxLength = 100
      TabOrder = 1
    end
  end
end