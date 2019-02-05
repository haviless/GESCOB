object fLogImpMas: TfLogImpMas
  Left = 300
  Top = 157
  Width = 800
  Height = 480
  BorderWidth = 2
  Caption = 'Log de Importacion Masiva'
  Color = 10207162
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 388
    Width = 788
    Height = 54
    Align = alBottom
    BevelOuter = bvNone
    ParentColor = True
    TabOrder = 0
    DesignSize = (
      788
      54)
    object BitSalir: TBitBtn
      Left = 707
      Top = 15
      Width = 75
      Height = 27
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
    object BitExporta: TBitBtn
      Left = 205
      Top = 12
      Width = 81
      Height = 27
      Anchors = [akTop, akRight]
      Caption = 'Exportar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
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
      Spacing = 5
    end
    object BitCerrar: TBitBtn
      Left = 113
      Top = 12
      Width = 92
      Height = 27
      Cursor = crHandPoint
      Caption = 'Cerrar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = BitCerrarClick
      Glyph.Data = {
        5A010000424D5A01000000000000760000002800000012000000130000000100
        040000000000E400000000000000000000001000000010000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        888888000000888888888888888888000000800000000000000888000000800B
        FBFBFBFBFB08880000008070BFBFBFBFBFB08800000080B0FBFBFBFBFBF08800
        00008070BFBFBFBFBFB08800000080B77BFBFBFBFBFB78000000807B7FBFBFBF
        BFBF7800000080B777777777777778000000807B7B7EEEE77B78880000008000
        B7B0EEE77778880000008888000EEEE7888888000000888880EEE0E788888800
        000088880EEE08778888880000008880EEE0888788888800000088880E088888
        888888000000888880888888888888000000888888888888888888000000}
    end
    object BitAnular: TBitBtn
      Left = 17
      Top = 12
      Width = 92
      Height = 27
      Cursor = crHandPoint
      Caption = 'Anular'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = BitAnularClick
      Glyph.Data = {
        66010000424D6601000000000000760000002800000014000000140000000100
        040000000000F000000000000000000000001000000010000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        8888888800008888888888888888889800008898888888888888898800008899
        88777777777798880000889990000000000998880000888990BFFFBFFF998888
        0000888899FCCCCCCF97888800008888999FBFFFB9978888000088888999CCC9
        990788880000888880999FB99F0788880000888880FC9999CF07888800008888
        80FF9999BF0788880000888880FC9999000788880000888880B99F099F078888
        0000888880999F099998888800008888999FBF0F089988880000889999000000
        8889988800008899988888888888898800008888888888888888889800008888
        88888888888888880000}
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 788
    Height = 66
    Align = alTop
    BevelOuter = bvNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentColor = True
    ParentFont = False
    TabOrder = 1
    object rgEstado: TRadioGroup
      Left = 4
      Top = 0
      Width = 237
      Height = 65
      Caption = 'Estado'
      Columns = 3
      ItemIndex = 0
      Items.Strings = (
        'Todos'
        'Truncado'
        'Subido'
        'Anulado'
        'Cerrado')
      TabOrder = 0
      OnClick = rgEstadoClick
    end
    object BitFiltrar: TBitBtn
      Left = 244
      Top = 6
      Width = 70
      Height = 59
      Hint = 'Filtrar Datos'
      Caption = 'Filtrar'
      TabOrder = 1
      Visible = False
      OnClick = BitFiltrarClick
      Glyph.Data = {
        E6040000424DE604000000000000360000002800000014000000140000000100
        180000000000B0040000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5656604747000D0D0BFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF42425CFFFF001A1A0DFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFEEEEF0696987CCCC443F3F00CDCDDEFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFEEEEF064646BFFFF81E5E565A5A547353500CCCCD7FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF50
        506FFFFF7CFFFF81E7E75CABAB67A3A345383800D3D3E3FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9E9EC575763FFFF89FFFF
        92FFFF96E2E26BBBBB70A7A771A8A849262600D4D4E4FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF676769FFFF84EEEE79F0F089EEEE87
        C8C85AA9A95F96965D99995BA7A73E444400D3D3D6FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF00000698985F73735816162A1818265656637C7C8783
        838B303037121220191900454500000000D4D4DEFFFFFFFFFFFFFFFFFFFFFFFF
        FBFBFF1F1F0D5A5A003737009696A2E9E9E9EFEFEFD9D9D9B5B5B5C8C8C88E8E
        8E85858A4444078080008181003D3D00CCCCD7FFFFFFFFFFFFF9F9FE3A3A1288
        88009494004D4D38DADADED8D8D8CACACAABABABACACACF1F1F1424242B5B5B5
        1B1B339A9A008787008F8F00424200D1D1D8FFFFFFECECF31E1E009595006262
        00818190B7B7B7A9A9A9D1D1D1D6D6D6D4D4D4E4E4E44E4E4EABABABBBBBC10B
        0B009393008B8B005A5A00A0A0ABFFFFFFFFFFFF737370707000242400C5C5CA
        AEAEAED7D7D7DADADAD3D3D3DADADADCDCDC747474D5D5D5A5A5A76262636C6C
        007575004B4B32FDFDFFFFFFFFFFFFFFFFFFFF666673737379CBCBCBC9C9C9EF
        EFEFBFBFBFC1C1C1F0F0F0373737FCFCFCD5D5D5A0A0A08484893D3D09727285
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF424242E1E1E1D3D3D3E9E9E9A8A8A8BBBB
        BBBCBCBCC3C3C3242424F2F2F2E6E6E6C5C5C5AAAAAA2B2B31FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFA9A9A9B0B0B0EBEBEBDFDFDFFFFFFFBDBDBD4B4B4B5A5A5A
        000000D2D2D2EDEDEDEEEEEEF8F8F8CCCCCC606060B5B5B5FFFFFFFFFFFFFFFF
        FFFFFFFF7A7A7A7777770606062828281A1A1A737373AFAFAFACACACFFFFFFFF
        FFFF9393937A7A7A6565654545455E5E5E323232FFFFFFFFFFFFFFFFFFF3F3F3
        3939396E6E6EB1B1B1AFAFAFACACACC5C5C5ACACAC1C1C1C3D3D3D484848C9C9
        C9BEBEBEF4F4F4FFFFFFE2E2E2484848E8E8E8FFFFFFFFFFFFFDFDFD4848483B
        3B3BA7A7A7AAAAAAA8A8A8D9D9D9EAEAEAF3F3F3EEEEEEFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF626262FAFAFAFFFFFFFFFFFFFFFFFFFFFFFFCACACA2B2B
        2B7D7D7D818181E1E1E1F7F7F7F4F4F4EBEBEBFFFFFFE9E9E9BCBCBCCBCBCB30
        3030474747FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA0A0A0
        A2A2A24444444646464545454E4E4E4949497C7C7CA5A5A5969696FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF}
      Layout = blGlyphTop
    end
  end
  object dbgMaestro: TwwDBGrid
    Left = 0
    Top = 66
    Width = 788
    Height = 322
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
    ParentFont = False
    ReadOnly = True
    TabOrder = 2
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
    TitleLines = 2
    TitleButtons = False
    OnDblClick = dbgMaestroDblClick
  end
  object dtgData: TDBGrid
    Left = 71
    Top = 132
    Width = 122
    Height = 53
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    ParentFont = False
    ReadOnly = True
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
    Visible = False
  end
end