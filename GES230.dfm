object fDistCart1: TfDistCart1
  Left = 269
  Top = 113
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Distribuci'#243'n / Asignaci'#243'n a Gestores de Cobranza'
  ClientHeight = 564
  ClientWidth = 802
  Color = 10207162
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Shape3: TShape
    Left = 5
    Top = 1
    Width = 380
    Height = 39
    Brush.Color = 10207162
  end
  object Label11: TLabel
    Left = 23
    Top = 13
    Width = 45
    Height = 16
    Caption = 'Tipo : '
    Color = 10207162
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 230
    Width = 805
    Height = 338
    TabOrder = 0
    object dtgCartera: TwwDBGrid
      Left = 1
      Top = 36
      Width = 801
      Height = 245
      Cursor = crHandPoint
      DisableThemesInTitle = False
      Selected.Strings = (
        'PERIODO'#9'6'#9'Periodo'
        'PRIORIDAD'#9'25'#9'Prioridad~Gesti'#243'n'
        'USUARIO'#9'10'#9'Asignado A'
        'ASOAPENOM'#9'46'#9'Apellidos y Nombres'
        'SALTOT'#9'15'#9'Saldo~Total'
        'CUOTOT'#9'4'#9'N'#176'~Cuo~Tot'
        'SALVEN'#9'14'#9'Saldo~Vencido'
        'CUOVEN'#9'4'#9'N'#176'~Cuo~Ven'
        'SALPEN'#9'14'#9'Saldo~No~Vencido'
        'CUOPEN'#9'4'#9'N'#176'~Cuo~Pen'
        'DIASTRANS'#9'6'#9'Original'#9'F'#9'Antigue.Deuda'
        'DIASTRANSACT'#9'6'#9'Actual'#9'F'#9'Antigue.Deuda')
      IniAttributes.Delimiter = ';;'
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      DataSource = DM1.dsMovCre
      Font.Charset = ANSI_CHARSET
      Font.Color = clInfoText
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowFooter, dgFooter3DCells]
      ParentFont = False
      TabOrder = 5
      TitleAlignment = taLeftJustify
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      TitleLines = 3
      TitleButtons = False
      OnDrawDataCell = dtgCarteraDrawDataCell
      OnDrawFooterCell = dtgCarteraDrawFooterCell
      OnDrawTitleCell = dtgCarteraDrawTitleCell
      PaintOptions.ActiveRecordColor = 13165023
    end
    object BitSalir: TBitBtn
      Left = 718
      Top = 301
      Width = 80
      Height = 26
      Hint = 'Salir'
      Caption = '&Salir'
      TabOrder = 6
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
    object pAsigna: TPanel
      Left = 132
      Top = 283
      Width = 580
      Height = 49
      ParentColor = True
      TabOrder = 0
      object lblTipGest: TLabel
        Left = 8
        Top = 3
        Width = 193
        Height = 13
        AutoSize = False
        Caption = 'Tipo de Gesti'#243'n : '
      end
      object BitAsigna: TBitBtn
        Left = 371
        Top = 17
        Width = 97
        Height = 26
        Cursor = crHandPoint
        Caption = 'Asignar Bloque'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
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
        Left = 7
        Top = 20
        Width = 107
        Height = 21
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
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
        AutoDropDown = False
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = False
        OnChange = dblUserIntChange
      end
      object dblUserExt: TwwDBLookupCombo
        Left = 47
        Top = 20
        Width = 67
        Height = 21
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'USERID'#9'5'#9'Usuario'#9'F'
          'USERNOM'#9'25'#9'Descripci'#243'n'#9'F')
        LookupTable = DM1.cdsQry5
        LookupField = 'USERID'
        Options = [loColLines, loRowLines]
        Enabled = False
        ParentFont = False
        TabOrder = 2
        Visible = False
        AutoDropDown = False
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = False
        OnChange = dblUserExtChange
      end
      object Panel5: TPanel
        Left = 121
        Top = 20
        Width = 241
        Height = 23
        Caption = 'Panel1'
        Enabled = False
        TabOrder = 3
        object EdtUserNom: TEdit
          Left = 2
          Top = 0
          Width = 237
          Height = 22
          BevelKind = bkFlat
          BorderStyle = bsNone
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
        end
      end
      object ChkIndidual: TCheckBox
        Left = 368
        Top = 4
        Width = 97
        Height = 14
        Caption = 'Individual'
        TabOrder = 4
      end
      object bbtnAsignaUno: TBitBtn
        Left = 483
        Top = 17
        Width = 88
        Height = 26
        Cursor = crHandPoint
        Caption = 'Asignar Uno'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
        OnClick = bbtnAsignaUnoClick
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          33333333FF33333333FF333993333333300033377F3333333777333993333333
          300033F77FFF3333377739999993333333333777777F3333333F399999933333
          33003777777333333377333993333333330033377F3333333377333993333333
          3333333773333333333F333333333333330033333333F33333773333333C3333
          330033333337FF3333773333333CC333333333FFFFF77FFF3FF33CCCCCCCCCC3
          993337777777777F77F33CCCCCCCCCC3993337777777777377333333333CC333
          333333333337733333FF3333333C333330003333333733333777333333333333
          3000333333333333377733333333333333333333333333333333}
        NumGlyphs = 2
      end
    end
    object grpProgress: TGroupBox
      Left = 360
      Top = 129
      Width = 89
      Height = 97
      Caption = 'En Progreso'
      TabOrder = 1
      Visible = False
      object Gauge1: TGauge
        Left = 7
        Top = 15
        Width = 76
        Height = 73
        ForeColor = clNavy
        Kind = gkPie
        Progress = 0
      end
    end
    object Panel6: TPanel
      Left = 3
      Top = 8
      Width = 418
      Height = 25
      Enabled = False
      ParentColor = True
      TabOrder = 2
      object Label10: TLabel
        Left = 111
        Top = 7
        Width = 63
        Height = 12
        AutoSize = False
        Caption = 'Monto Minimo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -9
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object Label9: TLabel
        Left = 255
        Top = 6
        Width = 63
        Height = 12
        AutoSize = False
        Caption = 'Monto Maximo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -9
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object lblRotulo: TLabel
        Left = 6
        Top = 6
        Width = 99
        Height = 12
        AutoSize = False
        Caption = 'SALDOS'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -9
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        Visible = False
      end
      object dbeMonMin: TwwDBEdit
        Left = 183
        Top = 3
        Width = 66
        Height = 21
        BorderStyle = bsNone
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        ParentFont = False
        TabOrder = 0
        UnboundDataType = wwDefault
        UnboundAlignment = taRightJustify
        WantReturns = False
        WordWrap = False
      end
      object dbeMonMax: TwwDBEdit
        Left = 327
        Top = 3
        Width = 86
        Height = 21
        BorderStyle = bsNone
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        ParentFont = False
        TabOrder = 1
        UnboundDataType = wwDefault
        UnboundAlignment = taRightJustify
        WantReturns = False
        WordWrap = False
      end
    end
    object BitBuscar: TBitBtn
      Left = 574
      Top = 9
      Width = 82
      Height = 23
      Hint = 'Buscar Deudor'
      Caption = 'Buscar'
      TabOrder = 3
      OnClick = BitBuscarClick
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E000000000000000000009E3737C07F7F
        C07B7BC27D7DAD6767C78383B56F6FBB7777B36D6DB36D6DC27D7DC07B7BBC77
        77BC7777C07F7F9E3737C08080FFFFFFE3EAEAEDF3F3DFE6E6D4DBDBA8B0B065
        6D6DDFE6E6B3B9B9FAFFFFE8EFEFFFFFFFFFFFFFFFFFFFC08080BC7878FFFFFF
        D2D2D2B0B0B07777770B0B0B82828227273019191D7E7E7E2A2A2AA3A3A3D0D0
        D0FFFFFFFFFFFFBC7878C58282A5ADADB3B3B3ADADADC0C0C0FFFFFFFFFFFFCE
        D287FEFFE9FFFFFF9A9A9A858585B5B5B5797979FFFFFFBE7A7AC27E7ED9E1E1
        949494EFEFEFF7F7FAE7FFE39A0B007E5F00734F00C06F26FFFFFFECECECDCDC
        DC848484CCD4D4B57070BE7A7AFFFFFFBDBDBDC5C5C5FFFFFFC40B00748F005B
        5F26919D2FA15300E99E80EEF5F9000000000000878E8E8D4848D28F8F474F4F
        0000005F5F5FDDE4EF9F5900F5FF9D626A7E000022809F00F1A78D7B83870000
        00838383BDC5C5CB87879F5A5AC7CFCF5D5D5D0F0F0F000B0F691B00AB2C3D6D
        1F1F732A2FCB1D00691F28000000838383C3C3C3C4CACAC58282A05A5AC3CACA
        FFFFFF2C2C2C4E4E4E00080D000000000000000000000000000000858585CACA
        CA969696F4FAFAAB6666B16C6CDAE1E19292929D9D9D313131FFFFFF848484E3
        E3E3FAFAFAA6A6A6979797B5B5B56F6F6FCDCDCDD3D9D9C48080C48080FDFFFF
        E5E5E5D8D8D8B7B7B7828282616161A9A9A99292925F5F5F2828287E7E7EBEBE
        BEC5C5C5EBF1F1C07C7C965050EEF5F5FFFFFFF0F0F0FBFBFBD3D3D3C8C8C89B
        9B9B9191914B4B4B9D9D9DC8C8C8C3C3C3A2A2A2F0F7F7C07C7CCE8B8B636B6B
        A1A1A1FFFFFFF9F9F9FFFFFFF9F9F9EDEDEDDFDFDFFFFFFFD2D2D24C4C4C3F3F
        3F333333CAD2D2C48080C07C7CFFFFFF0000000000008C8C8CD7D7D7EAEAEADB
        DBDB8C8C8C3A3A3A000000000000000000000000FEFFFFC07C7CC08080FFFFFF
        FFFFFF8E96960000000000000000000000000000000000000000000B14148E96
        96FFFFFFFFFFFFC080809E3737C07F7FC07B7BCC8888D08C8C6D24244B00004F
        0000450000AA6565DF9C9CD59292CA8787C07B7BC07F7F9E3737}
    end
    object grpBusAso: TGroupBox
      Left = 573
      Top = 37
      Width = 223
      Height = 46
      Caption = 'Buscar Asociado'
      TabOrder = 4
      Visible = False
      object z2bbtnBuscar: TfcShapeBtn
        Left = 371
        Top = 11
        Width = 32
        Height = 31
        Hint = 'Buscar Asociado'
        Color = 10207162
        DitherColor = clWhite
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          33033333333333333F7F3333333333333000333333333333F777333333333333
          000333333333333F777333333333333000333333333333F77733333333333300
          033333333FFF3F777333333700073B703333333F7773F77733333307777700B3
          33333377333777733333307F8F8F7033333337F333F337F3333377F8F9F8F773
          3333373337F3373F3333078F898F870333337F33F7FFF37F333307F99999F703
          33337F377777337F3333078F898F8703333373F337F33373333377F8F9F8F773
          333337F3373337F33333307F8F8F70333333373FF333F7333333330777770333
          333333773FF77333333333370007333333333333777333333333}
        NumGlyphs = 2
        Options = [boFocusable]
        ParentClipping = True
        ParentShowHint = False
        RoundRectBias = 25
        ShadeStyle = fbsHighlight
        Shape = bsEllipse
        ShowHint = True
        TabOrder = 0
        TabStop = True
        TextOptions.Alignment = taCenter
        TextOptions.VAlignment = vaVCenter
      end
      object edtBuscar: TEdit
        Left = 5
        Top = 15
        Width = 212
        Height = 24
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        OnChange = edtBuscarChange
        OnKeyPress = edtBuscarKeyPress
      end
    end
    object GroupBox2: TGroupBox
      Left = 3
      Top = 281
      Width = 128
      Height = 51
      Caption = 'Asignado A'
      TabOrder = 7
      object Shape4: TShape
        Left = 5
        Top = 16
        Width = 23
        Height = 9
        Brush.Color = clMaroon
      end
      object Label21: TLabel
        Left = 33
        Top = 14
        Width = 74
        Height = 13
        Caption = '01 - Telefonica '
      end
      object Shape5: TShape
        Left = 5
        Top = 34
        Width = 23
        Height = 9
        Brush.Color = clTeal
      end
      object Label22: TLabel
        Left = 33
        Top = 30
        Width = 74
        Height = 13
        Caption = '02 - Domiciliaria'
      end
    end
  end
  object grpDetalle: TGroupBox
    Left = 2
    Top = 40
    Width = 801
    Height = 195
    TabOrder = 1
    object Shape1: TShape
      Left = 687
      Top = 56
      Width = 102
      Height = 60
    end
    object Label5: TLabel
      Left = 11
      Top = 7
      Width = 161
      Height = 14
      AutoSize = False
      Caption = 'Orig'#233'n del Asociados'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 239
      Top = 7
      Width = 120
      Height = 15
      AutoSize = False
      Caption = 'Uses/Ugel'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 597
      Top = 8
      Width = 120
      Height = 18
      AutoSize = False
      Caption = 'Tipo de Asociado'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 699
      Top = 58
      Width = 75
      Height = 13
      Caption = 'Tipo de Gesti'#243'n'
      Color = clBtnHighlight
      ParentColor = False
    end
    object Label16: TLabel
      Left = 86
      Top = 54
      Width = 79
      Height = 14
      AutoSize = False
      Caption = 'Departamento'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object Label17: TLabel
      Left = 279
      Top = 54
      Width = 79
      Height = 14
      AutoSize = False
      Caption = 'Provincia'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object Label18: TLabel
      Left = 446
      Top = 54
      Width = 79
      Height = 14
      AutoSize = False
      Caption = 'Distrito'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object Bevel1: TBevel
      Left = 579
      Top = 7
      Width = 3
      Height = 41
    end
    object Bevel2: TBevel
      Left = 3
      Top = 49
      Width = 794
      Height = 3
    end
    object Bevel3: TBevel
      Left = 3
      Top = 132
      Width = 674
      Height = 3
    end
    object Label1: TLabel
      Left = 4
      Top = 170
      Width = 72
      Height = 15
      AutoSize = False
      Caption = 'Prioridad'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object Bevel4: TBevel
      Left = 677
      Top = 53
      Width = 3
      Height = 138
    end
    object Shape2: TShape
      Left = 686
      Top = 172
      Width = 107
      Height = 19
    end
    object lblRegistros: TLabel
      Left = 690
      Top = 175
      Width = 97
      Height = 13
      Alignment = taCenter
      AutoSize = False
      Caption = '0 Registros'
      Color = clCaptionText
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Bevel5: TBevel
      Left = 355
      Top = 135
      Width = 3
      Height = 58
    end
    object BitMostrar: TBitBtn
      Left = 686
      Top = 122
      Width = 104
      Height = 46
      Cursor = crHandPoint
      Caption = 'Mostrar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      OnClick = BitMostrarClick
      Glyph.Data = {
        42080000424D4208000000000000420000002800000020000000200000000100
        1000030000000008000000000000000000000000000000000000007C0000E003
        00001F000000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F000018631863
        1863186318631863186318631863186318631863186318631042104210420000
        000010421863FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F0000FF7F1863
        1863186318631863186300400040186318631863186310421042104200000000
        10421863FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F0000FF7F1863
        18631863186318631863007C0040186318631863104210421042000000001042
        1863FF7F0000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F0000FF7F1863
        1863186318631863186318631863186318631042104210420000000010421863
        FF7F00000000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F0000FF7F1863
        18631863186318631863007C004018631042104210420000000010421863FF7F
        000000000000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F0000FF7F1863
        18631863186318631863007C00401042104210420000000010421863FF7F0000
        000000001863FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F000018631863
        18631863186318631863007C1042104210420000000010421863FF7F00000000
        000018631863FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F000010421042
        104210421042104210421042104210420000000010421863FF7F000000000000
        186318631863FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F10421042000010421042
        10421042104210421042104210420000000000000000FF7F0000000000001863
        186318631863FF7FFF7FFF7FFF7FFF7FFF7F1042104210421042000010421042
        1042104210421042104210420000000000001042000000000000000018631863
        186318631863FF7FFF7FFF7FFF7FFF7F10421042104200000000000010421863
        FF7F186310420000000000000000000010421863FF7F00000000186318631863
        186318631863FF7FFF7FFF7F1042104210420000000000000000000000000000
        104200000000000000000000000010421863FF7F000000000040186318631863
        186318631863FF7FFF7F10421042104200000000000000001863186318631863
        007C007C004000000000000000000000FF7F00000000007C0040186318631863
        186318631863FF7F104210420000000000000000186318631863186318631863
        007C007C004018631863000000000000000000000000007C0040186318631863
        186318631863FF7F104200000000000000001863186318631863186318631863
        007C007C007C0040186318630000000000000000007C007C0040186318631863
        1863186318631042104200000000000018631863186318631863186318631863
        1863007C007C007C004018631863000000000000007C007C1863186318631863
        18631863186310420000000000000000FF7F1863186318631863186318631863
        18631863007C007C007C00401863186300000000000018631863186318631863
        18631863186310420000000000000000FF7F1863186318631863186318631863
        186318631863007C007C007C0040186300001042000018631863186318631863
        186318631863000000000000FF7F0000FF7F1863186318631863004000400040
        1863186318631863007C007C0040186318630000000000001863186318631863
        186318631863000010420000FF7F0000186318631863186318631F7C007C0040
        1863186318631863007C007C0040186318630000104200001863FF7FFF7FFF7F
        FF7FFF7F1863000010420000FF7F0000104210421042186318631F7C007C007C
        004018631863007C007C007C0040186318630000104200000000000000000000
        000000000000000010420000FF7F00001042104210421042186318631F7C007C
        007C00400040007C007C007C004018631863000010420000FF7FFF7FFF7FFF7F
        FF7FFF7FFF7F000010420000FF7F000000000000000000000000000018631F7C
        007C007C007C007C007C1F7C186318631863000010420000FF7FFF7FFF7FFF7F
        FF7FFF7FFF7F000000000000FF7FFF7F0000104210421863FF7F000018631863
        1F7C1F7C1F7C1F7C1F7C1863186318631863000000000000FF7FFF7FFF7FFF7F
        FF7FFF7FFF7FFF7F000010420000FF7FFF7F0000104218631863000018631863
        18631863186318631863186318631863000010420000FF7FFF7FFF7FFF7FFF7F
        FF7FFF7FFF7FFF7F000000000000FF7FFF7FFF7F000010421863000018631863
        18631863186318631863186318631863000000000000FF7FFF7FFF7FFF7FFF7F
        FF7FFF7FFF7FFF7FFF7F000000000000FF7FFF7FFF7F00001863000018631863
        1863186318631863186318631863000000000000FF7FFF7FFF7FFF7FFF7FFF7F
        FF7FFF7FFF7FFF7FFF7FFF7F000000000000FF7FFF7FFF7F000000001863FF7F
        FF7FFF7FFF7FFF7F18631863000000000000FF7FFF7FFF7FFF7FFF7FFF7FFF7F
        FF7FFF7FFF7FFF7FFF7FFF7FFF7F000000000000FF7FFF7FFF7F000000000000
        00000000000000000000000000000000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
        FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F0000000000000000FF7FFF7FFF7FFF7F
        FF7FFF7FFF7F0000000000000000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
        FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F000000000000000010421863FF7F
        186310420000000000000000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
        FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F00000000000000001042
        0000000000000000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
        FF7FFF7FFF7F}
    end
    object Panel2: TPanel
      Left = 49
      Top = 21
      Width = 180
      Height = 24
      Caption = 'Panel1'
      Color = 13165023
      Enabled = False
      TabOrder = 3
      object EdtOfDes: TEdit
        Left = 1
        Top = 0
        Width = 177
        Height = 23
        BevelKind = bkFlat
        BorderStyle = bsNone
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
      end
    end
    object dblOriOto: TwwDBLookupCombo
      Left = 11
      Top = 21
      Width = 39
      Height = 21
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'OFDESID'#9'3'#9'Codigo'#9'F'
        'OFDESNOM'#9'27'#9'Descripci'#243'n'#9'F')
      LookupField = 'OFDESID'
      Options = [loColLines, loRowLines]
      ParentFont = False
      TabOrder = 0
      AutoDropDown = False
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      OnChange = dblOriOtoChange
    end
    object dblUses: TwwDBLookupCombo
      Left = 240
      Top = 21
      Width = 41
      Height = 21
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'USEID'#9'3'#9'Codigo'#9'F'
        'USENOM'#9'41'#9'Descripci'#243'n'#9'F')
      LookupField = 'USEID'
      Options = [loColLines, loRowLines]
      Enabled = False
      ParentFont = False
      TabOrder = 1
      AutoDropDown = False
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      OnChange = dblUsesChange
    end
    object Panel3: TPanel
      Left = 282
      Top = 21
      Width = 276
      Height = 24
      Caption = 'Panel1'
      Color = 13165023
      Enabled = False
      TabOrder = 4
      object EdtDesUse: TEdit
        Left = 2
        Top = 0
        Width = 273
        Height = 23
        BevelKind = bkFlat
        BorderStyle = bsNone
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
      end
    end
    object dblTipAso: TwwDBLookupCombo
      Left = 597
      Top = 23
      Width = 39
      Height = 21
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'ASOTIPID'#9'3'#9'Codigo'#9'F'
        'ASOTIPDES'#9'20'#9'Descripci'#243'n'#9'F')
      LookupField = 'ASOTIPID'
      Options = [loColLines, loRowLines]
      ParentFont = False
      TabOrder = 2
      AutoDropDown = False
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      OnChange = dblTipAsoChange
    end
    object Panel4: TPanel
      Left = 636
      Top = 22
      Width = 144
      Height = 24
      Caption = 'Panel1'
      Color = 13165023
      Enabled = False
      TabOrder = 5
      object EdtTipAso: TEdit
        Left = 2
        Top = 0
        Width = 140
        Height = 23
        BevelKind = bkFlat
        BorderStyle = bsNone
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        OnChange = EdtTipAsoChange
      end
    end
    object rdbInt: TRadioButton
      Left = 707
      Top = 76
      Width = 70
      Height = 17
      Caption = 'Interna'
      Color = clBtnHighlight
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 7
      OnClick = rdbIntClick
    end
    object rdbExt: TRadioButton
      Left = 707
      Top = 97
      Width = 70
      Height = 13
      Caption = 'Externa'
      Color = clBtnHighlight
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 8
      OnClick = rdbExtClick
    end
    object dblcDpto: TwwDBLookupCombo
      Left = 85
      Top = 68
      Width = 39
      Height = 21
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'DPTOID'#9'3'#9'Codigo'#9'F'
        'DPTODES'#9'27'#9'Descripci'#243'n'#9'F')
      LookupTable = DM1.cdsDpto
      LookupField = 'DPTOID'
      Options = [loColLines, loRowLines]
      ParentFont = False
      TabOrder = 9
      AutoDropDown = False
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      OnChange = dblcDptoChange
    end
    object Panel1: TPanel
      Left = 126
      Top = 68
      Width = 114
      Height = 24
      Caption = 'Panel1'
      Color = 13165023
      Enabled = False
      TabOrder = 10
      object edtDpto: TEdit
        Left = 1
        Top = 0
        Width = 110
        Height = 23
        BevelKind = bkFlat
        BorderStyle = bsNone
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
      end
    end
    object dblcProvin: TwwDBLookupCombo
      Left = 239
      Top = 68
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
      TabOrder = 11
      AutoDropDown = False
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      OnChange = dblcProvinChange
    end
    object Panel7: TPanel
      Left = 278
      Top = 68
      Width = 167
      Height = 24
      Caption = 'Panel1'
      Color = 13165023
      Enabled = False
      TabOrder = 13
      object edtProvin: TEdit
        Left = 1
        Top = 0
        Width = 165
        Height = 23
        BevelKind = bkFlat
        BorderStyle = bsNone
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
      end
    end
    object dblcDist: TwwDBLookupCombo
      Left = 445
      Top = 68
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
      TabOrder = 15
      AutoDropDown = False
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      OnChange = dblcDistChange
    end
    object Panel8: TPanel
      Left = 484
      Top = 68
      Width = 193
      Height = 24
      Caption = 'Panel1'
      Color = 13165023
      Enabled = False
      TabOrder = 17
      object edtDist: TEdit
        Left = 1
        Top = 0
        Width = 190
        Height = 23
        BevelKind = bkFlat
        BorderStyle = bsNone
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
      end
    end
    object dblcPrioridad: TwwDBLookupCombo
      Left = 60
      Top = 167
      Width = 95
      Height = 21
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'CODIGO_PRIORIDAD'#9'8'#9'Codigo'#9'F'
        'DESCRIPCION_PRIORIDAD'#9'45'#9'Descripci'#243'n'#9'F')
      LookupTable = DM1.cdsUPro
      LookupField = 'CODIGO_PRIORIDAD'
      Options = [loColLines, loRowLines]
      MaxLength = 1
      ParentFont = False
      TabOrder = 19
      AutoDropDown = False
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      OnChange = dblcPrioridadChange
    end
    object Panel9: TPanel
      Left = 156
      Top = 167
      Width = 196
      Height = 24
      Caption = 'Panel1'
      Color = 13165023
      Enabled = False
      TabOrder = 12
      object EdtPrioridad: TEdit
        Left = 1
        Top = 1
        Width = 194
        Height = 23
        BevelKind = bkFlat
        BorderStyle = bsNone
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
      end
    end
    object rgRefinanciados: TRadioGroup
      Left = 373
      Top = 136
      Width = 292
      Height = 50
      Caption = 'Estado'
      Columns = 3
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ItemIndex = 0
      Items.Strings = (
        'Todos'
        'Normal'
        'Refinanciados')
      ParentFont = False
      TabOrder = 14
      OnClick = rgRefinanciadosClick
    end
    object cbCobertura: TCheckBox
      Left = 356
      Top = 55
      Width = 84
      Height = 11
      Caption = 'Coberturado'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      TabOrder = 16
      OnClick = cbCoberturaClick
    end
    object rgUbigeo: TRadioGroup
      Left = 2
      Top = 52
      Width = 81
      Height = 79
      ItemIndex = 0
      Items.Strings = (
        'Domicilio'
        'Colegio')
      TabOrder = 18
      OnClick = rgUbigeoClick
    end
    object pnlColegio: TPanel
      Left = 86
      Top = 92
      Width = 590
      Height = 37
      BevelOuter = bvNone
      Color = 10207162
      TabOrder = 20
      object Label12: TLabel
        Left = 4
        Top = -1
        Width = 79
        Height = 14
        AutoSize = False
        Caption = 'Colegio'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object edtColegio: TEdit
        Left = 512
        Top = 13
        Width = 73
        Height = 23
        BevelKind = bkFlat
        BorderStyle = bsNone
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        Visible = False
      end
      object dblcColegio: TwwDBLookupComboDlg
        Left = 4
        Top = 13
        Width = 502
        Height = 21
        Cursor = crHandPoint
        GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
        GridColor = clWhite
        GridTitleAlignment = taLeftJustify
        Caption = 'Buscar Colegio'
        MaxWidth = 0
        MaxHeight = 209
        Selected.Strings = (
          'COD_REP'#9'5'#9'C'#243'digo'#9'F'
          'NOM_REP'#9'60'#9'Apellidos y Nombres'#9'F'
          'DPTODES'#9'30'#9'Departamento'#9'F'
          'CIUDDES'#9'30'#9'Ciudad'#9'F')
        MaxLength = 5
        TabOrder = 1
        AutoDropDown = False
        ShowButton = True
        AllowClearKey = True
        OnChange = dblcColegioChange
      end
    end
  end
  object rdbSeleccion: TRadioGroup
    Left = 75
    Top = 2
    Width = 301
    Height = 33
    Color = 10207162
    Columns = 2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ItemIndex = 0
    Items.Strings = (
      '01-Telef'#243'nica'
      '02-Domiciliaria')
    ParentColor = False
    ParentFont = False
    TabOrder = 2
    OnClick = rdbSeleccionClick
  end
  object rgTipCam: TRadioGroup
    Left = 408
    Top = 0
    Width = 185
    Height = 41
    Caption = 'Tipo de Campa'#241'a'
    Columns = 2
    ItemIndex = 0
    Items.Strings = (
      'Normal'
      'Campa'#241'a')
    TabOrder = 3
    OnClick = rgTipCamClick
  end
  object Panel10: TPanel
    Left = 712
    Top = 336
    Width = 361
    Height = 161
    Caption = 'Se pidio Retirar estos campos'
    TabOrder = 4
    Visible = False
    object Bevel6: TBevel
      Left = 220
      Top = 101
      Width = 3
      Height = 90
    end
    object chkSaldo: TCheckBox
      Left = 7
      Top = 120
      Width = 104
      Height = 11
      Caption = 'Por Saldo Vencido'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = chkSaldoClick
    end
    object chkSaldoTotal: TCheckBox
      Left = 121
      Top = 120
      Width = 94
      Height = 11
      Caption = 'Por Saldo Total'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = chkSaldoTotalClick
    end
    object pnlMontos: TPanel
      Left = 5
      Top = 146
      Width = 206
      Height = 42
      BevelOuter = bvSpace
      Enabled = False
      ParentColor = True
      TabOrder = 3
      object Label2: TLabel
        Left = 95
        Top = 18
        Width = 19
        Height = 15
        Alignment = taCenter
        AutoSize = False
        Caption = 'De'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -9
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 7
        Top = 2
        Width = 73
        Height = 13
        AutoSize = False
        Caption = 'Monto Inicial'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -9
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
        Left = 129
        Top = 2
        Width = 63
        Height = 12
        AutoSize = False
        Caption = 'Monto Final'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -9
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object dbeMtoIni: TwwDBEdit
        Left = 5
        Top = 16
        Width = 85
        Height = 22
        BorderStyle = bsNone
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        ParentFont = False
        TabOrder = 0
        UnboundDataType = wwDefault
        UnboundAlignment = taRightJustify
        WantReturns = False
        WordWrap = False
        OnChange = dbeMtoIniChange
        OnExit = dbeMtoIniExit
        OnKeyPress = dbeMtoIniKeyPress
      end
      object dbeMtoFin: TwwDBEdit
        Left = 115
        Top = 16
        Width = 85
        Height = 22
        BorderStyle = bsNone
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        ParentFont = False
        TabOrder = 1
        UnboundDataType = wwDefault
        UnboundAlignment = taRightJustify
        WantReturns = False
        WordWrap = False
        OnChange = dbeMtoFinChange
        OnExit = dbeMtoFinExit
        OnKeyPress = dbeMtoFinKeyPress
      end
    end
    object ChkRango: TCheckBox
      Left = 227
      Top = 120
      Width = 116
      Height = 11
      Caption = 'N'#250'mero de Registros'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object pRango: TPanel
      Left = 228
      Top = 145
      Width = 115
      Height = 42
      ParentColor = True
      TabOrder = 4
      object Label14: TLabel
        Left = 9
        Top = 21
        Width = 46
        Height = 13
        AutoSize = False
        Caption = 'Registros'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -9
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object Label15: TLabel
        Left = 8
        Top = 8
        Width = 34
        Height = 13
        AutoSize = False
        Caption = 'N'#250'mero'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -9
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object SpFin_R: TSpinEdit
        Left = 56
        Top = 10
        Width = 53
        Height = 22
        MaxLength = 4
        MaxValue = 9999
        MinValue = 1
        TabOrder = 0
        Value = 100
        OnChange = SpFin_RChange
      end
    end
  end
  object RepFallecidos: TppReport
    AutoStop = False
    DataPipeline = DbConAsig
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Carta'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 279401
    PrinterSetup.mmPaperWidth = 215900
    PrinterSetup.PaperSize = 1
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    PreviewFormSettings.WindowState = wsMaximized
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 64
    Top = 432
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'DbConAsig'
    object ppHeaderBand43: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 40217
      mmPrintPosition = 0
      object ppLabel870: TppLabel
        UserName = 'LblTitCal3'
        AutoSize = False
        Caption = 'ASOCIADOS FALLECIDOS CON SALDO PENDIENTE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 794
        mmTop = 17198
        mmWidth = 198702
        BandType = 0
      end
      object ppLabel880: TppLabel
        UserName = 'Label882'
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
      object ppLabel881: TppLabel
        UserName = 'Label883'
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
      object ppLabel892: TppLabel
        UserName = 'Label884'
        Caption = 'Fecha  '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 163513
        mmTop = 0
        mmWidth = 8890
        BandType = 0
      end
      object ppLabel893: TppLabel
        UserName = 'Label885'
        Caption = 'Hora     '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 163513
        mmTop = 4498
        mmWidth = 11430
        BandType = 0
      end
      object ppLabel894: TppLabel
        UserName = 'Label886'
        Caption = 'Pag     '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 163777
        mmTop = 8996
        mmWidth = 10160
        BandType = 0
      end
      object ppSystemVariable89: TppSystemVariable
        UserName = 'SystemVariable86'
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
      object ppSystemVariable90: TppSystemVariable
        UserName = 'SystemVariable87'
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
      object ppSystemVariable91: TppSystemVariable
        UserName = 'SystemVariable88'
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
      object ppLabel895: TppLabel
        UserName = 'Label887'
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
      object ppLabel896: TppLabel
        UserName = 'Label5303'
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
      object ppLabel897: TppLabel
        UserName = 'Label889'
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
      object lblTit01: TppLabel
        UserName = 'Label890'
        AutoSize = False
        Caption = 'INFORMACION AL XX/XX/XXXXX'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 794
        mmTop = 23283
        mmWidth = 198438
        BandType = 0
      end
      object ppLine220: TppLine
        UserName = 'Line220'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 31750
        mmWidth = 198967
        BandType = 0
      end
      object ppLine222: TppLine
        UserName = 'Line2201'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 39423
        mmWidth = 198967
        BandType = 0
      end
      object ppLabel901: TppLabel
        UserName = 'Label1'
        Caption = 'Cat.Riesgo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 0
        mmTop = 35454
        mmWidth = 15610
        BandType = 0
      end
      object ppLabel903: TppLabel
        UserName = 'Label903'
        Caption = 'Ori.Otorgamiento'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 18256
        mmTop = 35719
        mmWidth = 21696
        BandType = 0
      end
      object ppLabel904: TppLabel
        UserName = 'Label904'
        Caption = 'Cod.Modular'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 43127
        mmTop = 35719
        mmWidth = 16140
        BandType = 0
      end
      object ppLabel906: TppLabel
        UserName = 'Label906'
        Caption = 'Apellidos y Nombres   '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 61648
        mmTop = 35719
        mmWidth = 28575
        BandType = 0
      end
      object ppLabel905: TppLabel
        UserName = 'Label905'
        Caption = 'Tip.Aso'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 113771
        mmTop = 35719
        mmWidth = 9525
        BandType = 0
      end
      object ppLabel902: TppLabel
        UserName = 'Label2'
        Caption = 'Saldo Total'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 129117
        mmTop = 35719
        mmWidth = 14288
        BandType = 0
      end
      object ppLabel908: TppLabel
        UserName = 'Label908'
        Caption = 'Saldo Pendiente'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 145257
        mmTop = 35719
        mmWidth = 20902
        BandType = 0
      end
      object ppLabel907: TppLabel
        UserName = 'Label907'
        Caption = 'Saldo Vencido'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 169598
        mmTop = 35719
        mmWidth = 18256
        BandType = 0
      end
      object ppLabel909: TppLabel
        UserName = 'Label909'
        Caption = 'Cuotas'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 189442
        mmTop = 35719
        mmWidth = 8996
        BandType = 0
      end
    end
    object ppDetailBand46: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 3704
      mmPrintPosition = 0
      object ppDBText354: TppDBText
        UserName = 'DBText348'
        DataField = 'ASOTIPID'
        DataPipeline = DbConAsig
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DbConAsig'
        mmHeight = 3704
        mmLeft = 116417
        mmTop = 0
        mmWidth = 4498
        BandType = 4
      end
      object ppDBText355: TppDBText
        UserName = 'DBText349'
        DataField = 'SALTOT'
        DataPipeline = DbConAsig
        DisplayFormat = '###,##0.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DbConAsig'
        mmHeight = 3704
        mmLeft = 122238
        mmTop = 0
        mmWidth = 21431
        BandType = 4
      end
      object ppDBText356: TppDBText
        UserName = 'DBText350'
        DataField = 'SALPEN'
        DataPipeline = DbConAsig
        DisplayFormat = '###,##0.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DbConAsig'
        mmHeight = 3704
        mmLeft = 144727
        mmTop = 0
        mmWidth = 21431
        BandType = 4
      end
      object ppDBText357: TppDBText
        UserName = 'DBText3501'
        DataField = 'SALVEN'
        DataPipeline = DbConAsig
        DisplayFormat = '###,##0.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DbConAsig'
        mmHeight = 3704
        mmLeft = 166952
        mmTop = 0
        mmWidth = 21431
        BandType = 4
      end
      object ppDBText361: TppDBText
        UserName = 'DBText361'
        DataField = 'ASOCODMOD'
        DataPipeline = DbConAsig
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DbConAsig'
        mmHeight = 3704
        mmLeft = 42863
        mmTop = 0
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText353: TppDBText
        UserName = 'DBText353'
        DataField = 'ASOAPENOM'
        DataPipeline = DbConAsig
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DbConAsig'
        mmHeight = 3704
        mmLeft = 61383
        mmTop = 0
        mmWidth = 53446
        BandType = 4
      end
      object ppDBText358: TppDBText
        UserName = 'DBText3502'
        DataField = 'CUOTOT'
        DataPipeline = DbConAsig
        DisplayFormat = '###,##0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DbConAsig'
        mmHeight = 3704
        mmLeft = 189707
        mmTop = 0
        mmWidth = 8467
        BandType = 4
      end
      object ppDBText359: TppDBText
        UserName = 'DBText359'
        DataField = 'CFCDES_F'
        DataPipeline = DbConAsig
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DbConAsig'
        mmHeight = 3704
        mmLeft = 0
        mmTop = 0
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText360: TppDBText
        UserName = 'DBText360'
        DataField = 'OFDESNOM'
        DataPipeline = DbConAsig
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DbConAsig'
        mmHeight = 3704
        mmLeft = 18256
        mmTop = 0
        mmWidth = 23548
        BandType = 4
      end
    end
    object ppFooterBand38: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppSummaryBand43: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 31485
      mmPrintPosition = 0
      object ppDBCalc273: TppDBCalc
        UserName = 'DBCalc273'
        DataField = 'SALTOT'
        DataPipeline = DbConAsig
        DisplayFormat = '###,###,##0.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DbConAsig'
        mmHeight = 3175
        mmLeft = 122238
        mmTop = 1852
        mmWidth = 21430
        BandType = 7
      end
      object ppDBCalc274: TppDBCalc
        UserName = 'DBCalc274'
        DataField = 'SALPEN'
        DataPipeline = DbConAsig
        DisplayFormat = '###,###,##0.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DbConAsig'
        mmHeight = 3440
        mmLeft = 144727
        mmTop = 1852
        mmWidth = 21430
        BandType = 7
      end
      object ppDBCalc275: TppDBCalc
        UserName = 'DBCalc275'
        DataField = 'SALVEN'
        DataPipeline = DbConAsig
        DisplayFormat = '###,###,##0.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DbConAsig'
        mmHeight = 3175
        mmLeft = 166952
        mmTop = 1852
        mmWidth = 21430
        BandType = 7
      end
      object ppDBCalc276: TppDBCalc
        UserName = 'DBCalc276'
        DataField = 'ASOID'
        DataPipeline = DbConAsig
        DisplayFormat = '###,##0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'DbConAsig'
        mmHeight = 3175
        mmLeft = 73819
        mmTop = 1852
        mmWidth = 23548
        BandType = 7
      end
      object ppLine221: TppLine
        UserName = 'Line218'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 529
        mmWidth = 198967
        BandType = 7
      end
      object ppLine225: TppLine
        UserName = 'Line225'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 6615
        mmWidth = 198967
        BandType = 7
      end
      object ppLabel899: TppLabel
        UserName = 'Label899'
        AutoSize = False
        Caption = 'Total General    : '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 30956
        mmTop = 1323
        mmWidth = 30956
        BandType = 7
      end
      object ppLabel900: TppLabel
        UserName = 'Label900'
        AutoSize = False
        Caption = 'Asociados.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 98954
        mmTop = 1588
        mmWidth = 17198
        BandType = 7
      end
    end
  end
  object DbConAsig: TppDBPipeline
    DataSource = DM1.dsQry
    UserName = 'DbOriOto1'
    Left = 8
    Top = 440
  end
end
