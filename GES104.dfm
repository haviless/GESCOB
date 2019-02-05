object fUsuDpto: TfUsuDpto
  Left = 464
  Top = 148
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Responsables de Cartas y Actualizaci'#243'n de Direcciones'
  ClientHeight = 552
  ClientWidth = 792
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
  object Label12: TLabel
    Left = 272
    Top = 3
    Width = 85
    Height = 20
    Caption = 'Asignados'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label13: TLabel
    Left = 592
    Top = 3
    Width = 94
    Height = 20
    Caption = 'Por Asignar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label15: TLabel
    Left = 26
    Top = 3
    Width = 125
    Height = 20
    Caption = 'Departamentos'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object dtgOfiDes: TwwDBGrid
    Left = 5
    Top = 24
    Width = 169
    Height = 489
    Cursor = crHandPoint
    DisableThemesInTitle = False
    Selected.Strings = (
      'DPTOID'#9'3'#9'Codigo'
      'DPTODES'#9'18'#9'Departamento'#9'F')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    OnRowChanged = dtgOfiDesRowChanged
    FixedCols = 0
    ShowHorzScrollBar = False
    ShowVertScrollBar = False
    DataSource = DM1.dsUSES
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -12
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
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
    OnDblClick = dtgOfiDesDblClick
  end
  object dtgUsuarios: TwwDBGrid
    Left = 181
    Top = 24
    Width = 286
    Height = 194
    DisableThemesInTitle = False
    Selected.Strings = (
      'USERID'#9'15'#9'Usuario'
      'USERNOM'#9'25'#9'Descripci'#243'n'#9'F')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    DataSource = DM1.dsDLabo
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -12
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    ParentFont = False
    TabOrder = 1
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
  end
  object BitSalir: TBitBtn
    Left = 702
    Top = 523
    Width = 80
    Height = 26
    Cursor = crHandPoint
    Hint = 'Salir'
    Caption = '&Salir'
    TabOrder = 2
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
  object gbOfides: TGroupBox
    Left = 181
    Top = 249
    Width = 602
    Height = 271
    Caption = 'Datos de responsable'
    Enabled = False
    TabOrder = 3
    object Shape3: TShape
      Left = 135
      Top = 21
      Width = 115
      Height = 23
    end
    object Shape4: TShape
      Left = 97
      Top = 21
      Width = 34
      Height = 23
    end
    object Label3: TLabel
      Left = 10
      Top = 91
      Width = 64
      Height = 15
      Caption = 'Direcci'#243'n 1'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 10
      Top = 214
      Width = 64
      Height = 15
      Caption = 'Telefono(s)'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 11
      Top = 25
      Width = 84
      Height = 15
      AutoSize = False
      Caption = 'Departamento'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblDpto: TLabel
      Left = 104
      Top = 25
      Width = 23
      Height = 16
      AutoSize = False
      Color = clWindow
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object lblDptoDes: TLabel
      Left = 141
      Top = 25
      Width = 103
      Height = 16
      AutoSize = False
      Color = clWindow
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Shape1: TShape
      Left = 431
      Top = 21
      Width = 158
      Height = 23
    end
    object Shape2: TShape
      Left = 318
      Top = 21
      Width = 110
      Height = 23
    end
    object Label1: TLabel
      Left = 269
      Top = 25
      Width = 47
      Height = 15
      AutoSize = False
      Caption = 'Usuario'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblUsuario: TLabel
      Left = 322
      Top = 25
      Width = 100
      Height = 16
      AutoSize = False
      Color = clWindow
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object lblUsuDes: TLabel
      Left = 435
      Top = 25
      Width = 150
      Height = 16
      AutoSize = False
      Color = clWindow
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label18: TLabel
      Left = 10
      Top = 62
      Width = 68
      Height = 14
      AutoSize = False
      Caption = 'Provincia'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label19: TLabel
      Left = 330
      Top = 62
      Width = 42
      Height = 14
      AutoSize = False
      Caption = 'Distrito'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 272
      Top = 214
      Width = 20
      Height = 15
      Caption = 'Fax'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 436
      Top = 214
      Width = 40
      Height = 15
      Caption = 'Celular'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 10
      Top = 239
      Width = 33
      Height = 15
      Caption = 'E.Mail'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Bevel1: TBevel
      Left = 3
      Top = 49
      Width = 595
      Height = 3
    end
    object Label6: TLabel
      Left = 67
      Top = 115
      Width = 7
      Height = 15
      Caption = '2'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label9: TLabel
      Left = 67
      Top = 138
      Width = 7
      Height = 15
      Caption = '3'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label10: TLabel
      Left = 67
      Top = 161
      Width = 7
      Height = 15
      Caption = '4'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label11: TLabel
      Left = 67
      Top = 184
      Width = 7
      Height = 15
      Caption = '5'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object BitGrabaOF: TfcShapeBtn
      Left = 515
      Top = 237
      Width = 30
      Height = 30
      Cursor = crHandPoint
      Hint = 'Grabar'
      Color = cl3DLight
      DitherColor = clWhite
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
      Options = [boFocusable]
      ParentClipping = True
      ParentShowHint = False
      RoundRectBias = 25
      ShadeColors.BtnFocus = clNavy
      ShadeStyle = fbsHighlight
      Shape = bsEllipse
      ShowHint = True
      TabOrder = 0
      TabStop = True
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = BitGrabaOFClick
    end
    object meTel: TMaskEdit
      Left = 80
      Top = 211
      Width = 160
      Height = 21
      TabOrder = 1
    end
    object meFax: TMaskEdit
      Left = 295
      Top = 211
      Width = 110
      Height = 21
      TabOrder = 2
    end
    object dblcProvin: TwwDBLookupCombo
      Left = 80
      Top = 57
      Width = 39
      Height = 21
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'CIUDID'#9'3'#9'Codigo'#9'F'
        'CIUDDES'#9'27'#9'Descripci'#243'n'#9'F')
      LookupTable = DM1.cdsProvin
      LookupField = 'CIUDID'
      Options = [loColLines, loRowLines]
      ParentFont = False
      TabOrder = 3
      AutoDropDown = False
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      OnChange = dblcProvinChange
    end
    object dblcDist: TwwDBLookupCombo
      Left = 377
      Top = 57
      Width = 39
      Height = 21
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'ZIPID'#9'3'#9'Codigo'#9'F'
        'ZIPDES'#9'27'#9'Descripci'#243'n'#9'F')
      LookupTable = DM1.cdsDist
      LookupField = 'ZIPID'
      Options = [loColLines, loRowLines]
      ParentFont = False
      TabOrder = 4
      AutoDropDown = False
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      OnChange = dblcDistChange
    end
    object edtProvin: TMaskEdit
      Left = 120
      Top = 57
      Width = 170
      Height = 21
      TabOrder = 5
    end
    object edtDist: TMaskEdit
      Left = 417
      Top = 57
      Width = 170
      Height = 21
      TabOrder = 6
    end
    object meCel: TMaskEdit
      Left = 478
      Top = 211
      Width = 110
      Height = 21
      TabOrder = 7
    end
    object meMail: TMaskEdit
      Left = 80
      Top = 235
      Width = 250
      Height = 21
      TabOrder = 8
    end
    object meDir: TMaskEdit
      Left = 80
      Top = 88
      Width = 508
      Height = 21
      MaxLength = 120
      TabOrder = 9
    end
    object meDir1: TMaskEdit
      Left = 80
      Top = 111
      Width = 508
      Height = 21
      MaxLength = 120
      TabOrder = 10
    end
    object meDir2: TMaskEdit
      Left = 80
      Top = 134
      Width = 508
      Height = 21
      MaxLength = 120
      TabOrder = 11
    end
    object meDir3: TMaskEdit
      Left = 80
      Top = 157
      Width = 508
      Height = 21
      MaxLength = 120
      TabOrder = 12
    end
    object meDir4: TMaskEdit
      Left = 80
      Top = 180
      Width = 508
      Height = 21
      MaxLength = 120
      TabOrder = 13
    end
    object bitBorra: TfcShapeBtn
      Left = 555
      Top = 237
      Width = 30
      Height = 30
      Cursor = crHandPoint
      Hint = 'Grabar'
      Color = cl3DLight
      DitherColor = clWhite
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00500005000555
        555557777F777555F55500000000555055557777777755F75555005500055055
        555577F5777F57555555005550055555555577FF577F5FF55555500550050055
        5555577FF77577FF555555005050110555555577F757777FF555555505099910
        555555FF75777777FF555005550999910555577F5F77777775F5500505509990
        3055577F75F77777575F55005055090B030555775755777575755555555550B0
        B03055555F555757575755550555550B0B335555755555757555555555555550
        BBB35555F55555575F555550555555550BBB55575555555575F5555555555555
        50BB555555555555575F555555555555550B5555555555555575}
      NumGlyphs = 2
      Options = [boFocusable]
      ParentClipping = True
      ParentShowHint = False
      RoundRectBias = 25
      ShadeColors.BtnFocus = clNavy
      ShadeStyle = fbsHighlight
      Shape = bsEllipse
      ShowHint = True
      TabOrder = 14
      TabStop = True
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = bitBorraClick
    end
  end
  object Button1: TButton
    Left = 182
    Top = 222
    Width = 84
    Height = 22
    Caption = 'Editar Datos'
    TabOrder = 4
    OnClick = Button1Click
  end
  object BitBtn1: TBitBtn
    Left = 471
    Top = 73
    Width = 25
    Height = 25
    Caption = '<--'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 471
    Top = 137
    Width = 25
    Height = 25
    Caption = '-->'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
    OnClick = BitBtn2Click
  end
  object dtgUserNiv: TwwDBGrid
    Left = 499
    Top = 24
    Width = 286
    Height = 194
    DisableThemesInTitle = False
    Selected.Strings = (
      'USERID'#9'15'#9'Usuario'
      'USERNOM'#9'25'#9'Descripci'#243'n'#9'F')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    DataSource = DM1.dsResol
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -12
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    ParentFont = False
    TabOrder = 7
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
  end
end
