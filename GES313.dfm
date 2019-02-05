object FProgProcRpteCon: TFProgProcRpteCon
  Left = 57
  Top = 112
  BorderStyle = bsDialog
  Caption = 
    'Programar Proceso Nocturno de carga de datos para reporte de Con' +
    'solidado'
  ClientHeight = 400
  ClientWidth = 694
  Color = 10207162
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 357
    Width = 694
    Height = 43
    Align = alBottom
    Color = 10207162
    TabOrder = 0
    DesignSize = (
      694
      43)
    object btnSalir: TBitBtn
      Left = 586
      Top = 7
      Width = 100
      Height = 30
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
    object btnCancelar: TBitBtn
      Left = 479
      Top = 7
      Width = 102
      Height = 30
      Cursor = crHandPoint
      Anchors = [akTop, akRight]
      Caption = 'Cancelar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = btnCancelarClick
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
    Width = 694
    Height = 201
    Align = alTop
    Caption = 'Panel2'
    TabOrder = 1
    object dbgProcesado: TwwDBGrid
      Left = 1
      Top = 26
      Width = 692
      Height = 174
      DisableThemesInTitle = False
      Selected.Strings = (
        'USUPRO'#9'15'#9'Usuario'
        'FECINIRAN'#9'10'#9'Inicio Rango'
        'FECFINRAN'#9'10'#9'Fin Rango'
        'ESTADO'#9'15'#9'Estado'
        'FECINIPRO'#9'20'#9'Inicio Proceso'
        'FECFINPRO'#9'20'#9'Fin Proceso'
        'NUM_TOT_REGISTROS'#9'10'#9'Total~Registros'
        'NUM_REG_PROCESADOS'#9'10'#9'Registros~Procesados')
      IniAttributes.Delimiter = ';;'
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      Align = alClient
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      KeyOptions = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
      ParentFont = False
      TabOrder = 0
      TitleAlignment = taCenter
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clBlack
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      TitleLines = 2
      TitleButtons = False
      PaintOptions.AlternatingRowColor = clMoneyGreen
    end
    object Panel4: TPanel
      Left = 1
      Top = 1
      Width = 692
      Height = 25
      Align = alTop
      BevelOuter = bvNone
      Color = 10207162
      TabOrder = 1
      object Label1: TLabel
        Left = 6
        Top = 5
        Width = 85
        Height = 16
        Caption = 'Procesados'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 201
    Width = 694
    Height = 156
    Align = alClient
    Caption = 'Panel3'
    TabOrder = 2
    object dbgPorProcesar: TwwDBGrid
      Left = 1
      Top = 42
      Width = 692
      Height = 113
      DisableThemesInTitle = False
      Selected.Strings = (
        'USUPRO'#9'15'#9'Usuario'
        'FECINIRAN'#9'10'#9'Inicio Rango'
        'FECFINRAN'#9'10'#9'Fin Rango'
        'ESTADO'#9'15'#9'Estado'
        'FECINIPRO'#9'20'#9'Inicio Proceso'
        'FECFINPRO'#9'20'#9'Fin Proceso'
        'NUM_TOT_REGISTROS'#9'10'#9'Total~Registros'
        'NUM_REG_PROCESADOS'#9'10'#9'Registros~Procesados')
      IniAttributes.Delimiter = ';;'
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      Align = alClient
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
      TitleFont.Style = [fsBold]
      TitleLines = 2
      TitleButtons = False
      OnDblClick = dbgPorProcesarDblClick
      object dbgBtnAdd: TwwIButton
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
        OnClick = dbgBtnAddClick
      end
    end
    object Panel5: TPanel
      Left = 1
      Top = 1
      Width = 692
      Height = 41
      Align = alTop
      BevelOuter = bvNone
      Color = 10207162
      TabOrder = 1
      object Label2: TLabel
        Left = 6
        Top = 21
        Width = 189
        Height = 16
        Caption = 'Por Procesar / Procesando'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
  end
end
