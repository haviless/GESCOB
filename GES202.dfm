object fDetSeguimiento: TfDetSeguimiento
  Left = 112
  Top = 89
  BorderStyle = bsDialog
  Caption = 'Detalles del Seguimiento y Control'
  ClientHeight = 582
  ClientWidth = 946
  Color = clBtnFace
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
  object Label1: TLabel
    Left = 10
    Top = 84
    Width = 129
    Height = 16
    AutoSize = False
    Caption = 'Asignado'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 433
    Top = 86
    Width = 129
    Height = 16
    AutoSize = False
    Caption = 'Gestionado'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 15
    Top = 330
    Width = 129
    Height = 16
    AutoSize = False
    Caption = 'Contactado'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 465
    Top = 330
    Width = 129
    Height = 16
    AutoSize = False
    Caption = 'Resultados'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Shape1: TShape
    Left = 543
    Top = 7
    Width = 118
    Height = 81
  end
  object lblPonderado: TLabel
    Left = 551
    Top = 34
    Width = 97
    Height = 47
    Alignment = taCenter
    AutoSize = False
    Caption = '0'
    Color = clWindow
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -35
    Font.Name = 'Arial'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object Label5: TLabel
    Left = 549
    Top = 11
    Width = 105
    Height = 16
    Alignment = taCenter
    AutoSize = False
    Caption = 'Calificaci'#243'n'
    Color = clHighlightText
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object Shape2: TShape
    Left = 9
    Top = 25
    Width = 520
    Height = 34
  end
  object lblGestor: TLabel
    Left = 85
    Top = 32
    Width = 348
    Height = 21
    AutoSize = False
    Caption = 'lblGestor'
    Color = clBtnHighlight
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object Label6: TLabel
    Left = 16
    Top = 31
    Width = 57
    Height = 16
    AutoSize = False
    Caption = 'Gestor'
    Color = clWindow
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object Label7: TLabel
    Left = 64
    Top = 31
    Width = 17
    Height = 16
    Alignment = taCenter
    AutoSize = False
    Caption = ':'
    Color = clWindow
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object lblGest: TLabel
    Left = 720
    Top = 32
    Width = 32
    Height = 13
    Caption = 'lblGest'
    Visible = False
  end
  object lblPeriodo: TLabel
    Left = 720
    Top = 48
    Width = 46
    Height = 13
    Caption = 'lblPeriodo'
    Visible = False
  end
  object dtgAsignados: TwwDBGrid
    Left = 8
    Top = 104
    Width = 417
    Height = 217
    Cursor = crHandPoint
    DisableThemesInTitle = False
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    DataSource = DM1.dsqry5
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Arial Narrow'
    Font.Style = []
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowFooter]
    ParentFont = False
    TabOrder = 0
    TitleAlignment = taLeftJustify
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Serif'
    TitleFont.Style = [fsBold]
    TitleLines = 1
    TitleButtons = False
  end
  object dtgGestionadas: TwwDBGrid
    Left = 431
    Top = 104
    Width = 417
    Height = 217
    Cursor = crHandPoint
    DisableThemesInTitle = False
    Selected.Strings = (
      'DISTRIBUCION_ESTRATEGICA'#9'35'#9'Distribucion Estrategica'#9#9
      'DISTRIBUCION_OPERATIVA'#9'35'#9'Distribucion Operativa'#9#9
      'DEUDORES'#9'9'#9'Deudores'#9#9)
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    DataSource = DM1.dsConsulta
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Arial Narrow'
    Font.Style = []
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowFooter]
    ParentFont = False
    TabOrder = 1
    TitleAlignment = taLeftJustify
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Serif'
    TitleFont.Style = [fsBold]
    TitleLines = 1
    TitleButtons = False
  end
  object dtgContactado: TwwDBGrid
    Left = 11
    Top = 350
    Width = 414
    Height = 217
    Cursor = crHandPoint
    DisableThemesInTitle = False
    Selected.Strings = (
      'DESCRIPCION_PRIORIDAD'#9'35'#9'Prioridad'#9#9
      'DEUDORES'#9'9'#9'Deudores'#9#9)
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    DataSource = DM1.dsCtasAso
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Arial Narrow'
    Font.Style = []
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowFooter]
    ParentFont = False
    TabOrder = 2
    TitleAlignment = taLeftJustify
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Serif'
    TitleFont.Style = [fsBold]
    TitleLines = 1
    TitleButtons = False
  end
  object dtgResultados: TwwDBGrid
    Left = 437
    Top = 350
    Width = 492
    Height = 217
    Cursor = crHandPoint
    DisableThemesInTitle = False
    Selected.Strings = (
      'DESCRIPCION_PRIORIDAD'#9'35'#9'Prioridad'#9#9
      'EFEGES'#9'9'#9'Deudores'#9#9
      'TOTPAG'#9'12'#9'Efectivo/Bancos'#9#9)
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    DataSource = DM1.dsCuentas
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Arial Narrow'
    Font.Style = []
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowFooter]
    ParentFont = False
    TabOrder = 3
    TitleAlignment = taLeftJustify
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Serif'
    TitleFont.Style = [fsBold]
    TitleLines = 1
    TitleButtons = False
  end
  object btnGestiones: TBitBtn
    Left = 773
    Top = 77
    Width = 75
    Height = 25
    Caption = 'Gestiones'
    TabOrder = 4
    OnClick = btnGestionesClick
  end
end
