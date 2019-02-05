object FControlarImpresionCartas: TFControlarImpresionCartas
  Left = 60
  Top = 82
  Width = 1162
  Height = 610
  Caption = 'Controlar Impresion de Cartas'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 361
    Top = 0
    Width = 6
    Height = 572
    Beveled = True
    MinSize = 200
  end
  object pnlCabecera: TPanel
    Left = 0
    Top = 0
    Width = 361
    Height = 572
    Align = alLeft
    BevelOuter = bvNone
    ParentColor = True
    TabOrder = 0
    object dtgCabecera: TwwDBGrid
      Left = 0
      Top = 49
      Width = 361
      Height = 523
      Cursor = crHandPoint
      DisableThemesInTitle = False
      Selected.Strings = (
        'USUARIO'#9'12'#9'Usuario~De Gesti'#243'n'
        'FECHA'#9'10'#9'Fecha~De Gesti'#243'n'
        'HORA'#9'8'#9'Hora~De Gesti'#243'n'
        'DESCRIPCION'#9'16'#9'Tipo~De Gesti'#243'n'
        'DESCRIPCIONDET'#9'40'#9'Resultado~De Gesti'#243'n'
        'DETOBS'#9'30'#9'Gesti'#243'n Realizada'#9'F')
      IniAttributes.Delimiter = ';;'
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      Align = alClient
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowFooter, dgFooter3DCells]
      ParentFont = False
      TabOrder = 0
      TitleAlignment = taLeftJustify
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clBlack
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      TitleLines = 2
      TitleButtons = False
      OnEnter = dtgCabeceraEnter
    end
    object pnlCabeceraFiltro: TPanel
      Left = 0
      Top = 0
      Width = 361
      Height = 49
      Align = alTop
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 1
      object lblPeriodo: TLabel
        Left = 8
        Top = 12
        Width = 153
        Height = 20
        Caption = 'Periodo : YYYYMM'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object btnNuevo: TBitBtn
        Left = 176
        Top = 10
        Width = 81
        Height = 28
        Caption = 'Nuevo'
        TabOrder = 0
        OnClick = btnNuevoClick
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
      end
    end
  end
  object pnlDetalle: TPanel
    Left = 367
    Top = 0
    Width = 779
    Height = 572
    Align = alClient
    BevelOuter = bvNone
    ParentColor = True
    TabOrder = 1
    object pnlDetalleFiltro: TPanel
      Left = 0
      Top = 0
      Width = 779
      Height = 186
      Align = alTop
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 0
      object Label7: TLabel
        Left = 3
        Top = 1
        Width = 35
        Height = 13
        Caption = 'Colegio'
      end
      object btnFiltrar: TBitBtn
        Left = 609
        Top = 116
        Width = 98
        Height = 66
        Hint = 'Filtrar Datos'
        Caption = 'Buscar'
        TabOrder = 0
        OnClick = btnFiltrarClick
        Glyph.Data = {
          E6040000424DE604000000000000360000002800000014000000140000000100
          180000000000B0040000C40E0000C40E00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5656604747000D0D0BFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF42425CFFFF001A1A0DFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFEEEEF0696987CCCC443F3F00CDCDDEFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFEEEEF064646BFFFF81E5E565A5A547353500CCCCD7FFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF50
          506FFFFF7CFFFF81E7E75CABAB67A3A345383800D3D3E3FFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9E9EC575763FFFF89FFFF
          92FFFF96E2E26BBBBB70A7A771A8A849262600D4D4E4FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF676769FFFF84EEEE79F0F089EEEE87
          C8C85AA9A95F96965D99995BA7A73E444400D3D3D6FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF00000698985F73735816162A1818265656637C7C8783
          838B303037121220191900454500000000D4D4DEFFFFFFFFFFFFFFFFFFFFFFFF
          FBFBFF1F1F0D5A5A003737009696A2E9E9E9EFEFEFD9D9D9B5B5B5C8C8C88E8E
          8E85858A4444078080008181003D3D00CCCCD7FFFFFFFFFFFFF9F9FE3A3A1288
          88009494004D4D38DADADED8D8D8CACACAABABABACACACF1F1F1424242B5B5B5
          1B1B339A9A008787008F8F00424200D1D1D8FFFFFFECECF31E1E009595006262
          00818190B7B7B7A9A9A9D1D1D1D6D6D6D4D4D4E4E4E44E4E4EABABABBBBBC10B
          0B009393008B8B005A5A00A0A0ABFFFFFFFFFFFF737370707000242400C5C5CA
          AEAEAED7D7D7DADADAD3D3D3DADADADCDCDC747474D5D5D5A5A5A76262636C6C
          007575004B4B32FDFDFFFFFFFFFFFFFFFFFFFF666673737379CBCBCBC9C9C9EF
          EFEFBFBFBFC1C1C1F0F0F0373737FCFCFCD5D5D5A0A0A08484893D3D09727285
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF424242E1E1E1D3D3D3E9E9E9A8A8A8BBBB
          BBBCBCBCC3C3C3242424F2F2F2E6E6E6C5C5C5AAAAAA2B2B31FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFA9A9A9B0B0B0EBEBEBDFDFDFFFFFFFBDBDBD4B4B4B5A5A5A
          000000D2D2D2EDEDEDEEEEEEF8F8F8CCCCCC606060B5B5B5FFFFFFFFFFFFFFFF
          FFFFFFFF7A7A7A7777770606062828281A1A1A737373AFAFAFACACACFFFFFFFF
          FFFF9393937A7A7A6565654545455E5E5E323232FFFFFFFFFFFFFFFFFFF3F3F3
          3939396E6E6EB1B1B1AFAFAFACACACC5C5C5ACACAC1C1C1C3D3D3D484848C9C9
          C9BEBEBEF4F4F4FFFFFFE2E2E2484848E8E8E8FFFFFFFFFFFFFDFDFD4848483B
          3B3BA7A7A7AAAAAAA8A8A8D9D9D9EAEAEAF3F3F3EEEEEEFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF626262FAFAFAFFFFFFFFFFFFFFFFFFFFFFFFCACACA2B2B
          2B7D7D7D818181E1E1E1F7F7F7F4F4F4EBEBEBFFFFFFE9E9E9BCBCBCCBCBCB30
          3030474747FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA0A0A0
          A2A2A24444444646464545454E4E4E4949497C7C7CA5A5A5969696FFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF}
      end
      object rgTipoCartera: TRadioGroup
        Left = 4
        Top = 3
        Width = 117
        Height = 86
        Caption = 'Tipo de Cartera'
        ItemIndex = 0
        Items.Strings = (
          'Est'#225'ndar'
          'Temprana'
          'Contenci'#243'n'
          'Recuperaci'#243'n')
        TabOrder = 1
        OnClick = rgTipoCarteraClick
      end
      object gbGestionRealizada: TGroupBox
        Left = 123
        Top = 3
        Width = 480
        Height = 86
        Caption = 'Gesti'#243'n Realizada'
        TabOrder = 2
        object pnlGestor: TPanel
          Left = 6
          Top = 36
          Width = 299
          Height = 38
          BevelOuter = bvNone
          ParentColor = True
          TabOrder = 3
          object Label1: TLabel
            Left = 3
            Top = 1
            Width = 31
            Height = 13
            Caption = 'Gestor'
          end
          object cboGestor: TwwDBLookupComboDlg
            Left = 3
            Top = 15
            Width = 293
            Height = 21
            Cursor = crHandPoint
            GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
            GridColor = clWhite
            GridTitleAlignment = taLeftJustify
            Caption = 'Lookup'
            MaxWidth = 0
            MaxHeight = 209
            Style = csDropDownList
            MaxLength = 5
            TabOrder = 0
            AutoDropDown = False
            ShowButton = True
            AllowClearKey = True
            OnChange = cboGestorChange
          end
        end
        object rgCompromiso: TRadioGroup
          Left = 306
          Top = 34
          Width = 166
          Height = 39
          Caption = 'Compromiso'
          Columns = 2
          ItemIndex = 0
          Items.Strings = (
            'Vencido'
            'No Vencido')
          TabOrder = 0
          OnClick = rgCompromisoClick
        end
        object chbxGestionado: TCheckBox
          Left = 307
          Top = 15
          Width = 97
          Height = 17
          Caption = 'Gestionado'
          TabOrder = 1
          OnClick = chbxGestionadoClick
        end
        object chbxAsignado: TCheckBox
          Left = 10
          Top = 15
          Width = 71
          Height = 17
          Caption = 'Asignado'
          TabOrder = 2
          OnClick = chbxAsignadoClick
        end
      end
      object rgUbigeoTodo: TGroupBox
        Left = 4
        Top = 90
        Width = 599
        Height = 91
        Caption = 'Ubigeo'
        TabOrder = 3
        object rgTipoUbigeo: TRadioGroup
          Left = 6
          Top = 11
          Width = 75
          Height = 75
          ItemIndex = 0
          Items.Strings = (
            'Domicilio'
            'Colegio')
          TabOrder = 0
          OnClick = rgTipoUbigeoClick
        end
        object pnlUbigeo: TPanel
          Left = 82
          Top = 9
          Width = 513
          Height = 47
          BevelOuter = bvNone
          ParentColor = True
          TabOrder = 1
          object pnlDepartamento: TPanel
            Left = -1
            Top = 4
            Width = 134
            Height = 41
            BevelOuter = bvNone
            ParentColor = True
            TabOrder = 0
            object Label6: TLabel
              Left = 3
              Top = 1
              Width = 67
              Height = 13
              Caption = 'Departamento'
            end
            object cboDepartamento: TwwDBLookupComboDlg
              Left = 3
              Top = 15
              Width = 126
              Height = 21
              Cursor = crHandPoint
              GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
              GridColor = clWhite
              GridTitleAlignment = taLeftJustify
              Caption = 'Lookup'
              MaxWidth = 0
              MaxHeight = 209
              Style = csDropDownList
              MaxLength = 5
              TabOrder = 0
              AutoDropDown = False
              ShowButton = True
              AllowClearKey = True
              OnChange = cboDepartamentoChange
            end
          end
          object pnlProvincia: TPanel
            Left = 131
            Top = 3
            Width = 148
            Height = 41
            BevelOuter = bvNone
            ParentColor = True
            TabOrder = 1
            object Label3: TLabel
              Left = 3
              Top = 1
              Width = 44
              Height = 13
              Caption = 'Provincia'
            end
            object cboProvincia: TwwDBLookupComboDlg
              Left = 3
              Top = 15
              Width = 142
              Height = 21
              Cursor = crHandPoint
              GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
              GridColor = clWhite
              GridTitleAlignment = taLeftJustify
              Caption = 'Lookup'
              MaxWidth = 0
              MaxHeight = 209
              Style = csDropDownList
              MaxLength = 5
              TabOrder = 0
              AutoDropDown = False
              ShowButton = True
              AllowClearKey = True
              OnChange = cboProvinciaChange
            end
          end
          object pnlDistrito: TPanel
            Left = 279
            Top = 2
            Width = 218
            Height = 41
            BevelOuter = bvNone
            ParentColor = True
            TabOrder = 2
            object Label4: TLabel
              Left = 3
              Top = 1
              Width = 32
              Height = 13
              Caption = 'Distrito'
            end
            object cboDistrito: TwwDBLookupComboDlg
              Left = 3
              Top = 15
              Width = 211
              Height = 21
              Cursor = crHandPoint
              GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
              GridColor = clWhite
              GridTitleAlignment = taLeftJustify
              Caption = 'Lookup'
              MaxWidth = 0
              MaxHeight = 209
              Style = csDropDownList
              MaxLength = 5
              TabOrder = 0
              AutoDropDown = False
              ShowButton = True
              AllowClearKey = True
              OnChange = cboDistritoChange
            end
          end
        end
        object pnlColegio: TPanel
          Left = 279
          Top = 50
          Width = 309
          Height = 40
          BevelOuter = bvNone
          ParentColor = True
          TabOrder = 2
          object Label5: TLabel
            Left = 3
            Top = 1
            Width = 35
            Height = 13
            Caption = 'Colegio'
          end
          object cboColegio: TwwDBLookupComboDlg
            Left = 3
            Top = 15
            Width = 302
            Height = 21
            Cursor = crHandPoint
            GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
            GridColor = clWhite
            GridTitleAlignment = taLeftJustify
            Caption = 'Lookup'
            MaxWidth = 0
            MaxHeight = 209
            Style = csDropDownList
            MaxLength = 5
            TabOrder = 0
            AutoDropDown = False
            ShowButton = True
            AllowClearKey = True
            OnChange = cboColegioChange
          end
        end
        object pnlCenPo: TPanel
          Left = 82
          Top = 50
          Width = 199
          Height = 40
          BevelOuter = bvNone
          Caption = 'pnlCenPo'
          ParentColor = True
          TabOrder = 3
          object Label9: TLabel
            Left = 3
            Top = 1
            Width = 73
            Height = 13
            Caption = 'Centro Poblado'
          end
          object cboCenPo: TwwDBLookupComboDlg
            Left = 3
            Top = 15
            Width = 190
            Height = 21
            Cursor = crHandPoint
            GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
            GridColor = clWhite
            GridTitleAlignment = taLeftJustify
            Caption = 'Lookup'
            MaxWidth = 0
            MaxHeight = 209
            Style = csDropDownList
            MaxLength = 5
            TabOrder = 0
            AutoDropDown = False
            ShowButton = True
            AllowClearKey = True
            OnChange = cboCenPoChange
          end
        end
      end
    end
    object pnlDetalleControles: TPanel
      Left = 0
      Top = 536
      Width = 779
      Height = 36
      Align = alBottom
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 1
      DesignSize = (
        779
        36)
      object lblCantRegistros: TLabel
        Left = 8
        Top = 13
        Width = 119
        Height = 13
        Caption = 'xx Registros encontrados'
      end
      object btnGrabar: TBitBtn
        Left = 508
        Top = 5
        Width = 81
        Height = 28
        Anchors = [akTop, akRight]
        Caption = 'Grabar'
        TabOrder = 0
        OnClick = btnGrabarClick
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
      end
      object btnImprimir: TBitBtn
        Left = 593
        Top = 5
        Width = 81
        Height = 28
        Anchors = [akTop, akRight]
        Caption = 'Imprimir'
        TabOrder = 1
        OnClick = btnImprimirClick
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
      object btnSalir: TBitBtn
        Left = 692
        Top = 5
        Width = 81
        Height = 28
        Anchors = [akTop, akRight]
        Caption = 'Salir'
        TabOrder = 2
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
      object btnAnular: TBitBtn
        Left = 424
        Top = 5
        Width = 81
        Height = 28
        Anchors = [akTop, akRight]
        Caption = 'Anular'
        TabOrder = 3
        OnClick = btnAnularClick
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
    object dtgDetalle: TwwDBGrid
      Left = 0
      Top = 290
      Width = 779
      Height = 246
      Cursor = crHandPoint
      DisableThemesInTitle = False
      Selected.Strings = (
        'USUARIO'#9'12'#9'Usuario~De Gesti'#243'n'
        'FECHA'#9'10'#9'Fecha~De Gesti'#243'n'
        'HORA'#9'8'#9'Hora~De Gesti'#243'n'
        'DESCRIPCION'#9'16'#9'Tipo~De Gesti'#243'n'
        'DESCRIPCIONDET'#9'40'#9'Resultado~De Gesti'#243'n'
        'DETOBS'#9'30'#9'Gesti'#243'n Realizada'#9'F')
      IniAttributes.Delimiter = ';;'
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      Align = alClient
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowFooter, dgFooter3DCells]
      ParentFont = False
      TabOrder = 2
      TitleAlignment = taLeftJustify
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clBlack
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      TitleLines = 3
      TitleButtons = False
    end
    object gbDatosImpresion: TGroupBox
      Left = 0
      Top = 186
      Width = 779
      Height = 104
      Align = alTop
      Caption = 'Datos Necesarios para la Impresi'#243'n de Cartas'
      TabOrder = 3
      object pnlOficina: TPanel
        Left = 6
        Top = 15
        Width = 704
        Height = 39
        BevelOuter = bvNone
        ParentColor = True
        TabOrder = 0
        object Label2: TLabel
          Left = 3
          Top = 1
          Width = 149
          Height = 13
          Caption = 'Oficina con direcci'#243'n registrada'
        end
        object cboOficina: TwwDBLookupComboDlg
          Left = 3
          Top = 15
          Width = 158
          Height = 21
          Cursor = crHandPoint
          GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
          GridColor = clWhite
          GridTitleAlignment = taLeftJustify
          Caption = 'Lookup'
          MaxWidth = 0
          MaxHeight = 209
          Style = csDropDownList
          MaxLength = 5
          TabOrder = 0
          AutoDropDown = False
          ShowButton = True
          AllowClearKey = True
          OnChange = cboOficinaChange
        end
        object edDireccionOficina: TEdit
          Left = 160
          Top = 15
          Width = 541
          Height = 21
          ParentShowHint = False
          ReadOnly = True
          ShowHint = True
          TabOrder = 1
        end
      end
      object pnlTelefonoContacto: TPanel
        Left = 6
        Top = 55
        Width = 374
        Height = 39
        BevelOuter = bvNone
        ParentColor = True
        TabOrder = 1
        object Label8: TLabel
          Left = 3
          Top = 1
          Width = 102
          Height = 13
          Caption = 'Telefono de contacto'
        end
        object edTelefonoContacto: TEdit
          Left = 4
          Top = 15
          Width = 365
          Height = 21
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
        end
      end
    end
  end
  object ppdbCarta: TppDBPipeline
    UserName = 'dbCarta'
    Left = 186
    Top = 243
    object ppDBHojaRutaDetppField1: TppField
      FieldAlias = 'ASOID'
      FieldName = 'ASOID'
      FieldLength = 10
      DisplayWidth = 10
      Position = 0
    end
    object ppDBHojaRutaDetppField2: TppField
      FieldAlias = 'COMPROMISO'
      FieldName = 'COMPROMISO'
      FieldLength = 1
      DisplayWidth = 1
      Position = 1
    end
    object ppDBHojaRutaDetppField3: TppField
      FieldAlias = 'FECHA_COMPROMISO'
      FieldName = 'FECHA_COMPROMISO'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 34
      Position = 2
    end
    object ppDBHojaRutaDetppField4: TppField
      FieldAlias = 'FECHA_GESTION'
      FieldName = 'FECHA_GESTION'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 34
      Position = 3
    end
    object ppDBHojaRutaDetppField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'MONTO_COMPROMISO'
      FieldName = 'MONTO_COMPROMISO'
      FieldLength = 8
      DataType = dtDouble
      DisplayWidth = 33
      Position = 4
    end
    object ppDBHojaRutaDetppField6: TppField
      Alignment = taRightJustify
      FieldAlias = 'CANT_CRE_PEN_PAGO'
      FieldName = 'CANT_CRE_PEN_PAGO'
      FieldLength = 8
      DataType = dtDouble
      DisplayWidth = 33
      Position = 5
    end
    object ppDBHojaRutaDetppField7: TppField
      FieldAlias = 'SITUACION_PADRON'
      FieldName = 'SITUACION_PADRON'
      FieldLength = 60
      DisplayWidth = 60
      Position = 6
    end
    object ppDBHojaRutaDetppField8: TppField
      FieldAlias = 'DNI'
      FieldName = 'DNI'
      FieldLength = 10
      DisplayWidth = 10
      Position = 7
    end
    object ppDBHojaRutaDetppField9: TppField
      FieldAlias = 'APELLIDOS_NOMBRES'
      FieldName = 'APELLIDOS_NOMBRES'
      FieldLength = 90
      DisplayWidth = 90
      Position = 8
    end
    object ppDBHojaRutaDetppField10: TppField
      FieldAlias = 'TIPO_ASOCIADO'
      FieldName = 'TIPO_ASOCIADO'
      FieldLength = 2
      DisplayWidth = 2
      Position = 9
    end
    object ppDBHojaRutaDetppField11: TppField
      FieldAlias = 'DIRECCION_DOM'
      FieldName = 'DIRECCION_DOM'
      FieldLength = 250
      DisplayWidth = 250
      Position = 10
    end
    object ppDBHojaRutaDetppField12: TppField
      FieldAlias = 'DPTO_DOM'
      FieldName = 'DPTO_DOM'
      FieldLength = 30
      DisplayWidth = 30
      Position = 11
    end
    object ppDBHojaRutaDetppField13: TppField
      FieldAlias = 'PROV_DOM'
      FieldName = 'PROV_DOM'
      FieldLength = 30
      DisplayWidth = 30
      Position = 12
    end
    object ppDBHojaRutaDetppField14: TppField
      FieldAlias = 'DIST_DOM'
      FieldName = 'DIST_DOM'
      FieldLength = 50
      DisplayWidth = 50
      Position = 13
    end
    object ppDBHojaRutaDetppField15: TppField
      FieldAlias = 'NOMCENEDU'
      FieldName = 'NOMCENEDU'
      FieldLength = 105
      DisplayWidth = 105
      Position = 14
    end
    object ppDBHojaRutaDetppField16: TppField
      FieldAlias = 'DPTO_COL'
      FieldName = 'DPTO_COL'
      FieldLength = 30
      DisplayWidth = 30
      Position = 15
    end
    object ppDBHojaRutaDetppField17: TppField
      FieldAlias = 'PROV_COL'
      FieldName = 'PROV_COL'
      FieldLength = 30
      DisplayWidth = 30
      Position = 16
    end
    object ppDBHojaRutaDetppField18: TppField
      FieldAlias = 'DIST_COL'
      FieldName = 'DIST_COL'
      FieldLength = 50
      DisplayWidth = 50
      Position = 17
    end
  end
  object pprCartaEstandar: TppReport
    AutoStop = False
    DataPipeline = ppdbCarta
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 0
    PrinterSetup.mmMarginLeft = 0
    PrinterSetup.mmMarginRight = 0
    PrinterSetup.mmMarginTop = 0
    PrinterSetup.mmPaperHeight = 210000
    PrinterSetup.mmPaperWidth = 297000
    PrinterSetup.PaperSize = 9
    Template.FileName = 
      'D:\Modulos\@Dise'#241'ador de Reportes\Gestion de Cobranzas\CartaEsta' +
      'ndar.rtm'
    Units = utMillimeters
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zs100Percent
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 186
    Top = 275
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppdbCarta'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 178065
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        DataField = 'ASOAPENOM'
        DataPipeline = ppdbCarta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbCarta'
        mmHeight = 3175
        mmLeft = 26194
        mmTop = 24871
        mmWidth = 64823
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        DataField = 'DIRDOM'
        DataPipeline = ppdbCarta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbCarta'
        mmHeight = 3175
        mmLeft = 26194
        mmTop = 28575
        mmWidth = 100013
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        DataField = 'DIST_DOM'
        DataPipeline = ppdbCarta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbCarta'
        mmHeight = 3175
        mmLeft = 26194
        mmTop = 32544
        mmWidth = 27781
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        DataField = 'ASOCODMOD'
        DataPipeline = ppdbCarta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbCarta'
        mmHeight = 3175
        mmLeft = 26194
        mmTop = 36513
        mmWidth = 27252
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        DataField = 'GESTOR_NOMBRES'
        DataPipeline = ppdbCarta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbCarta'
        mmHeight = 3175
        mmLeft = 183357
        mmTop = 162719
        mmWidth = 80169
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        DataField = 'CUOPAC'
        DataPipeline = ppdbCarta
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbCarta'
        mmHeight = 3969
        mmLeft = 77523
        mmTop = 116152
        mmWidth = 23283
        BandType = 4
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        DataField = 'OFIDES_DIRECCION'
        DataPipeline = ppdbCarta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbCarta'
        mmHeight = 3175
        mmLeft = 26194
        mmTop = 40746
        mmWidth = 102129
        BandType = 4
      end
      object ppDBText40: TppDBText
        UserName = 'DBText40'
        DataField = 'TELEFONO'
        DataPipeline = ppdbCarta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        Visible = False
        DataPipelineName = 'ppdbCarta'
        mmHeight = 3175
        mmLeft = 264055
        mmTop = 162719
        mmWidth = 17727
        BandType = 4
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Caption = 'Domicilio :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 11377
        mmTop = 28575
        mmWidth = 13229
        BandType = 4
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Caption = 'Modular :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3260
        mmLeft = 12965
        mmTop = 36513
        mmWidth = 11769
        BandType = 4
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Caption = 'Distrito :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 14023
        mmTop = 32544
        mmWidth = 10583
        BandType = 4
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Caption = 'Oficina :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 14023
        mmTop = 40746
        mmWidth = 10583
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        DataField = 'ASOAPENOM'
        DataPipeline = ppdbCarta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbCarta'
        mmHeight = 3175
        mmLeft = 180182
        mmTop = 24871
        mmWidth = 64823
        BandType = 4
      end
      object ppDBText41: TppDBText
        UserName = 'DBText41'
        DataField = 'DIRDOM'
        DataPipeline = ppdbCarta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbCarta'
        mmHeight = 3175
        mmLeft = 180182
        mmTop = 28575
        mmWidth = 100013
        BandType = 4
      end
      object ppDBText42: TppDBText
        UserName = 'DBText42'
        DataField = 'DIST_DOM'
        DataPipeline = ppdbCarta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbCarta'
        mmHeight = 3175
        mmLeft = 180182
        mmTop = 32544
        mmWidth = 27781
        BandType = 4
      end
      object ppDBText43: TppDBText
        UserName = 'DBText43'
        DataField = 'ASOCODMOD'
        DataPipeline = ppdbCarta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbCarta'
        mmHeight = 3175
        mmLeft = 180182
        mmTop = 36513
        mmWidth = 27252
        BandType = 4
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Caption = 'Domicilio :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 165365
        mmTop = 28575
        mmWidth = 13229
        BandType = 4
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        Caption = 'Modular :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 166952
        mmTop = 36513
        mmWidth = 11642
        BandType = 4
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        Caption = 'Distrito :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 168011
        mmTop = 32544
        mmWidth = 10583
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppGroup1: TppGroup
      BreakName = 'ASOID'
      DataPipeline = ppdbCarta
      OutlineSettings.CreateNode = True
      NewPage = True
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppdbCarta'
      object ppGroupHeaderBand1: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object ppdCarta: TppDesigner
    Caption = 'ReportBuilder'
    DataSettings.SessionType = 'BDESession'
    DataSettings.AllowEditSQL = False
    DataSettings.CollationType = ctASCII
    DataSettings.DatabaseType = dtParadox
    DataSettings.IsCaseSensitive = True
    DataSettings.SQLType = sqBDELocal
    Position = poScreenCenter
    Report = pprCartaEstandar
    IniStorageType = 'IniFile'
    IniStorageName = '($WINSYS)\RBuilder.ini'
    WindowHeight = 400
    WindowLeft = 100
    WindowTop = 50
    WindowWidth = 600
    Left = 186
    Top = 307
  end
  object pprCartaTemprana: TppReport
    AutoStop = False
    DataPipeline = ppdbCarta
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 0
    PrinterSetup.mmMarginLeft = 0
    PrinterSetup.mmMarginRight = 0
    PrinterSetup.mmMarginTop = 0
    PrinterSetup.mmPaperHeight = 210000
    PrinterSetup.mmPaperWidth = 297000
    PrinterSetup.PaperSize = 9
    Template.FileName = 
      'D:\Modulos\@Dise'#241'ador de Reportes\Gestion de Cobranzas\CartaTemp' +
      'rana.rtm'
    Units = utMillimeters
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zs100Percent
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 218
    Top = 275
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppdbCarta'
    object ppHeaderBand2: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppDetailBand2: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 177536
      mmPrintPosition = 0
      object ppDBText9: TppDBText
        UserName = 'DBText1'
        DataField = 'ASOAPENOM'
        DataPipeline = ppdbCarta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbCarta'
        mmHeight = 3175
        mmLeft = 19844
        mmTop = 41275
        mmWidth = 64823
        BandType = 4
      end
      object ppDBText11: TppDBText
        UserName = 'DBText3'
        DataField = 'DIRDOM'
        DataPipeline = ppdbCarta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbCarta'
        mmHeight = 3175
        mmLeft = 19844
        mmTop = 44979
        mmWidth = 100013
        BandType = 4
      end
      object ppDBText12: TppDBText
        UserName = 'DBText4'
        DataField = 'DIST_DOM'
        DataPipeline = ppdbCarta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbCarta'
        mmHeight = 3175
        mmLeft = 19844
        mmTop = 48948
        mmWidth = 27781
        BandType = 4
      end
      object ppDBText13: TppDBText
        UserName = 'DBText5'
        DataField = 'ASOCODMOD'
        DataPipeline = ppdbCarta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbCarta'
        mmHeight = 3175
        mmLeft = 19844
        mmTop = 52917
        mmWidth = 27252
        BandType = 4
      end
      object ppDBText14: TppDBText
        UserName = 'DBText6'
        DataField = 'GESTOR_NOMBRES'
        DataPipeline = ppdbCarta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbCarta'
        mmHeight = 3175
        mmLeft = 184680
        mmTop = 163248
        mmWidth = 80169
        BandType = 4
      end
      object ppDBText15: TppDBText
        UserName = 'DBText7'
        DataField = 'SALVENACT'
        DataPipeline = ppdbCarta
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        Visible = False
        DataPipelineName = 'ppdbCarta'
        mmHeight = 3969
        mmLeft = 68263
        mmTop = 52388
        mmWidth = 23283
        BandType = 4
      end
      object ppDBText16: TppDBText
        UserName = 'DBText8'
        DataField = 'OFIDES_DIRECCION'
        DataPipeline = ppdbCarta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbCarta'
        mmHeight = 3175
        mmLeft = 17992
        mmTop = 153988
        mmWidth = 113242
        BandType = 4
      end
      object ppDBText17: TppDBText
        UserName = 'DBText17'
        DataField = 'GESTOR_NOMBRES'
        DataPipeline = ppdbCarta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbCarta'
        mmHeight = 3175
        mmLeft = 8731
        mmTop = 135467
        mmWidth = 80169
        BandType = 4
      end
      object ppDBText39: TppDBText
        UserName = 'DBText39'
        DataField = 'TELEFONO'
        DataPipeline = ppdbCarta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbCarta'
        mmHeight = 3175
        mmLeft = 93663
        mmTop = 135467
        mmWidth = 21960
        BandType = 4
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        Caption = 'Domicilio :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 5556
        mmTop = 44979
        mmWidth = 13229
        BandType = 4
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        Caption = 'Modular :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3260
        mmLeft = 7144
        mmTop = 52917
        mmWidth = 11769
        BandType = 4
      end
      object ppLabel11: TppLabel
        UserName = 'Label11'
        Caption = 'Distrito :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 8202
        mmTop = 48948
        mmWidth = 10583
        BandType = 4
      end
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        DataField = 'ASOAPENOM'
        DataPipeline = ppdbCarta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbCarta'
        mmHeight = 3175
        mmLeft = 173038
        mmTop = 27781
        mmWidth = 64823
        BandType = 4
      end
      object ppDBText45: TppDBText
        UserName = 'DBText45'
        DataField = 'DIRDOM'
        DataPipeline = ppdbCarta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbCarta'
        mmHeight = 3175
        mmLeft = 173038
        mmTop = 31485
        mmWidth = 100013
        BandType = 4
      end
      object ppDBText46: TppDBText
        UserName = 'DBText46'
        DataField = 'DIST_DOM'
        DataPipeline = ppdbCarta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbCarta'
        mmHeight = 3175
        mmLeft = 173038
        mmTop = 35454
        mmWidth = 27781
        BandType = 4
      end
      object ppDBText47: TppDBText
        UserName = 'DBText47'
        DataField = 'ASOCODMOD'
        DataPipeline = ppdbCarta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbCarta'
        mmHeight = 3175
        mmLeft = 173038
        mmTop = 39423
        mmWidth = 27252
        BandType = 4
      end
    end
    object ppFooterBand2: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppGroup2: TppGroup
      BreakName = 'ASOID'
      DataPipeline = ppdbCarta
      OutlineSettings.CreateNode = True
      NewPage = True
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppdbCarta'
      object ppGroupHeaderBand2: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
      object ppGroupFooterBand2: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
    object ppParameterList2: TppParameterList
    end
  end
  object pprCartaContencion: TppReport
    AutoStop = False
    DataPipeline = ppdbCarta
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 0
    PrinterSetup.mmMarginLeft = 0
    PrinterSetup.mmMarginRight = 0
    PrinterSetup.mmMarginTop = 0
    PrinterSetup.mmPaperHeight = 210000
    PrinterSetup.mmPaperWidth = 297000
    PrinterSetup.PaperSize = 9
    Template.FileName = 
      'D:\Modulos\@Dise'#241'ador de Reportes\Gestion de Cobranzas\CartaCont' +
      'encion.rtm'
    Units = utMillimeters
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zs100Percent
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 250
    Top = 275
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppdbCarta'
    object ppHeaderBand3: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppDetailBand3: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 177536
      mmPrintPosition = 0
      object ppDBText18: TppDBText
        UserName = 'DBText1'
        DataField = 'ASOAPENOM'
        DataPipeline = ppdbCarta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbCarta'
        mmHeight = 3175
        mmLeft = 19315
        mmTop = 22490
        mmWidth = 64823
        BandType = 4
      end
      object ppDBText20: TppDBText
        UserName = 'DBText3'
        DataField = 'DIRDOM'
        DataPipeline = ppdbCarta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbCarta'
        mmHeight = 3175
        mmLeft = 19315
        mmTop = 26194
        mmWidth = 100013
        BandType = 4
      end
      object ppDBText21: TppDBText
        UserName = 'DBText4'
        DataField = 'DIST_DOM'
        DataPipeline = ppdbCarta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbCarta'
        mmHeight = 3175
        mmLeft = 19315
        mmTop = 30163
        mmWidth = 27781
        BandType = 4
      end
      object ppDBText22: TppDBText
        UserName = 'DBText5'
        DataField = 'ASOCODMOD'
        DataPipeline = ppdbCarta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbCarta'
        mmHeight = 3175
        mmLeft = 19315
        mmTop = 34131
        mmWidth = 27252
        BandType = 4
      end
      object ppDBText23: TppDBText
        UserName = 'DBText6'
        DataField = 'GESTOR_NOMBRES'
        DataPipeline = ppdbCarta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbCarta'
        mmHeight = 3175
        mmLeft = 184150
        mmTop = 160867
        mmWidth = 80169
        BandType = 4
      end
      object ppDBText24: TppDBText
        UserName = 'DBText7'
        DataField = 'SALVENACT'
        DataPipeline = ppdbCarta
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbCarta'
        mmHeight = 3969
        mmLeft = 80698
        mmTop = 139965
        mmWidth = 23283
        BandType = 4
      end
      object ppDBText25: TppDBText
        UserName = 'DBText8'
        DataField = 'OFIDES_DIRECCION'
        DataPipeline = ppdbCarta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbCarta'
        mmHeight = 3175
        mmLeft = 16933
        mmTop = 158750
        mmWidth = 102129
        BandType = 4
      end
      object ppDBText26: TppDBText
        UserName = 'DBText17'
        OnGetText = ppDBText26GetText
        DataField = 'GESTOR_NOMBRES'
        DataPipeline = ppdbCarta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbCarta'
        mmHeight = 3175
        mmLeft = 9525
        mmTop = 118798
        mmWidth = 68263
        BandType = 4
      end
      object ppDBText27: TppDBText
        UserName = 'DBText27'
        DataField = 'SALTOTACT'
        DataPipeline = ppdbCarta
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbCarta'
        mmHeight = 3969
        mmLeft = 80698
        mmTop = 144992
        mmWidth = 23283
        BandType = 4
      end
      object ppDBText38: TppDBText
        UserName = 'DBText38'
        DataField = 'TELEFONO'
        DataPipeline = ppdbCarta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbCarta'
        mmHeight = 3175
        mmLeft = 93927
        mmTop = 118798
        mmWidth = 32808
        BandType = 4
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        Caption = 'Domicilio :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 159015
        mmTop = 28046
        mmWidth = 13229
        BandType = 4
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        Caption = 'Modular :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 160602
        mmTop = 35983
        mmWidth = 11642
        BandType = 4
      end
      object ppLabel13: TppLabel
        UserName = 'Label13'
        Caption = 'Distrito :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 161661
        mmTop = 32015
        mmWidth = 10583
        BandType = 4
      end
      object ppLabel14: TppLabel
        UserName = 'Label14'
        Caption = 'Domicilio :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 5027
        mmTop = 26194
        mmWidth = 13229
        BandType = 4
      end
      object ppLabel15: TppLabel
        UserName = 'Label15'
        Caption = 'Distrito :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 7673
        mmTop = 30163
        mmWidth = 10583
        BandType = 4
      end
      object ppLabel16: TppLabel
        UserName = 'Label16'
        Caption = 'Modular :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3260
        mmLeft = 6615
        mmTop = 34131
        mmWidth = 11769
        BandType = 4
      end
      object ppDBText19: TppDBText
        UserName = 'DBText19'
        DataField = 'ASOAPENOM'
        DataPipeline = ppdbCarta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbCarta'
        mmHeight = 3175
        mmLeft = 173302
        mmTop = 24342
        mmWidth = 64823
        BandType = 4
      end
      object ppDBText44: TppDBText
        UserName = 'DBText44'
        DataField = 'DIRDOM'
        DataPipeline = ppdbCarta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbCarta'
        mmHeight = 3175
        mmLeft = 173302
        mmTop = 28046
        mmWidth = 100013
        BandType = 4
      end
      object ppDBText48: TppDBText
        UserName = 'DBText48'
        DataField = 'DIST_DOM'
        DataPipeline = ppdbCarta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbCarta'
        mmHeight = 3175
        mmLeft = 173302
        mmTop = 32015
        mmWidth = 27781
        BandType = 4
      end
      object ppDBText49: TppDBText
        UserName = 'DBText49'
        DataField = 'ASOCODMOD'
        DataPipeline = ppdbCarta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbCarta'
        mmHeight = 3175
        mmLeft = 173302
        mmTop = 35983
        mmWidth = 27252
        BandType = 4
      end
      object ppDBText50: TppDBText
        UserName = 'DBText50'
        DataField = 'OFIDES_DIRECCION'
        DataPipeline = ppdbCarta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbCarta'
        mmHeight = 3175
        mmLeft = 19844
        mmTop = 92340
        mmWidth = 102129
        BandType = 4
      end
      object ppLabel17: TppLabel
        UserName = 'Label17'
        Caption = 'Tel'#233'fono : '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 79375
        mmTop = 118798
        mmWidth = 13229
        BandType = 4
      end
    end
    object ppFooterBand3: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppGroup3: TppGroup
      BreakName = 'ASOID'
      DataPipeline = ppdbCarta
      OutlineSettings.CreateNode = True
      NewPage = True
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppdbCarta'
      object ppGroupHeaderBand3: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
      object ppGroupFooterBand3: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
    object ppParameterList3: TppParameterList
    end
  end
  object pprCartaRecuperacion: TppReport
    AutoStop = False
    DataPipeline = ppdbCarta
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 0
    PrinterSetup.mmMarginLeft = 0
    PrinterSetup.mmMarginRight = 0
    PrinterSetup.mmMarginTop = 0
    PrinterSetup.mmPaperHeight = 210000
    PrinterSetup.mmPaperWidth = 297000
    PrinterSetup.PaperSize = 9
    Template.FileName = 
      'D:\Modulos\@Dise'#241'ador de Reportes\Gestion de Cobranzas\CartaRecu' +
      'peracion.rtm'
    Units = utMillimeters
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zs100Percent
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 282
    Top = 275
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppdbCarta'
    object ppHeaderBand4: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppDetailBand4: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 175155
      mmPrintPosition = 0
      object ppDBText28: TppDBText
        UserName = 'DBText1'
        DataField = 'ASOAPENOM'
        DataPipeline = ppdbCarta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbCarta'
        mmHeight = 3175
        mmLeft = 29633
        mmTop = 22225
        mmWidth = 64823
        BandType = 4
      end
      object ppDBText30: TppDBText
        UserName = 'DBText3'
        DataField = 'DIRDOM'
        DataPipeline = ppdbCarta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbCarta'
        mmHeight = 3175
        mmLeft = 29633
        mmTop = 25929
        mmWidth = 100013
        BandType = 4
      end
      object ppDBText31: TppDBText
        UserName = 'DBText4'
        DataField = 'DIST_DOM'
        DataPipeline = ppdbCarta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbCarta'
        mmHeight = 3175
        mmLeft = 29633
        mmTop = 29898
        mmWidth = 27781
        BandType = 4
      end
      object ppDBText32: TppDBText
        UserName = 'DBText5'
        DataField = 'ASOCODMOD'
        DataPipeline = ppdbCarta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbCarta'
        mmHeight = 3175
        mmLeft = 29633
        mmTop = 33867
        mmWidth = 27252
        BandType = 4
      end
      object ppDBText33: TppDBText
        UserName = 'DBText6'
        DataField = 'GESTOR_NOMBRES'
        DataPipeline = ppdbCarta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbCarta'
        mmHeight = 3175
        mmLeft = 193146
        mmTop = 160867
        mmWidth = 80169
        BandType = 4
      end
      object ppDBText34: TppDBText
        UserName = 'DBText7'
        DataField = 'SALTOT'
        DataPipeline = ppdbCarta
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbCarta'
        mmHeight = 3969
        mmLeft = 86254
        mmTop = 129382
        mmWidth = 23283
        BandType = 4
      end
      object ppDBText35: TppDBText
        UserName = 'DBText8'
        DataField = 'OFIDES_DIRECCION'
        DataPipeline = ppdbCarta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbCarta'
        mmHeight = 3175
        mmLeft = 25665
        mmTop = 159279
        mmWidth = 102129
        BandType = 4
      end
      object ppDBText36: TppDBText
        UserName = 'DBText17'
        OnGetText = ppDBText26GetText
        DataField = 'GESTOR_NOMBRES'
        DataPipeline = ppdbCarta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbCarta'
        mmHeight = 3175
        mmLeft = 44979
        mmTop = 140229
        mmWidth = 55827
        BandType = 4
      end
      object ppDBText37: TppDBText
        UserName = 'DBText37'
        DataField = 'TELEFONO'
        DataPipeline = ppdbCarta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbCarta'
        mmHeight = 3175
        mmLeft = 115094
        mmTop = 140494
        mmWidth = 32808
        BandType = 4
      end
      object ppLabel18: TppLabel
        UserName = 'Label18'
        Caption = 'Domicilio :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 15081
        mmTop = 25665
        mmWidth = 13229
        BandType = 4
      end
      object ppLabel19: TppLabel
        UserName = 'Label19'
        Caption = 'Distrito :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 17727
        mmTop = 29633
        mmWidth = 10583
        BandType = 4
      end
      object ppLabel20: TppLabel
        UserName = 'Label20'
        Caption = 'Modular :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3260
        mmLeft = 16669
        mmTop = 33602
        mmWidth = 11769
        BandType = 4
      end
      object ppLabel21: TppLabel
        UserName = 'Label21'
        Caption = 'Domicilio :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 165100
        mmTop = 28310
        mmWidth = 13229
        BandType = 4
      end
      object ppLabel22: TppLabel
        UserName = 'Label22'
        Caption = 'Distrito :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 167746
        mmTop = 32279
        mmWidth = 10583
        BandType = 4
      end
      object ppLabel23: TppLabel
        UserName = 'Label23'
        Caption = 'Modular :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 166688
        mmTop = 36248
        mmWidth = 11642
        BandType = 4
      end
      object ppDBText29: TppDBText
        UserName = 'DBText29'
        DataField = 'ASOAPENOM'
        DataPipeline = ppdbCarta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbCarta'
        mmHeight = 3175
        mmLeft = 179388
        mmTop = 24606
        mmWidth = 64823
        BandType = 4
      end
      object ppDBText51: TppDBText
        UserName = 'DBText51'
        DataField = 'DIRDOM'
        DataPipeline = ppdbCarta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbCarta'
        mmHeight = 3175
        mmLeft = 179388
        mmTop = 28310
        mmWidth = 100013
        BandType = 4
      end
      object ppDBText52: TppDBText
        UserName = 'DBText52'
        DataField = 'DIST_DOM'
        DataPipeline = ppdbCarta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbCarta'
        mmHeight = 3175
        mmLeft = 179388
        mmTop = 32279
        mmWidth = 27781
        BandType = 4
      end
      object ppDBText53: TppDBText
        UserName = 'DBText53'
        DataField = 'ASOCODMOD'
        DataPipeline = ppdbCarta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbCarta'
        mmHeight = 3175
        mmLeft = 179388
        mmTop = 36248
        mmWidth = 27252
        BandType = 4
      end
      object ppDBText54: TppDBText
        UserName = 'DBText54'
        DataField = 'ASOAPENOM'
        DataPipeline = ppdbCarta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbCarta'
        mmHeight = 3175
        mmLeft = 35719
        mmTop = 63500
        mmWidth = 64823
        BandType = 4
      end
    end
    object ppFooterBand4: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppGroup4: TppGroup
      BreakName = 'ASOID'
      DataPipeline = ppdbCarta
      OutlineSettings.CreateNode = True
      NewPage = True
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppdbCarta'
      object ppGroupHeaderBand4: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
      object ppGroupFooterBand4: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
    object ppParameterList4: TppParameterList
    end
  end
end
