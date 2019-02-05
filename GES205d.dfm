object fDetPagAcu: TfDetPagAcu
  Left = 292
  Top = 187
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Detalles de Pago'
  ClientHeight = 378
  ClientWidth = 476
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
    Left = 3
    Top = -1
    Width = 473
    Height = 379
    TabOrder = 0
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
    object Label1: TLabel
      Left = 12
      Top = 16
      Width = 47
      Height = 13
      Caption = 'Asociado '
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
    object Label2: TLabel
      Left = 11
      Top = 48
      Width = 70
      Height = 13
      Caption = 'N'#176' de Acuerdo'
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
    object Label3: TLabel
      Left = 199
      Top = 48
      Width = 88
      Height = 13
      Caption = 'Fecha de Acuerdo'
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
    object dtgDetPagos: TwwDBGrid
      Left = 6
      Top = 70
      Width = 460
      Height = 271
      Cursor = crHandPoint
      DisableThemesInTitle = False
      Selected.Strings = (
        'CUONUM'#9'5'#9'N'#176'~Cuota'
        'FECPAG'#9'11'#9'Fecha~de Pago'
        'FORPAGABR'#9'3'#9'Forma~de Pago'
        'DOCPAG'#9'11'#9'Documento'
        'CUOPAG'#9'14'#9'Monto~Pagado'
        'CREESTADO'#9'18'#9'Estado'#9'F')
      IniAttributes.Delimiter = ';;'
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      DataSource = DM1.dsCtasBco
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Times New Roman'
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
      TitleLines = 3
      TitleButtons = False
    end
    object BitSalir: TBitBtn
      Left = 351
      Top = 348
      Width = 96
      Height = 26
      Cursor = crHandPoint
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
  end
end
