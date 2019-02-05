object fDatReniec: TfDatReniec
  Left = 198
  Top = 103
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Datos Reniec'
  ClientHeight = 433
  ClientWidth = 650
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Shape2: TShape
    Left = 424
    Top = 268
    Width = 224
    Height = 88
  end
  object Shape1: TShape
    Left = 424
    Top = 8
    Width = 224
    Height = 257
  end
  object imgFirma: TImage
    Left = 431
    Top = 273
    Width = 211
    Height = 76
    Stretch = True
  end
  object imgFoto: TImage
    Left = 430
    Top = 17
    Width = 211
    Height = 241
    Stretch = True
  end
  object pnlDatos: TPanel
    Left = -2
    Top = -1
    Width = 424
    Height = 432
    TabOrder = 0
    object ListaDatos: TValueListEditor
      Left = 10
      Top = 3
      Width = 408
      Height = 425
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMenuHighlight
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goColSizing, goAlwaysShowEditor, goThumbTracking]
      ParentFont = False
      TabOrder = 0
      TitleCaptions.Strings = (
        'Informaci'#243'n'
        'Datos')
      ColWidths = (
        162
        240)
    end
  end
  object BitSalir: TBitBtn
    Left = 488
    Top = 376
    Width = 109
    Height = 30
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
end
