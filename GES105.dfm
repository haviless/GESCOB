object fMatriz: TfMatriz
  Left = 316
  Top = 122
  BorderStyle = bsDialog
  Caption = 'Matriz de Gesti'#243'n'
  ClientHeight = 550
  ClientWidth = 611
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 611
    Height = 550
    Align = alClient
    TabOrder = 0
    object BitSalir: TBitBtn
      Left = 504
      Top = 517
      Width = 81
      Height = 28
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
      Left = 4
      Top = 9
      Width = 605
      Height = 506
      TabOrder = 1
      object lblDet: TLabel
        Left = 7
        Top = 169
        Width = 298
        Height = 16
        Caption = 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object dtgCab: TwwDBGrid
        Left = 5
        Top = 7
        Width = 588
        Height = 150
        DisableThemesInTitle = False
        Selected.Strings = (
          'IDGTN'#9'2'#9'Codigo'#9#9
          'DESCRIPCION'#9'50'#9'Descripci'#243'n'#9#9)
        IniAttributes.Delimiter = ';;'
        TitleColor = clBtnFace
        OnRowChanged = dtgCabRowChanged
        FixedCols = 0
        ShowHorzScrollBar = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
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
        TitleLines = 1
        TitleButtons = False
      end
      object dtgDet: TwwDBGrid
        Left = 5
        Top = 185
        Width = 588
        Height = 316
        DisableThemesInTitle = False
        Selected.Strings = (
          'IDGTNDET'#9'2'#9'Codigo'#9#9
          'DESCRIPCION'#9'35'#9'Descripci'#243'n'#9#9
          'CONTACTADO'#9'6'#9'Contac-~tado'#9#9
          'DIRECTO'#9'6'#9'Directo~S/N'#9#9
          'ACTIVO'#9'6'#9'Activo~S/N'#9#9
          'GESTIONADO'#9'6'#9'Gestionado~S/N'#9#9
          'RANKING'#9'6'#9'Ranking'#9#9
          'PNLOPCVIS1'#9'6'#9'Pnl1~S/N'#9#9
          'PNLOPCVIS2'#9'6'#9'Pnl2~S/N'#9#9
          'PNLOPCVIS3'#9'6'#9'Pnl3~S/N'#9#9)
        IniAttributes.Delimiter = ';;'
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
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
        OnDblClick = dtgDetDblClick
        object dtgDetIButton: TwwIButton
          Left = 0
          Top = 0
          Width = 25
          Height = 29
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
          OnClick = dtgDetIButtonClick
        end
      end
      object pnlNuevo: TPanel
        Left = 98
        Top = 224
        Width = 407
        Height = 273
        BevelInner = bvRaised
        BevelWidth = 2
        TabOrder = 2
        Visible = False
        object Label3: TLabel
          Left = 23
          Top = 23
          Width = 33
          Height = 13
          Caption = 'Codigo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label4: TLabel
          Left = 21
          Top = 67
          Width = 65
          Height = 13
          Caption = 'Descripci'#243'n   '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label1: TLabel
          Left = 21
          Top = 123
          Width = 40
          Height = 13
          Caption = 'Ranking'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object BitGraba: TfcShapeBtn
          Left = 326
          Top = 217
          Width = 32
          Height = 32
          Cursor = crHandPoint
          Hint = 'Grabar'
          Color = cl3DLight
          DitherColor = clWhite
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
          Options = [boFocusable]
          ParentClipping = True
          ParentShowHint = False
          RoundRectBias = 25
          ShadeColors.BtnFocus = clNavy
          ShadeStyle = fbsHighlight
          ShowHint = True
          TabOrder = 2
          TabStop = True
          TextOptions.Alignment = taCenter
          TextOptions.VAlignment = vaVCenter
          OnClick = BitGrabaClick
        end
        object EdtNombre: TEdit
          Left = 20
          Top = 81
          Width = 332
          Height = 21
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 40
          ParentFont = False
          TabOrder = 1
        end
        object BitClose: TfcShapeBtn
          Left = 363
          Top = 217
          Width = 32
          Height = 32
          Cursor = crHandPoint
          Hint = 'Salir'
          Color = cl3DLight
          DitherColor = clWhite
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
          Options = [boFocusable]
          ParentClipping = True
          ParentShowHint = False
          RoundRectBias = 25
          ShadeStyle = fbsHighlight
          ShowHint = True
          TabOrder = 3
          TabStop = True
          TextOptions.Alignment = taCenter
          TextOptions.VAlignment = vaVCenter
          OnClick = BitCloseClick
        end
        object stText: TStaticText
          Left = 4
          Top = 3
          Width = 400
          Height = 19
          AutoSize = False
          Caption = ' Nuevos Conceptos De Gesti'#243'n'
          Color = 8404992
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 4
        end
        object pnlCod: TPanel
          Left = 20
          Top = 37
          Width = 47
          Height = 25
          Enabled = False
          TabOrder = 0
          object EdtCodigo: TEdit
            Left = 2
            Top = 2
            Width = 41
            Height = 21
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            MaxLength = 3
            ParentFont = False
            TabOrder = 0
          end
        end
        object cbActivo: TCheckBox
          Left = 214
          Top = 233
          Width = 107
          Height = 17
          Caption = 'Activo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
        end
        object cbContactado: TCheckBox
          Left = 22
          Top = 163
          Width = 107
          Height = 17
          Caption = 'Contactado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
          OnClick = cbContactadoClick
        end
        object rgContactoDirecto: TRadioGroup
          Left = 36
          Top = 213
          Width = 154
          Height = 40
          Caption = 'Tipo de Contacto'
          Columns = 2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemIndex = 1
          Items.Strings = (
            'Directo'
            'Indirecto')
          ParentFont = False
          TabOrder = 7
        end
        object chbGestionado: TCheckBox
          Left = 22
          Top = 185
          Width = 107
          Height = 17
          Caption = 'Gestionado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 8
        end
        object EditRanking: TEdit
          Left = 72
          Top = 120
          Width = 89
          Height = 21
          TabOrder = 9
          OnKeyPress = EditRankingKeyPress
        end
        object gbVisualizar: TGroupBox
          Left = 211
          Top = 101
          Width = 185
          Height = 105
          Caption = 'Visualizar'
          TabOrder = 10
          object cbpnl1: TCheckBox
            Left = 13
            Top = 24
            Width = 162
            Height = 17
            Caption = 'Tel'#233'fono, direcci'#243'n y correo'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
          end
          object cbpnl2: TCheckBox
            Left = 13
            Top = 48
            Width = 162
            Height = 17
            Caption = 'Motivo de atraso'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
          end
          object cbpnl3: TCheckBox
            Left = 13
            Top = 72
            Width = 162
            Height = 17
            Caption = 'Importe y Fecha pactada'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
          end
        end
      end
    end
  end
end
