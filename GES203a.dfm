object fGesIndInt: TfGesIndInt
  Left = 108
  Top = 49
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Gesti'#243'n de Cobranza Individual Interna'
  ClientHeight = 598
  ClientWidth = 1103
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
  PixelsPerInch = 96
  TextHeight = 13
  object Label24: TLabel
    Left = 532
    Top = 120
    Width = 87
    Height = 18
    AutoSize = False
    Caption = 'XXXXXXXXXX'
    Color = clBtnFace
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object Label25: TLabel
    Left = 532
    Top = 136
    Width = 87
    Height = 18
    AutoSize = False
    Caption = 'XXXXXXXXXX'
    Color = clBtnFace
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object Label26: TLabel
    Left = 532
    Top = 152
    Width = 87
    Height = 18
    AutoSize = False
    Caption = 'XXXXXXXXXX'
    Color = clBtnFace
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object Label37: TLabel
    Left = 24
    Top = 204
    Width = 41
    Height = 18
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Fijo : '
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label38: TLabel
    Left = 0
    Top = 220
    Width = 65
    Height = 18
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Celular : '
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label39: TLabel
    Left = 70
    Top = 222
    Width = 124
    Height = 18
    AutoSize = False
    Caption = 'XXXXXXXXXX  Y  XXXXXXXXXXXXXXXXXX'
    Color = clBtnFace
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object Label40: TLabel
    Left = 70
    Top = 205
    Width = 124
    Height = 18
    AutoSize = False
    Caption = 'XXXXXXXXXX  Y  XXXXXXXXXXXXXXXXXX'
    Color = clBtnFace
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object Label51: TLabel
    Left = 486
    Top = 263
    Width = 59
    Height = 18
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'X,XXX.XX'
    Color = clBtnFace
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object Label52: TLabel
    Left = 486
    Top = 287
    Width = 59
    Height = 18
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'X,XXX.XX'
    Color = clBtnFace
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object Label53: TLabel
    Left = 494
    Top = 287
    Width = 59
    Height = 18
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'X,XXX.XX'
    Color = clBtnFace
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object Label54: TLabel
    Left = 494
    Top = 271
    Width = 59
    Height = 18
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'X,XXX.XX'
    Color = clBtnFace
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object Shape36: TShape
    Left = 8
    Top = 208
    Width = 296
    Height = 21
    Brush.Color = 15853276
  end
  object Shape37: TShape
    Left = 8
    Top = 228
    Width = 296
    Height = 21
    Brush.Style = bsClear
  end
  object Shape38: TShape
    Left = 8
    Top = 248
    Width = 296
    Height = 21
    Brush.Style = bsClear
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 353
    Width = 1103
    Height = 207
    ActivePage = TabSheet2
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Informaci'#243'n General '
      object dtgDetalle: TwwDBGrid
        Left = 0
        Top = 0
        Width = 1095
        Height = 179
        Cursor = crHandPoint
        DisableThemesInTitle = False
        Selected.Strings = (
          'OFDESNOM'#9'20'#9'Origen de~Otorgamiento'
          'CREFOTORG'#9'10'#9'Fecha de~Credito'
          'NUMERO'#9'11'#9'N'#250'mero de~Credito'
          'TIPCREDES'#9'35'#9'Descripci'#243'n'
          'SALTOT'#9'13'#9'Saldo~Total'
          'SALPEN'#9'13'#9'Saldo~No~Vencido'
          'SALVEN'#9'13'#9'Saldo~Vencido'#9'F')
        IniAttributes.Delimiter = ';;'
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        Align = alClient
        DataSource = DM1.dsMovRec
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowFooter, dgFooter3DCells]
        ParentFont = False
        TabOrder = 0
        TitleAlignment = taLeftJustify
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        TitleLines = 3
        TitleButtons = False
        OnDrawDataCell = dtgDetalleDrawDataCell
        OnDblClick = dtgDetalleDblClick
        OnDrawFooterCell = dtgDetalleDrawFooterCell
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Detalles de Gesti'#243'n'
      ImageIndex = 1
      object dtgCabGestion: TwwDBGrid
        Left = 0
        Top = 0
        Width = 1095
        Height = 179
        Cursor = crHandPoint
        DisableThemesInTitle = False
        Selected.Strings = (
          'NROGEST'#9'6'#9'N'#176'~De Gesti'#243'n'
          'FECHA'#9'10'#9'Fecha~De Gesti'#243'n'
          'USUARIO'#9'12'#9'Usuario~Gestor'
          'MASDAT'#9'70'#9'Informaci'#243'n Importante'#9'F')
        IniAttributes.Delimiter = ';;'
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        Align = alClient
        DataSource = DM1.dsCambios
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowFooter, dgFooter3DCells]
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
    end
  end
  object TPanel
    Left = 0
    Top = 560
    Width = 1103
    Height = 38
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    object Shape4: TShape
      Left = 632
      Top = 1
      Width = 221
      Height = 33
    end
    object BitSalir: TBitBtn
      Left = 896
      Top = 4
      Width = 100
      Height = 26
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
    object BitLiberar: TBitBtn
      Left = 3
      Top = 4
      Width = 100
      Height = 26
      Hint = 'Salir'
      Caption = '&Liberar Gesti'#243'n'
      TabOrder = 1
      OnClick = BitLiberarClick
      NumGlyphs = 2
    end
    object BitMstApo: TfcShapeBtn
      Left = 480
      Top = 4
      Width = 100
      Height = 26
      Cursor = crHandPoint
      Hint = 'Mostrar Aportes'
      Caption = 'Aportes'
      Color = cl3DLight
      DitherColor = clWhite
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FEFEFE3229293E2E2E3E2E2E3E2E2E3E2E2E3E2E2E3E2E2E3E2E2E3E2E2E3E2E
        2E3E2E2E3A29296F6F6FFFFFFFF7F7F7372F2F3B848497FFFF8FFFFF8FFFFF8F
        FFFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF97FFFF3B2A2AFEFEFE2F2F2F
        FFFFFF2668688FFFFF87FFFF87FFFF87FFFF87FFFF87FFFF87FFFF87FFFF87FF
        FF87FFFF8FFFFF3F2F2F2A2222928A8A7F6F6F2F70708FFFFF8FFFFF87FFFF87
        FFFF87FFFF8FFFFF87FFFF8FFFFF87FFFF8FFFFF8FFFFF3F2F2F3F878797E1E1
        8FD3D397D3D38FFFFF2FB5B597FFFF8FB5B58FFFFF2FB5B597FFFF37676797C4
        C42F5F5F9FD3D33F3737488F8F481D1D3F87873F14149FD3D34878783F70703F
        70709FFFFF3768689FFFFF000B0B9FFFFF48D3D337D3D3483737508787007878
        50D3D300707048CBCB00686850D3D300828248E1E13700009FD3D3000B0BA6D3
        D3000000A6DADA3F37373F78789FFFFF8FFFFF97FFFF8FFFFF97FFFF99FFFF2A
        06064A282897FFFF87FFFF97FFFF87FFFF97FFFF8FFFFF3F2F2F3F78788FFFFF
        87FFFF87FFFF8FFFFF8FFFFF9BFFFF827262000000A6FFFF8FFFFF87FFFF87FF
        FF87FFFF8FFFFF3F2F2F3F78788FFFFF87FFFF8FFFFF3FDAD33F1D0000007300
        008A00009A00001448877397FFFF87FFFF87FFFF8FFFFF3F2F2F3F78788FFFFF
        87FFFF97FFFF000000A6A6FF0000FF00006F0000B800009100005B3F786C8FFF
        FF87FFFF8FFFFF3F2F2F3F78788FFFFF87FFFF97FFFF000000FFF8FF3F3F3300
        00E100004F00006700005F3F786C8FFFFF87FFFF8FFFFF3F2F2F48808097FFFF
        8FFFFF8FFFFFA6E1DA26776FB0A8890000E100008B605033488E839FFFFF8FFF
        FF8FFFFF97FFFF372626001D1D2F6F6F266767266767266F6F4A98942F263700
        001350486F004A2C488E8E2667672667672667671D6767878080FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF1D14005A5AFF0000FF0000FF0000B1807864FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE1E1D300006F00
        007700007B3F3F48FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      NumGlyphs = 0
      Options = [boFocusable]
      ParentClipping = True
      ParentShowHint = False
      RoundRectBias = 25
      ShadeStyle = fbsHighlight
      ShowHint = True
      TabOrder = 2
      TabStop = True
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = BitMstApoClick
    end
    object BitAnterior: TBitBtn
      Left = 640
      Top = 4
      Width = 100
      Height = 26
      Cursor = crHandPoint
      Caption = 'Anterior'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = BitAnteriorClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33333333333333333333333333333333333333333333333333FF333333333333
        3000333333FFFFF3F77733333000003000B033333777773777F733330BFBFB00
        E00033337FFF3377F7773333000FBFB0E000333377733337F7773330FBFBFBF0
        E00033F7FFFF3337F7773000000FBFB0E000377777733337F7770BFBFBFBFBF0
        E00073FFFFFFFF37F777300000000FB0E000377777777337F7773333330BFB00
        000033333373FF77777733333330003333333333333777333333333333333333
        3333333333333333333333333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333}
      NumGlyphs = 2
    end
    object BitSiguiente: TBitBtn
      Left = 744
      Top = 4
      Width = 100
      Height = 26
      Cursor = crHandPoint
      Caption = 'Siguiente'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = BitSiguienteClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333333333333333333FFF333333333333000333333333
        3333777FFF3FFFFF33330B000300000333337F777F777773F333000E00BFBFB0
        3333777F773333F7F333000E0BFBF0003333777F7F3337773F33000E0FBFBFBF
        0333777F7F3333FF7FFF000E0BFBF0000003777F7F3337777773000E0FBFBFBF
        BFB0777F7F33FFFFFFF7000E0BF000000003777F7FF777777773000000BFB033
        33337777773FF733333333333300033333333333337773333333333333333333
        3333333333333333333333333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333}
      NumGlyphs = 2
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 1103
    Height = 353
    Align = alTop
    BevelOuter = bvNone
    Color = 16382457
    TabOrder = 2
    object Shape48: TShape
      Left = 496
      Top = 280
      Width = 61
      Height = 61
      Brush.Color = 15853276
    end
    object Shape53: TShape
      Left = 496
      Top = 300
      Width = 367
      Height = 21
      Brush.Style = bsClear
    end
    object Shape54: TShape
      Left = 496
      Top = 320
      Width = 367
      Height = 21
      Brush.Style = bsClear
    end
    object Shape52: TShape
      Left = 496
      Top = 280
      Width = 367
      Height = 21
      Brush.Color = 15853276
    end
    object Shape45: TShape
      Left = 864
      Top = 280
      Width = 101
      Height = 21
      Brush.Color = 15853276
    end
    object Shape51: TShape
      Left = 761
      Top = 280
      Width = 102
      Height = 61
      Brush.Style = bsClear
    end
    object Shape50: TShape
      Left = 659
      Top = 280
      Width = 103
      Height = 61
      Brush.Style = bsClear
    end
    object Shape46: TShape
      Left = 864
      Top = 300
      Width = 101
      Height = 21
      Brush.Style = bsClear
    end
    object Shape49: TShape
      Left = 556
      Top = 280
      Width = 104
      Height = 61
      Brush.Style = bsClear
    end
    object Shape47: TShape
      Left = 864
      Top = 320
      Width = 101
      Height = 21
      Brush.Style = bsClear
    end
    object Shape44: TShape
      Left = 8
      Top = 300
      Width = 121
      Height = 21
      Brush.Style = bsClear
    end
    object Shape43: TShape
      Left = 8
      Top = 280
      Width = 121
      Height = 21
      Brush.Color = 15853276
    end
    object Shape42: TShape
      Left = 600
      Top = 208
      Width = 74
      Height = 61
      Brush.Color = 15853276
    end
    object Shape41: TShape
      Left = 600
      Top = 248
      Width = 296
      Height = 21
      Brush.Style = bsClear
    end
    object Shape40: TShape
      Left = 600
      Top = 228
      Width = 296
      Height = 21
      Brush.Style = bsClear
    end
    object Shape39: TShape
      Left = 600
      Top = 208
      Width = 296
      Height = 21
      Brush.Color = 15853276
    end
    object Shape35: TShape
      Left = 8
      Top = 208
      Width = 60
      Height = 61
      Brush.Color = 15853276
    end
    object Shape33: TShape
      Left = 8
      Top = 228
      Width = 296
      Height = 21
      Brush.Style = bsClear
    end
    object Shape34: TShape
      Left = 8
      Top = 248
      Width = 296
      Height = 21
      Brush.Style = bsClear
    end
    object Shape32: TShape
      Left = 8
      Top = 208
      Width = 296
      Height = 21
      Brush.Color = 15853276
    end
    object Shape31: TShape
      Left = 849
      Top = 118
      Width = 116
      Height = 21
      Brush.Color = 15853276
    end
    object Shape30: TShape
      Left = 734
      Top = 118
      Width = 116
      Height = 21
      Brush.Color = 15853276
    end
    object Shape29: TShape
      Left = 627
      Top = 118
      Width = 108
      Height = 21
      Brush.Color = 15853276
    end
    object Shape28: TShape
      Left = 8
      Top = 118
      Width = 620
      Height = 21
      Brush.Color = 15853276
    end
    object Shape27: TShape
      Left = 849
      Top = 178
      Width = 116
      Height = 21
      Brush.Style = bsClear
    end
    object Shape26: TShape
      Left = 849
      Top = 158
      Width = 116
      Height = 21
      Brush.Style = bsClear
    end
    object Shape25: TShape
      Left = 849
      Top = 138
      Width = 116
      Height = 21
      Brush.Style = bsClear
    end
    object Shape24: TShape
      Left = 734
      Top = 178
      Width = 116
      Height = 21
      Brush.Style = bsClear
    end
    object Shape23: TShape
      Left = 734
      Top = 158
      Width = 116
      Height = 21
      Brush.Style = bsClear
    end
    object Shape22: TShape
      Left = 734
      Top = 138
      Width = 116
      Height = 21
      Brush.Style = bsClear
    end
    object Shape21: TShape
      Left = 627
      Top = 178
      Width = 108
      Height = 21
      Brush.Style = bsClear
    end
    object Shape20: TShape
      Left = 627
      Top = 158
      Width = 108
      Height = 21
      Brush.Style = bsClear
    end
    object Shape19: TShape
      Left = 627
      Top = 138
      Width = 108
      Height = 21
      Brush.Style = bsClear
    end
    object Shape15: TShape
      Left = 8
      Top = 138
      Width = 620
      Height = 21
      Brush.Style = bsClear
    end
    object Shape18: TShape
      Left = 8
      Top = 138
      Width = 178
      Height = 61
      Brush.Color = 15853276
    end
    object Shape5: TShape
      Left = 8
      Top = 48
      Width = 956
      Height = 21
      Brush.Style = bsClear
    end
    object Shape2: TShape
      Left = 8
      Top = 28
      Width = 956
      Height = 21
      Brush.Style = bsClear
    end
    object Shape16: TShape
      Left = 8
      Top = 158
      Width = 620
      Height = 21
      Brush.Style = bsClear
    end
    object Shape17: TShape
      Left = 8
      Top = 178
      Width = 620
      Height = 21
      Brush.Style = bsClear
    end
    object Shape14: TShape
      Left = 8
      Top = 8
      Width = 956
      Height = 21
      Brush.Style = bsClear
    end
    object Shape13: TShape
      Left = 551
      Top = 48
      Width = 143
      Height = 21
      Brush.Color = 15853276
    end
    object Shape12: TShape
      Left = 551
      Top = 28
      Width = 143
      Height = 21
      Brush.Color = 15853276
    end
    object Shape11: TShape
      Left = 551
      Top = 8
      Width = 143
      Height = 21
      Brush.Color = 15853276
    end
    object Shape7: TShape
      Left = 132
      Top = 88
      Width = 832
      Height = 21
      Brush.Style = bsClear
    end
    object Shape10: TShape
      Left = 8
      Top = 88
      Width = 125
      Height = 21
      Brush.Color = 15853276
    end
    object Shape9: TShape
      Left = 8
      Top = 68
      Width = 125
      Height = 21
      Brush.Color = 15853276
    end
    object Shape8: TShape
      Left = 8
      Top = 48
      Width = 125
      Height = 21
      Brush.Color = 15853276
    end
    object Shape1: TShape
      Left = 8
      Top = 28
      Width = 125
      Height = 21
      Brush.Color = 15853276
    end
    object Shape3: TShape
      Left = 8
      Top = 8
      Width = 125
      Height = 21
      Brush.Color = 15853276
    end
    object Label12: TLabel
      Left = 9
      Top = 11
      Width = 122
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Tipo De Asociado'
      Color = 15853276
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Shape6: TShape
      Left = 132
      Top = 68
      Width = 832
      Height = 21
      Brush.Style = bsClear
    end
    object Label4: TLabel
      Left = 9
      Top = 31
      Width = 122
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Apellidos y Nombres'
      Color = 15853276
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label9: TLabel
      Left = 9
      Top = 51
      Width = 122
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'DNI'
      Color = 15853276
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label18: TLabel
      Left = 9
      Top = 71
      Width = 122
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Origen de Operaci'#243'n'
      Color = 15853276
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label16: TLabel
      Left = 9
      Top = 91
      Width = 122
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Use/Ugel'
      Color = 15853276
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label20: TLabel
      Left = 10
      Top = 121
      Width = 60
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Direcci'#243'n'
      Color = 15853276
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label2: TLabel
      Left = 11
      Top = 140
      Width = 172
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Domicilio (Maestro Asociados)'
      Color = 15853276
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label5: TLabel
      Left = 11
      Top = 161
      Width = 172
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Laboral (Maestro Asociados)'
      Color = 15853276
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label11: TLabel
      Left = 11
      Top = 181
      Width = 172
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'GesCob'
      Color = 15853276
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label23: TLabel
      Left = 11
      Top = 211
      Width = 182
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Telefonos (Maestro Asociados)'
      Color = 15853276
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object lblTelefonoFijoMaeAso: TLabel
      Left = 70
      Top = 231
      Width = 203
      Height = 16
      AutoSize = False
      Caption = 'XXXXXXXXXX  Y  XXXXXXXXXXXXXXXXXX'
      Color = 16382457
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object lblDireccionDomMaeAso: TLabel
      Left = 188
      Top = 141
      Width = 436
      Height = 16
      AutoSize = False
      Caption = 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
      Color = 16382457
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object lblUses: TLabel
      Left = 138
      Top = 91
      Width = 335
      Height = 16
      AutoSize = False
      Caption = 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
      Color = 16382457
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object lblUniPro: TLabel
      Left = 138
      Top = 71
      Width = 207
      Height = 16
      AutoSize = False
      Caption = 'XXXXXXXXXXXXXXXXXXXXXXXXXX'
      Color = 16382457
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object lblDni: TLabel
      Left = 138
      Top = 51
      Width = 124
      Height = 16
      AutoSize = False
      Caption = 'XXXXXXXXXX'
      Color = 16382457
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object lblAsoNombres: TLabel
      Left = 138
      Top = 31
      Width = 399
      Height = 16
      AutoSize = False
      Caption = 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
      Color = 16382457
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object lblTipAso: TLabel
      Left = 138
      Top = 11
      Width = 124
      Height = 16
      AutoSize = False
      Caption = 'XXXXXXXXXXXXXXXXXX'
      Color = 16382457
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label3: TLabel
      Left = 552
      Top = 11
      Width = 139
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Situaci'#243'n del Asociado'
      Color = 15853276
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object lblSitAsociado: TLabel
      Left = 697
      Top = 11
      Width = 124
      Height = 16
      AutoSize = False
      Caption = 'XXXXXXXXXXXXXXXXXX'
      Color = 16382457
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label15: TLabel
      Left = 631
      Top = 121
      Width = 60
      Height = 16
      AutoSize = False
      Caption = 'Distrito'
      Color = 15853276
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label13: TLabel
      Left = 739
      Top = 121
      Width = 68
      Height = 16
      AutoSize = False
      Caption = 'Provincia'
      Color = 15853276
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label17: TLabel
      Left = 854
      Top = 121
      Width = 89
      Height = 16
      AutoSize = False
      Caption = 'Departamento'
      Color = 15853276
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object bFoto: TBevel
      Left = 980
      Top = 5
      Width = 116
      Height = 103
    end
    object bFirma: TBevel
      Left = 981
      Top = 114
      Width = 115
      Height = 39
      Cursor = crHandPoint
    end
    object lblCuenta: TLabel
      Left = 697
      Top = 31
      Width = 124
      Height = 16
      AutoSize = False
      Caption = 'XXXXXXXXXXXXXXXXXXXX'
      Color = 16382457
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label14: TLabel
      Left = 567
      Top = 31
      Width = 124
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Cuenta de Ahorros'
      Color = 15853276
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object lblCodMod: TLabel
      Left = 697
      Top = 50
      Width = 124
      Height = 16
      AutoSize = False
      Caption = 'XXXXXXXXXXXXXXXXXX'
      Color = 16382457
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object ImagAso: TImage
      Left = 985
      Top = 9
      Width = 107
      Height = 96
      Cursor = crHandPoint
      Hint = 'Click Para Maximizar'
      ParentShowHint = False
      ShowHint = True
      Stretch = True
      OnDblClick = ImagAsoDblClick
    end
    object ImaFirma: TImage
      Left = 985
      Top = 117
      Width = 107
      Height = 33
      Cursor = crHandPoint
      Hint = 'Click Para Maximizar'
      ParentShowHint = False
      ShowHint = True
      Stretch = True
      OnDblClick = ImaFirmaDblClick
    end
    object lblDireccionDomLabAso: TLabel
      Left = 188
      Top = 161
      Width = 436
      Height = 16
      AutoSize = False
      Caption = 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
      Color = 16382457
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object lblDireccionDomGesCob: TLabel
      Left = 188
      Top = 181
      Width = 436
      Height = 16
      AutoSize = False
      Caption = 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
      Color = 16382457
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object lblDireccionDomMaeAsoDist: TLabel
      Left = 631
      Top = 141
      Width = 100
      Height = 16
      AutoSize = False
      Caption = 'XXXXXXXXXX'
      Color = 16382457
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object lblDireccionDomLabAsoDist: TLabel
      Left = 631
      Top = 161
      Width = 100
      Height = 16
      AutoSize = False
      Caption = 'XXXXXXXXXX'
      Color = 16382457
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object lblDireccionDomGesCobDist: TLabel
      Left = 631
      Top = 181
      Width = 100
      Height = 16
      AutoSize = False
      Caption = 'XXXXXXXXXX'
      Color = 16382457
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object lblDireccionDomGesCobProv: TLabel
      Left = 739
      Top = 181
      Width = 108
      Height = 16
      AutoSize = False
      Caption = 'XXXXXXXXXX'
      Color = 16382457
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object lblDireccionDomLabAsoProv: TLabel
      Left = 739
      Top = 161
      Width = 108
      Height = 16
      AutoSize = False
      Caption = 'XXXXXXXXXX'
      Color = 16382457
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object lblDireccionDomMaeAsoProv: TLabel
      Left = 739
      Top = 141
      Width = 108
      Height = 16
      AutoSize = False
      Caption = 'XXXXXXXXXX'
      Color = 16382457
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object lblDireccionDomGesCobDpto: TLabel
      Left = 853
      Top = 181
      Width = 110
      Height = 16
      AutoSize = False
      Caption = 'XXXXXXXXXX'
      Color = 16382457
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object lblDireccionDomLabAsoDpto: TLabel
      Left = 853
      Top = 161
      Width = 110
      Height = 16
      AutoSize = False
      Caption = 'XXXXXXXXXX'
      Color = 16382457
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object lblDireccionDomMaeAsoDpto: TLabel
      Left = 853
      Top = 141
      Width = 110
      Height = 16
      AutoSize = False
      Caption = 'XXXXXXXXXX'
      Color = 16382457
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label33: TLabel
      Left = 608
      Top = 211
      Width = 113
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Telefonos (GesCob)'
      Color = 15853276
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label34: TLabel
      Left = 22
      Top = 231
      Width = 41
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Fijo'
      Color = 15853276
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label35: TLabel
      Left = 14
      Top = 251
      Width = 49
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Celular'
      Color = 15853276
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label36: TLabel
      Left = 567
      Top = 51
      Width = 124
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'C'#243'digo Modular'
      Color = 15853276
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object lblTelefonoCelMaeAso: TLabel
      Left = 70
      Top = 251
      Width = 203
      Height = 16
      AutoSize = False
      Caption = 'XXXXXXXXXX  Y  XXXXXXXXXXXXXXXXXX'
      Color = 16382457
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label41: TLabel
      Left = 628
      Top = 231
      Width = 41
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Fijo'
      Color = 15853276
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label42: TLabel
      Left = 604
      Top = 251
      Width = 65
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Celular'
      Color = 15853276
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object lblTelefonoCelGesCob: TLabel
      Left = 678
      Top = 251
      Width = 195
      Height = 16
      AutoSize = False
      Caption = 'XXXXXXXXXX  Y  XXXXXXXXXXXXXXXXXX'
      Color = 16382457
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object lblTelefonoFijoGesCob: TLabel
      Left = 678
      Top = 231
      Width = 195
      Height = 16
      AutoSize = False
      Caption = 'XXXXXXXXXX  Y  XXXXXXXXXXXXXXXXXX'
      Color = 16382457
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label45: TLabel
      Left = 14
      Top = 283
      Width = 101
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'D'#237'as de Atraso'
      Color = 15853276
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object lblDias: TLabel
      Left = 26
      Top = 303
      Width = 83
      Height = 15
      Alignment = taCenter
      AutoSize = False
      Caption = 'XXXXX'
      Color = 16382457
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label8: TLabel
      Left = 503
      Top = 323
      Width = 50
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Actual'
      Color = 15853276
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label10: TLabel
      Left = 511
      Top = 303
      Width = 42
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Inicial'
      Color = 15853276
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label46: TLabel
      Left = 503
      Top = 284
      Width = 50
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Saldo'
      Color = 15853276
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label47: TLabel
      Left = 565
      Top = 284
      Width = 90
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Total (a+b)'
      Color = 15853276
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label48: TLabel
      Left = 666
      Top = 284
      Width = 90
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Pendiente (a)'
      Color = 15853276
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label49: TLabel
      Left = 767
      Top = 284
      Width = 90
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Vencido (b)'
      Color = 15853276
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label50: TLabel
      Left = 869
      Top = 284
      Width = 90
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Diferido'
      Color = 15853276
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object lblSalTotal: TLabel
      Left = 565
      Top = 303
      Width = 90
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'X,XXX.XX'
      Color = 16382457
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object lblSalTotalAct: TLabel
      Left = 565
      Top = 323
      Width = 90
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'X,XXX.XX'
      Color = 16382457
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object lblSalPendAct: TLabel
      Left = 666
      Top = 323
      Width = 90
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'X,XXX.XX'
      Color = 16382457
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object lblSalPend: TLabel
      Left = 666
      Top = 303
      Width = 90
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'X,XXX.XX'
      Color = 16382457
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object lblSalVen: TLabel
      Left = 767
      Top = 303
      Width = 90
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'X,XXX.XX'
      Color = 16382457
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object lblSalVenAct: TLabel
      Left = 767
      Top = 323
      Width = 90
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'X,XXX.XX'
      Color = 16382457
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object lblSalDifAct: TLabel
      Left = 869
      Top = 323
      Width = 90
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'X,XXX.XX'
      Color = 16382457
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object lblSalDif: TLabel
      Left = 869
      Top = 303
      Width = 90
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'X,XXX.XX'
      Color = 16382457
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
  end
  object IdFTP1: TIdFTP
    MaxLineAction = maException
    ReadTimeout = 0
    Host = '10.10.10.41'
    ProxySettings.ProxyType = fpcmNone
    ProxySettings.Port = 0
    Left = 224
    Top = 456
  end
end
