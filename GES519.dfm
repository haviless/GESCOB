object FCompararTrasladosTodasGes: TFCompararTrasladosTodasGes
  Left = 247
  Top = 133
  Width = 727
  Height = 471
  Caption = 'Comparar Traslados - Todas las Gestiones'
  Color = 10207162
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
  object gbFiltro: TGroupBox
    Left = 0
    Top = 0
    Width = 719
    Height = 113
    Align = alTop
    TabOrder = 0
    object Label2: TLabel
      Left = 14
      Top = 21
      Width = 127
      Height = 13
      Caption = 'Periodo de Cartera Actual :'
    end
    object Label1: TLabel
      Left = 8
      Top = 53
      Width = 133
      Height = 13
      Caption = 'Periodo de Cartera Anterior :'
    end
    object Label3: TLabel
      Left = 275
      Top = 22
      Width = 93
      Height = 13
      Caption = 'Calificacion Actual :'
    end
    object lblCalificaionAnt: TLabel
      Left = 271
      Top = 54
      Width = 99
      Height = 13
      Caption = 'Calificacion Anterior :'
    end
    object lblDepartamento: TLabel
      Left = 296
      Top = 54
      Width = 73
      Height = 13
      Caption = 'Departamento :'
    end
    object edPeriodoActual: TEdit
      Left = 147
      Top = 17
      Width = 121
      Height = 21
      ReadOnly = True
      TabOrder = 0
      Text = 'yyyymm'
    end
    object edPeriodoAnterior: TEdit
      Left = 147
      Top = 49
      Width = 121
      Height = 21
      ReadOnly = True
      TabOrder = 1
      Text = 'yyyymm'
    end
    object edCalificacion: TEdit
      Left = 372
      Top = 18
      Width = 46
      Height = 21
      ReadOnly = True
      TabOrder = 2
      Text = 'A'
    end
    object edCalificacionDescripcion: TEdit
      Left = 420
      Top = 18
      Width = 118
      Height = 21
      ReadOnly = True
      TabOrder = 3
      Text = 'A'
    end
    object edTituloResumen: TEdit
      Left = 147
      Top = 82
      Width = 390
      Height = 21
      ReadOnly = True
      TabOrder = 4
      Text = 'Titulo del Resumen'
    end
    object edCalificacionAnt: TEdit
      Left = 371
      Top = 50
      Width = 46
      Height = 21
      ReadOnly = True
      TabOrder = 5
      Text = 'A'
    end
    object edCalificacionDescripcionAnt: TEdit
      Left = 419
      Top = 50
      Width = 118
      Height = 21
      ReadOnly = True
      TabOrder = 6
      Text = 'A'
    end
    object edDpto: TEdit
      Left = 372
      Top = 50
      Width = 46
      Height = 21
      ReadOnly = True
      TabOrder = 7
      Text = '13'
    end
    object edDptoDes: TEdit
      Left = 420
      Top = 50
      Width = 118
      Height = 21
      ReadOnly = True
      TabOrder = 8
      Text = 'La Libertad'
    end
  end
  object pnlControles: TPanel
    Left = 0
    Top = 394
    Width = 719
    Height = 43
    Align = alBottom
    ParentColor = True
    TabOrder = 1
    DesignSize = (
      719
      43)
    object btnImprimir: TBitBtn
      Left = 504
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
      TabOrder = 0
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
      Left = 612
      Top = 6
      Width = 100
      Height = 32
      Hint = 'Salir'
      Anchors = [akTop, akRight]
      Caption = '&Salir'
      TabOrder = 1
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
    object btnExportar: TBitBtn
      Left = 400
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
      TabOrder = 2
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
  object dbgResultados01: TwwDBGrid
    Left = 0
    Top = 113
    Width = 719
    Height = 281
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
    TabOrder = 2
    TitleAlignment = taCenter
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
    TitleLines = 2
    TitleButtons = False
  end
  object dbpReporte: TppDBPipeline
    DataSource = DM1.dsqry5
    AutoCreateFields = False
    UserName = 'dbpReporte'
    Left = 117
    Top = 200
  end
  object desReporte: TppDesigner
    Caption = 'ReportBuilder'
    DataSettings.SessionType = 'BDESession'
    DataSettings.AllowEditSQL = False
    DataSettings.CollationType = ctASCII
    DataSettings.DatabaseType = dtParadox
    DataSettings.IsCaseSensitive = True
    DataSettings.SQLType = sqBDELocal
    Position = poScreenCenter
    Report = repReporte
    IniStorageType = 'IniFile'
    IniStorageName = '($WINSYS)\RBuilder.ini'
    WindowHeight = 400
    WindowLeft = 100
    WindowTop = 50
    WindowWidth = 600
    Left = 119
    Top = 144
  end
  object repReporte: TppReport
    AutoStop = False
    DataPipeline = dbpReporte
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'Letter'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 216000
    PrinterSetup.mmPaperWidth = 279000
    PrinterSetup.PaperSize = 1
    Template.FileName = 
      'D:\Desarrollo DM\Gestion de Cobranza\HPC_201206_GESCOB\Reportes\' +
      'FCompararTrasladosGesTodos.rtm'
    Units = utMillimeters
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    PreviewFormSettings.WindowState = wsMaximized
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 117
    Top = 256
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'dbpReporte'
    object ppHeaderBand41: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 34925
      mmPrintPosition = 0
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
        mmLeft = 231511
        mmTop = 265
        mmWidth = 10054
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
        mmLeft = 231511
        mmTop = 4498
        mmWidth = 11377
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
        mmLeft = 231511
        mmTop = 8731
        mmWidth = 11377
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
        mmLeft = 245534
        mmTop = 265
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
        mmLeft = 245269
        mmTop = 4498
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
        mmLeft = 245798
        mmTop = 8731
        mmWidth = 1323
        BandType = 0
      end
      object ppLblTit: TppLabel
        UserName = 'LblTit'
        AutoSize = False
        Caption = 'FICHA DE GESTIONES EN LOS PERIODOS DEL 201109 AL 201110'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5027
        mmLeft = 0
        mmTop = 17463
        mmWidth = 266171
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
        mmLeft = 243153
        mmTop = 8731
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
        mmLeft = 243153
        mmTop = 4498
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
        mmLeft = 243153
        mmTop = 265
        mmWidth = 1588
        BandType = 0
      end
      object ppShape7: TppShape
        UserName = 'Shape7'
        mmHeight = 5556
        mmLeft = 0
        mmTop = 29369
        mmWidth = 266171
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Caption = 'Detalles de Gesti'#243'n '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3323
        mmLeft = 117740
        mmTop = 30692
        mmWidth = 26882
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Caption = 'Gestor'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3323
        mmLeft = 97102
        mmTop = 30692
        mmWidth = 9059
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        Caption = 'Fecha '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3323
        mmLeft = 79375
        mmTop = 30692
        mmWidth = 8911
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        Caption = 'Cod Mod.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3323
        mmLeft = 1588
        mmTop = 30163
        mmWidth = 12806
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        Caption = 'Asociado'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3323
        mmLeft = 26723
        mmTop = 30427
        mmWidth = 12573
        BandType = 0
      end
      object ppLblSubTit: TppLabel
        UserName = 'LblTit1'
        AutoSize = False
        Caption = 'FICHA DE GESTIONES EN LOS PERIODOS DEL 201109 AL 201110'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4064
        mmLeft = 0
        mmTop = 22754
        mmWidth = 266171
        BandType = 0
      end
    end
    object ppDetailBand44: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 4233
      mmPrintPosition = 0
      object ppShape4: TppShape
        UserName = 'Shape4'
        mmHeight = 4233
        mmLeft = 19844
        mmTop = 0
        mmWidth = 56621
        BandType = 4
      end
      object ppShape8: TppShape
        UserName = 'Shape8'
        mmHeight = 4233
        mmLeft = 126471
        mmTop = 0
        mmWidth = 38629
        BandType = 4
      end
      object ppShape3: TppShape
        UserName = 'Shape3'
        mmHeight = 4233
        mmLeft = 76200
        mmTop = 0
        mmWidth = 189442
        BandType = 4
      end
      object ppShape2: TppShape
        UserName = 'Shape2'
        mmHeight = 4233
        mmLeft = 96044
        mmTop = 0
        mmWidth = 20638
        BandType = 4
      end
      object ppShape1: TppShape
        UserName = 'Shape1'
        mmHeight = 4233
        mmLeft = 0
        mmTop = 0
        mmWidth = 20373
        BandType = 4
      end
      object ppDBText340: TppDBText
        UserName = 'DBText17'
        DataField = 'FECHA'
        DataPipeline = dbpReporte
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpReporte'
        mmHeight = 2381
        mmLeft = 79375
        mmTop = 529
        mmWidth = 15346
        BandType = 4
      end
      object ppDBText342: TppDBText
        UserName = 'DBText19'
        DataField = 'GESTOR'
        DataPipeline = dbpReporte
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpReporte'
        mmHeight = 2381
        mmLeft = 97102
        mmTop = 529
        mmWidth = 18256
        BandType = 4
      end
      object ppDBText343: TppDBText
        UserName = 'DBText20'
        DataField = 'DETOBS'
        DataPipeline = dbpReporte
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpReporte'
        mmHeight = 2381
        mmLeft = 156104
        mmTop = 529
        mmWidth = 107950
        BandType = 4
      end
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        DataField = 'RES_GESTION'
        DataPipeline = dbpReporte
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpReporte'
        mmHeight = 2381
        mmLeft = 127000
        mmTop = 529
        mmWidth = 27252
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        DataField = 'COD_GESTION'
        DataPipeline = dbpReporte
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpReporte'
        mmHeight = 2498
        mmLeft = 117740
        mmTop = 529
        mmWidth = 8202
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        DataField = 'ASOAPENOM'
        DataPipeline = dbpReporte
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpReporte'
        mmHeight = 2381
        mmLeft = 22490
        mmTop = 529
        mmWidth = 47890
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        DataField = 'ASOCODMOD'
        DataPipeline = dbpReporte
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpReporte'
        mmHeight = 2381
        mmLeft = 1058
        mmTop = 529
        mmWidth = 16404
        BandType = 4
      end
    end
    object ppFooterBand36: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 6615
      mmPrintPosition = 0
      object ppLblUser: TppLabel
        UserName = 'LblUser'
        AutoSize = False
        Caption = 'Emitido Por :  Juver De la Cruz'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 1058
        mmTop = 1323
        mmWidth = 96044
        BandType = 8
      end
    end
    object ppSummaryBand41: TppSummaryBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppParameterList1: TppParameterList
    end
  end
end
