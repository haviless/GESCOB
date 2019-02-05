object FrmImportarGestionesExt: TFrmImportarGestionesExt
  Left = 100
  Top = 100
  Width = 939
  Height = 518
  Caption = 'Importaci'#243'n de Gestiones Externas'
  Color = 10207162
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object gbx01: TGroupBox
    Left = 0
    Top = 0
    Width = 923
    Height = 73
    Align = alTop
    Caption = 'Cargar datos'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object Label2: TLabel
      Left = 9
      Top = 13
      Width = 53
      Height = 16
      Caption = 'Archivo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 351
      Top = 13
      Width = 159
      Height = 16
      Caption = 'Periodo de Asignaci'#243'n'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblMensaje: TLabel
      Left = 632
      Top = 26
      Width = 80
      Height = 16
      Caption = '0 Registros'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edArchivo: TEdit
      Left = 7
      Top = 28
      Width = 300
      Height = 21
      BiDiMode = bdLeftToRight
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 0
      OnChange = edArchivoChange
    end
    object btnArchivo: TButton
      Left = 307
      Top = 28
      Width = 29
      Height = 22
      Caption = 'xls'
      TabOrder = 1
      OnClick = btnArchivoClick
    end
    object cboPeriodoAsignacion: TwwDBLookupCombo
      Left = 352
      Top = 28
      Width = 159
      Height = 21
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      DropDownAlignment = taLeftJustify
      Options = [loColLines, loRowLines]
      Style = csDropDownList
      ParentFont = False
      TabOrder = 2
      AutoDropDown = False
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      OnChange = cboPeriodoAsignacionChange
    end
    object btnValidarDatos: TButton
      Left = 524
      Top = 16
      Width = 96
      Height = 39
      Caption = 'Cargar datos'
      TabOrder = 3
      OnClick = btnValidarDatosClick
    end
  end
  object gbx02: TGroupBox
    Left = 0
    Top = 73
    Width = 923
    Height = 292
    Align = alClient
    Caption = 'Inconsistencias'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object Panel2: TPanel
      Left = 2
      Top = 15
      Width = 919
      Height = 275
      Align = alClient
      BevelOuter = bvNone
      BorderWidth = 3
      ParentColor = True
      TabOrder = 0
      DesignSize = (
        919
        275)
      object lstValida: TListView
        Left = 3
        Top = 3
        Width = 913
        Height = 233
        Anchors = [akLeft, akTop, akRight, akBottom]
        Columns = <
          item
            Width = 5
          end
          item
            Alignment = taRightJustify
            Caption = 'NRO REGISTRO'
          end
          item
            Caption = 'MODULAR'
            Width = 80
          end
          item
            Caption = 'GESTOR'
            Width = 100
          end
          item
            Alignment = taCenter
            Caption = 'CODIGO GESTION'
            Width = 80
          end
          item
            Alignment = taCenter
            Caption = 'FECHA GESTION'
            Width = 80
          end
          item
            Caption = 'GESTION'
            Width = 200
          end
          item
            Caption = 'INCONSISTENCIA'
            Width = 150
          end>
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        GridLines = True
        ParentFont = False
        TabOrder = 0
        ViewStyle = vsReport
      end
      object btnExportar: TBitBtn
        Left = 770
        Top = 241
        Width = 146
        Height = 32
        Anchors = [akRight, akBottom]
        Caption = 'Exportar Inconsistencias'
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
    end
  end
  object gbx03: TGroupBox
    Left = 0
    Top = 365
    Width = 923
    Height = 74
    Align = alBottom
    Caption = 'Procesar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    object btnProcesar: TBitBtn
      Left = 221
      Top = 19
      Width = 345
      Height = 42
      Caption = 'Procesar obviando (0) Inconsistencias'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = btnProcesarClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00370777033333
        3330337F3F7F33333F3787070003333707303F737773333373F7007703333330
        700077337F3333373777887007333337007733F773F333337733700070333333
        077037773733333F7F37703707333300080737F373333377737F003333333307
        78087733FFF3337FFF7F33300033330008073F3777F33F777F73073070370733
        078073F7F7FF73F37FF7700070007037007837773777F73377FF007777700730
        70007733FFF77F37377707700077033707307F37773F7FFF7337080777070003
        3330737F3F7F777F333778080707770333333F7F737F3F7F3333080787070003
        33337F73FF737773333307800077033333337337773373333333}
      NumGlyphs = 2
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 439
    Width = 923
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    ParentColor = True
    TabOrder = 3
    DesignSize = (
      923
      41)
    object btnSalir: TBitBtn
      Left = 819
      Top = 5
      Width = 100
      Height = 32
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
  object odlgArchivo: TOpenDialog
    DefaultExt = '*.xls*'
    Filter = 'Excel(*.xlsx)|*.xlsx|Excel(*.xls)|*.xls'
    Left = 192
    Top = 24
  end
  object xlsArchivo: TExcelApplication
    AutoConnect = False
    ConnectKind = ckRunningOrNew
    AutoQuit = False
    Left = 160
    Top = 24
  end
  object sdInconsistencias: TSaveDialog
    DefaultExt = '*.xls*'
    FileName = 'Inconsistencias.xlsx'
    Left = 224
    Top = 24
  end
end
