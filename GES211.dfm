object FLiberaGes: TFLiberaGes
  Left = 454
  Top = 420
  Width = 540
  Height = 250
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Liberar Gestor'
  Color = clBtnFace
  Constraints.MaxHeight = 250
  Constraints.MaxWidth = 540
  Constraints.MinHeight = 250
  Constraints.MinWidth = 540
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object pAsigna: TPanel
    Left = 0
    Top = 0
    Width = 524
    Height = 212
    Align = alClient
    TabOrder = 0
    object lblTipGest: TLabel
      Left = 104
      Top = 97
      Width = 50
      Height = 19
      Caption = 'Gestor'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -16
      Font.Name = 'MS Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Shape1: TShape
      Left = 12
      Top = 12
      Width = 507
      Height = 59
    end
    object Label8: TLabel
      Left = 27
      Top = 14
      Width = 96
      Height = 16
      Caption = 'Tipo de Gesti'#243'n'
      Color = clBtnHighlight
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object BitAsigna: TBitBtn
      Left = 296
      Top = 175
      Width = 100
      Height = 28
      Cursor = crHandPoint
      Caption = 'Procesar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = BitAsignaClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333FF33333333333330003FF3FFFFF3333777003000003333
        300077F777773F333777E00BFBFB033333337773333F7F33333FE0BFBF000333
        330077F3337773F33377E0FBFBFBF033330077F3333FF7FFF377E0BFBF000000
        333377F3337777773F3FE0FBFBFBFBFB039977F33FFFFFFF7377E0BF00000000
        339977FF777777773377000BFB03333333337773FF733333333F333000333333
        3300333777333333337733333333333333003333333333333377333333333333
        333333333333333333FF33333333333330003333333333333777333333333333
        3000333333333333377733333333333333333333333333333333}
      NumGlyphs = 2
    end
    object dblUserInt: TwwDBLookupCombo
      Left = 38
      Top = 118
      Width = 157
      Height = 28
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'USERID'#9'15'#9'Usuario'#9'F'
        'USERNOM'#9'25'#9'Descripci'#243'n'#9'F')
      LookupTable = DM1.cdsQry6
      LookupField = 'USERID'
      Options = [loColLines, loRowLines]
      Enabled = False
      ParentFont = False
      TabOrder = 1
      AutoDropDown = True
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = True
      OnChange = dblUserIntChange
      OnNotInList = dblUserIntNotInList
    end
    object Panel5: TPanel
      Left = 203
      Top = 116
      Width = 294
      Height = 29
      Caption = 'Panel1'
      Enabled = False
      TabOrder = 2
      object EdtUserNom: TEdit
        Left = 4
        Top = 3
        Width = 287
        Height = 24
        BevelKind = bkFlat
        BorderStyle = bsNone
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
      end
    end
    object BitSalir: TBitBtn
      Left = 415
      Top = 175
      Width = 100
      Height = 28
      Hint = 'Salir'
      Caption = '&Salir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
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
    object dblUserExt: TwwDBLookupCombo
      Left = 101
      Top = 118
      Width = 79
      Height = 28
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'USERID'#9'5'#9'Usuario'#9'F'
        'USERNOM'#9'25'#9'Descripci'#243'n'#9'F')
      LookupTable = DM1.cdsQry5
      LookupField = 'USERID'
      Options = [loColLines, loRowLines]
      Enabled = False
      ParentFont = False
      TabOrder = 4
      Visible = False
      AutoDropDown = False
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      OnChange = dblUserExtChange
    end
    object rdbInt: TRadioButton
      Left = 93
      Top = 40
      Width = 145
      Height = 17
      Caption = ' Interna'
      Checked = True
      Color = clBtnHighlight
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 5
      TabStop = True
      OnClick = rdbIntClick
    end
    object rdbExt: TRadioButton
      Left = 351
      Top = 40
      Width = 145
      Height = 13
      Caption = 'Externa'
      Color = clBtnHighlight
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 6
      OnClick = rdbExtClick
    end
  end
end
