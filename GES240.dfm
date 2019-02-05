object fDetRegG: TfDetRegG
  Left = 351
  Top = 235
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Detalle De Registro De Pagos'
  ClientHeight = 229
  ClientWidth = 628
  Color = 10207162
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object dtgDetReg: TwwDBGrid
    Left = 4
    Top = 7
    Width = 620
    Height = 178
    DisableThemesInTitle = False
    Selected.Strings = (
      'CRECUOTA'#9'5'#9'N'#176'~Cuota'
      'CREFVEN'#9'10'#9'Fecha De~Vencimiento'
      'CREFPAG'#9'10'#9'Fecha~De Pago'
      'FORPAGABR'#9'10'#9'Forma~De Pago'
      'CREDOCPAG'#9'12'#9'Documento~De Pago'
      'PAGOS'#9'10'#9'Monto~Pagado'
      'DEVOL'#9'10'#9'Devoluci'#243'n'
      'FREG'#9'10'#9'Fecha De~Registro'#9'F')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    DataSource = DM1.dsCEdu
    Font.Charset = ANSI_CHARSET
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
    TitleLines = 2
    TitleButtons = False
  end
  object BitSalir: TBitBtn
    Left = 536
    Top = 194
    Width = 88
    Height = 27
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
  object BitPrint: TBitBtn
    Left = 299
    Top = 194
    Width = 100
    Height = 27
    Hint = 'Imprimir'
    Caption = 'Detalles'
    TabOrder = 2
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
  object BitRepTel: TBitBtn
    Left = 184
    Top = 194
    Width = 100
    Height = 27
    Hint = 'Imprimir'
    Caption = 'TeleAhorros'
    TabOrder = 3
    OnClick = BitRepTelClick
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
  object BtnExcel: TBitBtn
    Left = 413
    Top = 194
    Width = 81
    Height = 27
    Caption = 'Excel'
    TabOrder = 4
    OnClick = BtnExcelClick
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      1800000000000003000000000000000000000000000000000000DFDFDFDFDFDF
      DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF
      DFDFDFDFDFDFDFDFDFDFDFDFDF00000000000000000000000000000000000000
      00003F3F007F7F007F7F007F7F00505050BFBFBFDFDFDFDFDFDFDFDFDFAFAFAF
      0000000000000000000000000000003F3F00FFFF3FFFFF7FFFFF005F5F208080
      80808080BFBFBFDFDFDFDFDFDFDFDFDFAFAFAF0000000000000000003F3F00FF
      FF3FFFFFBFFFFF005F5F20808080808080808080909090BFBFBFDFDFDFDFDFDF
      DFDFDFAFAFAF0000003F3F00FFFF3FFFFFBFFFFF003F3F008080808080808080
      80808080808080808080DFDFDFDFDFDFDFDFDF9F9F9F3F3F00FFFF3FFFFFBFFF
      FF003F3F00000000AFAFAFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF
      9F9F9F3F3F00FFFF3FFFFFBFFFFF003F3F00000000000000000000AFAFAFDFDF
      DFDFDFDFDFDFDFDFDFDFDFDFDF9F9F9F3F3F00FFFF3FFFFFBFFFFF003F3F0000
      0000000000000000000000000000AFAFAFDFDFDFDFDFDFDFDFDF9F9F9F3F3F00
      FFFF00FFFF7FFFFF003F3F009F9F9F9F9F9F0000000000000000000000000000
      00AFAFAFDFDFDFDFDFDF0000000000000000000000000000009F9F9FDFDFDFDF
      DFDF9F9F9F000000000000000000000000000000DFDFDFDFDFDFDFDFDFDFDFDF
      DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF
      DFDFDFDFDFDFDFDFDFDF7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
      7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7FCFAFAFDFDFDF
      CFAFAFCFAFAFDFDFDFBF7F7FCFAFAFCFAFAFCFAFAFCFAFAFCFAFAFBF7F7FDFDF
      DFCFAFAFCFAFAFDFDFDFAF6F6FDFDFDFAF6F6FAF6F6FAF6F6FDFDFDFAF6F6FAF
      6F6FAF6F6FCFAFAFBF9F9FAF6F6FAF6F6FAF6F6FAF6F6FDFDFDFAF6F6FAF6F6F
      9F3F3FBF9F9FDFDFDFA06060BF9F9FBF9F9FA06060BF9F9FBF9F9FBF9F9FA060
      60903030903030BF9F9FBF9F9FDFDFDFBF9F9FBF9F9FDFDFDFDFDFDFDFDFDFDF
      DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFBF9F9FBF9F9FDFDFDF}
  end
  object ppDBEstCta: TppDBPipeline
    DataSource = DM1.dsCViv
    UserName = 'DBPipEstCta'
    Left = 8
    Top = 189
  end
  object RepDetTel: TppReport
    AutoStop = False
    DataPipeline = DbDetTel
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297127
    PrinterSetup.mmPaperWidth = 210079
    PrinterSetup.PaperSize = 9
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    PreviewFormSettings.WindowState = wsMaximized
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 496
    Top = 64
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'DbDetTel'
    object ppHeaderBand39: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 45508
      mmPrintPosition = 0
      object ppLabel796: TppLabel
        UserName = 'Label796'
        AutoSize = False
        Caption = 'DETALLES DE APLICACION DE DESCUENTOS POR TELEAHORROS'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 12
        Font.Style = [fsBold, fsUnderline]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4995
        mmLeft = 2117
        mmTop = 14288
        mmWidth = 190765
        BandType = 0
      end
      object ppLabel800: TppLabel
        UserName = 'Label800'
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
      object ppLabel801: TppLabel
        UserName = 'Label801'
        Caption = 'Sistema De Creditos y Cobranzas'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 4498
        mmWidth = 43656
        BandType = 0
      end
      object ppLabel802: TppLabel
        UserName = 'Label802'
        Caption = 'Fecha   :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 163513
        mmTop = 0
        mmWidth = 11377
        BandType = 0
      end
      object ppLabel803: TppLabel
        UserName = 'Label803'
        Caption = 'Hora     :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 163513
        mmTop = 4498
        mmWidth = 11377
        BandType = 0
      end
      object ppLabel804: TppLabel
        UserName = 'Label804'
        Caption = 'Pag      :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 163777
        mmTop = 8996
        mmWidth = 11113
        BandType = 0
      end
      object ppSystemVariable80: TppSystemVariable
        UserName = 'SystemVariable80'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 177007
        mmTop = 265
        mmWidth = 16140
        BandType = 0
      end
      object ppSystemVariable81: TppSystemVariable
        UserName = 'SystemVariable81'
        VarType = vtTime
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 176742
        mmTop = 5027
        mmWidth = 16404
        BandType = 0
      end
      object ppSystemVariable82: TppSystemVariable
        UserName = 'SystemVariable102'
        VarType = vtPageNo
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 177536
        mmTop = 9260
        mmWidth = 1323
        BandType = 0
      end
      object ppLabel805: TppLabel
        UserName = 'Label805'
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 175155
        mmTop = 8996
        mmWidth = 1588
        BandType = 0
      end
      object ppLabel806: TppLabel
        UserName = 'Label2402'
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 175155
        mmTop = 4498
        mmWidth = 1588
        BandType = 0
      end
      object ppLabel807: TppLabel
        UserName = 'Label807'
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
      object ppLabel30: TppLabel
        UserName = 'Label30'
        AutoSize = False
        Caption = 'Codigo Modular '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 17463
        mmTop = 24606
        mmWidth = 25400
        BandType = 0
      end
      object ppLblCodMod1: TppLabel
        UserName = 'LblCodMod4'
        AutoSize = False
        Caption = '0123456789'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 46567
        mmTop = 24606
        mmWidth = 20373
        BandType = 0
      end
      object ppLabel52: TppLabel
        UserName = 'Label52'
        AutoSize = False
        Caption = 'Se'#241'or(a)           '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 17463
        mmTop = 29369
        mmWidth = 25929
        BandType = 0
      end
      object pplblNomGen1: TppLabel
        UserName = 'lblNomGen2'
        AutoSize = False
        Caption = '0123456789'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 46302
        mmTop = 29369
        mmWidth = 73554
        BandType = 0
      end
      object ppLabel60: TppLabel
        UserName = 'Label60'
        AutoSize = False
        Caption = 'Ugel / Use   '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 17463
        mmTop = 34131
        mmWidth = 18256
        BandType = 0
      end
      object pplblUse1: TppLabel
        UserName = 'lblUse1'
        Caption = '0123456789'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 46302
        mmTop = 34396
        mmWidth = 77788
        BandType = 0
      end
      object ppLabel65: TppLabel
        UserName = 'Label65'
        AutoSize = False
        Caption = ': '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 44715
        mmTop = 29369
        mmWidth = 1323
        BandType = 0
      end
      object ppLabel66: TppLabel
        UserName = 'Label66'
        AutoSize = False
        Caption = ': '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 44715
        mmTop = 24606
        mmWidth = 1323
        BandType = 0
      end
      object ppLabel67: TppLabel
        UserName = 'Label67'
        AutoSize = False
        Caption = ': '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 44715
        mmTop = 34396
        mmWidth = 1323
        BandType = 0
      end
      object ppLabel31: TppLabel
        UserName = 'Label602'
        AutoSize = False
        Caption = 'U.Proceso'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 17463
        mmTop = 38894
        mmWidth = 18256
        BandType = 0
      end
      object ppLabel45: TppLabel
        UserName = 'Label45'
        AutoSize = False
        Caption = ': '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 44715
        mmTop = 39158
        mmWidth = 1323
        BandType = 0
      end
      object pplblUpro1: TppLabel
        UserName = 'lblUpro1'
        Caption = '0123456789'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 46302
        mmTop = 39158
        mmWidth = 77788
        BandType = 0
      end
    end
    object ppDetailBand42: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 3704
      mmPrintPosition = 0
      object ppDBText326: TppDBText
        UserName = 'DBText326'
        DataField = 'CRECUOTA'
        DataPipeline = DbDetTel
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DbDetTel'
        mmHeight = 3175
        mmLeft = 132557
        mmTop = 0
        mmWidth = 6085
        BandType = 4
      end
      object ppDBText327: TppDBText
        UserName = 'DBText327'
        DataField = 'CREDID'
        DataPipeline = DbDetTel
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DbDetTel'
        mmHeight = 3175
        mmLeft = 104775
        mmTop = 0
        mmWidth = 26194
        BandType = 4
      end
      object ppDBText328: TppDBText
        UserName = 'DBText328'
        DataField = 'CREFVEN'
        DataPipeline = DbDetTel
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DbDetTel'
        mmHeight = 3175
        mmLeft = 144463
        mmTop = 0
        mmWidth = 16404
        BandType = 4
      end
      object ppDBText329: TppDBText
        UserName = 'DBText329'
        DataField = 'APLTOCOB'
        DataPipeline = DbDetTel
        DisplayFormat = '###,##0.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DbDetTel'
        mmHeight = 3175
        mmLeft = 162984
        mmTop = 0
        mmWidth = 13229
        BandType = 4
      end
      object ppShape17: TppShape
        UserName = 'Shape17'
        Pen.Style = psInsideFrame
        mmHeight = 3969
        mmLeft = 15875
        mmTop = 0
        mmWidth = 265
        BandType = 4
      end
      object ppShape1: TppShape
        UserName = 'Shape1'
        Pen.Style = psInsideFrame
        mmHeight = 3969
        mmLeft = 178330
        mmTop = 0
        mmWidth = 265
        BandType = 4
      end
    end
    object ppFooterBand34: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppGroup48: TppGroup
      BreakName = 'CREFPAG'
      DataPipeline = DbDetTel
      KeepTogether = True
      OutlineSettings.CreateNode = True
      UserName = 'Group48'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'DbDetTel'
      object ppGroupHeaderBand48: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 18256
        mmPrintPosition = 0
        object ppShape2: TppShape
          UserName = 'Shape2'
          mmHeight = 16669
          mmLeft = 15875
          mmTop = 1588
          mmWidth = 162719
          BandType = 3
          GroupNo = 0
        end
        object ppShape13: TppShape
          UserName = 'Shape13'
          mmHeight = 5027
          mmLeft = 104511
          mmTop = 12171
          mmWidth = 73025
          BandType = 3
          GroupNo = 0
        end
        object ppShape12: TppShape
          UserName = 'Shape12'
          mmHeight = 5027
          mmLeft = 15875
          mmTop = 6615
          mmWidth = 58473
          BandType = 3
          GroupNo = 0
        end
        object ppDBText322: TppDBText
          UserName = 'DBText322'
          DataField = 'CREFPAG'
          DataPipeline = DbDetTel
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'DbDetTel'
          mmHeight = 3175
          mmLeft = 17198
          mmTop = 12171
          mmWidth = 19050
          BandType = 3
          GroupNo = 0
        end
        object ppDBText323: TppDBText
          UserName = 'DBText323'
          DataField = 'CREDOCPAG'
          DataPipeline = DbDetTel
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'DbDetTel'
          mmHeight = 3175
          mmLeft = 37306
          mmTop = 12171
          mmWidth = 19050
          BandType = 3
          GroupNo = 0
        end
        object ppDBText325: TppDBText
          UserName = 'DBText325'
          DataField = 'CREMTOCOB'
          DataPipeline = DbDetTel
          DisplayFormat = '###,##0.#0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'DbDetTel'
          mmHeight = 3175
          mmLeft = 57415
          mmTop = 12171
          mmWidth = 15875
          BandType = 3
          GroupNo = 0
        end
        object ppLabel789: TppLabel
          UserName = 'Label789'
          AutoSize = False
          Caption = 'Detalle del Descuento'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 17198
          mmTop = 2117
          mmWidth = 35454
          BandType = 3
          GroupNo = 0
        end
        object ppLabel790: TppLabel
          UserName = 'Label790'
          AutoSize = False
          Caption = 'Fecha'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3440
          mmLeft = 17198
          mmTop = 7673
          mmWidth = 9260
          BandType = 3
          GroupNo = 0
        end
        object ppLabel791: TppLabel
          UserName = 'Label7901'
          AutoSize = False
          Caption = 'Documento'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3440
          mmLeft = 37306
          mmTop = 7673
          mmWidth = 15081
          BandType = 3
          GroupNo = 0
        end
        object ppLabel792: TppLabel
          UserName = 'Label792'
          AutoSize = False
          Caption = 'Importe'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3440
          mmLeft = 59796
          mmTop = 7673
          mmWidth = 13494
          BandType = 3
          GroupNo = 0
        end
        object ppLabel793: TppLabel
          UserName = 'Label793'
          AutoSize = False
          Caption = 'Detalle de Aplicaci'#243'n al Cronograma de Pagos'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 104511
          mmTop = 7673
          mmWidth = 73025
          BandType = 3
          GroupNo = 0
        end
        object ppLabel794: TppLabel
          UserName = 'Label7902'
          AutoSize = False
          Caption = 'N'#176' de Credito'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3440
          mmLeft = 105040
          mmTop = 12965
          mmWidth = 20638
          BandType = 3
          GroupNo = 0
        end
        object ppLabel795: TppLabel
          UserName = 'Label795'
          AutoSize = False
          Caption = 'N'#176'Cuota'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3440
          mmLeft = 129911
          mmTop = 12965
          mmWidth = 10848
          BandType = 3
          GroupNo = 0
        end
        object ppLabel797: TppLabel
          UserName = 'Label797'
          AutoSize = False
          Caption = 'Vencimiento'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3440
          mmLeft = 143934
          mmTop = 12965
          mmWidth = 16669
          BandType = 3
          GroupNo = 0
        end
        object ppLabel798: TppLabel
          UserName = 'Label798'
          AutoSize = False
          Caption = 'Importe'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3440
          mmLeft = 162454
          mmTop = 13229
          mmWidth = 13494
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand48: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 529
        mmPrintPosition = 0
        object ppLine6: TppLine
          UserName = 'Line1'
          Weight = 0.750000000000000000
          mmHeight = 529
          mmLeft = 15875
          mmTop = 0
          mmWidth = 162454
          BandType = 5
          GroupNo = 0
        end
      end
    end
  end
  object DbDetTel: TppDBPipeline
    DataSource = DM1.dsQry
    UserName = 'DbDetTel'
    Left = 496
    Top = 32
    object DbDetTelppField1: TppField
      FieldAlias = 'CREFPAG'
      FieldName = 'CREFPAG'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 34
      Position = 0
    end
    object DbDetTelppField2: TppField
      FieldAlias = 'CREDOCPAG'
      FieldName = 'CREDOCPAG'
      FieldLength = 15
      DisplayWidth = 15
      Position = 1
    end
    object DbDetTelppField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'CREMTOCOB'
      FieldName = 'CREMTOCOB'
      FieldLength = 8
      DataType = dtDouble
      DisplayWidth = 33
      Position = 2
    end
    object DbDetTelppField4: TppField
      FieldAlias = 'FORPAGABR'
      FieldName = 'FORPAGABR'
      FieldLength = 15
      DisplayWidth = 15
      Position = 3
    end
    object DbDetTelppField5: TppField
      FieldAlias = 'CREFVEN'
      FieldName = 'CREFVEN'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 34
      Position = 4
    end
    object DbDetTelppField6: TppField
      Alignment = taRightJustify
      FieldAlias = 'APLTOCOB'
      FieldName = 'APLTOCOB'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 16
      Position = 5
    end
    object DbDetTelppField7: TppField
      FieldAlias = 'CREDID'
      FieldName = 'CREDID'
      FieldLength = 13
      DisplayWidth = 13
      Position = 6
    end
    object DbDetTelppField8: TppField
      Alignment = taRightJustify
      FieldAlias = 'CRECUOTA'
      FieldName = 'CRECUOTA'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 16
      Position = 7
    end
  end
  object ppRepDetPag: TppReport
    AutoStop = False
    DataPipeline = ppDBEstCta
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 210079
    PrinterSetup.mmPaperWidth = 297127
    PrinterSetup.PaperSize = 9
    Template.FileName = 
      'C:\Documents and Settings\rmedina.DERRAMA\Escritorio\COBRANZA_UL' +
      'TIMO\Ultimo CLiente\SRC_200929_COB\RepDetPag.rtm'
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 69
    Top = 191
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBEstCta'
    object ppHeaderBand2: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 48948
      mmPrintPosition = 0
      object ppShape3: TppShape
        UserName = 'Shape3'
        mmHeight = 11377
        mmLeft = 0
        mmTop = 37571
        mmWidth = 268288
        BandType = 0
      end
      object ppLabel53: TppLabel
        UserName = 'Label53'
        Caption = 'N'#176
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 2117
        mmTop = 39423
        mmWidth = 3440
        BandType = 0
      end
      object ppLabel56: TppLabel
        UserName = 'Label56'
        Caption = 'Cuo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 1058
        mmTop = 44715
        mmWidth = 5821
        BandType = 0
      end
      object ppLabel57: TppLabel
        UserName = 'Label57'
        Caption = 'Fecha'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 12171
        mmTop = 39423
        mmWidth = 10583
        BandType = 0
      end
      object ppLabel59: TppLabel
        UserName = 'Label59'
        Caption = 'Venc.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 13229
        mmTop = 44715
        mmWidth = 8202
        BandType = 0
      end
      object ppLabel62: TppLabel
        UserName = 'Label62'
        Caption = 'Del Pago'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 56621
        mmTop = 38894
        mmWidth = 13229
        BandType = 0
      end
      object ppLabel63: TppLabel
        UserName = 'Label63'
        Caption = 'Tipo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 44186
        mmTop = 44715
        mmWidth = 6350
        BandType = 0
      end
      object ppLabel68: TppLabel
        UserName = 'Label68'
        Caption = 'Fecha'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 28840
        mmTop = 44715
        mmWidth = 10583
        BandType = 0
      end
      object ppLabel69: TppLabel
        UserName = 'Label69'
        Caption = 'N'#176' Docum.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 54769
        mmTop = 44715
        mmWidth = 15610
        BandType = 0
      end
      object ppLabel64: TppLabel
        UserName = 'Label64'
        Caption = 'Pagado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 110861
        mmTop = 44715
        mmWidth = 11113
        BandType = 0
      end
      object ppLabel70: TppLabel
        UserName = 'Label70'
        Caption = 'Dev.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 128588
        mmTop = 44715
        mmWidth = 6615
        BandType = 0
      end
      object ppLabel71: TppLabel
        UserName = 'Label701'
        Caption = 'Aplic.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 142875
        mmTop = 44715
        mmWidth = 7938
        BandType = 0
      end
      object ppLabel72: TppLabel
        UserName = 'Label72'
        Caption = 'Importe'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 116946
        mmTop = 38894
        mmWidth = 11113
        BandType = 0
      end
      object ppLabel73: TppLabel
        UserName = 'Label73'
        Caption = 'Reg.Sis'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 74613
        mmTop = 44715
        mmWidth = 11113
        BandType = 0
      end
      object ppLabel74: TppLabel
        UserName = 'Label74'
        Caption = 'Procedencia'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 146579
        mmTop = 38894
        mmWidth = 17727
        BandType = 0
      end
      object ppLabel75: TppLabel
        UserName = 'Label75'
        Caption = 'Cred.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 155311
        mmTop = 44715
        mmWidth = 7673
        BandType = 0
      end
      object ppLabel76: TppLabel
        UserName = 'Label76'
        Caption = 'Cuo.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 165894
        mmTop = 44715
        mmWidth = 6879
        BandType = 0
      end
      object ppLabel77: TppLabel
        UserName = 'Label77'
        Caption = 'Banco'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 179652
        mmTop = 44715
        mmWidth = 10054
        BandType = 0
      end
      object ppLabel78: TppLabel
        UserName = 'Label78'
        Caption = 'Cuenta'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 215107
        mmTop = 44715
        mmWidth = 11113
        BandType = 0
      end
      object ppLabel79: TppLabel
        UserName = 'Label79'
        Caption = 'Usuario'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 247915
        mmTop = 44715
        mmWidth = 11113
        BandType = 0
      end
      object ppLine3: TppLine
        UserName = 'Line3'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 10848
        mmLeft = 8467
        mmTop = 37835
        mmWidth = 794
        BandType = 0
      end
      object ppLine7: TppLine
        UserName = 'Line7'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 10848
        mmLeft = 25929
        mmTop = 37835
        mmWidth = 794
        BandType = 0
      end
      object ppLine8: TppLine
        UserName = 'Line8'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 11113
        mmLeft = 106627
        mmTop = 37571
        mmWidth = 794
        BandType = 0
      end
      object ppLine9: TppLine
        UserName = 'Line9'
        Weight = 0.750000000000000000
        mmHeight = 529
        mmLeft = 26194
        mmTop = 43392
        mmWidth = 82021
        BandType = 0
      end
      object ppLine10: TppLine
        UserName = 'Line10'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 11113
        mmLeft = 136790
        mmTop = 37571
        mmWidth = 794
        BandType = 0
      end
      object ppLine11: TppLine
        UserName = 'Line11'
        Weight = 0.750000000000000000
        mmHeight = 529
        mmLeft = 106627
        mmTop = 43392
        mmWidth = 45508
        BandType = 0
      end
      object ppLine12: TppLine
        UserName = 'Line101'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 11113
        mmLeft = 173832
        mmTop = 37571
        mmWidth = 794
        BandType = 0
      end
      object ppLine14: TppLine
        UserName = 'Line14'
        Weight = 0.750000000000000000
        mmHeight = 529
        mmLeft = 152400
        mmTop = 43392
        mmWidth = 21431
        BandType = 0
      end
      object ppLine17: TppLine
        UserName = 'Line17'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 11113
        mmLeft = 206905
        mmTop = 37571
        mmWidth = 794
        BandType = 0
      end
      object ppLine18: TppLine
        UserName = 'Line18'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 11113
        mmLeft = 243153
        mmTop = 37571
        mmWidth = 794
        BandType = 0
      end
      object ppLabel80: TppLabel
        UserName = 'Label80'
        Caption = 'Derrama Magisterial'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 6615
        mmTop = 0
        mmWidth = 30692
        BandType = 0
      end
      object ppLabel81: TppLabel
        UserName = 'Label806'
        Caption = 'Sistema de Cr'#233'ditos y Cobranzas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3725
        mmLeft = 0
        mmTop = 4763
        mmWidth = 47921
        BandType = 0
      end
      object ppLabel82: TppLabel
        UserName = 'Label82'
        AutoSize = False
        Caption = 'Codigo Modular '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 1323
        mmTop = 21431
        mmWidth = 25400
        BandType = 0
      end
      object ppLblCodMod2: TppLabel
        UserName = 'LblCodMod5'
        AutoSize = False
        Caption = '1032779678'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 30427
        mmTop = 21431
        mmWidth = 20373
        BandType = 0
      end
      object ppLabel84: TppLabel
        UserName = 'Label84'
        AutoSize = False
        Caption = 'Tipo De Cr'#233'dito '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 71173
        mmTop = 26988
        mmWidth = 26988
        BandType = 0
      end
      object ppLabel85: TppLabel
        UserName = 'Label85'
        AutoSize = False
        Caption = 'Se'#241'or(a)           '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 71173
        mmTop = 21431
        mmWidth = 25929
        BandType = 0
      end
      object ppLabel86: TppLabel
        UserName = 'Label86'
        AutoSize = False
        Caption = 'N'#176' Cr'#233'dito         '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 1323
        mmTop = 26723
        mmWidth = 26194
        BandType = 0
      end
      object pplblTipCre2: TppLabel
        UserName = 'lblTipCre2'
        AutoSize = False
        Caption = '24-EXTRAORDINARIO (CONSUMO)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 100277
        mmTop = 26988
        mmWidth = 123296
        BandType = 0
      end
      object pplblNomGen2: TppLabel
        UserName = 'lblNomGen3'
        AutoSize = False
        Caption = 'PULIDO PIMENTEL LUIS'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 100277
        mmTop = 21431
        mmWidth = 73554
        BandType = 0
      end
      object pplblNumPre2: TppLabel
        UserName = 'lblNumPre2'
        AutoSize = False
        Caption = '00653'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 30427
        mmTop = 26723
        mmWidth = 34131
        BandType = 0
      end
      object ppLabel90: TppLabel
        UserName = 'Label90'
        AutoSize = False
        Caption = 'Fecha         '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 1323
        mmTop = 32015
        mmWidth = 23813
        BandType = 0
      end
      object pplblFecPre2: TppLabel
        UserName = 'lblFecPre2'
        AutoSize = False
        Caption = '27/12/2005'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 30427
        mmTop = 32015
        mmWidth = 19844
        BandType = 0
      end
      object ppLabel92: TppLabel
        UserName = 'Label92'
        AutoSize = False
        Caption = 'Use   '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 177536
        mmTop = 21431
        mmWidth = 7673
        BandType = 0
      end
      object pplblUse2: TppLabel
        UserName = 'lblUse2'
        Caption = '2F - UGEL SANTA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3725
        mmLeft = 194734
        mmTop = 21431
        mmWidth = 26924
        BandType = 0
      end
      object ppLabel94: TppLabel
        UserName = 'Label94'
        AutoSize = False
        Caption = ': '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 28310
        mmTop = 32015
        mmWidth = 1323
        BandType = 0
      end
      object ppLabel95: TppLabel
        UserName = 'Label95'
        AutoSize = False
        Caption = ': '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 98161
        mmTop = 26988
        mmWidth = 1323
        BandType = 0
      end
      object ppLabel96: TppLabel
        UserName = 'Label96'
        AutoSize = False
        Caption = ': '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 98161
        mmTop = 21431
        mmWidth = 1323
        BandType = 0
      end
      object ppLabel97: TppLabel
        UserName = 'Label97'
        AutoSize = False
        Caption = ': '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 28575
        mmTop = 26723
        mmWidth = 1323
        BandType = 0
      end
      object ppLabel98: TppLabel
        UserName = 'Label98'
        AutoSize = False
        Caption = ': '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 28575
        mmTop = 21431
        mmWidth = 1323
        BandType = 0
      end
      object ppLabel99: TppLabel
        UserName = 'Label99'
        AutoSize = False
        Caption = ': '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 192088
        mmTop = 21431
        mmWidth = 1323
        BandType = 0
      end
      object ppLabel100: TppLabel
        UserName = 'Label100'
        AutoSize = False
        Caption = 'O.Otorg.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 71173
        mmTop = 32808
        mmWidth = 14023
        BandType = 0
      end
      object ppLabel101: TppLabel
        UserName = 'Label1'
        AutoSize = False
        Caption = ': '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 98161
        mmTop = 32544
        mmWidth = 1323
        BandType = 0
      end
      object ppLblOriOto2: TppLabel
        UserName = 'Label2'
        AutoSize = False
        Caption = '21 -  CHIMBOTE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 100277
        mmTop = 32279
        mmWidth = 80433
        BandType = 0
      end
      object ppSystemVariable3: TppSystemVariable
        UserName = 'SystemVariable3'
        VarType = vtTime
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 254265
        mmTop = 6085
        mmWidth = 19315
        BandType = 0
      end
      object ppLabel83: TppLabel
        UserName = 'Label83'
        Caption = 'Fecha  '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 238125
        mmTop = 1323
        mmWidth = 10319
        BandType = 0
      end
      object ppLabel87: TppLabel
        UserName = 'Label87'
        Caption = 'Hora    '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 238125
        mmTop = 6085
        mmWidth = 11906
        BandType = 0
      end
      object ppSystemVariable4: TppSystemVariable
        UserName = 'SystemVariable4'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 254265
        mmTop = 1323
        mmWidth = 14817
        BandType = 0
      end
      object ppLabel88: TppLabel
        UserName = 'Label88'
        AutoSize = False
        Caption = ': '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 250561
        mmTop = 6085
        mmWidth = 1323
        BandType = 0
      end
      object ppLabel89: TppLabel
        UserName = 'Label89'
        AutoSize = False
        Caption = ': '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 250561
        mmTop = 1323
        mmWidth = 1323
        BandType = 0
      end
      object ppLblTitulo2: TppLabel
        UserName = 'LblTitulo1'
        AutoSize = False
        Caption = 'DETALLE DE PAGOS N'#176': 00653-2005  al: 03/08/2009'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Roman 12cpi'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 58473
        mmTop = 13494
        mmWidth = 168805
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label6'
        Caption = 'Pagina'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 238125
        mmTop = 11113
        mmWidth = 10054
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label7'
        AutoSize = False
        Caption = ': '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 250561
        mmTop = 10583
        mmWidth = 1323
        BandType = 0
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        VarType = vtPageNo
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 254265
        mmTop = 10583
        mmWidth = 1778
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label8'
        Caption = 'Mes Planilla'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3725
        mmLeft = 88900
        mmTop = 44715
        mmWidth = 17357
        BandType = 0
      end
    end
    object ppDetailBand2: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 4498
      mmPrintPosition = 0
      object ppDBText17: TppDBText
        UserName = 'DBText17'
        DataField = 'CRECUOTA'
        DataPipeline = ppDBEstCta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBEstCta'
        mmHeight = 3725
        mmLeft = 1852
        mmTop = 265
        mmWidth = 4233
        BandType = 4
      end
      object ppDBText18: TppDBText
        UserName = 'DBText18'
        DataField = 'CREFVEN'
        DataPipeline = ppDBEstCta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEstCta'
        mmHeight = 3704
        mmLeft = 8202
        mmTop = 265
        mmWidth = 16933
        BandType = 4
      end
      object ppDBText19: TppDBText
        UserName = 'DBText19'
        DataField = 'CREFPAG'
        DataPipeline = ppDBEstCta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEstCta'
        mmHeight = 3704
        mmLeft = 26458
        mmTop = 265
        mmWidth = 16933
        BandType = 4
      end
      object ppDBText20: TppDBText
        UserName = 'DBText20'
        DataField = 'FORPAGABR'
        DataPipeline = ppDBEstCta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEstCta'
        mmHeight = 3704
        mmLeft = 44450
        mmTop = 265
        mmWidth = 6615
        BandType = 4
      end
      object ppDBText21: TppDBText
        UserName = 'DBText21'
        DataField = 'CREDOCPAG'
        DataPipeline = ppDBEstCta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEstCta'
        mmHeight = 3704
        mmLeft = 52123
        mmTop = 265
        mmWidth = 19844
        BandType = 4
      end
      object ppDBText22: TppDBText
        UserName = 'DBText22'
        AutoSize = True
        DataField = 'PAGOS'
        DataPipeline = ppDBEstCta
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBEstCta'
        mmHeight = 3598
        mmLeft = 109802
        mmTop = 265
        mmWidth = 11261
        BandType = 4
      end
      object ppDBText23: TppDBText
        UserName = 'DBText23'
        AutoSize = True
        DataField = 'DEVOL'
        DataPipeline = ppDBEstCta
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBEstCta'
        mmHeight = 3598
        mmLeft = 126207
        mmTop = 265
        mmWidth = 10753
        BandType = 4
      end
      object ppDBText24: TppDBText
        UserName = 'DBText24'
        AutoSize = True
        DataField = 'APLIC'
        DataPipeline = ppDBEstCta
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBEstCta'
        mmHeight = 3598
        mmLeft = 141023
        mmTop = 265
        mmWidth = 9186
        BandType = 4
      end
      object ppDBText27: TppDBText
        UserName = 'DBText27'
        AutoSize = True
        DataField = 'ORICREDID'
        DataPipeline = ppDBEstCta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEstCta'
        mmHeight = 3598
        mmLeft = 152929
        mmTop = 265
        mmWidth = 12965
        BandType = 4
      end
      object ppDBText28: TppDBText
        UserName = 'DBText28'
        AutoSize = True
        DataField = 'ORICUO'
        DataPipeline = ppDBEstCta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEstCta'
        mmHeight = 3598
        mmLeft = 166952
        mmTop = 265
        mmWidth = 5556
        BandType = 4
      end
      object ppDBText29: TppDBText
        UserName = 'DBText29'
        DataField = 'BANCONOM'
        DataPipeline = ppDBEstCta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEstCta'
        mmHeight = 3704
        mmLeft = 173832
        mmTop = 265
        mmWidth = 32279
        BandType = 4
      end
      object ppDBText30: TppDBText
        UserName = 'DBText30'
        AutoSize = True
        DataField = 'CCBCOID'
        DataPipeline = ppDBEstCta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEstCta'
        mmHeight = 3704
        mmLeft = 207698
        mmTop = 265
        mmWidth = 31485
        BandType = 4
      end
      object ppDBText31: TppDBText
        UserName = 'DBText301'
        DataField = 'USUARIO'
        DataPipeline = ppDBEstCta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEstCta'
        mmHeight = 3704
        mmLeft = 243946
        mmTop = 265
        mmWidth = 26458
        BandType = 4
      end
      object ppDBText26: TppDBText
        UserName = 'DBText26'
        DataField = 'FREG'
        DataPipeline = ppDBEstCta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEstCta'
        mmHeight = 3704
        mmLeft = 72496
        mmTop = 265
        mmWidth = 17727
        BandType = 4
      end
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        AutoSize = True
        DataField = 'RCOBPER'
        DataPipeline = ppDBEstCta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEstCta'
        mmHeight = 3725
        mmLeft = 91017
        mmTop = 265
        mmWidth = 15748
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 6350
      mmPrintPosition = 0
      object pplUsuario: TppLabel
        UserName = 'Label5'
        Caption = 'Usuario: XXXXXXXXXXXXX'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 794
        mmTop = 1852
        mmWidth = 44873
        BandType = 8
      end
    end
    object ppSummaryBand2: TppSummaryBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 17198
      mmPrintPosition = 0
      object ppShape4: TppShape
        UserName = 'Shape4'
        mmHeight = 6615
        mmLeft = 265
        mmTop = 4233
        mmWidth = 60590
        BandType = 7
      end
      object ppDBCalc1: TppDBCalc
        UserName = 'DBCalc1'
        DataField = 'PAGOS'
        DataPipeline = ppDBEstCta
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBEstCta'
        mmHeight = 3704
        mmLeft = 103981
        mmTop = 0
        mmWidth = 17198
        BandType = 7
      end
      object ppDBCalc2: TppDBCalc
        UserName = 'DBCalc2'
        DataField = 'DEVOL'
        DataPipeline = ppDBEstCta
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBEstCta'
        mmHeight = 3704
        mmLeft = 119856
        mmTop = 0
        mmWidth = 17198
        BandType = 7
      end
      object ppDBCalc3: TppDBCalc
        UserName = 'DBCalc3'
        DataField = 'APLIC'
        DataPipeline = ppDBEstCta
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBEstCta'
        mmHeight = 3704
        mmLeft = 133086
        mmTop = 0
        mmWidth = 17198
        BandType = 7
      end
      object ppSubReport1: TppSubReport
        UserName = 'SubReport1'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        TraverseAllData = False
        mmHeight = 5027
        mmLeft = 0
        mmTop = 12171
        mmWidth = 284427
        BandType = 7
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppChildReport2: TppChildReport
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report'
          PrinterSetup.Orientation = poLandscape
          PrinterSetup.PaperName = 'A4'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.mmMarginBottom = 6350
          PrinterSetup.mmMarginLeft = 6350
          PrinterSetup.mmMarginRight = 6350
          PrinterSetup.mmMarginTop = 6350
          PrinterSetup.mmPaperHeight = 210079
          PrinterSetup.mmPaperWidth = 297127
          PrinterSetup.PaperSize = 9
          Version = '7.02'
          mmColumnWidth = 0
          object ppTitleBand2: TppTitleBand
            mmBottomOffset = 0
            mmHeight = 20108
            mmPrintPosition = 0
            object ppLine20: TppLine
              UserName = 'Line20'
              Pen.Style = psDot
              Weight = 0.750000000000000000
              mmHeight = 1058
              mmLeft = 0
              mmTop = 8996
              mmWidth = 198173
              BandType = 1
            end
            object ppLine21: TppLine
              UserName = 'Line21'
              Pen.Style = psDot
              Weight = 0.750000000000000000
              mmHeight = 529
              mmLeft = 265
              mmTop = 19579
              mmWidth = 198173
              BandType = 1
            end
            object ppLabel91: TppLabel
              UserName = 'Label91'
              Caption = 'Totales Por Operaci'#243'n (Mas De Una Cuota)'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Size = 10
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 4191
              mmLeft = 0
              mmTop = 2381
              mmWidth = 71840
              BandType = 1
            end
            object ppLabel93: TppLabel
              UserName = 'Label93'
              AutoSize = False
              Caption = 'Fecha '
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 4233
              mmLeft = 6085
              mmTop = 10054
              mmWidth = 11642
              BandType = 1
            end
            object ppLabel102: TppLabel
              UserName = 'Label1'
              AutoSize = False
              Caption = 'de Pago'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 4233
              mmLeft = 6085
              mmTop = 14552
              mmWidth = 13229
              BandType = 1
            end
            object ppLabel103: TppLabel
              UserName = 'Label103'
              AutoSize = False
              Caption = 'Forma.'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 4233
              mmLeft = 27252
              mmTop = 10848
              mmWidth = 10583
              BandType = 1
            end
            object ppLabel104: TppLabel
              UserName = 'Label104'
              AutoSize = False
              Caption = 'Documento '
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 4233
              mmLeft = 41540
              mmTop = 10319
              mmWidth = 19315
              BandType = 1
            end
            object ppLabel105: TppLabel
              UserName = 'Label105'
              AutoSize = False
              Caption = 'Total'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 4233
              mmLeft = 180975
              mmTop = 10319
              mmWidth = 10054
              BandType = 1
            end
            object ppLabel106: TppLabel
              UserName = 'Label106'
              AutoSize = False
              Caption = 'Pagado'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 4233
              mmLeft = 180446
              mmTop = 15346
              mmWidth = 11906
              BandType = 1
            end
            object ppLabel107: TppLabel
              UserName = 'Label107'
              AutoSize = False
              Caption = 'N'#176' Cuotas'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 4233
              mmLeft = 143669
              mmTop = 15081
              mmWidth = 16933
              BandType = 1
            end
            object ppLabel108: TppLabel
              UserName = 'Label108'
              AutoSize = False
              Caption = 'de Pago'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 4233
              mmLeft = 27517
              mmTop = 15346
              mmWidth = 13229
              BandType = 1
            end
            object ppLabel109: TppLabel
              UserName = 'Label109'
              AutoSize = False
              Caption = 'de  Pago'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 4233
              mmLeft = 41804
              mmTop = 14817
              mmWidth = 19579
              BandType = 1
            end
            object ppLabel110: TppLabel
              UserName = 'Label110'
              AutoSize = False
              Caption = 'Banco'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 4233
              mmLeft = 105834
              mmTop = 14817
              mmWidth = 17198
              BandType = 1
            end
            object ppLabel111: TppLabel
              UserName = 'Label111'
              AutoSize = False
              Caption = 'Cuenta'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 4233
              mmLeft = 66675
              mmTop = 14817
              mmWidth = 17198
              BandType = 1
            end
          end
          object ppDetailBand4: TppDetailBand
            mmBottomOffset = 0
            mmHeight = 3969
            mmPrintPosition = 0
            object ppDBText32: TppDBText
              UserName = 'DBText32'
              DataField = 'CREFPAG'
              DataPipeline = ppDBResumen
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'ppDBResumen'
              mmHeight = 3704
              mmLeft = 4498
              mmTop = 265
              mmWidth = 21960
              BandType = 4
            end
            object ppDBText33: TppDBText
              UserName = 'DBText102'
              DataField = 'FORPAGABR'
              DataPipeline = ppDBResumen
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'ppDBResumen'
              mmHeight = 3704
              mmLeft = 28310
              mmTop = 0
              mmWidth = 8731
              BandType = 4
            end
            object ppDBText34: TppDBText
              UserName = 'DBText34'
              DataField = 'CREDOCPAG'
              DataPipeline = ppDBResumen
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'ppDBResumen'
              mmHeight = 3704
              mmLeft = 40481
              mmTop = 0
              mmWidth = 21960
              BandType = 4
            end
            object ppDBText35: TppDBText
              UserName = 'DBText35'
              DataField = 'CCBCOID'
              DataPipeline = ppDBResumen
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'ppDBResumen'
              mmHeight = 3704
              mmLeft = 65352
              mmTop = 0
              mmWidth = 37571
              BandType = 4
            end
            object ppDBText36: TppDBText
              UserName = 'DBText36'
              DataField = 'BANCONOM'
              DataPipeline = ppDBResumen
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'ppDBResumen'
              mmHeight = 3704
              mmLeft = 104246
              mmTop = 0
              mmWidth = 37571
              BandType = 4
            end
            object ppDBText37: TppDBText
              UserName = 'DBText37'
              DataField = 'REGISTROS'
              DataPipeline = ppDBResumen
              DisplayFormat = '###'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBResumen'
              mmHeight = 3704
              mmLeft = 142875
              mmTop = 0
              mmWidth = 14023
              BandType = 4
            end
            object ppDBText38: TppDBText
              UserName = 'DBText38'
              DataField = 'CREMTOCOB'
              DataPipeline = ppDBResumen
              DisplayFormat = '###,###.#0'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBResumen'
              mmHeight = 3704
              mmLeft = 166688
              mmTop = 0
              mmWidth = 25400
              BandType = 4
            end
          end
          object ppSummaryBand4: TppSummaryBand
            mmBottomOffset = 0
            mmHeight = 1323
            mmPrintPosition = 0
          end
        end
      end
      object ppLabel1: TppLabel
        UserName = 'Label3'
        Caption = 'TOTAL PAGADO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 1588
        mmTop = 5821
        mmWidth = 24342
        BandType = 7
      end
      object pplblTotal: TppLabel
        UserName = 'Label4'
        Caption = '999,999.99'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 29104
        mmTop = 5556
        mmWidth = 29898
        BandType = 7
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'CRECUOTA'
      DataPipeline = ppDBEstCta
      OutlineSettings.CreateNode = True
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBEstCta'
      object ppGroupHeaderBand1: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 794
        mmPrintPosition = 0
        object ppLine19: TppLine
          UserName = 'Line19'
          Weight = 0.750000000000000000
          mmHeight = 794
          mmLeft = 0
          mmTop = 0
          mmWidth = 259028
          BandType = 5
          GroupNo = 0
        end
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object ppD1: TppDesigner
    Caption = 'ReportBuilder'
    DataSettings.SessionType = 'BDESession'
    DataSettings.AllowEditSQL = False
    DataSettings.CollationType = ctASCII
    DataSettings.DatabaseType = dtParadox
    DataSettings.IsCaseSensitive = True
    DataSettings.SQLType = sqBDELocal
    Position = poScreenCenter
    Report = ppRepDetPag
    IniStorageType = 'IniFile'
    IniStorageName = '($WINSYS)\RBuilder.ini'
    WindowHeight = 400
    WindowLeft = 100
    WindowTop = 50
    WindowWidth = 600
    Left = 101
    Top = 192
  end
  object ppDBResumen: TppDBPipeline
    DataSource = DM1.dsQry2
    UserName = 'DBResumen'
    Left = 24
    Top = 189
  end
end
