object fCronoAcu: TfCronoAcu
  Left = 251
  Top = 160
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Cronograma  Por Acuerdo De Pago'
  ClientHeight = 471
  ClientWidth = 493
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
  object GroupBox1: TGroupBox
    Left = 4
    Top = 0
    Width = 485
    Height = 470
    TabOrder = 0
    object Shape5: TShape
      Left = 271
      Top = 75
      Width = 38
      Height = 24
    end
    object Shape4: TShape
      Left = 94
      Top = 74
      Width = 83
      Height = 24
    end
    object Shape3: TShape
      Left = 297
      Top = 42
      Width = 106
      Height = 24
    end
    object Shape2: TShape
      Left = 94
      Top = 42
      Width = 83
      Height = 24
    end
    object Shape1: TShape
      Left = 93
      Top = 12
      Width = 311
      Height = 24
    end
    object lblAsoApeNom: TLabel
      Left = 103
      Top = 16
      Width = 293
      Height = 15
      AutoSize = False
      Caption = 'Eduardo Alva Aliaga '
      Color = clWindow
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object lblNroAcu: TLabel
      Left = 101
      Top = 46
      Width = 71
      Height = 18
      Alignment = taCenter
      AutoSize = False
      Caption = '00000000'
      Color = clWindow
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object lblFecAcu: TLabel
      Left = 305
      Top = 46
      Width = 93
      Height = 17
      Alignment = taCenter
      AutoSize = False
      Caption = '99/99/9999'
      Color = clWindow
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label1: TLabel
      Left = 12
      Top = 16
      Width = 47
      Height = 13
      Caption = 'Asociado '
    end
    object Label2: TLabel
      Left = 11
      Top = 48
      Width = 70
      Height = 13
      Caption = 'N'#176' de Acuerdo'
    end
    object Label3: TLabel
      Left = 199
      Top = 48
      Width = 88
      Height = 13
      Caption = 'Fecha de Acuerdo'
    end
    object lblSalVen: TLabel
      Left = 96
      Top = 78
      Width = 77
      Height = 18
      Alignment = taRightJustify
      AutoSize = False
      Caption = '9,999,999.99'
      Color = clWindow
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label5: TLabel
      Left = 11
      Top = 80
      Width = 69
      Height = 13
      Caption = 'Saldo Vencido'
    end
    object Label6: TLabel
      Left = 200
      Top = 80
      Width = 63
      Height = 13
      Caption = 'N'#176' de Cuotas'
    end
    object lblNumCuo: TLabel
      Left = 273
      Top = 79
      Width = 32
      Height = 19
      Alignment = taCenter
      AutoSize = False
      Caption = '36'
      Color = clWindow
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object BitSalir: TBitBtn
      Left = 367
      Top = 439
      Width = 96
      Height = 26
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
    object dtgCronoAcu: TwwDBGrid
      Left = 8
      Top = 105
      Width = 470
      Height = 330
      Cursor = crHandPoint
      DisableThemesInTitle = False
      Selected.Strings = (
        'CUONUM'#9'5'#9'N'#176'~Cuota'
        'FECVEN'#9'12'#9'Fecha~de Vencimiento'
        'MONCUO'#9'14'#9'Monto de~la Cuota'
        'CUOPAG'#9'14'#9'Monto~Pagado'
        'CREESTADO'#9'20'#9'Estado'#9'F')
      IniAttributes.Delimiter = ';;'
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      DataSource = DM1.dsListaCreA
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Times New Roman'
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
      TitleLines = 3
      TitleButtons = False
      OnDblClick = dtgCronoAcuDblClick
    end
    object BitDetalle: TBitBtn
      Left = 262
      Top = 439
      Width = 96
      Height = 26
      Cursor = crHandPoint
      Hint = 'Detalle de Pagos'
      Caption = '&Detalles'
      TabOrder = 2
      OnClick = BitDetalleClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33333FFFFFFFFFFFFFFF000000000000000077777777777777770FF7FF7FF7FF
        7FF07FF7FF7FF7F37F3709F79F79F7FF7FF077F77F77F7FF7FF7077777777777
        777077777777777777770FF7FF7FF7FF7FF07FF7FF7FF7FF7FF709F79F79F79F
        79F077F77F77F77F77F7077777777777777077777777777777770FF7FF7FF7FF
        7FF07FF7FF7FF7FF7FF709F79F79F79F79F077F77F77F77F77F7077777777777
        777077777777777777770FFFFF7FF7FF7FF07F33337FF7FF7FF70FFFFF79F79F
        79F07FFFFF77F77F77F700000000000000007777777777777777CCCCCC8888CC
        CCCC777777FFFF777777CCCCCCCCCCCCCCCC7777777777777777}
      NumGlyphs = 2
    end
  end
end
