object fDistGestion: TfDistGestion
  Left = 138
  Top = 112
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Distribuci'#243'n De Gesti'#243'n De Cobranza'
  ClientHeight = 520
  ClientWidth = 791
  Color = 10207162
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
    Left = 3
    Top = -2
    Width = 787
    Height = 519
    TabOrder = 0
    object Shape1: TShape
      Left = 6
      Top = 8
      Width = 206
      Height = 40
    end
    object Label8: TLabel
      Left = 189
      Top = 62
      Width = 52
      Height = 17
      AutoSize = False
      Caption = 'Buscar : '
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object dtgData: TDBGrid
      Left = 191
      Top = 151
      Width = 26
      Height = 10
      DataSource = DM1.dsProvin
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
      ParentFont = False
      ReadOnly = True
      TabOrder = 10
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
    end
    object BitSalir: TBitBtn
      Left = 663
      Top = 486
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
    object Panel1: TPanel
      Left = 8
      Top = 12
      Width = 202
      Height = 34
      Color = clWindow
      Enabled = False
      TabOrder = 1
      object lblNomMes: TLabel
        Left = 107
        Top = 8
        Width = 93
        Height = 18
        AutoSize = False
        Caption = 'DICIEMBRE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object dbsAnoIni: TwwDBSpinEdit
        Left = 3
        Top = 4
        Width = 58
        Height = 26
        Increment = 1.000000000000000000
        MaxValue = 2050.000000000000000000
        MinValue = 2004.000000000000000000
        Value = 2004.000000000000000000
        AutoFillDate = False
        AutoSelect = False
        AutoSize = False
        BorderStyle = bsNone
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        LimitEditRect = True
        MaxLength = 4
        ParentFont = False
        TabOrder = 0
        UnboundDataType = wwDefault
      end
      object dbsMesIni: TwwDBSpinEdit
        Left = 66
        Top = 4
        Width = 36
        Height = 26
        Increment = 1.000000000000000000
        MaxValue = 12.000000000000000000
        MinValue = 1.000000000000000000
        Value = 1.000000000000000000
        AutoFillDate = False
        AutoSelect = False
        AutoSize = False
        BorderStyle = bsNone
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        LimitEditRect = True
        MaxLength = 2
        ParentFont = False
        TabOrder = 1
        UnboundDataType = wwDefault
        UsePictureMask = False
      end
    end
    object Panel2: TPanel
      Left = 542
      Top = 59
      Width = 239
      Height = 25
      Enabled = False
      TabOrder = 2
      object Shape2: TShape
        Left = 114
        Top = 1
        Width = 122
        Height = 21
      end
      object lblRegistros: TLabel
        Left = 116
        Top = 4
        Width = 113
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = '0'
        Color = clWindow
        ParentColor = False
      end
      object Edit1: TEdit
        Left = 4
        Top = 1
        Width = 107
        Height = 21
        TabOrder = 0
        Text = 'N'#176' De Asociados'
      end
    end
    object dtgDetGest: TwwDBGrid
      Left = 8
      Top = 86
      Width = 773
      Height = 302
      Cursor = crHandPoint
      DisableThemesInTitle = False
      Selected.Strings = (
        'DPTODES'#9'15'#9'Departamento~(Laboral)'
        'USENOM'#9'20'#9'Uses/Ugel~(Laboral)'
        'ASOCODMOD'#9'10'#9'Codigo~Modular'
        'ASOAPENOM'#9'35'#9'Apellidos y Nombres'
        'ASODIR'#9'30'#9'Direcci'#243'n~(Domicilio)'
        'ZIPDES'#9'20'#9'Distrito~(Domicilio)'
        'CIUDDES'#9'20'#9'Provincia~(Domicilio)'
        'DPTODIR'#9'15'#9'Departamento~(Domicilio)'
        'ASOTELF1'#9'10'#9'Telefono'
        'SALDOS_FT'#9'13'#9'Saldo~(Amortizaci'#243'n(K))'
        'SALDOS_T'#9'13'#9'Saldo Total(K+I+G)'#9'F')
      IniAttributes.Delimiter = ';;'
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      DataSource = DM1.dsProvin
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
      ParentFont = False
      TabOrder = 3
      TitleAlignment = taLeftJustify
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      TitleLines = 2
      TitleButtons = False
      OnDblClick = dtgDetGestDblClick
    end
    object BitCartas: TBitBtn
      Left = 360
      Top = 20
      Width = 134
      Height = 26
      Cursor = crHandPoint
      Caption = 'Envio De Cartas'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = BitCartasClick
      Glyph.Data = {
        66010000424D6601000000000000760000002800000014000000140000000100
        040000000000F000000000000000000000001000000010000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        8888888800008888888888888888888800008880000000000000000800008880
        FFFFFFFFFFFFFF0800008880FFFFF4444444FF0800008800FFFFFFFFFFFFFF08
        00008800FFFFF4444444FF0800008800FFFFFFFFFFFFFF0800008000FFFFFFFF
        FFF99F0800008000F4444FFFFFF99F0800008000FFFFFFFFFFFFFF0800008000
        00000000000000080000800F4444FFFFFF99F0880000800FFFFFFFFFFFFFF088
        000080000000000000000088000080F4444FFFFFF99F0888000080FFFFFFFFFF
        FFFF088800008000000000000000088800008888888888888888888800008888
        88888888888888880000}
    end
    object BitTelef: TBitBtn
      Left = 219
      Top = 20
      Width = 134
      Height = 26
      Cursor = crHandPoint
      Caption = 'Llamadas Telefonicas'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnClick = BitTelefClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF003B3000000000
        003B37F77777777777F73BB09111111110BB3777F3F3F3F3F777311098080808
        10B33777F7373737377313309999999910337F373F3F3F3F3733133309808089
        03337F3373737373733313333099999033337FFFF7FFFFF7FFFFB011B0000000
        BBBB7777777777777777B01110BBBBB0BBBB77F37777777777773011108BB333
        333337F337377F3FFFF33099111BB3010033373F33777F77773F331999100101
        11033373FFF77773337F33300099991999033337773FFFF33373333BB7100199
        113333377377773FF7F333BB333BB7011B33337733377F7777FF3BB3333BB333
        3BB3377333377F33377FBB33333BB33333BB7733333773333377}
      NumGlyphs = 2
    end
    object EdtBuscar: TEdit
      Left = 240
      Top = 59
      Width = 296
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      OnChange = EdtBuscarChange
      OnKeyPress = EdtBuscarKeyPress
    end
    object Panel3: TPanel
      Left = 8
      Top = 54
      Width = 178
      Height = 30
      Caption = 'Panel3'
      Enabled = False
      TabOrder = 7
      object Shape3: TShape
        Left = 2
        Top = 2
        Width = 172
        Height = 26
      end
      object txtDist: TEdit
        Left = 7
        Top = 6
        Width = 161
        Height = 17
        AutoSize = False
        BevelInner = bvNone
        BevelOuter = bvNone
        BorderStyle = bsNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
    end
    object BitSinDatos: TBitBtn
      Left = 501
      Top = 20
      Width = 134
      Height = 26
      Cursor = crHandPoint
      Caption = 'Sin Datos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
      OnClick = BitSinDatosClick
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
    end
    object BitPorVerif: TBitBtn
      Left = 642
      Top = 20
      Width = 134
      Height = 26
      Cursor = crHandPoint
      Caption = 'Por Verificar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
      OnClick = BitPorVerifClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333300000000
        0000333377777777777733330FFFFFFFFFF033337F3FFF3F3FF733330F000F0F
        00F033337F777373773733330FFFFFFFFFF033337F3FF3FF3FF733330F00F00F
        00F033337F773773773733330FFFFFFFFFF033337FF3333FF3F7333300FFFF00
        F0F03333773FF377F7373330FB00F0F0FFF0333733773737F3F7330FB0BF0FB0
        F0F0337337337337373730FBFBF0FB0FFFF037F333373373333730BFBF0FB0FF
        FFF037F3337337333FF700FBFBFB0FFF000077F333337FF37777E0BFBFB000FF
        0FF077FF3337773F7F37EE0BFB0BFB0F0F03777FF3733F737F73EEE0BFBF00FF
        00337777FFFF77FF7733EEEE0000000003337777777777777333}
      NumGlyphs = 2
    end
    object grpDetalle: TGroupBox
      Left = 7
      Top = 389
      Width = 778
      Height = 87
      Caption = 'Criterios De Agrupaci'#243'n'
      Enabled = False
      TabOrder = 11
      object Label1: TLabel
        Left = 6
        Top = 31
        Width = 120
        Height = 18
        AutoSize = False
        Caption = 'Categorias De Riesgo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 396
        Top = 9
        Width = 75
        Height = 14
        AutoSize = False
        Caption = 'Departamento'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object Label6: TLabel
        Left = 395
        Top = 45
        Width = 120
        Height = 14
        AutoSize = False
        Caption = 'Uses/Ugel'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object dblTipCalf: TwwDBLookupCombo
        Left = 5
        Top = 48
        Width = 35
        Height = 21
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'RESUMEID'#9'2'#9'Codigo'#9'F'
          'RESUMEDES'#9'36'#9'Descripci'#243'n'#9'F')
        LookupTable = DM1.cdsConcre
        LookupField = 'RESUMEID'
        Options = [loColLines, loRowLines]
        ParentFont = False
        TabOrder = 0
        AutoDropDown = False
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = False
        OnChange = dblTipCalfChange
      end
      object Panel4: TPanel
        Left = 38
        Top = 48
        Width = 169
        Height = 23
        Caption = 'Panel1'
        Enabled = False
        TabOrder = 1
        object EdtDesCat: TEdit
          Left = 0
          Top = 0
          Width = 167
          Height = 22
          BevelKind = bkFlat
          BorderStyle = bsNone
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
        end
      end
      object chkMontos: TCheckBox
        Left = 210
        Top = 11
        Width = 90
        Height = 17
        Caption = 'Montos(Capital)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -9
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnClick = chkMontosClick
      end
      object pnlMontos: TPanel
        Left = 210
        Top = 33
        Width = 183
        Height = 42
        BevelOuter = bvLowered
        Enabled = False
        TabOrder = 3
        object Label2: TLabel
          Left = 85
          Top = 18
          Width = 14
          Height = 15
          Alignment = taCenter
          AutoSize = False
          Caption = 'De'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -9
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
        end
        object Label3: TLabel
          Left = 13
          Top = 2
          Width = 61
          Height = 13
          AutoSize = False
          Caption = 'Monto Inicial'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -9
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
        end
        object Label4: TLabel
          Left = 128
          Top = 2
          Width = 51
          Height = 12
          AutoSize = False
          Caption = 'Monto Final'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -9
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
        end
        object dbeMtoIni: TwwDBEdit
          Left = 5
          Top = 16
          Width = 78
          Height = 19
          BorderStyle = bsNone
          Color = 13165023
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Comic Sans MS'
          Font.Style = [fsBold]
          Frame.Enabled = True
          Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
          ParentFont = False
          TabOrder = 0
          UnboundDataType = wwDefault
          UnboundAlignment = taRightJustify
          WantReturns = False
          WordWrap = False
          OnExit = dbeMtoIniExit
          OnKeyPress = dbeMtoIniKeyPress
        end
        object dbeMtoFin: TwwDBEdit
          Left = 103
          Top = 16
          Width = 78
          Height = 19
          BorderStyle = bsNone
          Color = 13165023
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Comic Sans MS'
          Font.Style = [fsBold]
          Frame.Enabled = True
          Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
          ParentFont = False
          TabOrder = 1
          UnboundDataType = wwDefault
          UnboundAlignment = taRightJustify
          WantReturns = False
          WordWrap = False
          OnExit = dbeMtoFinExit
          OnKeyPress = dbeMtoFinKeyPress
        end
      end
      object BitMostrar: TBitBtn
        Left = 662
        Top = 22
        Width = 89
        Height = 27
        Cursor = crHandPoint
        Caption = 'Mostrar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        OnClick = BitMostrarClick
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          333333333333333333FF33333333333330003FF3FFFFF3333777003000003333
          300077F777773F333777E00BFBFB033333337773333F7F33333FE0BFBF000333
          330077F3337773F33377E0FBFBFBF033330077F3333FF7FFF377E0BFBF000000
          333377F3337777773F3FE0FBFBFBFBFB039977F33FFFFFFF7377E0BF00000000
          339977FF777777773377000BFB03333333337773FF733333333F333000333333
          3300333777333333337733333333333333003333333333333377333333333333
          333333333333333333FF33333333333330003333333333333777333333333333
          3000333333333333377733333333333333333333333333333333}
        NumGlyphs = 2
      end
      object Panel5: TPanel
        Left = 435
        Top = 23
        Width = 150
        Height = 24
        Caption = 'Panel1'
        Color = 13165023
        Enabled = False
        TabOrder = 5
        object EdtDpto: TEdit
          Left = 1
          Top = 0
          Width = 147
          Height = 22
          BevelKind = bkFlat
          BorderStyle = bsNone
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
        end
      end
      object dblDpto: TwwDBLookupCombo
        Left = 396
        Top = 23
        Width = 39
        Height = 21
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'DPTOID'#9'3'#9'Codigo'#9'F'
          'DPTODES'#9'27'#9'Descripci'#243'n'#9'F')
        LookupTable = DM1.cdsDFam
        LookupField = 'DPTOID'
        Options = [loColLines, loRowLines]
        ParentFont = False
        TabOrder = 6
        AutoDropDown = False
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = False
        OnChange = dblDptoChange
      end
      object Panel6: TPanel
        Left = 440
        Top = 59
        Width = 289
        Height = 24
        Caption = 'Panel1'
        Color = 13165023
        Enabled = False
        TabOrder = 7
        object EdtDesUse: TEdit
          Left = 2
          Top = 0
          Width = 285
          Height = 23
          BevelKind = bkFlat
          BorderStyle = bsNone
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
        end
      end
      object chkMstUses: TCheckBox
        Left = 475
        Top = 10
        Width = 103
        Height = 13
        Caption = 'Mostrar Uses/Ugel'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -9
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        TabOrder = 8
        OnClick = chkMstUsesClick
      end
      object dblUses: TwwDBLookupCombo
        Left = 396
        Top = 59
        Width = 41
        Height = 21
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'USEID'#9'3'#9'Codigo'#9'F'
          'USENOM'#9'41'#9'Descripci'#243'n'#9'F')
        LookupTable = DM1.cdsTUSE
        LookupField = 'USEID'
        Options = [loColLines, loRowLines]
        Enabled = False
        ParentFont = False
        TabOrder = 9
        AutoDropDown = False
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = False
        OnChange = dblUsesChange
      end
    end
    object BitEnvSel: TBitBtn
      Left = 179
      Top = 487
      Width = 166
      Height = 27
      Cursor = crHandPoint
      Caption = 'Seleccionados Para Envio'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 12
      OnClick = BitEnvSelClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333FF33333333333330003FF3FFFFF3333777003000003333
        300077F777773F333777E00BFBFB033333337773333F7F33333FE0BFBF000333
        330077F3337773F33377E0FBFBFBF033330077F3333FF7FFF377E0BFBF000000
        333377F3337777773F3FE0FBFBFBFBFB039977F33FFFFFFF7377E0BF00000000
        339977FF777777773377000BFB03333333337773FF733333333F333000333333
        3300333777333333337733333333333333003333333333333377333333333333
        333333333333333333FF33333333333330003333333333333777333333333333
        3000333333333333377733333333333333333333333333333333}
      NumGlyphs = 2
    end
    object BitMstSele: TBitBtn
      Left = 357
      Top = 487
      Width = 166
      Height = 27
      Cursor = crHandPoint
      Caption = 'Mostrar Seleccionados'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 13
      OnClick = BitMstSeleClick
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFC6C6C6CACACACACACACACACACACACACA
        CACACACACACACACACACACACACACACACACACACACABCBCBCFFFFFFFFFFFF000000
        2525252525252525252525252525252525252525252525252525252525252525
        25181818868686A1A1A16C6C6CFFFFFFDDDDDDE1E1E1D9D9D9E1E1E1D9D9D9D9
        D9D9E1E1E1D9D9D9E1E1E1D9D9D9DDDDDDFFFFFF4C4C4C868686878787828282
        2F2F2F2F2F2F8E8E8E2626268787878787872626268E8E8E2626268E8E8E2626
        268282828B8B8B8686868787878D8D8D3737373737378787872F2F2F7F7F7F7F
        7F7F2F2F2F8787872F2F2F8787872F2F2F8D8D8D878787868686878787868686
        979797878787FFFFFF787878FFFFFFFFFFFF787878FFFFFF787878FFFFFF8787
        878686868787878686868787878D8D8D3737373737378787872F2F2F7F7F7F7F
        7F7F2F2F2F8787872F2F2F8787872F2F2F8D8D8D8787878686868787878D8D8D
        3737373737378787872F2F2F7F7F7F7F7F7F2F2F2F8787872F2F2F8787872F2F
        2F8D8D8D878787868686878787868686979797878787FFFFFF787878FFFFFFFF
        FFFF787878FFFFFF787878FFFFFF8787878686868787878686868787878D8D8D
        37373F2F2F3F8787962626377F7F8E7F7F8E2626378787962626378787962F2F
        378D8D8D8787878686868787878989913737009E9E008E8E009696008E8E008E
        8E009696008E8E009696009696003737008989918787878282827C7C7CBBBBBB
        32323A3636473636473636473636473636473636473636473636473636473232
        3ABBBBBB787878A1A1A1CBCBCB6B6B6B7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
        7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F6B6B6BC4C4C4FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    end
    object grbProceso: TGroupBox
      Left = 283
      Top = 283
      Width = 229
      Height = 47
      Caption = 'Procesando Informaci'#243'n'
      TabOrder = 14
      Visible = False
      object lblPor: TLabel
        Left = 12
        Top = 31
        Width = 210
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = '0   De  0  Registros'
      end
      object prbAvance: TProgressBar
        Left = 4
        Top = 14
        Width = 220
        Height = 16
        TabOrder = 0
      end
    end
  end
end
