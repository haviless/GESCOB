object fGestCob: TfGestCob
  Left = 199
  Top = 49
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Gesti'#243'n de Cobranzas por Cat. de Riesgo'
  ClientHeight = 522
  ClientWidth = 794
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
  object grpDetalles: TGroupBox
    Left = 3
    Top = 199
    Width = 784
    Height = 318
    TabOrder = 1
    object Label7: TLabel
      Left = 65
      Top = 129
      Width = 59
      Height = 18
      AutoSize = False
      Caption = 'Asignar a :'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 423
      Top = 20
      Width = 40
      Height = 17
      AutoSize = False
      Caption = 'Buscar : '
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object grbAsigCob: TGroupBox
      Left = 496
      Top = 134
      Width = 207
      Height = 42
      Enabled = False
      TabOrder = 4
      object BitPrint: TBitBtn
        Left = 112
        Top = 11
        Width = 90
        Height = 27
        Hint = 'Imprimir'
        Caption = 'Imprimir'
        TabOrder = 0
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
      object ChkAsigna: TCheckBox
        Left = 5
        Top = 16
        Width = 104
        Height = 17
        Caption = 'Asignar Cobrador'
        TabOrder = 1
        OnClick = ChkAsignaClick
      end
    end
    object Panel4: TPanel
      Left = 173
      Top = 144
      Width = 265
      Height = 23
      Caption = 'Panel1'
      Enabled = False
      TabOrder = 1
      object EdtCobrador: TEdit
        Left = 1
        Top = 0
        Width = 261
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
    object dblAsigCob: TwwDBLookupCombo
      Left = 64
      Top = 145
      Width = 109
      Height = 21
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'USERID'#9'10'#9'Usuario'#9'F'
        'USERNOM'#9'30'#9'Descripci'#243'n'#9'F')
      LookupTable = DM1.cdsAsoX
      LookupField = 'USERID'
      Options = [loColLines, loRowLines]
      Enabled = False
      ParentFont = False
      TabOrder = 0
      AutoDropDown = False
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      OnChange = dblAsigCobChange
    end
    object BitSalir: TBitBtn
      Left = 682
      Top = 287
      Width = 89
      Height = 26
      Cursor = crHandPoint
      Hint = 'Salir'
      Caption = '&Salir'
      TabOrder = 5
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
    object EdtBuscar: TEdit
      Left = 470
      Top = 13
      Width = 306
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnChange = EdtBuscarChange
      OnKeyPress = EdtBuscarKeyPress
    end
    object grbProcesos: TGroupBox
      Left = 299
      Top = 179
      Width = 229
      Height = 37
      Caption = 'Procesando Informaci'#243'n'
      TabOrder = 6
      Visible = False
      object prbAvances: TProgressBar
        Left = 4
        Top = 14
        Width = 220
        Height = 16
        TabOrder = 0
      end
    end
    object BitDist: TBitBtn
      Left = 509
      Top = 231
      Width = 163
      Height = 26
      Cursor = crHandPoint
      Caption = 'Distribuci'#243'n De Gesti'#243'n'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      Visible = False
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFCDCDCD0E0E0E2020202020201C1C1C4B4B4BEFEFEFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF545454B2B2B2ACACACACAC
        ACB7B7B7262626CECECEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB5
        6767BB6767828989D5D5D5C8C8C8C4C4C4D2D2D2242424CECECEFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB56868FFFFFF14141D818190B8B8C0F5F5
        F5FFFFFF262626F1F1F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB5
        6868FFFFFF7878268E8E0089893983838A7B7B7BDCDCDCFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB56868FFFFFFDCDCE31C1C2E2E2E362E2E
        2E2929294F4F4FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB8
        7070FFFFFF505050DBDBDBD2D2D2D2D2D2DDDDDD505050CACACAFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8E1414BF6F6F828989D2D2D2C5C5C5C0C0
        C0CACACA505050CACACAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB8
        7070FFFFFF14141D818190B8B8C0F5F5F5FEFEFE3B3B3BEFEFEFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB56868FFFFFF7878268E8E008989398383
        8A7B7B7BDADADAFFFFFFD4D4D40E0E0E2020202020201C1C1C4B4B4BF3FAFAB8
        6C6CFFFFFFDCDCE320203232323A3232322E2E2E535353EFEFEF666666B2B2B2
        ACACACACACACB7B7B7262626D2E1E1C07878FFFFFF545454B2B2B2ACACACACAC
        ACB7B7B7262626CECECE898989D5D5D5C8C8C8C4C4C4D2D2D2283131A4535392
        1919BF6F6F828989D5D5D5C8C8C8C4C4C4D2D2D2242424CECECE2F372F819081
        B8C0B8F5F5F5FFFFFF262626F1F9F9FFFFFFFFFFFF14141D818190B8B8C0F5F5
        F5FFFFFF262626F1F1F18F508F8700878239827B837B737373D1D1D1FFFFFFFF
        FFFFFFFFFF8080378787008282397B7B83737373D1D1D1FFFFFF}
    end
    object BitBloq: TBitBtn
      Left = 333
      Top = 287
      Width = 163
      Height = 26
      Cursor = crHandPoint
      Caption = 'Con Cuotas Bloqueadas'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
      OnClick = BitBloqClick
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
    object BitGesTel: TBitBtn
      Left = 161
      Top = 288
      Width = 163
      Height = 26
      Cursor = crHandPoint
      Caption = 'Cobranza x Teleahorro'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
      OnClick = BitGesTelClick
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000E7D6CE00525A
        524A4A2121212118181810182918104A4A4A524239424A4A524239424A4A5242
        39424A4A392921D6D6DE00737B84C6BD3931391000004A9CA584B5AD00848C52
        211810B5BD4A181810B5BD4A181810B5BD4A18105AF7FF392921008C8C523942
        A5A5A5A5A5A53921216BF7F77BEFE76BF7F773EFE76BEFF773EFE76BEFEF7BE7
        E763EFF773F7EF42313100848C735A52E7CED6EFD6CE31212973EFEF21F7FF8C
        ADA55ADEDE5AD6D684A5AD6BE7DE21F7FFA5C6C652DEDE4A3931008C8431636B
        21FFFF18FFFF4A21186BF7F731ADAD427B7B21524A18A5A54273736BEFEF31B5
        AD5A292918FFFF4A3131008484396B6373EFEF6BF7EF42182173F7EF31ADB552
        8484215A5A21ADAD4A737B73EFEF29B5BD63393918F7FF4A3131008484316B6B
        84B5AD94CECE4221216BF7F729B5AD4A7B7B215A5A18ADAD4A736B73EFEF29BD
        B563313918FFF74A313100848C316B6B9CC6C663F7F742182173F7F77B8C9431
        BDB539525A39B5B529A5AD73EFE77B949C29525231FFFF4A3129008C84396363
        73EFEF6BEFEF4A211829FFFF21FFFF21F7FF29FFFF29FFFF29FFF721F7F721FF
        FF21FFFF84FFF7423131008484007B7331F7FF29FFFF4A21295A9494B5949CAD
        A59CA5949CAD9C9CA59CA5AD9494A59CA5B59C9421636B4A4242008484426363
        7BEFE773EFEF4A292910636BFFFFFFFF6B6BFFC6C6EFBDBDFF6B63EFFFFFFF63
        63FFFFFF21736B4A424200848400737339FFFF31FFFF10424A216363FFFFFFF7
        6363F7FFFFF7635AF7D6D6FFBDB5F76B73FFFFFF186B6B4A4242007B738CB5B5
        39635A315A5ACEFFFF105A63FFFFFFF76B6BFFBDB5F7D6D6FF635AF7FFFFFF6B
        63FFFFFF217373393131DEC6C6006B6300737B007373007373001810FFFFFFF7
        6363F7FFFFF7635AF7CED6F7B5B5F76B6BFFFFFF000810DED6CEFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF736B6BFFFFFFFF6B6BFFC6C6FFD6D6FF6B63FFFFFFFF6B
        63FFFFFF73736BFFFFFFF7F7FFF7F7F7F7F7FFF7F7F7FFFFFF73737373737373
        8484737B84737B7B738484737373738484737373737373FFFFFF}
    end
    object dtgDetAsoCar: TwwDBGrid
      Left = 6
      Top = 41
      Width = 771
      Height = 237
      Cursor = crHandPoint
      DisableThemesInTitle = False
      Selected.Strings = (
        'CFC_F'#9'2'#9'Codigo'
        'CFCDES_F'#9'30'#9'Categoria De Riesgo'
        'ASOTIPID'#9'3'#9'Tipo De~Asociado'
        'ASOCODMOD'#9'10'#9'Codigo~Modular'
        'ASOAPENOM'#9'35'#9'Apellidos y Nombres'
        'SALDOS_FT'#9'13'#9'Saldo~Del Periodo'
        'SALDOS_FV'#9'13'#9'Saldo~Vencido'
        'CUOVEN'#9'10'#9'N'#176'Cuo.~Vencidas'
        'SALDOS_FP'#9'13'#9'Saldo~Pendiente'
        'CUOPEN'#9'10'#9'N'#176'Cuo.~Pendientes'
        'RECUPERADO'#9'13'#9'Importe~Recuperado'
        'SALDOS_T'#9'13'#9'Saldo Total~(Amo+Int+Gas)'
        'ESTDES'#9'16'#9'Situaci'#243'n~Actual'
        'MESTRA'#9'16'#9'Atraso(Meses)'#9'F'
        'VALCUO'#9'13'#9'Valor Cuota~Credito Otorg.'
        'SALCUO'#9'13'#9'Saldo del Valor~Cuota del Mes'
        'SALDIF'#9'13'#9'Saldo por pagar~Cuotas Diferidas')
      IniAttributes.Delimiter = ';;'
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      DataSource = DM1.dsMovCre
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -9
      Font.Name = 'Times New Roman'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowFooter, dgFooter3DCells]
      ParentFont = False
      TabOrder = 3
      TitleAlignment = taLeftJustify
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      TitleLines = 2
      TitleButtons = False
      OnDblClick = dtgDetAsoCarDblClick
    end
  end
  object GroupBox1: TGroupBox
    Left = 3
    Top = -4
    Width = 784
    Height = 206
    TabOrder = 0
    object dtgClfCar: TwwDBGrid
      Left = 6
      Top = 52
      Width = 513
      Height = 140
      Cursor = crHandPoint
      DisableThemesInTitle = False
      Selected.Strings = (
        'CFC'#9'2'#9'Codigo'
        'CFCDES'#9'30'#9'Categoria De Riesgo'
        'MOVIM'#9'10'#9'Numero~De Asociados'
        'SALDOS'#9'14'#9'Saldo~Del Periodo'
        'SALDOSV'#9'14'#9'Saldo~Vencido'
        'SALDOSP'#9'14'#9'Saldo~Pendiente'
        'RECUPERADO'#9'14'#9'Importes~Recuperado'
        'PENDIENTE'#9'14'#9'Saldo~Por Recuperar'#9'F'
        'VALCUO'#9'13'#9'Valor Cuota~Credito Otorg.'
        'SALCUO'#9'13'#9'Saldo del Valor~Cuota del Mes'
        'SALDIF'#9'13'#9'Saldo por pagar~Cuotas Diferidas')
      IniAttributes.Delimiter = ';;'
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      ShowVertScrollBar = False
      DataSource = DM1.dsModelo
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -9
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
      TitleLines = 2
      TitleButtons = False
      OnDblClick = dtgClfCarDblClick
    end
    object grbParametros: TGroupBox
      Left = 5
      Top = 5
      Width = 515
      Height = 46
      Caption = 'Periodo De Proceso'
      TabOrder = 1
      object lblNomMes: TLabel
        Left = 105
        Top = 19
        Width = 120
        Height = 18
        AutoSize = False
        Caption = 'DICIEMBRE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object BitProcesar: TBitBtn
        Left = 351
        Top = 16
        Width = 130
        Height = 26
        Cursor = crHandPoint
        Caption = 'Solo Mostrar'
        TabOrder = 0
        OnClick = BitProcesarClick
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          3333333333FFFFF3333333333700000733333333F777773FF3333333007F0F70
          0333333773373377FF3333300FFF7FFF003333773F3333377FF33300F0FFFFF0
          F00337737333F37377F33707FFFF0FFFF70737F33337F33337FF300FFFFF0FFF
          FF00773F3337F333377F30707FFF0FFF70707F733337F333737F300FFFF09FFF
          FF0077F33377F33337733707FF0F9FFFF70737FF3737F33F37F33300F0FF9FF0
          F003377F7337F373773333300FFF9FFF00333377FF37F3377FF33300007F9F70
          000337777FF7FF77773333703070007030733373777777737333333333330333
          333333333337FF33333333333330003333333333337773333333}
        NumGlyphs = 2
      end
      object dbsAnoIni: TwwDBSpinEdit
        Left = 4
        Top = 15
        Width = 58
        Height = 26
        Increment = 1.000000000000000000
        MaxValue = 2050.000000000000000000
        MinValue = 2004.000000000000000000
        Value = 2004.000000000000000000
        AutoFillDate = False
        AutoSelect = False
        AutoSize = False
        BorderStyle = bsNone
        Color = 10207162
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        LimitEditRect = True
        MaxLength = 4
        ParentFont = False
        TabOrder = 1
        UnboundDataType = wwDefault
      end
      object dbsMesIni: TwwDBSpinEdit
        Left = 65
        Top = 15
        Width = 36
        Height = 26
        Increment = 1.000000000000000000
        MaxValue = 12.000000000000000000
        MinValue = 1.000000000000000000
        Value = 1.000000000000000000
        AutoFillDate = False
        AutoSelect = False
        AutoSize = False
        BorderStyle = bsNone
        Color = 10207162
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        LimitEditRect = True
        MaxLength = 2
        ParentFont = False
        TabOrder = 2
        UnboundDataType = wwDefault
        UsePictureMask = False
        OnChange = dbsMesIniChange
      end
      object chkRecImp: TCheckBox
        Left = 208
        Top = 22
        Width = 133
        Height = 17
        Caption = 'Procesa Recuperaci'#243'n'
        TabOrder = 3
        OnClick = chkRecImpClick
      end
    end
    object grbProceso: TGroupBox
      Left = 131
      Top = 107
      Width = 229
      Height = 47
      Caption = 'Procesando Informaci'#243'n'
      TabOrder = 2
      Visible = False
      object lblPor: TLabel
        Left = 13
        Top = 31
        Width = 210
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = '0   De  0  Registros'
      end
      object prbAvance: TProgressBar
        Left = 4
        Top = 14
        Width = 220
        Height = 16
        TabOrder = 0
      end
    end
  end
  object grpDetalle: TGroupBox
    Left = 524
    Top = 1
    Width = 263
    Height = 201
    Caption = 'Criterios De Agrupaci'#243'n'
    Enabled = False
    TabOrder = 2
    object Label1: TLabel
      Left = 6
      Top = 13
      Width = 120
      Height = 18
      AutoSize = False
      Caption = 'Categorias De Riesgo'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 8
      Top = 96
      Width = 75
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
    object Label6: TLabel
      Left = 10
      Top = 134
      Width = 120
      Height = 14
      AutoSize = False
      Caption = 'Uses/Ugel'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object dblTipCalf: TwwDBLookupCombo
      Left = 5
      Top = 28
      Width = 35
      Height = 21
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'RESUMEID'#9'2'#9'Codigo'#9'F'
        'RESUMEDES'#9'36'#9'Descripci'#243'n'#9'F')
      LookupTable = DM1.cdsConcre
      LookupField = 'RESUMEID'
      Options = [loColLines, loRowLines]
      ParentFont = False
      TabOrder = 0
      AutoDropDown = False
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      OnChange = dblTipCalfChange
    end
    object Panel1: TPanel
      Left = 38
      Top = 28
      Width = 189
      Height = 23
      Caption = 'Panel1'
      Enabled = False
      TabOrder = 1
      object EdtDesCat: TEdit
        Left = 1
        Top = 0
        Width = 186
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
    object chkMontos: TCheckBox
      Left = 135
      Top = 8
      Width = 90
      Height = 17
      Caption = 'Montos(Capital)'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -9
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = chkMontosClick
    end
    object pnlMontos: TPanel
      Left = 6
      Top = 54
      Width = 198
      Height = 42
      BevelOuter = bvLowered
      Enabled = False
      TabOrder = 3
      object Label2: TLabel
        Left = 89
        Top = 18
        Width = 20
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
        Left = 15
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
        Left = 130
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
        Width = 84
        Height = 22
        BorderStyle = bsNone
        Color = 13165023
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
        OnExit = dbeMtoIniExit
        OnKeyPress = dbeMtoIniKeyPress
      end
      object dbeMtoFin: TwwDBEdit
        Left = 110
        Top = 16
        Width = 84
        Height = 22
        BorderStyle = bsNone
        Color = 13165023
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
        OnExit = dbeMtoFinExit
        OnKeyPress = dbeMtoFinKeyPress
      end
    end
    object BitMostrar: TBitBtn
      Left = 94
      Top = 176
      Width = 73
      Height = 23
      Cursor = crHandPoint
      Caption = 'Mostrar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = BitMostrarClick
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
    object Panel2: TPanel
      Left = 47
      Top = 110
      Width = 174
      Height = 24
      Caption = 'Panel1'
      Color = 13165023
      Enabled = False
      TabOrder = 5
      object EdtDpto: TEdit
        Left = 1
        Top = 0
        Width = 171
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
    object dblDpto: TwwDBLookupCombo
      Left = 8
      Top = 110
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
      LookupTable = DM1.cdsDFam
      LookupField = 'DPTOID'
      Options = [loColLines, loRowLines]
      ParentFont = False
      TabOrder = 6
      AutoDropDown = False
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      OnChange = dblDptoChange
    end
    object dblUses: TwwDBLookupCombo
      Left = 10
      Top = 147
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
      LookupTable = DM1.cdsTUSE
      LookupField = 'USEID'
      Options = [loColLines, loRowLines]
      Enabled = False
      ParentFont = False
      TabOrder = 7
      AutoDropDown = False
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      OnChange = dblUsesChange
    end
    object Panel3: TPanel
      Left = 53
      Top = 148
      Width = 202
      Height = 24
      Caption = 'Panel1'
      Color = 13165023
      Enabled = False
      TabOrder = 8
      object EdtDesUse: TEdit
        Left = 0
        Top = 0
        Width = 200
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
    object chkMstUses: TCheckBox
      Left = 87
      Top = 97
      Width = 103
      Height = 13
      Caption = 'Mostrar Uses/Ugel'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -9
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
      OnClick = chkMstUsesClick
    end
  end
  object DbDatGst01: TppDBPipeline
    DataSource = DM1.dsOfDes
    UserName = 'DbDatGst01'
    Left = 712
    Top = 368
  end
  object ppRepGest01: TppReport
    AutoStop = False
    DataPipeline = DbDatGst01
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
    Left = 688
    Top = 336
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'DbDatGst01'
    object ppHeaderBand20: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 51858
      mmPrintPosition = 0
      object ppLblCategoria: TppLabel
        UserName = 'LblCategoria'
        AutoSize = False
        Caption = 'CATEGORIA    :      DUDOSO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Roman 15cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 34131
        mmWidth = 71702
        BandType = 0
      end
      object ppLblTit01: TppLabel
        UserName = 'LblTit01'
        AutoSize = False
        Caption = 'CUADRO CONSOLIDADO DE DEUDORES POR CATEGORIA DE RIESGO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 11
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 1058
        mmTop = 14288
        mmWidth = 198702
        BandType = 0
      end
      object ppLabel405: TppLabel
        UserName = 'Label405'
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
      object ppLabel406: TppLabel
        UserName = 'Label406'
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
      object ppLabel407: TppLabel
        UserName = 'Label407'
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
      object ppLabel408: TppLabel
        UserName = 'Label408'
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
      object ppLabel409: TppLabel
        UserName = 'Label409'
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
      object ppSystemVariable32: TppSystemVariable
        UserName = 'SystemVariable32'
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
      object ppSystemVariable33: TppSystemVariable
        UserName = 'SystemVariable301'
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
      object ppSystemVariable34: TppSystemVariable
        UserName = 'SystemVariable34'
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
      object ppLabel410: TppLabel
        UserName = 'Label410'
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
      object ppLabel411: TppLabel
        UserName = 'Label4001'
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
      object ppLabel412: TppLabel
        UserName = 'Label412'
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
      object ppLblTit02: TppLabel
        UserName = 'LblTit02'
        AutoSize = False
        Caption = ' SETIEMBRE - 2004'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 1058
        mmTop = 19844
        mmWidth = 198702
        BandType = 0
      end
      object ppLine108: TppLine
        UserName = 'Line108'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 0
        mmTop = 39952
        mmWidth = 201877
        BandType = 0
      end
      object ppLine111: TppLine
        UserName = 'Line111'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 0
        mmTop = 50800
        mmWidth = 201877
        BandType = 0
      end
      object ppLabel416: TppLabel
        UserName = 'Label416'
        Caption = 'Codigo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 41804
        mmWidth = 10160
        BandType = 0
      end
      object ppLabel417: TppLabel
        UserName = 'Label417'
        Caption = 'Modular'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 0
        mmTop = 46302
        mmWidth = 11853
        BandType = 0
      end
      object ppLabel418: TppLabel
        UserName = 'Label418'
        Caption = 'Apellidos y Nombres'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 19050
        mmTop = 46567
        mmWidth = 32173
        BandType = 0
      end
      object ppLabel419: TppLabel
        UserName = 'Label419'
        Caption = 'Saldo del Periodo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 108479
        mmTop = 42598
        mmWidth = 22754
        BandType = 0
      end
      object ppLabel420: TppLabel
        UserName = 'Label420'
        Caption = 'Amo+Int+Gas'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 143140
        mmTop = 46567
        mmWidth = 17463
        BandType = 0
      end
      object ppLabel421: TppLabel
        UserName = 'Label4201'
        Caption = 'Cuotas'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 175684
        mmTop = 42069
        mmWidth = 10054
        BandType = 0
      end
      object ppLabel422: TppLabel
        UserName = 'Label422'
        Caption = 'Pendientes'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 175684
        mmTop = 46038
        mmWidth = 13758
        BandType = 0
      end
      object ppLabel423: TppLabel
        UserName = 'Label4202'
        Caption = 'Saldo Actual'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 143934
        mmTop = 42598
        mmWidth = 16669
        BandType = 0
      end
      object ppLabel424: TppLabel
        UserName = 'Label424'
        Caption = 'Solo Capital'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 115094
        mmTop = 46831
        mmWidth = 15610
        BandType = 0
      end
      object ppLblTit03: TppLabel
        UserName = 'LblTit03'
        AutoSize = False
        Caption = 'COBRANZA ASIGNADA  A  : SISTEMAS'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 1058
        mmTop = 25665
        mmWidth = 198702
        BandType = 0
      end
    end
    object ppDetailBand22: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 3704
      mmPrintPosition = 0
      object ppDBText188: TppDBText
        UserName = 'DBText188'
        DataField = 'ASOAPENOM'
        DataPipeline = DbDatGst01
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DbDatGst01'
        mmHeight = 3704
        mmLeft = 19315
        mmTop = 0
        mmWidth = 82021
        BandType = 4
      end
      object ppDBText187: TppDBText
        UserName = 'DBText187'
        DataField = 'ASOCODMOD'
        DataPipeline = DbDatGst01
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DbDatGst01'
        mmHeight = 3704
        mmLeft = 0
        mmTop = 0
        mmWidth = 18521
        BandType = 4
      end
      object ppDBText189: TppDBText
        UserName = 'DBText189'
        DataField = 'SALDOS_FT'
        DataPipeline = DbDatGst01
        DisplayFormat = '###,##0.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DbDatGst01'
        mmHeight = 3704
        mmLeft = 104246
        mmTop = 0
        mmWidth = 26988
        BandType = 4
      end
      object ppDBText190: TppDBText
        UserName = 'DBText190'
        DataField = 'SALDOS_T'
        DataPipeline = DbDatGst01
        DisplayFormat = '###,##0.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DbDatGst01'
        mmHeight = 3704
        mmLeft = 133615
        mmTop = 0
        mmWidth = 26988
        BandType = 4
      end
      object ppDBText191: TppDBText
        UserName = 'DBText1901'
        DataField = 'CUO_PEN'
        DataPipeline = DbDatGst01
        DisplayFormat = '###,##0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DbDatGst01'
        mmHeight = 3704
        mmLeft = 162719
        mmTop = 0
        mmWidth = 26988
        BandType = 4
      end
    end
    object ppFooterBand15: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppSummaryBand20: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 17198
      mmPrintPosition = 0
      object ppLabel403: TppLabel
        UserName = 'Label403'
        Caption = 'TOTALES'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 42069
        mmTop = 2117
        mmWidth = 24077
        BandType = 7
      end
      object ppLabel414: TppLabel
        UserName = 'Label414'
        AutoSize = False
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 67469
        mmTop = 2117
        mmWidth = 2910
        BandType = 7
      end
      object ppLine109: TppLine
        UserName = 'Line109'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 0
        mmTop = 265
        mmWidth = 201877
        BandType = 7
      end
      object ppDBCalc171: TppDBCalc
        UserName = 'DBCalc171'
        DataField = 'SALDOS_FT'
        DataPipeline = DbDatGst01
        DisplayFormat = '###,##0.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DbDatGst01'
        mmHeight = 4233
        mmLeft = 104246
        mmTop = 1852
        mmWidth = 26988
        BandType = 7
      end
      object ppDBCalc172: TppDBCalc
        UserName = 'DBCalc172'
        DataField = 'SALDOS_T'
        DataPipeline = DbDatGst01
        DisplayFormat = '###,##0.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DbDatGst01'
        mmHeight = 4233
        mmLeft = 133615
        mmTop = 1852
        mmWidth = 26988
        BandType = 7
      end
      object ppLabel415: TppLabel
        UserName = 'Label415'
        Caption = 'Registros'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 178859
        mmTop = 1852
        mmWidth = 15346
        BandType = 7
      end
      object ppDBCalc173: TppDBCalc
        UserName = 'DBCalc173'
        DataField = 'ASOCODMOD'
        DataPipeline = DbDatGst01
        DisplayFormat = '###,##0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'DbDatGst01'
        mmHeight = 4233
        mmLeft = 166688
        mmTop = 1852
        mmWidth = 10848
        BandType = 7
      end
      object ppLine110: TppLine
        UserName = 'Line110'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 0
        mmTop = 7144
        mmWidth = 201877
        BandType = 7
      end
    end
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 5000
    OnTimer = Timer1Timer
    Left = 139
    Top = 399
  end
  object RepBloq: TppReport
    AutoStop = False
    DataPipeline = DbBloq
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
    Template.FileName = 
      'D:\JUVER\TAREAS TERMINADAS\2011\Cobranzas\GESCOB\03 OPCION DE CO' +
      'BRANZAS A GESCOB\03 01 rep calif interna.rtm'
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    PreviewFormSettings.WindowState = wsMaximized
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 136
    Top = 440
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'DbBloq'
    object ppHeaderBand37: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 23019
      mmPrintPosition = 0
      object Titulo: TppLabel
        UserName = 'TitCuo1'
        AutoSize = False
        Caption = 
          'ASOCIADOS EN CALIFICACION DE CARTERA CON CUOTAS BLOQUEADAS AL : ' +
          'ENERO - 2011'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 265
        mmTop = 15610
        mmWidth = 202142
        BandType = 0
      end
      object ppLabel762: TppLabel
        UserName = 'Label762'
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
      object ppLabel763: TppLabel
        UserName = 'Label763'
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
      object ppLabel764: TppLabel
        UserName = 'Label764'
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
      object ppLabel765: TppLabel
        UserName = 'Label7001'
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
      object ppLabel766: TppLabel
        UserName = 'Label766'
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
        UserName = 'SystemVariable701'
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
      object ppLabel767: TppLabel
        UserName = 'Label767'
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
      object ppLabel768: TppLabel
        UserName = 'Label768'
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
      object ppLabel769: TppLabel
        UserName = 'Label769'
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
    end
    object ppDetailBand39: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 3704
      mmPrintPosition = 0
      object ppDBText306: TppDBText
        UserName = 'DBText306'
        DataField = 'ASOCODMOD'
        DataPipeline = DbBloq
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DbBloq'
        mmHeight = 3704
        mmLeft = 1852
        mmTop = 0
        mmWidth = 16933
        BandType = 4
      end
      object ppDBText307: TppDBText
        UserName = 'DBText307'
        DataField = 'ASOAPENOM'
        DataPipeline = DbBloq
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DbBloq'
        mmHeight = 3704
        mmLeft = 21431
        mmTop = 0
        mmWidth = 62177
        BandType = 4
      end
      object ppDBText308: TppDBText
        UserName = 'DBText308'
        DataField = 'SALDOS_FT'
        DataPipeline = DbBloq
        DisplayFormat = '###,###,###.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DbBloq'
        mmHeight = 3704
        mmLeft = 83873
        mmTop = 0
        mmWidth = 22490
        BandType = 4
      end
      object ppDBText311: TppDBText
        UserName = 'DBText311'
        DataField = 'SALDOS_T'
        DataPipeline = DbBloq
        DisplayFormat = '###,###,###.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DbBloq'
        mmHeight = 3704
        mmLeft = 107156
        mmTop = 0
        mmWidth = 20108
        BandType = 4
      end
      object ppDBText312: TppDBText
        UserName = 'DBText312'
        DataField = 'CUOVEN'
        DataPipeline = DbBloq
        DisplayFormat = '##0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DbBloq'
        mmHeight = 3704
        mmLeft = 127794
        mmTop = 0
        mmWidth = 10319
        BandType = 4
      end
      object ppDBText313: TppDBText
        UserName = 'DBText313'
        DataField = 'CUOPEN'
        DataPipeline = DbBloq
        DisplayFormat = '##0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DbBloq'
        mmHeight = 3704
        mmLeft = 138907
        mmTop = 0
        mmWidth = 10319
        BandType = 4
      end
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        DataField = 'VALCUO'
        DataPipeline = DbBloq
        DisplayFormat = '###,###,###.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DbBloq'
        mmHeight = 3704
        mmLeft = 149754
        mmTop = 0
        mmWidth = 16404
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        DataField = 'SALCUO'
        DataPipeline = DbBloq
        DisplayFormat = '###,###,###.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DbBloq'
        mmHeight = 3704
        mmLeft = 166952
        mmTop = 0
        mmWidth = 16404
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        DataField = 'SALDIF'
        DataPipeline = DbBloq
        DisplayFormat = '###,###,###.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DbBloq'
        mmHeight = 3704
        mmLeft = 184150
        mmTop = 0
        mmWidth = 16404
        BandType = 4
      end
    end
    object ppFooterBand32: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppSummaryBand37: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
      object ppLabel760: TppLabel
        UserName = 'Label760'
        Caption = 'Total  Por Categoria General :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 46038
        mmTop = 1588
        mmWidth = 37571
        BandType = 7
      end
      object ppDBCalc234: TppDBCalc
        UserName = 'DBCalc2'
        DataField = 'SALDOS_FT'
        DataPipeline = DbBloq
        DisplayFormat = '###,###,###,###.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DbBloq'
        mmHeight = 3704
        mmLeft = 83873
        mmTop = 1588
        mmWidth = 22490
        BandType = 7
      end
      object ppDBCalc235: TppDBCalc
        UserName = 'DBCalc235'
        DataField = 'SALDOS_T'
        DataPipeline = DbBloq
        DisplayFormat = '###,###,###,###.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DbBloq'
        mmHeight = 3704
        mmLeft = 107156
        mmTop = 1588
        mmWidth = 20108
        BandType = 7
      end
      object ppLine203: TppLine
        UserName = 'Line203'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 0
        mmTop = 794
        mmWidth = 202936
        BandType = 7
      end
      object ppLine204: TppLine
        UserName = 'Line204'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 0
        mmTop = 6879
        mmWidth = 202936
        BandType = 7
      end
    end
    object ppGroup42: TppGroup
      BreakName = 'CFC_F'
      DataPipeline = DbBloq
      OutlineSettings.CreateNode = True
      UserName = 'Group42'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'DbBloq'
      object ppGroupHeaderBand42: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 16404
        mmPrintPosition = 0
        object ppDBText304: TppDBText
          UserName = 'DBText304'
          DataField = 'CFCDES_F'
          DataPipeline = DbBloq
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Roman 15cpi'
          Font.Size = 8
          Font.Style = [fsBold, fsUnderline]
          Transparent = True
          DataPipelineName = 'DbBloq'
          mmHeight = 4233
          mmLeft = 1058
          mmTop = 1323
          mmWidth = 50536
          BandType = 3
          GroupNo = 0
        end
        object ppLabel739: TppLabel
          UserName = 'Label739'
          AutoSize = False
          Caption = 'Codigo Modular'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3969
          mmLeft = 794
          mmTop = 11377
          mmWidth = 20108
          BandType = 3
          GroupNo = 0
        end
        object ppLabel740: TppLabel
          UserName = 'Label740'
          AutoSize = False
          Caption = 'Apellidos y Nombres'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3969
          mmLeft = 21431
          mmTop = 11377
          mmWidth = 32279
          BandType = 3
          GroupNo = 0
        end
        object ppLabel746: TppLabel
          UserName = 'Label7401'
          AutoSize = False
          Caption = 'Saldo Del'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3969
          mmLeft = 91017
          mmTop = 7144
          mmWidth = 15346
          BandType = 3
          GroupNo = 0
        end
        object ppLabel751: TppLabel
          UserName = 'Label751'
          AutoSize = False
          Caption = 'Periodo'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3969
          mmLeft = 95515
          mmTop = 11377
          mmWidth = 10848
          BandType = 3
          GroupNo = 0
        end
        object ppLabel752: TppLabel
          UserName = 'Label752'
          AutoSize = False
          Caption = 'Saldo Total'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3969
          mmLeft = 108744
          mmTop = 7144
          mmWidth = 18521
          BandType = 3
          GroupNo = 0
        end
        object ppLabel753: TppLabel
          UserName = 'Label753'
          AutoSize = False
          Caption = 'Amo+Int+Gas'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3704
          mmLeft = 108744
          mmTop = 11377
          mmWidth = 18521
          BandType = 3
          GroupNo = 0
        end
        object ppLabel754: TppLabel
          UserName = 'Label754'
          AutoSize = False
          Caption = 'N'#176' Cuo.'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3969
          mmLeft = 127794
          mmTop = 7144
          mmWidth = 10319
          BandType = 3
          GroupNo = 0
        end
        object ppLabel756: TppLabel
          UserName = 'Label756'
          AutoSize = False
          Caption = 'Venc.'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3704
          mmLeft = 127794
          mmTop = 11377
          mmWidth = 10319
          BandType = 3
          GroupNo = 0
        end
        object ppLabel757: TppLabel
          UserName = 'Label757'
          AutoSize = False
          Caption = 'Pend.'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3704
          mmLeft = 139171
          mmTop = 11377
          mmWidth = 10054
          BandType = 3
          GroupNo = 0
        end
        object ppLabel758: TppLabel
          UserName = 'Label758'
          AutoSize = False
          Caption = 'N'#176' Cuo.'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3969
          mmLeft = 138642
          mmTop = 7144
          mmWidth = 10583
          BandType = 3
          GroupNo = 0
        end
        object ppLine200: TppLine
          UserName = 'Line200'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 794
          mmLeft = 0
          mmTop = 15610
          mmWidth = 202936
          BandType = 3
          GroupNo = 0
        end
        object ppLine201: TppLine
          UserName = 'Line2001'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 794
          mmLeft = 0
          mmTop = 6350
          mmWidth = 202936
          BandType = 3
          GroupNo = 0
        end
        object ppLabel1: TppLabel
          UserName = 'Label1'
          AutoSize = False
          Caption = 'Val.Cuota'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3969
          mmLeft = 151077
          mmTop = 7144
          mmWidth = 15081
          BandType = 3
          GroupNo = 0
        end
        object ppLabel2: TppLabel
          UserName = 'Label2'
          AutoSize = False
          Caption = 'Cred.Otorg.'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3704
          mmLeft = 151077
          mmTop = 11377
          mmWidth = 15081
          BandType = 3
          GroupNo = 0
        end
        object ppLabel3: TppLabel
          UserName = 'Label3'
          AutoSize = False
          Caption = 'Sal. Valor'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3969
          mmLeft = 168275
          mmTop = 7144
          mmWidth = 15081
          BandType = 3
          GroupNo = 0
        end
        object ppLabel4: TppLabel
          UserName = 'Label4'
          AutoSize = False
          Caption = 'Cuota Mes'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3704
          mmLeft = 168275
          mmTop = 11377
          mmWidth = 15081
          BandType = 3
          GroupNo = 0
        end
        object ppLabel5: TppLabel
          UserName = 'Label5'
          AutoSize = False
          Caption = 'Saldo pagar'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3969
          mmLeft = 184680
          mmTop = 7144
          mmWidth = 15875
          BandType = 3
          GroupNo = 0
        end
        object ppLabel6: TppLabel
          UserName = 'Label6'
          AutoSize = False
          Caption = 'Cuo.Dif.'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3704
          mmLeft = 184944
          mmTop = 11377
          mmWidth = 15610
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand42: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 6615
        mmPrintPosition = 0
        object ppLabel759: TppLabel
          UserName = 'Label759'
          Caption = 'Total  Por Categoria De Riesgo :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3175
          mmLeft = 42863
          mmTop = 1323
          mmWidth = 40746
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc204: TppDBCalc
          UserName = 'DBCalc1'
          DataField = 'SALDOS_FT'
          DataPipeline = DbBloq
          DisplayFormat = '###,###,###,###.#0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup42
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'DbBloq'
          mmHeight = 3704
          mmLeft = 83873
          mmTop = 1323
          mmWidth = 22490
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc206: TppDBCalc
          UserName = 'DBCalc206'
          DataField = 'SALDOS_T'
          DataPipeline = DbBloq
          DisplayFormat = '###,###,###,###.#0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup42
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'DbBloq'
          mmHeight = 3704
          mmLeft = 107156
          mmTop = 1323
          mmWidth = 20108
          BandType = 5
          GroupNo = 0
        end
        object ppLine202: TppLine
          UserName = 'Line202'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 794
          mmLeft = 0
          mmTop = 529
          mmWidth = 202936
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc1: TppDBCalc
          UserName = 'DBCalc3'
          DataField = 'VALCUO'
          DataPipeline = DbBloq
          DisplayFormat = '###,###,###,###.#0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup42
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'DbBloq'
          mmHeight = 3704
          mmLeft = 150019
          mmTop = 1323
          mmWidth = 16140
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc2: TppDBCalc
          UserName = 'DBCalc4'
          DataField = 'SALCUO'
          DataPipeline = DbBloq
          DisplayFormat = '###,###,###,###.#0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup42
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'DbBloq'
          mmHeight = 3704
          mmLeft = 167217
          mmTop = 1323
          mmWidth = 16140
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc3: TppDBCalc
          UserName = 'DBCalc5'
          DataField = 'SALDIF'
          DataPipeline = DbBloq
          DisplayFormat = '###,###,###,###.#0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup42
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'DbBloq'
          mmHeight = 3704
          mmLeft = 184150
          mmTop = 1323
          mmWidth = 16404
          BandType = 5
          GroupNo = 0
        end
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object DbBloq: TppDBPipeline
    DataSource = DM1.dsDetalle
    UserName = 'DbBloq'
    Left = 168
    Top = 440
  end
  object ppDesigner1: TppDesigner
    Caption = 'ReportBuilder'
    DataSettings.SessionType = 'BDESession'
    DataSettings.AllowEditSQL = False
    DataSettings.CollationType = ctASCII
    DataSettings.DatabaseType = dtParadox
    DataSettings.IsCaseSensitive = True
    DataSettings.SQLType = sqBDELocal
    Position = poScreenCenter
    Report = RepBloq
    IniStorageType = 'IniFile'
    IniStorageName = '($WINSYS)\RBuilder.ini'
    WindowHeight = 400
    WindowLeft = 100
    WindowTop = 50
    WindowWidth = 600
    Left = 179
    Top = 383
  end
end
