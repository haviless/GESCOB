object FRegistroIncidencias: TFRegistroIncidencias
  Left = 95
  Top = 87
  Width = 1121
  Height = 687
  Caption = 'Registro de Incidencias'
  Color = clBtnFace
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
  object pnl1: TPanel
    Left = 0
    Top = 607
    Width = 1105
    Height = 42
    Align = alBottom
    BevelOuter = bvNone
    ParentColor = True
    TabOrder = 0
    DesignSize = (
      1105
      42)
    object btnSalir: TBitBtn
      Left = 1016
      Top = 7
      Width = 81
      Height = 28
      Hint = 'Salir'
      Anchors = [akTop, akRight]
      Caption = '&Salir'
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
  object pnIzquierdo: TPanel
    Left = 0
    Top = 0
    Width = 417
    Height = 607
    Align = alLeft
    BevelOuter = bvNone
    BorderWidth = 3
    TabOrder = 1
    object pnlIzquierdoSuperior: TPanel
      Left = 3
      Top = 3
      Width = 411
      Height = 57
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      object lbl1: TLabel
        Left = 12
        Top = 15
        Width = 135
        Height = 16
        Caption = 'Periodo de Gestion'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object cboPeriodo: TwwDBLookupCombo
        Left = 156
        Top = 11
        Width = 90
        Height = 25
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        DropDownAlignment = taLeftJustify
        Options = [loColLines, loRowLines]
        Style = csDropDownList
        ParentFont = False
        TabOrder = 0
        AutoDropDown = False
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = False
        OnChange = cboPeriodoChange
      end
    end
    object dbgCabecera: TwwDBGrid
      Left = 3
      Top = 60
      Width = 411
      Height = 544
      Cursor = crArrow
      DisableThemesInTitle = False
      IniAttributes.Delimiter = ';;'
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      Align = alClient
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowFooter]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 1
      TitleAlignment = taCenter
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clBlack
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      TitleLines = 2
      TitleButtons = False
      PadColumnStyle = pcsPlain
    end
  end
  object pnlDerecho: TPanel
    Left = 417
    Top = 0
    Width = 688
    Height = 607
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 3
    TabOrder = 2
    object GroupBox1: TGroupBox
      Left = 3
      Top = 3
      Width = 682
      Height = 601
      Align = alClient
      Caption = 'Incidentes'
      TabOrder = 0
      object Panel1: TPanel
        Left = 2
        Top = 15
        Width = 678
        Height = 584
        Align = alClient
        BevelOuter = bvNone
        BorderWidth = 3
        TabOrder = 0
        object dbgDetalle: TwwDBGrid
          Left = 3
          Top = 3
          Width = 672
          Height = 413
          Cursor = crArrow
          DisableThemesInTitle = False
          IniAttributes.Delimiter = ';;'
          TitleColor = clBtnFace
          FixedCols = 0
          ShowHorzScrollBar = True
          Align = alClient
          Ctl3D = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
          TitleAlignment = taCenter
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clBlack
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = [fsBold]
          TitleLines = 2
          TitleButtons = True
          PadColumnStyle = pcsPlain
          object dbgDetalleIButton: TwwIButton
            Left = 0
            Top = 0
            Width = 28
            Height = 30
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
            OnClick = dbgDetalleIButtonClick
          end
        end
        object pnlDetalleControles: TPanel
          Left = 3
          Top = 416
          Width = 672
          Height = 165
          Align = alBottom
          BevelOuter = bvNone
          TabOrder = 1
          DesignSize = (
            672
            165)
          object Label1: TLabel
            Left = 8
            Top = 16
            Width = 21
            Height = 13
            Caption = 'Tipo'
          end
          object Label2: TLabel
            Left = 8
            Top = 56
            Width = 44
            Height = 13
            Caption = 'Incidente'
          end
          object lblCantCaracteres: TLabel
            Left = 9
            Top = 131
            Width = 35
            Height = 13
            Caption = '0/200'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object cboTipoIncidente: TwwDBLookupCombo
            Left = 8
            Top = 31
            Width = 660
            Height = 21
            Anchors = [akLeft, akTop, akRight]
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
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
          end
          object txtIncidente: TMemo
            Left = 8
            Top = 72
            Width = 660
            Height = 57
            Anchors = [akLeft, akTop, akRight]
            TabOrder = 1
            OnChange = txtIncidenteChange
          end
          object btnAnular: TBitBtn
            Left = 585
            Top = 132
            Width = 81
            Height = 28
            Hint = 'Salir'
            Anchors = [akTop, akRight]
            Caption = '&Anular'
            TabOrder = 2
            OnClick = btnAnularClick
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
          object btnGrabar: TBitBtn
            Left = 500
            Top = 132
            Width = 81
            Height = 28
            Hint = 'Salir'
            Anchors = [akTop, akRight]
            Caption = '&Grabar'
            TabOrder = 3
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
        end
      end
    end
  end
end
