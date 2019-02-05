object FrmAlertaAcuerdos: TFrmAlertaAcuerdos
  Left = 311
  Top = 33
  Width = 1000
  Height = 680
  Caption = 
    'Acuerdos Incumplidos / Promesas de pago indefinidas / Todas Nego' +
    'ciaciones'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Shape10: TShape
    Left = 768
    Top = 96
    Width = 97
    Height = 57
  end
  object Shape11: TShape
    Left = 864
    Top = 96
    Width = 97
    Height = 57
  end
  object Shape12: TShape
    Left = 768
    Top = 152
    Width = 97
    Height = 57
  end
  object Shape13: TShape
    Left = 864
    Top = 152
    Width = 97
    Height = 57
  end
  object Shape14: TShape
    Left = 768
    Top = 208
    Width = 97
    Height = 57
  end
  object Shape15: TShape
    Left = 864
    Top = 208
    Width = 97
    Height = 57
  end
  object Label12: TLabel
    Left = 592
    Top = 112
    Width = 58
    Height = 26
    Alignment = taCenter
    Caption = 'CUOTA'#13#10'PACTADA'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label13: TLabel
    Left = 696
    Top = 112
    Width = 58
    Height = 26
    Alignment = taCenter
    Caption = 'CUOTA'#13#10'PACTADA'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label14: TLabel
    Left = 784
    Top = 112
    Width = 58
    Height = 26
    Alignment = taCenter
    Caption = 'CUOTA'#13#10'PACTADA'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object pnl2: TPanel
    Left = 0
    Top = 596
    Width = 984
    Height = 46
    Align = alBottom
    BevelOuter = bvNone
    ParentColor = True
    TabOrder = 1
    DesignSize = (
      984
      46)
    object btnExportar: TBitBtn
      Left = 774
      Top = 6
      Width = 100
      Height = 32
      Anchors = [akTop, akRight]
      Caption = 'Exportar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = btnExportarClick
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000010000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DDDDDDDDDDDD
        DDDDDDDDDDDDDDDDDDDDDDDDDDDDDD00000DD00000000006660DD08888880E00
        000DD000000000EEE080DD07778E0EEE0080DDD078E0EEE07700DDDD0E0EEE00
        0000DDD0E0EEE080DDDDDD0E0EEE07080DDDD0E0EEE0777080DD0E0EEE0D0777
        080D00EEE0DDD077700D00000DDDDD00000DDDDDDDDDDDDDDDDD}
      Spacing = 2
    end
    object btnImprimir: TBitBtn
      Left = 453
      Top = 6
      Width = 100
      Height = 32
      Anchors = [akTop, akRight]
      Caption = 'Imprimir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      Visible = False
      OnClick = btnImprimirClick
      Glyph.Data = {
        BE080000424DBE0800000000000036000000280000001B0000001A0000000100
        18000000000088080000CE0E0000D80E00000000000000000000C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000
        0000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C080
        8080000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000000808080C0C0
        C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C000000080808080800080808080
        8000808080808000808080808000808080808000808080808000808080808000
        808080808000808080808080808000000000C0C0C0C0C0C0C0C0C0000000C0C0
        C0C0C0C000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000C0C0C0C0C0C0000000C0C0C0C0C0C00000008080008080
        0080800080800080800080800080800080800080800080800080800080800080
        8000808000808000808000808000808000808000808000808000000000C0C0C0
        C0C0C0000000C0C0C0C0C0C00000008080008080000000000000008080000000
        0000000080800000000000000080800080800080800080800000000000000000
        0000000000000000000000808000000000C0C0C0C0C0C0000000C0C0C0C0C0C0
        0000008080008080000000000000008080000000000000008080000000000000
        0080800080800080800080800000000000000000000000000000000000000080
        8000000000C0C0C0C0C0C0000000C0C0C0C0C0C0000000808000808000808000
        8080008080008080008080008080008080008080008080008080008080008080
        00808000808000808000808000808000808000808000000000C0C0C0C0C0C000
        0000C0C0C0C0C0C0000000808000808000808000808000808000808000808000
        8080008080008080008080008080008080008080008080008080008080008080
        00808000808000808000000000C0C0C0C0C0C0000000C0C0C0C0C0C0000000C0
        C0C0C0C0C0FFFFFFFFFFFFC0C0C0FFFFFFC0C0C0FFFFFFC0C0C0FFFFFFFFFFFF
        C0C0C0FFFFFFC0C0C0FFFFFFC0C0C0FFFFFFFFFFFFC0C0C0FFFFFFC0C0C00000
        00C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000C0C0C0C0C0C0C0C0C0000000C0C0
        C0C0C0C0C0C0C0C0C0C0000000808000808000000000FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000808000808000
        000000C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C00000
        00000000000000000000FFFFFF00000000000080808080808000000080808000
        0000808080000000FFFFFF000000000000000000000000C0C0C0C0C0C0C0C0C0
        C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
        0000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000FFFFFF0000000000008080800000
        00808080000000000000C0C0C0000000FFFFFF000000C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000
        0000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000FFFFFF000000
        808080000000000000808080000000FFFFFFFFFFFFFFFFFFFFFFFF000000C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000
        0000FFFFFF000000000000808080808080000000000000FFFFFF000000000000
        000000000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFF000000C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF000000000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000000000
        00000000000000000000000000000000000000000000000000C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000
        0000}
      Spacing = 2
    end
    object btnSalir: TBitBtn
      Left = 880
      Top = 6
      Width = 100
      Height = 32
      Hint = 'Salir'
      Anchors = [akTop, akRight]
      Caption = '&Salir'
      TabOrder = 0
      OnClick = btnSalirClick
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00330000000000
        03333301BBBBBBBB033333011BBBBBBB0333330111BBBBBB03333301110BBBBB
        03333301110BBBBB03333301110BBBBB03333301110BBBBB03333301110BBBBB
        03333301110BBBBB0333330111B0BBBB03333301110BBBBB03333301110BBBBB
        03333301E10BBBBB03333301EE0BBBBB03333300000000000333}
    end
  end
  object pcAlertas: TPageControl
    Left = 0
    Top = 36
    Width = 984
    Height = 560
    ActivePage = tsAcuerdosIncumplidosInd
    Align = alClient
    TabOrder = 0
    object tsAcuerdosIncumplidos: TTabSheet
      Caption = 'Acuerdos Incumplidos'
      object dbgAcuerdosIncumplidos: TwwDBGrid
        Left = 0
        Top = 0
        Width = 976
        Height = 532
        DisableThemesInTitle = False
        IniAttributes.Delimiter = ';;'
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowFooter]
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        TitleAlignment = taCenter
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = [fsBold]
        TitleLines = 2
        TitleButtons = False
      end
    end
    object tsPromesasPagoIndefinidas: TTabSheet
      Caption = 'Promesas de pago Indefinidas'
      ImageIndex = 1
      object dbgPromesasPagoIndefinidas: TwwDBGrid
        Left = 0
        Top = 0
        Width = 976
        Height = 532
        DisableThemesInTitle = False
        IniAttributes.Delimiter = ';;'
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowFooter]
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        TitleAlignment = taCenter
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = [fsBold]
        TitleLines = 2
        TitleButtons = False
      end
    end
    object tsTodasNegociaciones: TTabSheet
      Caption = 'Todas las Negociaciones'
      ImageIndex = 2
      object pnl1: TPanel
        Left = 0
        Top = 0
        Width = 976
        Height = 41
        Align = alTop
        BevelOuter = bvNone
        ParentColor = True
        TabOrder = 0
        object lbl1: TLabel
          Left = 5
          Top = 0
          Width = 132
          Height = 14
          AutoSize = False
          Caption = 'Tipo de Negociaci'#243'n'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
        end
        object cbNegociacion: TwwDBLookupCombo
          Left = 6
          Top = 16
          Width = 39
          Height = 21
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          DropDownAlignment = taLeftJustify
          Options = [loColLines, loRowLines]
          ParentFont = False
          TabOrder = 0
          AutoDropDown = False
          ShowButton = True
          PreciseEditRegion = False
          AllowClearKey = False
          OnChange = cbNegociacionChange
        end
        object edtNegociacion: TEdit
          Left = 45
          Top = 15
          Width = 337
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
          TabOrder = 1
        end
      end
      object dbgTodasNegociaciones: TwwDBGrid
        Left = 0
        Top = 41
        Width = 976
        Height = 491
        DisableThemesInTitle = False
        IniAttributes.Delimiter = ';;'
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        Align = alClient
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowFooter]
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
        TitleAlignment = taCenter
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Arial'
        TitleFont.Style = [fsBold]
        TitleLines = 2
        TitleButtons = True
        OnTitleButtonClick = dbgTodasNegociacionesTitleButtonClick
      end
    end
    object tsNegociacionesCumplidas: TTabSheet
      Caption = 'Acuerdos Cumplidos'
      ImageIndex = 3
      object dbgAcuerdosCumplidos: TwwDBGrid
        Left = 0
        Top = 0
        Width = 976
        Height = 532
        DisableThemesInTitle = False
        IniAttributes.Delimiter = ';;'
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowFooter]
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        TitleAlignment = taCenter
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = [fsBold]
        TitleLines = 2
        TitleButtons = False
      end
    end
    object tsAcuerdosIncumplidosInd: TTabSheet
      Caption = 'Indicadores Acuerdos Incumplidos'
      ImageIndex = 4
      object pnlIndFiltro: TPanel
        Left = 0
        Top = 0
        Width = 976
        Height = 49
        Align = alTop
        ParentColor = True
        TabOrder = 0
        object lblIndMsg: TLabel
          Left = 698
          Top = 24
          Width = 265
          Height = 13
          Caption = 'NO EXISTEN COMPROMISOS REGISTRADOS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object pnIndGestor: TPanel
          Left = 465
          Top = 1
          Width = 232
          Height = 47
          Align = alLeft
          BevelOuter = bvNone
          ParentColor = True
          TabOrder = 0
          object Label3: TLabel
            Left = 6
            Top = 4
            Width = 31
            Height = 13
            Caption = 'Gestor'
          end
          object dblcGestor: TwwDBLookupComboDlg
            Left = 4
            Top = 19
            Width = 221
            Height = 21
            Cursor = crHandPoint
            GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
            GridColor = clWhite
            GridTitleAlignment = taLeftJustify
            Caption = 'Buscar Colegio'
            MaxWidth = 0
            MaxHeight = 209
            Style = csDropDownList
            MaxLength = 5
            TabOrder = 0
            AutoDropDown = False
            ShowButton = True
            AllowClearKey = True
            OnChange = dblcGestorChange
          end
        end
        object pnlIndTipoCartera: TPanel
          Left = 1
          Top = 1
          Width = 232
          Height = 47
          Align = alLeft
          BevelOuter = bvNone
          ParentColor = True
          TabOrder = 1
          object Label4: TLabel
            Left = 6
            Top = 4
            Width = 73
            Height = 13
            Caption = 'Tipo de Cartera'
          end
          object dblcTipoCartera: TwwDBLookupComboDlg
            Left = 4
            Top = 19
            Width = 221
            Height = 21
            Cursor = crHandPoint
            GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
            GridColor = clWhite
            GridTitleAlignment = taLeftJustify
            Caption = 'Buscar'
            MaxWidth = 0
            MaxHeight = 209
            Style = csDropDownList
            MaxLength = 5
            TabOrder = 0
            AutoDropDown = False
            ShowButton = True
            AllowClearKey = True
            OnChange = dblcTipoCarteraChange
          end
        end
        object pnlIndOrigenGestor: TPanel
          Left = 233
          Top = 1
          Width = 232
          Height = 47
          Align = alLeft
          BevelOuter = bvNone
          ParentColor = True
          TabOrder = 2
          object Label2: TLabel
            Left = 7
            Top = 4
            Width = 82
            Height = 13
            Caption = 'Origen del Gestor'
          end
          object dblcOrigenGestor: TwwDBLookupComboDlg
            Left = 4
            Top = 19
            Width = 221
            Height = 21
            Cursor = crHandPoint
            GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
            GridColor = clWhite
            GridTitleAlignment = taLeftJustify
            Caption = 'Buscar'
            MaxWidth = 0
            MaxHeight = 209
            Style = csDropDownList
            MaxLength = 5
            TabOrder = 0
            AutoDropDown = False
            ShowButton = True
            AllowClearKey = True
            OnChange = dblcOrigenGestorChange
          end
        end
      end
      object Panel1: TPanel
        Left = 0
        Top = 49
        Width = 976
        Height = 483
        Align = alClient
        Color = 16514043
        TabOrder = 1
        object lblIndAsignados: TLabel
          Left = 830
          Top = 16
          Width = 113
          Height = 16
          Caption = 'lblIndAsignados'
          Color = clWindow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object lblIndGestionados: TLabel
          Left = 830
          Top = 36
          Width = 127
          Height = 16
          Caption = 'lblIndGestionados'
          Color = clWindow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object lblIndCompromisoPago: TLabel
          Left = 830
          Top = 56
          Width = 127
          Height = 16
          Caption = 'lblIndGestionados'
          Color = clWindow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object Label5: TLabel
          Left = 629
          Top = 16
          Width = 198
          Height = 16
          Caption = 'Nro de Cuentas Asignadas : '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label6: TLabel
          Left = 615
          Top = 36
          Width = 212
          Height = 16
          Caption = 'Nro de Cuentas Gestionadas : '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label7: TLabel
          Left = 605
          Top = 56
          Width = 222
          Height = 16
          Caption = 'Nro de Compromisos de Pago : '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Shape4: TShape
          Left = 872
          Top = 82
          Width = 97
          Height = 71
          Brush.Color = 16514043
        end
        object Shape5: TShape
          Left = 872
          Top = 152
          Width = 97
          Height = 57
          Brush.Color = 16514043
        end
        object Shape6: TShape
          Left = 872
          Top = 208
          Width = 97
          Height = 57
          Brush.Color = 16514043
        end
        object Shape7: TShape
          Left = 776
          Top = 82
          Width = 97
          Height = 71
          Brush.Color = 16514043
        end
        object Shape8: TShape
          Left = 776
          Top = 152
          Width = 97
          Height = 57
          Brush.Color = 16514043
        end
        object Shape9: TShape
          Left = 776
          Top = 208
          Width = 97
          Height = 57
          Brush.Color = 16514043
        end
        object Shape16: TShape
          Left = 584
          Top = 82
          Width = 97
          Height = 71
          Brush.Color = 4227072
        end
        object Shape17: TShape
          Left = 584
          Top = 152
          Width = 97
          Height = 57
          Brush.Color = 16514043
        end
        object Shape18: TShape
          Left = 584
          Top = 208
          Width = 97
          Height = 57
          Brush.Color = 16514043
        end
        object Shape19: TShape
          Left = 680
          Top = 208
          Width = 97
          Height = 57
          Brush.Color = 16514043
        end
        object Shape20: TShape
          Left = 680
          Top = 152
          Width = 97
          Height = 57
          Brush.Color = 16514043
        end
        object Shape21: TShape
          Left = 680
          Top = 82
          Width = 97
          Height = 71
          Brush.Color = 16514043
        end
        object Shape22: TShape
          Left = 392
          Top = 82
          Width = 97
          Height = 71
          Brush.Color = 12189695
        end
        object Shape23: TShape
          Left = 392
          Top = 152
          Width = 97
          Height = 57
          Brush.Color = 16514043
        end
        object Shape24: TShape
          Left = 392
          Top = 208
          Width = 97
          Height = 57
          Brush.Color = 16514043
        end
        object Shape25: TShape
          Left = 488
          Top = 208
          Width = 97
          Height = 57
          Brush.Color = 16514043
        end
        object Shape26: TShape
          Left = 488
          Top = 152
          Width = 97
          Height = 57
          Brush.Color = 16514043
        end
        object Shape27: TShape
          Left = 488
          Top = 82
          Width = 97
          Height = 71
          Brush.Color = 16744448
        end
        object Shape29: TShape
          Left = 200
          Top = 152
          Width = 97
          Height = 57
          Brush.Color = 16514043
        end
        object Shape30: TShape
          Left = 200
          Top = 208
          Width = 97
          Height = 57
          Brush.Color = 16514043
        end
        object Shape31: TShape
          Left = 296
          Top = 208
          Width = 97
          Height = 57
          Brush.Color = 16514043
        end
        object Shape32: TShape
          Left = 296
          Top = 152
          Width = 97
          Height = 57
          Brush.Color = 16514043
        end
        object Shape33: TShape
          Left = 296
          Top = 82
          Width = 97
          Height = 71
          Brush.Color = 4342527
        end
        object Shape35: TShape
          Left = 8
          Top = 152
          Width = 81
          Height = 113
          Brush.Color = 16514043
        end
        object Shape38: TShape
          Left = 88
          Top = 152
          Width = 113
          Height = 113
          Brush.Color = 16514043
        end
        object Label8: TLabel
          Left = 892
          Top = 103
          Width = 58
          Height = 26
          Alignment = taCenter
          Caption = 'CUOTA'#13#10'PACTADA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label9: TLabel
          Left = 794
          Top = 90
          Width = 61
          Height = 52
          Alignment = taCenter
          Caption = 'TOTAL'#13#10'ACUERDO'#13#10'COBRADO'#13#10'S/.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label10: TLabel
          Left = 687
          Top = 90
          Width = 82
          Height = 52
          Alignment = taCenter
          Caption = 'TOTAL'#13#10'ACUERDO'#13#10'POR COBRAR'#13#10'S/.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label11: TLabel
          Left = 596
          Top = 110
          Width = 73
          Height = 13
          Alignment = taCenter
          Caption = 'CUMPLIDOS'
          Color = 4227072
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindow
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object Label15: TLabel
          Left = 302
          Top = 110
          Width = 86
          Height = 13
          Alignment = taCenter
          Caption = 'INCUMPLIDOS'
          Color = 4342527
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindow
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object Label16: TLabel
          Left = 406
          Top = 90
          Width = 66
          Height = 39
          Alignment = taCenter
          Caption = 'MUY'#13#10'PROXIMOS'#13#10'A VENCER'
          Color = 12189695
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object Label17: TLabel
          Left = 505
          Top = 97
          Width = 66
          Height = 26
          Alignment = taCenter
          Caption = 'PROXIMOS'#13#10'A VENCER'
          Color = 16744448
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindow
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object Label18: TLabel
          Left = 218
          Top = 175
          Width = 64
          Height = 13
          Alignment = taCenter
          Caption = 'CANTIDAD'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label19: TLabel
          Left = 246
          Top = 229
          Width = 10
          Height = 13
          Alignment = taCenter
          Caption = '%'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label20: TLabel
          Left = 25
          Top = 200
          Width = 44
          Height = 13
          Alignment = taCenter
          Caption = 'TODOS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label21: TLabel
          Left = 100
          Top = 192
          Width = 93
          Height = 26
          Alignment = taCenter
          Caption = 'SOBRE LOS'#13#10'COMPROMISOS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblIncCant: TLabel
          Left = 311
          Top = 175
          Width = 64
          Height = 13
          Alignment = taCenter
          AutoSize = False
          Caption = 'CANTIDAD'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblIncProxVencCant: TLabel
          Left = 407
          Top = 175
          Width = 64
          Height = 13
          Alignment = taCenter
          AutoSize = False
          Caption = 'CANTIDAD'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblIncPorVencerCant: TLabel
          Left = 502
          Top = 175
          Width = 64
          Height = 13
          Alignment = taCenter
          AutoSize = False
          Caption = 'CANTIDAD'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblIncCumpCant: TLabel
          Left = 598
          Top = 175
          Width = 64
          Height = 13
          Alignment = taCenter
          AutoSize = False
          Caption = 'CANTIDAD'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblIncTotAcuXCobCant: TLabel
          Left = 694
          Top = 175
          Width = 64
          Height = 13
          Alignment = taCenter
          AutoSize = False
          Caption = 'CANTIDAD'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblIncTotAcuCobCant: TLabel
          Left = 790
          Top = 175
          Width = 64
          Height = 13
          Alignment = taCenter
          AutoSize = False
          Caption = 'CANTIDAD'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblIncCuoPacCant: TLabel
          Left = 886
          Top = 175
          Width = 64
          Height = 13
          Alignment = taCenter
          AutoSize = False
          Caption = 'CANTIDAD'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblIncCuoPacPorc: TLabel
          Left = 886
          Top = 229
          Width = 64
          Height = 13
          Alignment = taCenter
          AutoSize = False
          Caption = 'CANTIDAD'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblIncTotAcuCobPorc: TLabel
          Left = 784
          Top = 229
          Width = 81
          Height = 13
          Alignment = taCenter
          AutoSize = False
          Caption = 'CANTIDAD %%%'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblIncTotAcuXCobPorc: TLabel
          Left = 694
          Top = 229
          Width = 64
          Height = 13
          Alignment = taCenter
          AutoSize = False
          Caption = 'CANTIDAD'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblIncCumpPorc: TLabel
          Left = 598
          Top = 229
          Width = 64
          Height = 13
          Alignment = taCenter
          AutoSize = False
          Caption = 'CANTIDAD'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblIncPorVencerPorc: TLabel
          Left = 502
          Top = 229
          Width = 64
          Height = 13
          Alignment = taCenter
          AutoSize = False
          Caption = 'CANTIDAD'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblIncProxVencPorc: TLabel
          Left = 407
          Top = 229
          Width = 64
          Height = 13
          Alignment = taCenter
          AutoSize = False
          Caption = 'CANTIDAD'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblIncPorc: TLabel
          Left = 311
          Top = 229
          Width = 64
          Height = 13
          Alignment = taCenter
          AutoSize = False
          Caption = 'CANTIDAD'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label22: TLabel
          Left = 393
          Top = 135
          Width = 94
          Height = 13
          Alignment = taCenter
          Caption = 'MENOS DE 4 DIAS'
          Color = 12189695
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object Label23: TLabel
          Left = 499
          Top = 130
          Width = 70
          Height = 13
          Alignment = taCenter
          Caption = '4 DIAS A MAS'
          Color = 16744448
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindow
          Font.Height = -8
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object dbgIndAcuerdosIncumplidos: TwwDBGrid
          Left = 17
          Top = 281
          Width = 352
          Height = 168
          DisableThemesInTitle = False
          IniAttributes.Delimiter = ';;'
          TitleColor = clBtnFace
          FixedCols = 0
          ShowHorzScrollBar = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowFooter]
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
          TitleAlignment = taCenter
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = [fsBold]
          TitleLines = 2
          TitleButtons = False
          Visible = False
        end
      end
    end
  end
  object pnlCab: TPanel
    Left = 0
    Top = 0
    Width = 984
    Height = 36
    Align = alTop
    BevelOuter = bvNone
    ParentColor = True
    TabOrder = 2
    object Label1: TLabel
      Left = 12
      Top = 10
      Width = 135
      Height = 16
      Caption = 'Periodo de Gesti'#243'n'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object cboPeriodoCartera: TwwDBLookupCombo
      Left = 156
      Top = 4
      Width = 90
      Height = 25
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      DropDownAlignment = taLeftJustify
      LookupTable = DM1.cdsQry3
      Options = [loColLines, loRowLines]
      Style = csDropDownList
      ParentFont = False
      TabOrder = 0
      AutoDropDown = False
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      OnChange = cboPeriodoCarteraChange
    end
  end
end
