object fLibGesInd: TfLibGesInd
  Left = 375
  Top = 389
  Width = 612
  Height = 200
  Caption = 'Liberar Gesti'#243'n'
  Color = 10207162
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Label4: TLabel
    Left = 14
    Top = 40
    Width = 137
    Height = 16
    AutoSize = False
    Caption = 'Gestor'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label1: TLabel
    Left = 14
    Top = 64
    Width = 137
    Height = 16
    AutoSize = False
    Caption = 'Asociado'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 14
    Top = 88
    Width = 137
    Height = 16
    AutoSize = False
    Caption = 'Motivo'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 153
    Top = 64
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
  object Label3: TLabel
    Left = 153
    Top = 88
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
  object Label6: TLabel
    Left = 153
    Top = 40
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
  object lblGestorNombre: TLabel
    Left = 183
    Top = 41
    Width = 362
    Height = 16
    AutoSize = False
    Caption = 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
    Color = 10207162
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object lblAsoNombres: TLabel
    Left = 183
    Top = 65
    Width = 362
    Height = 16
    AutoSize = False
    Caption = 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
    Color = 10207162
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object Label8: TLabel
    Left = 14
    Top = 8
    Width = 531
    Height = 16
    AutoSize = False
    Caption = 
      'Aviso! Para liberar la asignaci'#243'n del asociado al Gestor es nece' +
      'sario seleccionar el motivo'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object lblDescMotivo: TLabel
    Left = 240
    Top = 89
    Width = 225
    Height = 16
    AutoSize = False
    Caption = 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
    Color = 10207162
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object BitSalir: TBitBtn
    Left = 391
    Top = 127
    Width = 100
    Height = 26
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
  object BitLiberar: TBitBtn
    Left = 235
    Top = 127
    Width = 127
    Height = 26
    Hint = 'Salir'
    Caption = '&Procesar Liberaci'#243'n'
    TabOrder = 1
    OnClick = BitLiberarClick
    NumGlyphs = 2
  end
  object dblcMotivos: TwwDBLookupCombo
    Left = 182
    Top = 86
    Width = 51
    Height = 21
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    DropDownAlignment = taLeftJustify
    Selected.Strings = (
      'IDMOTIVO'#9'3'#9'Codigo'#9'F'
      'DESCRIPCION'#9'27'#9'Descripci'#243'n'#9'F')
    LookupTable = DM1.cdsMotivosLib
    LookupField = 'IDMOTIVO'
    Options = [loColLines, loRowLines]
    ParentFont = False
    TabOrder = 2
    AutoDropDown = False
    ShowButton = True
    PreciseEditRegion = False
    AllowClearKey = False
    OnChange = dblcMotivosChange
    OnExit = dblcMotivosExit
  end
end
