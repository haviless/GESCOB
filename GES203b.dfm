object fDetGest: TfDetGest
  Left = 136
  Top = 159
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Detalles de Gesti'#243'n'
  ClientHeight = 519
  ClientWidth = 786
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
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 4
    Top = -3
    Width = 780
    Height = 484
    TabOrder = 0
    object Shape5: TShape
      Left = 437
      Top = 71
      Width = 111
      Height = 45
    end
    object Shape4: TShape
      Left = 321
      Top = 71
      Width = 111
      Height = 45
    end
    object Shape3: TShape
      Left = 205
      Top = 71
      Width = 111
      Height = 45
    end
    object Shape2: TShape
      Left = 8
      Top = 72
      Width = 193
      Height = 43
    end
    object Label12: TLabel
      Left = 309
      Top = 24
      Width = 102
      Height = 18
      AutoSize = False
      Caption = 'Tipo de Asociado'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblTipAso: TLabel
      Left = 435
      Top = 25
      Width = 136
      Height = 16
      AutoSize = False
      Caption = 'XXXXXXXXXXXXXX'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 412
      Top = 49
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
    object Label7: TLabel
      Left = 9
      Top = 46
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
    object lblAsoNombres: TLabel
      Left = 142
      Top = 47
      Width = 278
      Height = 16
      AutoSize = False
      Caption = 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 124
      Top = 46
      Width = 14
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
    object lblDias: TLabel
      Left = 145
      Top = 91
      Width = 42
      Height = 17
      AutoSize = False
      Caption = '9,999'
      Color = clWindow
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label9: TLabel
      Left = 235
      Top = 77
      Width = 69
      Height = 17
      AutoSize = False
      Caption = 'Saldo Total'
      Color = clWindow
      Font.Charset = ANSI_CHARSET
      Font.Color = clTeal
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object lblSaldo: TLabel
      Left = 210
      Top = 96
      Width = 101
      Height = 19
      Alignment = taRightJustify
      AutoSize = False
      Caption = '5,000.00'
      Color = clWindow
      Font.Charset = ANSI_CHARSET
      Font.Color = clTeal
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label14: TLabel
      Left = 15
      Top = 93
      Width = 98
      Height = 16
      AutoSize = False
      Caption = 'D'#237'as de Atraso'
      Color = clWindow
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label15: TLabel
      Left = 125
      Top = 92
      Width = 12
      Height = 16
      Alignment = taCenter
      AutoSize = False
      Caption = ':'
      Color = clWindow
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object lblNroGest: TLabel
      Left = 9
      Top = 14
      Width = 200
      Height = 23
      AutoSize = False
      Caption = 'Gesti'#243'n  N'#176'  :  000005'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblPend: TLabel
      Left = 327
      Top = 96
      Width = 99
      Height = 19
      Alignment = taRightJustify
      AutoSize = False
      Caption = '5,000.00'
      Color = clWindow
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object lblVenc: TLabel
      Left = 441
      Top = 96
      Width = 102
      Height = 19
      Alignment = taRightJustify
      AutoSize = False
      Caption = '5,000.00'
      Color = clWindow
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label16: TLabel
      Left = 323
      Top = 76
      Width = 102
      Height = 17
      Alignment = taCenter
      AutoSize = False
      Caption = 'Saldo Pendiente'
      Color = clWindow
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label17: TLabel
      Left = 448
      Top = 76
      Width = 90
      Height = 17
      Alignment = taCenter
      AutoSize = False
      Caption = 'Saldo Vencido'
      Color = clWindow
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object pnlItems: TPanel
      Left = 8
      Top = 121
      Width = 764
      Height = 181
      BorderStyle = bsSingle
      ParentColor = True
      TabOrder = 0
      object Label6: TLabel
        Left = 327
        Top = 8
        Width = 74
        Height = 12
        AutoSize = False
        Caption = 'Tipo De Gesti'#243'n'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -9
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object Label1: TLabel
        Left = 6
        Top = 72
        Width = 98
        Height = 16
        AutoSize = False
        Caption = 'Gesti'#243'n Realizada'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 5
        Top = 2
        Width = 61
        Height = 14
        AutoSize = False
        Caption = 'Referencia'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object Label10: TLabel
        Left = 306
        Top = 30
        Width = 95
        Height = 12
        AutoSize = False
        Caption = 'Resultado De Gesti'#243'n'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -9
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object BitGrabar: TBitBtn
        Left = 707
        Top = 129
        Width = 49
        Height = 45
        Cursor = crHandPoint
        TabOrder = 3
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
      object dblGestion: TwwDBLookupCombo
        Left = 400
        Top = 4
        Width = 41
        Height = 21
        Cursor = crHandPoint
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'IDGTN'#9'4'#9'Codigo'#9'F'
          'DESCRIPCION'#9'15'#9'Descripci'#243'n'#9'F')
        LookupTable = DM1.cdsTransacciones
        LookupField = 'IDGTN'
        Options = [loColLines, loRowLines]
        ParentFont = False
        TabOrder = 1
        AutoDropDown = False
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = False
        OnChange = dblGestionChange
      end
      object mDetObs: TMemo
        Left = 5
        Top = 88
        Width = 292
        Height = 81
        Cursor = crHandPoint
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 200
        ParentFont = False
        ScrollBars = ssVertical
        TabOrder = 2
      end
      object mRefCab: TMemo
        Left = 5
        Top = 16
        Width = 292
        Height = 53
        Cursor = crHandPoint
        MaxLength = 200
        ScrollBars = ssVertical
        TabOrder = 0
      end
      object dblGestionDet: TwwDBLookupCombo
        Left = 400
        Top = 26
        Width = 42
        Height = 21
        Cursor = crHandPoint
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'IDGTNDET'#9'4'#9'Codigo'#9'F'
          'DESCRIPCION'#9'35'#9'Descripci'#243'n'#9'F')
        LookupTable = DM1.cdsTipCreA
        LookupField = 'IDGTNDET'
        Options = [loColLines, loRowLines]
        Enabled = False
        ParentFont = False
        TabOrder = 4
        AutoDropDown = False
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = False
        OnChange = dblGestionDetChange
      end
      object EdtDesGnt: TEdit
        Left = 441
        Top = 4
        Width = 207
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
        TabOrder = 5
        OnChange = EdtDesGntChange
      end
      object EdtDesGntDet: TEdit
        Left = 441
        Top = 26
        Width = 207
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
        TabOrder = 6
      end
      object gbNegociacion: TGroupBox
        Left = 304
        Top = 48
        Width = 399
        Height = 123
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
        object lbl2: TLabel
          Left = 8
          Top = 12
          Width = 57
          Height = 12
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Negociaci'#243'n'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -9
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
        end
        object lbl3: TLabel
          Left = 12
          Top = 48
          Width = 81
          Height = 12
          AutoSize = False
          Caption = 'Observaci'#243'n'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -9
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
        end
        object cbNegociacion: TwwDBLookupCombo
          Left = 10
          Top = 23
          Width = 41
          Height = 21
          Cursor = crHandPoint
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          DropDownAlignment = taLeftJustify
          Options = [loColLines, loRowLines]
          Style = csDropDownList
          ParentFont = False
          TabOrder = 0
          AutoDropDown = False
          ShowButton = True
          PreciseEditRegion = False
          AllowClearKey = False
          OnChange = cbNegociacionChange
        end
        object edNegociacion: TEdit
          Left = 50
          Top = 23
          Width = 175
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
          TabOrder = 1
        end
        object edObservaciones: TMemo
          Left = 10
          Top = 60
          Width = 383
          Height = 58
          Cursor = crHandPoint
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 200
          ParentFont = False
          ScrollBars = ssVertical
          TabOrder = 2
        end
        object pnFechaCompromiso: TPanel
          Left = 225
          Top = 13
          Width = 168
          Height = 35
          BevelOuter = bvNone
          ParentColor = True
          TabOrder = 3
          object lbl1: TLabel
            Left = -3
            Top = -3
            Width = 81
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Fecha Compromiso'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -9
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
          end
          object Label3: TLabel
            Left = 95
            Top = -2
            Width = 81
            Height = 12
            AutoSize = False
            Caption = 'Mto Compromiso'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -9
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
          end
          object dtpFec_Compromiso: TDateTimePicker
            Left = 1
            Top = 9
            Width = 93
            Height = 24
            CalColors.TextColor = clBtnText
            Date = 37814.000000000000000000
            Time = 37814.000000000000000000
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -15
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
          end
          object edMonCom: TEdit
            Left = 97
            Top = 11
            Width = 66
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
            TabOrder = 1
          end
        end
      end
    end
    object Panel1: TPanel
      Left = 577
      Top = 16
      Width = 194
      Height = 41
      Color = 14548479
      Enabled = False
      TabOrder = 1
      object Shape1: TShape
        Left = 1
        Top = 1
        Width = 191
        Height = 38
        Brush.Color = 14548479
      end
      object Label11: TLabel
        Left = 5
        Top = 6
        Width = 36
        Height = 13
        Caption = 'Fecha'
        Color = 14548479
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Label13: TLabel
        Left = 5
        Top = 20
        Width = 64
        Height = 13
        Caption = 'De Gesti'#243'n'
        Color = 14548479
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object DtpFecGst: TDateTimePicker
        Left = 84
        Top = 9
        Width = 101
        Height = 24
        CalColors.TextColor = clBtnText
        Date = 37814.000000000000000000
        Time = 37814.000000000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
    end
    object dtgDetGestion: TwwDBGrid
      Left = 9
      Top = 304
      Width = 763
      Height = 176
      Cursor = crHandPoint
      DisableThemesInTitle = False
      Selected.Strings = (
        'USUARIO'#9'12'#9'Usuario~De Gesti'#243'n'
        'FECHA'#9'10'#9'Fecha~De Gesti'#243'n'
        'HORA'#9'8'#9'Hora~De Gesti'#243'n'
        'DESCRIPCION'#9'16'#9'Tipo~De Gesti'#243'n'
        'DESCRIPCIONDET'#9'40'#9'Resultado~De Gesti'#243'n'
        'DETOBS'#9'30'#9'Gesti'#243'n Realizada'#9'F')
      IniAttributes.Delimiter = ';;'
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      DataSource = DM1.dsDetRegCob
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowFooter, dgFooter3DCells]
      ParentFont = False
      TabOrder = 2
      TitleAlignment = taLeftJustify
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      TitleLines = 2
      TitleButtons = False
      OnDblClick = dtgDetGestionDblClick
    end
    object Panel2: TPanel
      Left = 575
      Top = 69
      Width = 194
      Height = 48
      BevelInner = bvLowered
      BevelOuter = bvLowered
      Color = 14548479
      TabOrder = 3
      object Label4: TLabel
        Left = 9
        Top = 17
        Width = 114
        Height = 16
        Caption = 'Cartas Impresas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblCartasImpresas: TLabel
        Left = 126
        Top = 17
        Width = 25
        Height = 16
        Caption = '000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
  end
  object BitPrint: TBitBtn
    Left = 435
    Top = 487
    Width = 84
    Height = 26
    Cursor = crHandPoint
    Hint = 'Imprimir'
    Caption = 'Imprimir'
    TabOrder = 1
    OnClick = BitPrintClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000130B0000130B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
      00033FFFFFFFFFFFFFFF0888888888888880777777777777777F088888888888
      8880777777777777777F0000000000000000FFFFFFFFFFFFFFFF0F8F8F8F8F8F
      8F80777777777777777F08F8F8F8F8F8F9F0777777777777777F0F8F8F8F8F8F
      8F807777777777777F7F0000000000000000777777777777777F3330FFFFFFFF
      03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
      03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
      33333337F3FF7F3733333330F08F0F0333333337F7737F7333333330FFFF0033
      33333337FFFF7733333333300000033333333337777773333333}
    NumGlyphs = 2
  end
  object BitSalir: TBitBtn
    Left = 695
    Top = 487
    Width = 83
    Height = 26
    Cursor = crHandPoint
    Hint = 'Salir'
    Caption = '&Salir'
    TabOrder = 2
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
  object BitDatGes: TBitBtn
    Left = 239
    Top = 487
    Width = 108
    Height = 26
    Cursor = crHandPoint
    Caption = 'Contactabilidad'
    TabOrder = 3
    OnClick = BitDatGesClick
    Glyph.Data = {
      AA040000424DAA04000000000000360000002800000013000000130000000100
      18000000000074040000C40E0000C40E00000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFF4F4F4CCCCCCB5B5B5DEDEDEF3F3F3FEFEFEFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFB7B7B75D5C5D8E928E0002007776778182818B8C8BCFCFCFFCFCFC
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFA6AA
      A62325236E736EA9AEA9595C59FFFFFFEEEFEEABADAB797B79878987ACB2ACFF
      FFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFC4C4C4000000C0C1C0
      E4E5E4D4D4D4E3E4E2F5F8F9F4F5F3F9FBF9DFE5DFA8AFA87B7F7B616561D2D6
      D2FFFFFFFFFFFF000000FFFFFFFFFFFFFDFFFD555C55919191FFFFFFFFFFFFFF
      FFFFFFFFFFF6F8F9EEEFEEE7ECE7E6EDE6DFE7DFDEE0DEC1C1C1535453909390
      FFFFFF000000FFFFFFFFFFFFAFB0AF424542EFF3EFFFFFFFFFFFFFFFFFFFFFFE
      FFF3F7F9EFF0EEEDEEEDE4EBE4DBE1DBD5DED5DDDBDDEEEDEE7B7B7BD1D1D100
      0000FFFFFFF5F5F56463648C8F8CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9FDFF
      EFF1F2EEEFEEE6ECE6DFE5DFD4DCD4DBD9DBC7C8C7747374D9D9D9000000FFFF
      FFB8B8B8505050C1C1C1DCDFDCEAE9EAFFFFFFFFFFFFFFFFFFF9FDFFF0F2F2EE
      EEEDE4EBE4E2E7E2D9E1D9C5C5C5848784B5B5B5F4F4F4000000F6F6F65D5D5D
      808180ACB3ABA9B0A9B2B6B1EEEDEEFFFFFFFFFFFFFEFEFFF1F0F0F0F1F1E8ED
      E8E6EDE6DEE3DE8A8F8AB7B6B7FFFFFFFFFFFF000000F1F1F1828281A9B1AAC0
      CAC576747A707276B4BBB8EAEBEBFFFFFFFFFFFFF0F3F6F2F2F0E8EEE8E8EEE8
      DBE2DB5D5B5DFFFFFFFFFFFFFFFFFF000000D3D3D3777878A2A8A45F5B56544E
      463D362E5A554EB0B2B1FFFFFFFFFFFFF3F8FCF1EFEEEAEEEAFAFFFA616361C5
      C5C5FFFFFFFFFFFFFFFFFF000000E1E1E151545A5754279E8D00BFB100C1B400
      A19000595223DFDFE3FFFFFFFCFCFCEEEEEFFDFDFDC5CCC5515351FFFFFFFFFF
      FFFFFFFFFFFFFF000000FFFFFF8F909A757200DBE3028A7E008B7E00D3D9035E
      5E00C9C8CAFFFFFFFDFDFEF4F4F6FEFFFD5E605EE5E5E5FFFFFFFFFFFFFFFFFF
      FFFFFF000000FFFFFFC4C3CC6E7304595C09769400B5B4066F740E9D9807E2E1
      DCFFFFFFFDFEFFFCFEFFCBCBCA7A7A7AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
      0000FFFFFFFFFFFFB7BABB0000169EA100D8D600000000130E1AC9C9CBFDFDFD
      FFFFFFFFFFFF585958D9D9D9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF
      FFFFFFFFF2F3FA7085542C4D0C4C5A04637740E4EBF2727873747774B7BAB792
      93929DA19DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
      818683A6B600F9FF00F6FF00B5C400878E79FFFFFFD8DBD7979B97838683DFE0
      DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFA3A39DAD
      AE00B4B600B3B400AFB100A7A991F2F2F9FFFFFFFFFFFFF1F1F1FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFCFCFFEEEFDFE1E3
      C4E1E3C4EAECD8FDFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFF000000}
  end
  object BitSaldoHoy: TBitBtn
    Left = 152
    Top = 487
    Width = 84
    Height = 26
    Cursor = crHandPoint
    Caption = 'Saldo Hoy'
    TabOrder = 4
    OnClick = BitSaldoHoyClick
    Glyph.Data = {
      42010000424D4201000000000000760000002800000011000000110000000100
      040000000000CC00000000000000000000001000000010000000000000000000
      BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DDDDDDDDDDDD
      DDDDD0000000DDDDD00000000000D0000000DDDDD0F7F7F7F7F0D0000000D000
      007CCCCCCC70D0000000D0F7F0F7F7F7F7F0D0000000D07CC07F711F7F70D000
      0000D0F7F0F7F117F7F0D0000000D071107F7F117F70D0000000D0F1F0F7F7F1
      17F0D0000000D071107F11111F70D0000000D0F1F0F7F7F7F7F0D0000000D071
      100000000000D0000000D0F7F0CCCCCCCCC0D0000000D000000000000000D000
      0000D0CCCCCCCC0DDDDDD0000000D0000000000DDDDDD0000000DDDDDDDDDDDD
      DDDDD0000000}
  end
  object BitPlanilla: TBitBtn
    Left = 5
    Top = 487
    Width = 144
    Height = 26
    Cursor = crHandPoint
    Caption = 'Descuentos por Planilla'
    TabOrder = 5
    OnClick = BitPlanillaClick
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000C40E0000C40E00000000000000000000484848474747
      4747474747474747474747474747474747474747474747474B4B4B0B0B0BDEDE
      DEFFFFFFFFFFFFFFFFFF4848484343433A3A3A3232323434344343433E3E3E3E
      3E3E3E3E3E3E3E3E4343430F0F0F191919FFFFFFFFFFFFFFFFFF4444446B6B6B
      A9A9A9FCFCFCEFEFEF5858588383837F7F7F7F7F7F7F7F7F7F7F7F8383837F7F
      7F6767676F6F6F1F1F1F4848482F2F2FFAFAFAE7E7E7D2D2D24E4E4EFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5A5A5A484848333333
      F5F5F5DDDDDD393939FFFFFFFFFFFFE9BCBCFF7171FFD3D3FFFFFFEBFFFFFF61
      61FFFFFF3F3F3FFFFFFF4848482F2F2FF9F9F9D2D2D24C4C4CFFFFFFE90000FF
      0000FF5252FF0000FFFFFFEB0303FF1212FFFFFF5C5C5CFFFFFF444444616161
      F1F1F12F2F2FFFFFFFFFFFFFFF7171FFFFFFED0000EDCFCFEDCFCFFF0000FAFF
      FF444444FFFFFFFFFFFF444444666666969696AFAFAFFFFFFFFFBCBCFF9090FF
      0000EB7171FFFFFFED0606EE6E6EFFFFFF5C5C5CFFFFFFFFFFFF4444446C6C6C
      4A4A4AFFFFFFFF6F6FFFDCDCE98787FF0000FFFBFBE9D3D3FF0000FAFFFF4444
      44FFFFFFFFFFFFFFFFFF444444747474767676E1FEFEFF0000FF9E9EFF0000FF
      FFFFFF0000FF0000E9CBCBFFFFFF626262FFFFFFFFFFFFFFFFFF545450000000
      FFFFFFFFFFFFFF7777FF6969E9FFFFFFFFFFFFD3D3FF6F6FFFFFFFA7A7A7BEBE
      BEFFFFFFFFFFFFFFFFFF2424422A2A0BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFF4A4A4AFFFFFFFFFFFFFFFFFFFFFFFF0000860000D4
      0000FF0000FF0000FF0000FF0000FF0000E19100000000FF0000FF828262FFFF
      FFFFFFFFFFFFFFFFFFFF00007F0000D2500080A100006B003F9D00006B003F95
      00009900000000FF0000BCD3D3BCFFFFFFFFFFFFFFFFFFFFFFFF00007B0000D2
      500080A100006B003F9D00006B003F9D00006F00375C0070000068FFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF5858A50000C00000FF0000FF0000FF0000FF0000FF00
      00FF0000FF0000FF3F3FBCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
  end
  object BitAtencion: TBitBtn
    Left = 351
    Top = 487
    Width = 81
    Height = 26
    Cursor = crHandPoint
    Caption = 'Atenci'#243'n'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    OnClick = BitAtencionClick
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000C40E0000C40E000000000000000000003B3B58838300
      7777008E8E003737000000006363009A9A00000000546F22584400000000A5A5
      00000000A5A500373700646400FAFA00FFFF006B6B00DADA008B8B00ECEC0087
      8700A2930016B6A100879212616D9E9622707000181800878796000000E1E100
      6F6F009A9A00FFFF0050501D2929533737009F93003B8A9E00D4D4B5C3C32C28
      3573737FFFFFFFFFFFFFFFFFFF636387585800FFFF003B3B149191A19D9D9D46
      464E624A5A00DFDFABABABFFFFFF0F0F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      0000000000229D9DA45F5F5F3A3A3A0000002F22220D8787C8B9B97F7F7F8181
      813C3C3C3D3D3DFFFFFFFFFFFFD3D3D348484C1D1D1D6B6B6B8D8D8D8D8D8D93
      9393B0B0B0483B3BE1E1E1FEFEFEFFFFFFFFFFFF606060FFFFFFFFFFFF2F2F2F
      0000000000003F3F3F8D8D8D8787878787875B5B5B2C2C2CE1E1E1DEDEDEFFFF
      FF9E9E9E000000FFFFFFE9E9E90000000000000000006F6F6F89898985858598
      9898A1A1A13F3F3FECECECE1E1E1FFFFFF9292928C8C8C686868000000000000
      000000585858999999878787838383B9B9B9B0B0B0636363424242D9E8E8FF5B
      5BFFFFFF686868FFFFFF00000000000000000000000048484895959591919100
      0000B9B9B93D3535D5CECEC6C6C67F8E8E6D6D6D807C7CFFFFFF000000000000
      0000000000000000003F3F3F8989899A9A9A00000090DBDB065353FFE2E2DEC4
      C4F0D6D61F3838D3CFCF4848480000000000000000000000004C4C4CC3C3C3F5
      F5F5281F1F87C3C32FB5B500B7B700E8E800B2B22FFFFF7A6262E1E1E1000000
      00000000000000000000000000000000000000000094D0D07EF5F500FFFF00FF
      FF00FFFF1F4A4AFFFFFFFFFFFF26262600000000000000000000000000000000
      0000000000002222225B5B006969006767875757FFFFFFFFFFFFFFFFFFFFFFFF
      878787000000000000000000000000000000E1E1E1FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
  end
  object RpFichaGes: TppReport
    AutoStop = False
    DataPipeline = DBFichaGes
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Carta'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 279000
    PrinterSetup.mmPaperWidth = 216000
    PrinterSetup.PaperSize = 1
    Template.FileName = 
      'C:\Documents and Settings\hnoriega\Escritorio\Gestion Cobranza\R' +
      'epDesb.rtm'
    Units = utMillimeters
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    PreviewFormSettings.WindowState = wsMaximized
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 357
    Top = 352
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'DBFichaGes'
    object ppHeaderBand41: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 80169
      mmPrintPosition = 0
      object ppShape7: TppShape
        UserName = 'Shape7'
        mmHeight = 5556
        mmLeft = 0
        mmTop = 74083
        mmWidth = 203200
        BandType = 0
      end
      object ppShape6: TppShape
        UserName = 'Shape6'
        mmHeight = 7408
        mmLeft = 92869
        mmTop = 66411
        mmWidth = 31750
        BandType = 0
      end
      object ppShape5: TppShape
        UserName = 'Shape5'
        mmHeight = 7408
        mmLeft = 127794
        mmTop = 66411
        mmWidth = 31750
        BandType = 0
      end
      object ppShape4: TppShape
        UserName = 'Shape4'
        mmHeight = 7408
        mmLeft = 161396
        mmTop = 66411
        mmWidth = 31750
        BandType = 0
      end
      object ppLabel858: TppLabel
        UserName = 'Label43'
        Caption = 'DERRAMA MAGISTERIAL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 265
        mmTop = 0
        mmWidth = 34396
        BandType = 0
      end
      object ppLabel859: TppLabel
        UserName = 'Label106'
        Caption = 'Sistema De Gesti'#243'n De Cobranzas'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 0
        mmTop = 4498
        mmWidth = 44154
        BandType = 0
      end
      object ppLabel860: TppLabel
        UserName = 'Label45'
        Caption = 'Fecha   '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 163513
        mmTop = 0
        mmWidth = 10160
        BandType = 0
      end
      object ppLabel861: TppLabel
        UserName = 'Label46'
        Caption = 'Hora     '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 163513
        mmTop = 4233
        mmWidth = 11430
        BandType = 0
      end
      object ppLabel862: TppLabel
        UserName = 'Label47'
        Caption = 'Pag      '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 163513
        mmTop = 8467
        mmWidth = 11430
        BandType = 0
      end
      object ppSystemVariable83: TppSystemVariable
        UserName = 'SystemVariable4'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 177536
        mmTop = 0
        mmWidth = 16140
        BandType = 0
      end
      object ppSystemVariable84: TppSystemVariable
        UserName = 'SystemVariable5'
        VarType = vtTime
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 177271
        mmTop = 4233
        mmWidth = 16404
        BandType = 0
      end
      object ppSystemVariable85: TppSystemVariable
        UserName = 'SystemVariable6'
        VarType = vtPageNo
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 177800
        mmTop = 8467
        mmWidth = 1323
        BandType = 0
      end
      object ppLblTit: TppLabel
        UserName = 'LblTit'
        AutoSize = False
        Caption = 'FICHA DE GESTION AL : 09/08/2010'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5027
        mmLeft = 0
        mmTop = 12700
        mmWidth = 202936
        BandType = 0
      end
      object ppLabel863: TppLabel
        UserName = 'Label48'
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 175155
        mmTop = 8467
        mmWidth = 1588
        BandType = 0
      end
      object ppLabel864: TppLabel
        UserName = 'Label49'
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 175155
        mmTop = 4233
        mmWidth = 1588
        BandType = 0
      end
      object ppLabel865: TppLabel
        UserName = 'Label50'
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 175155
        mmTop = 0
        mmWidth = 1588
        BandType = 0
      end
      object ppDBText339: TppDBText
        UserName = 'DBText16'
        DataField = 'NROGEST'
        DataPipeline = DBFichaGes
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'DBFichaGes'
        mmHeight = 5027
        mmLeft = 157427
        mmTop = 26194
        mmWidth = 20373
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        AutoSize = False
        Caption = 'N'#176' de Gesti'#243'n    '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 117740
        mmTop = 26194
        mmWidth = 28575
        BandType = 0
      end
      object lblFecGes: TppLabel
        UserName = 'lblFecGes'
        Caption = '05/08/2010'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4995
        mmLeft = 157427
        mmTop = 20373
        mmWidth = 21336
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Caption = 'Fecha '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 1058
        mmTop = 75406
        mmWidth = 8731
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Caption = 'Gestor'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 18521
        mmTop = 75406
        mmWidth = 14288
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Caption = 'Detalles de Gesti'#243'n '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 38100
        mmTop = 75406
        mmWidth = 25665
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        AutoSize = False
        Caption = 'Inicio de Gesti'#243'n'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 117740
        mmTop = 20638
        mmWidth = 32544
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        AutoSize = False
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 11
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4498
        mmLeft = 151607
        mmTop = 26194
        mmWidth = 3969
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        AutoSize = False
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 11
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4498
        mmLeft = 151607
        mmTop = 20638
        mmWidth = 3969
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        AutoSize = False
        Caption = 'Codigo Modular '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 0
        mmTop = 34131
        mmWidth = 20701
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        AutoSize = False
        Caption = 'Apellidos y Nombres'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 0
        mmTop = 38100
        mmWidth = 36248
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        AutoSize = False
        Caption = 'Documento de Identidad'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 0
        mmTop = 42333
        mmWidth = 36248
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label101'
        AutoSize = False
        Caption = 'Origen de Operaciones'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 0
        mmTop = 46567
        mmWidth = 35983
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        AutoSize = False
        Caption = 'Use / Ugel'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 94456
        mmTop = 46567
        mmWidth = 26458
        BandType = 0
      end
      object ppLabel13: TppLabel
        UserName = 'Label13'
        AutoSize = False
        Caption = 'Direcci'#243'n'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 0
        mmTop = 51065
        mmWidth = 35983
        BandType = 0
      end
      object ppLabel14: TppLabel
        UserName = 'Label14'
        AutoSize = False
        Caption = 'Telefono'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 0
        mmTop = 59796
        mmWidth = 35983
        BandType = 0
      end
      object ppLabel15: TppLabel
        UserName = 'Label15'
        AutoSize = False
        Caption = 'Tipo de Asociado'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 94456
        mmTop = 34131
        mmWidth = 26458
        BandType = 0
      end
      object ppLabel16: TppLabel
        UserName = 'Label16'
        AutoSize = False
        Caption = 'Cuenta de Ahorros'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 94456
        mmTop = 42333
        mmWidth = 26458
        BandType = 0
      end
      object ppLabel18: TppLabel
        UserName = 'Label18'
        AutoSize = False
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 37835
        mmTop = 59796
        mmWidth = 3704
        BandType = 0
      end
      object ppLabel19: TppLabel
        UserName = 'Label19'
        AutoSize = False
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 37835
        mmTop = 46567
        mmWidth = 3704
        BandType = 0
      end
      object ppLabel20: TppLabel
        UserName = 'Label20'
        AutoSize = False
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 37835
        mmTop = 42333
        mmWidth = 3704
        BandType = 0
      end
      object ppLabel21: TppLabel
        UserName = 'Label21'
        AutoSize = False
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 37835
        mmTop = 38100
        mmWidth = 3704
        BandType = 0
      end
      object ppLabel22: TppLabel
        UserName = 'Label22'
        AutoSize = False
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 37835
        mmTop = 34131
        mmWidth = 3704
        BandType = 0
      end
      object ppLabel23: TppLabel
        UserName = 'Label23'
        AutoSize = False
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 121444
        mmTop = 34131
        mmWidth = 3704
        BandType = 0
      end
      object ppLabel24: TppLabel
        UserName = 'Label24'
        AutoSize = False
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 121444
        mmTop = 42333
        mmWidth = 3704
        BandType = 0
      end
      object ppLabel25: TppLabel
        UserName = 'Label25'
        AutoSize = False
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 121444
        mmTop = 46567
        mmWidth = 3704
        BandType = 0
      end
      object ppLabel26: TppLabel
        UserName = 'Label26'
        AutoSize = False
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 37835
        mmTop = 51065
        mmWidth = 3704
        BandType = 0
      end
      object pplblSaltot: TppLabel
        UserName = 'lblSaltot'
        AutoSize = False
        Caption = '2,388.68 [17]'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 11
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4763
        mmLeft = 94721
        mmTop = 67733
        mmWidth = 28046
        BandType = 0
      end
      object pplblSalPen: TppLabel
        UserName = 'lblSalPen'
        AutoSize = False
        Caption = '2,188.90 [15]'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 11
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4763
        mmLeft = 129911
        mmTop = 67733
        mmWidth = 27517
        BandType = 0
      end
      object pplblSalVen: TppLabel
        UserName = 'lblSalVen'
        AutoSize = False
        Caption = '199.78 [2]'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 11
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4763
        mmLeft = 163513
        mmTop = 67733
        mmWidth = 27517
        BandType = 0
      end
      object ppLabel29: TppLabel
        UserName = 'Label29'
        AutoSize = False
        Caption = 'SALDO TOTAL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 98161
        mmTop = 62971
        mmWidth = 20638
        BandType = 0
      end
      object ppLabel30: TppLabel
        UserName = 'Label30'
        AutoSize = False
        Caption = 'SALDO PENDIENTE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 130175
        mmTop = 62971
        mmWidth = 26458
        BandType = 0
      end
      object ppLabel31: TppLabel
        UserName = 'Label301'
        AutoSize = False
        Caption = 'SALDO VENCIDO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 165100
        mmTop = 62971
        mmWidth = 23813
        BandType = 0
      end
      object pplblCodMod: TppLabel
        UserName = 'lblCodMod'
        AutoSize = False
        Caption = 'Codigo Modular '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 43127
        mmTop = 34131
        mmWidth = 20638
        BandType = 0
      end
      object pplblNomGen: TppLabel
        UserName = 'lblCodMod1'
        AutoSize = False
        Caption = 'ARANDA LOPEZ ELVIRA MELVA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 43127
        mmTop = 38100
        mmWidth = 92869
        BandType = 0
      end
      object ppLblDni: TppLabel
        UserName = 'Label102'
        AutoSize = False
        Caption = '33243653'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 43127
        mmTop = 42333
        mmWidth = 31221
        BandType = 0
      end
      object ppLblOriOto: TppLabel
        UserName = 'LblOriOto'
        AutoSize = False
        Caption = 'HUARAZ'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 43127
        mmTop = 46567
        mmWidth = 35983
        BandType = 0
      end
      object ppLblAsodir: TppLabel
        UserName = 'LblAsodir'
        AutoSize = False
        Caption = 'CALLE CHIRIMOYO # S/N Ref. PINGULLO BAJO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 43127
        mmTop = 51065
        mmWidth = 118798
        BandType = 0
      end
      object ppLblTelefono: TppLabel
        UserName = 'LblTelefono'
        AutoSize = False
        Caption = ' - '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 43127
        mmTop = 59796
        mmWidth = 35983
        BandType = 0
      end
      object ppLblTipAso: TppLabel
        UserName = 'LblTipAso'
        AutoSize = False
        Caption = 'DO-ASOCIADO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 126207
        mmTop = 34131
        mmWidth = 42333
        BandType = 0
      end
      object ppLblCtaAho: TppLabel
        UserName = 'LblCtaAho'
        AutoSize = False
        Caption = '4347400004 (CANCELADA)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 126207
        mmTop = 42333
        mmWidth = 52652
        BandType = 0
      end
      object ppLblUses: TppLabel
        UserName = 'LblCtaAho1'
        AutoSize = False
        Caption = 'UGEL SIHUAS'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 126207
        mmTop = 46567
        mmWidth = 69321
        BandType = 0
      end
      object ppLabel27: TppLabel
        UserName = 'Label27'
        AutoSize = False
        Caption = 'Departamento'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 0
        mmTop = 55563
        mmWidth = 35983
        BandType = 0
      end
      object ppLabel28: TppLabel
        UserName = 'Label28'
        AutoSize = False
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 37835
        mmTop = 55563
        mmWidth = 3704
        BandType = 0
      end
      object pplDpto: TppLabel
        UserName = 'pplDpto'
        AutoSize = False
        Caption = 'HUARAZ'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 43127
        mmTop = 55563
        mmWidth = 27781
        BandType = 0
      end
      object ppLabel33: TppLabel
        UserName = 'Label33'
        AutoSize = False
        Caption = 'Provincia'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 80433
        mmTop = 55563
        mmWidth = 12435
        BandType = 0
      end
      object ppLabel34: TppLabel
        UserName = 'Label34'
        AutoSize = False
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 93398
        mmTop = 55563
        mmWidth = 3704
        BandType = 0
      end
      object pplProv: TppLabel
        UserName = 'lProv'
        AutoSize = False
        Caption = 'UGEL SIHUAS'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 97896
        mmTop = 55563
        mmWidth = 41804
        BandType = 0
      end
      object ppLabel32: TppLabel
        UserName = 'Label32'
        AutoSize = False
        Caption = 'Distrito'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 145257
        mmTop = 55298
        mmWidth = 9260
        BandType = 0
      end
      object ppLabel36: TppLabel
        UserName = 'Label36'
        AutoSize = False
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 155046
        mmTop = 55298
        mmWidth = 3704
        BandType = 0
      end
      object pplDist: TppLabel
        UserName = 'lDist'
        AutoSize = False
        Caption = 'UGEL SIHUAS'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 159544
        mmTop = 55298
        mmWidth = 41804
        BandType = 0
      end
    end
    object ppDetailBand44: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 5821
      mmPrintPosition = 0
      object ppShape8: TppShape
        UserName = 'Shape8'
        mmHeight = 5292
        mmLeft = 37835
        mmTop = 265
        mmWidth = 38629
        BandType = 4
      end
      object ppShape3: TppShape
        UserName = 'Shape3'
        mmHeight = 5292
        mmLeft = 76200
        mmTop = 265
        mmWidth = 127000
        BandType = 4
      end
      object ppShape2: TppShape
        UserName = 'Shape2'
        mmHeight = 5292
        mmLeft = 16933
        mmTop = 265
        mmWidth = 21167
        BandType = 4
      end
      object ppShape1: TppShape
        UserName = 'Shape1'
        mmHeight = 5292
        mmLeft = 0
        mmTop = 264
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText340: TppDBText
        UserName = 'DBText17'
        DataField = 'FECHA'
        DataPipeline = DBFichaGes
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DBFichaGes'
        mmHeight = 2498
        mmLeft = 794
        mmTop = 1323
        mmWidth = 15346
        BandType = 4
      end
      object ppDBText342: TppDBText
        UserName = 'DBText19'
        DataField = 'USUARIO'
        DataPipeline = DBFichaGes
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DBFichaGes'
        mmHeight = 2498
        mmLeft = 18521
        mmTop = 1323
        mmWidth = 18256
        BandType = 4
      end
      object ppDBText343: TppDBText
        UserName = 'DBText20'
        DataField = 'DETOBS'
        DataPipeline = DBFichaGes
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DBFichaGes'
        mmHeight = 2381
        mmLeft = 77523
        mmTop = 1323
        mmWidth = 124090
        BandType = 4
      end
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        DataField = 'DESCRIPCIONDET'
        DataPipeline = DBFichaGes
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DBFichaGes'
        mmHeight = 2498
        mmLeft = 48419
        mmTop = 1323
        mmWidth = 27252
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        DataField = 'IDGESTIONDET'
        DataPipeline = DBFichaGes
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DBFichaGes'
        mmHeight = 2498
        mmLeft = 39158
        mmTop = 1323
        mmWidth = 8202
        BandType = 4
      end
    end
    object ppFooterBand36: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppSummaryBand41: TppSummaryBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 16669
      mmPrintPosition = 0
      object ppSubReport1: TppSubReport
        UserName = 'SubReport1'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        ParentPrinterSetup = False
        TraverseAllData = False
        DataPipelineName = 'DBSitReclamo'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 1588
        mmWidth = 203300
        BandType = 7
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppChildReport1: TppChildReport
          DataPipeline = DBSitReclamo
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report'
          PrinterSetup.PaperName = 'Carta'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.mmMarginBottom = 6350
          PrinterSetup.mmMarginLeft = 6350
          PrinterSetup.mmMarginRight = 6350
          PrinterSetup.mmMarginTop = 6350
          PrinterSetup.mmPaperHeight = 279000
          PrinterSetup.mmPaperWidth = 216000
          PrinterSetup.PaperSize = 1
          Units = utMillimeters
          Version = '7.02'
          mmColumnWidth = 0
          DataPipelineName = 'DBSitReclamo'
          object ppTitleBand1: TppTitleBand
            mmBottomOffset = 0
            mmHeight = 7408
            mmPrintPosition = 0
            object ppShape10: TppShape
              UserName = 'Shape10'
              mmHeight = 5292
              mmLeft = 0
              mmTop = 2381
              mmWidth = 203200
              BandType = 1
            end
            object ppLabel17: TppLabel
              UserName = 'Label17'
              Caption = 'Atenci'#243'n en Ventanilla'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 15cpi'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3260
              mmLeft = 14552
              mmTop = 3175
              mmWidth = 28236
              BandType = 1
            end
          end
          object ppDetailBand1: TppDetailBand
            mmBottomOffset = 0
            mmHeight = 5556
            mmPrintPosition = 0
            object ppShape9: TppShape
              UserName = 'Shape9'
              mmHeight = 5821
              mmLeft = 0
              mmTop = 0
              mmWidth = 203200
              BandType = 4
            end
            object ppDBText3: TppDBText
              UserName = 'DBText3'
              AutoSize = True
              DataField = 'CODATE'
              DataPipeline = DBSitReclamo
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              Transparent = True
              DataPipelineName = 'DBSitReclamo'
              mmHeight = 2498
              mmLeft = 39688
              mmTop = 1588
              mmWidth = 3556
              BandType = 4
            end
            object ppDBText4: TppDBText
              UserName = 'DBText4'
              AutoSize = True
              DataField = 'DESCRIPCION'
              DataPipeline = DBSitReclamo
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              Transparent = True
              DataPipelineName = 'DBSitReclamo'
              mmHeight = 2498
              mmLeft = 48419
              mmTop = 1588
              mmWidth = 26712
              BandType = 4
            end
            object ppDBText5: TppDBText
              UserName = 'DBText5'
              DataField = 'USUARIO'
              DataPipeline = DBSitReclamo
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              Transparent = True
              DataPipelineName = 'DBSitReclamo'
              mmHeight = 2381
              mmLeft = 18521
              mmTop = 1588
              mmWidth = 17992
              BandType = 4
            end
            object ppDBText6: TppDBText
              UserName = 'DBText6'
              AutoSize = True
              DataField = 'FREG'
              DataPipeline = DBSitReclamo
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              Transparent = True
              DataPipelineName = 'DBSitReclamo'
              mmHeight = 2498
              mmLeft = 1323
              mmTop = 1588
              mmWidth = 10668
              BandType = 4
            end
            object ppDBText7: TppDBText
              UserName = 'DBText7'
              DataField = 'OBSATE'
              DataPipeline = DBSitReclamo
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              Transparent = True
              DataPipelineName = 'DBSitReclamo'
              mmHeight = 2381
              mmLeft = 77788
              mmTop = 1588
              mmWidth = 120650
              BandType = 4
            end
            object ppLine1: TppLine
              UserName = 'Line1'
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 5292
              mmLeft = 16933
              mmTop = 265
              mmWidth = 1058
              BandType = 4
            end
            object ppLine2: TppLine
              UserName = 'Line2'
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 5292
              mmLeft = 37835
              mmTop = 265
              mmWidth = 1058
              BandType = 4
            end
            object ppLine3: TppLine
              UserName = 'Line3'
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 5292
              mmLeft = 76200
              mmTop = 265
              mmWidth = 1058
              BandType = 4
            end
          end
          object ppSummaryBand1: TppSummaryBand
            mmBottomOffset = 0
            mmHeight = 0
            mmPrintPosition = 0
          end
        end
      end
      object ppRegion1: TppRegion
        UserName = 'Region1'
        Caption = 'Region1'
        ShiftRelativeTo = ppSubReport1
        mmHeight = 6615
        mmLeft = 0
        mmTop = 6615
        mmWidth = 203200
        BandType = 7
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppLblUser: TppLabel
          UserName = 'LblUser'
          AutoSize = False
          Caption = 'Emitido Por :  Hugo Noriega 03'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3440
          mmLeft = 3704
          mmTop = 8202
          mmWidth = 96044
          BandType = 7
        end
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object DBFichaGes: TppDBPipeline
    DataSource = DM1.dsDetRegCob
    AutoCreateFields = False
    UserName = 'DBFichaGes'
    Left = 357
    Top = 304
  end
  object PPD1: TppDesigner
    Caption = 'ReportBuilder'
    DataSettings.SessionType = 'BDESession'
    DataSettings.AllowEditSQL = False
    DataSettings.CollationType = ctASCII
    DataSettings.DatabaseType = dtParadox
    DataSettings.IsCaseSensitive = True
    DataSettings.SQLType = sqBDELocal
    Position = poScreenCenter
    Report = RpFichaGes
    IniStorageType = 'IniFile'
    IniStorageName = '($WINSYS)\RBuilder.ini'
    WindowHeight = 400
    WindowLeft = 100
    WindowTop = 50
    WindowWidth = 600
    Left = 476
    Top = 341
  end
  object DBSitReclamo: TppDBPipeline
    DataSource = DM1.dssitreclamo
    UserName = 'DBSitReclamo'
    Left = 396
    Top = 309
  end
end
