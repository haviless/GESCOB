object fGestExt: TfGestExt
  Left = 281
  Top = 57
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Gesti'#243'n Externa'
  ClientHeight = 581
  ClientWidth = 804
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
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Label7: TLabel
    Left = 198
    Top = 96
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
  object GroupBox1: TGroupBox
    Left = 1
    Top = -3
    Width = 800
    Height = 588
    TabOrder = 0
    DesignSize = (
      800
      588)
    object lblSeleccion: TLabel
      Left = 8
      Top = 173
      Width = 145
      Height = 21
      AutoSize = False
      Caption = 'lblSeleccion'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object lblRotulo: TLabel
      Left = 164
      Top = 179
      Width = 99
      Height = 12
      AutoSize = False
      Caption = 'XXXXXXXXXXXXXX'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -9
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object pcPie: TPageControl
      Left = 6
      Top = 494
      Width = 708
      Height = 88
      ActivePage = TabSheet4
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      MultiLine = True
      ParentFont = False
      TabHeight = 15
      TabOrder = 3
      object TabSheet4: TTabSheet
        Caption = 'Opciones        '
        DesignSize = (
          700
          63)
        object Bevel1: TBevel
          Left = 484
          Top = 2
          Width = 2
          Height = 60
        end
        object Bevel2: TBevel
          Left = 569
          Top = 2
          Width = 2
          Height = 60
        end
        object grpBusAso: TGroupBox
          Left = 129
          Top = 6
          Width = 241
          Height = 50
          Caption = 'Buscar Asociado'
          TabOrder = 0
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
            Top = 18
            Width = 230
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
        object BitBtn1: TBitBtn
          Left = 375
          Top = 22
          Width = 50
          Height = 40
          Anchors = [akTop, akRight]
          Caption = 'Imprimir'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = BitBtn1Click
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
            0003377777777777777308888888888888807F33333333333337088888888888
            88807FFFFFFFFFFFFFF7000000000000000077777777777777770F8F8F8F8F8F
            8F807F333333333333F708F8F8F8F8F8F9F07F333333333337370F8F8F8F8F8F
            8F807FFFFFFFFFFFFFF7000000000000000077777777777777773330FFFFFFFF
            03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
            03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
            33333337F3F37F3733333330F08F0F0333333337F7337F7333333330FFFF0033
            33333337FFFF7733333333300000033333333337777773333333}
          Layout = blGlyphTop
          NumGlyphs = 2
          Spacing = 5
        end
        object BitExporta: TBitBtn
          Left = 429
          Top = 22
          Width = 50
          Height = 40
          Anchors = [akTop, akRight]
          Caption = 'Exportar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          Visible = False
          OnClick = BitExportaClick
          Glyph.Data = {
            F6000000424DF600000000000000760000002800000010000000100000000100
            0400000000008000000000000000000000001000000010000000000000000000
            BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DDDDDDDDDDDD
            DDDDDDDDDDDDDDDDDDDDDDDDDDDDDD00000DD00000000006660DD08888880E00
            000DD000000000EEE080DD07778E0EEE0080DDD078E0EEE07700DDDD0E0EEE00
            0000DDD0E0EEE080DDDDDD0E0EEE07080DDDD0E0EEE0777080DD0E0EEE0D0777
            080D00EEE0DDD077700D00000DDDDD00000DDDDDDDDDDDDDDDDD}
          Layout = blGlyphTop
          Spacing = 5
        end
        object BitObsEsp: TBitBtn
          Left = 37
          Top = 3
          Width = 85
          Height = 27
          Hint = 'Obsercaciones'
          Caption = 'Obs.Super.'
          TabOrder = 3
          OnClick = BitObsEspClick
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFE9F1F0455955E1E8E8FFFFFFD7E5E3FFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9F0EE00221E51E6E70D
            4A4812383100221AE9F3F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFE8F2F00024209DFFFF9ABEBE382620007C7D00DFE0001208ECF9F8FFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE8F5F3002223A1DCDC1D130C0068680B
            FFFF15FFFF12FFFF0ED5D6000000476A65E1EEEEFFFFFFFFFFFFFFFFFFECFAF9
            00140E24363239686887FFFF97FFFF9AFFFF72DFDD9AFFFF97FFFF78E4E55164
            6B28393A486A65E9F3F2EEFFFD0000006D7C7DC8FFFFC2FFFFCDFFFF00000009
            1E14244C42000400285C53235A52133E381B4D47112B280B3E38040000FFFFFF
            D8FFFFD7FFFF9ECECCC7E4E26B89842F3A5C16344FA9D3D35E9993AADBD8A5DB
            D88FB4B3000C0670A09BFFFFFF4E4848FFFFFFE9FFFFFAFFFF70AFAAE7E9E7DF
            DAF5425EA100000FE1DED2D7FFFFF5FFFFFFFFFFA7D4D4CBC2C3FFFFFFFFFFFF
            4B4848FFFFFFE4FFFFFDFFFF62A8A47E6C6977BBAF1E8BA40060CBD2C8B6FFFF
            FF4B5757655F5FFFFFFFFFFFFFFFFFFFFFFFFF4A4848FFFFFFF2FFFFFFFFFF6C
            86867DDCFBD1FFF5147B8E0E70DA1F0400FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFF484848FFFFFFF1FFFFFFFFFF577A9A77D6F3D1FFF5147B8E0D70
            DAD9C7B5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF484848FFFFFF47
            57577D736D687A9A76D6F3D1FFF5147B8E0068D2D7CEBFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFF474747FFFFFFFFFFFFFFFFFF586A8A76D6F3D1FF
            FF3C2B3D0C0E55DDDCD4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFF5C72914287A2EEEBFF54598F20223AFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6962
            586065A4F9FAFF303473FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7372688587A2EEEEE5}
        end
        object BitBuscar: TBitBtn
          Left = 37
          Top = 33
          Width = 85
          Height = 27
          Hint = 'Buscar Deudor'
          Caption = 'Buscar'
          TabOrder = 4
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
        object bbtnTexto: TBitBtn
          Left = 491
          Top = 2
          Width = 73
          Height = 27
          Anchors = [akTop, akRight]
          Caption = 'Exportar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          OnClick = bbtnTextoClick
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000130B0000130B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333303
            333333333333337FF3333333333333903333333333333377FF33333333333399
            03333FFFFFFFFF777FF3000000999999903377777777777777FF0FFFF0999999
            99037F3337777777777F0FFFF099999999907F3FF777777777770F00F0999999
            99037F773777777777730FFFF099999990337F3FF777777777330F00FFFFF099
            03337F773333377773330FFFFFFFF09033337F3FF3FFF77733330F00F0000003
            33337F773777777333330FFFF0FF033333337F3FF7F3733333330F08F0F03333
            33337F7737F7333333330FFFF003333333337FFFF77333333333000000333333
            3333777777333333333333333333333333333333333333333333}
          NumGlyphs = 2
          Spacing = 5
        end
        object bbtnImporta: TBitBtn
          Left = 491
          Top = 35
          Width = 73
          Height = 27
          Anchors = [akTop, akRight]
          Caption = 'Importar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
          OnClick = bbtnImportaClick
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000130B0000130B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            33333333333FFFFFFFFF333333000000000033333377777777773333330FFFFF
            FFF03333337F333333373333330FFFFFFFF03333337F3FF3FFF73333330F00F0
            00F03333F37F773777373330330FFFFFFFF03337FF7F3F3FF3F73339030F0800
            F0F033377F7F737737373339900FFFFFFFF03FF7777F3FF3FFF70999990F00F0
            00007777777F7737777709999990FFF0FF0377777777FF37F3730999999908F0
            F033777777777337F73309999990FFF0033377777777FFF77333099999000000
            3333777777777777333333399033333333333337773333333333333903333333
            3333333773333333333333303333333333333337333333333333}
          NumGlyphs = 2
          Spacing = 5
        end
        object ChkIndidual2: TCheckBox
          Left = 382
          Top = 1
          Width = 89
          Height = 14
          Caption = 'Seleccionado'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 7
        end
        object bbtnImportacionMasiva: TBitBtn
          Left = 576
          Top = 1
          Width = 107
          Height = 38
          Anchors = [akTop, akRight]
          Caption = 'Imp. Masiva'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 8
          OnClick = bbtnImportacionMasivaClick
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000130B0000130B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            33333333333FFFFFFFFF333333000000000033333377777777773333330FFFFF
            FFF03333337F333333373333330FFFFFFFF03333337F3FF3FFF73333330F00F0
            00F03333F37F773777373330330FFFFFFFF03337FF7F3F3FF3F73339030F0800
            F0F033377F7F737737373339900FFFFFFFF03FF7777F3FF3FFF70999990F00F0
            00007777777F7737777709999990FFF0FF0377777777FF37F3730999999908F0
            F033777777777337F73309999990FFF0033377777777FFF77333099999000000
            3333777777777777333333399033333333333337773333333333333903333333
            3333333773333333333333303333333333333337333333333333}
          Layout = blGlyphTop
          NumGlyphs = 2
          Spacing = 5
        end
        object bbtnLogImportacion: TBitBtn
          Left = 576
          Top = 40
          Width = 107
          Height = 23
          Anchors = [akTop, akRight]
          Caption = 'Log Imp. Masiva'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 9
          OnClick = bbtnLogImportacionClick
          Glyph.Data = {
            4E010000424D4E01000000000000760000002800000012000000120000000100
            040000000000D800000000000000000000001000000010000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
            88888800000088888008888888888800000088880FF000000000080000008880
            F0080FFFFFFF08000000880F0FF00F00000F0800000080F0F0080FFFFFFF0800
            0000880F0FF00F00000F0800000080F0F0080FFFFFFF08000000880F0FB00F00
            F0000800000080F0FBFB0FFFF0F088000000880FBFBF0FFFF0088800000080FB
            FBFB00000088880000008800BFBFBFBF088888000000888800FBFBF088888800
            000088888800B808888888000000888888880088888888000000888888888888
            888888000000888888888888888888000000}
          Spacing = 5
        end
      end
      object tsCartas: TTabSheet
        Caption = 'Gesti'#243'n de Cartas'
        DesignSize = (
          700
          63)
        object Label22: TLabel
          Left = 416
          Top = 8
          Width = 69
          Height = 16
          Alignment = taCenter
          Caption = 'Responsable'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -12
          Font.Name = 'Comic Sans MS'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object rgCarta: TRadioGroup
          Left = 4
          Top = 3
          Width = 380
          Height = 50
          Color = cl3DLight
          Columns = 5
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -12
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ItemIndex = 0
          Items.Strings = (
            'CaPre 0'
            'CaRe 1'
            'CaRe 2'
            'CaVe 1'
            'CaVe 2')
          ParentColor = False
          ParentFont = False
          TabOrder = 0
        end
        object BitBtn7: TBitBtn
          Left = 528
          Top = 33
          Width = 80
          Height = 27
          Anchors = [akTop, akRight]
          Caption = 'Imprimir'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = BitBtn7Click
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
            0003377777777777777308888888888888807F33333333333337088888888888
            88807FFFFFFFFFFFFFF7000000000000000077777777777777770F8F8F8F8F8F
            8F807F333333333333F708F8F8F8F8F8F9F07F333333333337370F8F8F8F8F8F
            8F807FFFFFFFFFFFFFF7000000000000000077777777777777773330FFFFFFFF
            03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
            03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
            33333337F3F37F3733333330F08F0F0333333337F7337F7333333330FFFF0033
            33333337FFFF7733333333300000033333333337777773333333}
          NumGlyphs = 2
          Spacing = 5
        end
        object bbtnExpCarta: TBitBtn
          Left = 617
          Top = 33
          Width = 80
          Height = 27
          Anchors = [akTop, akRight]
          Caption = 'Exportar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnClick = bbtnExpCartaClick
          Glyph.Data = {
            F6000000424DF600000000000000760000002800000010000000100000000100
            0400000000008000000000000000000000001000000010000000000000000000
            BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DDDDDDDDDDDD
            DDDDDDDDDDDDDDDDDDDDDDDDDDDDDD00000DD00000000006660DD08888880E00
            000DD000000000EEE080DD07778E0EEE0080DDD078E0EEE07700DDDD0E0EEE00
            0000DDD0E0EEE080DDDDDD0E0EEE07080DDDD0E0EEE0777080DD0E0EEE0D0777
            080D00EEE0DDD077700D00000DDDDD00000DDDDDDDDDDDDDDDDD}
          Spacing = 2
        end
        object BitBtn2: TBitBtn
          Left = 617
          Top = 2
          Width = 80
          Height = 27
          Anchors = [akTop, akRight]
          Caption = 'Exportar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000130B0000130B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333303
            333333333333337FF3333333333333903333333333333377FF33333333333399
            03333FFFFFFFFF777FF3000000999999903377777777777777FF0FFFF0999999
            99037F3337777777777F0FFFF099999999907F3FF777777777770F00F0999999
            99037F773777777777730FFFF099999990337F3FF777777777330F00FFFFF099
            03337F773333377773330FFFFFFFF09033337F3FF3FFF77733330F00F0000003
            33337F773777777333330FFFF0FF033333337F3FF7F3733333330F08F0F03333
            33337F7737F7333333330FFFF003333333337FFFF77333333333000000333333
            3333777777333333333333333333333333333333333333333333}
          NumGlyphs = 2
          Spacing = 2
        end
        object ChkIndidual: TCheckBox
          Left = 524
          Top = 11
          Width = 89
          Height = 14
          Caption = 'Seleccionado'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
        end
        object dblcResponsable: TwwDBLookupComboDlg
          Left = 392
          Top = 27
          Width = 124
          Height = 23
          GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
          GridColor = clWhite
          GridTitleAlignment = taLeftJustify
          Caption = 'Lookup'
          MaxWidth = 0
          MaxHeight = 209
          Selected.Strings = (
            'USUARIO'#9'15'#9'Usuario'#9'F'
            'USUNOM'#9'25'#9'Descripci'#243'n'#9'F'
            'DPTODES'#9'25'#9'Departamento'#9'F')
          LookupTable = DM1.cdsGestor
          LookupField = 'USUARIO'
          TabOrder = 5
          AutoDropDown = False
          ShowButton = True
          AllowClearKey = False
        end
      end
      object TabSheet6: TTabSheet
        Caption = 'Resultados de Gesti'#243'n'
        ImageIndex = 1
        object lblTitulo: TLabel
          Left = 53
          Top = 11
          Width = 109
          Height = 12
          AutoSize = False
          Caption = 'Resultado De Gesti'#243'n'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
          Visible = False
        end
        object lblInicio: TLabel
          Left = 339
          Top = 11
          Width = 41
          Height = 12
          AutoSize = False
          Caption = 'Inicio'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
          Visible = False
        end
        object lblFin: TLabel
          Left = 443
          Top = 11
          Width = 35
          Height = 12
          AutoSize = False
          Caption = 'Final'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
          Visible = False
        end
        object dblGestionDet: TwwDBLookupCombo
          Left = 50
          Top = 27
          Width = 41
          Height = 21
          Cursor = crHandPoint
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          DropDownAlignment = taLeftJustify
          Selected.Strings = (
            'IDGTNDET'#9'4'#9'Codigo'#9'F'
            'DESCRIPCION'#9'35'#9'Descripci'#243'n'#9'F')
          LookupTable = DM1.cdsTipCreA
          LookupField = 'IDGTNDET'
          Options = [loColLines, loRowLines]
          ParentFont = False
          TabOrder = 0
          Visible = False
          AutoDropDown = False
          ShowButton = True
          PreciseEditRegion = False
          AllowClearKey = False
          OnChange = dblGestionDetChange
        end
        object pnlResGes: TPanel
          Left = 92
          Top = 26
          Width = 171
          Height = 22
          Caption = 'pnlResGes'
          Color = 13165023
          Enabled = False
          TabOrder = 1
          Visible = False
          object EdtDesGntDet: TEdit
            Left = 3
            Top = 0
            Width = 166
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
        object dtpInicio: TDateTimePicker
          Left = 311
          Top = 26
          Width = 93
          Height = 22
          Date = 39679.671306192130000000
          Time = 39679.671306192130000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          Visible = False
        end
        object dtpFin: TDateTimePicker
          Left = 411
          Top = 26
          Width = 93
          Height = 22
          Date = 39679.671306192130000000
          Time = 39679.671306192130000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          Visible = False
        end
        object BitResGes: TBitBtn
          Left = 535
          Top = 21
          Width = 85
          Height = 27
          Cursor = crHandPoint
          Caption = 'Resultados'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          Visible = False
          OnClick = BitResGesClick
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000C40E0000C40E000000000000000000003B3B58838300
            7777008E8E003737000000006363009A9A00000000546F22584400000000A5A5
            00000000A5A500373700646400FAFA00FFFF006B6B00DADA008B8B00ECEC0087
            8700A2930016B6A100879212616D9E9622707000181800878796000000E1E100
            6F6F009A9A00FFFF0050501D2929533737009F93003B8A9E00D4D4B5C3C32C28
            3573737FFFFFFFFFFFFFFFFFFF636387585800FFFF003B3B149191A19D9D9D46
            464E624A5A00DFDFABABABFFFFFF0F0F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            0000000000229D9DA45F5F5F3A3A3A0000002F22220D8787C8B9B97F7F7F8181
            813C3C3C3D3D3DFFFFFFFFFFFFD3D3D348484C1D1D1D6B6B6B8D8D8D8D8D8D93
            9393B0B0B0483B3BE1E1E1FEFEFEFFFFFFFFFFFF606060FFFFFFFFFFFF2F2F2F
            0000000000003F3F3F8D8D8D8787878787875B5B5B2C2C2CE1E1E1DEDEDEFFFF
            FF9E9E9E000000FFFFFFE9E9E90000000000000000006F6F6F89898985858598
            9898A1A1A13F3F3FECECECE1E1E1FFFFFF9292928C8C8C686868000000000000
            000000585858999999878787838383B9B9B9B0B0B0636363424242D9E8E8FF5B
            5BFFFFFF686868FFFFFF00000000000000000000000048484895959591919100
            0000B9B9B93D3535D5CECEC6C6C67F8E8E6D6D6D807C7CFFFFFF000000000000
            0000000000000000003F3F3F8989899A9A9A00000090DBDB065353FFE2E2DEC4
            C4F0D6D61F3838D3CFCF4848480000000000000000000000004C4C4CC3C3C3F5
            F5F5281F1F87C3C32FB5B500B7B700E8E800B2B22FFFFF7A6262E1E1E1000000
            00000000000000000000000000000000000000000094D0D07EF5F500FFFF00FF
            FF00FFFF1F4A4AFFFFFFFFFFFF26262600000000000000000000000000000000
            0000000000002222225B5B006969006767875757FFFFFFFFFFFFFFFFFFFFFFFF
            878787000000000000000000000000000000E1E1E1FFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        end
      end
      object tsHojaRuta: TTabSheet
        Caption = 'Hoja de Ruta'
        ImageIndex = 3
        DesignSize = (
          700
          63)
        object btnImpHojaRuta: TBitBtn
          Left = 8
          Top = 16
          Width = 90
          Height = 27
          Anchors = [akTop, akRight]
          Caption = 'Imprimir'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = btnImpHojaRutaClick
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
            0003377777777777777308888888888888807F33333333333337088888888888
            88807FFFFFFFFFFFFFF7000000000000000077777777777777770F8F8F8F8F8F
            8F807F333333333333F708F8F8F8F8F8F9F07F333333333337370F8F8F8F8F8F
            8F807FFFFFFFFFFFFFF7000000000000000077777777777777773330FFFFFFFF
            03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
            03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
            33333337F3F37F3733333330F08F0F0333333337F7337F7333333330FFFF0033
            33333337FFFF7733333333300000033333333337777773333333}
          NumGlyphs = 2
          Spacing = 5
        end
        object btnExpHojaRuta: TBitBtn
          Left = 104
          Top = 16
          Width = 90
          Height = 27
          Anchors = [akTop, akRight]
          Caption = 'Exportar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = btnExpHojaRutaClick
          Glyph.Data = {
            F6000000424DF600000000000000760000002800000010000000100000000100
            0400000000008000000000000000000000001000000010000000000000000000
            BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DDDDDDDDDDDD
            DDDDDDDDDDDDDDDDDDDDDDDDDDDDDD00000DD00000000006660DD08888880E00
            000DD000000000EEE080DD07778E0EEE0080DDD078E0EEE07700DDDD0E0EEE00
            0000DDD0E0EEE080DDDDDD0E0EEE07080DDDD0E0EEE0777080DD0E0EEE0D0777
            080D00EEE0DDD077700D00000DDDDD00000DDDDDDDDDDDDDDDDD}
          Spacing = 10
        end
      end
    end
    object BitSalir: TBitBtn
      Left = 717
      Top = 553
      Width = 75
      Height = 27
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
    object PageControl1: TPageControl
      Left = 4
      Top = 192
      Width = 793
      Height = 301
      ActivePage = TabSheet1
      TabOrder = 1
      OnChange = PageControl1Change
      object TabSheet1: TTabSheet
        Caption = 'Personal'
        object dtgGestion: TwwDBGrid
          Left = 2
          Top = 2
          Width = 781
          Height = 269
          Cursor = crHandPoint
          DisableThemesInTitle = False
          Selected.Strings = (
            'ASOTIPID'#9'3'#9'Tip~Aso'
            'ASOAPENOM'#9'32'#9'Apellidos y Nombres'
            'FECASIG'#9'9'#9'Fecha~Asignado'
            'SALTOT'#9'12'#9'Saldo~Total'
            'SALPEN'#9'11'#9'Saldo~No~Vencido'
            'SALVEN'#9'11'#9'Saldo~Vencido'
            'CUOVEN'#9'3'#9'N'#176'~Cuo~Ven'
            'SALACT'#9'12'#9'Saldo~Actual'
            'DIASTRANS'#9'5'#9'Antiguedad~dela~Deuda(Dias)'
            'DESREF'#9'14'#9'Estado~de Gesti'#243'n'#9'F')
          IniAttributes.Delimiter = ';;'
          TitleColor = clBtnFace
          FixedCols = 0
          ShowHorzScrollBar = True
          DataSource = DM1.dsMovCre
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          MultiSelectOptions = [msoShiftSelect]
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgMultiSelect, dgShowFooter, dgFooter3DCells]
          ParentFont = False
          TabOrder = 0
          TitleAlignment = taLeftJustify
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          TitleLines = 3
          TitleButtons = True
          OnTitleButtonClick = dtgGestionTitleButtonClick
          OnDrawDataCell = dtgGestionDrawDataCell
          OnDblClick = dtgGestionDblClick
          OnDrawFooterCell = dtgGestionDrawFooterCell
          OnDrawTitleCell = dtgGestionDrawTitleCell
          PaintOptions.ActiveRecordColor = 13165023
        end
        object Memo1: TMemo
          Left = 4
          Top = 168
          Width = 1549
          Height = 41
          Lines.Strings = (
            'Memo1')
          TabOrder = 1
          Visible = False
        end
      end
    end
    object bbtnDesmarcar: TBitBtn
      Left = 717
      Top = 509
      Width = 75
      Height = 39
      Hint = 'Desmarcar todo'
      Anchors = [akTop, akRight]
      Caption = 'Desmarcar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = bbtnDesmarcarClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        55555FFFFFFF5F55FFF5777777757559995777777775755777F7555555555550
        305555555555FF57F7F555555550055BB0555555555775F777F55555550FB000
        005555555575577777F5555550FB0BF0F05555555755755757F555550FBFBF0F
        B05555557F55557557F555550BFBF0FB005555557F55575577F555500FBFBFB0
        B05555577F555557F7F5550E0BFBFB00B055557575F55577F7F550EEE0BFB0B0
        B05557FF575F5757F7F5000EEE0BFBF0B055777FF575FFF7F7F50000EEE00000
        B0557777FF577777F7F500000E055550805577777F7555575755500000555555
        05555777775555557F5555000555555505555577755555557555}
      Layout = blGlyphTop
      NumGlyphs = 2
      Spacing = 5
    end
    object pnlCab: TPanel
      Left = 1
      Top = 7
      Width = 796
      Height = 162
      ParentColor = True
      TabOrder = 4
      object pnlCab2: TPanel
        Left = 2
        Top = -1
        Width = 789
        Height = 162
        BevelOuter = bvNone
        ParentColor = True
        TabOrder = 2
        object Shape1: TShape
          Left = 4
          Top = 3
          Width = 347
          Height = 30
        end
        object lblGestor: TLabel
          Left = 9
          Top = 9
          Width = 334
          Height = 21
          AutoSize = False
          Color = clBtnHighlight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object Bevel8: TBevel
          Left = -1
          Top = 36
          Width = 790
          Height = 3
        end
        object Bevel11: TBevel
          Left = 681
          Top = 37
          Width = 3
          Height = 118
        end
        object Bevel10: TBevel
          Left = -116
          Top = 86
          Width = 680
          Height = 3
        end
        object Bevel12: TBevel
          Left = 565
          Top = 39
          Width = 3
          Height = 119
        end
        object Bevel13: TBevel
          Left = 344
          Top = 88
          Width = 3
          Height = 68
        end
        object Bevel14: TBevel
          Left = 212
          Top = 88
          Width = 3
          Height = 67
        end
        object pnlUser: TPanel
          Left = 85
          Top = 6
          Width = 255
          Height = 25
          Enabled = False
          TabOrder = 0
          Visible = False
          object EdtUserNom: TEdit
            Left = 3
            Top = 0
            Width = 250
            Height = 24
            BevelKind = bkFlat
            BorderStyle = bsNone
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 0
          end
        end
        object dblUserExt: TwwDBLookupCombo
          Left = 15
          Top = 7
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
          ParentFont = False
          TabOrder = 1
          Visible = False
          AutoDropDown = False
          ShowButton = True
          PreciseEditRegion = False
          AllowClearKey = False
          OnChange = dblUserExtChange
          OnExit = dblUserExtExit
        end
        object dblcDpto: TwwDBLookupCombo
          Left = 5
          Top = 60
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
          TabOrder = 2
          AutoDropDown = False
          ShowButton = True
          PreciseEditRegion = False
          AllowClearKey = False
          OnChange = dblcDptoChange
        end
        object Panel7: TPanel
          Left = 45
          Top = 59
          Width = 103
          Height = 24
          Caption = 'Panel1'
          Color = 13165023
          Enabled = False
          TabOrder = 3
          object edtDpto: TEdit
            Left = 1
            Top = 0
            Width = 100
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
          Left = 160
          Top = 60
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
          TabOrder = 4
          AutoDropDown = False
          ShowButton = True
          PreciseEditRegion = False
          AllowClearKey = False
          OnChange = dblcProvinChange
          OnEnter = dblcProvinEnter
        end
        object Panel8: TPanel
          Left = 200
          Top = 60
          Width = 163
          Height = 24
          Caption = 'Panel1'
          Color = 13165023
          Enabled = False
          TabOrder = 5
          object edtProvin: TEdit
            Left = 1
            Top = 0
            Width = 160
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
          Left = 374
          Top = 60
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
          TabOrder = 6
          AutoDropDown = False
          ShowButton = True
          PreciseEditRegion = False
          AllowClearKey = False
          OnChange = dblcDistChange
          OnEnter = dblcDistEnter
        end
        object Panel9: TPanel
          Left = 414
          Top = 59
          Width = 145
          Height = 24
          Caption = 'Panel1'
          Color = 13165023
          Enabled = False
          TabOrder = 7
          object edtDist: TEdit
            Left = 1
            Top = 0
            Width = 142
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
          Left = 572
          Top = 96
          Width = 105
          Height = 60
          Caption = 'Estado'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -12
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ItemIndex = 0
          Items.Strings = (
            'Normal'
            'Refinanciados')
          ParentFont = False
          TabOrder = 8
          OnClick = rgRefinanciadosClick
        end
        object Panel12: TPanel
          Left = 354
          Top = 96
          Width = 62
          Height = 19
          BevelOuter = bvNone
          ParentColor = True
          TabOrder = 9
          object Label21: TLabel
            Left = 4
            Top = 0
            Width = 55
            Height = 14
            Caption = 'Calificaci'#243'n'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
          end
        end
        object Panel10: TPanel
          Left = 456
          Top = 91
          Width = 103
          Height = 24
          Caption = 'Panel1'
          Color = 13165023
          Enabled = False
          TabOrder = 10
          object EdtCalifica: TEdit
            Left = 1
            Top = 0
            Width = 100
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
        object dblcCalifica: TwwDBLookupCombo
          Left = 418
          Top = 92
          Width = 37
          Height = 21
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          DropDownAlignment = taLeftJustify
          Selected.Strings = (
            'RESUMEID'#9'3'#9'Codigo'#9'F'
            'RESUMEDES'#9'27'#9'Descripci'#243'n'#9'F')
          LookupTable = DM1.cdsUPro
          LookupField = 'RESUMEID'
          Options = [loColLines, loRowLines]
          MaxLength = 1
          ParentFont = False
          TabOrder = 11
          AutoDropDown = False
          ShowButton = True
          PreciseEditRegion = False
          AllowClearKey = False
        end
        object pDias: TPanel
          Left = 350
          Top = 119
          Width = 210
          Height = 38
          ParentColor = True
          TabOrder = 12
          object Label12: TLabel
            Left = 114
            Top = 15
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
          object Label13: TLabel
            Left = 43
            Top = 1
            Width = 29
            Height = 13
            AutoSize = False
            Caption = 'Inicio'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -9
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
          end
          object Label1: TLabel
            Left = 179
            Top = 1
            Width = 22
            Height = 13
            AutoSize = False
            Caption = 'Final'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -9
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
          end
          object Label20: TLabel
            Left = 85
            Top = 1
            Width = 83
            Height = 14
            AutoSize = False
            Caption = 'D'#237'as de Morosidad '
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -9
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
          end
          object SpInicio: TSpinEdit
            Left = 42
            Top = 13
            Width = 53
            Height = 22
            MaxLength = 4
            MaxValue = 9999
            MinValue = 1
            TabOrder = 0
            Value = 1
          end
          object SpFin: TSpinEdit
            Left = 154
            Top = 13
            Width = 53
            Height = 22
            MaxLength = 4
            MaxValue = 9999
            MinValue = 1
            TabOrder = 1
            Value = 31
          end
          object ChkAntiguedad: TCheckBox
            Left = 7
            Top = 4
            Width = 22
            Height = 11
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
          end
        end
        object Panel11: TPanel
          Left = -4
          Top = 45
          Width = 534
          Height = 13
          BevelOuter = bvNone
          ParentColor = True
          TabOrder = 13
          object Label2: TLabel
            Left = 9
            Top = -1
            Width = 117
            Height = 14
            AutoSize = False
            Caption = 'Departamento (DOM)'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
          end
          object Label3: TLabel
            Left = 165
            Top = -1
            Width = 93
            Height = 14
            AutoSize = False
            Caption = 'Provincia (DOM)'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
          end
          object Label4: TLabel
            Left = 379
            Top = -1
            Width = 79
            Height = 14
            AutoSize = False
            Caption = 'Distrito (DOM)'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
          end
        end
        object ChkRango: TCheckBox
          Left = 222
          Top = 98
          Width = 118
          Height = 11
          Caption = 'N'#250'mero de Registros'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 14
        end
        object pRango: TPanel
          Left = 224
          Top = 118
          Width = 113
          Height = 38
          ParentColor = True
          TabOrder = 15
          object Label14: TLabel
            Left = 3
            Top = 22
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
            Left = 2
            Top = 9
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
            Left = 59
            Top = 11
            Width = 47
            Height = 22
            MaxLength = 4
            MaxValue = 9999
            MinValue = 1
            TabOrder = 0
            Value = 100
          end
        end
        object chkSaldo: TCheckBox
          Left = 5
          Top = 98
          Width = 104
          Height = 11
          Caption = 'Por Saldo Vencido'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 16
          OnClick = chkSaldoClick
        end
        object pnlMontos: TPanel
          Left = 5
          Top = 118
          Width = 202
          Height = 38
          BevelOuter = bvSpace
          Enabled = False
          ParentColor = True
          TabOrder = 17
          object Label17: TLabel
            Left = 90
            Top = 16
            Width = 16
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
          object Label18: TLabel
            Left = 7
            Top = 1
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
          object Label19: TLabel
            Left = 123
            Top = 1
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
            Top = 14
            Width = 80
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
            OnExit = dbeMtoIniExit
            OnKeyPress = dbeMtoIniKeyPress
          end
          object dbeMtoFin: TwwDBEdit
            Left = 111
            Top = 14
            Width = 83
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
            OnExit = dbeMtoFinExit
            OnKeyPress = dbeMtoFinKeyPress
          end
        end
        object chkSaldoTotal: TCheckBox
          Left = 114
          Top = 98
          Width = 94
          Height = 11
          Caption = 'Por Saldo Total'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 18
          OnClick = chkSaldoTotalClick
        end
        object rbGestion: TRadioGroup
          Left = 572
          Top = 39
          Width = 105
          Height = 59
          Caption = 'Gestion'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -12
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ItemIndex = 0
          Items.Strings = (
            'Telefonica'
            'Domiciliaria')
          ParentFont = False
          TabOrder = 19
          OnClick = rbGestionClick
        end
        object pnlAcuerdos: TPanel
          Left = 687
          Top = 40
          Width = 101
          Height = 65
          ParentColor = True
          TabOrder = 20
          object DtpCompromisos: TDateTimePicker
            Left = 7
            Top = 34
            Width = 87
            Height = 21
            Date = 39679.671306192130000000
            Time = 39679.671306192130000000
            TabOrder = 0
          end
          object chbxCompromisos: TCheckBox
            Left = 7
            Top = 10
            Width = 90
            Height = 17
            Caption = 'Compromisos'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -9
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            OnClick = chbxCompromisosClick
          end
        end
        object rgSitua: TRadioGroup
          Left = 362
          Top = -1
          Width = 426
          Height = 36
          Caption = 'Situaci'#243'n'
          Columns = 4
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ItemIndex = 0
          Items.Strings = (
            'Asignadas'
            'Pendientes'
            'Gestionadas'
            'Cerradas')
          ParentFont = False
          TabOrder = 21
          OnClick = rgSituaClick
        end
      end
      object BitFiltrar: TBitBtn
        Left = 691
        Top = 106
        Width = 100
        Height = 25
        Hint = 'Filtrar Datos'
        Caption = 'Filtrar'
        TabOrder = 0
        OnClick = BitFiltrarClick
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
      object Panel5: TPanel
        Left = 690
        Top = 133
        Width = 103
        Height = 23
        BevelInner = bvRaised
        BorderStyle = bsSingle
        Caption = 'Panel5'
        Color = clWhite
        TabOrder = 1
        object lblRegistros: TLabel
          Left = 11
          Top = 2
          Width = 78
          Height = 13
          Alignment = taCenter
          AutoSize = False
          Caption = '0 Registros'
          Color = clCaptionText
          ParentColor = False
        end
      end
    end
  end
  object dtgData: TDBGrid
    Left = 367
    Top = 255
    Width = 42
    Height = 50
    DataSource = DM1.dsMovCre
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    ParentFont = False
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
    Visible = False
  end
  object cdsH: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ValidateWithMask = True
    Left = 716
    Top = 232
  end
  object dsH: TwwDataSource
    DataSet = cdsH
    Left = 749
    Top = 297
  end
  object sdGraba: TSaveDialog
    DefaultExt = 'TXT'
    Filter = 
      '*.TXT  ( Archivo Texto )|*.txt|*.DOC  ( Archivo Texto )|*.doc|*.' +
      '*   ( Todos )|*.*'
    Title = 'Nombre de Archivo Texto'
    Left = 746
    Top = 338
  end
  object sdGraba300: TSaveDialog
    DefaultExt = '*'
    Filter = '( Todos )|*.*'
    Title = 'Cabecera de Contabilidad'
    Left = 222
    Top = 360
  end
  object cdsPlanilla: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ValidateWithMask = True
    Left = 260
    Top = 360
  end
  object dsPlanilla: TwwDataSource
    DataSet = cdsPlanilla
    Left = 300
    Top = 368
  end
  object DBGestiones: TppDBPipeline
    DataSource = dsH
    UserName = 'DBGestiones'
    Left = 50
    Top = 331
  end
  object ppr1: TppReport
    AutoStop = False
    DataPipeline = DBGestiones
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 15000
    PrinterSetup.mmMarginLeft = 10000
    PrinterSetup.mmMarginRight = 10000
    PrinterSetup.mmMarginTop = 15000
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    Template.FileName = 'C:\ss.rtm'
    Units = utMillimeters
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    PreviewFormSettings.WindowState = wsMaximized
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 90
    Top = 331
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'DBGestiones'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 20108
      mmPrintPosition = 0
      object ppShape1: TppShape
        UserName = 'Shape1'
        mmHeight = 8202
        mmLeft = 0
        mmTop = 11906
        mmWidth = 190236
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Caption = 'Tipo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2879
        mmLeft = 794
        mmTop = 14288
        mmWidth = 4784
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Caption = 'Apellidos y Nombres'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 29633
        mmTop = 14288
        mmWidth = 26035
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Caption = 'Fecha'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2879
        mmLeft = 92340
        mmTop = 12965
        mmWidth = 6773
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Caption = 'Saldo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2879
        mmLeft = 109009
        mmTop = 12965
        mmWidth = 6265
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Caption = 'Total'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2879
        mmLeft = 109273
        mmTop = 16404
        mmWidth = 5461
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        Caption = 'Asignado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2879
        mmLeft = 90488
        mmTop = 16404
        mmWidth = 10202
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        Caption = 'Saldo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2879
        mmLeft = 123561
        mmTop = 12965
        mmWidth = 6265
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        Caption = 'No Venc'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2879
        mmLeft = 121709
        mmTop = 16404
        mmWidth = 9398
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        Caption = 'Saldo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2879
        mmLeft = 137848
        mmTop = 12965
        mmWidth = 6265
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        Caption = 'Vencido'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2879
        mmLeft = 136525
        mmTop = 16404
        mmWidth = 8848
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label11'
        Caption = 'Antiguedad'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2879
        mmLeft = 147902
        mmTop = 12965
        mmWidth = 12361
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        Caption = 'Deuda'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2879
        mmLeft = 150019
        mmTop = 16404
        mmWidth = 7197
        BandType = 0
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 8202
        mmLeft = 87842
        mmTop = 11906
        mmWidth = 1852
        BandType = 0
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 8202
        mmLeft = 6615
        mmTop = 11906
        mmWidth = 1323
        BandType = 0
      end
      object ppLine3: TppLine
        UserName = 'Line3'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 8202
        mmLeft = 102129
        mmTop = 11906
        mmWidth = 1852
        BandType = 0
      end
      object ppLine4: TppLine
        UserName = 'Line4'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 8202
        mmLeft = 147109
        mmTop = 11906
        mmWidth = 1852
        BandType = 0
      end
      object ppLine5: TppLine
        UserName = 'Line5'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 8202
        mmLeft = 160867
        mmTop = 11906
        mmWidth = 1058
        BandType = 0
      end
      object ppLabel13: TppLabel
        UserName = 'Label13'
        Caption = 'Observaci'#243'n'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2879
        mmLeft = 167482
        mmTop = 14288
        mmWidth = 13716
        BandType = 0
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 171186
        mmTop = 0
        mmWidth = 14139
        BandType = 0
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable2'
        VarType = vtTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 171186
        mmTop = 3704
        mmWidth = 17463
        BandType = 0
      end
      object ppLabel14: TppLabel
        UserName = 'Label14'
        Caption = 'GESTIONES ASIGNADAS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4022
        mmLeft = 72157
        mmTop = 0
        mmWidth = 41952
        BandType = 0
      end
      object ppLabel15: TppLabel
        UserName = 'Label15'
        Caption = 'DERRAMA MAGISTERIAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 265
        mmTop = 0
        mmWidth = 42122
        BandType = 0
      end
      object ppLabel16: TppLabel
        UserName = 'Label16'
        Caption = 'MODULO : GESTION DE COBRANZA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2879
        mmLeft = 529
        mmTop = 5027
        mmWidth = 42249
        BandType = 0
      end
      object ppLabel19: TppLabel
        UserName = 'Label19'
        Caption = 'C.Modular'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 8467
        mmTop = 14288
        mmWidth = 12996
        BandType = 0
      end
      object LblGestorC: TppLabel
        UserName = 'LblGestorC'
        Caption = 'Gestor(a) : Hugo Noriega 01'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 75406
        mmTop = 5027
        mmWidth = 35719
        BandType = 0
      end
      object ppSystemVariable3: TppSystemVariable
        UserName = 'SystemVariable3'
        VarType = vtPageNoDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 171186
        mmTop = 7408
        mmWidth = 11113
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 5027
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        AutoSize = True
        DataField = 'ASOTIPID'
        DataPipeline = DBGestiones
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DBGestiones'
        mmHeight = 2879
        mmLeft = 1852
        mmTop = 1323
        mmWidth = 3429
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        DataField = 'ASOAPENOM'
        DataPipeline = DBGestiones
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DBGestiones'
        mmHeight = 2879
        mmLeft = 23548
        mmTop = 1323
        mmWidth = 63765
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        AutoSize = True
        DataField = 'FECASIG'
        DataPipeline = DBGestiones
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DBGestiones'
        mmHeight = 2879
        mmLeft = 89429
        mmTop = 1323
        mmWidth = 12192
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        DataField = 'SALVEN'
        DataPipeline = DBGestiones
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DBGestiones'
        mmHeight = 2879
        mmLeft = 134144
        mmTop = 1323
        mmWidth = 11642
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        DataField = 'DIASTRANS'
        DataPipeline = DBGestiones
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DBGestiones'
        mmHeight = 2879
        mmLeft = 150284
        mmTop = 1323
        mmWidth = 6879
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        DataField = 'SALTOT'
        DataPipeline = DBGestiones
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DBGestiones'
        mmHeight = 2879
        mmLeft = 103981
        mmTop = 1323
        mmWidth = 13229
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        DataField = 'SALPEN'
        DataPipeline = DBGestiones
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DBGestiones'
        mmHeight = 2879
        mmLeft = 119063
        mmTop = 1323
        mmWidth = 13229
        BandType = 4
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        AutoSize = True
        DataField = 'ASOCODMOD'
        DataPipeline = DBGestiones
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DBGestiones'
        mmHeight = 2879
        mmLeft = 7938
        mmTop = 1323
        mmWidth = 13547
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppSummaryBand1: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppGroup1: TppGroup
      BreakName = 'USUARIO'
      DataPipeline = DBGestiones
      OutlineSettings.CreateNode = True
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'DBGestiones'
      object ppGroupHeaderBand1: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 7408
        mmPrintPosition = 0
        object ppShape2: TppShape
          UserName = 'Shape2'
          mmHeight = 6615
          mmLeft = 0
          mmTop = 794
          mmWidth = 190236
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc1: TppDBCalc
          UserName = 'DBCalc1'
          DataPipeline = DBGestiones
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          Transparent = True
          DBCalcType = dcCount
          DataPipelineName = 'DBGestiones'
          mmHeight = 3440
          mmLeft = 167746
          mmTop = 2381
          mmWidth = 15610
          BandType = 5
          GroupNo = 0
        end
        object ppLabel18: TppLabel
          UserName = 'Label18'
          Caption = 'REGISTROS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 148961
          mmTop = 2381
          mmWidth = 16669
          BandType = 5
          GroupNo = 0
        end
        object ppLabel21: TppLabel
          UserName = 'Label21'
          Caption = 'TOTAL'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3387
          mmLeft = 3175
          mmTop = 2381
          mmWidth = 9229
          BandType = 5
          GroupNo = 0
        end
        object LblGestorF: TppLabel
          UserName = 'LblGestorF'
          Caption = 'Gestor(a) : Hugo Noriega 01'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3175
          mmLeft = 14552
          mmTop = 2381
          mmWidth = 35719
          BandType = 5
          GroupNo = 0
        end
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object ppd1: TppDesigner
    Caption = 'ReportBuilder'
    DataSettings.SessionType = 'BDESession'
    DataSettings.AllowEditSQL = False
    DataSettings.CollationType = ctASCII
    DataSettings.DatabaseType = dtParadox
    DataSettings.IsCaseSensitive = True
    DataSettings.SQLType = sqBDELocal
    Position = poScreenCenter
    Report = ppr1
    IniStorageType = 'IniFile'
    IniStorageName = '($WINSYS)\RBuilder.ini'
    WindowHeight = 400
    WindowLeft = 100
    WindowTop = 50
    WindowWidth = 600
    Left = 130
    Top = 331
  end
  object pprCaPre0: TppReport
    AutoStop = False
    DataPipeline = ppdbC1
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 20000
    PrinterSetup.mmMarginLeft = 30000
    PrinterSetup.mmMarginRight = 20000
    PrinterSetup.mmMarginTop = 20000
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    Units = utMillimeters
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = False
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zsPercentage
    PreviewFormSettings.ZoomPercentage = 70
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 642
    Top = 275
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppdbC1'
    object ppHeaderBand3: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppDetailBand4: TppDetailBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 25400
      mmPrintPosition = 0
      object ppSubReport2: TppSubReport
        UserName = 'SubReport1'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        ParentPrinterSetup = False
        TraverseAllData = False
        mmHeight = 5027
        mmLeft = 0
        mmTop = 7673
        mmWidth = 160000
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppChildReport2: TppChildReport
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report'
          PrinterSetup.PaperName = 'A4'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.mmMarginBottom = 20000
          PrinterSetup.mmMarginLeft = 30000
          PrinterSetup.mmMarginRight = 20000
          PrinterSetup.mmMarginTop = 20000
          PrinterSetup.mmPaperHeight = 297000
          PrinterSetup.mmPaperWidth = 210000
          PrinterSetup.PaperSize = 9
          Units = utMillimeters
          Version = '7.02'
          mmColumnWidth = 0
          object ppTitleBand2: TppTitleBand
            mmBottomOffset = 0
            mmHeight = 29633
            mmPrintPosition = 0
            object ppImage2: TppImage
              UserName = 'Image1'
              AutoSize = True
              MaintainAspectRatio = False
              Picture.Data = {
                07544269746D6170E67C0000424DE67C00000000000036000000280000009800
                0000460000000100180000000000B07C00000000000000000000000000000000
                0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFBADEE87BBBCB79BBC97EBECC7EBECD7EBDCC7EBECC7EBECC7EBECC7EBDCC
                7EBDCC7EBDCC7EBECC7EBECC7EBDCC7EBDCC7EBDCC7EBECC7EBDCC7EBECC7EBD
                CC7EBECC7EBECD7EBDCC7EBECC7DBDCC7DBDCCB8DDE7F0FEFF92C8D67CBCCC7E
                BDCC7EBDCC7EBDCC7EBDCC7EBDCC7EBECC7EBDCC7EBDCC7EBDCC7EBECC7EBDCC
                7EBDCC7EBDCC7EBDCD7EBECC7EBDCC7EBDCD7EBDCC7EBDCC7EBDCC7EBDCC7EBE
                CD7DBDCC75B8C892C8D5EAF9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFECFAFF66AEC000718C006986006D8A006D8A006C8A00
                6C8A006D8A006C8A006C8A006C89006D8A006D8A006C8A006C8A006C89006D8A
                006C8A006D8A006C8A006D8A006D8A006C8A006C8A006C89006A8863ACBFCFEC
                F317839D006A88006C8A006C8A006D8A006D8A006D8A006D8A006C8A006C8A00
                6C8A006D8A006C8A006D8A006C8A006C8A006D8A006C89006C8A006C8A006C8A
                006C89006C8A006B890068851F88A1B3DAE6FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF81BFCF01738F0068
                85006A88006986006986006986006A86006988006A86006986006986006A8600
                6986006986006986006A86006986006986006986006986006986006986006985
                00678460ABBECFECF312809B006584006A86006986006A86006A86006A86006A
                86006986006986006A86006986006A86006A86006986006986006986006A8600
                6986006986006A860069860069860068852D8EA6D0EDF5FFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFF7FBCCE006A88006B88006C89006B89006B89006B89006C89006B89006B
                89006B89006C89006B89006B89006C89006C89006C89006C89006C89006B8900
                6C89006B89006B8800698662ACBFD0ECF316829C006986006B89006B89006C89
                006C89006C89006C89006C88006B88006C89006B89006B89006C89006C89006B
                89006C89006B89006C89006B89006B89006B8900688514819BDDF3FAFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFECFBFF6BB0C5006C8A006A88006B89006B89006B89006B89
                006B88006C89006B89006C89006B89006C89006C88006B89006B89006C89006B
                89006B88006C89006B89006C89006A88006A8662ACBFCFECF316819C006A8600
                6C89006B89006B89006B89006B89006B89006B88006B88006B89006B89006C89
                006B89006B89006C89006C89006B89006C89006C89006B89006B890069861280
                9BAFD9E5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFC1E4EC6DB3C52A8CA600708C006A88006B89006C8900
                6C89006C89006B89006C89006B89006C89006C89006B89006C89006B89006C89
                006B88006C89006C89006B89006B89006C89006B89006B88006A8662ACBFCFEC
                F216829C006986006B89006B89006C89006B89006B89006B89006B89006B8900
                6B89006B89006B89006B89006C89006B89006C89006B89006B89006B89006C89
                006C89006B89006986087A954AA1B596CBD7E8F9FEFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFD8F0F78AC3D33F9AB00B7B95006584006382006A86006B
                89006B89006C89006C89006B89006B89006C89006B88006B89006C89006B8900
                6C89006C89006B89006B89006B89006C89006B89006C89006C89006C89006A88
                00698662ACC0CFECF316819C006986006B89006B89006C89006C89006B89006C
                89006B89006C89006B89006C89006B89006B88006B89006C89006B89006B8900
                6B89006C89006B89006B89006B89006B89006784006281006D8B2189A15BAABD
                ABD6E1F5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFCEEAF281BFCF3895AC087995006D8B006584006584006B88
                006B89006B89006B89006C89006C89006C89006C89006C89006B89006B89006B
                89006B89006B89006C89006B89006C89006C89006C89006C89006B89006B8900
                6C89006B89006B8800698662ACBFCFECF316819C006886006B88006B89006C89
                006C89006C89006C89006B89006C89006B88006C89006B89006B89006B89006C
                89006B89006C89006C89006B89006B89006B89006C89006C89006C89006B8900
                698600648300698500728E1C849E58A7BCA5D4DFECFAFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFEEFDFFC3E4ED7DBDCD2B8DA600728E006B8900678500678400698600
                6C89006B89006B89006B89006B89006C89006B89006C89006B89006C89006C89
                006C89006B89006B89006C89006B89006C89006B88006C89006B89006B89006B
                89006B89006C89006C89006B88006B88006A8662ACBFCFECF316829C006A8600
                6C89006C89006B89006B88006B89006B89006C88006C89006B89006B89006C89
                006B89006B89006C89006B88006B89006C89006B88006C89006C89006C89006B
                89006C89006B89006C89006C89006B88006885006784006986006D8A0B7B964F
                A2B6A2D0DEDDF2F8F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FBFFFFD4EEF5A6D4DF65AEC12288A200708C006985006986006886006988006A
                89006C89006B89006C89006B89006B89006B88006B89006B89006B89006B8900
                6B89006C89006B89006C89006C89006B89006B89006B89006B88006B89006C89
                006B89006B89006B88006C89006B89006C89006B89006B88006A8663ADC0D0EC
                F316829C006986006B89006C89006C89006B88006B89006B89006B88006B8900
                6C89006B89006C89006C89006B89006C88006B89006C89006C89006B88006C89
                006B89006C89006B89006B89006B89006C89006C89006B89006B89006B89006A
                88006986006985006784006A88067A95419AB085C1D0BEE1EAE7F9FEFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2
                FFFFBEE1EA88C3D14A9FB50E7E99006885006582006885006986006B88006B88
                006B89006B89006B89006C89006C89006B89006B89006B89006C89006C89006B
                89006C89006B88006C89006C89006B89006B89006C89006B89006B88006C8900
                6B89006B89006B89006B88006C89006B89006B89006C89006B88006B89006B88
                00698663ACC0D0ECF316829C006986006B89006B88006B89006C89006C89006B
                89006B89006B89006B88006C89006B89006B89006C89006C89006C89006B8900
                6C89006B89006B89006B89006C89006B89006B89006B89006B89006C89006B89
                006C88006B89006B89006C89006B89006A88006A86006986006584006483006F
                8D2A8DA568B0C1A2D0DDD5EEF6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFC0E2EC72B6C73794AC037693006382006282006985006B88006C89006B8900
                6B89006C89006B88006C89006C89006C89006B89006C88006B89006C89006B89
                006C89006B89006B89006B89006B89006C89006B89006B89006B89006C89006B
                88006B89006B89006C89006B89006B89006B88006C89006C89006B89006B8900
                6C88006B88006B8800698662ACBFCFECF316819C006886006B89006B88006B88
                006B89006C89006B89006C89006B88006B89006B89006C89006C89006B89006B
                89006C89006C89006B89006C89006C89006B88006C88006B89006B89006C8900
                6B89006B89006B89006B88006C89006C89006C89006B89006C89006B89006B89
                006B88006B8900698600658300618000698819839D53A5B896CBD8E5F7FDFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFBDDFE9489EB40B7A95006584006281006885006B88006B89006B89006B
                89006B89006C89006B89006B89006C89006B89006B89006B89006B89006C8800
                6C89006B89006B89006B89006C89006B89006C89006C89006B89006C89006B89
                006B89006C89006B89006C89006B89006B89006B89006C89006B89006B89006B
                89006C89006C89006C89006C89006B88006A8662ACBFCFECF316819C00688500
                6C89006B89006B89006C89006B89006C89006B88006B89006B89006C89006B89
                006C89006B89006C89006B89006B89006C89006B88006B89006C88006C88006B
                89006C89006C89006B89006B89006C89006C89006B89006B89006C89006B8900
                6C89006B89006B89006B89006B89006B89006B88006C89006B88006583006282
                006D8A2188A179BACBEEFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFE2F6FB63AEC0047691006483006584006A88006B89006B88006B89
                006B89006B89006C89006C89006B89006B88006C89006B89006B88006C89006C
                89006B89006C88006B89006C89006C89006B89006B89006B89006B89006B8900
                6B89006B88006C89006C89006988006885006986006B89006B89006B88006C89
                006B88006B89006B89006C89006B89006B89006B88006A8800698662ACC0CFEC
                F316819D006885006B88006C89006B89006C89006B89006B89006C89006C8900
                6B89006B89006B89006A88006885006885006A88006B89006B88006C89006C89
                006B89006B88006B88006C89006B89006B89006B89006C89006B89006C89006C
                89006B89006B88006C89006B88006B89006B89006C89006B89006B89006C8900
                6C89006B89006B89006885006382006988268CA4A3D3DEFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFF8FFFF96CBD71A859D006986006884006A88006B89006B8900
                6B89006B88006B89006C89006B89006C89006C89006B89006986006885006985
                0068840069850068850068850069850069850069850068850068850069850068
                85006885006885006884006885006985006784006D8B10819A057993006C8A00
                6B89006B89006C89006B89006B89006B89006C89006B89006B89006B89006A88
                00698661ABBFCFECF316829D006985006B88006C89006C89006B89006C89006C
                89006B89006B89006C89006B89006B8900708C10809907799400688500688400
                6885006885006985006885006884006885006884006885006885006884006985
                006884006985006985006885006885006985006886006A88006B89006C89006C
                89006C89006B89006C89006B89006B89006B89006C8900698600678400728D51
                A2B6CCE8F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFB6DDE83D97AD006C89006885006A88006B89006B
                89006C89006B88006B89006B89006B88006B89006B89006C8900678500638200
                6D8A017892057994057994057994057993057994057893057994057994057994
                057994057993057894057894057894057893057893017592117C976CB3C5B2DA
                E679BACB017592006A86006C89006C89006C89006B88006B89006B89006C8900
                6B89006B89006B88006A8664ADC0CEEAF315809B006886006C89006B89006B89
                006B89006B89006B88006C89006B89006C89006B88006988308FA7A6D4E0A4D3
                DF3A96AD05769204789205789405789405789405789405799405789405799405
                789405789305799405789405789405789405799405799405789400728F006785
                006383006A86006B89006B89006C89006B89006B89006B88006B89006B89006B
                89006C8900698600688508799474B7C8E5F7FDFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFD4EDF55CAABD00718E006784006A86006B89
                006C89006B89006B88006B89006C89006B89006C89006B89006C89006B890065
                8407799456A6BA7DBCCD89C3D38CC4D48CC4D48CC4D48CC4D48CC4D58CC4D48C
                C4D48CC4D48CC4D38CC4D58CC4D48CC4D48CC4D58CC4D48CC4D48CC4D489C0D1
                A8D3E09CCEDC3F96AD3192AA00728E006A86006B89006B89006B89006C89006B
                89006C89006B89006B89006C89006A8800698678B8CCD6EFF717829C00698600
                6B88006B89006B89006B89006C89006B89006C89006B89006C89006B88006A88
                17829C3591AA6BB3C4B4DAE691C6D78AC3D38CC4D48CC4D58CC4D58CC4D48CC4
                D38CC4D48CC4D48CC4D48CC4D38CC4D38CC4D58CC4D48CC4D58CC4D58CC4D58B
                C3D486C1D372B6C73393AA006A89006886006B89006C89006B89006B88006B89
                006C89006B89006B89006C89006B88006B880068850067842186A19ACCD9F7FF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAFAFF81BECF16809A00648300698600
                6C89006C89006B89006B89006C89006C89006B89006C89006B89006B89006C89
                006B890069862A8DA5A6D3DF9CCEDC68B0C351A2B64C9FB44EA1B54EA1B54EA1
                B64EA1B64EA1B54EA1B54EA1B54EA1B54EA1B54EA1B64EA1B54EA1B54EA1B54E
                A1B54EA1B64FA2B64CA1B40E7D97006382006784006A88006C89006B88006B89
                006B89006B89006C89006C89006B89006C89006B89006A86006B89ACD6E4FBFF
                FF3F99AF006583006B89006B89006C89006B89006B89006B88006B89006C8900
                6C89006B89006B89006986006483006C892F8FA751A3B74EA1B54EA1B54EA1B5
                4EA1B54EA1B54EA1B54EA1B54EA1B54EA1B54EA1B54EA1B54EA1B54EA1B54EA1
                B54EA1B54EA1B54C9FB55BA8BC82C0CEB3DAE678B8C900718D006988006B8900
                6B89006B89006B88006B89006C89006C89006C89006B88006C89006B89006B89
                006583006C89419CB0B6DDE7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9DCEDC2D8EA60069860065
                83006B89006B89006B89006C89006B89006C89006B89006B88006C89006B8900
                6B89006C89006B89006886057893BAE0E993C8D601748F006180006281006382
                0063820063810063820063810063810063820062820064820063820062820063
                82006482006382006382006281006282006382006885006C89006B89006B8900
                6C89006B89006C89006C88006B89006B89006B89006B88006B89006A88006483
                3F99AFE8F9FFF6FFFFADD7E201718E006884006B89006B89006C89006C89006B
                89006C89006B89006B89006B89006B89006C89006B89006A8800648300628100
                6382006282006382006382006282006281006282006282006482006382006282
                0063820062820063810063820063820063820061800065833995ACD3ECF561AB
                BF006784006B88006B89006B89006B89006B89006B89006C89006B89006C8900
                6C89006C89006C89006B89006A860063820475925FABBDD4EEF5FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7E6EF459CB300718C
                006483006986006C89006B89006B89006B89006C89006C89006C89006B89006C
                89006B88006B89006B89006B880069860063831E869FE4F7FD439AB000628100
                6988006A88006A88006B88006A88006B88006B88006A88006B88006A88006B88
                006B88006A88006B86006B88006A88006A88006B88006B88006A88006A86006A
                88006B88006A88006A88006B88006A88006B88006A88006A88006A8800688500
                67850068853793ACDDF3FAC1E5EE71B5C7FCFFFF8DC6D601738E006784006785
                006986006A88006A88006A88006B88006A86006B88006A88006B88006A88006B
                88006B88006B88006A88006A88006A88006B88006B88006A88006B88006B8800
                6A88006A88006B88006B88006A88006A88006A88006A88006B88006A88006583
                006B88B2DCE6A1D0DF016482006784006988006B89006B88006B89006C89006B
                89006B89006B89006B89006B89006B89006B89006B88006C8900678400658414
                819B84C0D0F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE6F8FD71B5C607
                7A95006584006985006B89006B89006B89006B89006C89006B89006B88006B89
                006C89006B89006B89006B89006A8500658300688500728E18839D67AFC3E9FA
                FF9FD0DE15819B006D8B006A8600698600688600688600698600688600698500
                6886006986006886006886006986006986006886006885006986006986006986
                006986006986006886006886006886006986006886006986006986006886006A
                86006D8A00728F18849D79BACBEAFAFFD1EDF5288DA5006D8B75BAC9F7FFFFBA
                DFE9439CB207799400708C006A88006886006986006886006886006986006986
                0068860069860068850068860068860068860069860068860068860069860069
                8600698600698600688600698600688600698600698600688600688600688600
                6985006B8800738D479DB3DFF5FBBADFE93392A8097A94006C8A006584006885
                006A88006C89006B89006B89006C89006C89006B89006B89006B89006C89006B
                89006C89006A88006584006B892F8EA7AFD8E2FFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9FFFF96CB
                D91E859E006986006885006B88006C89006B89006B89006C88006B89006B8900
                6B89006B88006B88006B89006B88006584006382006D8B1E869E51A3B789C3D1
                B5DDE78DC5D54EA2B88CC8DAACD7E470B4C65BAABD63AEC065AFC065AFC065AF
                C065AFC065AFBF65AFC065AFC065AFBF65AFC065AFBF65AFC065AFBF65AFC065
                AFBF65AFBF65AFC065AFC065AFBF65AFBF65AFC065AFC065AFC065AFBF65AFC0
                65AFC064AFC062AEBF72B6C79BCDDCCCE8F1CBE9F271BACD047C9C0067850069
                85006A8C3095B3AAD8E5D7F0F7BBDEE986C1D165AEC163ADBF65AFBF65AFC065
                AFC065AFC065AFC065AFC065AFC065AFBF65AFC065AFC065AFC065AFBF65AFBF
                65AFC065AFBF65AFC065AFC065AFBF65AFC065AFC065AFBF65AFBF65AFBF65AF
                C065AFC065AFC060ACBE61ACBF8BC4D4ADD9E764B0C564AEC0ACD7E2A8D5E170
                B5C63795AC097A95006784006482006886006C88006C89006B89006B89006B89
                006C89006B88006B89006B89006B89006C89006A8600678400718C51A3B8CEEC
                F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                C3E4ED469CB2006B89006985006A88006B89006C89006B89006C89006C89006B
                88006B89006B88006B89006C8900698600628000678512819A50A3B682BECFA4
                D3DF9ECFDD5FABBE12809A006A88006782006C862691AF64B7CF8BCCE09DD6E8
                A1D8E99FD8E89FD8E89FD8E89FD8E79FD8E89FD8E89FD8E89FD8E89FD8E89FD8
                E89FD8E89FD8E89FD8E89FD8E89FD8E89FD8E89FD8E89FD8E89FD8E89FD8E89F
                D8E89FD8E89FD8E89FD8E8A1D9E896D3E582C7DC63B5CD2D97B600789B006780
                245F5D3061630D697A35605A09626F006C8C0F86A848A6C171BDD48BCDE09DD6
                E8A1D8E89FD8E89FD8E89FD8E89FD8E89FD8E89FD8E89FD8E89FD8E79FD8E89F
                D8E89FD8E89FD8E89FD8E89FD8E89FD8E89FD8E79FD8E89FD8E89FD8E89FD8E8
                9FD8E89FD8E89FD8E89FD8E8A2D9E899D4E67BC4D944A5C10E7C9A0067810068
                8500718D3392AA83C0D0AAD6E196CBD96BB2C43592AA00718D00628100678300
                6B88006C89006B89006B89006B89006B89006B88006B89006C89006C89006B88
                006A860067830D7C9783BFCFEEFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFE7F8FE78BAC9077994006582006A88006B89006B89006B88006B89006C89
                006C89006B88006B89006C89006A8800678400648200738F3995AC7CBCCC9CCE
                DCA2D0DE75B8C8278BA3006A89006583006986006C8A0B687B5D58373F5A4420
                5C5A155B5C145B5B145A5B145A5B145A5B145B5B155A5A145B5B155A5B145B5B
                145A5B145A5B145A5B145B5B145A5B145A5B145A5B145A5B145A5B145A5B145A
                5B145A5B145A5B145A5B155B5B145B5B155A5B145A5B155B5B165C5C195C5D29
                5C54465B426D57259D4C0062593D1A657191510F8A510E595833355C4C205C5B
                175C5D165B5C145B5B155A5B145B5B145A5B145A5B155A5B145A5B145B5B155A
                5B145A5A145B5B145A5B145B5B145B5B145A5B145A5B155B5B145A5A145A5B14
                5A5B145B5B155A5B145A5B145B5B145B5B145A5B145B5B155B5B185C5C2A5B51
                5458383A615B006C88006A880067850064830075914FA2B692C8D6A4D1DF93C8
                D762ACBF18829C006986006382006986006C89006B88006B88006C89006B8900
                6C88006B89006C89006B88006B880068850068853693AAB4DCE6FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFD1ECF33692AA006584006884006B89006C89006B89006B8800
                6B88006B88006C89006A86006B88006986006785006C8A2B8DA575B7C9B7DEE9
                E5F8FE96CBD73B93AA00728F006281006784006B88006C89006B89006C8C1068
                79945001AE4A009E4E00964F00974F00974F00974F00974F00974F00994F0097
                4F00995000974F00974F00994F00974F00974F00994F00995000994F00974F00
                974F00974F00994F00974F00994F00994F00974F00974F00974F00974F009950
                00974F00994F00A44E00AE4A00AD4A00A84A005C5A401767748E510FAC4A00AD
                4A00AA4B009E4F00974F00974F00974F00974F00995000974F00974F00974F00
                994F00974F00974F00994F00974F00974F00974F00974F00974F00994F00974F
                00994F00994F00994F00974F00995000995000974F00975000974F00974F0097
                4F009A4F00A64B00AD4B00525C46006C8B006C8A006B89006B89006986006382
                00658318829C58A7BCC0E2EDD6EFF79ACCD956A5BA087B950068840067850069
                88006A88006B89006B88006B89006C89006B89006B88006C89006B8800648203
                748F8AC4D3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF95C9D7016786006785006B89006B89006B
                89006B88006C89006B89006A88006986006986006C8A17829C65AEC0A8D5E1A4
                D1DF65AEC39BCDD9FFFFFF2B8DA5005B7B006986006B89006B89006C89006B89
                006C89006D8C0F687A8D5108A74B00A64B00A84B00A74B00A74B00A74A00A74B
                00A74B00A74A00A74B00A74A00A74A00A74A00A74A00A74A00A74A00A74A00A7
                4A00A74A00A84B00A74A00A74B00A84B00A74A00A74A00A84B00A74B00A74B00
                A74A00A74A00A74B00A74B00A64A00A54B00A44B00A44B00A54B005C5A411767
                748C5210A64C00A44B00A54C00A64B00A74B00A74A00A74A00A74B00A74A00A7
                4B00A74B00A74A00A74B00A74A00A74B00A74B00A74B00A74A00A74B00A74A00
                A74B00A74A00A74B00A74A00A74B00A74B00A74A00A84B00A84B00A74A00A74B
                00A74A00A74B00A74A00A84B00A64A00A44C004F5F49006C8B006C8A006C8900
                6C89006B89006C89006B88006483005D7D81C0D0E4F7FB71B5C688C1D1B0D9E5
                93C8D73B96AD00738F006A88006886006986006C89006B89006C89006B88006B
                89006B89006B8900617E3794ACF5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF97CBD9016C8B006986
                006B88006C89006C89006B89006B88006B89006B89087B954B9FB597CCD9B4DC
                E785C1D0449CB314829B0061814FA2B5FEFFFF3291A8006382006B89006C8900
                6C89006C89006B89006C89006C8C0F687A8D5108A74C00A34C00A34B00A44C00
                A34B00A34B00A34B00A34C00A34B00A44C00A34B00A34B00A34B00A34B00A34C
                00A34B00A44C00A34B00A44C00A44C00A34C00A44B00A34B00A34B00A34B00A3
                4B00A34B00A34C00A44B00A34B00A34B00A34C00A34B00A34C00A44B00A44B00
                A64C005C5B411767758D5110A64A00A44C00A44C00A34B00A44C00A44C00A34B
                00A34B00A44C00A34B00A34B00A34B00A34B00A44C00A44B00A34C00A34B00A3
                4C00A44C00A34B00A44C00A34B00A34B00A34B00A44C00A34B00A44C00A44C00
                A34B00A44C00A34B00A44C00A34B00A34B00A44C00A54B00A44C004E5D49006B
                8B006B8A006C89006B88006C89006B89006C89006B8800658483C1D1BEE1EA04
                789200718D288CA45FABBEA3D1DEB3DCE676B7C9268AA300718D006A89006B89
                006B89006B89006B89006C89006B890063833E97AFF4FFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF99
                CBD9016D8B006986006B88006B89006B89006C89006B890069862F8FA8C6E6EF
                A7D3E054A4BA15819B006F8C006885006784005D7C58A8BAFEFFFF3392A80063
                82006B89006B89006C89006B89006C89006C89006D8C0F687A8C5108A64B00A4
                4C00A34B00A44C00A44C00A34B00A34B00A44C00A34B00A44C00A34B00A34C00
                A34C00A34B00A34C00A44C00A34B00A44C00A34C00A34C00A34B00A34C00A44C
                00A34B00A34B00A34B00A34B00A34C00A34B00A44C00A34C00A34C00A34B00A3
                4B00A44C00A44B00A64B005C5B411767748D5210A64B00A34B00A34B00A44C00
                A44C00A44C00A34B00A34C00A44C00A44C00A34B00A44C00A34B00A34C00A34B
                00A34B00A34B00A34B00A34B00A34B00A44C00A44C00A34B00A34B00A44C00A4
                4C00A34B00A34B00A34B00A44C00A44C00A44C00A34B00A44C00A44B00A54C00
                A44B004F5D49006C8B006B8A006B89006C89006B89006B89006C89006A880065
                8484C1D1C4E5ED0A7B94006481006784006A880176912E8FA67BBACBD4EEF6A5
                D4DF016A89006A88006B89006C89006C89006B89006B890065833F99AFF5FFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFF99CCD9016C8B006A86006C89006B89006B89006C89006A8800
                688654A5BBE1F6FB1F869E006785006886006A86006A89006C8900607E58A7BA
                FEFFFF3392A8006382006B89006C89006B89006C89006B89006B89006D8C0F69
                7A8D5108A64C00A44C00A34B00A34B00A34B00A44C00A44C00A34B00A34B00A4
                4C00A44C00A34C00A44C00A34C00A34B00A44C00A34B00A34B00A34B00A44C00
                A34C00A34B00A34B00A34B00A44C00A34B00A44C00A34B00A34C00A44C00A44C
                00A44C00A34C00A34B00A44C00A44B00A64B005C5B411765748C5110A64B00A4
                4C00A34B00A34B00A34B00A44C00A34B00A44C00A34B00A34C00A34B00A34B00
                A34B00A44C00A44C00A34B00A44C00A34B00A44C00A34B00A34B00A34C00A44C
                00A44C00A44C00A44C00A44C00A34B00A44C00A44C00A44C00A34B00A44C00A4
                4C00A34B00A44C00A44C004E5D49006C8B006C8A006B89006B89006B89006B89
                006C89006B8800658484C1D1C4E5EE0C7C95006884006B89006A880069850068
                85006986A1D1DDE8FAFE016E8A006A86006B89006B89006B89006B89006B8900
                65833F99AFF5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF99CBD9016D8B006986006B89006B89006B
                89006B88006B8800698652A4BADCF2F91A849C006785006C89006B89006B8900
                6C8900607E58A7BAFEFFFF3392A7006382006C89006C89006C89006B89006C88
                006B89006C8C0F687A8D5108A64B00A44B00A34C00A34B00A34B00A44C00A34B
                00A44C00A34C00A34C00A34C00A44C00A34B00A44C00A44C00A34C00A34B00A4
                4C00A34B00A44C00A34B00A34B00A44C00A34C00A34B00A34B00A34B00A34B00
                A44C00A44C00A34B00A44C00A34B00A34B00A34C00A44B00A54B005C5A411765
                758D5110A64A00A34B00A34B00A44C00A44C00A34B00A34B00A34B00A44C00A3
                4C00A44C00A34B00A34B00A44C00A34C00A34B00A34C00A34B00A44C00A44C00
                A44C00A34B00A44C00A44C00A44C00A34C00A34B00A44C00A34B00A34B00A34B
                00A44C00A44C00A34B00A34B00A54B00A44B004E5D49006C8B006C8A006B8900
                6C89006B89006B89006B89006A8800658484C1D1C4E5EE0C7B95006784006B89
                006B89006C89006A880069859BCFDAE5F8FB016E8A006A86006C88006B89006C
                89006B89006C890065833F99AFF4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF99CBD8016D8A006A86
                006C89006C89006C89006B88006C8800698652A5BADCF2F91D859D006885006B
                89006C89006B89006C8800607E58A7BAFEFFFF3392A7006482006B89006C8900
                6C89006C89006C88006B89006C8C0F687A8D5208A74B00A34C00A34B00A34B00
                A34B00A44C00A44C00A34B00A34B00A34C00A34B00A44C00A34B00A34C00A34B
                00A44C00A34B00A34C00A44C00A34C00A34B00A44C00A34B00A44C00A34C00A4
                4C00A34C00A44C00A34B00A34C00A34B00A34C00A44C00A44C00A44C00A44B00
                A54B005C5B411767748D5110A64A00A34C00A44C00A34B00A34B00A34B00A44C
                00A34C00A44C00A44B00A34B00A44C00A44C00A34B00A44C00A44C00A34B00A3
                4C00A44C00A34B00A34B00A44C00A44C00A44C00A34B00A34C00A44C00A34C00
                A44C00A44C00A34B00A44C00A34B00A44C00A44C00A54B00A44C004F5F49006C
                8B006C8A006C89006B89006B89006B89006C89006A8800678384C1D1C4E5EE0C
                7B95006784006C89006C89006B88006B88006A869CCFDAE4F7FB016E8A006986
                006B88006B89006B89006B89006B890064833F99AFF4FFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF99
                CCD8016C8A006986006B89006B89006B89006C89006B8900688552A4BADCF2F9
                1D859D006986006B89006C89006C89006B8900607E58A7BAFEFFFF3392A80063
                82006C89006C89006B89006B89006C89006B89006C8C0F68798D5108A64B00A4
                4B00A44C00A34B00A44C00A44C00A44C00A34B00A44C00A44C00A34B00A44C00
                A44C00A34B00A44C00A44C00A44C00A34B00A34B00A44C00A34B00A34B00A44C
                00A44C00A34B00A44C00A44C00A44C00A34B00A44C00A44C00A34B00A34B00A3
                4B00A44C00A44B00A54B005C5B411765758C5210A64B00A44C00A34C00A34B00
                A44C00A34B00A34B00A44C00A34B00A44C00A44C00A34B00A34C00A34B00A34B
                00A44C00A44C00A34C00A34B00A34B00A44C00A34B00A34B00A34B00A34B00A3
                4B00A34C00A34B00A34C00A44C00A44C00A44C00A44C00A44C00A34B00A44B00
                A44C004F5D49006B8B006C8A006B89006C89006C89006C89006B89006B880065
                8384C1D1C4E5EE0C7C95006884006B89006B88006C89006B880069869CCFDAE4
                F8FB016E8A006A86006C89006B89006B89006B89006B890064823F99AFF4FFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFF99CCD9016C8B006986006B88006B89006C89006B89006B8800
                698652A4BADCF2F91D859D006886006B89006C89006C89006B8900607E58A7BA
                FEFFFF3393A8006381006C89006B89006C89006B89006C89006B89006C8C0F68
                798D5108A64B00A44B00A44C00A44C00A44C00A44C00A44C00A44C00A44B00A3
                4C00A34B00A44C00A34C00A34C00A44C00A44C00A44C00A34B00A34B00A44C00
                A34B00A44C00A44C00A34B00A34C00A44C00A44C00A44C00A44C00A34B00A34B
                00A34B00A34C00A44C00A34B00A44B00A64B005C5A411765758D5110A64B00A3
                4B00A44C00A44C00A34C00A44C00A34B00A44C00A34C00A44C00A34B00A44C00
                A44C00A44C00A44C00A44C00A44C00A44C00A44C00A34B00A34B00A44C00A44C
                00A34B00A44C00A34B00A34B00A44C00A34C00A34B00A34B00A34B00A34B00A3
                4B00A44C00A54B00A44C004F5D49006B8B006C8A006B89006C89006B89006B89
                006B89006B8800658484C1D1C4E5EE0C7B95006784006C89006B88006B89006B
                880069869CCFDAE4F8FB016E8A006986006C88006C89006B89006C89006B8900
                64833F99AFF5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF99CBD9016D8B006986006B89006B89006C
                89006B89006B8800688651A3B8DBF2F91D859D006886006B89006B89006B8900
                6B8900607E58A7BAFEFFFF3392A8006482006B89006B89006C89006B89006C89
                006B89006C8C0F68798C5108A64A00A34B00A34B00A34B00A34C00A34B00A34B
                00A44C00A34B00A44C00A34C00A34B00A44C00A34B00A44B00A44C00A34B00A4
                4C00A34B00A44C00A34B00A34B00A44C00A44C00A34B00A44C00A44C00A34B00
                A44C00A34B00A34B00A34C00A34C00A34B00A34C00A44B00A64B005C5A411765
                748D5210A74C00A44B00A34B00A44C00A44C00A44C00A44C00A34B00A34C00A3
                4B00A44C00A44C00A44C00A44C00A34B00A34B00A34B00A44C00A34C00A44C00
                A34B00A44C00A34B00A44C00A34B00A34B00A44C00A44C00A34C00A34B00A44C
                00A44C00A34C00A34B00A34C00A44B00A44B004E5F49006C8B006C8A006B8900
                6B88006B89006B89006C89006B8800658484C0D1C4E5EE0C7C95006884006C89
                006C89006B89006A88006A869CCFDAE4F7FB016E8A006A86006B89006C89006B
                89006C89006B890064833F99AFF4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF99CCD9016C8B006986
                006B89006C89006B89006C89006B8800688657A6BBDEF3F91D859D006986006C
                89006B89006B89006B8900607E58A7BAFEFFFF3392A8006381006B89006B8900
                6C89006B89006B89006B89006C8C0F687A8C5108A64B00A44C00A34B00A34B00
                A34B00A34B00A44C00A44C00A34B00A44C00A34C00A44C00A34C00A34B00A34B
                00A44C00A44C00A34B00A34B00A44C00A44C00A34B00A34B00A34B00A34B00A4
                4C00A44C00A44C00A34B00A44C00A44C00A44C00A34C00A44C00A44B00A44B00
                A64C005C5A411767748C5110A64B00A44C00A34B00A34B00A44C00A44C00A34B
                00A44C00A34B00A44C00A44C00A34B00A34B00A34B00A34B00A34B00A34B00A4
                4C00A34B00A34B00A44C00A34B00A34C00A34B00A34C00A34B00A34B00A44C00
                A34B00A44C00A44C00A34B00A44C00A44C00A34B00A44B00A44B004E5D49006C
                8B006B8A006B89006B89006B89006B89006B89006A8800658484C1D1C4E5EE0C
                7C95006784006B89006C89006B88006A880069869CCFDAE2F7FB016D89006A86
                006B89006B89006B89006B88006B890065833F99AFF4FFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF99
                CBD9016D8B006986006C89006C89006B89006C89006B8800688575B8C8E8F9FE
                1B859D006985006B88006C89006B89006B8900607E58A7BAFEFFFF3392A80063
                81006C89006C89006C89006B89006B89006B89006C8C0E687A8D5108A74A00A4
                4C00A34B00A34B00A34B00A34B00A44C00A44C00A34B00A44C00A44C00A34B00
                A34C00A34B00A44C00A34B00A34C00A44C00A44C00A44C00A34B00A34C00A44C
                00A34B00A34B00A34B00A44C00A44C00A44C00A34B00A44C00A34B00A34B00A3
                4B00A44C00A44B00A54B005C5B411767758D5110A64B00A44C00A34B00A34B00
                A34B00A44C00A44C00A44C00A34B00A44C00A44C00A34B00A34B00A34B00A44C
                00A44C00A44C00A44C00A34B00A44C00A34C00A34B00A44C00A34B00A34B00A4
                4C00A44C00A34B00A34C00A34B00A34C00A34B00A34C00A44C00A34B00A54B00
                A44B004E5F49006C8B006C8A006B89006B88006B89006C89006B89006A880065
                8384C1D1C4E5EE0C7B95006884006C89006C89006B88006B880069869BCFDAE7
                F9FE017491006A86006C89006B88006B89006B89006B890065833F99AFF5FFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFF99CBD8016C8A006986006C89006B89006B89006B8800678500
                6C8ABEE1ECF1FFFF19839B006886006C89006B89006C89006C8900607E58A7BA
                FEFFFF3393A8006482006B89006B88006B88006B89006B89006C89006D8C0F69
                7A8C5208A64B00A44B00A34C00A44C00A34B00A44C00A34B00A44C00A44C00A3
                4C00A44C00A44C00A44C00A34C00A34B00A34B00A34C00A34B00A34B00A34B00
                A44C00A44B00A34B00A34B00A44C00A44C00A34B00A34B00A34C00A34C00A44C
                00A44C00A34B00A44B00A34C00A44B00A64C005C5B411765748C5110A64C00A3
                4B00A34B00A44C00A44C00A44C00A34B00A34B00A44B00A34B00A34B00A34B00
                A44C00A34B00A34B00A34B00A34B00A44C00A44C00A34B00A44C00A34B00A34B
                00A44C00A34B00A34C00A34B00A34B00A44C00A44C00A44C00A44C00A34B00A3
                4C00A34C00A44C00A54C004F5D49006C8B006C8A006C89006C89006B89006B88
                006B89006A8800658484C1D1C4E5EE0C7C95006783006B88006B89006B89006A
                88006A8696CDD8FFFFFF499EB5006482006A86006B88006B89006B89006B8900
                64833F99AFF4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF96CBD8016A890067840069860068860068
                85006483006D8C71B4C7FEFFFFF2FFFF17829B006986006B89006B89006C8900
                6C8900607E58A7BAFEFFFF3393A8006382006B89006C89006B89006B89006C89
                006B89006C8C0F687A8D5108A74C00A34B00A44C00A34B00A34B00A34B00A44C
                00A44C00A34B00A34B00A34B00A34C00A44C00A44C00A44C00A44C00A44C00A3
                4C00A34B00A34B00A34B00A34C00A44C00A44C00A34B00A34B00A44C00A34B00
                A34B00A44C00A44C00A34B00A34C00A34C00A34B00A44B00A54B005C5A401765
                748D5210A64B00A44C00A44C00A34C00A44C00A44C00A34B00A34B00A34C00A4
                4C00A34C00A44C00A34B00A44C00A44C00A44C00A34B00A44C00A34B00A34B00
                A44C00A34C00A34B00A34B00A44C00A34B00A44C00A34B00A44C00A34B00A34C
                00A34B00A44C00A44C00A34B00A44B00A44B004E5F49006C8B006C8A006B8900
                6B89006C89006C89006B89006A8800658484C1D1C4E5EE0C7B95006784006C89
                006B89006B89006A8800698691C8D5FFFFFFCFEDF32389A20064830068840068
                85006A860069860062813B96AEF4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9FCFDD01749200728E
                077A950F7E9A2B8EA663ACBFB5DDE7FFFFFFFFFFFFEDFBFF17839B006986006C
                89006B89006C89006B8900607E58A7BAFEFFFF3392A8006382006B89006B8900
                6C89006B89006C89006B89006C8C0F687A8D5108A64B00A44C00A34B00A34B00
                A44C00A44C00A34B00A44C00A34B00A34B00A44C00A34B00A44C00A34B00A34B
                00A44C00A34B00A34C00A44C00A44C00A34B00A44C00A34B00A44C00A44C00A3
                4C00A34B00A44C00A34B00A34B00A44C00A34B00A34B00A44C00A34B00A44B00
                A64B005C5B411767748D5110A64A00A34B00A44C00A34B00A34B00A34B00A44C
                00A44C00A44C00A34B00A44C00A34B00A34C00A44C00A34B00A34C00A44C00A4
                4C00A34B00A34B00A44C00A34B00A34B00A34B00A34B00A34B00A44C00A34B00
                A34B00A44C00A34B00A34B00A34B00A44C00A34B00A54C00A44B004E5D49006C
                8B006C8A006B89006C89006B88006B89006B89006A8800658384C1D1C4E5EE0C
                7C95006884006C89006C89006B89006B88006A8690C8D5FFFFFFFFFFFFE4F6FD
                8CC4D3449BB01C849E0B7C97047894006C8B4A9EB5F6FFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA
                FFFFDDF2F8DCF1F8E1F6FAE7F8FEF6FFFFFFFFFFFFFFFFFFFFFFFFFFFFEDFBFF
                17829B006886006B89006C89006C89006B8900607E58A7BAFEFFFF3392A80063
                82006B88006C89006B89006B89006C89006C89006C8C0F68798D5208A64B00A4
                4C00A44C00A44C00A44C00A34B00A34B00A44C00A34B00A44C00A34B00A34B00
                A44C00A34C00A34B00A34C00A44C00A44C00A34C00A34C00A34B00A44C00A44C
                00A34B00A44C00A44C00A34C00A34B00A34B00A34C00A44C00A34B00A34C00A4
                4C00A44C00A54C00A64C005C5A411767758C5110A64B00A44C00A44C00A34B00
                A44C00A34B00A34B00A34B00A44C00A34B00A34B00A44C00A34B00A44C00A34B
                00A44C00A34C00A34B00A44C00A34B00A34C00A34C00A44C00A34B00A44C00A4
                4C00A44C00A34B00A34B00A44C00A34B00A44C00A34B00A34B00A44C00A44B00
                A44C004E5D49006B8B006B8A006B89006C89006C89006B89006C89006B880065
                8384C1D1C4E5EE0C7B95006784006C89006C89006B89006B88006A8690C8D5FF
                FFFFFFFFFFFFFFFFFFFFFFFEFFFFEEFBFFE4F7FDDFF5FAD8F0F7E9FAFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFEDFBFF17839B006986006B89006C89006B89006B8900607E58A8BA
                FEFFFF3393A8006382006B89006C89006B89006B89006B89006B89006C8C0F68
                7A8D5108A64B00A44C00A44C00A34B00A34C00A34B00A34B00A34B00A44C00A4
                4C00A34C00A34B00A44C00A34C00A34B00A44C00A34C00A44C00A34C00A34C00
                A44C00A34C00A44C00A34B00A34B00A44C00A34B00A34B00A44C00A34B00A44C
                00A44C00A44C00A34C00A34B00A44B00A64C005C5A401767748D5210A74B00A4
                4C00A44C00A34B00A34B00A34B00A34B00A34B00A44C00A34B00A34B00A44C00
                A34B00A44C00A44C00A34B00A44C00A44C00A34C00A44C00A34B00A44C00A34B
                00A44C00A44C00A34B00A44C00A34B00A44C00A44C00A34B00A34C00A34B00A3
                4B00A44C00A54C00A44C004E5D49006C8B006B8A006C89006B89006B89006C89
                006C89006B8800658484C1D1C4E5ED0C7B94006784006C89006B89006B89006B
                8800698690C8D5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFEDFBFF17839B006986006B88006B89006C8900
                6B8900607E58A8BAFEFFFF3392A8006382006B89006B89006B88006B88006C89
                006B88006C8C0F687A8D5108A64B00A44C00A44C00A34B00A34C00A44C00A34B
                00A44C00A34C00A34B00A34B00A34B00A44C00A34B00A34C00A34B00A44C00A3
                4B00A34C00A44C00A44C00A34C00A44C00A34B00A44C00A34B00A44C00A34C00
                A44C00A34B00A34B00A34B00A44C00A34B00A44C00A44B00A64B005C5A411767
                748C5110A64B00A44B00A34C00A44C00A34B00A44C00A44C00A34B00A44C00A3
                4B00A34B00A34B00A34C00A34B00A44C00A44C00A34C00A34C00A34B00A34B00
                A44C00A34B00A44C00A34C00A34B00A34B00A44C00A34B00A44C00A44C00A34B
                00A34B00A34B00A34B00A44C00A54B00A44B004E5F49006C8A006B89006B8900
                6B89006B89006C89006B89006A8800658484C1D1C4E5EE0C7B95006884006C89
                006C89006B89006A88006A8690C8D5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDFBFF17829B006885006B
                88006B89006B89006C8900607E58A7BAFEFFFF3393A8006382006B89006B8800
                6C89006B89006B88006B89006C8C0F687A8C5108A64A00A34B00A34B00A34B00
                A34B00A44C00A34B00A34B00A44C00A44C00A34B00A34C00A34C00A34B00A34B
                00A44C00A34B00A34B00A34B00A44C00A34B00A44C00A34B00A34B00A34B00A3
                4B00A44B00A34B00A44C00A34B00A44C00A34B00A34C00A44C00A34B00A44B00
                A54B005C5A411767748D5210A64A00A44B00A34B00A34B00A44C00A34B00A44C
                00A34B00A34B00A34B00A34B00A34B00A34C00A34B00A34B00A34B00A44C00A3
                4B00A34B00A34B00A34C00A34B00A34B00A34B00A34B00A34C00A44C00A44C00
                A44B00A34B00A34B00A44C00A34B00A34B00A44C00A54B00A44B004E5F48006C
                8B006C8A006B89006C89006B89006B89006B89006A8800658484C0D1C4E5EE0C
                7C95006784006B89006B89006B89006B8800698690C8D5FFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFECFAFF
                107E97006483006784006785006885006884005B7B53A5B7FEFFFF3393A80063
                82006C89006C88006C89006B88006C89006C89006D8C0F697A8C5108A64A00A3
                4C00A44C00A34C00A44C00A44C00A44C00A44C00A34B00A34B00A44C00A34C00
                A44C00A44C00A34C00A34B00A34B00A34C00A34C00A34B00A44C00A34B00A44C
                00A34B00A44C00A44C00A34B00A44C00A34B00A44C00A34C00A34C00A34B00A3
                4B00A34B00A44B00A54B005C5A411765758D5210A64B00A34B00A44C00A34C00
                A34B00A44C00A34B00A44C00A44C00A34B00A44C00A44C00A44C00A44C00A34B
                00A44C00A34B00A44C00A34B00A34B00A34B00A44C00A44C00A34B00A44C00A3
                4B00A34C00A34B00A34B00A34B00A34B00A34B00A44C00A34B00A44C00A54C00
                A44C004F5F48006C8A006C8A006B89006C89006C89006C89006B89006A880065
                8484C1D1C1E4ED0578920063810068850067850068850067840065838CC6D4FF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFF5FFFF4CA1B5298BA42A8DA72A8DA62B8EA62A8DA620849E81BECE
                FFFFFF3392A8006382006B89006B89006B89006B89006B89006C89006D8C0E68
                7A8D5108A74B00A34B00A44C00A34B00A34C00A44C00A44C00A34C00A34B00A3
                4B00A44C00A44C00A34B00A34C00A34B00A44C00A34B00A34B00A34B00A34B00
                A34C00A34B00A44C00A34B00A44C00A34B00A34C00A34B00A34C00A34B00A34B
                00A34B00A44C00A34B00A44C00A44C00A64C005C5A411767758D5110A64A00A4
                4C00A34B00A44C00A44C00A34B00A34B00A34B00A44C00A34B00A34B00A34B00
                A34B00A44C00A44C00A34B00A34B00A44C00A34B00A34C00A34B00A34B00A34B
                00A34B00A34B00A34B00A34B00A44C00A44C00A34B00A44C00A44C00A44C00A4
                4C00A34C00A44B00A44B004E5D49006C8B006C8A006B89006B89006B89006B89
                006C89006B8800648482C0D0D5EFF6439BB2278AA32B8EA62A8DA62A8EA62A8C
                A5298CA5ABD7E2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7FFFFF1FFFFF2FFFFF2FFFFF2FFFFF2
                FFFFEEFEFFFEFFFFF2FFFF3392A8006382006B88006C89006C89006C89006C89
                006B89006C8C0F687A8C5108A64B00A34B00A44C00A34B00A44C00A34B00A34B
                00A44C00A34B00A44C00A34B00A34B00A34B00A44C00A34B00A44C00A44C00A3
                4B00A44C00A34B00A34C00A34B00A44C00A34B00A44C00A34B00A34C00A34B00
                A44C00A34B00A34C00A44C00A34B00A34B00A44C00A44B00A64B005C5B411767
                748D5110A64B00A44C00A44C00A34B00A44C00A44C00A34B00A34B00A44C00A3
                4B00A44C00A44C00A34B00A34B00A44C00A34C00A34B00A34B00A44C00A44C00
                A34B00A44C00A34B00A34B00A34B00A34B00A34B00A34B00A44C00A34B00A34B
                00A34B00A34B00A34B00A44C00A54B00A44C004E5D49006B8B006C8A006C8900
                6C89006B89006C89006C89006B880064847CBCCDFEFFFFF5FFFFF0FEFFF2FFFF
                F2FFFFF2FFFFF1FFFFF1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFEFF3392A8006382006C89006B8900
                6B89006B89006C88006B89006C8C0F687A8D5108A74B00A34B00A34B00A44C00
                A44C00A34C00A34B00A44C00A34B00A34C00A34B00A34B00A34C00A34B00A44C
                00A44C00A44C00A44C00A44C00A34B00A44C00A34B00A44C00A34B00A44C00A4
                4C00A44C00A34B00A44C00A34B00A34B00A34B00A34B00A44C00A34C00A44C00
                A64C005C5A401767748C5110A64B00A44C00A44C00A34C00A34B00A34B00A34B
                00A34B00A34B00A44C00A34B00A34C00A44C00A34C00A34B00A44C00A34B00A3
                4B00A34C00A34C00A34B00A44C00A44C00A44C00A44C00A44C00A34B00A44C00
                A34B00A34B00A34B00A34C00A44C00A44C00A34B00A44B00A44B004F5D48006C
                8A006C8A006B89006C89006B89006B89006B89006A880065847BBDCDFEFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0FEFF3392A80063
                82006C89006B89006C89006C89006B89006C89006C8C0F697A8C5108A64B00A4
                4B00A44C00A44C00A44C00A34B00A44C00A34C00A34B00A34C00A34B00A44C00
                A44C00A34C00A34B00A34B00A34B00A34B00A34C00A44C00A34B00A44C00A44C
                00A44C00A44C00A44C00A44C00A44C00A44C00A34B00A44C00A34C00A34B00A4
                4C00A34C00A44C00A64B005C5A411867758D5210A74B00A44C00A44C00A34B00
                A44C00A34B00A44C00A34B00A34B00A44C00A34C00A44C00A34B00A44C00A34B
                00A44C00A44C00A44C00A44C00A34C00A44C00A34C00A44C00A34C00A44C00A4
                4C00A34C00A34B00A44C00A44C00A34B00A44C00A34C00A44B00A44B00A54C00
                A44C004F5F49006B8B006C8A006C89006B89006C89006B89006C89006A880064
                847BBCCDFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                F0FEFF3392A8006381006C89006B89006C89006C89006B89006B89006C8C0E68
                7A8D5108A74C00A44B00A44C00A44C00A34B00A34B00A44C00A34C00A34B00A3
                4C00A34B00A44C00A44C00A44C00A44C00A34B00A34B00A44C00A34C00A44C00
                A34B00A44C00A44C00A34B00A44C00A44C00A44C00A44C00A34B00A44C00A34C
                00A34C00A44C00A44C00A34B00A54C00A54B005D5A401765748D5210A64B00A3
                4B00A34B00A34B00A34B00A44C00A44C00A34B00A34B00A34C00A34B00A44C00
                A34B00A44C00A34B00A34B00A34C00A34B00A44C00A34C00A44C00A34B00A34C
                00A34C00A44C00A34B00A44C00A44B00A34C00A34B00A34B00A44C00A44C00A3
                4B00A44C00A54C00A44B004E5D49006C8B006C8A006C89006B89006C89006B89
                006C89006A880064847BBBCDFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFF0FEFF3293A8006382006A89006B88006A89006B89006B88
                006C89006C8C0F68798D5208A64B00A34B00A44C00A34B00A44C00A44C00A34B
                00A34B00A44B00A34B00A44C00A34C00A34B00A44C00A34B00A34B00A44C00A3
                4B00A34B00A34B00A44C00A34C00A34B00A44C00A44C00A34B00A34B00A44C00
                A44C00A34B00A44C00A34B00A34B00A44C00A44B00A44B00A64C00595B441765
                748E510FA64A00A44C00A34B00A34B00A44C00A34B00A34B00A44C00A34B00A4
                4B00A44C00A34B00A34B00A44C00A34B00A34B00A44B00A34B00A44C00A44B00
                A34B00A44C00A34B00A44C00A34B00A34B00A44C00A34B00A44B00A34B00A34C
                00A34C00A34B00A44C00A34C00A64B00A44B004F5D49006B8B006B8A006A8900
                6B88006A88006B89006B89006B880065837ABBCDFEFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFEFF2C8EA5005D7D00678400688500
                6784006884006784006985006C8C0F687A8D5108A64B00A44B00A34B00A34B00
                A34C00A34B00A44C00A44C00A34B00A44C00A34C00A44C00A34B00A34B00A44C
                00A34B00A34B00A44C00A34B00A34B00A34B00A34B00A44C00A44C00A34B00A4
                4C00A34B00A44C00A34B00A44C00A34B00A34B00A34C00A34C00A34B00A54B00
                A74B00485F520F687A895311A74B00A34B00A44C00A34B00A34B00A44C00A44C
                00A44C00A34B00A34B00A44C00A34B00A34B00A44C00A34B00A34B00A34C00A4
                4C00A44C00A34B00A44C00A34B00A34B00A44C00A34B00A34B00A34C00A34B00
                A34B00A44C00A44C00A44C00A44C00A34B00A34B00A54B00A44B004E5D49006C
                8B006B8900678400688500678400678400678400658300608076BACBFEFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA2D1DC7BBA
                C980BECD80BECD80BECD80BECD83C0CF5AA7BC0074930B65788C5108A74B00A3
                4B00A34C00A34C00A34C00A44C00A34B00A34C00A44C00A34B00A44C00A34B00
                A34B00A34B00A44B00A34C00A44C00A44C00A34C00A44C00A34B00A34B00A34C
                00A44C00A34B00A34B00A34B00A44C00A44C00A34B00A44C00A44C00A34C00A4
                4C00A34B00A74B009D4E001E6468006B89625A36AC4A00A44C00A44C00A44C00
                A44C00A44C00A34B00A34B00A34B00A44C00A44C00A44C00A44C00A44C00A34B
                00A34B00A34C00A44C00A34B00A34B00A34B00A34B00A44C00A34B00A34C00A4
                4C00A44C00A44C00A34B00A34B00A34B00A44C00A34B00A34B00A34B00A54B00
                A44C004F5F4900678519859E80BFCD81BFCD80BECD80BECD80BECD80BDCC7CBB
                C9C6E7EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC3E2EC087B9A0563
                758C5108A64B00A34C00A34B00A44C00A34B00A34B00A34C00A44C00A44B00A3
                4C00A34B00A34B00A34B00A34B00A44C00A44C00A34B00A34B00A44C00A34B00
                A34C00A44B00A44C00A44C00A44C00A44C00A34B00A44C00A34B00A34B00A44C
                00A34B00A34B00A34B00A64B00AB4A005F593500678300698D1A636A955006AB
                4A00A34B00A34B00A34B00A44C00A44C00A34B00A34B00A44C00A34B00A44C00
                A44C00A44C00A34B00A44C00A34B00A44C00A34B00A34B00A34C00A44C00A34B
                00A34B00A44C00A44C00A34B00A44C00A34B00A44C00A44C00A34B00A34B00A3
                4B00A34C00A44C00A44C004F5F49006181439DB2FEFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                C8E6EE087C9A0563758B5108A64B00A44B00A44B00A34C00A34B00A44C00A34C
                00A44C00A34B00A44C00A34C00A34B00A34B00A34C00A34B00A44C00A34B00A4
                4C00A34B00A34B00A44C00A44B00A34C00A44C00A44C00A34C00A44C00A44C00
                A34B00A44C00A44C00A34B00A44C00A84A00A84B007256240063750C819F3695
                AE006C8D325C569C4F00AB4A00A54A00A44C00A44C00A44C00A34C00A34B00A3
                4B00A34B00A44C00A44C00A34B00A34C00A44C00A34B00A44C00A34B00A34B00
                A34B00A44C00A44C00A34B00A34B00A34B00A34B00A44C00A44C00A34B00A44C
                00A34B00A44C00A34B00A34B00A44B00A44B004E5D49006182469FB3FEFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFC6E5EE087C9B0562758B5108A64C00A44C00A34B00A44C00
                A44C00A34B00A34B00A44C00A44C00A34B00A34B00A44C00A34B00A34B00A34B
                00A34B00A34B00A34B00A44C00A34B00A34B00A34B00A44C00A44C00A44C00A4
                4C00A34B00A34B00A44C00A34B00A54C00AB4A00AD4B00994F00595935006075
                0C809EB2DCE6F5FFFF5CABBF006A8C245D5A7E5317A64B00AD4A00A84B00A54C
                00A34B00A44C00A34B00A34B00A34B00A44C00A34C00A44C00A34B00A34B00A4
                4C00A34B00A44C00A44C00A44C00A34B00A34B00A34C00A34C00A34B00A44C00
                A34B00A44C00A34B00A44C00A34C00A34B00A34B00A44B00A44B004F5F490061
                82449EB3FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC6E5EE087C9B086374955000B24900AE
                4A00AE4A00AE4A00AE4900AE4A00AE4900AE4900AE4A00AE4A00AE4A00AE4900
                AE4900AE4A00AE4900AE4A00AE4900AE4A00AE4900AE4900AE4A00AE4900AE4A
                00AE4A00AE4900AE4900AE4900AE4A00AE4900AF4A00A44C0086520F5C572F1C
                5B5B0067853194AFC2E4EDFFFFFFFFFFFFFBFFFF81BECF047B9A005F743B5947
                725420964F03AC4B00AF4900AF4900AE4A00AE4900AE4A00AE4900AE4900AE49
                00AE4A00AE4A00AE4900AE4A00AE4900AE4900AE4A00AE4A00AE4900AE4A00AE
                4A00AE4A00AE4A00AE4A00AE4900AE4900AE4900AE4A00AE4900AE4A00AF4900
                AF4A00545C44006182449DB3FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC4E4ED0579950061
                7A3E5B4A4C593F4A593F4A593F4A593F4B59404A583F4B59404B59404A583F4A
                59404B593F4B593F4B593F4A593F4A593F4B583F4B583F4A583F4A59404B5940
                4A593F4B593F4A59404B59404B593F4B58404B59404B5940485941385A47225C
                5904606D00708E2F95B291C9D8EFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC8
                E7F061AFC50E83A4006580145D622D5B4F415A434B59404A59404B59404B5940
                4B59404B593F4B593F4A59404B59404B59404A59404B59404B59404B583F4A59
                3F4B593F4A583F4A59404B59404A583F4A59404B59404B593F4B59404A59404B
                593F4B59404B59404B59401D6268005D7D419CB0FEFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                D0EAF33391A8147E9A1984A41A84A51984A41984A41985A51984A51984A51984
                A51985A51984A41984A51984A51985A51984A51984A51984A51984A51984A519
                84A51984A51984A51984A51984A51984A51984A51984A51984A51985A51984A5
                1C86A72491B247A6C181C4D8BBE2ECF0FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFDAF2F9A3D5E462B4CC329CBA1D8BAC1984A519
                84A51984A51984A51984A51984A51984A41984A51984A51984A51984A51984A4
                1984A51984A41984A51984A51984A51984A51984A41984A41984A51984A51984
                A51984A51984A51984A41984A51984A51985A51984A10F7A9664AEC0FEFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFBFFFFF8FFFFF7FFFFF6FFFFF6FFFFF6FFFFF6FFFF
                F6FFFFF6FFFFF6FFFFF6FFFFF6FFFFF6FFFFF6FFFFF6FFFFF6FFFFF6FFFFF6FF
                FFF6FFFFF6FFFFF6FFFFF6FFFFF6FFFFF6FFFFF6FFFFF6FFFFF6FFFFF6FFFFF6
                FFFFF6FFFFF6FFFFF7FFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFF9FFFFF6FFFFF6FFFFF6FFFFF6FFFFF6FFFFF6FFFFF6FFFFF6FFFFF6FFFFF6
                FFFFF6FFFFF6FFFFF6FFFFF6FFFFF6FFFFF6FFFFF6FFFFF6FFFFF6FFFFF6FFFF
                F6FFFFF6FFFFF6FFFFF6FFFFF6FFFFF6FFFFF6FFFFF6FFFFF6FFFFF7FFFFF6FF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
              mmHeight = 18521
              mmLeft = 5292
              mmTop = 794
              mmWidth = 40217
              BandType = 1
            end
            object ppLabel43: TppLabel
              UserName = 'Label17'
              Caption = 'DERRAMA MAGISTERIAL'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = [fsBold]
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 3704
              mmLeft = 6085
              mmTop = 19579
              mmWidth = 38894
              BandType = 1
            end
            object ppLabel44: TppLabel
              UserName = 'Label20'
              Caption = 'Sistema de Seguridad y Bienestar Social del Magisterio'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 2646
              mmLeft = 794
              mmTop = 24077
              mmWidth = 49477
              BandType = 1
            end
            object ppLine7: TppLine
              UserName = 'Line6'
              Weight = 0.750000000000000000
              mmHeight = 1588
              mmLeft = 0
              mmTop = 28045
              mmWidth = 160338
              BandType = 1
            end
            object ppLabel45: TppLabel
              UserName = 'Label42'
              Caption = 'Modelo : CAPRE 0'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3260
              mmLeft = 135467
              mmTop = 23283
              mmWidth = 23791
              BandType = 1
            end
          end
          object ppDetailBand5: TppDetailBand
            BeforePrint = ppDetailBand5BeforePrint
            PrintHeight = phDynamic
            mmBottomOffset = 0
            mmHeight = 170392
            mmPrintPosition = 0
            object ppLabel46: TppLabel
              UserName = 'Label22'
              Caption = 'APELLIDOS(S) y NOMBRE(S) :'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 11
              Font.Style = []
              Transparent = True
              mmHeight = 4784
              mmLeft = 265
              mmTop = 10319
              mmWidth = 45593
              BandType = 4
            end
            object ppLabel48: TppLabel
              UserName = 'Label24'
              Caption = 'DIRECCION'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 11
              Font.Style = []
              Transparent = True
              mmHeight = 4784
              mmLeft = 265
              mmTop = 16140
              mmWidth = 17611
              BandType = 4
            end
            object ppLabel49: TppLabel
              UserName = 'Label25'
              Caption = 'DISTRITO'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 11
              Font.Style = []
              Transparent = True
              mmHeight = 4784
              mmLeft = 265
              mmTop = 21960
              mmWidth = 14647
              BandType = 4
            end
            object ppLabel50: TppLabel
              UserName = 'Label26'
              Caption = 'PROVINCIA'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 11
              Font.Style = []
              Transparent = True
              mmHeight = 4784
              mmLeft = 265
              mmTop = 27781
              mmWidth = 17695
              BandType = 4
            end
            object ppLabel51: TppLabel
              UserName = 'Label27'
              Caption = 'DPTO.'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 11
              Font.Style = []
              Transparent = True
              mmHeight = 4784
              mmLeft = 265
              mmTop = 33602
              mmWidth = 9906
              BandType = 4
            end
            object ppLabel52: TppLabel
              UserName = 'Label28'
              Caption = 'MODULAR'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 11
              Font.Style = []
              Transparent = True
              mmHeight = 4784
              mmLeft = 265
              mmTop = 39423
              mmWidth = 16849
              BandType = 4
            end
            object ppLabel53: TppLabel
              UserName = 'Label29'
              Caption = 'RECORDATORIO DE PAGO'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 18
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 7673
              mmLeft = 45773
              mmTop = 46038
              mmWidth = 68263
              BandType = 4
            end
            object ppLabel54: TppLabel
              UserName = 'Label30'
              Caption = 'Estimado Asociado'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 14
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 6011
              mmLeft = 0
              mmTop = 58208
              mmWidth = 39031
              BandType = 4
            end
            object ppMemo4: TppMemo
              UserName = 'Memo1'
              Caption = 
                'DERRAMA MAGISTERIAL VIENE CUMPLIENDO A'#209'O A A'#209'O CON UNO DE SUS FI' +
                'NES PRINCIPALES INCREMENTAR  LOS BENEFICIOS PARA CON SUS ASOCIAD' +
                'OS.'
              CharWrap = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 11
              Font.Style = [fsBold]
              Lines.Strings = (
                
                  'DERRAMA MAGISTERIAL VIENE CUMPLIENDO A'#209'O A A'#209'O CON UNO DE SUS FI' +
                  'NES PRINCIPALES INCREMENTAR  LOS BENEFICIOS PARA CON SUS ASOCIAD' +
                  'OS.')
              Stretch = True
              TextAlignment = taFullJustified
              Transparent = True
              mmHeight = 11642
              mmLeft = 0
              mmTop = 67469
              mmWidth = 160338
              BandType = 4
              mmBottomOffset = 0
              mmOverFlowOffset = 0
              mmStopPosition = 0
              mmLeading = 0
            end
            object ppMemo5: TppMemo
              UserName = 'Memo2'
              Caption = 'Memo2'
              CharWrap = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 11
              Font.Style = []
              Lines.Strings = (
                
                  'Este logro ha sido posible con la colaboraci'#243'n de aquellos asoci' +
                  'ados que est'#225'n siendo puntuales en sus pagos, por ello y deseand' +
                  'o que Ud. siga siendo parte de este grupo de docentes que cumple' +
                  'n con su instituci'#243'n le comunicamos que se presenta un problema ' +
                  'en su descuento mensual, en tal sentido lo exhortamos a regulari' +
                  'zar  esta situaci'#243'n a trav'#233's de las modalidades de pago  que la ' +
                  'Derrama Magisterial le ofrece, en donde Ud.  Podr'#225' realizar sus ' +
                  'pagos en cualquiera de nuestras agencias u Oficinas desconcentra' +
                  'das a nivel nacional.'
                ''
                
                  'O abonar en la Cuenta Recaudadora de la Derrama Magisterial en c' +
                  'ualquier agencia del Banco de Cr'#233'dito, el importe del valor de s' +
                  'u cuota, correspondiente al presente mes.')
              TextAlignment = taFullJustified
              Transparent = True
              mmHeight = 44450
              mmLeft = 0
              mmTop = 81227
              mmWidth = 160338
              BandType = 4
              mmBottomOffset = 0
              mmOverFlowOffset = 0
              mmStopPosition = 0
              mmLeading = 0
            end
            object ppLabel55: TppLabel
              UserName = 'Label32'
              Caption = 'Atentamente.'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 11
              Font.Style = []
              Transparent = True
              mmHeight = 4784
              mmLeft = 0
              mmTop = 147373
              mmWidth = 22056
              BandType = 4
            end
            object ppLabel56: TppLabel
              UserName = 'Label33'
              Caption = 'DERRAMA MAGISTERIAL'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 11
              Font.Style = []
              Transparent = True
              mmHeight = 4763
              mmLeft = 529
              mmTop = 159544
              mmWidth = 38894
              BandType = 4
            end
            object ppLabel57: TppLabel
              UserName = 'Label34'
              Caption = '(Cuenta Nro: 193-1405628-0-61)  '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 14
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 6011
              mmLeft = 0
              mmTop = 125677
              mmWidth = 68199
              BandType = 4
            end
            object ppLabel60: TppLabel
              UserName = 'Label37'
              Caption = ':'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 11
              Font.Style = []
              Transparent = True
              mmHeight = 4763
              mmLeft = 21960
              mmTop = 16140
              mmWidth = 1058
              BandType = 4
            end
            object ppLabel61: TppLabel
              UserName = 'Label38'
              Caption = ':'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 11
              Font.Style = []
              Transparent = True
              mmHeight = 4763
              mmLeft = 21960
              mmTop = 21960
              mmWidth = 1058
              BandType = 4
            end
            object ppLabel62: TppLabel
              UserName = 'Label39'
              Caption = ':'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 11
              Font.Style = []
              Transparent = True
              mmHeight = 4763
              mmLeft = 21960
              mmTop = 27781
              mmWidth = 1058
              BandType = 4
            end
            object ppLabel63: TppLabel
              UserName = 'Label40'
              Caption = ':'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 11
              Font.Style = []
              Transparent = True
              mmHeight = 4763
              mmLeft = 21960
              mmTop = 33602
              mmWidth = 1058
              BandType = 4
            end
            object ppLabel64: TppLabel
              UserName = 'Label41'
              Caption = ':'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 11
              Font.Style = []
              Transparent = True
              mmHeight = 4763
              mmLeft = 21960
              mmTop = 39423
              mmWidth = 1058
              BandType = 4
            end
            object ppDBText15: TppDBText
              UserName = 'DBText9'
              DataField = 'ASOAPENOM'
              DataPipeline = ppdbC1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 11
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'ppdbC1'
              mmHeight = 4763
              mmLeft = 48683
              mmTop = 10319
              mmWidth = 111390
              BandType = 4
            end
            object ppDBText17: TppDBText
              UserName = 'DBText11'
              AutoSize = True
              DataField = 'ASOCODMOD'
              DataPipeline = ppdbC1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 11
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'ppdbC1'
              mmHeight = 4784
              mmLeft = 27252
              mmTop = 39423
              mmWidth = 22013
              BandType = 4
            end
            object pplDist1: TppLabel
              UserName = 'lDist1'
              Caption = 'lDist1'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 11
              Font.Style = []
              Transparent = True
              mmHeight = 4784
              mmLeft = 27252
              mmTop = 21960
              mmWidth = 9017
              BandType = 4
            end
            object pplProv1: TppLabel
              UserName = 'lProv1'
              Caption = 'lProv1'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 11
              Font.Style = []
              Transparent = True
              mmHeight = 4784
              mmLeft = 27252
              mmTop = 27781
              mmWidth = 10118
              BandType = 4
            end
            object pplDpto1: TppLabel
              UserName = 'lDpto1'
              Caption = 'lDpto1'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 11
              Font.Style = []
              Transparent = True
              mmHeight = 4784
              mmLeft = 27252
              mmTop = 33602
              mmWidth = 10710
              BandType = 4
            end
            object pplDir1: TppLabel
              UserName = 'lDir1'
              AutoSize = False
              Caption = 'lDir1'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 11
              Font.Style = []
              Transparent = True
              mmHeight = 4763
              mmLeft = 27252
              mmTop = 16140
              mmWidth = 132821
              BandType = 4
            end
            object ppLabel65: TppLabel
              UserName = 'Label31'
              Caption = 'EQUIPO DE COBRANZAS'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 10
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 4233
              mmLeft = 2381
              mmTop = 164571
              mmWidth = 35190
              BandType = 4
            end
            object ppLabel167: TppLabel
              UserName = 'Label167'
              Caption = 
                'S'#237'rvase contactarse sobre el estado de su deuda con el Sr (ta). ' +
                '  '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 11
              Font.Style = []
              Transparent = True
              Visible = False
              mmHeight = 4784
              mmLeft = 0
              mmTop = 136525
              mmWidth = 100373
              BandType = 4
            end
            object pplGestor1: TppLabel
              UserName = 'lGestor1'
              AutoSize = False
              Caption = 'Gestor'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 11
              Font.Style = []
              Transparent = True
              Visible = False
              mmHeight = 4784
              mmLeft = 102659
              mmTop = 136525
              mmWidth = 50006
              BandType = 4
            end
            object ppLabel47: TppLabel
              UserName = 'Label47'
              Caption = 'FECHA:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 11
              Font.Style = []
              Transparent = True
              mmHeight = 4763
              mmLeft = 126736
              mmTop = 1323
              mmWidth = 11642
              BandType = 4
            end
            object ppSystemVariable8: TppSystemVariable
              UserName = 'SystemVariable8'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 11
              Font.Style = []
              Transparent = True
              mmHeight = 4763
              mmLeft = 139700
              mmTop = 1323
              mmWidth = 17992
              BandType = 4
            end
          end
          object ppSummaryBand3: TppSummaryBand
            mmBottomOffset = 0
            mmHeight = 31485
            mmPrintPosition = 0
            object ppmOfides1: TppMemo
              UserName = 'mOfides1'
              Caption = 'mOfides1'
              CharWrap = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 18521
              mmLeft = 265
              mmTop = 11642
              mmWidth = 153459
              BandType = 7
              mmBottomOffset = 0
              mmOverFlowOffset = 0
              mmStopPosition = 0
              mmLeading = 0
            end
            object ppLabel166: TppLabel
              UserName = 'Label166'
              Caption = 'AGENCIAS / OFIDES DERRAMA MAGISTERIAL:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 10
              Font.Style = [fsBold, fsUnderline]
              Transparent = True
              mmHeight = 3969
              mmLeft = 265
              mmTop = 6615
              mmWidth = 64029
              BandType = 7
            end
          end
        end
      end
    end
    object ppFooterBand3: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppParameterList2: TppParameterList
    end
  end
  object ppdbC1: TppDBPipeline
    DataSource = DM1.dsMovCre
    UserName = 'dbC1'
    Left = 610
    Top = 315
  end
  object pprCare1: TppReport
    AutoStop = False
    DataPipeline = ppdbC1
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 20000
    PrinterSetup.mmMarginLeft = 30000
    PrinterSetup.mmMarginRight = 20000
    PrinterSetup.mmMarginTop = 20000
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    Units = utMillimeters
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zsPercentage
    PreviewFormSettings.ZoomPercentage = 70
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 642
    Top = 315
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppdbC1'
    object ppHeaderBand2: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppDetailBand2: TppDetailBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 25400
      mmPrintPosition = 0
      object ppSubReport1: TppSubReport
        UserName = 'SubReport1'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        ParentPrinterSetup = False
        TraverseAllData = False
        mmHeight = 5027
        mmLeft = 0
        mmTop = 7673
        mmWidth = 160000
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppChildReport1: TppChildReport
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report'
          PrinterSetup.PaperName = 'A4'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.mmMarginBottom = 20000
          PrinterSetup.mmMarginLeft = 30000
          PrinterSetup.mmMarginRight = 20000
          PrinterSetup.mmMarginTop = 20000
          PrinterSetup.mmPaperHeight = 297000
          PrinterSetup.mmPaperWidth = 210000
          PrinterSetup.PaperSize = 9
          Units = utMillimeters
          Version = '7.02'
          mmColumnWidth = 0
          object ppTitleBand1: TppTitleBand
            mmBottomOffset = 0
            mmHeight = 29633
            mmPrintPosition = 0
            object ppImage1: TppImage
              UserName = 'Image1'
              AutoSize = True
              MaintainAspectRatio = False
              Picture.Data = {
                07544269746D6170E67C0000424DE67C00000000000036000000280000009800
                0000460000000100180000000000B07C00000000000000000000000000000000
                0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFBADEE87BBBCB79BBC97EBECC7EBECD7EBDCC7EBECC7EBECC7EBECC7EBDCC
                7EBDCC7EBDCC7EBECC7EBECC7EBDCC7EBDCC7EBDCC7EBECC7EBDCC7EBECC7EBD
                CC7EBECC7EBECD7EBDCC7EBECC7DBDCC7DBDCCB8DDE7F0FEFF92C8D67CBCCC7E
                BDCC7EBDCC7EBDCC7EBDCC7EBDCC7EBECC7EBDCC7EBDCC7EBDCC7EBECC7EBDCC
                7EBDCC7EBDCC7EBDCD7EBECC7EBDCC7EBDCD7EBDCC7EBDCC7EBDCC7EBDCC7EBE
                CD7DBDCC75B8C892C8D5EAF9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFECFAFF66AEC000718C006986006D8A006D8A006C8A00
                6C8A006D8A006C8A006C8A006C89006D8A006D8A006C8A006C8A006C89006D8A
                006C8A006D8A006C8A006D8A006D8A006C8A006C8A006C89006A8863ACBFCFEC
                F317839D006A88006C8A006C8A006D8A006D8A006D8A006D8A006C8A006C8A00
                6C8A006D8A006C8A006D8A006C8A006C8A006D8A006C89006C8A006C8A006C8A
                006C89006C8A006B890068851F88A1B3DAE6FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF81BFCF01738F0068
                85006A88006986006986006986006A86006988006A86006986006986006A8600
                6986006986006986006A86006986006986006986006986006986006986006985
                00678460ABBECFECF312809B006584006A86006986006A86006A86006A86006A
                86006986006986006A86006986006A86006A86006986006986006986006A8600
                6986006986006A860069860069860068852D8EA6D0EDF5FFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFF7FBCCE006A88006B88006C89006B89006B89006B89006C89006B89006B
                89006B89006C89006B89006B89006C89006C89006C89006C89006C89006B8900
                6C89006B89006B8800698662ACBFD0ECF316829C006986006B89006B89006C89
                006C89006C89006C89006C88006B88006C89006B89006B89006C89006C89006B
                89006C89006B89006C89006B89006B89006B8900688514819BDDF3FAFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFECFBFF6BB0C5006C8A006A88006B89006B89006B89006B89
                006B88006C89006B89006C89006B89006C89006C88006B89006B89006C89006B
                89006B88006C89006B89006C89006A88006A8662ACBFCFECF316819C006A8600
                6C89006B89006B89006B89006B89006B89006B88006B88006B89006B89006C89
                006B89006B89006C89006C89006B89006C89006C89006B89006B890069861280
                9BAFD9E5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFC1E4EC6DB3C52A8CA600708C006A88006B89006C8900
                6C89006C89006B89006C89006B89006C89006C89006B89006C89006B89006C89
                006B88006C89006C89006B89006B89006C89006B89006B88006A8662ACBFCFEC
                F216829C006986006B89006B89006C89006B89006B89006B89006B89006B8900
                6B89006B89006B89006B89006C89006B89006C89006B89006B89006B89006C89
                006C89006B89006986087A954AA1B596CBD7E8F9FEFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFD8F0F78AC3D33F9AB00B7B95006584006382006A86006B
                89006B89006C89006C89006B89006B89006C89006B88006B89006C89006B8900
                6C89006C89006B89006B89006B89006C89006B89006C89006C89006C89006A88
                00698662ACC0CFECF316819C006986006B89006B89006C89006C89006B89006C
                89006B89006C89006B89006C89006B89006B88006B89006C89006B89006B8900
                6B89006C89006B89006B89006B89006B89006784006281006D8B2189A15BAABD
                ABD6E1F5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFCEEAF281BFCF3895AC087995006D8B006584006584006B88
                006B89006B89006B89006C89006C89006C89006C89006C89006B89006B89006B
                89006B89006B89006C89006B89006C89006C89006C89006C89006B89006B8900
                6C89006B89006B8800698662ACBFCFECF316819C006886006B88006B89006C89
                006C89006C89006C89006B89006C89006B88006C89006B89006B89006B89006C
                89006B89006C89006C89006B89006B89006B89006C89006C89006C89006B8900
                698600648300698500728E1C849E58A7BCA5D4DFECFAFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFEEFDFFC3E4ED7DBDCD2B8DA600728E006B8900678500678400698600
                6C89006B89006B89006B89006B89006C89006B89006C89006B89006C89006C89
                006C89006B89006B89006C89006B89006C89006B88006C89006B89006B89006B
                89006B89006C89006C89006B88006B88006A8662ACBFCFECF316829C006A8600
                6C89006C89006B89006B88006B89006B89006C88006C89006B89006B89006C89
                006B89006B89006C89006B88006B89006C89006B88006C89006C89006C89006B
                89006C89006B89006C89006C89006B88006885006784006986006D8A0B7B964F
                A2B6A2D0DEDDF2F8F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FBFFFFD4EEF5A6D4DF65AEC12288A200708C006985006986006886006988006A
                89006C89006B89006C89006B89006B89006B88006B89006B89006B89006B8900
                6B89006C89006B89006C89006C89006B89006B89006B89006B88006B89006C89
                006B89006B89006B88006C89006B89006C89006B89006B88006A8663ADC0D0EC
                F316829C006986006B89006C89006C89006B88006B89006B89006B88006B8900
                6C89006B89006C89006C89006B89006C88006B89006C89006C89006B88006C89
                006B89006C89006B89006B89006B89006C89006C89006B89006B89006B89006A
                88006986006985006784006A88067A95419AB085C1D0BEE1EAE7F9FEFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2
                FFFFBEE1EA88C3D14A9FB50E7E99006885006582006885006986006B88006B88
                006B89006B89006B89006C89006C89006B89006B89006B89006C89006C89006B
                89006C89006B88006C89006C89006B89006B89006C89006B89006B88006C8900
                6B89006B89006B89006B88006C89006B89006B89006C89006B88006B89006B88
                00698663ACC0D0ECF316829C006986006B89006B88006B89006C89006C89006B
                89006B89006B89006B88006C89006B89006B89006C89006C89006C89006B8900
                6C89006B89006B89006B89006C89006B89006B89006B89006B89006C89006B89
                006C88006B89006B89006C89006B89006A88006A86006986006584006483006F
                8D2A8DA568B0C1A2D0DDD5EEF6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFC0E2EC72B6C73794AC037693006382006282006985006B88006C89006B8900
                6B89006C89006B88006C89006C89006C89006B89006C88006B89006C89006B89
                006C89006B89006B89006B89006B89006C89006B89006B89006B89006C89006B
                88006B89006B89006C89006B89006B89006B88006C89006C89006B89006B8900
                6C88006B88006B8800698662ACBFCFECF316819C006886006B89006B88006B88
                006B89006C89006B89006C89006B88006B89006B89006C89006C89006B89006B
                89006C89006C89006B89006C89006C89006B88006C88006B89006B89006C8900
                6B89006B89006B89006B88006C89006C89006C89006B89006C89006B89006B89
                006B88006B8900698600658300618000698819839D53A5B896CBD8E5F7FDFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFBDDFE9489EB40B7A95006584006281006885006B88006B89006B89006B
                89006B89006C89006B89006B89006C89006B89006B89006B89006B89006C8800
                6C89006B89006B89006B89006C89006B89006C89006C89006B89006C89006B89
                006B89006C89006B89006C89006B89006B89006B89006C89006B89006B89006B
                89006C89006C89006C89006C89006B88006A8662ACBFCFECF316819C00688500
                6C89006B89006B89006C89006B89006C89006B88006B89006B89006C89006B89
                006C89006B89006C89006B89006B89006C89006B88006B89006C88006C88006B
                89006C89006C89006B89006B89006C89006C89006B89006B89006C89006B8900
                6C89006B89006B89006B89006B89006B89006B88006C89006B88006583006282
                006D8A2188A179BACBEEFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFE2F6FB63AEC0047691006483006584006A88006B89006B88006B89
                006B89006B89006C89006C89006B89006B88006C89006B89006B88006C89006C
                89006B89006C88006B89006C89006C89006B89006B89006B89006B89006B8900
                6B89006B88006C89006C89006988006885006986006B89006B89006B88006C89
                006B88006B89006B89006C89006B89006B89006B88006A8800698662ACC0CFEC
                F316819D006885006B88006C89006B89006C89006B89006B89006C89006C8900
                6B89006B89006B89006A88006885006885006A88006B89006B88006C89006C89
                006B89006B88006B88006C89006B89006B89006B89006C89006B89006C89006C
                89006B89006B88006C89006B88006B89006B89006C89006B89006B89006C8900
                6C89006B89006B89006885006382006988268CA4A3D3DEFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFF8FFFF96CBD71A859D006986006884006A88006B89006B8900
                6B89006B88006B89006C89006B89006C89006C89006B89006986006885006985
                0068840069850068850068850069850069850069850068850068850069850068
                85006885006885006884006885006985006784006D8B10819A057993006C8A00
                6B89006B89006C89006B89006B89006B89006C89006B89006B89006B89006A88
                00698661ABBFCFECF316829D006985006B88006C89006C89006B89006C89006C
                89006B89006B89006C89006B89006B8900708C10809907799400688500688400
                6885006885006985006885006884006885006884006885006885006884006985
                006884006985006985006885006885006985006886006A88006B89006C89006C
                89006C89006B89006C89006B89006B89006B89006C8900698600678400728D51
                A2B6CCE8F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFB6DDE83D97AD006C89006885006A88006B89006B
                89006C89006B88006B89006B89006B88006B89006B89006C8900678500638200
                6D8A017892057994057994057994057993057994057893057994057994057994
                057994057993057894057894057894057893057893017592117C976CB3C5B2DA
                E679BACB017592006A86006C89006C89006C89006B88006B89006B89006C8900
                6B89006B89006B88006A8664ADC0CEEAF315809B006886006C89006B89006B89
                006B89006B89006B88006C89006B89006C89006B88006988308FA7A6D4E0A4D3
                DF3A96AD05769204789205789405789405789405789405799405789405799405
                789405789305799405789405789405789405799405799405789400728F006785
                006383006A86006B89006B89006C89006B89006B89006B88006B89006B89006B
                89006C8900698600688508799474B7C8E5F7FDFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFD4EDF55CAABD00718E006784006A86006B89
                006C89006B89006B88006B89006C89006B89006C89006B89006C89006B890065
                8407799456A6BA7DBCCD89C3D38CC4D48CC4D48CC4D48CC4D48CC4D58CC4D48C
                C4D48CC4D48CC4D38CC4D58CC4D48CC4D48CC4D58CC4D48CC4D48CC4D489C0D1
                A8D3E09CCEDC3F96AD3192AA00728E006A86006B89006B89006B89006C89006B
                89006C89006B89006B89006C89006A8800698678B8CCD6EFF717829C00698600
                6B88006B89006B89006B89006C89006B89006C89006B89006C89006B88006A88
                17829C3591AA6BB3C4B4DAE691C6D78AC3D38CC4D48CC4D58CC4D58CC4D48CC4
                D38CC4D48CC4D48CC4D48CC4D38CC4D38CC4D58CC4D48CC4D58CC4D58CC4D58B
                C3D486C1D372B6C73393AA006A89006886006B89006C89006B89006B88006B89
                006C89006B89006B89006C89006B88006B880068850067842186A19ACCD9F7FF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAFAFF81BECF16809A00648300698600
                6C89006C89006B89006B89006C89006C89006B89006C89006B89006B89006C89
                006B890069862A8DA5A6D3DF9CCEDC68B0C351A2B64C9FB44EA1B54EA1B54EA1
                B64EA1B64EA1B54EA1B54EA1B54EA1B54EA1B54EA1B64EA1B54EA1B54EA1B54E
                A1B54EA1B64FA2B64CA1B40E7D97006382006784006A88006C89006B88006B89
                006B89006B89006C89006C89006B89006C89006B89006A86006B89ACD6E4FBFF
                FF3F99AF006583006B89006B89006C89006B89006B89006B88006B89006C8900
                6C89006B89006B89006986006483006C892F8FA751A3B74EA1B54EA1B54EA1B5
                4EA1B54EA1B54EA1B54EA1B54EA1B54EA1B54EA1B54EA1B54EA1B54EA1B54EA1
                B54EA1B54EA1B54C9FB55BA8BC82C0CEB3DAE678B8C900718D006988006B8900
                6B89006B89006B88006B89006C89006C89006C89006B88006C89006B89006B89
                006583006C89419CB0B6DDE7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9DCEDC2D8EA60069860065
                83006B89006B89006B89006C89006B89006C89006B89006B88006C89006B8900
                6B89006C89006B89006886057893BAE0E993C8D601748F006180006281006382
                0063820063810063820063810063810063820062820064820063820062820063
                82006482006382006382006281006282006382006885006C89006B89006B8900
                6C89006B89006C89006C88006B89006B89006B89006B88006B89006A88006483
                3F99AFE8F9FFF6FFFFADD7E201718E006884006B89006B89006C89006C89006B
                89006C89006B89006B89006B89006B89006C89006B89006A8800648300628100
                6382006282006382006382006282006281006282006282006482006382006282
                0063820062820063810063820063820063820061800065833995ACD3ECF561AB
                BF006784006B88006B89006B89006B89006B89006B89006C89006B89006C8900
                6C89006C89006C89006B89006A860063820475925FABBDD4EEF5FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7E6EF459CB300718C
                006483006986006C89006B89006B89006B89006C89006C89006C89006B89006C
                89006B88006B89006B89006B880069860063831E869FE4F7FD439AB000628100
                6988006A88006A88006B88006A88006B88006B88006A88006B88006A88006B88
                006B88006A88006B86006B88006A88006A88006B88006B88006A88006A86006A
                88006B88006A88006A88006B88006A88006B88006A88006A88006A8800688500
                67850068853793ACDDF3FAC1E5EE71B5C7FCFFFF8DC6D601738E006784006785
                006986006A88006A88006A88006B88006A86006B88006A88006B88006A88006B
                88006B88006B88006A88006A88006A88006B88006B88006A88006B88006B8800
                6A88006A88006B88006B88006A88006A88006A88006A88006B88006A88006583
                006B88B2DCE6A1D0DF016482006784006988006B89006B88006B89006C89006B
                89006B89006B89006B89006B89006B89006B89006B88006C8900678400658414
                819B84C0D0F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE6F8FD71B5C607
                7A95006584006985006B89006B89006B89006B89006C89006B89006B88006B89
                006C89006B89006B89006B89006A8500658300688500728E18839D67AFC3E9FA
                FF9FD0DE15819B006D8B006A8600698600688600688600698600688600698500
                6886006986006886006886006986006986006886006885006986006986006986
                006986006986006886006886006886006986006886006986006986006886006A
                86006D8A00728F18849D79BACBEAFAFFD1EDF5288DA5006D8B75BAC9F7FFFFBA
                DFE9439CB207799400708C006A88006886006986006886006886006986006986
                0068860069860068850068860068860068860069860068860068860069860069
                8600698600698600688600698600688600698600698600688600688600688600
                6985006B8800738D479DB3DFF5FBBADFE93392A8097A94006C8A006584006885
                006A88006C89006B89006B89006C89006C89006B89006B89006B89006C89006B
                89006C89006A88006584006B892F8EA7AFD8E2FFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9FFFF96CB
                D91E859E006986006885006B88006C89006B89006B89006C88006B89006B8900
                6B89006B88006B88006B89006B88006584006382006D8B1E869E51A3B789C3D1
                B5DDE78DC5D54EA2B88CC8DAACD7E470B4C65BAABD63AEC065AFC065AFC065AF
                C065AFC065AFBF65AFC065AFC065AFBF65AFC065AFBF65AFC065AFBF65AFC065
                AFBF65AFBF65AFC065AFC065AFBF65AFBF65AFC065AFC065AFC065AFBF65AFC0
                65AFC064AFC062AEBF72B6C79BCDDCCCE8F1CBE9F271BACD047C9C0067850069
                85006A8C3095B3AAD8E5D7F0F7BBDEE986C1D165AEC163ADBF65AFBF65AFC065
                AFC065AFC065AFC065AFC065AFC065AFBF65AFC065AFC065AFC065AFBF65AFBF
                65AFC065AFBF65AFC065AFC065AFBF65AFC065AFC065AFBF65AFBF65AFBF65AF
                C065AFC065AFC060ACBE61ACBF8BC4D4ADD9E764B0C564AEC0ACD7E2A8D5E170
                B5C63795AC097A95006784006482006886006C88006C89006B89006B89006B89
                006C89006B88006B89006B89006B89006C89006A8600678400718C51A3B8CEEC
                F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                C3E4ED469CB2006B89006985006A88006B89006C89006B89006C89006C89006B
                88006B89006B88006B89006C8900698600628000678512819A50A3B682BECFA4
                D3DF9ECFDD5FABBE12809A006A88006782006C862691AF64B7CF8BCCE09DD6E8
                A1D8E99FD8E89FD8E89FD8E89FD8E79FD8E89FD8E89FD8E89FD8E89FD8E89FD8
                E89FD8E89FD8E89FD8E89FD8E89FD8E89FD8E89FD8E89FD8E89FD8E89FD8E89F
                D8E89FD8E89FD8E89FD8E8A1D9E896D3E582C7DC63B5CD2D97B600789B006780
                245F5D3061630D697A35605A09626F006C8C0F86A848A6C171BDD48BCDE09DD6
                E8A1D8E89FD8E89FD8E89FD8E89FD8E89FD8E89FD8E89FD8E89FD8E79FD8E89F
                D8E89FD8E89FD8E89FD8E89FD8E89FD8E89FD8E79FD8E89FD8E89FD8E89FD8E8
                9FD8E89FD8E89FD8E89FD8E8A2D9E899D4E67BC4D944A5C10E7C9A0067810068
                8500718D3392AA83C0D0AAD6E196CBD96BB2C43592AA00718D00628100678300
                6B88006C89006B89006B89006B89006B89006B88006B89006C89006C89006B88
                006A860067830D7C9783BFCFEEFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFE7F8FE78BAC9077994006582006A88006B89006B89006B88006B89006C89
                006C89006B88006B89006C89006A8800678400648200738F3995AC7CBCCC9CCE
                DCA2D0DE75B8C8278BA3006A89006583006986006C8A0B687B5D58373F5A4420
                5C5A155B5C145B5B145A5B145A5B145A5B145B5B155A5A145B5B155A5B145B5B
                145A5B145A5B145A5B145B5B145A5B145A5B145A5B145A5B145A5B145A5B145A
                5B145A5B145A5B145A5B155B5B145B5B155A5B145A5B155B5B165C5C195C5D29
                5C54465B426D57259D4C0062593D1A657191510F8A510E595833355C4C205C5B
                175C5D165B5C145B5B155A5B145B5B145A5B145A5B155A5B145A5B145B5B155A
                5B145A5A145B5B145A5B145B5B145B5B145A5B145A5B155B5B145A5A145A5B14
                5A5B145B5B155A5B145A5B145B5B145B5B145A5B145B5B155B5B185C5C2A5B51
                5458383A615B006C88006A880067850064830075914FA2B692C8D6A4D1DF93C8
                D762ACBF18829C006986006382006986006C89006B88006B88006C89006B8900
                6C88006B89006C89006B88006B880068850068853693AAB4DCE6FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFD1ECF33692AA006584006884006B89006C89006B89006B8800
                6B88006B88006C89006A86006B88006986006785006C8A2B8DA575B7C9B7DEE9
                E5F8FE96CBD73B93AA00728F006281006784006B88006C89006B89006C8C1068
                79945001AE4A009E4E00964F00974F00974F00974F00974F00974F00994F0097
                4F00995000974F00974F00994F00974F00974F00994F00995000994F00974F00
                974F00974F00994F00974F00994F00994F00974F00974F00974F00974F009950
                00974F00994F00A44E00AE4A00AD4A00A84A005C5A401767748E510FAC4A00AD
                4A00AA4B009E4F00974F00974F00974F00974F00995000974F00974F00974F00
                994F00974F00974F00994F00974F00974F00974F00974F00974F00994F00974F
                00994F00994F00994F00974F00995000995000974F00975000974F00974F0097
                4F009A4F00A64B00AD4B00525C46006C8B006C8A006B89006B89006986006382
                00658318829C58A7BCC0E2EDD6EFF79ACCD956A5BA087B950068840067850069
                88006A88006B89006B88006B89006C89006B89006B88006C89006B8800648203
                748F8AC4D3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF95C9D7016786006785006B89006B89006B
                89006B88006C89006B89006A88006986006986006C8A17829C65AEC0A8D5E1A4
                D1DF65AEC39BCDD9FFFFFF2B8DA5005B7B006986006B89006B89006C89006B89
                006C89006D8C0F687A8D5108A74B00A64B00A84B00A74B00A74B00A74A00A74B
                00A74B00A74A00A74B00A74A00A74A00A74A00A74A00A74A00A74A00A74A00A7
                4A00A74A00A84B00A74A00A74B00A84B00A74A00A74A00A84B00A74B00A74B00
                A74A00A74A00A74B00A74B00A64A00A54B00A44B00A44B00A54B005C5A411767
                748C5210A64C00A44B00A54C00A64B00A74B00A74A00A74A00A74B00A74A00A7
                4B00A74B00A74A00A74B00A74A00A74B00A74B00A74B00A74A00A74B00A74A00
                A74B00A74A00A74B00A74A00A74B00A74B00A74A00A84B00A84B00A74A00A74B
                00A74A00A74B00A74A00A84B00A64A00A44C004F5F49006C8B006C8A006C8900
                6C89006B89006C89006B88006483005D7D81C0D0E4F7FB71B5C688C1D1B0D9E5
                93C8D73B96AD00738F006A88006886006986006C89006B89006C89006B88006B
                89006B89006B8900617E3794ACF5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF97CBD9016C8B006986
                006B88006C89006C89006B89006B88006B89006B89087B954B9FB597CCD9B4DC
                E785C1D0449CB314829B0061814FA2B5FEFFFF3291A8006382006B89006C8900
                6C89006C89006B89006C89006C8C0F687A8D5108A74C00A34C00A34B00A44C00
                A34B00A34B00A34B00A34C00A34B00A44C00A34B00A34B00A34B00A34B00A34C
                00A34B00A44C00A34B00A44C00A44C00A34C00A44B00A34B00A34B00A34B00A3
                4B00A34B00A34C00A44B00A34B00A34B00A34C00A34B00A34C00A44B00A44B00
                A64C005C5B411767758D5110A64A00A44C00A44C00A34B00A44C00A44C00A34B
                00A34B00A44C00A34B00A34B00A34B00A34B00A44C00A44B00A34C00A34B00A3
                4C00A44C00A34B00A44C00A34B00A34B00A34B00A44C00A34B00A44C00A44C00
                A34B00A44C00A34B00A44C00A34B00A34B00A44C00A54B00A44C004E5D49006B
                8B006B8A006C89006B88006C89006B89006C89006B8800658483C1D1BEE1EA04
                789200718D288CA45FABBEA3D1DEB3DCE676B7C9268AA300718D006A89006B89
                006B89006B89006B89006C89006B890063833E97AFF4FFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF99
                CBD9016D8B006986006B88006B89006B89006C89006B890069862F8FA8C6E6EF
                A7D3E054A4BA15819B006F8C006885006784005D7C58A8BAFEFFFF3392A80063
                82006B89006B89006C89006B89006C89006C89006D8C0F687A8C5108A64B00A4
                4C00A34B00A44C00A44C00A34B00A34B00A44C00A34B00A44C00A34B00A34C00
                A34C00A34B00A34C00A44C00A34B00A44C00A34C00A34C00A34B00A34C00A44C
                00A34B00A34B00A34B00A34B00A34C00A34B00A44C00A34C00A34C00A34B00A3
                4B00A44C00A44B00A64B005C5B411767748D5210A64B00A34B00A34B00A44C00
                A44C00A44C00A34B00A34C00A44C00A44C00A34B00A44C00A34B00A34C00A34B
                00A34B00A34B00A34B00A34B00A34B00A44C00A44C00A34B00A34B00A44C00A4
                4C00A34B00A34B00A34B00A44C00A44C00A44C00A34B00A44C00A44B00A54C00
                A44B004F5D49006C8B006B8A006B89006C89006B89006B89006C89006A880065
                8484C1D1C4E5ED0A7B94006481006784006A880176912E8FA67BBACBD4EEF6A5
                D4DF016A89006A88006B89006C89006C89006B89006B890065833F99AFF5FFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFF99CCD9016C8B006A86006C89006B89006B89006C89006A8800
                688654A5BBE1F6FB1F869E006785006886006A86006A89006C8900607E58A7BA
                FEFFFF3392A8006382006B89006C89006B89006C89006B89006B89006D8C0F69
                7A8D5108A64C00A44C00A34B00A34B00A34B00A44C00A44C00A34B00A34B00A4
                4C00A44C00A34C00A44C00A34C00A34B00A44C00A34B00A34B00A34B00A44C00
                A34C00A34B00A34B00A34B00A44C00A34B00A44C00A34B00A34C00A44C00A44C
                00A44C00A34C00A34B00A44C00A44B00A64B005C5B411765748C5110A64B00A4
                4C00A34B00A34B00A34B00A44C00A34B00A44C00A34B00A34C00A34B00A34B00
                A34B00A44C00A44C00A34B00A44C00A34B00A44C00A34B00A34B00A34C00A44C
                00A44C00A44C00A44C00A44C00A34B00A44C00A44C00A44C00A34B00A44C00A4
                4C00A34B00A44C00A44C004E5D49006C8B006C8A006B89006B89006B89006B89
                006C89006B8800658484C1D1C4E5EE0C7C95006884006B89006A880069850068
                85006986A1D1DDE8FAFE016E8A006A86006B89006B89006B89006B89006B8900
                65833F99AFF5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF99CBD9016D8B006986006B89006B89006B
                89006B88006B8800698652A4BADCF2F91A849C006785006C89006B89006B8900
                6C8900607E58A7BAFEFFFF3392A7006382006C89006C89006C89006B89006C88
                006B89006C8C0F687A8D5108A64B00A44B00A34C00A34B00A34B00A44C00A34B
                00A44C00A34C00A34C00A34C00A44C00A34B00A44C00A44C00A34C00A34B00A4
                4C00A34B00A44C00A34B00A34B00A44C00A34C00A34B00A34B00A34B00A34B00
                A44C00A44C00A34B00A44C00A34B00A34B00A34C00A44B00A54B005C5A411765
                758D5110A64A00A34B00A34B00A44C00A44C00A34B00A34B00A34B00A44C00A3
                4C00A44C00A34B00A34B00A44C00A34C00A34B00A34C00A34B00A44C00A44C00
                A44C00A34B00A44C00A44C00A44C00A34C00A34B00A44C00A34B00A34B00A34B
                00A44C00A44C00A34B00A34B00A54B00A44B004E5D49006C8B006C8A006B8900
                6C89006B89006B89006B89006A8800658484C1D1C4E5EE0C7B95006784006B89
                006B89006C89006A880069859BCFDAE5F8FB016E8A006A86006C88006B89006C
                89006B89006C890065833F99AFF4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF99CBD8016D8A006A86
                006C89006C89006C89006B88006C8800698652A5BADCF2F91D859D006885006B
                89006C89006B89006C8800607E58A7BAFEFFFF3392A7006482006B89006C8900
                6C89006C89006C88006B89006C8C0F687A8D5208A74B00A34C00A34B00A34B00
                A34B00A44C00A44C00A34B00A34B00A34C00A34B00A44C00A34B00A34C00A34B
                00A44C00A34B00A34C00A44C00A34C00A34B00A44C00A34B00A44C00A34C00A4
                4C00A34C00A44C00A34B00A34C00A34B00A34C00A44C00A44C00A44C00A44B00
                A54B005C5B411767748D5110A64A00A34C00A44C00A34B00A34B00A34B00A44C
                00A34C00A44C00A44B00A34B00A44C00A44C00A34B00A44C00A44C00A34B00A3
                4C00A44C00A34B00A34B00A44C00A44C00A44C00A34B00A34C00A44C00A34C00
                A44C00A44C00A34B00A44C00A34B00A44C00A44C00A54B00A44C004F5F49006C
                8B006C8A006C89006B89006B89006B89006C89006A8800678384C1D1C4E5EE0C
                7B95006784006C89006C89006B88006B88006A869CCFDAE4F7FB016E8A006986
                006B88006B89006B89006B89006B890064833F99AFF4FFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF99
                CCD8016C8A006986006B89006B89006B89006C89006B8900688552A4BADCF2F9
                1D859D006986006B89006C89006C89006B8900607E58A7BAFEFFFF3392A80063
                82006C89006C89006B89006B89006C89006B89006C8C0F68798D5108A64B00A4
                4B00A44C00A34B00A44C00A44C00A44C00A34B00A44C00A44C00A34B00A44C00
                A44C00A34B00A44C00A44C00A44C00A34B00A34B00A44C00A34B00A34B00A44C
                00A44C00A34B00A44C00A44C00A44C00A34B00A44C00A44C00A34B00A34B00A3
                4B00A44C00A44B00A54B005C5B411765758C5210A64B00A44C00A34C00A34B00
                A44C00A34B00A34B00A44C00A34B00A44C00A44C00A34B00A34C00A34B00A34B
                00A44C00A44C00A34C00A34B00A34B00A44C00A34B00A34B00A34B00A34B00A3
                4B00A34C00A34B00A34C00A44C00A44C00A44C00A44C00A44C00A34B00A44B00
                A44C004F5D49006B8B006C8A006B89006C89006C89006C89006B89006B880065
                8384C1D1C4E5EE0C7C95006884006B89006B88006C89006B880069869CCFDAE4
                F8FB016E8A006A86006C89006B89006B89006B89006B890064823F99AFF4FFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFF99CCD9016C8B006986006B88006B89006C89006B89006B8800
                698652A4BADCF2F91D859D006886006B89006C89006C89006B8900607E58A7BA
                FEFFFF3393A8006381006C89006B89006C89006B89006C89006B89006C8C0F68
                798D5108A64B00A44B00A44C00A44C00A44C00A44C00A44C00A44C00A44B00A3
                4C00A34B00A44C00A34C00A34C00A44C00A44C00A44C00A34B00A34B00A44C00
                A34B00A44C00A44C00A34B00A34C00A44C00A44C00A44C00A44C00A34B00A34B
                00A34B00A34C00A44C00A34B00A44B00A64B005C5A411765758D5110A64B00A3
                4B00A44C00A44C00A34C00A44C00A34B00A44C00A34C00A44C00A34B00A44C00
                A44C00A44C00A44C00A44C00A44C00A44C00A44C00A34B00A34B00A44C00A44C
                00A34B00A44C00A34B00A34B00A44C00A34C00A34B00A34B00A34B00A34B00A3
                4B00A44C00A54B00A44C004F5D49006B8B006C8A006B89006C89006B89006B89
                006B89006B8800658484C1D1C4E5EE0C7B95006784006C89006B88006B89006B
                880069869CCFDAE4F8FB016E8A006986006C88006C89006B89006C89006B8900
                64833F99AFF5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF99CBD9016D8B006986006B89006B89006C
                89006B89006B8800688651A3B8DBF2F91D859D006886006B89006B89006B8900
                6B8900607E58A7BAFEFFFF3392A8006482006B89006B89006C89006B89006C89
                006B89006C8C0F68798C5108A64A00A34B00A34B00A34B00A34C00A34B00A34B
                00A44C00A34B00A44C00A34C00A34B00A44C00A34B00A44B00A44C00A34B00A4
                4C00A34B00A44C00A34B00A34B00A44C00A44C00A34B00A44C00A44C00A34B00
                A44C00A34B00A34B00A34C00A34C00A34B00A34C00A44B00A64B005C5A411765
                748D5210A74C00A44B00A34B00A44C00A44C00A44C00A44C00A34B00A34C00A3
                4B00A44C00A44C00A44C00A44C00A34B00A34B00A34B00A44C00A34C00A44C00
                A34B00A44C00A34B00A44C00A34B00A34B00A44C00A44C00A34C00A34B00A44C
                00A44C00A34C00A34B00A34C00A44B00A44B004E5F49006C8B006C8A006B8900
                6B88006B89006B89006C89006B8800658484C0D1C4E5EE0C7C95006884006C89
                006C89006B89006A88006A869CCFDAE4F7FB016E8A006A86006B89006C89006B
                89006C89006B890064833F99AFF4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF99CCD9016C8B006986
                006B89006C89006B89006C89006B8800688657A6BBDEF3F91D859D006986006C
                89006B89006B89006B8900607E58A7BAFEFFFF3392A8006381006B89006B8900
                6C89006B89006B89006B89006C8C0F687A8C5108A64B00A44C00A34B00A34B00
                A34B00A34B00A44C00A44C00A34B00A44C00A34C00A44C00A34C00A34B00A34B
                00A44C00A44C00A34B00A34B00A44C00A44C00A34B00A34B00A34B00A34B00A4
                4C00A44C00A44C00A34B00A44C00A44C00A44C00A34C00A44C00A44B00A44B00
                A64C005C5A411767748C5110A64B00A44C00A34B00A34B00A44C00A44C00A34B
                00A44C00A34B00A44C00A44C00A34B00A34B00A34B00A34B00A34B00A34B00A4
                4C00A34B00A34B00A44C00A34B00A34C00A34B00A34C00A34B00A34B00A44C00
                A34B00A44C00A44C00A34B00A44C00A44C00A34B00A44B00A44B004E5D49006C
                8B006B8A006B89006B89006B89006B89006B89006A8800658484C1D1C4E5EE0C
                7C95006784006B89006C89006B88006A880069869CCFDAE2F7FB016D89006A86
                006B89006B89006B89006B88006B890065833F99AFF4FFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF99
                CBD9016D8B006986006C89006C89006B89006C89006B8800688575B8C8E8F9FE
                1B859D006985006B88006C89006B89006B8900607E58A7BAFEFFFF3392A80063
                81006C89006C89006C89006B89006B89006B89006C8C0E687A8D5108A74A00A4
                4C00A34B00A34B00A34B00A34B00A44C00A44C00A34B00A44C00A44C00A34B00
                A34C00A34B00A44C00A34B00A34C00A44C00A44C00A44C00A34B00A34C00A44C
                00A34B00A34B00A34B00A44C00A44C00A44C00A34B00A44C00A34B00A34B00A3
                4B00A44C00A44B00A54B005C5B411767758D5110A64B00A44C00A34B00A34B00
                A34B00A44C00A44C00A44C00A34B00A44C00A44C00A34B00A34B00A34B00A44C
                00A44C00A44C00A44C00A34B00A44C00A34C00A34B00A44C00A34B00A34B00A4
                4C00A44C00A34B00A34C00A34B00A34C00A34B00A34C00A44C00A34B00A54B00
                A44B004E5F49006C8B006C8A006B89006B88006B89006C89006B89006A880065
                8384C1D1C4E5EE0C7B95006884006C89006C89006B88006B880069869BCFDAE7
                F9FE017491006A86006C89006B88006B89006B89006B890065833F99AFF5FFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFF99CBD8016C8A006986006C89006B89006B89006B8800678500
                6C8ABEE1ECF1FFFF19839B006886006C89006B89006C89006C8900607E58A7BA
                FEFFFF3393A8006482006B89006B88006B88006B89006B89006C89006D8C0F69
                7A8C5208A64B00A44B00A34C00A44C00A34B00A44C00A34B00A44C00A44C00A3
                4C00A44C00A44C00A44C00A34C00A34B00A34B00A34C00A34B00A34B00A34B00
                A44C00A44B00A34B00A34B00A44C00A44C00A34B00A34B00A34C00A34C00A44C
                00A44C00A34B00A44B00A34C00A44B00A64C005C5B411765748C5110A64C00A3
                4B00A34B00A44C00A44C00A44C00A34B00A34B00A44B00A34B00A34B00A34B00
                A44C00A34B00A34B00A34B00A34B00A44C00A44C00A34B00A44C00A34B00A34B
                00A44C00A34B00A34C00A34B00A34B00A44C00A44C00A44C00A44C00A34B00A3
                4C00A34C00A44C00A54C004F5D49006C8B006C8A006C89006C89006B89006B88
                006B89006A8800658484C1D1C4E5EE0C7C95006783006B88006B89006B89006A
                88006A8696CDD8FFFFFF499EB5006482006A86006B88006B89006B89006B8900
                64833F99AFF4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF96CBD8016A890067840069860068860068
                85006483006D8C71B4C7FEFFFFF2FFFF17829B006986006B89006B89006C8900
                6C8900607E58A7BAFEFFFF3393A8006382006B89006C89006B89006B89006C89
                006B89006C8C0F687A8D5108A74C00A34B00A44C00A34B00A34B00A34B00A44C
                00A44C00A34B00A34B00A34B00A34C00A44C00A44C00A44C00A44C00A44C00A3
                4C00A34B00A34B00A34B00A34C00A44C00A44C00A34B00A34B00A44C00A34B00
                A34B00A44C00A44C00A34B00A34C00A34C00A34B00A44B00A54B005C5A401765
                748D5210A64B00A44C00A44C00A34C00A44C00A44C00A34B00A34B00A34C00A4
                4C00A34C00A44C00A34B00A44C00A44C00A44C00A34B00A44C00A34B00A34B00
                A44C00A34C00A34B00A34B00A44C00A34B00A44C00A34B00A44C00A34B00A34C
                00A34B00A44C00A44C00A34B00A44B00A44B004E5F49006C8B006C8A006B8900
                6B89006C89006C89006B89006A8800658484C1D1C4E5EE0C7B95006784006C89
                006B89006B89006A8800698691C8D5FFFFFFCFEDF32389A20064830068840068
                85006A860069860062813B96AEF4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9FCFDD01749200728E
                077A950F7E9A2B8EA663ACBFB5DDE7FFFFFFFFFFFFEDFBFF17839B006986006C
                89006B89006C89006B8900607E58A7BAFEFFFF3392A8006382006B89006B8900
                6C89006B89006C89006B89006C8C0F687A8D5108A64B00A44C00A34B00A34B00
                A44C00A44C00A34B00A44C00A34B00A34B00A44C00A34B00A44C00A34B00A34B
                00A44C00A34B00A34C00A44C00A44C00A34B00A44C00A34B00A44C00A44C00A3
                4C00A34B00A44C00A34B00A34B00A44C00A34B00A34B00A44C00A34B00A44B00
                A64B005C5B411767748D5110A64A00A34B00A44C00A34B00A34B00A34B00A44C
                00A44C00A44C00A34B00A44C00A34B00A34C00A44C00A34B00A34C00A44C00A4
                4C00A34B00A34B00A44C00A34B00A34B00A34B00A34B00A34B00A44C00A34B00
                A34B00A44C00A34B00A34B00A34B00A44C00A34B00A54C00A44B004E5D49006C
                8B006C8A006B89006C89006B88006B89006B89006A8800658384C1D1C4E5EE0C
                7C95006884006C89006C89006B89006B88006A8690C8D5FFFFFFFFFFFFE4F6FD
                8CC4D3449BB01C849E0B7C97047894006C8B4A9EB5F6FFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA
                FFFFDDF2F8DCF1F8E1F6FAE7F8FEF6FFFFFFFFFFFFFFFFFFFFFFFFFFFFEDFBFF
                17829B006886006B89006C89006C89006B8900607E58A7BAFEFFFF3392A80063
                82006B88006C89006B89006B89006C89006C89006C8C0F68798D5208A64B00A4
                4C00A44C00A44C00A44C00A34B00A34B00A44C00A34B00A44C00A34B00A34B00
                A44C00A34C00A34B00A34C00A44C00A44C00A34C00A34C00A34B00A44C00A44C
                00A34B00A44C00A44C00A34C00A34B00A34B00A34C00A44C00A34B00A34C00A4
                4C00A44C00A54C00A64C005C5A411767758C5110A64B00A44C00A44C00A34B00
                A44C00A34B00A34B00A34B00A44C00A34B00A34B00A44C00A34B00A44C00A34B
                00A44C00A34C00A34B00A44C00A34B00A34C00A34C00A44C00A34B00A44C00A4
                4C00A44C00A34B00A34B00A44C00A34B00A44C00A34B00A34B00A44C00A44B00
                A44C004E5D49006B8B006B8A006B89006C89006C89006B89006C89006B880065
                8384C1D1C4E5EE0C7B95006784006C89006C89006B89006B88006A8690C8D5FF
                FFFFFFFFFFFFFFFFFFFFFFFEFFFFEEFBFFE4F7FDDFF5FAD8F0F7E9FAFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFEDFBFF17839B006986006B89006C89006B89006B8900607E58A8BA
                FEFFFF3393A8006382006B89006C89006B89006B89006B89006B89006C8C0F68
                7A8D5108A64B00A44C00A44C00A34B00A34C00A34B00A34B00A34B00A44C00A4
                4C00A34C00A34B00A44C00A34C00A34B00A44C00A34C00A44C00A34C00A34C00
                A44C00A34C00A44C00A34B00A34B00A44C00A34B00A34B00A44C00A34B00A44C
                00A44C00A44C00A34C00A34B00A44B00A64C005C5A401767748D5210A74B00A4
                4C00A44C00A34B00A34B00A34B00A34B00A34B00A44C00A34B00A34B00A44C00
                A34B00A44C00A44C00A34B00A44C00A44C00A34C00A44C00A34B00A44C00A34B
                00A44C00A44C00A34B00A44C00A34B00A44C00A44C00A34B00A34C00A34B00A3
                4B00A44C00A54C00A44C004E5D49006C8B006B8A006C89006B89006B89006C89
                006C89006B8800658484C1D1C4E5ED0C7B94006784006C89006B89006B89006B
                8800698690C8D5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFEDFBFF17839B006986006B88006B89006C8900
                6B8900607E58A8BAFEFFFF3392A8006382006B89006B89006B88006B88006C89
                006B88006C8C0F687A8D5108A64B00A44C00A44C00A34B00A34C00A44C00A34B
                00A44C00A34C00A34B00A34B00A34B00A44C00A34B00A34C00A34B00A44C00A3
                4B00A34C00A44C00A44C00A34C00A44C00A34B00A44C00A34B00A44C00A34C00
                A44C00A34B00A34B00A34B00A44C00A34B00A44C00A44B00A64B005C5A411767
                748C5110A64B00A44B00A34C00A44C00A34B00A44C00A44C00A34B00A44C00A3
                4B00A34B00A34B00A34C00A34B00A44C00A44C00A34C00A34C00A34B00A34B00
                A44C00A34B00A44C00A34C00A34B00A34B00A44C00A34B00A44C00A44C00A34B
                00A34B00A34B00A34B00A44C00A54B00A44B004E5F49006C8A006B89006B8900
                6B89006B89006C89006B89006A8800658484C1D1C4E5EE0C7B95006884006C89
                006C89006B89006A88006A8690C8D5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDFBFF17829B006885006B
                88006B89006B89006C8900607E58A7BAFEFFFF3393A8006382006B89006B8800
                6C89006B89006B88006B89006C8C0F687A8C5108A64A00A34B00A34B00A34B00
                A34B00A44C00A34B00A34B00A44C00A44C00A34B00A34C00A34C00A34B00A34B
                00A44C00A34B00A34B00A34B00A44C00A34B00A44C00A34B00A34B00A34B00A3
                4B00A44B00A34B00A44C00A34B00A44C00A34B00A34C00A44C00A34B00A44B00
                A54B005C5A411767748D5210A64A00A44B00A34B00A34B00A44C00A34B00A44C
                00A34B00A34B00A34B00A34B00A34B00A34C00A34B00A34B00A34B00A44C00A3
                4B00A34B00A34B00A34C00A34B00A34B00A34B00A34B00A34C00A44C00A44C00
                A44B00A34B00A34B00A44C00A34B00A34B00A44C00A54B00A44B004E5F48006C
                8B006C8A006B89006C89006B89006B89006B89006A8800658484C0D1C4E5EE0C
                7C95006784006B89006B89006B89006B8800698690C8D5FFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFECFAFF
                107E97006483006784006785006885006884005B7B53A5B7FEFFFF3393A80063
                82006C89006C88006C89006B88006C89006C89006D8C0F697A8C5108A64A00A3
                4C00A44C00A34C00A44C00A44C00A44C00A44C00A34B00A34B00A44C00A34C00
                A44C00A44C00A34C00A34B00A34B00A34C00A34C00A34B00A44C00A34B00A44C
                00A34B00A44C00A44C00A34B00A44C00A34B00A44C00A34C00A34C00A34B00A3
                4B00A34B00A44B00A54B005C5A411765758D5210A64B00A34B00A44C00A34C00
                A34B00A44C00A34B00A44C00A44C00A34B00A44C00A44C00A44C00A44C00A34B
                00A44C00A34B00A44C00A34B00A34B00A34B00A44C00A44C00A34B00A44C00A3
                4B00A34C00A34B00A34B00A34B00A34B00A34B00A44C00A34B00A44C00A54C00
                A44C004F5F48006C8A006C8A006B89006C89006C89006C89006B89006A880065
                8484C1D1C1E4ED0578920063810068850067850068850067840065838CC6D4FF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFF5FFFF4CA1B5298BA42A8DA72A8DA62B8EA62A8DA620849E81BECE
                FFFFFF3392A8006382006B89006B89006B89006B89006B89006C89006D8C0E68
                7A8D5108A74B00A34B00A44C00A34B00A34C00A44C00A44C00A34C00A34B00A3
                4B00A44C00A44C00A34B00A34C00A34B00A44C00A34B00A34B00A34B00A34B00
                A34C00A34B00A44C00A34B00A44C00A34B00A34C00A34B00A34C00A34B00A34B
                00A34B00A44C00A34B00A44C00A44C00A64C005C5A411767758D5110A64A00A4
                4C00A34B00A44C00A44C00A34B00A34B00A34B00A44C00A34B00A34B00A34B00
                A34B00A44C00A44C00A34B00A34B00A44C00A34B00A34C00A34B00A34B00A34B
                00A34B00A34B00A34B00A34B00A44C00A44C00A34B00A44C00A44C00A44C00A4
                4C00A34C00A44B00A44B004E5D49006C8B006C8A006B89006B89006B89006B89
                006C89006B8800648482C0D0D5EFF6439BB2278AA32B8EA62A8DA62A8EA62A8C
                A5298CA5ABD7E2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7FFFFF1FFFFF2FFFFF2FFFFF2FFFFF2
                FFFFEEFEFFFEFFFFF2FFFF3392A8006382006B88006C89006C89006C89006C89
                006B89006C8C0F687A8C5108A64B00A34B00A44C00A34B00A44C00A34B00A34B
                00A44C00A34B00A44C00A34B00A34B00A34B00A44C00A34B00A44C00A44C00A3
                4B00A44C00A34B00A34C00A34B00A44C00A34B00A44C00A34B00A34C00A34B00
                A44C00A34B00A34C00A44C00A34B00A34B00A44C00A44B00A64B005C5B411767
                748D5110A64B00A44C00A44C00A34B00A44C00A44C00A34B00A34B00A44C00A3
                4B00A44C00A44C00A34B00A34B00A44C00A34C00A34B00A34B00A44C00A44C00
                A34B00A44C00A34B00A34B00A34B00A34B00A34B00A34B00A44C00A34B00A34B
                00A34B00A34B00A34B00A44C00A54B00A44C004E5D49006B8B006C8A006C8900
                6C89006B89006C89006C89006B880064847CBCCDFEFFFFF5FFFFF0FEFFF2FFFF
                F2FFFFF2FFFFF1FFFFF1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFEFF3392A8006382006C89006B8900
                6B89006B89006C88006B89006C8C0F687A8D5108A74B00A34B00A34B00A44C00
                A44C00A34C00A34B00A44C00A34B00A34C00A34B00A34B00A34C00A34B00A44C
                00A44C00A44C00A44C00A44C00A34B00A44C00A34B00A44C00A34B00A44C00A4
                4C00A44C00A34B00A44C00A34B00A34B00A34B00A34B00A44C00A34C00A44C00
                A64C005C5A401767748C5110A64B00A44C00A44C00A34C00A34B00A34B00A34B
                00A34B00A34B00A44C00A34B00A34C00A44C00A34C00A34B00A44C00A34B00A3
                4B00A34C00A34C00A34B00A44C00A44C00A44C00A44C00A44C00A34B00A44C00
                A34B00A34B00A34B00A34C00A44C00A44C00A34B00A44B00A44B004F5D48006C
                8A006C8A006B89006C89006B89006B89006B89006A880065847BBDCDFEFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0FEFF3392A80063
                82006C89006B89006C89006C89006B89006C89006C8C0F697A8C5108A64B00A4
                4B00A44C00A44C00A44C00A34B00A44C00A34C00A34B00A34C00A34B00A44C00
                A44C00A34C00A34B00A34B00A34B00A34B00A34C00A44C00A34B00A44C00A44C
                00A44C00A44C00A44C00A44C00A44C00A44C00A34B00A44C00A34C00A34B00A4
                4C00A34C00A44C00A64B005C5A411867758D5210A74B00A44C00A44C00A34B00
                A44C00A34B00A44C00A34B00A34B00A44C00A34C00A44C00A34B00A44C00A34B
                00A44C00A44C00A44C00A44C00A34C00A44C00A34C00A44C00A34C00A44C00A4
                4C00A34C00A34B00A44C00A44C00A34B00A44C00A34C00A44B00A44B00A54C00
                A44C004F5F49006B8B006C8A006C89006B89006C89006B89006C89006A880064
                847BBCCDFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                F0FEFF3392A8006381006C89006B89006C89006C89006B89006B89006C8C0E68
                7A8D5108A74C00A44B00A44C00A44C00A34B00A34B00A44C00A34C00A34B00A3
                4C00A34B00A44C00A44C00A44C00A44C00A34B00A34B00A44C00A34C00A44C00
                A34B00A44C00A44C00A34B00A44C00A44C00A44C00A44C00A34B00A44C00A34C
                00A34C00A44C00A44C00A34B00A54C00A54B005D5A401765748D5210A64B00A3
                4B00A34B00A34B00A34B00A44C00A44C00A34B00A34B00A34C00A34B00A44C00
                A34B00A44C00A34B00A34B00A34C00A34B00A44C00A34C00A44C00A34B00A34C
                00A34C00A44C00A34B00A44C00A44B00A34C00A34B00A34B00A44C00A44C00A3
                4B00A44C00A54C00A44B004E5D49006C8B006C8A006C89006B89006C89006B89
                006C89006A880064847BBBCDFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFF0FEFF3293A8006382006A89006B88006A89006B89006B88
                006C89006C8C0F68798D5208A64B00A34B00A44C00A34B00A44C00A44C00A34B
                00A34B00A44B00A34B00A44C00A34C00A34B00A44C00A34B00A34B00A44C00A3
                4B00A34B00A34B00A44C00A34C00A34B00A44C00A44C00A34B00A34B00A44C00
                A44C00A34B00A44C00A34B00A34B00A44C00A44B00A44B00A64C00595B441765
                748E510FA64A00A44C00A34B00A34B00A44C00A34B00A34B00A44C00A34B00A4
                4B00A44C00A34B00A34B00A44C00A34B00A34B00A44B00A34B00A44C00A44B00
                A34B00A44C00A34B00A44C00A34B00A34B00A44C00A34B00A44B00A34B00A34C
                00A34C00A34B00A44C00A34C00A64B00A44B004F5D49006B8B006B8A006A8900
                6B88006A88006B89006B89006B880065837ABBCDFEFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFEFF2C8EA5005D7D00678400688500
                6784006884006784006985006C8C0F687A8D5108A64B00A44B00A34B00A34B00
                A34C00A34B00A44C00A44C00A34B00A44C00A34C00A44C00A34B00A34B00A44C
                00A34B00A34B00A44C00A34B00A34B00A34B00A34B00A44C00A44C00A34B00A4
                4C00A34B00A44C00A34B00A44C00A34B00A34B00A34C00A34C00A34B00A54B00
                A74B00485F520F687A895311A74B00A34B00A44C00A34B00A34B00A44C00A44C
                00A44C00A34B00A34B00A44C00A34B00A34B00A44C00A34B00A34B00A34C00A4
                4C00A44C00A34B00A44C00A34B00A34B00A44C00A34B00A34B00A34C00A34B00
                A34B00A44C00A44C00A44C00A44C00A34B00A34B00A54B00A44B004E5D49006C
                8B006B8900678400688500678400678400678400658300608076BACBFEFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA2D1DC7BBA
                C980BECD80BECD80BECD80BECD83C0CF5AA7BC0074930B65788C5108A74B00A3
                4B00A34C00A34C00A34C00A44C00A34B00A34C00A44C00A34B00A44C00A34B00
                A34B00A34B00A44B00A34C00A44C00A44C00A34C00A44C00A34B00A34B00A34C
                00A44C00A34B00A34B00A34B00A44C00A44C00A34B00A44C00A44C00A34C00A4
                4C00A34B00A74B009D4E001E6468006B89625A36AC4A00A44C00A44C00A44C00
                A44C00A44C00A34B00A34B00A34B00A44C00A44C00A44C00A44C00A44C00A34B
                00A34B00A34C00A44C00A34B00A34B00A34B00A34B00A44C00A34B00A34C00A4
                4C00A44C00A44C00A34B00A34B00A34B00A44C00A34B00A34B00A34B00A54B00
                A44C004F5F4900678519859E80BFCD81BFCD80BECD80BECD80BECD80BDCC7CBB
                C9C6E7EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC3E2EC087B9A0563
                758C5108A64B00A34C00A34B00A44C00A34B00A34B00A34C00A44C00A44B00A3
                4C00A34B00A34B00A34B00A34B00A44C00A44C00A34B00A34B00A44C00A34B00
                A34C00A44B00A44C00A44C00A44C00A44C00A34B00A44C00A34B00A34B00A44C
                00A34B00A34B00A34B00A64B00AB4A005F593500678300698D1A636A955006AB
                4A00A34B00A34B00A34B00A44C00A44C00A34B00A34B00A44C00A34B00A44C00
                A44C00A44C00A34B00A44C00A34B00A44C00A34B00A34B00A34C00A44C00A34B
                00A34B00A44C00A44C00A34B00A44C00A34B00A44C00A44C00A34B00A34B00A3
                4B00A34C00A44C00A44C004F5F49006181439DB2FEFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                C8E6EE087C9A0563758B5108A64B00A44B00A44B00A34C00A34B00A44C00A34C
                00A44C00A34B00A44C00A34C00A34B00A34B00A34C00A34B00A44C00A34B00A4
                4C00A34B00A34B00A44C00A44B00A34C00A44C00A44C00A34C00A44C00A44C00
                A34B00A44C00A44C00A34B00A44C00A84A00A84B007256240063750C819F3695
                AE006C8D325C569C4F00AB4A00A54A00A44C00A44C00A44C00A34C00A34B00A3
                4B00A34B00A44C00A44C00A34B00A34C00A44C00A34B00A44C00A34B00A34B00
                A34B00A44C00A44C00A34B00A34B00A34B00A34B00A44C00A44C00A34B00A44C
                00A34B00A44C00A34B00A34B00A44B00A44B004E5D49006182469FB3FEFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFC6E5EE087C9B0562758B5108A64C00A44C00A34B00A44C00
                A44C00A34B00A34B00A44C00A44C00A34B00A34B00A44C00A34B00A34B00A34B
                00A34B00A34B00A34B00A44C00A34B00A34B00A34B00A44C00A44C00A44C00A4
                4C00A34B00A34B00A44C00A34B00A54C00AB4A00AD4B00994F00595935006075
                0C809EB2DCE6F5FFFF5CABBF006A8C245D5A7E5317A64B00AD4A00A84B00A54C
                00A34B00A44C00A34B00A34B00A34B00A44C00A34C00A44C00A34B00A34B00A4
                4C00A34B00A44C00A44C00A44C00A34B00A34B00A34C00A34C00A34B00A44C00
                A34B00A44C00A34B00A44C00A34C00A34B00A34B00A44B00A44B004F5F490061
                82449EB3FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC6E5EE087C9B086374955000B24900AE
                4A00AE4A00AE4A00AE4900AE4A00AE4900AE4900AE4A00AE4A00AE4A00AE4900
                AE4900AE4A00AE4900AE4A00AE4900AE4A00AE4900AE4900AE4A00AE4900AE4A
                00AE4A00AE4900AE4900AE4900AE4A00AE4900AF4A00A44C0086520F5C572F1C
                5B5B0067853194AFC2E4EDFFFFFFFFFFFFFBFFFF81BECF047B9A005F743B5947
                725420964F03AC4B00AF4900AF4900AE4A00AE4900AE4A00AE4900AE4900AE49
                00AE4A00AE4A00AE4900AE4A00AE4900AE4900AE4A00AE4A00AE4900AE4A00AE
                4A00AE4A00AE4A00AE4A00AE4900AE4900AE4900AE4A00AE4900AE4A00AF4900
                AF4A00545C44006182449DB3FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC4E4ED0579950061
                7A3E5B4A4C593F4A593F4A593F4A593F4B59404A583F4B59404B59404A583F4A
                59404B593F4B593F4B593F4A593F4A593F4B583F4B583F4A583F4A59404B5940
                4A593F4B593F4A59404B59404B593F4B58404B59404B5940485941385A47225C
                5904606D00708E2F95B291C9D8EFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC8
                E7F061AFC50E83A4006580145D622D5B4F415A434B59404A59404B59404B5940
                4B59404B593F4B593F4A59404B59404B59404A59404B59404B59404B583F4A59
                3F4B593F4A583F4A59404B59404A583F4A59404B59404B593F4B59404A59404B
                593F4B59404B59404B59401D6268005D7D419CB0FEFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                D0EAF33391A8147E9A1984A41A84A51984A41984A41985A51984A51984A51984
                A51985A51984A41984A51984A51985A51984A51984A51984A51984A51984A519
                84A51984A51984A51984A51984A51984A51984A51984A51984A51985A51984A5
                1C86A72491B247A6C181C4D8BBE2ECF0FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFDAF2F9A3D5E462B4CC329CBA1D8BAC1984A519
                84A51984A51984A51984A51984A51984A41984A51984A51984A51984A51984A4
                1984A51984A41984A51984A51984A51984A51984A41984A41984A51984A51984
                A51984A51984A51984A41984A51984A51985A51984A10F7A9664AEC0FEFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFBFFFFF8FFFFF7FFFFF6FFFFF6FFFFF6FFFFF6FFFF
                F6FFFFF6FFFFF6FFFFF6FFFFF6FFFFF6FFFFF6FFFFF6FFFFF6FFFFF6FFFFF6FF
                FFF6FFFFF6FFFFF6FFFFF6FFFFF6FFFFF6FFFFF6FFFFF6FFFFF6FFFFF6FFFFF6
                FFFFF6FFFFF6FFFFF7FFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFF9FFFFF6FFFFF6FFFFF6FFFFF6FFFFF6FFFFF6FFFFF6FFFFF6FFFFF6FFFFF6
                FFFFF6FFFFF6FFFFF6FFFFF6FFFFF6FFFFF6FFFFF6FFFFF6FFFFF6FFFFF6FFFF
                F6FFFFF6FFFFF6FFFFF6FFFFF6FFFFF6FFFFF6FFFFF6FFFFF6FFFFF7FFFFF6FF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
              mmHeight = 18521
              mmLeft = 5027
              mmTop = 794
              mmWidth = 40217
              BandType = 1
            end
            object ppLabel17: TppLabel
              UserName = 'Label17'
              Caption = 'DERRAMA MAGISTERIAL'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = [fsBold]
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 3704
              mmLeft = 5821
              mmTop = 19579
              mmWidth = 38894
              BandType = 1
            end
            object ppLabel20: TppLabel
              UserName = 'Label20'
              Caption = 'Sistema de Seguridad y Bienestar Social del Magisterio'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 2646
              mmLeft = 529
              mmTop = 24077
              mmWidth = 49477
              BandType = 1
            end
            object ppLine6: TppLine
              UserName = 'Line6'
              Weight = 0.750000000000000000
              mmHeight = 1588
              mmLeft = 0
              mmTop = 28045
              mmWidth = 159544
              BandType = 1
            end
            object ppLabel42: TppLabel
              UserName = 'Label42'
              Caption = 'Modelo : CARE 1'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3704
              mmLeft = 135467
              mmTop = 23283
              mmWidth = 21167
              BandType = 1
            end
          end
          object ppDetailBand3: TppDetailBand
            BeforePrint = ppDetailBand3BeforePrint
            PrintHeight = phDynamic
            mmBottomOffset = 0
            mmHeight = 189442
            mmPrintPosition = 0
            object ppLabel23: TppLabel
              UserName = 'Label23'
              Caption = 'FECHA:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 11
              Font.Style = []
              Transparent = True
              mmHeight = 4763
              mmLeft = 126736
              mmTop = 8467
              mmWidth = 11642
              BandType = 4
            end
            object ppLabel29: TppLabel
              UserName = 'Label29'
              Caption = 'RECORDATORIO DE PAGO'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 18
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 7673
              mmLeft = 45773
              mmTop = 529
              mmWidth = 68263
              BandType = 4
            end
            object ppLabel30: TppLabel
              UserName = 'Label30'
              Caption = 'Estimado Asociado :'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 12
              Font.Style = []
              Transparent = True
              mmHeight = 5027
              mmLeft = 0
              mmTop = 60061
              mmWidth = 34660
              BandType = 4
            end
            object ppMemo2: TppMemo
              UserName = 'Memo2'
              Caption = 'Memo2'
              CharWrap = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 12
              Font.Style = []
              Lines.Strings = (
                
                  'Refinanciamiento fue una nueva oportunidad que se le da a nuestr' +
                  'os asociados con la finalidad de que este puntual en el cr'#233'dito,' +
                  ' sin atrasos y obtener un buen record de pago.'
                ''
                
                  'Por lo que le agradeceremos pueda regularizar a la brevedad posi' +
                  'ble las cuotas atrasadas y no perjudicar a la instituci'#243'n ya que' +
                  ' esto repercute en el bienestar de usted y de los dem'#225's Maestros' +
                  '. ')
              TextAlignment = taFullJustified
              Transparent = True
              mmHeight = 30692
              mmLeft = 0
              mmTop = 84138
              mmWidth = 160338
              BandType = 4
              mmBottomOffset = 0
              mmOverFlowOffset = 0
              mmStopPosition = 0
              mmLeading = 0
            end
            object ppSystemVariable4: TppSystemVariable
              UserName = 'SystemVariable4'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 11
              Font.Style = []
              Transparent = True
              mmHeight = 4763
              mmLeft = 139700
              mmTop = 8467
              mmWidth = 17992
              BandType = 4
            end
            object ppLabel89: TppLabel
              UserName = 'Label301'
              Caption = 'REFERENCIA: CREDITO REFINANCIADO'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 13
              Font.Style = [fsBold, fsUnderline]
              Transparent = True
              mmHeight = 5556
              mmLeft = 0
              mmTop = 52917
              mmWidth = 72231
              BandType = 4
            end
            object ppLabel90: TppLabel
              UserName = 'Label90'
              Caption = 
                'Le hacemos presente que a la fecha no ha cumplido con el pago de' +
                ' las'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 12
              Font.Style = []
              Transparent = True
              mmHeight = 5027
              mmLeft = 38894
              mmTop = 67204
              mmWidth = 121444
              BandType = 4
            end
            object ppLabel91: TppLabel
              UserName = 'Label901'
              Caption = 'cuotas  de  su'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 12
              Font.Style = []
              Transparent = True
              mmHeight = 5027
              mmLeft = 0
              mmTop = 72761
              mmWidth = 23813
              BandType = 4
            end
            object ppLabel92: TppLabel
              UserName = 'Label92'
              Caption = 'que  fue  aprobado  con  fecha'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 12
              Font.Style = []
              Transparent = True
              mmHeight = 5027
              mmLeft = 108215
              mmTop = 72761
              mmWidth = 52123
              BandType = 4
            end
            object ppLabel93: TppLabel
              UserName = 'Label93'
              Caption = 'cr'#233'dito refinanciado  N'#186
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 12
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 5027
              mmLeft = 27252
              mmTop = 73025
              mmWidth = 43656
              BandType = 4
            end
            object ppLabel94: TppLabel
              UserName = 'Label94'
              Caption = ',  a  la  fecha  est'#225'  en  morosidad,'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 12
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 5027
              mmLeft = 21696
              mmTop = 78317
              mmWidth = 61119
              BandType = 4
            end
            object ppLabel95: TppLabel
              UserName = 'Label95'
              Caption = 'por  tanto  deber'#225'  tener en  cuenta  que  el'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 12
              Font.Style = []
              Transparent = True
              mmHeight = 5027
              mmLeft = 85725
              mmTop = 78317
              mmWidth = 74613
              BandType = 4
            end
            object ppMemo1: TppMemo
              UserName = 'Memo1'
              Caption = 
                'Refinanciamiento fue una nueva oportunidad que se le da a nuestr' +
                'os asociados con la finalidad de que este puntual en el cr'#233'dito,' +
                ' sin atrasos y obtener un buen record de pago.'#13#10#13#10'Por lo que le ' +
                'agradeceremos pueda regularizar a la brevedad posible las cuotas' +
                ' atrasadas y no perjudicar a la instituci'#243'n ya que esto repercut' +
                'e en el bienestar de usted y de los dem'#225's Maestros. '#13#10
              CharWrap = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 11
              Font.Style = [fsBold, fsUnderline]
              Lines.Strings = (
                'REITERAMOS QUE ES NECESARIO SE ACERQUE A NUESTRAS OFICINAS EN:')
              TextAlignment = taFullJustified
              Transparent = True
              mmHeight = 6350
              mmLeft = 0
              mmTop = 116152
              mmWidth = 160338
              BandType = 4
              mmBottomOffset = 0
              mmOverFlowOffset = 0
              mmStopPosition = 0
              mmLeading = 0
            end
            object ppLabel22: TppLabel
              UserName = 'Label4'
              Caption = 'APELLIDOS(S) y NOMBRE(S) :'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 11
              Font.Style = []
              Transparent = True
              mmHeight = 4784
              mmLeft = 265
              mmTop = 14817
              mmWidth = 45593
              BandType = 4
            end
            object ppLabel24: TppLabel
              UserName = 'Label5'
              Caption = 'DIRECCION'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 11
              Font.Style = []
              Transparent = True
              mmHeight = 4784
              mmLeft = 265
              mmTop = 20638
              mmWidth = 17611
              BandType = 4
            end
            object ppLabel25: TppLabel
              UserName = 'Label6'
              Caption = 'DISTRITO'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 11
              Font.Style = []
              Transparent = True
              mmHeight = 4784
              mmLeft = 265
              mmTop = 26458
              mmWidth = 14647
              BandType = 4
            end
            object ppLabel26: TppLabel
              UserName = 'Label7'
              Caption = 'PROVINCIA'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 11
              Font.Style = []
              Transparent = True
              mmHeight = 4784
              mmLeft = 265
              mmTop = 32279
              mmWidth = 17695
              BandType = 4
            end
            object ppLabel27: TppLabel
              UserName = 'Label8'
              Caption = 'DPTO.'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 11
              Font.Style = []
              Transparent = True
              mmHeight = 4784
              mmLeft = 265
              mmTop = 38100
              mmWidth = 9906
              BandType = 4
            end
            object ppLabel28: TppLabel
              UserName = 'Label9'
              Caption = 'MODULAR'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 11
              Font.Style = []
              Transparent = True
              mmHeight = 4784
              mmLeft = 265
              mmTop = 43921
              mmWidth = 16849
              BandType = 4
            end
            object ppLabel37: TppLabel
              UserName = 'Label10'
              Caption = ':'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 11
              Font.Style = []
              Transparent = True
              mmHeight = 4763
              mmLeft = 21960
              mmTop = 20638
              mmWidth = 1058
              BandType = 4
            end
            object ppLabel38: TppLabel
              UserName = 'Label11'
              Caption = ':'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 11
              Font.Style = []
              Transparent = True
              mmHeight = 4763
              mmLeft = 21960
              mmTop = 26458
              mmWidth = 1058
              BandType = 4
            end
            object ppLabel39: TppLabel
              UserName = 'Label12'
              Caption = ':'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 11
              Font.Style = []
              Transparent = True
              mmHeight = 4763
              mmLeft = 21960
              mmTop = 32279
              mmWidth = 1058
              BandType = 4
            end
            object ppLabel40: TppLabel
              UserName = 'Label401'
              Caption = ':'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 11
              Font.Style = []
              Transparent = True
              mmHeight = 4763
              mmLeft = 21960
              mmTop = 38100
              mmWidth = 1058
              BandType = 4
            end
            object ppLabel41: TppLabel
              UserName = 'Label13'
              Caption = ':'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 11
              Font.Style = []
              Transparent = True
              mmHeight = 4763
              mmLeft = 21960
              mmTop = 43921
              mmWidth = 1058
              BandType = 4
            end
            object ppDBText9: TppDBText
              UserName = 'DBText1'
              DataField = 'ASOAPENOM'
              DataPipeline = ppdbC1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 11
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'ppdbC1'
              mmHeight = 4763
              mmLeft = 48683
              mmTop = 14817
              mmWidth = 111390
              BandType = 4
            end
            object ppDBText10: TppDBText
              UserName = 'DBText2'
              AutoSize = True
              DataField = 'ASOCODMOD'
              DataPipeline = ppdbC1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 11
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'ppdbC1'
              mmHeight = 4784
              mmLeft = 27252
              mmTop = 43921
              mmWidth = 22013
              BandType = 4
            end
            object pplDist2: TppLabel
              UserName = 'lDist2'
              Caption = 'lDist1'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 11
              Font.Style = []
              Transparent = True
              mmHeight = 4784
              mmLeft = 27252
              mmTop = 26458
              mmWidth = 9017
              BandType = 4
            end
            object pplProv2: TppLabel
              UserName = 'lProv2'
              Caption = 'lProv1'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 11
              Font.Style = []
              Transparent = True
              mmHeight = 4784
              mmLeft = 27252
              mmTop = 32279
              mmWidth = 10118
              BandType = 4
            end
            object pplDpto2: TppLabel
              UserName = 'lDpto2'
              Caption = 'lDpto1'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 11
              Font.Style = []
              Transparent = True
              mmHeight = 4784
              mmLeft = 27252
              mmTop = 38100
              mmWidth = 10710
              BandType = 4
            end
            object pplDir2: TppLabel
              UserName = 'lDir2'
              AutoSize = False
              Caption = 'lDir1'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 11
              Font.Style = []
              Transparent = True
              mmHeight = 4763
              mmLeft = 27252
              mmTop = 20638
              mmWidth = 132821
              BandType = 4
            end
            object ppmOfides2: TppMemo
              UserName = 'mOfides2'
              Caption = 'mOfides1'
              CharWrap = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 18521
              mmLeft = 0
              mmTop = 123296
              mmWidth = 153459
              BandType = 4
              mmBottomOffset = 0
              mmOverFlowOffset = 0
              mmStopPosition = 0
              mmLeading = 0
            end
            object ppLabel31: TppLabel
              UserName = 'Label1'
              Caption = 'Atentamente.'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 11
              Font.Style = []
              Transparent = True
              mmHeight = 4763
              mmLeft = 0
              mmTop = 167482
              mmWidth = 21960
              BandType = 4
            end
            object ppLabel32: TppLabel
              UserName = 'Label3'
              Caption = 'DERRAMA MAGISTERIAL'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 11
              Font.Style = []
              Transparent = True
              mmHeight = 4763
              mmLeft = 529
              mmTop = 179652
              mmWidth = 38894
              BandType = 4
            end
            object ppLabel33: TppLabel
              UserName = 'Label14'
              Caption = 'EQUIPO DE COBRANZAS'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 10
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 4233
              mmLeft = 2381
              mmTop = 184680
              mmWidth = 35190
              BandType = 4
            end
            object pplCreRef: TppLabel
              UserName = 'lCreRef'
              Caption = '###############'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 12
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 5165
              mmLeft = 73025
              mmTop = 72761
              mmWidth = 31750
              BandType = 4
            end
            object pplFecRef: TppLabel
              UserName = 'lFecRef'
              Caption = '##/##/####'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 12
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 5165
              mmLeft = 0
              mmTop = 78052
              mmWidth = 20574
              BandType = 4
            end
            object ppLabel170: TppLabel
              UserName = 'Label170'
              Caption = 'Acercarse portando copias de su DNI y su '#250'ltima boletas de pago.'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 14
              Font.Style = [fsUnderline]
              Transparent = True
              mmHeight = 6085
              mmLeft = 0
              mmTop = 143669
              mmWidth = 132557
              BandType = 4
            end
            object ppLabel36: TppLabel
              UserName = 'Label36'
              Caption = 
                'S'#237'rvase contactarse sobre el estado de su deuda con el Sr (ta). ' +
                '  '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 11
              Font.Style = []
              Transparent = True
              Visible = False
              mmHeight = 4763
              mmLeft = 0
              mmTop = 152665
              mmWidth = 100277
              BandType = 4
            end
            object pplGestor2: TppLabel
              UserName = 'lGestor2'
              AutoSize = False
              Caption = 'Gestor'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 11
              Font.Style = []
              Transparent = True
              Visible = False
              mmHeight = 4763
              mmLeft = 102659
              mmTop = 152665
              mmWidth = 50006
              BandType = 4
            end
          end
          object ppSummaryBand2: TppSummaryBand
            mmBottomOffset = 0
            mmHeight = 20373
            mmPrintPosition = 0
            object ppLabel34: TppLabel
              UserName = 'Label2'
              Caption = 
                'SI AL MOMENTO DE RECIBIR ESTE AVISO YA CUMPLIO CON REGULARIZAR L' +
                'O SOLICITADO, AGRADECEREMOS DEJAR SIN EFECTO LA PRESENTE.'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 7
              Font.Style = [fsBold]
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 2910
              mmLeft = 7673
              mmTop = 6085
              mmWidth = 144463
              BandType = 7
            end
            object ppLabel96: TppLabel
              UserName = 'Label96'
              Caption = 
                'El personal que entrega este documento no est'#225' autorizado para r' +
                'ecibir ning'#250'n tipo de pago, estos deber'#225'n realizarse solo en los'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 2910
              mmLeft = 17727
              mmTop = 10848
              mmWidth = 124619
              BandType = 7
            end
            object ppLabel97: TppLabel
              UserName = 'Label97'
              Caption = 'lugares autorizados por Derrama Magisterial.'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 2910
              mmLeft = 58208
              mmTop = 13758
              mmWidth = 43392
              BandType = 7
            end
          end
        end
      end
    end
    object ppFooterBand2: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
  end
  object ppdC1: TppDesigner
    Caption = 'ReportBuilder'
    DataSettings.SessionType = 'BDESession'
    DataSettings.AllowEditSQL = False
    DataSettings.CollationType = ctASCII
    DataSettings.DatabaseType = dtParadox
    DataSettings.IsCaseSensitive = True
    DataSettings.SQLType = sqBDELocal
    Position = poScreenCenter
    IniStorageType = 'IniFile'
    IniStorageName = '($WINSYS)\RBuilder.ini'
    WindowHeight = 400
    WindowLeft = 100
    WindowTop = 50
    WindowWidth = 600
    Left = 674
    Top = 315
  end
  object pprCare2: TppReport
    AutoStop = False
    DataPipeline = ppdbC1
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 20000
    PrinterSetup.mmMarginLeft = 30000
    PrinterSetup.mmMarginRight = 20000
    PrinterSetup.mmMarginTop = 20000
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    Units = utMillimeters
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zsPercentage
    PreviewFormSettings.ZoomPercentage = 70
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 642
    Top = 355
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppdbC1'
    object ppHeaderBand4: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppDetailBand6: TppDetailBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 25400
      mmPrintPosition = 0
      object ppSubReport3: TppSubReport
        UserName = 'SubReport1'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        ParentPrinterSetup = False
        TraverseAllData = False
        mmHeight = 5027
        mmLeft = 0
        mmTop = 7673
        mmWidth = 160000
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppChildReport3: TppChildReport
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report'
          PrinterSetup.PaperName = 'A4'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.mmMarginBottom = 20000
          PrinterSetup.mmMarginLeft = 30000
          PrinterSetup.mmMarginRight = 20000
          PrinterSetup.mmMarginTop = 20000
          PrinterSetup.mmPaperHeight = 297000
          PrinterSetup.mmPaperWidth = 210000
          PrinterSetup.PaperSize = 9
          Units = utMillimeters
          Version = '7.02'
          mmColumnWidth = 0
          object ppTitleBand3: TppTitleBand
            mmBottomOffset = 0
            mmHeight = 30163
            mmPrintPosition = 0
            object ppShape3: TppShape
              UserName = 'Shape3'
              Brush.Color = clSilver
              mmHeight = 20108
              mmLeft = 70379
              mmTop = 529
              mmWidth = 79375
              BandType = 1
            end
            object ppImage3: TppImage
              UserName = 'Image1'
              AutoSize = True
              MaintainAspectRatio = False
              Picture.Data = {
                07544269746D6170E67C0000424DE67C00000000000036000000280000009800
                0000460000000100180000000000B07C00000000000000000000000000000000
                0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFBADEE87BBBCB79BBC97EBECC7EBECD7EBDCC7EBECC7EBECC7EBECC7EBDCC
                7EBDCC7EBDCC7EBECC7EBECC7EBDCC7EBDCC7EBDCC7EBECC7EBDCC7EBECC7EBD
                CC7EBECC7EBECD7EBDCC7EBECC7DBDCC7DBDCCB8DDE7F0FEFF92C8D67CBCCC7E
                BDCC7EBDCC7EBDCC7EBDCC7EBDCC7EBECC7EBDCC7EBDCC7EBDCC7EBECC7EBDCC
                7EBDCC7EBDCC7EBDCD7EBECC7EBDCC7EBDCD7EBDCC7EBDCC7EBDCC7EBDCC7EBE
                CD7DBDCC75B8C892C8D5EAF9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFECFAFF66AEC000718C006986006D8A006D8A006C8A00
                6C8A006D8A006C8A006C8A006C89006D8A006D8A006C8A006C8A006C89006D8A
                006C8A006D8A006C8A006D8A006D8A006C8A006C8A006C89006A8863ACBFCFEC
                F317839D006A88006C8A006C8A006D8A006D8A006D8A006D8A006C8A006C8A00
                6C8A006D8A006C8A006D8A006C8A006C8A006D8A006C89006C8A006C8A006C8A
                006C89006C8A006B890068851F88A1B3DAE6FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF81BFCF01738F0068
                85006A88006986006986006986006A86006988006A86006986006986006A8600
                6986006986006986006A86006986006986006986006986006986006986006985
                00678460ABBECFECF312809B006584006A86006986006A86006A86006A86006A
                86006986006986006A86006986006A86006A86006986006986006986006A8600
                6986006986006A860069860069860068852D8EA6D0EDF5FFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFF7FBCCE006A88006B88006C89006B89006B89006B89006C89006B89006B
                89006B89006C89006B89006B89006C89006C89006C89006C89006C89006B8900
                6C89006B89006B8800698662ACBFD0ECF316829C006986006B89006B89006C89
                006C89006C89006C89006C88006B88006C89006B89006B89006C89006C89006B
                89006C89006B89006C89006B89006B89006B8900688514819BDDF3FAFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFECFBFF6BB0C5006C8A006A88006B89006B89006B89006B89
                006B88006C89006B89006C89006B89006C89006C88006B89006B89006C89006B
                89006B88006C89006B89006C89006A88006A8662ACBFCFECF316819C006A8600
                6C89006B89006B89006B89006B89006B89006B88006B88006B89006B89006C89
                006B89006B89006C89006C89006B89006C89006C89006B89006B890069861280
                9BAFD9E5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFC1E4EC6DB3C52A8CA600708C006A88006B89006C8900
                6C89006C89006B89006C89006B89006C89006C89006B89006C89006B89006C89
                006B88006C89006C89006B89006B89006C89006B89006B88006A8662ACBFCFEC
                F216829C006986006B89006B89006C89006B89006B89006B89006B89006B8900
                6B89006B89006B89006B89006C89006B89006C89006B89006B89006B89006C89
                006C89006B89006986087A954AA1B596CBD7E8F9FEFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFD8F0F78AC3D33F9AB00B7B95006584006382006A86006B
                89006B89006C89006C89006B89006B89006C89006B88006B89006C89006B8900
                6C89006C89006B89006B89006B89006C89006B89006C89006C89006C89006A88
                00698662ACC0CFECF316819C006986006B89006B89006C89006C89006B89006C
                89006B89006C89006B89006C89006B89006B88006B89006C89006B89006B8900
                6B89006C89006B89006B89006B89006B89006784006281006D8B2189A15BAABD
                ABD6E1F5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFCEEAF281BFCF3895AC087995006D8B006584006584006B88
                006B89006B89006B89006C89006C89006C89006C89006C89006B89006B89006B
                89006B89006B89006C89006B89006C89006C89006C89006C89006B89006B8900
                6C89006B89006B8800698662ACBFCFECF316819C006886006B88006B89006C89
                006C89006C89006C89006B89006C89006B88006C89006B89006B89006B89006C
                89006B89006C89006C89006B89006B89006B89006C89006C89006C89006B8900
                698600648300698500728E1C849E58A7BCA5D4DFECFAFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFEEFDFFC3E4ED7DBDCD2B8DA600728E006B8900678500678400698600
                6C89006B89006B89006B89006B89006C89006B89006C89006B89006C89006C89
                006C89006B89006B89006C89006B89006C89006B88006C89006B89006B89006B
                89006B89006C89006C89006B88006B88006A8662ACBFCFECF316829C006A8600
                6C89006C89006B89006B88006B89006B89006C88006C89006B89006B89006C89
                006B89006B89006C89006B88006B89006C89006B88006C89006C89006C89006B
                89006C89006B89006C89006C89006B88006885006784006986006D8A0B7B964F
                A2B6A2D0DEDDF2F8F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FBFFFFD4EEF5A6D4DF65AEC12288A200708C006985006986006886006988006A
                89006C89006B89006C89006B89006B89006B88006B89006B89006B89006B8900
                6B89006C89006B89006C89006C89006B89006B89006B89006B88006B89006C89
                006B89006B89006B88006C89006B89006C89006B89006B88006A8663ADC0D0EC
                F316829C006986006B89006C89006C89006B88006B89006B89006B88006B8900
                6C89006B89006C89006C89006B89006C88006B89006C89006C89006B88006C89
                006B89006C89006B89006B89006B89006C89006C89006B89006B89006B89006A
                88006986006985006784006A88067A95419AB085C1D0BEE1EAE7F9FEFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2
                FFFFBEE1EA88C3D14A9FB50E7E99006885006582006885006986006B88006B88
                006B89006B89006B89006C89006C89006B89006B89006B89006C89006C89006B
                89006C89006B88006C89006C89006B89006B89006C89006B89006B88006C8900
                6B89006B89006B89006B88006C89006B89006B89006C89006B88006B89006B88
                00698663ACC0D0ECF316829C006986006B89006B88006B89006C89006C89006B
                89006B89006B89006B88006C89006B89006B89006C89006C89006C89006B8900
                6C89006B89006B89006B89006C89006B89006B89006B89006B89006C89006B89
                006C88006B89006B89006C89006B89006A88006A86006986006584006483006F
                8D2A8DA568B0C1A2D0DDD5EEF6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFC0E2EC72B6C73794AC037693006382006282006985006B88006C89006B8900
                6B89006C89006B88006C89006C89006C89006B89006C88006B89006C89006B89
                006C89006B89006B89006B89006B89006C89006B89006B89006B89006C89006B
                88006B89006B89006C89006B89006B89006B88006C89006C89006B89006B8900
                6C88006B88006B8800698662ACBFCFECF316819C006886006B89006B88006B88
                006B89006C89006B89006C89006B88006B89006B89006C89006C89006B89006B
                89006C89006C89006B89006C89006C89006B88006C88006B89006B89006C8900
                6B89006B89006B89006B88006C89006C89006C89006B89006C89006B89006B89
                006B88006B8900698600658300618000698819839D53A5B896CBD8E5F7FDFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFBDDFE9489EB40B7A95006584006281006885006B88006B89006B89006B
                89006B89006C89006B89006B89006C89006B89006B89006B89006B89006C8800
                6C89006B89006B89006B89006C89006B89006C89006C89006B89006C89006B89
                006B89006C89006B89006C89006B89006B89006B89006C89006B89006B89006B
                89006C89006C89006C89006C89006B88006A8662ACBFCFECF316819C00688500
                6C89006B89006B89006C89006B89006C89006B88006B89006B89006C89006B89
                006C89006B89006C89006B89006B89006C89006B88006B89006C88006C88006B
                89006C89006C89006B89006B89006C89006C89006B89006B89006C89006B8900
                6C89006B89006B89006B89006B89006B89006B88006C89006B88006583006282
                006D8A2188A179BACBEEFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFE2F6FB63AEC0047691006483006584006A88006B89006B88006B89
                006B89006B89006C89006C89006B89006B88006C89006B89006B88006C89006C
                89006B89006C88006B89006C89006C89006B89006B89006B89006B89006B8900
                6B89006B88006C89006C89006988006885006986006B89006B89006B88006C89
                006B88006B89006B89006C89006B89006B89006B88006A8800698662ACC0CFEC
                F316819D006885006B88006C89006B89006C89006B89006B89006C89006C8900
                6B89006B89006B89006A88006885006885006A88006B89006B88006C89006C89
                006B89006B88006B88006C89006B89006B89006B89006C89006B89006C89006C
                89006B89006B88006C89006B88006B89006B89006C89006B89006B89006C8900
                6C89006B89006B89006885006382006988268CA4A3D3DEFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFF8FFFF96CBD71A859D006986006884006A88006B89006B8900
                6B89006B88006B89006C89006B89006C89006C89006B89006986006885006985
                0068840069850068850068850069850069850069850068850068850069850068
                85006885006885006884006885006985006784006D8B10819A057993006C8A00
                6B89006B89006C89006B89006B89006B89006C89006B89006B89006B89006A88
                00698661ABBFCFECF316829D006985006B88006C89006C89006B89006C89006C
                89006B89006B89006C89006B89006B8900708C10809907799400688500688400
                6885006885006985006885006884006885006884006885006885006884006985
                006884006985006985006885006885006985006886006A88006B89006C89006C
                89006C89006B89006C89006B89006B89006B89006C8900698600678400728D51
                A2B6CCE8F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFB6DDE83D97AD006C89006885006A88006B89006B
                89006C89006B88006B89006B89006B88006B89006B89006C8900678500638200
                6D8A017892057994057994057994057993057994057893057994057994057994
                057994057993057894057894057894057893057893017592117C976CB3C5B2DA
                E679BACB017592006A86006C89006C89006C89006B88006B89006B89006C8900
                6B89006B89006B88006A8664ADC0CEEAF315809B006886006C89006B89006B89
                006B89006B89006B88006C89006B89006C89006B88006988308FA7A6D4E0A4D3
                DF3A96AD05769204789205789405789405789405789405799405789405799405
                789405789305799405789405789405789405799405799405789400728F006785
                006383006A86006B89006B89006C89006B89006B89006B88006B89006B89006B
                89006C8900698600688508799474B7C8E5F7FDFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFD4EDF55CAABD00718E006784006A86006B89
                006C89006B89006B88006B89006C89006B89006C89006B89006C89006B890065
                8407799456A6BA7DBCCD89C3D38CC4D48CC4D48CC4D48CC4D48CC4D58CC4D48C
                C4D48CC4D48CC4D38CC4D58CC4D48CC4D48CC4D58CC4D48CC4D48CC4D489C0D1
                A8D3E09CCEDC3F96AD3192AA00728E006A86006B89006B89006B89006C89006B
                89006C89006B89006B89006C89006A8800698678B8CCD6EFF717829C00698600
                6B88006B89006B89006B89006C89006B89006C89006B89006C89006B88006A88
                17829C3591AA6BB3C4B4DAE691C6D78AC3D38CC4D48CC4D58CC4D58CC4D48CC4
                D38CC4D48CC4D48CC4D48CC4D38CC4D38CC4D58CC4D48CC4D58CC4D58CC4D58B
                C3D486C1D372B6C73393AA006A89006886006B89006C89006B89006B88006B89
                006C89006B89006B89006C89006B88006B880068850067842186A19ACCD9F7FF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAFAFF81BECF16809A00648300698600
                6C89006C89006B89006B89006C89006C89006B89006C89006B89006B89006C89
                006B890069862A8DA5A6D3DF9CCEDC68B0C351A2B64C9FB44EA1B54EA1B54EA1
                B64EA1B64EA1B54EA1B54EA1B54EA1B54EA1B54EA1B64EA1B54EA1B54EA1B54E
                A1B54EA1B64FA2B64CA1B40E7D97006382006784006A88006C89006B88006B89
                006B89006B89006C89006C89006B89006C89006B89006A86006B89ACD6E4FBFF
                FF3F99AF006583006B89006B89006C89006B89006B89006B88006B89006C8900
                6C89006B89006B89006986006483006C892F8FA751A3B74EA1B54EA1B54EA1B5
                4EA1B54EA1B54EA1B54EA1B54EA1B54EA1B54EA1B54EA1B54EA1B54EA1B54EA1
                B54EA1B54EA1B54C9FB55BA8BC82C0CEB3DAE678B8C900718D006988006B8900
                6B89006B89006B88006B89006C89006C89006C89006B88006C89006B89006B89
                006583006C89419CB0B6DDE7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9DCEDC2D8EA60069860065
                83006B89006B89006B89006C89006B89006C89006B89006B88006C89006B8900
                6B89006C89006B89006886057893BAE0E993C8D601748F006180006281006382
                0063820063810063820063810063810063820062820064820063820062820063
                82006482006382006382006281006282006382006885006C89006B89006B8900
                6C89006B89006C89006C88006B89006B89006B89006B88006B89006A88006483
                3F99AFE8F9FFF6FFFFADD7E201718E006884006B89006B89006C89006C89006B
                89006C89006B89006B89006B89006B89006C89006B89006A8800648300628100
                6382006282006382006382006282006281006282006282006482006382006282
                0063820062820063810063820063820063820061800065833995ACD3ECF561AB
                BF006784006B88006B89006B89006B89006B89006B89006C89006B89006C8900
                6C89006C89006C89006B89006A860063820475925FABBDD4EEF5FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7E6EF459CB300718C
                006483006986006C89006B89006B89006B89006C89006C89006C89006B89006C
                89006B88006B89006B89006B880069860063831E869FE4F7FD439AB000628100
                6988006A88006A88006B88006A88006B88006B88006A88006B88006A88006B88
                006B88006A88006B86006B88006A88006A88006B88006B88006A88006A86006A
                88006B88006A88006A88006B88006A88006B88006A88006A88006A8800688500
                67850068853793ACDDF3FAC1E5EE71B5C7FCFFFF8DC6D601738E006784006785
                006986006A88006A88006A88006B88006A86006B88006A88006B88006A88006B
                88006B88006B88006A88006A88006A88006B88006B88006A88006B88006B8800
                6A88006A88006B88006B88006A88006A88006A88006A88006B88006A88006583
                006B88B2DCE6A1D0DF016482006784006988006B89006B88006B89006C89006B
                89006B89006B89006B89006B89006B89006B89006B88006C8900678400658414
                819B84C0D0F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE6F8FD71B5C607
                7A95006584006985006B89006B89006B89006B89006C89006B89006B88006B89
                006C89006B89006B89006B89006A8500658300688500728E18839D67AFC3E9FA
                FF9FD0DE15819B006D8B006A8600698600688600688600698600688600698500
                6886006986006886006886006986006986006886006885006986006986006986
                006986006986006886006886006886006986006886006986006986006886006A
                86006D8A00728F18849D79BACBEAFAFFD1EDF5288DA5006D8B75BAC9F7FFFFBA
                DFE9439CB207799400708C006A88006886006986006886006886006986006986
                0068860069860068850068860068860068860069860068860068860069860069
                8600698600698600688600698600688600698600698600688600688600688600
                6985006B8800738D479DB3DFF5FBBADFE93392A8097A94006C8A006584006885
                006A88006C89006B89006B89006C89006C89006B89006B89006B89006C89006B
                89006C89006A88006584006B892F8EA7AFD8E2FFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9FFFF96CB
                D91E859E006986006885006B88006C89006B89006B89006C88006B89006B8900
                6B89006B88006B88006B89006B88006584006382006D8B1E869E51A3B789C3D1
                B5DDE78DC5D54EA2B88CC8DAACD7E470B4C65BAABD63AEC065AFC065AFC065AF
                C065AFC065AFBF65AFC065AFC065AFBF65AFC065AFBF65AFC065AFBF65AFC065
                AFBF65AFBF65AFC065AFC065AFBF65AFBF65AFC065AFC065AFC065AFBF65AFC0
                65AFC064AFC062AEBF72B6C79BCDDCCCE8F1CBE9F271BACD047C9C0067850069
                85006A8C3095B3AAD8E5D7F0F7BBDEE986C1D165AEC163ADBF65AFBF65AFC065
                AFC065AFC065AFC065AFC065AFC065AFBF65AFC065AFC065AFC065AFBF65AFBF
                65AFC065AFBF65AFC065AFC065AFBF65AFC065AFC065AFBF65AFBF65AFBF65AF
                C065AFC065AFC060ACBE61ACBF8BC4D4ADD9E764B0C564AEC0ACD7E2A8D5E170
                B5C63795AC097A95006784006482006886006C88006C89006B89006B89006B89
                006C89006B88006B89006B89006B89006C89006A8600678400718C51A3B8CEEC
                F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                C3E4ED469CB2006B89006985006A88006B89006C89006B89006C89006C89006B
                88006B89006B88006B89006C8900698600628000678512819A50A3B682BECFA4
                D3DF9ECFDD5FABBE12809A006A88006782006C862691AF64B7CF8BCCE09DD6E8
                A1D8E99FD8E89FD8E89FD8E89FD8E79FD8E89FD8E89FD8E89FD8E89FD8E89FD8
                E89FD8E89FD8E89FD8E89FD8E89FD8E89FD8E89FD8E89FD8E89FD8E89FD8E89F
                D8E89FD8E89FD8E89FD8E8A1D9E896D3E582C7DC63B5CD2D97B600789B006780
                245F5D3061630D697A35605A09626F006C8C0F86A848A6C171BDD48BCDE09DD6
                E8A1D8E89FD8E89FD8E89FD8E89FD8E89FD8E89FD8E89FD8E89FD8E79FD8E89F
                D8E89FD8E89FD8E89FD8E89FD8E89FD8E89FD8E79FD8E89FD8E89FD8E89FD8E8
                9FD8E89FD8E89FD8E89FD8E8A2D9E899D4E67BC4D944A5C10E7C9A0067810068
                8500718D3392AA83C0D0AAD6E196CBD96BB2C43592AA00718D00628100678300
                6B88006C89006B89006B89006B89006B89006B88006B89006C89006C89006B88
                006A860067830D7C9783BFCFEEFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFE7F8FE78BAC9077994006582006A88006B89006B89006B88006B89006C89
                006C89006B88006B89006C89006A8800678400648200738F3995AC7CBCCC9CCE
                DCA2D0DE75B8C8278BA3006A89006583006986006C8A0B687B5D58373F5A4420
                5C5A155B5C145B5B145A5B145A5B145A5B145B5B155A5A145B5B155A5B145B5B
                145A5B145A5B145A5B145B5B145A5B145A5B145A5B145A5B145A5B145A5B145A
                5B145A5B145A5B145A5B155B5B145B5B155A5B145A5B155B5B165C5C195C5D29
                5C54465B426D57259D4C0062593D1A657191510F8A510E595833355C4C205C5B
                175C5D165B5C145B5B155A5B145B5B145A5B145A5B155A5B145A5B145B5B155A
                5B145A5A145B5B145A5B145B5B145B5B145A5B145A5B155B5B145A5A145A5B14
                5A5B145B5B155A5B145A5B145B5B145B5B145A5B145B5B155B5B185C5C2A5B51
                5458383A615B006C88006A880067850064830075914FA2B692C8D6A4D1DF93C8
                D762ACBF18829C006986006382006986006C89006B88006B88006C89006B8900
                6C88006B89006C89006B88006B880068850068853693AAB4DCE6FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFD1ECF33692AA006584006884006B89006C89006B89006B8800
                6B88006B88006C89006A86006B88006986006785006C8A2B8DA575B7C9B7DEE9
                E5F8FE96CBD73B93AA00728F006281006784006B88006C89006B89006C8C1068
                79945001AE4A009E4E00964F00974F00974F00974F00974F00974F00994F0097
                4F00995000974F00974F00994F00974F00974F00994F00995000994F00974F00
                974F00974F00994F00974F00994F00994F00974F00974F00974F00974F009950
                00974F00994F00A44E00AE4A00AD4A00A84A005C5A401767748E510FAC4A00AD
                4A00AA4B009E4F00974F00974F00974F00974F00995000974F00974F00974F00
                994F00974F00974F00994F00974F00974F00974F00974F00974F00994F00974F
                00994F00994F00994F00974F00995000995000974F00975000974F00974F0097
                4F009A4F00A64B00AD4B00525C46006C8B006C8A006B89006B89006986006382
                00658318829C58A7BCC0E2EDD6EFF79ACCD956A5BA087B950068840067850069
                88006A88006B89006B88006B89006C89006B89006B88006C89006B8800648203
                748F8AC4D3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF95C9D7016786006785006B89006B89006B
                89006B88006C89006B89006A88006986006986006C8A17829C65AEC0A8D5E1A4
                D1DF65AEC39BCDD9FFFFFF2B8DA5005B7B006986006B89006B89006C89006B89
                006C89006D8C0F687A8D5108A74B00A64B00A84B00A74B00A74B00A74A00A74B
                00A74B00A74A00A74B00A74A00A74A00A74A00A74A00A74A00A74A00A74A00A7
                4A00A74A00A84B00A74A00A74B00A84B00A74A00A74A00A84B00A74B00A74B00
                A74A00A74A00A74B00A74B00A64A00A54B00A44B00A44B00A54B005C5A411767
                748C5210A64C00A44B00A54C00A64B00A74B00A74A00A74A00A74B00A74A00A7
                4B00A74B00A74A00A74B00A74A00A74B00A74B00A74B00A74A00A74B00A74A00
                A74B00A74A00A74B00A74A00A74B00A74B00A74A00A84B00A84B00A74A00A74B
                00A74A00A74B00A74A00A84B00A64A00A44C004F5F49006C8B006C8A006C8900
                6C89006B89006C89006B88006483005D7D81C0D0E4F7FB71B5C688C1D1B0D9E5
                93C8D73B96AD00738F006A88006886006986006C89006B89006C89006B88006B
                89006B89006B8900617E3794ACF5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF97CBD9016C8B006986
                006B88006C89006C89006B89006B88006B89006B89087B954B9FB597CCD9B4DC
                E785C1D0449CB314829B0061814FA2B5FEFFFF3291A8006382006B89006C8900
                6C89006C89006B89006C89006C8C0F687A8D5108A74C00A34C00A34B00A44C00
                A34B00A34B00A34B00A34C00A34B00A44C00A34B00A34B00A34B00A34B00A34C
                00A34B00A44C00A34B00A44C00A44C00A34C00A44B00A34B00A34B00A34B00A3
                4B00A34B00A34C00A44B00A34B00A34B00A34C00A34B00A34C00A44B00A44B00
                A64C005C5B411767758D5110A64A00A44C00A44C00A34B00A44C00A44C00A34B
                00A34B00A44C00A34B00A34B00A34B00A34B00A44C00A44B00A34C00A34B00A3
                4C00A44C00A34B00A44C00A34B00A34B00A34B00A44C00A34B00A44C00A44C00
                A34B00A44C00A34B00A44C00A34B00A34B00A44C00A54B00A44C004E5D49006B
                8B006B8A006C89006B88006C89006B89006C89006B8800658483C1D1BEE1EA04
                789200718D288CA45FABBEA3D1DEB3DCE676B7C9268AA300718D006A89006B89
                006B89006B89006B89006C89006B890063833E97AFF4FFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF99
                CBD9016D8B006986006B88006B89006B89006C89006B890069862F8FA8C6E6EF
                A7D3E054A4BA15819B006F8C006885006784005D7C58A8BAFEFFFF3392A80063
                82006B89006B89006C89006B89006C89006C89006D8C0F687A8C5108A64B00A4
                4C00A34B00A44C00A44C00A34B00A34B00A44C00A34B00A44C00A34B00A34C00
                A34C00A34B00A34C00A44C00A34B00A44C00A34C00A34C00A34B00A34C00A44C
                00A34B00A34B00A34B00A34B00A34C00A34B00A44C00A34C00A34C00A34B00A3
                4B00A44C00A44B00A64B005C5B411767748D5210A64B00A34B00A34B00A44C00
                A44C00A44C00A34B00A34C00A44C00A44C00A34B00A44C00A34B00A34C00A34B
                00A34B00A34B00A34B00A34B00A34B00A44C00A44C00A34B00A34B00A44C00A4
                4C00A34B00A34B00A34B00A44C00A44C00A44C00A34B00A44C00A44B00A54C00
                A44B004F5D49006C8B006B8A006B89006C89006B89006B89006C89006A880065
                8484C1D1C4E5ED0A7B94006481006784006A880176912E8FA67BBACBD4EEF6A5
                D4DF016A89006A88006B89006C89006C89006B89006B890065833F99AFF5FFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFF99CCD9016C8B006A86006C89006B89006B89006C89006A8800
                688654A5BBE1F6FB1F869E006785006886006A86006A89006C8900607E58A7BA
                FEFFFF3392A8006382006B89006C89006B89006C89006B89006B89006D8C0F69
                7A8D5108A64C00A44C00A34B00A34B00A34B00A44C00A44C00A34B00A34B00A4
                4C00A44C00A34C00A44C00A34C00A34B00A44C00A34B00A34B00A34B00A44C00
                A34C00A34B00A34B00A34B00A44C00A34B00A44C00A34B00A34C00A44C00A44C
                00A44C00A34C00A34B00A44C00A44B00A64B005C5B411765748C5110A64B00A4
                4C00A34B00A34B00A34B00A44C00A34B00A44C00A34B00A34C00A34B00A34B00
                A34B00A44C00A44C00A34B00A44C00A34B00A44C00A34B00A34B00A34C00A44C
                00A44C00A44C00A44C00A44C00A34B00A44C00A44C00A44C00A34B00A44C00A4
                4C00A34B00A44C00A44C004E5D49006C8B006C8A006B89006B89006B89006B89
                006C89006B8800658484C1D1C4E5EE0C7C95006884006B89006A880069850068
                85006986A1D1DDE8FAFE016E8A006A86006B89006B89006B89006B89006B8900
                65833F99AFF5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF99CBD9016D8B006986006B89006B89006B
                89006B88006B8800698652A4BADCF2F91A849C006785006C89006B89006B8900
                6C8900607E58A7BAFEFFFF3392A7006382006C89006C89006C89006B89006C88
                006B89006C8C0F687A8D5108A64B00A44B00A34C00A34B00A34B00A44C00A34B
                00A44C00A34C00A34C00A34C00A44C00A34B00A44C00A44C00A34C00A34B00A4
                4C00A34B00A44C00A34B00A34B00A44C00A34C00A34B00A34B00A34B00A34B00
                A44C00A44C00A34B00A44C00A34B00A34B00A34C00A44B00A54B005C5A411765
                758D5110A64A00A34B00A34B00A44C00A44C00A34B00A34B00A34B00A44C00A3
                4C00A44C00A34B00A34B00A44C00A34C00A34B00A34C00A34B00A44C00A44C00
                A44C00A34B00A44C00A44C00A44C00A34C00A34B00A44C00A34B00A34B00A34B
                00A44C00A44C00A34B00A34B00A54B00A44B004E5D49006C8B006C8A006B8900
                6C89006B89006B89006B89006A8800658484C1D1C4E5EE0C7B95006784006B89
                006B89006C89006A880069859BCFDAE5F8FB016E8A006A86006C88006B89006C
                89006B89006C890065833F99AFF4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF99CBD8016D8A006A86
                006C89006C89006C89006B88006C8800698652A5BADCF2F91D859D006885006B
                89006C89006B89006C8800607E58A7BAFEFFFF3392A7006482006B89006C8900
                6C89006C89006C88006B89006C8C0F687A8D5208A74B00A34C00A34B00A34B00
                A34B00A44C00A44C00A34B00A34B00A34C00A34B00A44C00A34B00A34C00A34B
                00A44C00A34B00A34C00A44C00A34C00A34B00A44C00A34B00A44C00A34C00A4
                4C00A34C00A44C00A34B00A34C00A34B00A34C00A44C00A44C00A44C00A44B00
                A54B005C5B411767748D5110A64A00A34C00A44C00A34B00A34B00A34B00A44C
                00A34C00A44C00A44B00A34B00A44C00A44C00A34B00A44C00A44C00A34B00A3
                4C00A44C00A34B00A34B00A44C00A44C00A44C00A34B00A34C00A44C00A34C00
                A44C00A44C00A34B00A44C00A34B00A44C00A44C00A54B00A44C004F5F49006C
                8B006C8A006C89006B89006B89006B89006C89006A8800678384C1D1C4E5EE0C
                7B95006784006C89006C89006B88006B88006A869CCFDAE4F7FB016E8A006986
                006B88006B89006B89006B89006B890064833F99AFF4FFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF99
                CCD8016C8A006986006B89006B89006B89006C89006B8900688552A4BADCF2F9
                1D859D006986006B89006C89006C89006B8900607E58A7BAFEFFFF3392A80063
                82006C89006C89006B89006B89006C89006B89006C8C0F68798D5108A64B00A4
                4B00A44C00A34B00A44C00A44C00A44C00A34B00A44C00A44C00A34B00A44C00
                A44C00A34B00A44C00A44C00A44C00A34B00A34B00A44C00A34B00A34B00A44C
                00A44C00A34B00A44C00A44C00A44C00A34B00A44C00A44C00A34B00A34B00A3
                4B00A44C00A44B00A54B005C5B411765758C5210A64B00A44C00A34C00A34B00
                A44C00A34B00A34B00A44C00A34B00A44C00A44C00A34B00A34C00A34B00A34B
                00A44C00A44C00A34C00A34B00A34B00A44C00A34B00A34B00A34B00A34B00A3
                4B00A34C00A34B00A34C00A44C00A44C00A44C00A44C00A44C00A34B00A44B00
                A44C004F5D49006B8B006C8A006B89006C89006C89006C89006B89006B880065
                8384C1D1C4E5EE0C7C95006884006B89006B88006C89006B880069869CCFDAE4
                F8FB016E8A006A86006C89006B89006B89006B89006B890064823F99AFF4FFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFF99CCD9016C8B006986006B88006B89006C89006B89006B8800
                698652A4BADCF2F91D859D006886006B89006C89006C89006B8900607E58A7BA
                FEFFFF3393A8006381006C89006B89006C89006B89006C89006B89006C8C0F68
                798D5108A64B00A44B00A44C00A44C00A44C00A44C00A44C00A44C00A44B00A3
                4C00A34B00A44C00A34C00A34C00A44C00A44C00A44C00A34B00A34B00A44C00
                A34B00A44C00A44C00A34B00A34C00A44C00A44C00A44C00A44C00A34B00A34B
                00A34B00A34C00A44C00A34B00A44B00A64B005C5A411765758D5110A64B00A3
                4B00A44C00A44C00A34C00A44C00A34B00A44C00A34C00A44C00A34B00A44C00
                A44C00A44C00A44C00A44C00A44C00A44C00A44C00A34B00A34B00A44C00A44C
                00A34B00A44C00A34B00A34B00A44C00A34C00A34B00A34B00A34B00A34B00A3
                4B00A44C00A54B00A44C004F5D49006B8B006C8A006B89006C89006B89006B89
                006B89006B8800658484C1D1C4E5EE0C7B95006784006C89006B88006B89006B
                880069869CCFDAE4F8FB016E8A006986006C88006C89006B89006C89006B8900
                64833F99AFF5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF99CBD9016D8B006986006B89006B89006C
                89006B89006B8800688651A3B8DBF2F91D859D006886006B89006B89006B8900
                6B8900607E58A7BAFEFFFF3392A8006482006B89006B89006C89006B89006C89
                006B89006C8C0F68798C5108A64A00A34B00A34B00A34B00A34C00A34B00A34B
                00A44C00A34B00A44C00A34C00A34B00A44C00A34B00A44B00A44C00A34B00A4
                4C00A34B00A44C00A34B00A34B00A44C00A44C00A34B00A44C00A44C00A34B00
                A44C00A34B00A34B00A34C00A34C00A34B00A34C00A44B00A64B005C5A411765
                748D5210A74C00A44B00A34B00A44C00A44C00A44C00A44C00A34B00A34C00A3
                4B00A44C00A44C00A44C00A44C00A34B00A34B00A34B00A44C00A34C00A44C00
                A34B00A44C00A34B00A44C00A34B00A34B00A44C00A44C00A34C00A34B00A44C
                00A44C00A34C00A34B00A34C00A44B00A44B004E5F49006C8B006C8A006B8900
                6B88006B89006B89006C89006B8800658484C0D1C4E5EE0C7C95006884006C89
                006C89006B89006A88006A869CCFDAE4F7FB016E8A006A86006B89006C89006B
                89006C89006B890064833F99AFF4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF99CCD9016C8B006986
                006B89006C89006B89006C89006B8800688657A6BBDEF3F91D859D006986006C
                89006B89006B89006B8900607E58A7BAFEFFFF3392A8006381006B89006B8900
                6C89006B89006B89006B89006C8C0F687A8C5108A64B00A44C00A34B00A34B00
                A34B00A34B00A44C00A44C00A34B00A44C00A34C00A44C00A34C00A34B00A34B
                00A44C00A44C00A34B00A34B00A44C00A44C00A34B00A34B00A34B00A34B00A4
                4C00A44C00A44C00A34B00A44C00A44C00A44C00A34C00A44C00A44B00A44B00
                A64C005C5A411767748C5110A64B00A44C00A34B00A34B00A44C00A44C00A34B
                00A44C00A34B00A44C00A44C00A34B00A34B00A34B00A34B00A34B00A34B00A4
                4C00A34B00A34B00A44C00A34B00A34C00A34B00A34C00A34B00A34B00A44C00
                A34B00A44C00A44C00A34B00A44C00A44C00A34B00A44B00A44B004E5D49006C
                8B006B8A006B89006B89006B89006B89006B89006A8800658484C1D1C4E5EE0C
                7C95006784006B89006C89006B88006A880069869CCFDAE2F7FB016D89006A86
                006B89006B89006B89006B88006B890065833F99AFF4FFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF99
                CBD9016D8B006986006C89006C89006B89006C89006B8800688575B8C8E8F9FE
                1B859D006985006B88006C89006B89006B8900607E58A7BAFEFFFF3392A80063
                81006C89006C89006C89006B89006B89006B89006C8C0E687A8D5108A74A00A4
                4C00A34B00A34B00A34B00A34B00A44C00A44C00A34B00A44C00A44C00A34B00
                A34C00A34B00A44C00A34B00A34C00A44C00A44C00A44C00A34B00A34C00A44C
                00A34B00A34B00A34B00A44C00A44C00A44C00A34B00A44C00A34B00A34B00A3
                4B00A44C00A44B00A54B005C5B411767758D5110A64B00A44C00A34B00A34B00
                A34B00A44C00A44C00A44C00A34B00A44C00A44C00A34B00A34B00A34B00A44C
                00A44C00A44C00A44C00A34B00A44C00A34C00A34B00A44C00A34B00A34B00A4
                4C00A44C00A34B00A34C00A34B00A34C00A34B00A34C00A44C00A34B00A54B00
                A44B004E5F49006C8B006C8A006B89006B88006B89006C89006B89006A880065
                8384C1D1C4E5EE0C7B95006884006C89006C89006B88006B880069869BCFDAE7
                F9FE017491006A86006C89006B88006B89006B89006B890065833F99AFF5FFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFF99CBD8016C8A006986006C89006B89006B89006B8800678500
                6C8ABEE1ECF1FFFF19839B006886006C89006B89006C89006C8900607E58A7BA
                FEFFFF3393A8006482006B89006B88006B88006B89006B89006C89006D8C0F69
                7A8C5208A64B00A44B00A34C00A44C00A34B00A44C00A34B00A44C00A44C00A3
                4C00A44C00A44C00A44C00A34C00A34B00A34B00A34C00A34B00A34B00A34B00
                A44C00A44B00A34B00A34B00A44C00A44C00A34B00A34B00A34C00A34C00A44C
                00A44C00A34B00A44B00A34C00A44B00A64C005C5B411765748C5110A64C00A3
                4B00A34B00A44C00A44C00A44C00A34B00A34B00A44B00A34B00A34B00A34B00
                A44C00A34B00A34B00A34B00A34B00A44C00A44C00A34B00A44C00A34B00A34B
                00A44C00A34B00A34C00A34B00A34B00A44C00A44C00A44C00A44C00A34B00A3
                4C00A34C00A44C00A54C004F5D49006C8B006C8A006C89006C89006B89006B88
                006B89006A8800658484C1D1C4E5EE0C7C95006783006B88006B89006B89006A
                88006A8696CDD8FFFFFF499EB5006482006A86006B88006B89006B89006B8900
                64833F99AFF4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF96CBD8016A890067840069860068860068
                85006483006D8C71B4C7FEFFFFF2FFFF17829B006986006B89006B89006C8900
                6C8900607E58A7BAFEFFFF3393A8006382006B89006C89006B89006B89006C89
                006B89006C8C0F687A8D5108A74C00A34B00A44C00A34B00A34B00A34B00A44C
                00A44C00A34B00A34B00A34B00A34C00A44C00A44C00A44C00A44C00A44C00A3
                4C00A34B00A34B00A34B00A34C00A44C00A44C00A34B00A34B00A44C00A34B00
                A34B00A44C00A44C00A34B00A34C00A34C00A34B00A44B00A54B005C5A401765
                748D5210A64B00A44C00A44C00A34C00A44C00A44C00A34B00A34B00A34C00A4
                4C00A34C00A44C00A34B00A44C00A44C00A44C00A34B00A44C00A34B00A34B00
                A44C00A34C00A34B00A34B00A44C00A34B00A44C00A34B00A44C00A34B00A34C
                00A34B00A44C00A44C00A34B00A44B00A44B004E5F49006C8B006C8A006B8900
                6B89006C89006C89006B89006A8800658484C1D1C4E5EE0C7B95006784006C89
                006B89006B89006A8800698691C8D5FFFFFFCFEDF32389A20064830068840068
                85006A860069860062813B96AEF4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9FCFDD01749200728E
                077A950F7E9A2B8EA663ACBFB5DDE7FFFFFFFFFFFFEDFBFF17839B006986006C
                89006B89006C89006B8900607E58A7BAFEFFFF3392A8006382006B89006B8900
                6C89006B89006C89006B89006C8C0F687A8D5108A64B00A44C00A34B00A34B00
                A44C00A44C00A34B00A44C00A34B00A34B00A44C00A34B00A44C00A34B00A34B
                00A44C00A34B00A34C00A44C00A44C00A34B00A44C00A34B00A44C00A44C00A3
                4C00A34B00A44C00A34B00A34B00A44C00A34B00A34B00A44C00A34B00A44B00
                A64B005C5B411767748D5110A64A00A34B00A44C00A34B00A34B00A34B00A44C
                00A44C00A44C00A34B00A44C00A34B00A34C00A44C00A34B00A34C00A44C00A4
                4C00A34B00A34B00A44C00A34B00A34B00A34B00A34B00A34B00A44C00A34B00
                A34B00A44C00A34B00A34B00A34B00A44C00A34B00A54C00A44B004E5D49006C
                8B006C8A006B89006C89006B88006B89006B89006A8800658384C1D1C4E5EE0C
                7C95006884006C89006C89006B89006B88006A8690C8D5FFFFFFFFFFFFE4F6FD
                8CC4D3449BB01C849E0B7C97047894006C8B4A9EB5F6FFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA
                FFFFDDF2F8DCF1F8E1F6FAE7F8FEF6FFFFFFFFFFFFFFFFFFFFFFFFFFFFEDFBFF
                17829B006886006B89006C89006C89006B8900607E58A7BAFEFFFF3392A80063
                82006B88006C89006B89006B89006C89006C89006C8C0F68798D5208A64B00A4
                4C00A44C00A44C00A44C00A34B00A34B00A44C00A34B00A44C00A34B00A34B00
                A44C00A34C00A34B00A34C00A44C00A44C00A34C00A34C00A34B00A44C00A44C
                00A34B00A44C00A44C00A34C00A34B00A34B00A34C00A44C00A34B00A34C00A4
                4C00A44C00A54C00A64C005C5A411767758C5110A64B00A44C00A44C00A34B00
                A44C00A34B00A34B00A34B00A44C00A34B00A34B00A44C00A34B00A44C00A34B
                00A44C00A34C00A34B00A44C00A34B00A34C00A34C00A44C00A34B00A44C00A4
                4C00A44C00A34B00A34B00A44C00A34B00A44C00A34B00A34B00A44C00A44B00
                A44C004E5D49006B8B006B8A006B89006C89006C89006B89006C89006B880065
                8384C1D1C4E5EE0C7B95006784006C89006C89006B89006B88006A8690C8D5FF
                FFFFFFFFFFFFFFFFFFFFFFFEFFFFEEFBFFE4F7FDDFF5FAD8F0F7E9FAFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFEDFBFF17839B006986006B89006C89006B89006B8900607E58A8BA
                FEFFFF3393A8006382006B89006C89006B89006B89006B89006B89006C8C0F68
                7A8D5108A64B00A44C00A44C00A34B00A34C00A34B00A34B00A34B00A44C00A4
                4C00A34C00A34B00A44C00A34C00A34B00A44C00A34C00A44C00A34C00A34C00
                A44C00A34C00A44C00A34B00A34B00A44C00A34B00A34B00A44C00A34B00A44C
                00A44C00A44C00A34C00A34B00A44B00A64C005C5A401767748D5210A74B00A4
                4C00A44C00A34B00A34B00A34B00A34B00A34B00A44C00A34B00A34B00A44C00
                A34B00A44C00A44C00A34B00A44C00A44C00A34C00A44C00A34B00A44C00A34B
                00A44C00A44C00A34B00A44C00A34B00A44C00A44C00A34B00A34C00A34B00A3
                4B00A44C00A54C00A44C004E5D49006C8B006B8A006C89006B89006B89006C89
                006C89006B8800658484C1D1C4E5ED0C7B94006784006C89006B89006B89006B
                8800698690C8D5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFEDFBFF17839B006986006B88006B89006C8900
                6B8900607E58A8BAFEFFFF3392A8006382006B89006B89006B88006B88006C89
                006B88006C8C0F687A8D5108A64B00A44C00A44C00A34B00A34C00A44C00A34B
                00A44C00A34C00A34B00A34B00A34B00A44C00A34B00A34C00A34B00A44C00A3
                4B00A34C00A44C00A44C00A34C00A44C00A34B00A44C00A34B00A44C00A34C00
                A44C00A34B00A34B00A34B00A44C00A34B00A44C00A44B00A64B005C5A411767
                748C5110A64B00A44B00A34C00A44C00A34B00A44C00A44C00A34B00A44C00A3
                4B00A34B00A34B00A34C00A34B00A44C00A44C00A34C00A34C00A34B00A34B00
                A44C00A34B00A44C00A34C00A34B00A34B00A44C00A34B00A44C00A44C00A34B
                00A34B00A34B00A34B00A44C00A54B00A44B004E5F49006C8A006B89006B8900
                6B89006B89006C89006B89006A8800658484C1D1C4E5EE0C7B95006884006C89
                006C89006B89006A88006A8690C8D5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDFBFF17829B006885006B
                88006B89006B89006C8900607E58A7BAFEFFFF3393A8006382006B89006B8800
                6C89006B89006B88006B89006C8C0F687A8C5108A64A00A34B00A34B00A34B00
                A34B00A44C00A34B00A34B00A44C00A44C00A34B00A34C00A34C00A34B00A34B
                00A44C00A34B00A34B00A34B00A44C00A34B00A44C00A34B00A34B00A34B00A3
                4B00A44B00A34B00A44C00A34B00A44C00A34B00A34C00A44C00A34B00A44B00
                A54B005C5A411767748D5210A64A00A44B00A34B00A34B00A44C00A34B00A44C
                00A34B00A34B00A34B00A34B00A34B00A34C00A34B00A34B00A34B00A44C00A3
                4B00A34B00A34B00A34C00A34B00A34B00A34B00A34B00A34C00A44C00A44C00
                A44B00A34B00A34B00A44C00A34B00A34B00A44C00A54B00A44B004E5F48006C
                8B006C8A006B89006C89006B89006B89006B89006A8800658484C0D1C4E5EE0C
                7C95006784006B89006B89006B89006B8800698690C8D5FFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFECFAFF
                107E97006483006784006785006885006884005B7B53A5B7FEFFFF3393A80063
                82006C89006C88006C89006B88006C89006C89006D8C0F697A8C5108A64A00A3
                4C00A44C00A34C00A44C00A44C00A44C00A44C00A34B00A34B00A44C00A34C00
                A44C00A44C00A34C00A34B00A34B00A34C00A34C00A34B00A44C00A34B00A44C
                00A34B00A44C00A44C00A34B00A44C00A34B00A44C00A34C00A34C00A34B00A3
                4B00A34B00A44B00A54B005C5A411765758D5210A64B00A34B00A44C00A34C00
                A34B00A44C00A34B00A44C00A44C00A34B00A44C00A44C00A44C00A44C00A34B
                00A44C00A34B00A44C00A34B00A34B00A34B00A44C00A44C00A34B00A44C00A3
                4B00A34C00A34B00A34B00A34B00A34B00A34B00A44C00A34B00A44C00A54C00
                A44C004F5F48006C8A006C8A006B89006C89006C89006C89006B89006A880065
                8484C1D1C1E4ED0578920063810068850067850068850067840065838CC6D4FF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFF5FFFF4CA1B5298BA42A8DA72A8DA62B8EA62A8DA620849E81BECE
                FFFFFF3392A8006382006B89006B89006B89006B89006B89006C89006D8C0E68
                7A8D5108A74B00A34B00A44C00A34B00A34C00A44C00A44C00A34C00A34B00A3
                4B00A44C00A44C00A34B00A34C00A34B00A44C00A34B00A34B00A34B00A34B00
                A34C00A34B00A44C00A34B00A44C00A34B00A34C00A34B00A34C00A34B00A34B
                00A34B00A44C00A34B00A44C00A44C00A64C005C5A411767758D5110A64A00A4
                4C00A34B00A44C00A44C00A34B00A34B00A34B00A44C00A34B00A34B00A34B00
                A34B00A44C00A44C00A34B00A34B00A44C00A34B00A34C00A34B00A34B00A34B
                00A34B00A34B00A34B00A34B00A44C00A44C00A34B00A44C00A44C00A44C00A4
                4C00A34C00A44B00A44B004E5D49006C8B006C8A006B89006B89006B89006B89
                006C89006B8800648482C0D0D5EFF6439BB2278AA32B8EA62A8DA62A8EA62A8C
                A5298CA5ABD7E2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7FFFFF1FFFFF2FFFFF2FFFFF2FFFFF2
                FFFFEEFEFFFEFFFFF2FFFF3392A8006382006B88006C89006C89006C89006C89
                006B89006C8C0F687A8C5108A64B00A34B00A44C00A34B00A44C00A34B00A34B
                00A44C00A34B00A44C00A34B00A34B00A34B00A44C00A34B00A44C00A44C00A3
                4B00A44C00A34B00A34C00A34B00A44C00A34B00A44C00A34B00A34C00A34B00
                A44C00A34B00A34C00A44C00A34B00A34B00A44C00A44B00A64B005C5B411767
                748D5110A64B00A44C00A44C00A34B00A44C00A44C00A34B00A34B00A44C00A3
                4B00A44C00A44C00A34B00A34B00A44C00A34C00A34B00A34B00A44C00A44C00
                A34B00A44C00A34B00A34B00A34B00A34B00A34B00A34B00A44C00A34B00A34B
                00A34B00A34B00A34B00A44C00A54B00A44C004E5D49006B8B006C8A006C8900
                6C89006B89006C89006C89006B880064847CBCCDFEFFFFF5FFFFF0FEFFF2FFFF
                F2FFFFF2FFFFF1FFFFF1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFEFF3392A8006382006C89006B8900
                6B89006B89006C88006B89006C8C0F687A8D5108A74B00A34B00A34B00A44C00
                A44C00A34C00A34B00A44C00A34B00A34C00A34B00A34B00A34C00A34B00A44C
                00A44C00A44C00A44C00A44C00A34B00A44C00A34B00A44C00A34B00A44C00A4
                4C00A44C00A34B00A44C00A34B00A34B00A34B00A34B00A44C00A34C00A44C00
                A64C005C5A401767748C5110A64B00A44C00A44C00A34C00A34B00A34B00A34B
                00A34B00A34B00A44C00A34B00A34C00A44C00A34C00A34B00A44C00A34B00A3
                4B00A34C00A34C00A34B00A44C00A44C00A44C00A44C00A44C00A34B00A44C00
                A34B00A34B00A34B00A34C00A44C00A44C00A34B00A44B00A44B004F5D48006C
                8A006C8A006B89006C89006B89006B89006B89006A880065847BBDCDFEFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0FEFF3392A80063
                82006C89006B89006C89006C89006B89006C89006C8C0F697A8C5108A64B00A4
                4B00A44C00A44C00A44C00A34B00A44C00A34C00A34B00A34C00A34B00A44C00
                A44C00A34C00A34B00A34B00A34B00A34B00A34C00A44C00A34B00A44C00A44C
                00A44C00A44C00A44C00A44C00A44C00A44C00A34B00A44C00A34C00A34B00A4
                4C00A34C00A44C00A64B005C5A411867758D5210A74B00A44C00A44C00A34B00
                A44C00A34B00A44C00A34B00A34B00A44C00A34C00A44C00A34B00A44C00A34B
                00A44C00A44C00A44C00A44C00A34C00A44C00A34C00A44C00A34C00A44C00A4
                4C00A34C00A34B00A44C00A44C00A34B00A44C00A34C00A44B00A44B00A54C00
                A44C004F5F49006B8B006C8A006C89006B89006C89006B89006C89006A880064
                847BBCCDFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                F0FEFF3392A8006381006C89006B89006C89006C89006B89006B89006C8C0E68
                7A8D5108A74C00A44B00A44C00A44C00A34B00A34B00A44C00A34C00A34B00A3
                4C00A34B00A44C00A44C00A44C00A44C00A34B00A34B00A44C00A34C00A44C00
                A34B00A44C00A44C00A34B00A44C00A44C00A44C00A44C00A34B00A44C00A34C
                00A34C00A44C00A44C00A34B00A54C00A54B005D5A401765748D5210A64B00A3
                4B00A34B00A34B00A34B00A44C00A44C00A34B00A34B00A34C00A34B00A44C00
                A34B00A44C00A34B00A34B00A34C00A34B00A44C00A34C00A44C00A34B00A34C
                00A34C00A44C00A34B00A44C00A44B00A34C00A34B00A34B00A44C00A44C00A3
                4B00A44C00A54C00A44B004E5D49006C8B006C8A006C89006B89006C89006B89
                006C89006A880064847BBBCDFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFF0FEFF3293A8006382006A89006B88006A89006B89006B88
                006C89006C8C0F68798D5208A64B00A34B00A44C00A34B00A44C00A44C00A34B
                00A34B00A44B00A34B00A44C00A34C00A34B00A44C00A34B00A34B00A44C00A3
                4B00A34B00A34B00A44C00A34C00A34B00A44C00A44C00A34B00A34B00A44C00
                A44C00A34B00A44C00A34B00A34B00A44C00A44B00A44B00A64C00595B441765
                748E510FA64A00A44C00A34B00A34B00A44C00A34B00A34B00A44C00A34B00A4
                4B00A44C00A34B00A34B00A44C00A34B00A34B00A44B00A34B00A44C00A44B00
                A34B00A44C00A34B00A44C00A34B00A34B00A44C00A34B00A44B00A34B00A34C
                00A34C00A34B00A44C00A34C00A64B00A44B004F5D49006B8B006B8A006A8900
                6B88006A88006B89006B89006B880065837ABBCDFEFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFEFF2C8EA5005D7D00678400688500
                6784006884006784006985006C8C0F687A8D5108A64B00A44B00A34B00A34B00
                A34C00A34B00A44C00A44C00A34B00A44C00A34C00A44C00A34B00A34B00A44C
                00A34B00A34B00A44C00A34B00A34B00A34B00A34B00A44C00A44C00A34B00A4
                4C00A34B00A44C00A34B00A44C00A34B00A34B00A34C00A34C00A34B00A54B00
                A74B00485F520F687A895311A74B00A34B00A44C00A34B00A34B00A44C00A44C
                00A44C00A34B00A34B00A44C00A34B00A34B00A44C00A34B00A34B00A34C00A4
                4C00A44C00A34B00A44C00A34B00A34B00A44C00A34B00A34B00A34C00A34B00
                A34B00A44C00A44C00A44C00A44C00A34B00A34B00A54B00A44B004E5D49006C
                8B006B8900678400688500678400678400678400658300608076BACBFEFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA2D1DC7BBA
                C980BECD80BECD80BECD80BECD83C0CF5AA7BC0074930B65788C5108A74B00A3
                4B00A34C00A34C00A34C00A44C00A34B00A34C00A44C00A34B00A44C00A34B00
                A34B00A34B00A44B00A34C00A44C00A44C00A34C00A44C00A34B00A34B00A34C
                00A44C00A34B00A34B00A34B00A44C00A44C00A34B00A44C00A44C00A34C00A4
                4C00A34B00A74B009D4E001E6468006B89625A36AC4A00A44C00A44C00A44C00
                A44C00A44C00A34B00A34B00A34B00A44C00A44C00A44C00A44C00A44C00A34B
                00A34B00A34C00A44C00A34B00A34B00A34B00A34B00A44C00A34B00A34C00A4
                4C00A44C00A44C00A34B00A34B00A34B00A44C00A34B00A34B00A34B00A54B00
                A44C004F5F4900678519859E80BFCD81BFCD80BECD80BECD80BECD80BDCC7CBB
                C9C6E7EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC3E2EC087B9A0563
                758C5108A64B00A34C00A34B00A44C00A34B00A34B00A34C00A44C00A44B00A3
                4C00A34B00A34B00A34B00A34B00A44C00A44C00A34B00A34B00A44C00A34B00
                A34C00A44B00A44C00A44C00A44C00A44C00A34B00A44C00A34B00A34B00A44C
                00A34B00A34B00A34B00A64B00AB4A005F593500678300698D1A636A955006AB
                4A00A34B00A34B00A34B00A44C00A44C00A34B00A34B00A44C00A34B00A44C00
                A44C00A44C00A34B00A44C00A34B00A44C00A34B00A34B00A34C00A44C00A34B
                00A34B00A44C00A44C00A34B00A44C00A34B00A44C00A44C00A34B00A34B00A3
                4B00A34C00A44C00A44C004F5F49006181439DB2FEFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                C8E6EE087C9A0563758B5108A64B00A44B00A44B00A34C00A34B00A44C00A34C
                00A44C00A34B00A44C00A34C00A34B00A34B00A34C00A34B00A44C00A34B00A4
                4C00A34B00A34B00A44C00A44B00A34C00A44C00A44C00A34C00A44C00A44C00
                A34B00A44C00A44C00A34B00A44C00A84A00A84B007256240063750C819F3695
                AE006C8D325C569C4F00AB4A00A54A00A44C00A44C00A44C00A34C00A34B00A3
                4B00A34B00A44C00A44C00A34B00A34C00A44C00A34B00A44C00A34B00A34B00
                A34B00A44C00A44C00A34B00A34B00A34B00A34B00A44C00A44C00A34B00A44C
                00A34B00A44C00A34B00A34B00A44B00A44B004E5D49006182469FB3FEFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFC6E5EE087C9B0562758B5108A64C00A44C00A34B00A44C00
                A44C00A34B00A34B00A44C00A44C00A34B00A34B00A44C00A34B00A34B00A34B
                00A34B00A34B00A34B00A44C00A34B00A34B00A34B00A44C00A44C00A44C00A4
                4C00A34B00A34B00A44C00A34B00A54C00AB4A00AD4B00994F00595935006075
                0C809EB2DCE6F5FFFF5CABBF006A8C245D5A7E5317A64B00AD4A00A84B00A54C
                00A34B00A44C00A34B00A34B00A34B00A44C00A34C00A44C00A34B00A34B00A4
                4C00A34B00A44C00A44C00A44C00A34B00A34B00A34C00A34C00A34B00A44C00
                A34B00A44C00A34B00A44C00A34C00A34B00A34B00A44B00A44B004F5F490061
                82449EB3FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC6E5EE087C9B086374955000B24900AE
                4A00AE4A00AE4A00AE4900AE4A00AE4900AE4900AE4A00AE4A00AE4A00AE4900
                AE4900AE4A00AE4900AE4A00AE4900AE4A00AE4900AE4900AE4A00AE4900AE4A
                00AE4A00AE4900AE4900AE4900AE4A00AE4900AF4A00A44C0086520F5C572F1C
                5B5B0067853194AFC2E4EDFFFFFFFFFFFFFBFFFF81BECF047B9A005F743B5947
                725420964F03AC4B00AF4900AF4900AE4A00AE4900AE4A00AE4900AE4900AE49
                00AE4A00AE4A00AE4900AE4A00AE4900AE4900AE4A00AE4A00AE4900AE4A00AE
                4A00AE4A00AE4A00AE4A00AE4900AE4900AE4900AE4A00AE4900AE4A00AF4900
                AF4A00545C44006182449DB3FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC4E4ED0579950061
                7A3E5B4A4C593F4A593F4A593F4A593F4B59404A583F4B59404B59404A583F4A
                59404B593F4B593F4B593F4A593F4A593F4B583F4B583F4A583F4A59404B5940
                4A593F4B593F4A59404B59404B593F4B58404B59404B5940485941385A47225C
                5904606D00708E2F95B291C9D8EFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC8
                E7F061AFC50E83A4006580145D622D5B4F415A434B59404A59404B59404B5940
                4B59404B593F4B593F4A59404B59404B59404A59404B59404B59404B583F4A59
                3F4B593F4A583F4A59404B59404A583F4A59404B59404B593F4B59404A59404B
                593F4B59404B59404B59401D6268005D7D419CB0FEFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                D0EAF33391A8147E9A1984A41A84A51984A41984A41985A51984A51984A51984
                A51985A51984A41984A51984A51985A51984A51984A51984A51984A51984A519
                84A51984A51984A51984A51984A51984A51984A51984A51984A51985A51984A5
                1C86A72491B247A6C181C4D8BBE2ECF0FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFDAF2F9A3D5E462B4CC329CBA1D8BAC1984A519
                84A51984A51984A51984A51984A51984A41984A51984A51984A51984A51984A4
                1984A51984A41984A51984A51984A51984A51984A41984A41984A51984A51984
                A51984A51984A51984A41984A51984A51985A51984A10F7A9664AEC0FEFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFBFFFFF8FFFFF7FFFFF6FFFFF6FFFFF6FFFFF6FFFF
                F6FFFFF6FFFFF6FFFFF6FFFFF6FFFFF6FFFFF6FFFFF6FFFFF6FFFFF6FFFFF6FF
                FFF6FFFFF6FFFFF6FFFFF6FFFFF6FFFFF6FFFFF6FFFFF6FFFFF6FFFFF6FFFFF6
                FFFFF6FFFFF6FFFFF7FFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFF9FFFFF6FFFFF6FFFFF6FFFFF6FFFFF6FFFFF6FFFFF6FFFFF6FFFFF6FFFFF6
                FFFFF6FFFFF6FFFFF6FFFFF6FFFFF6FFFFF6FFFFF6FFFFF6FFFFF6FFFFF6FFFF
                F6FFFFF6FFFFF6FFFFF6FFFFF6FFFFF6FFFFF6FFFFF6FFFFF6FFFFF7FFFFF6FF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
              mmHeight = 18521
              mmLeft = 4763
              mmTop = 529
              mmWidth = 40217
              BandType = 1
            end
            object ppLabel66: TppLabel
              UserName = 'Label17'
              Caption = 'DERRAMA MAGISTERIAL'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = [fsBold]
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 3704
              mmLeft = 5556
              mmTop = 19579
              mmWidth = 38894
              BandType = 1
            end
            object ppLabel67: TppLabel
              UserName = 'Label20'
              Caption = 'Sistema de Seguridad y Bienestar Social del Magisterio'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 2646
              mmLeft = 265
              mmTop = 24077
              mmWidth = 49477
              BandType = 1
            end
            object ppLabel68: TppLabel
              UserName = 'Label42'
              Caption = 'Modelo : CARE 2'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3704
              mmLeft = 136790
              mmTop = 24871
              mmWidth = 21167
              BandType = 1
            end
            object ppLabel79: TppLabel
              UserName = 'Label79'
              Caption = 'URGENTE'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Times New Roman'
              Font.Size = 48
              Font.Style = []
              Transparent = True
              mmHeight = 20108
              mmLeft = 70379
              mmTop = 529
              mmWidth = 79111
              BandType = 1
            end
          end
          object ppDetailBand7: TppDetailBand
            BeforePrint = ppDetailBand7BeforePrint
            PrintHeight = phDynamic
            mmBottomOffset = 0
            mmHeight = 164836
            mmPrintPosition = 0
            object ppLabel70: TppLabel
              UserName = 'Label23'
              Caption = 'FECHA:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 11
              Font.Style = []
              Transparent = True
              mmHeight = 4763
              mmLeft = 128323
              mmTop = 8467
              mmWidth = 11642
              BandType = 4
            end
            object ppLabel76: TppLabel
              UserName = 'Label29'
              Caption = 'NOTIFICACION DE COBRANZA'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 18
              Font.Style = [fsBold, fsUnderline]
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 7673
              mmLeft = 40746
              mmTop = 529
              mmWidth = 78317
              BandType = 4
            end
            object ppLabel77: TppLabel
              UserName = 'Label30'
              Caption = 'De nuestra consideraci'#243'n:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 12
              Font.Style = []
              Transparent = True
              mmHeight = 5027
              mmLeft = 0
              mmTop = 63765
              mmWidth = 48154
              BandType = 4
            end
            object ppSystemVariable5: TppSystemVariable
              UserName = 'SystemVariable4'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 11
              Font.Style = []
              Transparent = True
              mmHeight = 4763
              mmLeft = 141288
              mmTop = 8467
              mmWidth = 17992
              BandType = 4
            end
            object ppLabel85: TppLabel
              UserName = 'Label301'
              Caption = 'ASUNTO: INCUMPLIMIENTO DE PAGO'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 13
              Font.Style = [fsBold, fsUnderline]
              Transparent = True
              mmHeight = 5556
              mmLeft = 0
              mmTop = 52917
              mmWidth = 71173
              BandType = 4
            end
            object ppLabel86: TppLabel
              UserName = 'Label302'
              Caption = 
                'Le  comunicamos  que  al  no  obtener  respuesta,    por   las  ' +
                ' gestiones'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 14
              Font.Style = []
              Transparent = True
              mmHeight = 6085
              mmLeft = 0
              mmTop = 72496
              mmWidth = 160338
              BandType = 4
            end
            object ppLabel87: TppLabel
              UserName = 'Label87'
              Caption = 'realizadas  por  nuestra  unidad, a  la  fecha  Ud. '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 14
              Font.Style = []
              Transparent = True
              mmHeight = 6085
              mmLeft = 265
              mmTop = 78846
              mmWidth = 107421
              BandType = 4
            end
            object ppLabel88: TppLabel
              UserName = 'Label88'
              Caption = 'no  ha  cumplido'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 14
              Font.Style = [fsUnderline]
              Transparent = True
              mmHeight = 6085
              mmLeft = 111654
              mmTop = 78846
              mmWidth = 36513
              BandType = 4
            end
            object ppLabel98: TppLabel
              UserName = 'Label98'
              Caption = 'con'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 14
              Font.Style = []
              Transparent = True
              mmHeight = 6085
              mmLeft = 152136
              mmTop = 78846
              mmWidth = 8202
              BandType = 4
            end
            object ppLabel99: TppLabel
              UserName = 'Label99'
              Caption = 'regularizar   el   atraso   por   el   pago   del '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 14
              Font.Style = []
              Transparent = True
              mmHeight = 6085
              mmLeft = 0
              mmTop = 85196
              mmWidth = 95515
              BandType = 4
            end
            object ppLabel100: TppLabel
              UserName = 'Label100'
              Caption = 'cr'#233'dito   refinanciado'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 14
              Font.Style = [fsUnderline]
              Transparent = True
              mmHeight = 6085
              mmLeft = 100542
              mmTop = 85196
              mmWidth = 46567
              BandType = 4
            end
            object ppLabel107: TppLabel
              UserName = 'Label107'
              Caption = 'que'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 14
              Font.Style = []
              Transparent = True
              mmHeight = 6085
              mmLeft = 151871
              mmTop = 85196
              mmWidth = 8467
              BandType = 4
            end
            object ppLabel108: TppLabel
              UserName = 'Label108'
              Caption = 
                'actualmente    mantiene    con   la    Derrama    Magisterial,  ' +
                '   por   tanto'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 14
              Font.Style = []
              Transparent = True
              mmHeight = 5715
              mmLeft = 0
              mmTop = 91546
              mmWidth = 159724
              BandType = 4
            end
            object ppLabel109: TppLabel
              UserName = 'Label109'
              Caption = 'REITERAMOS   el   llamado   y   exhortamos   para  que  en  el '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 14
              Font.Style = []
              Transparent = True
              mmHeight = 6085
              mmLeft = 0
              mmTop = 97896
              mmWidth = 140759
              BandType = 4
            end
            object ppLabel110: TppLabel
              UserName = 'Label110'
              Caption = 'PLAZO'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 14
              Font.Style = [fsUnderline]
              Transparent = True
              mmHeight = 6085
              mmLeft = 143404
              mmTop = 97896
              mmWidth = 16933
              BandType = 4
            end
            object ppLabel111: TppLabel
              UserName = 'Label1001'
              Caption = 'MAXIMO  DE  72  HORAS'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 14
              Font.Style = [fsUnderline]
              Transparent = True
              mmHeight = 6085
              mmLeft = 0
              mmTop = 104246
              mmWidth = 59267
              BandType = 4
            end
            object ppLabel112: TppLabel
              UserName = 'Label112'
              Caption = 'se   acerque   a   nuestras   Oficinas,   caso'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 14
              Font.Style = []
              Transparent = True
              mmHeight = 6085
              mmLeft = 64558
              mmTop = 104246
              mmWidth = 95779
              BandType = 4
            end
            object ppMemo7: TppMemo
              UserName = 'Memo7'
              Caption = 
                'contrario ser'#225' reportado a nivel nacional ante las Centrales de ' +
                'Riesgo correspondientes, el cual lo inhabilitara en acceder a un' +
                ' cr'#233'dito en el sistema financiero.'#13#10
              CharWrap = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 14
              Font.Style = []
              Lines.Strings = (
                
                  'contrario ser'#225' reportado a nivel nacional ante las Centrales de ' +
                  'Riesgo correspondientes, el cual lo inhabilitara en acceder a un' +
                  ' cr'#233'dito en el sistema financiero.')
              TextAlignment = taFullJustified
              Transparent = True
              mmHeight = 18521
              mmLeft = 0
              mmTop = 110861
              mmWidth = 160073
              BandType = 4
              mmBottomOffset = 0
              mmOverFlowOffset = 0
              mmStopPosition = 0
              mmLeading = 0
            end
            object ppLabel69: TppLabel
              UserName = 'Label69'
              Caption = 'APELLIDOS(S) y NOMBRE(S) :'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 11
              Font.Style = []
              Transparent = True
              mmHeight = 4784
              mmLeft = 265
              mmTop = 15081
              mmWidth = 45593
              BandType = 4
            end
            object ppLabel71: TppLabel
              UserName = 'Label71'
              Caption = 'DIRECCION'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 11
              Font.Style = []
              Transparent = True
              mmHeight = 4784
              mmLeft = 265
              mmTop = 20902
              mmWidth = 17611
              BandType = 4
            end
            object ppLabel72: TppLabel
              UserName = 'Label72'
              Caption = 'DISTRITO'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 11
              Font.Style = []
              Transparent = True
              mmHeight = 4784
              mmLeft = 265
              mmTop = 26723
              mmWidth = 14647
              BandType = 4
            end
            object ppLabel73: TppLabel
              UserName = 'Label73'
              Caption = 'PROVINCIA'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 11
              Font.Style = []
              Transparent = True
              mmHeight = 4784
              mmLeft = 265
              mmTop = 32544
              mmWidth = 17695
              BandType = 4
            end
            object ppLabel74: TppLabel
              UserName = 'Label74'
              Caption = 'DPTO.'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 11
              Font.Style = []
              Transparent = True
              mmHeight = 4784
              mmLeft = 265
              mmTop = 38365
              mmWidth = 9906
              BandType = 4
            end
            object ppLabel75: TppLabel
              UserName = 'Label75'
              Caption = 'MODULAR'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 11
              Font.Style = []
              Transparent = True
              mmHeight = 4784
              mmLeft = 265
              mmTop = 44186
              mmWidth = 16849
              BandType = 4
            end
            object ppLabel80: TppLabel
              UserName = 'Label80'
              Caption = ':'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 11
              Font.Style = []
              Transparent = True
              mmHeight = 4763
              mmLeft = 21960
              mmTop = 20902
              mmWidth = 1058
              BandType = 4
            end
            object ppLabel81: TppLabel
              UserName = 'Label81'
              Caption = ':'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 11
              Font.Style = []
              Transparent = True
              mmHeight = 4763
              mmLeft = 21960
              mmTop = 26723
              mmWidth = 1058
              BandType = 4
            end
            object ppLabel82: TppLabel
              UserName = 'Label82'
              Caption = ':'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 11
              Font.Style = []
              Transparent = True
              mmHeight = 4763
              mmLeft = 21960
              mmTop = 32544
              mmWidth = 1058
              BandType = 4
            end
            object ppLabel83: TppLabel
              UserName = 'Label402'
              Caption = ':'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 11
              Font.Style = []
              Transparent = True
              mmHeight = 4763
              mmLeft = 21960
              mmTop = 38365
              mmWidth = 1058
              BandType = 4
            end
            object ppLabel84: TppLabel
              UserName = 'Label84'
              Caption = ':'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 11
              Font.Style = []
              Transparent = True
              mmHeight = 4763
              mmLeft = 21960
              mmTop = 44186
              mmWidth = 1058
              BandType = 4
            end
            object ppDBText11: TppDBText
              UserName = 'DBText1'
              DataField = 'ASOAPENOM'
              DataPipeline = ppdbC1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 11
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'ppdbC1'
              mmHeight = 4763
              mmLeft = 48683
              mmTop = 15081
              mmWidth = 111390
              BandType = 4
            end
            object ppDBText12: TppDBText
              UserName = 'DBText2'
              AutoSize = True
              DataField = 'ASOCODMOD'
              DataPipeline = ppdbC1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 11
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'ppdbC1'
              mmHeight = 4784
              mmLeft = 27252
              mmTop = 44186
              mmWidth = 22013
              BandType = 4
            end
            object pplDist3: TppLabel
              UserName = 'lDist3'
              Caption = 'lDist1'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 11
              Font.Style = []
              Transparent = True
              mmHeight = 4784
              mmLeft = 27252
              mmTop = 26723
              mmWidth = 9017
              BandType = 4
            end
            object pplProv3: TppLabel
              UserName = 'lProv3'
              Caption = 'lProv1'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 11
              Font.Style = []
              Transparent = True
              mmHeight = 4784
              mmLeft = 27252
              mmTop = 32544
              mmWidth = 10118
              BandType = 4
            end
            object pplDpto3: TppLabel
              UserName = 'lDpto3'
              Caption = 'lDpto1'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 11
              Font.Style = []
              Transparent = True
              mmHeight = 4784
              mmLeft = 27252
              mmTop = 38365
              mmWidth = 10710
              BandType = 4
            end
            object pplDir3: TppLabel
              UserName = 'lDir3'
              AutoSize = False
              Caption = 'lDir1'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 11
              Font.Style = []
              Transparent = True
              mmHeight = 4763
              mmLeft = 27252
              mmTop = 20902
              mmWidth = 132821
              BandType = 4
            end
            object ppLabel35: TppLabel
              UserName = 'Label35'
              Caption = 'Atentamente.'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 11
              Font.Style = []
              Transparent = True
              mmHeight = 4784
              mmLeft = 0
              mmTop = 143404
              mmWidth = 22056
              BandType = 4
            end
            object ppLabel58: TppLabel
              UserName = 'Label58'
              Caption = 'DERRAMA MAGISTERIAL'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 11
              Font.Style = []
              Transparent = True
              mmHeight = 4763
              mmLeft = 529
              mmTop = 155575
              mmWidth = 38894
              BandType = 4
            end
            object ppLabel59: TppLabel
              UserName = 'Label59'
              Caption = 'EQUIPO DE COBRANZAS'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 10
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 4233
              mmLeft = 2381
              mmTop = 160602
              mmWidth = 35190
              BandType = 4
            end
            object ppLabel172: TppLabel
              UserName = 'Label172'
              Caption = 
                'S'#237'rvase contactarse sobre el estado de su deuda con el Sr (ta). ' +
                '  '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 11
              Font.Style = []
              Transparent = True
              Visible = False
              mmHeight = 4763
              mmLeft = 0
              mmTop = 134938
              mmWidth = 100277
              BandType = 4
            end
            object pplGestor3: TppLabel
              UserName = 'lGestor3'
              AutoSize = False
              Caption = 'Gestor'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 11
              Font.Style = []
              Transparent = True
              Visible = False
              mmHeight = 4763
              mmLeft = 102923
              mmTop = 134938
              mmWidth = 50006
              BandType = 4
            end
          end
          object ppSummaryBand4: TppSummaryBand
            mmBottomOffset = 0
            mmHeight = 49742
            mmPrintPosition = 0
            object ppLabel103: TppLabel
              UserName = 'Label2'
              Caption = 
                'SI AL MOMENTO DE RECIBIR ESTE AVISO YA CUMPLIO CON REGULARIZAR L' +
                'O SOLICITADO, AGRADECEREMOS DEJAR SIN EFECTO LA PRESENTE.'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 7
              Font.Style = [fsBold]
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 2910
              mmLeft = 7144
              mmTop = 38629
              mmWidth = 144463
              BandType = 7
            end
            object ppLabel105: TppLabel
              UserName = 'Label96'
              Caption = 
                'El personal que entrega este documento no est'#225' autorizado para r' +
                'ecibir ning'#250'n tipo de pago, estos deber'#225'n realizarse solo en los'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 2910
              mmLeft = 17198
              mmTop = 42598
              mmWidth = 124619
              BandType = 7
            end
            object ppLabel106: TppLabel
              UserName = 'Label97'
              Caption = 'lugares autorizados por Derrama Magisterial.'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 2910
              mmLeft = 57679
              mmTop = 45773
              mmWidth = 43392
              BandType = 7
            end
            object ppmOfides3: TppMemo
              UserName = 'Memo1'
              Caption = 'mOfides1'
              CharWrap = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 18521
              mmLeft = 0
              mmTop = 15346
              mmWidth = 153459
              BandType = 7
              mmBottomOffset = 0
              mmOverFlowOffset = 0
              mmStopPosition = 0
              mmLeading = 0
            end
            object ppLabel78: TppLabel
              UserName = 'Label78'
              Caption = 'AGENCIAS / OFIDES DERRAMA MAGISTERIAL:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 10
              Font.Style = [fsBold, fsUnderline]
              Transparent = True
              mmHeight = 3969
              mmLeft = 529
              mmTop = 10583
              mmWidth = 64029
              BandType = 7
            end
          end
        end
      end
    end
    object ppFooterBand4: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
  end
  object pprCave1: TppReport
    AutoStop = False
    DataPipeline = ppdbC1
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 20000
    PrinterSetup.mmMarginLeft = 30000
    PrinterSetup.mmMarginRight = 20000
    PrinterSetup.mmMarginTop = 20000
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    Units = utMillimeters
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zsPercentage
    PreviewFormSettings.ZoomPercentage = 70
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 642
    Top = 393
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppdbC1'
    object ppHeaderBand5: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppDetailBand8: TppDetailBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 25400
      mmPrintPosition = 0
      object ppSubReport4: TppSubReport
        UserName = 'SubReport1'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        ParentPrinterSetup = False
        TraverseAllData = False
        mmHeight = 5027
        mmLeft = 0
        mmTop = 7673
        mmWidth = 160000
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppChildReport4: TppChildReport
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report'
          PrinterSetup.PaperName = 'A4'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.mmMarginBottom = 20000
          PrinterSetup.mmMarginLeft = 30000
          PrinterSetup.mmMarginRight = 20000
          PrinterSetup.mmMarginTop = 20000
          PrinterSetup.mmPaperHeight = 297000
          PrinterSetup.mmPaperWidth = 210000
          PrinterSetup.PaperSize = 9
          Units = utMillimeters
          Version = '7.02'
          mmColumnWidth = 0
          object ppTitleBand4: TppTitleBand
            mmBottomOffset = 0
            mmHeight = 29898
            mmPrintPosition = 0
            object ppImage4: TppImage
              UserName = 'Image1'
              AutoSize = True
              MaintainAspectRatio = False
              Picture.Data = {
                07544269746D6170E67C0000424DE67C00000000000036000000280000009800
                0000460000000100180000000000B07C00000000000000000000000000000000
                0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFBADEE87BBBCB79BBC97EBECC7EBECD7EBDCC7EBECC7EBECC7EBECC7EBDCC
                7EBDCC7EBDCC7EBECC7EBECC7EBDCC7EBDCC7EBDCC7EBECC7EBDCC7EBECC7EBD
                CC7EBECC7EBECD7EBDCC7EBECC7DBDCC7DBDCCB8DDE7F0FEFF92C8D67CBCCC7E
                BDCC7EBDCC7EBDCC7EBDCC7EBDCC7EBECC7EBDCC7EBDCC7EBDCC7EBECC7EBDCC
                7EBDCC7EBDCC7EBDCD7EBECC7EBDCC7EBDCD7EBDCC7EBDCC7EBDCC7EBDCC7EBE
                CD7DBDCC75B8C892C8D5EAF9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFECFAFF66AEC000718C006986006D8A006D8A006C8A00
                6C8A006D8A006C8A006C8A006C89006D8A006D8A006C8A006C8A006C89006D8A
                006C8A006D8A006C8A006D8A006D8A006C8A006C8A006C89006A8863ACBFCFEC
                F317839D006A88006C8A006C8A006D8A006D8A006D8A006D8A006C8A006C8A00
                6C8A006D8A006C8A006D8A006C8A006C8A006D8A006C89006C8A006C8A006C8A
                006C89006C8A006B890068851F88A1B3DAE6FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF81BFCF01738F0068
                85006A88006986006986006986006A86006988006A86006986006986006A8600
                6986006986006986006A86006986006986006986006986006986006986006985
                00678460ABBECFECF312809B006584006A86006986006A86006A86006A86006A
                86006986006986006A86006986006A86006A86006986006986006986006A8600
                6986006986006A860069860069860068852D8EA6D0EDF5FFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFF7FBCCE006A88006B88006C89006B89006B89006B89006C89006B89006B
                89006B89006C89006B89006B89006C89006C89006C89006C89006C89006B8900
                6C89006B89006B8800698662ACBFD0ECF316829C006986006B89006B89006C89
                006C89006C89006C89006C88006B88006C89006B89006B89006C89006C89006B
                89006C89006B89006C89006B89006B89006B8900688514819BDDF3FAFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFECFBFF6BB0C5006C8A006A88006B89006B89006B89006B89
                006B88006C89006B89006C89006B89006C89006C88006B89006B89006C89006B
                89006B88006C89006B89006C89006A88006A8662ACBFCFECF316819C006A8600
                6C89006B89006B89006B89006B89006B89006B88006B88006B89006B89006C89
                006B89006B89006C89006C89006B89006C89006C89006B89006B890069861280
                9BAFD9E5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFC1E4EC6DB3C52A8CA600708C006A88006B89006C8900
                6C89006C89006B89006C89006B89006C89006C89006B89006C89006B89006C89
                006B88006C89006C89006B89006B89006C89006B89006B88006A8662ACBFCFEC
                F216829C006986006B89006B89006C89006B89006B89006B89006B89006B8900
                6B89006B89006B89006B89006C89006B89006C89006B89006B89006B89006C89
                006C89006B89006986087A954AA1B596CBD7E8F9FEFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFD8F0F78AC3D33F9AB00B7B95006584006382006A86006B
                89006B89006C89006C89006B89006B89006C89006B88006B89006C89006B8900
                6C89006C89006B89006B89006B89006C89006B89006C89006C89006C89006A88
                00698662ACC0CFECF316819C006986006B89006B89006C89006C89006B89006C
                89006B89006C89006B89006C89006B89006B88006B89006C89006B89006B8900
                6B89006C89006B89006B89006B89006B89006784006281006D8B2189A15BAABD
                ABD6E1F5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFCEEAF281BFCF3895AC087995006D8B006584006584006B88
                006B89006B89006B89006C89006C89006C89006C89006C89006B89006B89006B
                89006B89006B89006C89006B89006C89006C89006C89006C89006B89006B8900
                6C89006B89006B8800698662ACBFCFECF316819C006886006B88006B89006C89
                006C89006C89006C89006B89006C89006B88006C89006B89006B89006B89006C
                89006B89006C89006C89006B89006B89006B89006C89006C89006C89006B8900
                698600648300698500728E1C849E58A7BCA5D4DFECFAFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFEEFDFFC3E4ED7DBDCD2B8DA600728E006B8900678500678400698600
                6C89006B89006B89006B89006B89006C89006B89006C89006B89006C89006C89
                006C89006B89006B89006C89006B89006C89006B88006C89006B89006B89006B
                89006B89006C89006C89006B88006B88006A8662ACBFCFECF316829C006A8600
                6C89006C89006B89006B88006B89006B89006C88006C89006B89006B89006C89
                006B89006B89006C89006B88006B89006C89006B88006C89006C89006C89006B
                89006C89006B89006C89006C89006B88006885006784006986006D8A0B7B964F
                A2B6A2D0DEDDF2F8F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FBFFFFD4EEF5A6D4DF65AEC12288A200708C006985006986006886006988006A
                89006C89006B89006C89006B89006B89006B88006B89006B89006B89006B8900
                6B89006C89006B89006C89006C89006B89006B89006B89006B88006B89006C89
                006B89006B89006B88006C89006B89006C89006B89006B88006A8663ADC0D0EC
                F316829C006986006B89006C89006C89006B88006B89006B89006B88006B8900
                6C89006B89006C89006C89006B89006C88006B89006C89006C89006B88006C89
                006B89006C89006B89006B89006B89006C89006C89006B89006B89006B89006A
                88006986006985006784006A88067A95419AB085C1D0BEE1EAE7F9FEFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2
                FFFFBEE1EA88C3D14A9FB50E7E99006885006582006885006986006B88006B88
                006B89006B89006B89006C89006C89006B89006B89006B89006C89006C89006B
                89006C89006B88006C89006C89006B89006B89006C89006B89006B88006C8900
                6B89006B89006B89006B88006C89006B89006B89006C89006B88006B89006B88
                00698663ACC0D0ECF316829C006986006B89006B88006B89006C89006C89006B
                89006B89006B89006B88006C89006B89006B89006C89006C89006C89006B8900
                6C89006B89006B89006B89006C89006B89006B89006B89006B89006C89006B89
                006C88006B89006B89006C89006B89006A88006A86006986006584006483006F
                8D2A8DA568B0C1A2D0DDD5EEF6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFC0E2EC72B6C73794AC037693006382006282006985006B88006C89006B8900
                6B89006C89006B88006C89006C89006C89006B89006C88006B89006C89006B89
                006C89006B89006B89006B89006B89006C89006B89006B89006B89006C89006B
                88006B89006B89006C89006B89006B89006B88006C89006C89006B89006B8900
                6C88006B88006B8800698662ACBFCFECF316819C006886006B89006B88006B88
                006B89006C89006B89006C89006B88006B89006B89006C89006C89006B89006B
                89006C89006C89006B89006C89006C89006B88006C88006B89006B89006C8900
                6B89006B89006B89006B88006C89006C89006C89006B89006C89006B89006B89
                006B88006B8900698600658300618000698819839D53A5B896CBD8E5F7FDFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFBDDFE9489EB40B7A95006584006281006885006B88006B89006B89006B
                89006B89006C89006B89006B89006C89006B89006B89006B89006B89006C8800
                6C89006B89006B89006B89006C89006B89006C89006C89006B89006C89006B89
                006B89006C89006B89006C89006B89006B89006B89006C89006B89006B89006B
                89006C89006C89006C89006C89006B88006A8662ACBFCFECF316819C00688500
                6C89006B89006B89006C89006B89006C89006B88006B89006B89006C89006B89
                006C89006B89006C89006B89006B89006C89006B88006B89006C88006C88006B
                89006C89006C89006B89006B89006C89006C89006B89006B89006C89006B8900
                6C89006B89006B89006B89006B89006B89006B88006C89006B88006583006282
                006D8A2188A179BACBEEFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFE2F6FB63AEC0047691006483006584006A88006B89006B88006B89
                006B89006B89006C89006C89006B89006B88006C89006B89006B88006C89006C
                89006B89006C88006B89006C89006C89006B89006B89006B89006B89006B8900
                6B89006B88006C89006C89006988006885006986006B89006B89006B88006C89
                006B88006B89006B89006C89006B89006B89006B88006A8800698662ACC0CFEC
                F316819D006885006B88006C89006B89006C89006B89006B89006C89006C8900
                6B89006B89006B89006A88006885006885006A88006B89006B88006C89006C89
                006B89006B88006B88006C89006B89006B89006B89006C89006B89006C89006C
                89006B89006B88006C89006B88006B89006B89006C89006B89006B89006C8900
                6C89006B89006B89006885006382006988268CA4A3D3DEFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFF8FFFF96CBD71A859D006986006884006A88006B89006B8900
                6B89006B88006B89006C89006B89006C89006C89006B89006986006885006985
                0068840069850068850068850069850069850069850068850068850069850068
                85006885006885006884006885006985006784006D8B10819A057993006C8A00
                6B89006B89006C89006B89006B89006B89006C89006B89006B89006B89006A88
                00698661ABBFCFECF316829D006985006B88006C89006C89006B89006C89006C
                89006B89006B89006C89006B89006B8900708C10809907799400688500688400
                6885006885006985006885006884006885006884006885006885006884006985
                006884006985006985006885006885006985006886006A88006B89006C89006C
                89006C89006B89006C89006B89006B89006B89006C8900698600678400728D51
                A2B6CCE8F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFB6DDE83D97AD006C89006885006A88006B89006B
                89006C89006B88006B89006B89006B88006B89006B89006C8900678500638200
                6D8A017892057994057994057994057993057994057893057994057994057994
                057994057993057894057894057894057893057893017592117C976CB3C5B2DA
                E679BACB017592006A86006C89006C89006C89006B88006B89006B89006C8900
                6B89006B89006B88006A8664ADC0CEEAF315809B006886006C89006B89006B89
                006B89006B89006B88006C89006B89006C89006B88006988308FA7A6D4E0A4D3
                DF3A96AD05769204789205789405789405789405789405799405789405799405
                789405789305799405789405789405789405799405799405789400728F006785
                006383006A86006B89006B89006C89006B89006B89006B88006B89006B89006B
                89006C8900698600688508799474B7C8E5F7FDFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFD4EDF55CAABD00718E006784006A86006B89
                006C89006B89006B88006B89006C89006B89006C89006B89006C89006B890065
                8407799456A6BA7DBCCD89C3D38CC4D48CC4D48CC4D48CC4D48CC4D58CC4D48C
                C4D48CC4D48CC4D38CC4D58CC4D48CC4D48CC4D58CC4D48CC4D48CC4D489C0D1
                A8D3E09CCEDC3F96AD3192AA00728E006A86006B89006B89006B89006C89006B
                89006C89006B89006B89006C89006A8800698678B8CCD6EFF717829C00698600
                6B88006B89006B89006B89006C89006B89006C89006B89006C89006B88006A88
                17829C3591AA6BB3C4B4DAE691C6D78AC3D38CC4D48CC4D58CC4D58CC4D48CC4
                D38CC4D48CC4D48CC4D48CC4D38CC4D38CC4D58CC4D48CC4D58CC4D58CC4D58B
                C3D486C1D372B6C73393AA006A89006886006B89006C89006B89006B88006B89
                006C89006B89006B89006C89006B88006B880068850067842186A19ACCD9F7FF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAFAFF81BECF16809A00648300698600
                6C89006C89006B89006B89006C89006C89006B89006C89006B89006B89006C89
                006B890069862A8DA5A6D3DF9CCEDC68B0C351A2B64C9FB44EA1B54EA1B54EA1
                B64EA1B64EA1B54EA1B54EA1B54EA1B54EA1B54EA1B64EA1B54EA1B54EA1B54E
                A1B54EA1B64FA2B64CA1B40E7D97006382006784006A88006C89006B88006B89
                006B89006B89006C89006C89006B89006C89006B89006A86006B89ACD6E4FBFF
                FF3F99AF006583006B89006B89006C89006B89006B89006B88006B89006C8900
                6C89006B89006B89006986006483006C892F8FA751A3B74EA1B54EA1B54EA1B5
                4EA1B54EA1B54EA1B54EA1B54EA1B54EA1B54EA1B54EA1B54EA1B54EA1B54EA1
                B54EA1B54EA1B54C9FB55BA8BC82C0CEB3DAE678B8C900718D006988006B8900
                6B89006B89006B88006B89006C89006C89006C89006B88006C89006B89006B89
                006583006C89419CB0B6DDE7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9DCEDC2D8EA60069860065
                83006B89006B89006B89006C89006B89006C89006B89006B88006C89006B8900
                6B89006C89006B89006886057893BAE0E993C8D601748F006180006281006382
                0063820063810063820063810063810063820062820064820063820062820063
                82006482006382006382006281006282006382006885006C89006B89006B8900
                6C89006B89006C89006C88006B89006B89006B89006B88006B89006A88006483
                3F99AFE8F9FFF6FFFFADD7E201718E006884006B89006B89006C89006C89006B
                89006C89006B89006B89006B89006B89006C89006B89006A8800648300628100
                6382006282006382006382006282006281006282006282006482006382006282
                0063820062820063810063820063820063820061800065833995ACD3ECF561AB
                BF006784006B88006B89006B89006B89006B89006B89006C89006B89006C8900
                6C89006C89006C89006B89006A860063820475925FABBDD4EEF5FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7E6EF459CB300718C
                006483006986006C89006B89006B89006B89006C89006C89006C89006B89006C
                89006B88006B89006B89006B880069860063831E869FE4F7FD439AB000628100
                6988006A88006A88006B88006A88006B88006B88006A88006B88006A88006B88
                006B88006A88006B86006B88006A88006A88006B88006B88006A88006A86006A
                88006B88006A88006A88006B88006A88006B88006A88006A88006A8800688500
                67850068853793ACDDF3FAC1E5EE71B5C7FCFFFF8DC6D601738E006784006785
                006986006A88006A88006A88006B88006A86006B88006A88006B88006A88006B
                88006B88006B88006A88006A88006A88006B88006B88006A88006B88006B8800
                6A88006A88006B88006B88006A88006A88006A88006A88006B88006A88006583
                006B88B2DCE6A1D0DF016482006784006988006B89006B88006B89006C89006B
                89006B89006B89006B89006B89006B89006B89006B88006C8900678400658414
                819B84C0D0F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE6F8FD71B5C607
                7A95006584006985006B89006B89006B89006B89006C89006B89006B88006B89
                006C89006B89006B89006B89006A8500658300688500728E18839D67AFC3E9FA
                FF9FD0DE15819B006D8B006A8600698600688600688600698600688600698500
                6886006986006886006886006986006986006886006885006986006986006986
                006986006986006886006886006886006986006886006986006986006886006A
                86006D8A00728F18849D79BACBEAFAFFD1EDF5288DA5006D8B75BAC9F7FFFFBA
                DFE9439CB207799400708C006A88006886006986006886006886006986006986
                0068860069860068850068860068860068860069860068860068860069860069
                8600698600698600688600698600688600698600698600688600688600688600
                6985006B8800738D479DB3DFF5FBBADFE93392A8097A94006C8A006584006885
                006A88006C89006B89006B89006C89006C89006B89006B89006B89006C89006B
                89006C89006A88006584006B892F8EA7AFD8E2FFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9FFFF96CB
                D91E859E006986006885006B88006C89006B89006B89006C88006B89006B8900
                6B89006B88006B88006B89006B88006584006382006D8B1E869E51A3B789C3D1
                B5DDE78DC5D54EA2B88CC8DAACD7E470B4C65BAABD63AEC065AFC065AFC065AF
                C065AFC065AFBF65AFC065AFC065AFBF65AFC065AFBF65AFC065AFBF65AFC065
                AFBF65AFBF65AFC065AFC065AFBF65AFBF65AFC065AFC065AFC065AFBF65AFC0
                65AFC064AFC062AEBF72B6C79BCDDCCCE8F1CBE9F271BACD047C9C0067850069
                85006A8C3095B3AAD8E5D7F0F7BBDEE986C1D165AEC163ADBF65AFBF65AFC065
                AFC065AFC065AFC065AFC065AFC065AFBF65AFC065AFC065AFC065AFBF65AFBF
                65AFC065AFBF65AFC065AFC065AFBF65AFC065AFC065AFBF65AFBF65AFBF65AF
                C065AFC065AFC060ACBE61ACBF8BC4D4ADD9E764B0C564AEC0ACD7E2A8D5E170
                B5C63795AC097A95006784006482006886006C88006C89006B89006B89006B89
                006C89006B88006B89006B89006B89006C89006A8600678400718C51A3B8CEEC
                F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                C3E4ED469CB2006B89006985006A88006B89006C89006B89006C89006C89006B
                88006B89006B88006B89006C8900698600628000678512819A50A3B682BECFA4
                D3DF9ECFDD5FABBE12809A006A88006782006C862691AF64B7CF8BCCE09DD6E8
                A1D8E99FD8E89FD8E89FD8E89FD8E79FD8E89FD8E89FD8E89FD8E89FD8E89FD8
                E89FD8E89FD8E89FD8E89FD8E89FD8E89FD8E89FD8E89FD8E89FD8E89FD8E89F
                D8E89FD8E89FD8E89FD8E8A1D9E896D3E582C7DC63B5CD2D97B600789B006780
                245F5D3061630D697A35605A09626F006C8C0F86A848A6C171BDD48BCDE09DD6
                E8A1D8E89FD8E89FD8E89FD8E89FD8E89FD8E89FD8E89FD8E89FD8E79FD8E89F
                D8E89FD8E89FD8E89FD8E89FD8E89FD8E89FD8E79FD8E89FD8E89FD8E89FD8E8
                9FD8E89FD8E89FD8E89FD8E8A2D9E899D4E67BC4D944A5C10E7C9A0067810068
                8500718D3392AA83C0D0AAD6E196CBD96BB2C43592AA00718D00628100678300
                6B88006C89006B89006B89006B89006B89006B88006B89006C89006C89006B88
                006A860067830D7C9783BFCFEEFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFE7F8FE78BAC9077994006582006A88006B89006B89006B88006B89006C89
                006C89006B88006B89006C89006A8800678400648200738F3995AC7CBCCC9CCE
                DCA2D0DE75B8C8278BA3006A89006583006986006C8A0B687B5D58373F5A4420
                5C5A155B5C145B5B145A5B145A5B145A5B145B5B155A5A145B5B155A5B145B5B
                145A5B145A5B145A5B145B5B145A5B145A5B145A5B145A5B145A5B145A5B145A
                5B145A5B145A5B145A5B155B5B145B5B155A5B145A5B155B5B165C5C195C5D29
                5C54465B426D57259D4C0062593D1A657191510F8A510E595833355C4C205C5B
                175C5D165B5C145B5B155A5B145B5B145A5B145A5B155A5B145A5B145B5B155A
                5B145A5A145B5B145A5B145B5B145B5B145A5B145A5B155B5B145A5A145A5B14
                5A5B145B5B155A5B145A5B145B5B145B5B145A5B145B5B155B5B185C5C2A5B51
                5458383A615B006C88006A880067850064830075914FA2B692C8D6A4D1DF93C8
                D762ACBF18829C006986006382006986006C89006B88006B88006C89006B8900
                6C88006B89006C89006B88006B880068850068853693AAB4DCE6FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFD1ECF33692AA006584006884006B89006C89006B89006B8800
                6B88006B88006C89006A86006B88006986006785006C8A2B8DA575B7C9B7DEE9
                E5F8FE96CBD73B93AA00728F006281006784006B88006C89006B89006C8C1068
                79945001AE4A009E4E00964F00974F00974F00974F00974F00974F00994F0097
                4F00995000974F00974F00994F00974F00974F00994F00995000994F00974F00
                974F00974F00994F00974F00994F00994F00974F00974F00974F00974F009950
                00974F00994F00A44E00AE4A00AD4A00A84A005C5A401767748E510FAC4A00AD
                4A00AA4B009E4F00974F00974F00974F00974F00995000974F00974F00974F00
                994F00974F00974F00994F00974F00974F00974F00974F00974F00994F00974F
                00994F00994F00994F00974F00995000995000974F00975000974F00974F0097
                4F009A4F00A64B00AD4B00525C46006C8B006C8A006B89006B89006986006382
                00658318829C58A7BCC0E2EDD6EFF79ACCD956A5BA087B950068840067850069
                88006A88006B89006B88006B89006C89006B89006B88006C89006B8800648203
                748F8AC4D3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF95C9D7016786006785006B89006B89006B
                89006B88006C89006B89006A88006986006986006C8A17829C65AEC0A8D5E1A4
                D1DF65AEC39BCDD9FFFFFF2B8DA5005B7B006986006B89006B89006C89006B89
                006C89006D8C0F687A8D5108A74B00A64B00A84B00A74B00A74B00A74A00A74B
                00A74B00A74A00A74B00A74A00A74A00A74A00A74A00A74A00A74A00A74A00A7
                4A00A74A00A84B00A74A00A74B00A84B00A74A00A74A00A84B00A74B00A74B00
                A74A00A74A00A74B00A74B00A64A00A54B00A44B00A44B00A54B005C5A411767
                748C5210A64C00A44B00A54C00A64B00A74B00A74A00A74A00A74B00A74A00A7
                4B00A74B00A74A00A74B00A74A00A74B00A74B00A74B00A74A00A74B00A74A00
                A74B00A74A00A74B00A74A00A74B00A74B00A74A00A84B00A84B00A74A00A74B
                00A74A00A74B00A74A00A84B00A64A00A44C004F5F49006C8B006C8A006C8900
                6C89006B89006C89006B88006483005D7D81C0D0E4F7FB71B5C688C1D1B0D9E5
                93C8D73B96AD00738F006A88006886006986006C89006B89006C89006B88006B
                89006B89006B8900617E3794ACF5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF97CBD9016C8B006986
                006B88006C89006C89006B89006B88006B89006B89087B954B9FB597CCD9B4DC
                E785C1D0449CB314829B0061814FA2B5FEFFFF3291A8006382006B89006C8900
                6C89006C89006B89006C89006C8C0F687A8D5108A74C00A34C00A34B00A44C00
                A34B00A34B00A34B00A34C00A34B00A44C00A34B00A34B00A34B00A34B00A34C
                00A34B00A44C00A34B00A44C00A44C00A34C00A44B00A34B00A34B00A34B00A3
                4B00A34B00A34C00A44B00A34B00A34B00A34C00A34B00A34C00A44B00A44B00
                A64C005C5B411767758D5110A64A00A44C00A44C00A34B00A44C00A44C00A34B
                00A34B00A44C00A34B00A34B00A34B00A34B00A44C00A44B00A34C00A34B00A3
                4C00A44C00A34B00A44C00A34B00A34B00A34B00A44C00A34B00A44C00A44C00
                A34B00A44C00A34B00A44C00A34B00A34B00A44C00A54B00A44C004E5D49006B
                8B006B8A006C89006B88006C89006B89006C89006B8800658483C1D1BEE1EA04
                789200718D288CA45FABBEA3D1DEB3DCE676B7C9268AA300718D006A89006B89
                006B89006B89006B89006C89006B890063833E97AFF4FFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF99
                CBD9016D8B006986006B88006B89006B89006C89006B890069862F8FA8C6E6EF
                A7D3E054A4BA15819B006F8C006885006784005D7C58A8BAFEFFFF3392A80063
                82006B89006B89006C89006B89006C89006C89006D8C0F687A8C5108A64B00A4
                4C00A34B00A44C00A44C00A34B00A34B00A44C00A34B00A44C00A34B00A34C00
                A34C00A34B00A34C00A44C00A34B00A44C00A34C00A34C00A34B00A34C00A44C
                00A34B00A34B00A34B00A34B00A34C00A34B00A44C00A34C00A34C00A34B00A3
                4B00A44C00A44B00A64B005C5B411767748D5210A64B00A34B00A34B00A44C00
                A44C00A44C00A34B00A34C00A44C00A44C00A34B00A44C00A34B00A34C00A34B
                00A34B00A34B00A34B00A34B00A34B00A44C00A44C00A34B00A34B00A44C00A4
                4C00A34B00A34B00A34B00A44C00A44C00A44C00A34B00A44C00A44B00A54C00
                A44B004F5D49006C8B006B8A006B89006C89006B89006B89006C89006A880065
                8484C1D1C4E5ED0A7B94006481006784006A880176912E8FA67BBACBD4EEF6A5
                D4DF016A89006A88006B89006C89006C89006B89006B890065833F99AFF5FFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFF99CCD9016C8B006A86006C89006B89006B89006C89006A8800
                688654A5BBE1F6FB1F869E006785006886006A86006A89006C8900607E58A7BA
                FEFFFF3392A8006382006B89006C89006B89006C89006B89006B89006D8C0F69
                7A8D5108A64C00A44C00A34B00A34B00A34B00A44C00A44C00A34B00A34B00A4
                4C00A44C00A34C00A44C00A34C00A34B00A44C00A34B00A34B00A34B00A44C00
                A34C00A34B00A34B00A34B00A44C00A34B00A44C00A34B00A34C00A44C00A44C
                00A44C00A34C00A34B00A44C00A44B00A64B005C5B411765748C5110A64B00A4
                4C00A34B00A34B00A34B00A44C00A34B00A44C00A34B00A34C00A34B00A34B00
                A34B00A44C00A44C00A34B00A44C00A34B00A44C00A34B00A34B00A34C00A44C
                00A44C00A44C00A44C00A44C00A34B00A44C00A44C00A44C00A34B00A44C00A4
                4C00A34B00A44C00A44C004E5D49006C8B006C8A006B89006B89006B89006B89
                006C89006B8800658484C1D1C4E5EE0C7C95006884006B89006A880069850068
                85006986A1D1DDE8FAFE016E8A006A86006B89006B89006B89006B89006B8900
                65833F99AFF5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF99CBD9016D8B006986006B89006B89006B
                89006B88006B8800698652A4BADCF2F91A849C006785006C89006B89006B8900
                6C8900607E58A7BAFEFFFF3392A7006382006C89006C89006C89006B89006C88
                006B89006C8C0F687A8D5108A64B00A44B00A34C00A34B00A34B00A44C00A34B
                00A44C00A34C00A34C00A34C00A44C00A34B00A44C00A44C00A34C00A34B00A4
                4C00A34B00A44C00A34B00A34B00A44C00A34C00A34B00A34B00A34B00A34B00
                A44C00A44C00A34B00A44C00A34B00A34B00A34C00A44B00A54B005C5A411765
                758D5110A64A00A34B00A34B00A44C00A44C00A34B00A34B00A34B00A44C00A3
                4C00A44C00A34B00A34B00A44C00A34C00A34B00A34C00A34B00A44C00A44C00
                A44C00A34B00A44C00A44C00A44C00A34C00A34B00A44C00A34B00A34B00A34B
                00A44C00A44C00A34B00A34B00A54B00A44B004E5D49006C8B006C8A006B8900
                6C89006B89006B89006B89006A8800658484C1D1C4E5EE0C7B95006784006B89
                006B89006C89006A880069859BCFDAE5F8FB016E8A006A86006C88006B89006C
                89006B89006C890065833F99AFF4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF99CBD8016D8A006A86
                006C89006C89006C89006B88006C8800698652A5BADCF2F91D859D006885006B
                89006C89006B89006C8800607E58A7BAFEFFFF3392A7006482006B89006C8900
                6C89006C89006C88006B89006C8C0F687A8D5208A74B00A34C00A34B00A34B00
                A34B00A44C00A44C00A34B00A34B00A34C00A34B00A44C00A34B00A34C00A34B
                00A44C00A34B00A34C00A44C00A34C00A34B00A44C00A34B00A44C00A34C00A4
                4C00A34C00A44C00A34B00A34C00A34B00A34C00A44C00A44C00A44C00A44B00
                A54B005C5B411767748D5110A64A00A34C00A44C00A34B00A34B00A34B00A44C
                00A34C00A44C00A44B00A34B00A44C00A44C00A34B00A44C00A44C00A34B00A3
                4C00A44C00A34B00A34B00A44C00A44C00A44C00A34B00A34C00A44C00A34C00
                A44C00A44C00A34B00A44C00A34B00A44C00A44C00A54B00A44C004F5F49006C
                8B006C8A006C89006B89006B89006B89006C89006A8800678384C1D1C4E5EE0C
                7B95006784006C89006C89006B88006B88006A869CCFDAE4F7FB016E8A006986
                006B88006B89006B89006B89006B890064833F99AFF4FFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF99
                CCD8016C8A006986006B89006B89006B89006C89006B8900688552A4BADCF2F9
                1D859D006986006B89006C89006C89006B8900607E58A7BAFEFFFF3392A80063
                82006C89006C89006B89006B89006C89006B89006C8C0F68798D5108A64B00A4
                4B00A44C00A34B00A44C00A44C00A44C00A34B00A44C00A44C00A34B00A44C00
                A44C00A34B00A44C00A44C00A44C00A34B00A34B00A44C00A34B00A34B00A44C
                00A44C00A34B00A44C00A44C00A44C00A34B00A44C00A44C00A34B00A34B00A3
                4B00A44C00A44B00A54B005C5B411765758C5210A64B00A44C00A34C00A34B00
                A44C00A34B00A34B00A44C00A34B00A44C00A44C00A34B00A34C00A34B00A34B
                00A44C00A44C00A34C00A34B00A34B00A44C00A34B00A34B00A34B00A34B00A3
                4B00A34C00A34B00A34C00A44C00A44C00A44C00A44C00A44C00A34B00A44B00
                A44C004F5D49006B8B006C8A006B89006C89006C89006C89006B89006B880065
                8384C1D1C4E5EE0C7C95006884006B89006B88006C89006B880069869CCFDAE4
                F8FB016E8A006A86006C89006B89006B89006B89006B890064823F99AFF4FFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFF99CCD9016C8B006986006B88006B89006C89006B89006B8800
                698652A4BADCF2F91D859D006886006B89006C89006C89006B8900607E58A7BA
                FEFFFF3393A8006381006C89006B89006C89006B89006C89006B89006C8C0F68
                798D5108A64B00A44B00A44C00A44C00A44C00A44C00A44C00A44C00A44B00A3
                4C00A34B00A44C00A34C00A34C00A44C00A44C00A44C00A34B00A34B00A44C00
                A34B00A44C00A44C00A34B00A34C00A44C00A44C00A44C00A44C00A34B00A34B
                00A34B00A34C00A44C00A34B00A44B00A64B005C5A411765758D5110A64B00A3
                4B00A44C00A44C00A34C00A44C00A34B00A44C00A34C00A44C00A34B00A44C00
                A44C00A44C00A44C00A44C00A44C00A44C00A44C00A34B00A34B00A44C00A44C
                00A34B00A44C00A34B00A34B00A44C00A34C00A34B00A34B00A34B00A34B00A3
                4B00A44C00A54B00A44C004F5D49006B8B006C8A006B89006C89006B89006B89
                006B89006B8800658484C1D1C4E5EE0C7B95006784006C89006B88006B89006B
                880069869CCFDAE4F8FB016E8A006986006C88006C89006B89006C89006B8900
                64833F99AFF5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF99CBD9016D8B006986006B89006B89006C
                89006B89006B8800688651A3B8DBF2F91D859D006886006B89006B89006B8900
                6B8900607E58A7BAFEFFFF3392A8006482006B89006B89006C89006B89006C89
                006B89006C8C0F68798C5108A64A00A34B00A34B00A34B00A34C00A34B00A34B
                00A44C00A34B00A44C00A34C00A34B00A44C00A34B00A44B00A44C00A34B00A4
                4C00A34B00A44C00A34B00A34B00A44C00A44C00A34B00A44C00A44C00A34B00
                A44C00A34B00A34B00A34C00A34C00A34B00A34C00A44B00A64B005C5A411765
                748D5210A74C00A44B00A34B00A44C00A44C00A44C00A44C00A34B00A34C00A3
                4B00A44C00A44C00A44C00A44C00A34B00A34B00A34B00A44C00A34C00A44C00
                A34B00A44C00A34B00A44C00A34B00A34B00A44C00A44C00A34C00A34B00A44C
                00A44C00A34C00A34B00A34C00A44B00A44B004E5F49006C8B006C8A006B8900
                6B88006B89006B89006C89006B8800658484C0D1C4E5EE0C7C95006884006C89
                006C89006B89006A88006A869CCFDAE4F7FB016E8A006A86006B89006C89006B
                89006C89006B890064833F99AFF4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF99CCD9016C8B006986
                006B89006C89006B89006C89006B8800688657A6BBDEF3F91D859D006986006C
                89006B89006B89006B8900607E58A7BAFEFFFF3392A8006381006B89006B8900
                6C89006B89006B89006B89006C8C0F687A8C5108A64B00A44C00A34B00A34B00
                A34B00A34B00A44C00A44C00A34B00A44C00A34C00A44C00A34C00A34B00A34B
                00A44C00A44C00A34B00A34B00A44C00A44C00A34B00A34B00A34B00A34B00A4
                4C00A44C00A44C00A34B00A44C00A44C00A44C00A34C00A44C00A44B00A44B00
                A64C005C5A411767748C5110A64B00A44C00A34B00A34B00A44C00A44C00A34B
                00A44C00A34B00A44C00A44C00A34B00A34B00A34B00A34B00A34B00A34B00A4
                4C00A34B00A34B00A44C00A34B00A34C00A34B00A34C00A34B00A34B00A44C00
                A34B00A44C00A44C00A34B00A44C00A44C00A34B00A44B00A44B004E5D49006C
                8B006B8A006B89006B89006B89006B89006B89006A8800658484C1D1C4E5EE0C
                7C95006784006B89006C89006B88006A880069869CCFDAE2F7FB016D89006A86
                006B89006B89006B89006B88006B890065833F99AFF4FFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF99
                CBD9016D8B006986006C89006C89006B89006C89006B8800688575B8C8E8F9FE
                1B859D006985006B88006C89006B89006B8900607E58A7BAFEFFFF3392A80063
                81006C89006C89006C89006B89006B89006B89006C8C0E687A8D5108A74A00A4
                4C00A34B00A34B00A34B00A34B00A44C00A44C00A34B00A44C00A44C00A34B00
                A34C00A34B00A44C00A34B00A34C00A44C00A44C00A44C00A34B00A34C00A44C
                00A34B00A34B00A34B00A44C00A44C00A44C00A34B00A44C00A34B00A34B00A3
                4B00A44C00A44B00A54B005C5B411767758D5110A64B00A44C00A34B00A34B00
                A34B00A44C00A44C00A44C00A34B00A44C00A44C00A34B00A34B00A34B00A44C
                00A44C00A44C00A44C00A34B00A44C00A34C00A34B00A44C00A34B00A34B00A4
                4C00A44C00A34B00A34C00A34B00A34C00A34B00A34C00A44C00A34B00A54B00
                A44B004E5F49006C8B006C8A006B89006B88006B89006C89006B89006A880065
                8384C1D1C4E5EE0C7B95006884006C89006C89006B88006B880069869BCFDAE7
                F9FE017491006A86006C89006B88006B89006B89006B890065833F99AFF5FFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFF99CBD8016C8A006986006C89006B89006B89006B8800678500
                6C8ABEE1ECF1FFFF19839B006886006C89006B89006C89006C8900607E58A7BA
                FEFFFF3393A8006482006B89006B88006B88006B89006B89006C89006D8C0F69
                7A8C5208A64B00A44B00A34C00A44C00A34B00A44C00A34B00A44C00A44C00A3
                4C00A44C00A44C00A44C00A34C00A34B00A34B00A34C00A34B00A34B00A34B00
                A44C00A44B00A34B00A34B00A44C00A44C00A34B00A34B00A34C00A34C00A44C
                00A44C00A34B00A44B00A34C00A44B00A64C005C5B411765748C5110A64C00A3
                4B00A34B00A44C00A44C00A44C00A34B00A34B00A44B00A34B00A34B00A34B00
                A44C00A34B00A34B00A34B00A34B00A44C00A44C00A34B00A44C00A34B00A34B
                00A44C00A34B00A34C00A34B00A34B00A44C00A44C00A44C00A44C00A34B00A3
                4C00A34C00A44C00A54C004F5D49006C8B006C8A006C89006C89006B89006B88
                006B89006A8800658484C1D1C4E5EE0C7C95006783006B88006B89006B89006A
                88006A8696CDD8FFFFFF499EB5006482006A86006B88006B89006B89006B8900
                64833F99AFF4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF96CBD8016A890067840069860068860068
                85006483006D8C71B4C7FEFFFFF2FFFF17829B006986006B89006B89006C8900
                6C8900607E58A7BAFEFFFF3393A8006382006B89006C89006B89006B89006C89
                006B89006C8C0F687A8D5108A74C00A34B00A44C00A34B00A34B00A34B00A44C
                00A44C00A34B00A34B00A34B00A34C00A44C00A44C00A44C00A44C00A44C00A3
                4C00A34B00A34B00A34B00A34C00A44C00A44C00A34B00A34B00A44C00A34B00
                A34B00A44C00A44C00A34B00A34C00A34C00A34B00A44B00A54B005C5A401765
                748D5210A64B00A44C00A44C00A34C00A44C00A44C00A34B00A34B00A34C00A4
                4C00A34C00A44C00A34B00A44C00A44C00A44C00A34B00A44C00A34B00A34B00
                A44C00A34C00A34B00A34B00A44C00A34B00A44C00A34B00A44C00A34B00A34C
                00A34B00A44C00A44C00A34B00A44B00A44B004E5F49006C8B006C8A006B8900
                6B89006C89006C89006B89006A8800658484C1D1C4E5EE0C7B95006784006C89
                006B89006B89006A8800698691C8D5FFFFFFCFEDF32389A20064830068840068
                85006A860069860062813B96AEF4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9FCFDD01749200728E
                077A950F7E9A2B8EA663ACBFB5DDE7FFFFFFFFFFFFEDFBFF17839B006986006C
                89006B89006C89006B8900607E58A7BAFEFFFF3392A8006382006B89006B8900
                6C89006B89006C89006B89006C8C0F687A8D5108A64B00A44C00A34B00A34B00
                A44C00A44C00A34B00A44C00A34B00A34B00A44C00A34B00A44C00A34B00A34B
                00A44C00A34B00A34C00A44C00A44C00A34B00A44C00A34B00A44C00A44C00A3
                4C00A34B00A44C00A34B00A34B00A44C00A34B00A34B00A44C00A34B00A44B00
                A64B005C5B411767748D5110A64A00A34B00A44C00A34B00A34B00A34B00A44C
                00A44C00A44C00A34B00A44C00A34B00A34C00A44C00A34B00A34C00A44C00A4
                4C00A34B00A34B00A44C00A34B00A34B00A34B00A34B00A34B00A44C00A34B00
                A34B00A44C00A34B00A34B00A34B00A44C00A34B00A54C00A44B004E5D49006C
                8B006C8A006B89006C89006B88006B89006B89006A8800658384C1D1C4E5EE0C
                7C95006884006C89006C89006B89006B88006A8690C8D5FFFFFFFFFFFFE4F6FD
                8CC4D3449BB01C849E0B7C97047894006C8B4A9EB5F6FFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA
                FFFFDDF2F8DCF1F8E1F6FAE7F8FEF6FFFFFFFFFFFFFFFFFFFFFFFFFFFFEDFBFF
                17829B006886006B89006C89006C89006B8900607E58A7BAFEFFFF3392A80063
                82006B88006C89006B89006B89006C89006C89006C8C0F68798D5208A64B00A4
                4C00A44C00A44C00A44C00A34B00A34B00A44C00A34B00A44C00A34B00A34B00
                A44C00A34C00A34B00A34C00A44C00A44C00A34C00A34C00A34B00A44C00A44C
                00A34B00A44C00A44C00A34C00A34B00A34B00A34C00A44C00A34B00A34C00A4
                4C00A44C00A54C00A64C005C5A411767758C5110A64B00A44C00A44C00A34B00
                A44C00A34B00A34B00A34B00A44C00A34B00A34B00A44C00A34B00A44C00A34B
                00A44C00A34C00A34B00A44C00A34B00A34C00A34C00A44C00A34B00A44C00A4
                4C00A44C00A34B00A34B00A44C00A34B00A44C00A34B00A34B00A44C00A44B00
                A44C004E5D49006B8B006B8A006B89006C89006C89006B89006C89006B880065
                8384C1D1C4E5EE0C7B95006784006C89006C89006B89006B88006A8690C8D5FF
                FFFFFFFFFFFFFFFFFFFFFFFEFFFFEEFBFFE4F7FDDFF5FAD8F0F7E9FAFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFEDFBFF17839B006986006B89006C89006B89006B8900607E58A8BA
                FEFFFF3393A8006382006B89006C89006B89006B89006B89006B89006C8C0F68
                7A8D5108A64B00A44C00A44C00A34B00A34C00A34B00A34B00A34B00A44C00A4
                4C00A34C00A34B00A44C00A34C00A34B00A44C00A34C00A44C00A34C00A34C00
                A44C00A34C00A44C00A34B00A34B00A44C00A34B00A34B00A44C00A34B00A44C
                00A44C00A44C00A34C00A34B00A44B00A64C005C5A401767748D5210A74B00A4
                4C00A44C00A34B00A34B00A34B00A34B00A34B00A44C00A34B00A34B00A44C00
                A34B00A44C00A44C00A34B00A44C00A44C00A34C00A44C00A34B00A44C00A34B
                00A44C00A44C00A34B00A44C00A34B00A44C00A44C00A34B00A34C00A34B00A3
                4B00A44C00A54C00A44C004E5D49006C8B006B8A006C89006B89006B89006C89
                006C89006B8800658484C1D1C4E5ED0C7B94006784006C89006B89006B89006B
                8800698690C8D5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFEDFBFF17839B006986006B88006B89006C8900
                6B8900607E58A8BAFEFFFF3392A8006382006B89006B89006B88006B88006C89
                006B88006C8C0F687A8D5108A64B00A44C00A44C00A34B00A34C00A44C00A34B
                00A44C00A34C00A34B00A34B00A34B00A44C00A34B00A34C00A34B00A44C00A3
                4B00A34C00A44C00A44C00A34C00A44C00A34B00A44C00A34B00A44C00A34C00
                A44C00A34B00A34B00A34B00A44C00A34B00A44C00A44B00A64B005C5A411767
                748C5110A64B00A44B00A34C00A44C00A34B00A44C00A44C00A34B00A44C00A3
                4B00A34B00A34B00A34C00A34B00A44C00A44C00A34C00A34C00A34B00A34B00
                A44C00A34B00A44C00A34C00A34B00A34B00A44C00A34B00A44C00A44C00A34B
                00A34B00A34B00A34B00A44C00A54B00A44B004E5F49006C8A006B89006B8900
                6B89006B89006C89006B89006A8800658484C1D1C4E5EE0C7B95006884006C89
                006C89006B89006A88006A8690C8D5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDFBFF17829B006885006B
                88006B89006B89006C8900607E58A7BAFEFFFF3393A8006382006B89006B8800
                6C89006B89006B88006B89006C8C0F687A8C5108A64A00A34B00A34B00A34B00
                A34B00A44C00A34B00A34B00A44C00A44C00A34B00A34C00A34C00A34B00A34B
                00A44C00A34B00A34B00A34B00A44C00A34B00A44C00A34B00A34B00A34B00A3
                4B00A44B00A34B00A44C00A34B00A44C00A34B00A34C00A44C00A34B00A44B00
                A54B005C5A411767748D5210A64A00A44B00A34B00A34B00A44C00A34B00A44C
                00A34B00A34B00A34B00A34B00A34B00A34C00A34B00A34B00A34B00A44C00A3
                4B00A34B00A34B00A34C00A34B00A34B00A34B00A34B00A34C00A44C00A44C00
                A44B00A34B00A34B00A44C00A34B00A34B00A44C00A54B00A44B004E5F48006C
                8B006C8A006B89006C89006B89006B89006B89006A8800658484C0D1C4E5EE0C
                7C95006784006B89006B89006B89006B8800698690C8D5FFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFECFAFF
                107E97006483006784006785006885006884005B7B53A5B7FEFFFF3393A80063
                82006C89006C88006C89006B88006C89006C89006D8C0F697A8C5108A64A00A3
                4C00A44C00A34C00A44C00A44C00A44C00A44C00A34B00A34B00A44C00A34C00
                A44C00A44C00A34C00A34B00A34B00A34C00A34C00A34B00A44C00A34B00A44C
                00A34B00A44C00A44C00A34B00A44C00A34B00A44C00A34C00A34C00A34B00A3
                4B00A34B00A44B00A54B005C5A411765758D5210A64B00A34B00A44C00A34C00
                A34B00A44C00A34B00A44C00A44C00A34B00A44C00A44C00A44C00A44C00A34B
                00A44C00A34B00A44C00A34B00A34B00A34B00A44C00A44C00A34B00A44C00A3
                4B00A34C00A34B00A34B00A34B00A34B00A34B00A44C00A34B00A44C00A54C00
                A44C004F5F48006C8A006C8A006B89006C89006C89006C89006B89006A880065
                8484C1D1C1E4ED0578920063810068850067850068850067840065838CC6D4FF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFF5FFFF4CA1B5298BA42A8DA72A8DA62B8EA62A8DA620849E81BECE
                FFFFFF3392A8006382006B89006B89006B89006B89006B89006C89006D8C0E68
                7A8D5108A74B00A34B00A44C00A34B00A34C00A44C00A44C00A34C00A34B00A3
                4B00A44C00A44C00A34B00A34C00A34B00A44C00A34B00A34B00A34B00A34B00
                A34C00A34B00A44C00A34B00A44C00A34B00A34C00A34B00A34C00A34B00A34B
                00A34B00A44C00A34B00A44C00A44C00A64C005C5A411767758D5110A64A00A4
                4C00A34B00A44C00A44C00A34B00A34B00A34B00A44C00A34B00A34B00A34B00
                A34B00A44C00A44C00A34B00A34B00A44C00A34B00A34C00A34B00A34B00A34B
                00A34B00A34B00A34B00A34B00A44C00A44C00A34B00A44C00A44C00A44C00A4
                4C00A34C00A44B00A44B004E5D49006C8B006C8A006B89006B89006B89006B89
                006C89006B8800648482C0D0D5EFF6439BB2278AA32B8EA62A8DA62A8EA62A8C
                A5298CA5ABD7E2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7FFFFF1FFFFF2FFFFF2FFFFF2FFFFF2
                FFFFEEFEFFFEFFFFF2FFFF3392A8006382006B88006C89006C89006C89006C89
                006B89006C8C0F687A8C5108A64B00A34B00A44C00A34B00A44C00A34B00A34B
                00A44C00A34B00A44C00A34B00A34B00A34B00A44C00A34B00A44C00A44C00A3
                4B00A44C00A34B00A34C00A34B00A44C00A34B00A44C00A34B00A34C00A34B00
                A44C00A34B00A34C00A44C00A34B00A34B00A44C00A44B00A64B005C5B411767
                748D5110A64B00A44C00A44C00A34B00A44C00A44C00A34B00A34B00A44C00A3
                4B00A44C00A44C00A34B00A34B00A44C00A34C00A34B00A34B00A44C00A44C00
                A34B00A44C00A34B00A34B00A34B00A34B00A34B00A34B00A44C00A34B00A34B
                00A34B00A34B00A34B00A44C00A54B00A44C004E5D49006B8B006C8A006C8900
                6C89006B89006C89006C89006B880064847CBCCDFEFFFFF5FFFFF0FEFFF2FFFF
                F2FFFFF2FFFFF1FFFFF1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFEFF3392A8006382006C89006B8900
                6B89006B89006C88006B89006C8C0F687A8D5108A74B00A34B00A34B00A44C00
                A44C00A34C00A34B00A44C00A34B00A34C00A34B00A34B00A34C00A34B00A44C
                00A44C00A44C00A44C00A44C00A34B00A44C00A34B00A44C00A34B00A44C00A4
                4C00A44C00A34B00A44C00A34B00A34B00A34B00A34B00A44C00A34C00A44C00
                A64C005C5A401767748C5110A64B00A44C00A44C00A34C00A34B00A34B00A34B
                00A34B00A34B00A44C00A34B00A34C00A44C00A34C00A34B00A44C00A34B00A3
                4B00A34C00A34C00A34B00A44C00A44C00A44C00A44C00A44C00A34B00A44C00
                A34B00A34B00A34B00A34C00A44C00A44C00A34B00A44B00A44B004F5D48006C
                8A006C8A006B89006C89006B89006B89006B89006A880065847BBDCDFEFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0FEFF3392A80063
                82006C89006B89006C89006C89006B89006C89006C8C0F697A8C5108A64B00A4
                4B00A44C00A44C00A44C00A34B00A44C00A34C00A34B00A34C00A34B00A44C00
                A44C00A34C00A34B00A34B00A34B00A34B00A34C00A44C00A34B00A44C00A44C
                00A44C00A44C00A44C00A44C00A44C00A44C00A34B00A44C00A34C00A34B00A4
                4C00A34C00A44C00A64B005C5A411867758D5210A74B00A44C00A44C00A34B00
                A44C00A34B00A44C00A34B00A34B00A44C00A34C00A44C00A34B00A44C00A34B
                00A44C00A44C00A44C00A44C00A34C00A44C00A34C00A44C00A34C00A44C00A4
                4C00A34C00A34B00A44C00A44C00A34B00A44C00A34C00A44B00A44B00A54C00
                A44C004F5F49006B8B006C8A006C89006B89006C89006B89006C89006A880064
                847BBCCDFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                F0FEFF3392A8006381006C89006B89006C89006C89006B89006B89006C8C0E68
                7A8D5108A74C00A44B00A44C00A44C00A34B00A34B00A44C00A34C00A34B00A3
                4C00A34B00A44C00A44C00A44C00A44C00A34B00A34B00A44C00A34C00A44C00
                A34B00A44C00A44C00A34B00A44C00A44C00A44C00A44C00A34B00A44C00A34C
                00A34C00A44C00A44C00A34B00A54C00A54B005D5A401765748D5210A64B00A3
                4B00A34B00A34B00A34B00A44C00A44C00A34B00A34B00A34C00A34B00A44C00
                A34B00A44C00A34B00A34B00A34C00A34B00A44C00A34C00A44C00A34B00A34C
                00A34C00A44C00A34B00A44C00A44B00A34C00A34B00A34B00A44C00A44C00A3
                4B00A44C00A54C00A44B004E5D49006C8B006C8A006C89006B89006C89006B89
                006C89006A880064847BBBCDFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFF0FEFF3293A8006382006A89006B88006A89006B89006B88
                006C89006C8C0F68798D5208A64B00A34B00A44C00A34B00A44C00A44C00A34B
                00A34B00A44B00A34B00A44C00A34C00A34B00A44C00A34B00A34B00A44C00A3
                4B00A34B00A34B00A44C00A34C00A34B00A44C00A44C00A34B00A34B00A44C00
                A44C00A34B00A44C00A34B00A34B00A44C00A44B00A44B00A64C00595B441765
                748E510FA64A00A44C00A34B00A34B00A44C00A34B00A34B00A44C00A34B00A4
                4B00A44C00A34B00A34B00A44C00A34B00A34B00A44B00A34B00A44C00A44B00
                A34B00A44C00A34B00A44C00A34B00A34B00A44C00A34B00A44B00A34B00A34C
                00A34C00A34B00A44C00A34C00A64B00A44B004F5D49006B8B006B8A006A8900
                6B88006A88006B89006B89006B880065837ABBCDFEFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFEFF2C8EA5005D7D00678400688500
                6784006884006784006985006C8C0F687A8D5108A64B00A44B00A34B00A34B00
                A34C00A34B00A44C00A44C00A34B00A44C00A34C00A44C00A34B00A34B00A44C
                00A34B00A34B00A44C00A34B00A34B00A34B00A34B00A44C00A44C00A34B00A4
                4C00A34B00A44C00A34B00A44C00A34B00A34B00A34C00A34C00A34B00A54B00
                A74B00485F520F687A895311A74B00A34B00A44C00A34B00A34B00A44C00A44C
                00A44C00A34B00A34B00A44C00A34B00A34B00A44C00A34B00A34B00A34C00A4
                4C00A44C00A34B00A44C00A34B00A34B00A44C00A34B00A34B00A34C00A34B00
                A34B00A44C00A44C00A44C00A44C00A34B00A34B00A54B00A44B004E5D49006C
                8B006B8900678400688500678400678400678400658300608076BACBFEFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA2D1DC7BBA
                C980BECD80BECD80BECD80BECD83C0CF5AA7BC0074930B65788C5108A74B00A3
                4B00A34C00A34C00A34C00A44C00A34B00A34C00A44C00A34B00A44C00A34B00
                A34B00A34B00A44B00A34C00A44C00A44C00A34C00A44C00A34B00A34B00A34C
                00A44C00A34B00A34B00A34B00A44C00A44C00A34B00A44C00A44C00A34C00A4
                4C00A34B00A74B009D4E001E6468006B89625A36AC4A00A44C00A44C00A44C00
                A44C00A44C00A34B00A34B00A34B00A44C00A44C00A44C00A44C00A44C00A34B
                00A34B00A34C00A44C00A34B00A34B00A34B00A34B00A44C00A34B00A34C00A4
                4C00A44C00A44C00A34B00A34B00A34B00A44C00A34B00A34B00A34B00A54B00
                A44C004F5F4900678519859E80BFCD81BFCD80BECD80BECD80BECD80BDCC7CBB
                C9C6E7EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC3E2EC087B9A0563
                758C5108A64B00A34C00A34B00A44C00A34B00A34B00A34C00A44C00A44B00A3
                4C00A34B00A34B00A34B00A34B00A44C00A44C00A34B00A34B00A44C00A34B00
                A34C00A44B00A44C00A44C00A44C00A44C00A34B00A44C00A34B00A34B00A44C
                00A34B00A34B00A34B00A64B00AB4A005F593500678300698D1A636A955006AB
                4A00A34B00A34B00A34B00A44C00A44C00A34B00A34B00A44C00A34B00A44C00
                A44C00A44C00A34B00A44C00A34B00A44C00A34B00A34B00A34C00A44C00A34B
                00A34B00A44C00A44C00A34B00A44C00A34B00A44C00A44C00A34B00A34B00A3
                4B00A34C00A44C00A44C004F5F49006181439DB2FEFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                C8E6EE087C9A0563758B5108A64B00A44B00A44B00A34C00A34B00A44C00A34C
                00A44C00A34B00A44C00A34C00A34B00A34B00A34C00A34B00A44C00A34B00A4
                4C00A34B00A34B00A44C00A44B00A34C00A44C00A44C00A34C00A44C00A44C00
                A34B00A44C00A44C00A34B00A44C00A84A00A84B007256240063750C819F3695
                AE006C8D325C569C4F00AB4A00A54A00A44C00A44C00A44C00A34C00A34B00A3
                4B00A34B00A44C00A44C00A34B00A34C00A44C00A34B00A44C00A34B00A34B00
                A34B00A44C00A44C00A34B00A34B00A34B00A34B00A44C00A44C00A34B00A44C
                00A34B00A44C00A34B00A34B00A44B00A44B004E5D49006182469FB3FEFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFC6E5EE087C9B0562758B5108A64C00A44C00A34B00A44C00
                A44C00A34B00A34B00A44C00A44C00A34B00A34B00A44C00A34B00A34B00A34B
                00A34B00A34B00A34B00A44C00A34B00A34B00A34B00A44C00A44C00A44C00A4
                4C00A34B00A34B00A44C00A34B00A54C00AB4A00AD4B00994F00595935006075
                0C809EB2DCE6F5FFFF5CABBF006A8C245D5A7E5317A64B00AD4A00A84B00A54C
                00A34B00A44C00A34B00A34B00A34B00A44C00A34C00A44C00A34B00A34B00A4
                4C00A34B00A44C00A44C00A44C00A34B00A34B00A34C00A34C00A34B00A44C00
                A34B00A44C00A34B00A44C00A34C00A34B00A34B00A44B00A44B004F5F490061
                82449EB3FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC6E5EE087C9B086374955000B24900AE
                4A00AE4A00AE4A00AE4900AE4A00AE4900AE4900AE4A00AE4A00AE4A00AE4900
                AE4900AE4A00AE4900AE4A00AE4900AE4A00AE4900AE4900AE4A00AE4900AE4A
                00AE4A00AE4900AE4900AE4900AE4A00AE4900AF4A00A44C0086520F5C572F1C
                5B5B0067853194AFC2E4EDFFFFFFFFFFFFFBFFFF81BECF047B9A005F743B5947
                725420964F03AC4B00AF4900AF4900AE4A00AE4900AE4A00AE4900AE4900AE49
                00AE4A00AE4A00AE4900AE4A00AE4900AE4900AE4A00AE4A00AE4900AE4A00AE
                4A00AE4A00AE4A00AE4A00AE4900AE4900AE4900AE4A00AE4900AE4A00AF4900
                AF4A00545C44006182449DB3FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC4E4ED0579950061
                7A3E5B4A4C593F4A593F4A593F4A593F4B59404A583F4B59404B59404A583F4A
                59404B593F4B593F4B593F4A593F4A593F4B583F4B583F4A583F4A59404B5940
                4A593F4B593F4A59404B59404B593F4B58404B59404B5940485941385A47225C
                5904606D00708E2F95B291C9D8EFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC8
                E7F061AFC50E83A4006580145D622D5B4F415A434B59404A59404B59404B5940
                4B59404B593F4B593F4A59404B59404B59404A59404B59404B59404B583F4A59
                3F4B593F4A583F4A59404B59404A583F4A59404B59404B593F4B59404A59404B
                593F4B59404B59404B59401D6268005D7D419CB0FEFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                D0EAF33391A8147E9A1984A41A84A51984A41984A41985A51984A51984A51984
                A51985A51984A41984A51984A51985A51984A51984A51984A51984A51984A519
                84A51984A51984A51984A51984A51984A51984A51984A51984A51985A51984A5
                1C86A72491B247A6C181C4D8BBE2ECF0FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFDAF2F9A3D5E462B4CC329CBA1D8BAC1984A519
                84A51984A51984A51984A51984A51984A41984A51984A51984A51984A51984A4
                1984A51984A41984A51984A51984A51984A51984A41984A41984A51984A51984
                A51984A51984A51984A41984A51984A51985A51984A10F7A9664AEC0FEFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFBFFFFF8FFFFF7FFFFF6FFFFF6FFFFF6FFFFF6FFFF
                F6FFFFF6FFFFF6FFFFF6FFFFF6FFFFF6FFFFF6FFFFF6FFFFF6FFFFF6FFFFF6FF
                FFF6FFFFF6FFFFF6FFFFF6FFFFF6FFFFF6FFFFF6FFFFF6FFFFF6FFFFF6FFFFF6
                FFFFF6FFFFF6FFFFF7FFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFF9FFFFF6FFFFF6FFFFF6FFFFF6FFFFF6FFFFF6FFFFF6FFFFF6FFFFF6FFFFF6
                FFFFF6FFFFF6FFFFF6FFFFF6FFFFF6FFFFF6FFFFF6FFFFF6FFFFF6FFFFF6FFFF
                F6FFFFF6FFFFF6FFFFF6FFFFF6FFFFF6FFFFF6FFFFF6FFFFF6FFFFF7FFFFF6FF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
              mmHeight = 18521
              mmLeft = 4763
              mmTop = 1058
              mmWidth = 40217
              BandType = 1
            end
            object ppLabel113: TppLabel
              UserName = 'Label17'
              Caption = 'DERRAMA MAGISTERIAL'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = [fsBold]
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 3704
              mmLeft = 5556
              mmTop = 20108
              mmWidth = 38894
              BandType = 1
            end
            object ppLabel114: TppLabel
              UserName = 'Label20'
              Caption = 'Sistema de Seguridad y Bienestar Social del Magisterio'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 2646
              mmLeft = 265
              mmTop = 24606
              mmWidth = 49477
              BandType = 1
            end
            object ppLabel115: TppLabel
              UserName = 'Label42'
              Caption = 'Modelo : CAVE 1'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3704
              mmLeft = 137054
              mmTop = 24871
              mmWidth = 21431
              BandType = 1
            end
          end
          object ppDetailBand9: TppDetailBand
            BeforePrint = ppDetailBand9BeforePrint
            PrintHeight = phDynamic
            mmBottomOffset = 0
            mmHeight = 171186
            mmPrintPosition = 0
            object ppLabel118: TppLabel
              UserName = 'Label23'
              Caption = 'FECHA:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 11
              Font.Style = []
              Transparent = True
              mmHeight = 4763
              mmLeft = 126736
              mmTop = 8467
              mmWidth = 11642
              BandType = 4
            end
            object ppLabel124: TppLabel
              UserName = 'Label29'
              Caption = 'AVISO  DE COBRANZA'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 18
              Font.Style = [fsBold, fsUnderline]
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 7673
              mmLeft = 51197
              mmTop = 529
              mmWidth = 57415
              BandType = 4
            end
            object ppLabel125: TppLabel
              UserName = 'Label30'
              Caption = 'Estimado (a) Docente:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 12
              Font.Style = []
              Transparent = True
              mmHeight = 5027
              mmLeft = 0
              mmTop = 60061
              mmWidth = 41540
              BandType = 4
            end
            object ppSystemVariable6: TppSystemVariable
              UserName = 'SystemVariable4'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 11
              Font.Style = []
              Transparent = True
              mmHeight = 4763
              mmLeft = 139700
              mmTop = 8467
              mmWidth = 17992
              BandType = 4
            end
            object ppLabel133: TppLabel
              UserName = 'Label302'
              Caption = 
                'Habiendo  detectado  en  nuestros registros un atraso en  el  pa' +
                'go  de  las cuotas del'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 12
              Font.Style = []
              Transparent = True
              WordWrap = True
              mmHeight = 4868
              mmLeft = 0
              mmTop = 68792
              mmWidth = 160274
              BandType = 4
            end
            object ppMemo8: TppMemo
              UserName = 'Memo7'
              Caption = 
                'contrario ser'#225' reportado a nivel nacional ante las Centrales de ' +
                'Riesgo correspondientes, el cual lo inhabilitara en acceder a un' +
                ' cr'#233'dito en el sistema financiero.'#13#10
              CharWrap = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 12
              Font.Style = []
              Lines.Strings = (
                
                  'requerimos se apersone a la brevedad posible a nuestras oficinas' +
                  ' / OFIDES con el fin de regularizar y/o solucionar esta situaci'#243 +
                  'n.')
              TextAlignment = taFullJustified
              Transparent = True
              mmHeight = 11113
              mmLeft = 0
              mmTop = 81227
              mmWidth = 160073
              BandType = 4
              mmBottomOffset = 0
              mmOverFlowOffset = 0
              mmStopPosition = 0
              mmLeading = 0
            end
            object ppLabel116: TppLabel
              UserName = 'Label116'
              Caption = 'del cr'#233'dito  N'#186
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 12
              Font.Style = []
              Transparent = True
              mmHeight = 5027
              mmLeft = 0
              mmTop = 74877
              mmWidth = 25665
              BandType = 4
            end
            object ppLabel132: TppLabel
              UserName = 'Label132'
              Caption = 'que mantiene con la'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 12
              Font.Style = []
              Transparent = True
              mmHeight = 5027
              mmLeft = 66940
              mmTop = 74877
              mmWidth = 36777
              BandType = 4
            end
            object ppLabel134: TppLabel
              UserName = 'Label134'
              Caption = 'DERRAMA MAGISTERIAL,'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 12
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 5292
              mmLeft = 107421
              mmTop = 74877
              mmWidth = 52652
              BandType = 4
            end
            object ppMemo11: TppMemo
              UserName = 'Memo11'
              Caption = 
                'contrario ser'#225' reportado a nivel nacional ante las Centrales de ' +
                'Riesgo correspondientes, el cual lo inhabilitara en acceder a un' +
                ' cr'#233'dito en el sistema financiero.'#13#10
              CharWrap = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 12
              Font.Style = [fsUnderline]
              Lines.Strings = (
                
                  'TENEMOS LA SOLUCI'#211'N MAS APROPIADA SEG'#218'N SUS POSIBILIDADES Y SITU' +
                  'ACION ECON'#211'MICA.')
              TextAlignment = taFullJustified
              Transparent = True
              mmHeight = 11113
              mmLeft = 265
              mmTop = 96573
              mmWidth = 160073
              BandType = 4
              mmBottomOffset = 0
              mmOverFlowOffset = 0
              mmStopPosition = 0
              mmLeading = 0
            end
            object ppMemo12: TppMemo
              UserName = 'Memo12'
              Caption = 
                'contrario ser'#225' reportado a nivel nacional ante las Centrales de ' +
                'Riesgo correspondientes, el cual lo inhabilitara en acceder a un' +
                ' cr'#233'dito en el sistema financiero.'#13#10
              CharWrap = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 12
              Font.Style = []
              Lines.Strings = (
                'EVITESE MOLESTIAS MAYORES, la responsabilidad est'#225' en sus manos.'
                ''
                
                  'Acercarse con la copia de su '#250'ltima boleta y copia legible de su' +
                  ' DNI: recibo de servicio b'#225'sico (agua o luz).')
              TextAlignment = taFullJustified
              Transparent = True
              mmHeight = 21696
              mmLeft = 0
              mmTop = 111919
              mmWidth = 160073
              BandType = 4
              mmBottomOffset = 0
              mmOverFlowOffset = 0
              mmStopPosition = 0
              mmLeading = 0
            end
            object ppLabel117: TppLabel
              UserName = 'Label117'
              Caption = 'APELLIDOS(S) y NOMBRE(S) :'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 11
              Font.Style = []
              Transparent = True
              mmHeight = 4784
              mmLeft = 265
              mmTop = 16669
              mmWidth = 45593
              BandType = 4
            end
            object ppLabel119: TppLabel
              UserName = 'Label119'
              Caption = 'DIRECCION'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 11
              Font.Style = []
              Transparent = True
              mmHeight = 4784
              mmLeft = 265
              mmTop = 22490
              mmWidth = 17611
              BandType = 4
            end
            object ppLabel120: TppLabel
              UserName = 'Label120'
              Caption = 'DISTRITO'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 11
              Font.Style = []
              Transparent = True
              mmHeight = 4784
              mmLeft = 265
              mmTop = 28310
              mmWidth = 14647
              BandType = 4
            end
            object ppLabel121: TppLabel
              UserName = 'Label121'
              Caption = 'PROVINCIA'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 11
              Font.Style = []
              Transparent = True
              mmHeight = 4784
              mmLeft = 265
              mmTop = 34131
              mmWidth = 17695
              BandType = 4
            end
            object ppLabel122: TppLabel
              UserName = 'Label122'
              Caption = 'DPTO.'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 11
              Font.Style = []
              Transparent = True
              mmHeight = 4784
              mmLeft = 265
              mmTop = 39952
              mmWidth = 9906
              BandType = 4
            end
            object ppLabel123: TppLabel
              UserName = 'Label123'
              Caption = 'MODULAR'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 11
              Font.Style = []
              Transparent = True
              mmHeight = 4784
              mmLeft = 265
              mmTop = 45773
              mmWidth = 16849
              BandType = 4
            end
            object ppLabel127: TppLabel
              UserName = 'Label127'
              Caption = ':'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 11
              Font.Style = []
              Transparent = True
              mmHeight = 4763
              mmLeft = 21960
              mmTop = 22490
              mmWidth = 1058
              BandType = 4
            end
            object ppLabel128: TppLabel
              UserName = 'Label128'
              Caption = ':'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 11
              Font.Style = []
              Transparent = True
              mmHeight = 4763
              mmLeft = 21960
              mmTop = 28310
              mmWidth = 1058
              BandType = 4
            end
            object ppLabel129: TppLabel
              UserName = 'Label129'
              Caption = ':'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 11
              Font.Style = []
              Transparent = True
              mmHeight = 4763
              mmLeft = 21960
              mmTop = 34131
              mmWidth = 1058
              BandType = 4
            end
            object ppLabel130: TppLabel
              UserName = 'Label403'
              Caption = ':'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 11
              Font.Style = []
              Transparent = True
              mmHeight = 4763
              mmLeft = 21960
              mmTop = 39952
              mmWidth = 1058
              BandType = 4
            end
            object ppLabel131: TppLabel
              UserName = 'Label131'
              Caption = ':'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 11
              Font.Style = []
              Transparent = True
              mmHeight = 4763
              mmLeft = 21960
              mmTop = 45773
              mmWidth = 1058
              BandType = 4
            end
            object ppDBText13: TppDBText
              UserName = 'DBText1'
              DataField = 'ASOAPENOM'
              DataPipeline = ppdbC1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 11
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'ppdbC1'
              mmHeight = 4763
              mmLeft = 48683
              mmTop = 16669
              mmWidth = 111390
              BandType = 4
            end
            object ppDBText14: TppDBText
              UserName = 'DBText2'
              AutoSize = True
              DataField = 'ASOCODMOD'
              DataPipeline = ppdbC1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 11
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'ppdbC1'
              mmHeight = 4784
              mmLeft = 27252
              mmTop = 45773
              mmWidth = 22013
              BandType = 4
            end
            object pplDist4: TppLabel
              UserName = 'lDist4'
              Caption = 'lDist1'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 11
              Font.Style = []
              Transparent = True
              mmHeight = 4784
              mmLeft = 27252
              mmTop = 28310
              mmWidth = 9017
              BandType = 4
            end
            object pplProv4: TppLabel
              UserName = 'lProv4'
              Caption = 'lProv1'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 11
              Font.Style = []
              Transparent = True
              mmHeight = 4784
              mmLeft = 27252
              mmTop = 34131
              mmWidth = 10118
              BandType = 4
            end
            object pplDpto4: TppLabel
              UserName = 'lDpto4'
              Caption = 'lDpto1'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 11
              Font.Style = []
              Transparent = True
              mmHeight = 4784
              mmLeft = 27252
              mmTop = 39952
              mmWidth = 10710
              BandType = 4
            end
            object pplDir4: TppLabel
              UserName = 'lDir4'
              AutoSize = False
              Caption = 'lDir1'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 11
              Font.Style = []
              Transparent = True
              mmHeight = 4763
              mmLeft = 27252
              mmTop = 22490
              mmWidth = 132821
              BandType = 4
            end
            object ppLabel101: TppLabel
              UserName = 'Label101'
              Caption = 'Atentamente.'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 11
              Font.Style = []
              Transparent = True
              mmHeight = 4784
              mmLeft = 0
              mmTop = 147373
              mmWidth = 22056
              BandType = 4
            end
            object ppLabel102: TppLabel
              UserName = 'Label102'
              Caption = 'DERRAMA MAGISTERIAL'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 11
              Font.Style = []
              Transparent = True
              mmHeight = 4763
              mmLeft = 529
              mmTop = 159544
              mmWidth = 38894
              BandType = 4
            end
            object ppLabel104: TppLabel
              UserName = 'Label104'
              Caption = 'EQUIPO DE COBRANZAS'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 10
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 4233
              mmLeft = 2381
              mmTop = 164571
              mmWidth = 35190
              BandType = 4
            end
            object ppLabel173: TppLabel
              UserName = 'Label173'
              Caption = 
                'S'#237'rvase contactarse sobre el estado de su deuda con el Sr (ta). ' +
                '  '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 11
              Font.Style = []
              Transparent = True
              Visible = False
              mmHeight = 4763
              mmLeft = 0
              mmTop = 137319
              mmWidth = 100277
              BandType = 4
            end
            object pplGestor4: TppLabel
              UserName = 'lGestor4'
              AutoSize = False
              Caption = 'Gestor'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 11
              Font.Style = []
              Transparent = True
              Visible = False
              mmHeight = 4763
              mmLeft = 102923
              mmTop = 137319
              mmWidth = 50006
              BandType = 4
            end
            object pplCredito: TppLabel
              UserName = 'lCredito'
              Caption = '###############'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 12
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 5027
              mmLeft = 28840
              mmTop = 74877
              mmWidth = 35454
              BandType = 4
            end
          end
          object ppSummaryBand5: TppSummaryBand
            mmBottomOffset = 0
            mmHeight = 50006
            mmPrintPosition = 0
            object ppLabel147: TppLabel
              UserName = 'Label2'
              Caption = 
                'SI AL MOMENTO DE RECIBIR ESTE AVISO YA CUMPLIO CON REGULARIZAR L' +
                'O SOLICITADO, AGRADECEREMOS DEJAR SIN EFECTO LA PRESENTE.'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 7
              Font.Style = [fsBold]
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 2910
              mmLeft = 11906
              mmTop = 38365
              mmWidth = 136261
              BandType = 7
            end
            object ppLabel149: TppLabel
              UserName = 'Label96'
              Caption = 
                'El personal que entrega este documento no est'#225' autorizado para r' +
                'ecibir ning'#250'n tipo de pago, estos deber'#225'n realizarse solo en los'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 2910
              mmLeft = 18256
              mmTop = 42598
              mmWidth = 124619
              BandType = 7
            end
            object ppLabel150: TppLabel
              UserName = 'Label97'
              Caption = 'lugares autorizados por Derrama Magisterial.'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 2910
              mmLeft = 54240
              mmTop = 45773
              mmWidth = 43392
              BandType = 7
            end
            object ppLabel135: TppLabel
              UserName = 'Label135'
              Caption = 'AGENCIAS / OFIDES DERRAMA MAGISTERIAL:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 10
              Font.Style = [fsBold, fsUnderline]
              Transparent = True
              mmHeight = 3969
              mmLeft = 794
              mmTop = 10054
              mmWidth = 64029
              BandType = 7
            end
            object ppmOfides4: TppMemo
              UserName = 'mOfides4'
              Caption = 'mOfides1'
              CharWrap = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 18521
              mmLeft = 529
              mmTop = 14817
              mmWidth = 153459
              BandType = 7
              mmBottomOffset = 0
              mmOverFlowOffset = 0
              mmStopPosition = 0
              mmLeading = 0
            end
          end
        end
      end
    end
    object ppFooterBand5: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
  end
  object pprCave2: TppReport
    AutoStop = False
    DataPipeline = ppdbC1
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 20000
    PrinterSetup.mmMarginLeft = 30000
    PrinterSetup.mmMarginRight = 20000
    PrinterSetup.mmMarginTop = 20000
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    Units = utMillimeters
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zsPercentage
    PreviewFormSettings.ZoomPercentage = 70
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 642
    Top = 437
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppdbC1'
    object ppHeaderBand6: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppDetailBand10: TppDetailBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 25400
      mmPrintPosition = 0
      object ppSubReport5: TppSubReport
        UserName = 'SubReport1'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        ParentPrinterSetup = False
        TraverseAllData = False
        mmHeight = 5027
        mmLeft = 0
        mmTop = 7673
        mmWidth = 160000
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppChildReport5: TppChildReport
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report'
          PrinterSetup.PaperName = 'A4'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.mmMarginBottom = 20000
          PrinterSetup.mmMarginLeft = 30000
          PrinterSetup.mmMarginRight = 20000
          PrinterSetup.mmMarginTop = 20000
          PrinterSetup.mmPaperHeight = 297000
          PrinterSetup.mmPaperWidth = 210000
          PrinterSetup.PaperSize = 9
          Units = utMillimeters
          Version = '7.02'
          mmColumnWidth = 0
          object ppTitleBand5: TppTitleBand
            mmBottomOffset = 0
            mmHeight = 34925
            mmPrintPosition = 0
            object ppShape4: TppShape
              UserName = 'Shape3'
              Brush.Color = clSilver
              mmHeight = 20108
              mmLeft = 70379
              mmTop = 5027
              mmWidth = 79375
              BandType = 1
            end
            object ppImage5: TppImage
              UserName = 'Image1'
              AutoSize = True
              MaintainAspectRatio = False
              Picture.Data = {
                07544269746D6170E67C0000424DE67C00000000000036000000280000009800
                0000460000000100180000000000B07C00000000000000000000000000000000
                0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFBADEE87BBBCB79BBC97EBECC7EBECD7EBDCC7EBECC7EBECC7EBECC7EBDCC
                7EBDCC7EBDCC7EBECC7EBECC7EBDCC7EBDCC7EBDCC7EBECC7EBDCC7EBECC7EBD
                CC7EBECC7EBECD7EBDCC7EBECC7DBDCC7DBDCCB8DDE7F0FEFF92C8D67CBCCC7E
                BDCC7EBDCC7EBDCC7EBDCC7EBDCC7EBECC7EBDCC7EBDCC7EBDCC7EBECC7EBDCC
                7EBDCC7EBDCC7EBDCD7EBECC7EBDCC7EBDCD7EBDCC7EBDCC7EBDCC7EBDCC7EBE
                CD7DBDCC75B8C892C8D5EAF9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFECFAFF66AEC000718C006986006D8A006D8A006C8A00
                6C8A006D8A006C8A006C8A006C89006D8A006D8A006C8A006C8A006C89006D8A
                006C8A006D8A006C8A006D8A006D8A006C8A006C8A006C89006A8863ACBFCFEC
                F317839D006A88006C8A006C8A006D8A006D8A006D8A006D8A006C8A006C8A00
                6C8A006D8A006C8A006D8A006C8A006C8A006D8A006C89006C8A006C8A006C8A
                006C89006C8A006B890068851F88A1B3DAE6FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF81BFCF01738F0068
                85006A88006986006986006986006A86006988006A86006986006986006A8600
                6986006986006986006A86006986006986006986006986006986006986006985
                00678460ABBECFECF312809B006584006A86006986006A86006A86006A86006A
                86006986006986006A86006986006A86006A86006986006986006986006A8600
                6986006986006A860069860069860068852D8EA6D0EDF5FFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFF7FBCCE006A88006B88006C89006B89006B89006B89006C89006B89006B
                89006B89006C89006B89006B89006C89006C89006C89006C89006C89006B8900
                6C89006B89006B8800698662ACBFD0ECF316829C006986006B89006B89006C89
                006C89006C89006C89006C88006B88006C89006B89006B89006C89006C89006B
                89006C89006B89006C89006B89006B89006B8900688514819BDDF3FAFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFECFBFF6BB0C5006C8A006A88006B89006B89006B89006B89
                006B88006C89006B89006C89006B89006C89006C88006B89006B89006C89006B
                89006B88006C89006B89006C89006A88006A8662ACBFCFECF316819C006A8600
                6C89006B89006B89006B89006B89006B89006B88006B88006B89006B89006C89
                006B89006B89006C89006C89006B89006C89006C89006B89006B890069861280
                9BAFD9E5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFC1E4EC6DB3C52A8CA600708C006A88006B89006C8900
                6C89006C89006B89006C89006B89006C89006C89006B89006C89006B89006C89
                006B88006C89006C89006B89006B89006C89006B89006B88006A8662ACBFCFEC
                F216829C006986006B89006B89006C89006B89006B89006B89006B89006B8900
                6B89006B89006B89006B89006C89006B89006C89006B89006B89006B89006C89
                006C89006B89006986087A954AA1B596CBD7E8F9FEFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFD8F0F78AC3D33F9AB00B7B95006584006382006A86006B
                89006B89006C89006C89006B89006B89006C89006B88006B89006C89006B8900
                6C89006C89006B89006B89006B89006C89006B89006C89006C89006C89006A88
                00698662ACC0CFECF316819C006986006B89006B89006C89006C89006B89006C
                89006B89006C89006B89006C89006B89006B88006B89006C89006B89006B8900
                6B89006C89006B89006B89006B89006B89006784006281006D8B2189A15BAABD
                ABD6E1F5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFCEEAF281BFCF3895AC087995006D8B006584006584006B88
                006B89006B89006B89006C89006C89006C89006C89006C89006B89006B89006B
                89006B89006B89006C89006B89006C89006C89006C89006C89006B89006B8900
                6C89006B89006B8800698662ACBFCFECF316819C006886006B88006B89006C89
                006C89006C89006C89006B89006C89006B88006C89006B89006B89006B89006C
                89006B89006C89006C89006B89006B89006B89006C89006C89006C89006B8900
                698600648300698500728E1C849E58A7BCA5D4DFECFAFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFEEFDFFC3E4ED7DBDCD2B8DA600728E006B8900678500678400698600
                6C89006B89006B89006B89006B89006C89006B89006C89006B89006C89006C89
                006C89006B89006B89006C89006B89006C89006B88006C89006B89006B89006B
                89006B89006C89006C89006B88006B88006A8662ACBFCFECF316829C006A8600
                6C89006C89006B89006B88006B89006B89006C88006C89006B89006B89006C89
                006B89006B89006C89006B88006B89006C89006B88006C89006C89006C89006B
                89006C89006B89006C89006C89006B88006885006784006986006D8A0B7B964F
                A2B6A2D0DEDDF2F8F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FBFFFFD4EEF5A6D4DF65AEC12288A200708C006985006986006886006988006A
                89006C89006B89006C89006B89006B89006B88006B89006B89006B89006B8900
                6B89006C89006B89006C89006C89006B89006B89006B89006B88006B89006C89
                006B89006B89006B88006C89006B89006C89006B89006B88006A8663ADC0D0EC
                F316829C006986006B89006C89006C89006B88006B89006B89006B88006B8900
                6C89006B89006C89006C89006B89006C88006B89006C89006C89006B88006C89
                006B89006C89006B89006B89006B89006C89006C89006B89006B89006B89006A
                88006986006985006784006A88067A95419AB085C1D0BEE1EAE7F9FEFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2
                FFFFBEE1EA88C3D14A9FB50E7E99006885006582006885006986006B88006B88
                006B89006B89006B89006C89006C89006B89006B89006B89006C89006C89006B
                89006C89006B88006C89006C89006B89006B89006C89006B89006B88006C8900
                6B89006B89006B89006B88006C89006B89006B89006C89006B88006B89006B88
                00698663ACC0D0ECF316829C006986006B89006B88006B89006C89006C89006B
                89006B89006B89006B88006C89006B89006B89006C89006C89006C89006B8900
                6C89006B89006B89006B89006C89006B89006B89006B89006B89006C89006B89
                006C88006B89006B89006C89006B89006A88006A86006986006584006483006F
                8D2A8DA568B0C1A2D0DDD5EEF6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFC0E2EC72B6C73794AC037693006382006282006985006B88006C89006B8900
                6B89006C89006B88006C89006C89006C89006B89006C88006B89006C89006B89
                006C89006B89006B89006B89006B89006C89006B89006B89006B89006C89006B
                88006B89006B89006C89006B89006B89006B88006C89006C89006B89006B8900
                6C88006B88006B8800698662ACBFCFECF316819C006886006B89006B88006B88
                006B89006C89006B89006C89006B88006B89006B89006C89006C89006B89006B
                89006C89006C89006B89006C89006C89006B88006C88006B89006B89006C8900
                6B89006B89006B89006B88006C89006C89006C89006B89006C89006B89006B89
                006B88006B8900698600658300618000698819839D53A5B896CBD8E5F7FDFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFBDDFE9489EB40B7A95006584006281006885006B88006B89006B89006B
                89006B89006C89006B89006B89006C89006B89006B89006B89006B89006C8800
                6C89006B89006B89006B89006C89006B89006C89006C89006B89006C89006B89
                006B89006C89006B89006C89006B89006B89006B89006C89006B89006B89006B
                89006C89006C89006C89006C89006B88006A8662ACBFCFECF316819C00688500
                6C89006B89006B89006C89006B89006C89006B88006B89006B89006C89006B89
                006C89006B89006C89006B89006B89006C89006B88006B89006C88006C88006B
                89006C89006C89006B89006B89006C89006C89006B89006B89006C89006B8900
                6C89006B89006B89006B89006B89006B89006B88006C89006B88006583006282
                006D8A2188A179BACBEEFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFE2F6FB63AEC0047691006483006584006A88006B89006B88006B89
                006B89006B89006C89006C89006B89006B88006C89006B89006B88006C89006C
                89006B89006C88006B89006C89006C89006B89006B89006B89006B89006B8900
                6B89006B88006C89006C89006988006885006986006B89006B89006B88006C89
                006B88006B89006B89006C89006B89006B89006B88006A8800698662ACC0CFEC
                F316819D006885006B88006C89006B89006C89006B89006B89006C89006C8900
                6B89006B89006B89006A88006885006885006A88006B89006B88006C89006C89
                006B89006B88006B88006C89006B89006B89006B89006C89006B89006C89006C
                89006B89006B88006C89006B88006B89006B89006C89006B89006B89006C8900
                6C89006B89006B89006885006382006988268CA4A3D3DEFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFF8FFFF96CBD71A859D006986006884006A88006B89006B8900
                6B89006B88006B89006C89006B89006C89006C89006B89006986006885006985
                0068840069850068850068850069850069850069850068850068850069850068
                85006885006885006884006885006985006784006D8B10819A057993006C8A00
                6B89006B89006C89006B89006B89006B89006C89006B89006B89006B89006A88
                00698661ABBFCFECF316829D006985006B88006C89006C89006B89006C89006C
                89006B89006B89006C89006B89006B8900708C10809907799400688500688400
                6885006885006985006885006884006885006884006885006885006884006985
                006884006985006985006885006885006985006886006A88006B89006C89006C
                89006C89006B89006C89006B89006B89006B89006C8900698600678400728D51
                A2B6CCE8F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFB6DDE83D97AD006C89006885006A88006B89006B
                89006C89006B88006B89006B89006B88006B89006B89006C8900678500638200
                6D8A017892057994057994057994057993057994057893057994057994057994
                057994057993057894057894057894057893057893017592117C976CB3C5B2DA
                E679BACB017592006A86006C89006C89006C89006B88006B89006B89006C8900
                6B89006B89006B88006A8664ADC0CEEAF315809B006886006C89006B89006B89
                006B89006B89006B88006C89006B89006C89006B88006988308FA7A6D4E0A4D3
                DF3A96AD05769204789205789405789405789405789405799405789405799405
                789405789305799405789405789405789405799405799405789400728F006785
                006383006A86006B89006B89006C89006B89006B89006B88006B89006B89006B
                89006C8900698600688508799474B7C8E5F7FDFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFD4EDF55CAABD00718E006784006A86006B89
                006C89006B89006B88006B89006C89006B89006C89006B89006C89006B890065
                8407799456A6BA7DBCCD89C3D38CC4D48CC4D48CC4D48CC4D48CC4D58CC4D48C
                C4D48CC4D48CC4D38CC4D58CC4D48CC4D48CC4D58CC4D48CC4D48CC4D489C0D1
                A8D3E09CCEDC3F96AD3192AA00728E006A86006B89006B89006B89006C89006B
                89006C89006B89006B89006C89006A8800698678B8CCD6EFF717829C00698600
                6B88006B89006B89006B89006C89006B89006C89006B89006C89006B88006A88
                17829C3591AA6BB3C4B4DAE691C6D78AC3D38CC4D48CC4D58CC4D58CC4D48CC4
                D38CC4D48CC4D48CC4D48CC4D38CC4D38CC4D58CC4D48CC4D58CC4D58CC4D58B
                C3D486C1D372B6C73393AA006A89006886006B89006C89006B89006B88006B89
                006C89006B89006B89006C89006B88006B880068850067842186A19ACCD9F7FF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAFAFF81BECF16809A00648300698600
                6C89006C89006B89006B89006C89006C89006B89006C89006B89006B89006C89
                006B890069862A8DA5A6D3DF9CCEDC68B0C351A2B64C9FB44EA1B54EA1B54EA1
                B64EA1B64EA1B54EA1B54EA1B54EA1B54EA1B54EA1B64EA1B54EA1B54EA1B54E
                A1B54EA1B64FA2B64CA1B40E7D97006382006784006A88006C89006B88006B89
                006B89006B89006C89006C89006B89006C89006B89006A86006B89ACD6E4FBFF
                FF3F99AF006583006B89006B89006C89006B89006B89006B88006B89006C8900
                6C89006B89006B89006986006483006C892F8FA751A3B74EA1B54EA1B54EA1B5
                4EA1B54EA1B54EA1B54EA1B54EA1B54EA1B54EA1B54EA1B54EA1B54EA1B54EA1
                B54EA1B54EA1B54C9FB55BA8BC82C0CEB3DAE678B8C900718D006988006B8900
                6B89006B89006B88006B89006C89006C89006C89006B88006C89006B89006B89
                006583006C89419CB0B6DDE7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9DCEDC2D8EA60069860065
                83006B89006B89006B89006C89006B89006C89006B89006B88006C89006B8900
                6B89006C89006B89006886057893BAE0E993C8D601748F006180006281006382
                0063820063810063820063810063810063820062820064820063820062820063
                82006482006382006382006281006282006382006885006C89006B89006B8900
                6C89006B89006C89006C88006B89006B89006B89006B88006B89006A88006483
                3F99AFE8F9FFF6FFFFADD7E201718E006884006B89006B89006C89006C89006B
                89006C89006B89006B89006B89006B89006C89006B89006A8800648300628100
                6382006282006382006382006282006281006282006282006482006382006282
                0063820062820063810063820063820063820061800065833995ACD3ECF561AB
                BF006784006B88006B89006B89006B89006B89006B89006C89006B89006C8900
                6C89006C89006C89006B89006A860063820475925FABBDD4EEF5FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7E6EF459CB300718C
                006483006986006C89006B89006B89006B89006C89006C89006C89006B89006C
                89006B88006B89006B89006B880069860063831E869FE4F7FD439AB000628100
                6988006A88006A88006B88006A88006B88006B88006A88006B88006A88006B88
                006B88006A88006B86006B88006A88006A88006B88006B88006A88006A86006A
                88006B88006A88006A88006B88006A88006B88006A88006A88006A8800688500
                67850068853793ACDDF3FAC1E5EE71B5C7FCFFFF8DC6D601738E006784006785
                006986006A88006A88006A88006B88006A86006B88006A88006B88006A88006B
                88006B88006B88006A88006A88006A88006B88006B88006A88006B88006B8800
                6A88006A88006B88006B88006A88006A88006A88006A88006B88006A88006583
                006B88B2DCE6A1D0DF016482006784006988006B89006B88006B89006C89006B
                89006B89006B89006B89006B89006B89006B89006B88006C8900678400658414
                819B84C0D0F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE6F8FD71B5C607
                7A95006584006985006B89006B89006B89006B89006C89006B89006B88006B89
                006C89006B89006B89006B89006A8500658300688500728E18839D67AFC3E9FA
                FF9FD0DE15819B006D8B006A8600698600688600688600698600688600698500
                6886006986006886006886006986006986006886006885006986006986006986
                006986006986006886006886006886006986006886006986006986006886006A
                86006D8A00728F18849D79BACBEAFAFFD1EDF5288DA5006D8B75BAC9F7FFFFBA
                DFE9439CB207799400708C006A88006886006986006886006886006986006986
                0068860069860068850068860068860068860069860068860068860069860069
                8600698600698600688600698600688600698600698600688600688600688600
                6985006B8800738D479DB3DFF5FBBADFE93392A8097A94006C8A006584006885
                006A88006C89006B89006B89006C89006C89006B89006B89006B89006C89006B
                89006C89006A88006584006B892F8EA7AFD8E2FFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9FFFF96CB
                D91E859E006986006885006B88006C89006B89006B89006C88006B89006B8900
                6B89006B88006B88006B89006B88006584006382006D8B1E869E51A3B789C3D1
                B5DDE78DC5D54EA2B88CC8DAACD7E470B4C65BAABD63AEC065AFC065AFC065AF
                C065AFC065AFBF65AFC065AFC065AFBF65AFC065AFBF65AFC065AFBF65AFC065
                AFBF65AFBF65AFC065AFC065AFBF65AFBF65AFC065AFC065AFC065AFBF65AFC0
                65AFC064AFC062AEBF72B6C79BCDDCCCE8F1CBE9F271BACD047C9C0067850069
                85006A8C3095B3AAD8E5D7F0F7BBDEE986C1D165AEC163ADBF65AFBF65AFC065
                AFC065AFC065AFC065AFC065AFC065AFBF65AFC065AFC065AFC065AFBF65AFBF
                65AFC065AFBF65AFC065AFC065AFBF65AFC065AFC065AFBF65AFBF65AFBF65AF
                C065AFC065AFC060ACBE61ACBF8BC4D4ADD9E764B0C564AEC0ACD7E2A8D5E170
                B5C63795AC097A95006784006482006886006C88006C89006B89006B89006B89
                006C89006B88006B89006B89006B89006C89006A8600678400718C51A3B8CEEC
                F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                C3E4ED469CB2006B89006985006A88006B89006C89006B89006C89006C89006B
                88006B89006B88006B89006C8900698600628000678512819A50A3B682BECFA4
                D3DF9ECFDD5FABBE12809A006A88006782006C862691AF64B7CF8BCCE09DD6E8
                A1D8E99FD8E89FD8E89FD8E89FD8E79FD8E89FD8E89FD8E89FD8E89FD8E89FD8
                E89FD8E89FD8E89FD8E89FD8E89FD8E89FD8E89FD8E89FD8E89FD8E89FD8E89F
                D8E89FD8E89FD8E89FD8E8A1D9E896D3E582C7DC63B5CD2D97B600789B006780
                245F5D3061630D697A35605A09626F006C8C0F86A848A6C171BDD48BCDE09DD6
                E8A1D8E89FD8E89FD8E89FD8E89FD8E89FD8E89FD8E89FD8E89FD8E79FD8E89F
                D8E89FD8E89FD8E89FD8E89FD8E89FD8E89FD8E79FD8E89FD8E89FD8E89FD8E8
                9FD8E89FD8E89FD8E89FD8E8A2D9E899D4E67BC4D944A5C10E7C9A0067810068
                8500718D3392AA83C0D0AAD6E196CBD96BB2C43592AA00718D00628100678300
                6B88006C89006B89006B89006B89006B89006B88006B89006C89006C89006B88
                006A860067830D7C9783BFCFEEFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFE7F8FE78BAC9077994006582006A88006B89006B89006B88006B89006C89
                006C89006B88006B89006C89006A8800678400648200738F3995AC7CBCCC9CCE
                DCA2D0DE75B8C8278BA3006A89006583006986006C8A0B687B5D58373F5A4420
                5C5A155B5C145B5B145A5B145A5B145A5B145B5B155A5A145B5B155A5B145B5B
                145A5B145A5B145A5B145B5B145A5B145A5B145A5B145A5B145A5B145A5B145A
                5B145A5B145A5B145A5B155B5B145B5B155A5B145A5B155B5B165C5C195C5D29
                5C54465B426D57259D4C0062593D1A657191510F8A510E595833355C4C205C5B
                175C5D165B5C145B5B155A5B145B5B145A5B145A5B155A5B145A5B145B5B155A
                5B145A5A145B5B145A5B145B5B145B5B145A5B145A5B155B5B145A5A145A5B14
                5A5B145B5B155A5B145A5B145B5B145B5B145A5B145B5B155B5B185C5C2A5B51
                5458383A615B006C88006A880067850064830075914FA2B692C8D6A4D1DF93C8
                D762ACBF18829C006986006382006986006C89006B88006B88006C89006B8900
                6C88006B89006C89006B88006B880068850068853693AAB4DCE6FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFD1ECF33692AA006584006884006B89006C89006B89006B8800
                6B88006B88006C89006A86006B88006986006785006C8A2B8DA575B7C9B7DEE9
                E5F8FE96CBD73B93AA00728F006281006784006B88006C89006B89006C8C1068
                79945001AE4A009E4E00964F00974F00974F00974F00974F00974F00994F0097
                4F00995000974F00974F00994F00974F00974F00994F00995000994F00974F00
                974F00974F00994F00974F00994F00994F00974F00974F00974F00974F009950
                00974F00994F00A44E00AE4A00AD4A00A84A005C5A401767748E510FAC4A00AD
                4A00AA4B009E4F00974F00974F00974F00974F00995000974F00974F00974F00
                994F00974F00974F00994F00974F00974F00974F00974F00974F00994F00974F
                00994F00994F00994F00974F00995000995000974F00975000974F00974F0097
                4F009A4F00A64B00AD4B00525C46006C8B006C8A006B89006B89006986006382
                00658318829C58A7BCC0E2EDD6EFF79ACCD956A5BA087B950068840067850069
                88006A88006B89006B88006B89006C89006B89006B88006C89006B8800648203
                748F8AC4D3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF95C9D7016786006785006B89006B89006B
                89006B88006C89006B89006A88006986006986006C8A17829C65AEC0A8D5E1A4
                D1DF65AEC39BCDD9FFFFFF2B8DA5005B7B006986006B89006B89006C89006B89
                006C89006D8C0F687A8D5108A74B00A64B00A84B00A74B00A74B00A74A00A74B
                00A74B00A74A00A74B00A74A00A74A00A74A00A74A00A74A00A74A00A74A00A7
                4A00A74A00A84B00A74A00A74B00A84B00A74A00A74A00A84B00A74B00A74B00
                A74A00A74A00A74B00A74B00A64A00A54B00A44B00A44B00A54B005C5A411767
                748C5210A64C00A44B00A54C00A64B00A74B00A74A00A74A00A74B00A74A00A7
                4B00A74B00A74A00A74B00A74A00A74B00A74B00A74B00A74A00A74B00A74A00
                A74B00A74A00A74B00A74A00A74B00A74B00A74A00A84B00A84B00A74A00A74B
                00A74A00A74B00A74A00A84B00A64A00A44C004F5F49006C8B006C8A006C8900
                6C89006B89006C89006B88006483005D7D81C0D0E4F7FB71B5C688C1D1B0D9E5
                93C8D73B96AD00738F006A88006886006986006C89006B89006C89006B88006B
                89006B89006B8900617E3794ACF5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF97CBD9016C8B006986
                006B88006C89006C89006B89006B88006B89006B89087B954B9FB597CCD9B4DC
                E785C1D0449CB314829B0061814FA2B5FEFFFF3291A8006382006B89006C8900
                6C89006C89006B89006C89006C8C0F687A8D5108A74C00A34C00A34B00A44C00
                A34B00A34B00A34B00A34C00A34B00A44C00A34B00A34B00A34B00A34B00A34C
                00A34B00A44C00A34B00A44C00A44C00A34C00A44B00A34B00A34B00A34B00A3
                4B00A34B00A34C00A44B00A34B00A34B00A34C00A34B00A34C00A44B00A44B00
                A64C005C5B411767758D5110A64A00A44C00A44C00A34B00A44C00A44C00A34B
                00A34B00A44C00A34B00A34B00A34B00A34B00A44C00A44B00A34C00A34B00A3
                4C00A44C00A34B00A44C00A34B00A34B00A34B00A44C00A34B00A44C00A44C00
                A34B00A44C00A34B00A44C00A34B00A34B00A44C00A54B00A44C004E5D49006B
                8B006B8A006C89006B88006C89006B89006C89006B8800658483C1D1BEE1EA04
                789200718D288CA45FABBEA3D1DEB3DCE676B7C9268AA300718D006A89006B89
                006B89006B89006B89006C89006B890063833E97AFF4FFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF99
                CBD9016D8B006986006B88006B89006B89006C89006B890069862F8FA8C6E6EF
                A7D3E054A4BA15819B006F8C006885006784005D7C58A8BAFEFFFF3392A80063
                82006B89006B89006C89006B89006C89006C89006D8C0F687A8C5108A64B00A4
                4C00A34B00A44C00A44C00A34B00A34B00A44C00A34B00A44C00A34B00A34C00
                A34C00A34B00A34C00A44C00A34B00A44C00A34C00A34C00A34B00A34C00A44C
                00A34B00A34B00A34B00A34B00A34C00A34B00A44C00A34C00A34C00A34B00A3
                4B00A44C00A44B00A64B005C5B411767748D5210A64B00A34B00A34B00A44C00
                A44C00A44C00A34B00A34C00A44C00A44C00A34B00A44C00A34B00A34C00A34B
                00A34B00A34B00A34B00A34B00A34B00A44C00A44C00A34B00A34B00A44C00A4
                4C00A34B00A34B00A34B00A44C00A44C00A44C00A34B00A44C00A44B00A54C00
                A44B004F5D49006C8B006B8A006B89006C89006B89006B89006C89006A880065
                8484C1D1C4E5ED0A7B94006481006784006A880176912E8FA67BBACBD4EEF6A5
                D4DF016A89006A88006B89006C89006C89006B89006B890065833F99AFF5FFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFF99CCD9016C8B006A86006C89006B89006B89006C89006A8800
                688654A5BBE1F6FB1F869E006785006886006A86006A89006C8900607E58A7BA
                FEFFFF3392A8006382006B89006C89006B89006C89006B89006B89006D8C0F69
                7A8D5108A64C00A44C00A34B00A34B00A34B00A44C00A44C00A34B00A34B00A4
                4C00A44C00A34C00A44C00A34C00A34B00A44C00A34B00A34B00A34B00A44C00
                A34C00A34B00A34B00A34B00A44C00A34B00A44C00A34B00A34C00A44C00A44C
                00A44C00A34C00A34B00A44C00A44B00A64B005C5B411765748C5110A64B00A4
                4C00A34B00A34B00A34B00A44C00A34B00A44C00A34B00A34C00A34B00A34B00
                A34B00A44C00A44C00A34B00A44C00A34B00A44C00A34B00A34B00A34C00A44C
                00A44C00A44C00A44C00A44C00A34B00A44C00A44C00A44C00A34B00A44C00A4
                4C00A34B00A44C00A44C004E5D49006C8B006C8A006B89006B89006B89006B89
                006C89006B8800658484C1D1C4E5EE0C7C95006884006B89006A880069850068
                85006986A1D1DDE8FAFE016E8A006A86006B89006B89006B89006B89006B8900
                65833F99AFF5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF99CBD9016D8B006986006B89006B89006B
                89006B88006B8800698652A4BADCF2F91A849C006785006C89006B89006B8900
                6C8900607E58A7BAFEFFFF3392A7006382006C89006C89006C89006B89006C88
                006B89006C8C0F687A8D5108A64B00A44B00A34C00A34B00A34B00A44C00A34B
                00A44C00A34C00A34C00A34C00A44C00A34B00A44C00A44C00A34C00A34B00A4
                4C00A34B00A44C00A34B00A34B00A44C00A34C00A34B00A34B00A34B00A34B00
                A44C00A44C00A34B00A44C00A34B00A34B00A34C00A44B00A54B005C5A411765
                758D5110A64A00A34B00A34B00A44C00A44C00A34B00A34B00A34B00A44C00A3
                4C00A44C00A34B00A34B00A44C00A34C00A34B00A34C00A34B00A44C00A44C00
                A44C00A34B00A44C00A44C00A44C00A34C00A34B00A44C00A34B00A34B00A34B
                00A44C00A44C00A34B00A34B00A54B00A44B004E5D49006C8B006C8A006B8900
                6C89006B89006B89006B89006A8800658484C1D1C4E5EE0C7B95006784006B89
                006B89006C89006A880069859BCFDAE5F8FB016E8A006A86006C88006B89006C
                89006B89006C890065833F99AFF4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF99CBD8016D8A006A86
                006C89006C89006C89006B88006C8800698652A5BADCF2F91D859D006885006B
                89006C89006B89006C8800607E58A7BAFEFFFF3392A7006482006B89006C8900
                6C89006C89006C88006B89006C8C0F687A8D5208A74B00A34C00A34B00A34B00
                A34B00A44C00A44C00A34B00A34B00A34C00A34B00A44C00A34B00A34C00A34B
                00A44C00A34B00A34C00A44C00A34C00A34B00A44C00A34B00A44C00A34C00A4
                4C00A34C00A44C00A34B00A34C00A34B00A34C00A44C00A44C00A44C00A44B00
                A54B005C5B411767748D5110A64A00A34C00A44C00A34B00A34B00A34B00A44C
                00A34C00A44C00A44B00A34B00A44C00A44C00A34B00A44C00A44C00A34B00A3
                4C00A44C00A34B00A34B00A44C00A44C00A44C00A34B00A34C00A44C00A34C00
                A44C00A44C00A34B00A44C00A34B00A44C00A44C00A54B00A44C004F5F49006C
                8B006C8A006C89006B89006B89006B89006C89006A8800678384C1D1C4E5EE0C
                7B95006784006C89006C89006B88006B88006A869CCFDAE4F7FB016E8A006986
                006B88006B89006B89006B89006B890064833F99AFF4FFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF99
                CCD8016C8A006986006B89006B89006B89006C89006B8900688552A4BADCF2F9
                1D859D006986006B89006C89006C89006B8900607E58A7BAFEFFFF3392A80063
                82006C89006C89006B89006B89006C89006B89006C8C0F68798D5108A64B00A4
                4B00A44C00A34B00A44C00A44C00A44C00A34B00A44C00A44C00A34B00A44C00
                A44C00A34B00A44C00A44C00A44C00A34B00A34B00A44C00A34B00A34B00A44C
                00A44C00A34B00A44C00A44C00A44C00A34B00A44C00A44C00A34B00A34B00A3
                4B00A44C00A44B00A54B005C5B411765758C5210A64B00A44C00A34C00A34B00
                A44C00A34B00A34B00A44C00A34B00A44C00A44C00A34B00A34C00A34B00A34B
                00A44C00A44C00A34C00A34B00A34B00A44C00A34B00A34B00A34B00A34B00A3
                4B00A34C00A34B00A34C00A44C00A44C00A44C00A44C00A44C00A34B00A44B00
                A44C004F5D49006B8B006C8A006B89006C89006C89006C89006B89006B880065
                8384C1D1C4E5EE0C7C95006884006B89006B88006C89006B880069869CCFDAE4
                F8FB016E8A006A86006C89006B89006B89006B89006B890064823F99AFF4FFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFF99CCD9016C8B006986006B88006B89006C89006B89006B8800
                698652A4BADCF2F91D859D006886006B89006C89006C89006B8900607E58A7BA
                FEFFFF3393A8006381006C89006B89006C89006B89006C89006B89006C8C0F68
                798D5108A64B00A44B00A44C00A44C00A44C00A44C00A44C00A44C00A44B00A3
                4C00A34B00A44C00A34C00A34C00A44C00A44C00A44C00A34B00A34B00A44C00
                A34B00A44C00A44C00A34B00A34C00A44C00A44C00A44C00A44C00A34B00A34B
                00A34B00A34C00A44C00A34B00A44B00A64B005C5A411765758D5110A64B00A3
                4B00A44C00A44C00A34C00A44C00A34B00A44C00A34C00A44C00A34B00A44C00
                A44C00A44C00A44C00A44C00A44C00A44C00A44C00A34B00A34B00A44C00A44C
                00A34B00A44C00A34B00A34B00A44C00A34C00A34B00A34B00A34B00A34B00A3
                4B00A44C00A54B00A44C004F5D49006B8B006C8A006B89006C89006B89006B89
                006B89006B8800658484C1D1C4E5EE0C7B95006784006C89006B88006B89006B
                880069869CCFDAE4F8FB016E8A006986006C88006C89006B89006C89006B8900
                64833F99AFF5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF99CBD9016D8B006986006B89006B89006C
                89006B89006B8800688651A3B8DBF2F91D859D006886006B89006B89006B8900
                6B8900607E58A7BAFEFFFF3392A8006482006B89006B89006C89006B89006C89
                006B89006C8C0F68798C5108A64A00A34B00A34B00A34B00A34C00A34B00A34B
                00A44C00A34B00A44C00A34C00A34B00A44C00A34B00A44B00A44C00A34B00A4
                4C00A34B00A44C00A34B00A34B00A44C00A44C00A34B00A44C00A44C00A34B00
                A44C00A34B00A34B00A34C00A34C00A34B00A34C00A44B00A64B005C5A411765
                748D5210A74C00A44B00A34B00A44C00A44C00A44C00A44C00A34B00A34C00A3
                4B00A44C00A44C00A44C00A44C00A34B00A34B00A34B00A44C00A34C00A44C00
                A34B00A44C00A34B00A44C00A34B00A34B00A44C00A44C00A34C00A34B00A44C
                00A44C00A34C00A34B00A34C00A44B00A44B004E5F49006C8B006C8A006B8900
                6B88006B89006B89006C89006B8800658484C0D1C4E5EE0C7C95006884006C89
                006C89006B89006A88006A869CCFDAE4F7FB016E8A006A86006B89006C89006B
                89006C89006B890064833F99AFF4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF99CCD9016C8B006986
                006B89006C89006B89006C89006B8800688657A6BBDEF3F91D859D006986006C
                89006B89006B89006B8900607E58A7BAFEFFFF3392A8006381006B89006B8900
                6C89006B89006B89006B89006C8C0F687A8C5108A64B00A44C00A34B00A34B00
                A34B00A34B00A44C00A44C00A34B00A44C00A34C00A44C00A34C00A34B00A34B
                00A44C00A44C00A34B00A34B00A44C00A44C00A34B00A34B00A34B00A34B00A4
                4C00A44C00A44C00A34B00A44C00A44C00A44C00A34C00A44C00A44B00A44B00
                A64C005C5A411767748C5110A64B00A44C00A34B00A34B00A44C00A44C00A34B
                00A44C00A34B00A44C00A44C00A34B00A34B00A34B00A34B00A34B00A34B00A4
                4C00A34B00A34B00A44C00A34B00A34C00A34B00A34C00A34B00A34B00A44C00
                A34B00A44C00A44C00A34B00A44C00A44C00A34B00A44B00A44B004E5D49006C
                8B006B8A006B89006B89006B89006B89006B89006A8800658484C1D1C4E5EE0C
                7C95006784006B89006C89006B88006A880069869CCFDAE2F7FB016D89006A86
                006B89006B89006B89006B88006B890065833F99AFF4FFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF99
                CBD9016D8B006986006C89006C89006B89006C89006B8800688575B8C8E8F9FE
                1B859D006985006B88006C89006B89006B8900607E58A7BAFEFFFF3392A80063
                81006C89006C89006C89006B89006B89006B89006C8C0E687A8D5108A74A00A4
                4C00A34B00A34B00A34B00A34B00A44C00A44C00A34B00A44C00A44C00A34B00
                A34C00A34B00A44C00A34B00A34C00A44C00A44C00A44C00A34B00A34C00A44C
                00A34B00A34B00A34B00A44C00A44C00A44C00A34B00A44C00A34B00A34B00A3
                4B00A44C00A44B00A54B005C5B411767758D5110A64B00A44C00A34B00A34B00
                A34B00A44C00A44C00A44C00A34B00A44C00A44C00A34B00A34B00A34B00A44C
                00A44C00A44C00A44C00A34B00A44C00A34C00A34B00A44C00A34B00A34B00A4
                4C00A44C00A34B00A34C00A34B00A34C00A34B00A34C00A44C00A34B00A54B00
                A44B004E5F49006C8B006C8A006B89006B88006B89006C89006B89006A880065
                8384C1D1C4E5EE0C7B95006884006C89006C89006B88006B880069869BCFDAE7
                F9FE017491006A86006C89006B88006B89006B89006B890065833F99AFF5FFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFF99CBD8016C8A006986006C89006B89006B89006B8800678500
                6C8ABEE1ECF1FFFF19839B006886006C89006B89006C89006C8900607E58A7BA
                FEFFFF3393A8006482006B89006B88006B88006B89006B89006C89006D8C0F69
                7A8C5208A64B00A44B00A34C00A44C00A34B00A44C00A34B00A44C00A44C00A3
                4C00A44C00A44C00A44C00A34C00A34B00A34B00A34C00A34B00A34B00A34B00
                A44C00A44B00A34B00A34B00A44C00A44C00A34B00A34B00A34C00A34C00A44C
                00A44C00A34B00A44B00A34C00A44B00A64C005C5B411765748C5110A64C00A3
                4B00A34B00A44C00A44C00A44C00A34B00A34B00A44B00A34B00A34B00A34B00
                A44C00A34B00A34B00A34B00A34B00A44C00A44C00A34B00A44C00A34B00A34B
                00A44C00A34B00A34C00A34B00A34B00A44C00A44C00A44C00A44C00A34B00A3
                4C00A34C00A44C00A54C004F5D49006C8B006C8A006C89006C89006B89006B88
                006B89006A8800658484C1D1C4E5EE0C7C95006783006B88006B89006B89006A
                88006A8696CDD8FFFFFF499EB5006482006A86006B88006B89006B89006B8900
                64833F99AFF4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF96CBD8016A890067840069860068860068
                85006483006D8C71B4C7FEFFFFF2FFFF17829B006986006B89006B89006C8900
                6C8900607E58A7BAFEFFFF3393A8006382006B89006C89006B89006B89006C89
                006B89006C8C0F687A8D5108A74C00A34B00A44C00A34B00A34B00A34B00A44C
                00A44C00A34B00A34B00A34B00A34C00A44C00A44C00A44C00A44C00A44C00A3
                4C00A34B00A34B00A34B00A34C00A44C00A44C00A34B00A34B00A44C00A34B00
                A34B00A44C00A44C00A34B00A34C00A34C00A34B00A44B00A54B005C5A401765
                748D5210A64B00A44C00A44C00A34C00A44C00A44C00A34B00A34B00A34C00A4
                4C00A34C00A44C00A34B00A44C00A44C00A44C00A34B00A44C00A34B00A34B00
                A44C00A34C00A34B00A34B00A44C00A34B00A44C00A34B00A44C00A34B00A34C
                00A34B00A44C00A44C00A34B00A44B00A44B004E5F49006C8B006C8A006B8900
                6B89006C89006C89006B89006A8800658484C1D1C4E5EE0C7B95006784006C89
                006B89006B89006A8800698691C8D5FFFFFFCFEDF32389A20064830068840068
                85006A860069860062813B96AEF4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9FCFDD01749200728E
                077A950F7E9A2B8EA663ACBFB5DDE7FFFFFFFFFFFFEDFBFF17839B006986006C
                89006B89006C89006B8900607E58A7BAFEFFFF3392A8006382006B89006B8900
                6C89006B89006C89006B89006C8C0F687A8D5108A64B00A44C00A34B00A34B00
                A44C00A44C00A34B00A44C00A34B00A34B00A44C00A34B00A44C00A34B00A34B
                00A44C00A34B00A34C00A44C00A44C00A34B00A44C00A34B00A44C00A44C00A3
                4C00A34B00A44C00A34B00A34B00A44C00A34B00A34B00A44C00A34B00A44B00
                A64B005C5B411767748D5110A64A00A34B00A44C00A34B00A34B00A34B00A44C
                00A44C00A44C00A34B00A44C00A34B00A34C00A44C00A34B00A34C00A44C00A4
                4C00A34B00A34B00A44C00A34B00A34B00A34B00A34B00A34B00A44C00A34B00
                A34B00A44C00A34B00A34B00A34B00A44C00A34B00A54C00A44B004E5D49006C
                8B006C8A006B89006C89006B88006B89006B89006A8800658384C1D1C4E5EE0C
                7C95006884006C89006C89006B89006B88006A8690C8D5FFFFFFFFFFFFE4F6FD
                8CC4D3449BB01C849E0B7C97047894006C8B4A9EB5F6FFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA
                FFFFDDF2F8DCF1F8E1F6FAE7F8FEF6FFFFFFFFFFFFFFFFFFFFFFFFFFFFEDFBFF
                17829B006886006B89006C89006C89006B8900607E58A7BAFEFFFF3392A80063
                82006B88006C89006B89006B89006C89006C89006C8C0F68798D5208A64B00A4
                4C00A44C00A44C00A44C00A34B00A34B00A44C00A34B00A44C00A34B00A34B00
                A44C00A34C00A34B00A34C00A44C00A44C00A34C00A34C00A34B00A44C00A44C
                00A34B00A44C00A44C00A34C00A34B00A34B00A34C00A44C00A34B00A34C00A4
                4C00A44C00A54C00A64C005C5A411767758C5110A64B00A44C00A44C00A34B00
                A44C00A34B00A34B00A34B00A44C00A34B00A34B00A44C00A34B00A44C00A34B
                00A44C00A34C00A34B00A44C00A34B00A34C00A34C00A44C00A34B00A44C00A4
                4C00A44C00A34B00A34B00A44C00A34B00A44C00A34B00A34B00A44C00A44B00
                A44C004E5D49006B8B006B8A006B89006C89006C89006B89006C89006B880065
                8384C1D1C4E5EE0C7B95006784006C89006C89006B89006B88006A8690C8D5FF
                FFFFFFFFFFFFFFFFFFFFFFFEFFFFEEFBFFE4F7FDDFF5FAD8F0F7E9FAFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFEDFBFF17839B006986006B89006C89006B89006B8900607E58A8BA
                FEFFFF3393A8006382006B89006C89006B89006B89006B89006B89006C8C0F68
                7A8D5108A64B00A44C00A44C00A34B00A34C00A34B00A34B00A34B00A44C00A4
                4C00A34C00A34B00A44C00A34C00A34B00A44C00A34C00A44C00A34C00A34C00
                A44C00A34C00A44C00A34B00A34B00A44C00A34B00A34B00A44C00A34B00A44C
                00A44C00A44C00A34C00A34B00A44B00A64C005C5A401767748D5210A74B00A4
                4C00A44C00A34B00A34B00A34B00A34B00A34B00A44C00A34B00A34B00A44C00
                A34B00A44C00A44C00A34B00A44C00A44C00A34C00A44C00A34B00A44C00A34B
                00A44C00A44C00A34B00A44C00A34B00A44C00A44C00A34B00A34C00A34B00A3
                4B00A44C00A54C00A44C004E5D49006C8B006B8A006C89006B89006B89006C89
                006C89006B8800658484C1D1C4E5ED0C7B94006784006C89006B89006B89006B
                8800698690C8D5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFEDFBFF17839B006986006B88006B89006C8900
                6B8900607E58A8BAFEFFFF3392A8006382006B89006B89006B88006B88006C89
                006B88006C8C0F687A8D5108A64B00A44C00A44C00A34B00A34C00A44C00A34B
                00A44C00A34C00A34B00A34B00A34B00A44C00A34B00A34C00A34B00A44C00A3
                4B00A34C00A44C00A44C00A34C00A44C00A34B00A44C00A34B00A44C00A34C00
                A44C00A34B00A34B00A34B00A44C00A34B00A44C00A44B00A64B005C5A411767
                748C5110A64B00A44B00A34C00A44C00A34B00A44C00A44C00A34B00A44C00A3
                4B00A34B00A34B00A34C00A34B00A44C00A44C00A34C00A34C00A34B00A34B00
                A44C00A34B00A44C00A34C00A34B00A34B00A44C00A34B00A44C00A44C00A34B
                00A34B00A34B00A34B00A44C00A54B00A44B004E5F49006C8A006B89006B8900
                6B89006B89006C89006B89006A8800658484C1D1C4E5EE0C7B95006884006C89
                006C89006B89006A88006A8690C8D5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDFBFF17829B006885006B
                88006B89006B89006C8900607E58A7BAFEFFFF3393A8006382006B89006B8800
                6C89006B89006B88006B89006C8C0F687A8C5108A64A00A34B00A34B00A34B00
                A34B00A44C00A34B00A34B00A44C00A44C00A34B00A34C00A34C00A34B00A34B
                00A44C00A34B00A34B00A34B00A44C00A34B00A44C00A34B00A34B00A34B00A3
                4B00A44B00A34B00A44C00A34B00A44C00A34B00A34C00A44C00A34B00A44B00
                A54B005C5A411767748D5210A64A00A44B00A34B00A34B00A44C00A34B00A44C
                00A34B00A34B00A34B00A34B00A34B00A34C00A34B00A34B00A34B00A44C00A3
                4B00A34B00A34B00A34C00A34B00A34B00A34B00A34B00A34C00A44C00A44C00
                A44B00A34B00A34B00A44C00A34B00A34B00A44C00A54B00A44B004E5F48006C
                8B006C8A006B89006C89006B89006B89006B89006A8800658484C0D1C4E5EE0C
                7C95006784006B89006B89006B89006B8800698690C8D5FFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFECFAFF
                107E97006483006784006785006885006884005B7B53A5B7FEFFFF3393A80063
                82006C89006C88006C89006B88006C89006C89006D8C0F697A8C5108A64A00A3
                4C00A44C00A34C00A44C00A44C00A44C00A44C00A34B00A34B00A44C00A34C00
                A44C00A44C00A34C00A34B00A34B00A34C00A34C00A34B00A44C00A34B00A44C
                00A34B00A44C00A44C00A34B00A44C00A34B00A44C00A34C00A34C00A34B00A3
                4B00A34B00A44B00A54B005C5A411765758D5210A64B00A34B00A44C00A34C00
                A34B00A44C00A34B00A44C00A44C00A34B00A44C00A44C00A44C00A44C00A34B
                00A44C00A34B00A44C00A34B00A34B00A34B00A44C00A44C00A34B00A44C00A3
                4B00A34C00A34B00A34B00A34B00A34B00A34B00A44C00A34B00A44C00A54C00
                A44C004F5F48006C8A006C8A006B89006C89006C89006C89006B89006A880065
                8484C1D1C1E4ED0578920063810068850067850068850067840065838CC6D4FF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFF5FFFF4CA1B5298BA42A8DA72A8DA62B8EA62A8DA620849E81BECE
                FFFFFF3392A8006382006B89006B89006B89006B89006B89006C89006D8C0E68
                7A8D5108A74B00A34B00A44C00A34B00A34C00A44C00A44C00A34C00A34B00A3
                4B00A44C00A44C00A34B00A34C00A34B00A44C00A34B00A34B00A34B00A34B00
                A34C00A34B00A44C00A34B00A44C00A34B00A34C00A34B00A34C00A34B00A34B
                00A34B00A44C00A34B00A44C00A44C00A64C005C5A411767758D5110A64A00A4
                4C00A34B00A44C00A44C00A34B00A34B00A34B00A44C00A34B00A34B00A34B00
                A34B00A44C00A44C00A34B00A34B00A44C00A34B00A34C00A34B00A34B00A34B
                00A34B00A34B00A34B00A34B00A44C00A44C00A34B00A44C00A44C00A44C00A4
                4C00A34C00A44B00A44B004E5D49006C8B006C8A006B89006B89006B89006B89
                006C89006B8800648482C0D0D5EFF6439BB2278AA32B8EA62A8DA62A8EA62A8C
                A5298CA5ABD7E2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7FFFFF1FFFFF2FFFFF2FFFFF2FFFFF2
                FFFFEEFEFFFEFFFFF2FFFF3392A8006382006B88006C89006C89006C89006C89
                006B89006C8C0F687A8C5108A64B00A34B00A44C00A34B00A44C00A34B00A34B
                00A44C00A34B00A44C00A34B00A34B00A34B00A44C00A34B00A44C00A44C00A3
                4B00A44C00A34B00A34C00A34B00A44C00A34B00A44C00A34B00A34C00A34B00
                A44C00A34B00A34C00A44C00A34B00A34B00A44C00A44B00A64B005C5B411767
                748D5110A64B00A44C00A44C00A34B00A44C00A44C00A34B00A34B00A44C00A3
                4B00A44C00A44C00A34B00A34B00A44C00A34C00A34B00A34B00A44C00A44C00
                A34B00A44C00A34B00A34B00A34B00A34B00A34B00A34B00A44C00A34B00A34B
                00A34B00A34B00A34B00A44C00A54B00A44C004E5D49006B8B006C8A006C8900
                6C89006B89006C89006C89006B880064847CBCCDFEFFFFF5FFFFF0FEFFF2FFFF
                F2FFFFF2FFFFF1FFFFF1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFEFF3392A8006382006C89006B8900
                6B89006B89006C88006B89006C8C0F687A8D5108A74B00A34B00A34B00A44C00
                A44C00A34C00A34B00A44C00A34B00A34C00A34B00A34B00A34C00A34B00A44C
                00A44C00A44C00A44C00A44C00A34B00A44C00A34B00A44C00A34B00A44C00A4
                4C00A44C00A34B00A44C00A34B00A34B00A34B00A34B00A44C00A34C00A44C00
                A64C005C5A401767748C5110A64B00A44C00A44C00A34C00A34B00A34B00A34B
                00A34B00A34B00A44C00A34B00A34C00A44C00A34C00A34B00A44C00A34B00A3
                4B00A34C00A34C00A34B00A44C00A44C00A44C00A44C00A44C00A34B00A44C00
                A34B00A34B00A34B00A34C00A44C00A44C00A34B00A44B00A44B004F5D48006C
                8A006C8A006B89006C89006B89006B89006B89006A880065847BBDCDFEFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0FEFF3392A80063
                82006C89006B89006C89006C89006B89006C89006C8C0F697A8C5108A64B00A4
                4B00A44C00A44C00A44C00A34B00A44C00A34C00A34B00A34C00A34B00A44C00
                A44C00A34C00A34B00A34B00A34B00A34B00A34C00A44C00A34B00A44C00A44C
                00A44C00A44C00A44C00A44C00A44C00A44C00A34B00A44C00A34C00A34B00A4
                4C00A34C00A44C00A64B005C5A411867758D5210A74B00A44C00A44C00A34B00
                A44C00A34B00A44C00A34B00A34B00A44C00A34C00A44C00A34B00A44C00A34B
                00A44C00A44C00A44C00A44C00A34C00A44C00A34C00A44C00A34C00A44C00A4
                4C00A34C00A34B00A44C00A44C00A34B00A44C00A34C00A44B00A44B00A54C00
                A44C004F5F49006B8B006C8A006C89006B89006C89006B89006C89006A880064
                847BBCCDFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                F0FEFF3392A8006381006C89006B89006C89006C89006B89006B89006C8C0E68
                7A8D5108A74C00A44B00A44C00A44C00A34B00A34B00A44C00A34C00A34B00A3
                4C00A34B00A44C00A44C00A44C00A44C00A34B00A34B00A44C00A34C00A44C00
                A34B00A44C00A44C00A34B00A44C00A44C00A44C00A44C00A34B00A44C00A34C
                00A34C00A44C00A44C00A34B00A54C00A54B005D5A401765748D5210A64B00A3
                4B00A34B00A34B00A34B00A44C00A44C00A34B00A34B00A34C00A34B00A44C00
                A34B00A44C00A34B00A34B00A34C00A34B00A44C00A34C00A44C00A34B00A34C
                00A34C00A44C00A34B00A44C00A44B00A34C00A34B00A34B00A44C00A44C00A3
                4B00A44C00A54C00A44B004E5D49006C8B006C8A006C89006B89006C89006B89
                006C89006A880064847BBBCDFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFF0FEFF3293A8006382006A89006B88006A89006B89006B88
                006C89006C8C0F68798D5208A64B00A34B00A44C00A34B00A44C00A44C00A34B
                00A34B00A44B00A34B00A44C00A34C00A34B00A44C00A34B00A34B00A44C00A3
                4B00A34B00A34B00A44C00A34C00A34B00A44C00A44C00A34B00A34B00A44C00
                A44C00A34B00A44C00A34B00A34B00A44C00A44B00A44B00A64C00595B441765
                748E510FA64A00A44C00A34B00A34B00A44C00A34B00A34B00A44C00A34B00A4
                4B00A44C00A34B00A34B00A44C00A34B00A34B00A44B00A34B00A44C00A44B00
                A34B00A44C00A34B00A44C00A34B00A34B00A44C00A34B00A44B00A34B00A34C
                00A34C00A34B00A44C00A34C00A64B00A44B004F5D49006B8B006B8A006A8900
                6B88006A88006B89006B89006B880065837ABBCDFEFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFEFF2C8EA5005D7D00678400688500
                6784006884006784006985006C8C0F687A8D5108A64B00A44B00A34B00A34B00
                A34C00A34B00A44C00A44C00A34B00A44C00A34C00A44C00A34B00A34B00A44C
                00A34B00A34B00A44C00A34B00A34B00A34B00A34B00A44C00A44C00A34B00A4
                4C00A34B00A44C00A34B00A44C00A34B00A34B00A34C00A34C00A34B00A54B00
                A74B00485F520F687A895311A74B00A34B00A44C00A34B00A34B00A44C00A44C
                00A44C00A34B00A34B00A44C00A34B00A34B00A44C00A34B00A34B00A34C00A4
                4C00A44C00A34B00A44C00A34B00A34B00A44C00A34B00A34B00A34C00A34B00
                A34B00A44C00A44C00A44C00A44C00A34B00A34B00A54B00A44B004E5D49006C
                8B006B8900678400688500678400678400678400658300608076BACBFEFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA2D1DC7BBA
                C980BECD80BECD80BECD80BECD83C0CF5AA7BC0074930B65788C5108A74B00A3
                4B00A34C00A34C00A34C00A44C00A34B00A34C00A44C00A34B00A44C00A34B00
                A34B00A34B00A44B00A34C00A44C00A44C00A34C00A44C00A34B00A34B00A34C
                00A44C00A34B00A34B00A34B00A44C00A44C00A34B00A44C00A44C00A34C00A4
                4C00A34B00A74B009D4E001E6468006B89625A36AC4A00A44C00A44C00A44C00
                A44C00A44C00A34B00A34B00A34B00A44C00A44C00A44C00A44C00A44C00A34B
                00A34B00A34C00A44C00A34B00A34B00A34B00A34B00A44C00A34B00A34C00A4
                4C00A44C00A44C00A34B00A34B00A34B00A44C00A34B00A34B00A34B00A54B00
                A44C004F5F4900678519859E80BFCD81BFCD80BECD80BECD80BECD80BDCC7CBB
                C9C6E7EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC3E2EC087B9A0563
                758C5108A64B00A34C00A34B00A44C00A34B00A34B00A34C00A44C00A44B00A3
                4C00A34B00A34B00A34B00A34B00A44C00A44C00A34B00A34B00A44C00A34B00
                A34C00A44B00A44C00A44C00A44C00A44C00A34B00A44C00A34B00A34B00A44C
                00A34B00A34B00A34B00A64B00AB4A005F593500678300698D1A636A955006AB
                4A00A34B00A34B00A34B00A44C00A44C00A34B00A34B00A44C00A34B00A44C00
                A44C00A44C00A34B00A44C00A34B00A44C00A34B00A34B00A34C00A44C00A34B
                00A34B00A44C00A44C00A34B00A44C00A34B00A44C00A44C00A34B00A34B00A3
                4B00A34C00A44C00A44C004F5F49006181439DB2FEFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                C8E6EE087C9A0563758B5108A64B00A44B00A44B00A34C00A34B00A44C00A34C
                00A44C00A34B00A44C00A34C00A34B00A34B00A34C00A34B00A44C00A34B00A4
                4C00A34B00A34B00A44C00A44B00A34C00A44C00A44C00A34C00A44C00A44C00
                A34B00A44C00A44C00A34B00A44C00A84A00A84B007256240063750C819F3695
                AE006C8D325C569C4F00AB4A00A54A00A44C00A44C00A44C00A34C00A34B00A3
                4B00A34B00A44C00A44C00A34B00A34C00A44C00A34B00A44C00A34B00A34B00
                A34B00A44C00A44C00A34B00A34B00A34B00A34B00A44C00A44C00A34B00A44C
                00A34B00A44C00A34B00A34B00A44B00A44B004E5D49006182469FB3FEFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFC6E5EE087C9B0562758B5108A64C00A44C00A34B00A44C00
                A44C00A34B00A34B00A44C00A44C00A34B00A34B00A44C00A34B00A34B00A34B
                00A34B00A34B00A34B00A44C00A34B00A34B00A34B00A44C00A44C00A44C00A4
                4C00A34B00A34B00A44C00A34B00A54C00AB4A00AD4B00994F00595935006075
                0C809EB2DCE6F5FFFF5CABBF006A8C245D5A7E5317A64B00AD4A00A84B00A54C
                00A34B00A44C00A34B00A34B00A34B00A44C00A34C00A44C00A34B00A34B00A4
                4C00A34B00A44C00A44C00A44C00A34B00A34B00A34C00A34C00A34B00A44C00
                A34B00A44C00A34B00A44C00A34C00A34B00A34B00A44B00A44B004F5F490061
                82449EB3FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC6E5EE087C9B086374955000B24900AE
                4A00AE4A00AE4A00AE4900AE4A00AE4900AE4900AE4A00AE4A00AE4A00AE4900
                AE4900AE4A00AE4900AE4A00AE4900AE4A00AE4900AE4900AE4A00AE4900AE4A
                00AE4A00AE4900AE4900AE4900AE4A00AE4900AF4A00A44C0086520F5C572F1C
                5B5B0067853194AFC2E4EDFFFFFFFFFFFFFBFFFF81BECF047B9A005F743B5947
                725420964F03AC4B00AF4900AF4900AE4A00AE4900AE4A00AE4900AE4900AE49
                00AE4A00AE4A00AE4900AE4A00AE4900AE4900AE4A00AE4A00AE4900AE4A00AE
                4A00AE4A00AE4A00AE4A00AE4900AE4900AE4900AE4A00AE4900AE4A00AF4900
                AF4A00545C44006182449DB3FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC4E4ED0579950061
                7A3E5B4A4C593F4A593F4A593F4A593F4B59404A583F4B59404B59404A583F4A
                59404B593F4B593F4B593F4A593F4A593F4B583F4B583F4A583F4A59404B5940
                4A593F4B593F4A59404B59404B593F4B58404B59404B5940485941385A47225C
                5904606D00708E2F95B291C9D8EFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC8
                E7F061AFC50E83A4006580145D622D5B4F415A434B59404A59404B59404B5940
                4B59404B593F4B593F4A59404B59404B59404A59404B59404B59404B583F4A59
                3F4B593F4A583F4A59404B59404A583F4A59404B59404B593F4B59404A59404B
                593F4B59404B59404B59401D6268005D7D419CB0FEFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                D0EAF33391A8147E9A1984A41A84A51984A41984A41985A51984A51984A51984
                A51985A51984A41984A51984A51985A51984A51984A51984A51984A51984A519
                84A51984A51984A51984A51984A51984A51984A51984A51984A51985A51984A5
                1C86A72491B247A6C181C4D8BBE2ECF0FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFDAF2F9A3D5E462B4CC329CBA1D8BAC1984A519
                84A51984A51984A51984A51984A51984A41984A51984A51984A51984A51984A4
                1984A51984A41984A51984A51984A51984A51984A41984A41984A51984A51984
                A51984A51984A51984A41984A51984A51985A51984A10F7A9664AEC0FEFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFBFFFFF8FFFFF7FFFFF6FFFFF6FFFFF6FFFFF6FFFF
                F6FFFFF6FFFFF6FFFFF6FFFFF6FFFFF6FFFFF6FFFFF6FFFFF6FFFFF6FFFFF6FF
                FFF6FFFFF6FFFFF6FFFFF6FFFFF6FFFFF6FFFFF6FFFFF6FFFFF6FFFFF6FFFFF6
                FFFFF6FFFFF6FFFFF7FFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFF9FFFFF6FFFFF6FFFFF6FFFFF6FFFFF6FFFFF6FFFFF6FFFFF6FFFFF6FFFFF6
                FFFFF6FFFFF6FFFFF6FFFFF6FFFFF6FFFFF6FFFFF6FFFFF6FFFFF6FFFFF6FFFF
                F6FFFFF6FFFFF6FFFFF6FFFFF6FFFFF6FFFFF6FFFFF6FFFFF6FFFFF7FFFFF6FF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
              mmHeight = 18521
              mmLeft = 4763
              mmTop = 3969
              mmWidth = 40217
              BandType = 1
            end
            object ppLabel136: TppLabel
              UserName = 'Label17'
              Caption = 'DERRAMA MAGISTERIAL'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = [fsBold]
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 3704
              mmLeft = 5556
              mmTop = 23019
              mmWidth = 38894
              BandType = 1
            end
            object ppLabel137: TppLabel
              UserName = 'Label20'
              Caption = 'Sistema de Seguridad y Bienestar Social del Magisterio'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 2646
              mmLeft = 265
              mmTop = 27517
              mmWidth = 49477
              BandType = 1
            end
            object ppLabel138: TppLabel
              UserName = 'Label42'
              Caption = 'Modelo : CAVE 2'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3704
              mmLeft = 136790
              mmTop = 30692
              mmWidth = 21431
              BandType = 1
            end
            object ppLabel139: TppLabel
              UserName = 'Label79'
              Caption = 'URGENTE'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Times New Roman'
              Font.Size = 48
              Font.Style = []
              Transparent = True
              mmHeight = 20108
              mmLeft = 70379
              mmTop = 5027
              mmWidth = 79111
              BandType = 1
            end
          end
          object ppDetailBand11: TppDetailBand
            BeforePrint = ppDetailBand11BeforePrint
            PrintHeight = phDynamic
            mmBottomOffset = 0
            mmHeight = 160338
            mmPrintPosition = 0
            object ppLabel141: TppLabel
              UserName = 'Label23'
              Caption = 'FECHA:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 11
              Font.Style = []
              Transparent = True
              mmHeight = 4763
              mmLeft = 126736
              mmTop = 8467
              mmWidth = 11642
              BandType = 4
            end
            object ppLabel152: TppLabel
              UserName = 'Label29'
              Caption = 'NOTIFICACION DE COBRANZA'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 18
              Font.Style = [fsBold, fsUnderline]
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 7673
              mmLeft = 40746
              mmTop = 529
              mmWidth = 78317
              BandType = 4
            end
            object ppLabel153: TppLabel
              UserName = 'Label30'
              Caption = 'De nuestra consideraci'#243'n:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 12
              Font.Style = []
              Transparent = True
              mmHeight = 5027
              mmLeft = 0
              mmTop = 63765
              mmWidth = 48154
              BandType = 4
            end
            object ppSystemVariable7: TppSystemVariable
              UserName = 'SystemVariable4'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 11
              Font.Style = []
              Transparent = True
              mmHeight = 4763
              mmLeft = 139700
              mmTop = 8467
              mmWidth = 17992
              BandType = 4
            end
            object ppLabel160: TppLabel
              UserName = 'Label301'
              Caption = 'ASUNTO: INCUMPLIMIENTO DE PAGO'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 13
              Font.Style = [fsBold, fsUnderline]
              Transparent = True
              mmHeight = 5556
              mmLeft = 0
              mmTop = 54240
              mmWidth = 71173
              BandType = 4
            end
            object ppLabel161: TppLabel
              UserName = 'Label302'
              Caption = 
                'Le  comunicamos  que  al  no  obtener  respuesta,    por   las  ' +
                ' gestiones'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 14
              Font.Style = []
              Transparent = True
              mmHeight = 6085
              mmLeft = 0
              mmTop = 72496
              mmWidth = 160338
              BandType = 4
            end
            object ppLabel162: TppLabel
              UserName = 'Label87'
              Caption = 'realizadas  por  nuestra  unidad, a  la  fecha  Ud. '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 14
              Font.Style = []
              Transparent = True
              mmHeight = 6085
              mmLeft = 265
              mmTop = 78846
              mmWidth = 107421
              BandType = 4
            end
            object ppLabel163: TppLabel
              UserName = 'Label88'
              Caption = 'no  ha  cumplido'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 14
              Font.Style = [fsUnderline]
              Transparent = True
              mmHeight = 6085
              mmLeft = 111654
              mmTop = 78846
              mmWidth = 36513
              BandType = 4
            end
            object ppLabel164: TppLabel
              UserName = 'Label98'
              Caption = 'con'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 14
              Font.Style = []
              Transparent = True
              mmHeight = 6085
              mmLeft = 152136
              mmTop = 78846
              mmWidth = 8202
              BandType = 4
            end
            object ppLabel165: TppLabel
              UserName = 'Label99'
              Caption = 
                'regularizar  el  atraso  por  el  pago del cr'#233'dito  que ctualmen' +
                'te mantiene'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 14
              Font.Style = []
              Transparent = True
              mmHeight = 6085
              mmLeft = 0
              mmTop = 85196
              mmWidth = 160073
              BandType = 4
            end
            object ppLabel168: TppLabel
              UserName = 'Label108'
              Caption = 
                'con  la   Derrama   Magisterial,    por  tanto   REITERAMOS   el' +
                '   llamado'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 14
              Font.Style = []
              Transparent = True
              mmHeight = 6085
              mmLeft = 0
              mmTop = 91546
              mmWidth = 160338
              BandType = 4
            end
            object ppLabel169: TppLabel
              UserName = 'Label109'
              Caption = 'y  exhortamos   para  que  en  el '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 14
              Font.Style = []
              Transparent = True
              mmHeight = 6085
              mmLeft = 0
              mmTop = 97896
              mmWidth = 72231
              BandType = 4
            end
            object ppLabel171: TppLabel
              UserName = 'Label1001'
              Caption = 'PLAZO   MAXIMO   DE   72   HORAS'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 14
              Font.Style = [fsUnderline]
              Transparent = True
              mmHeight = 6085
              mmLeft = 76200
              mmTop = 97896
              mmWidth = 84138
              BandType = 4
            end
            object ppMemo13: TppMemo
              UserName = 'Memo7'
              Caption = 
                'se   acerque   a   nuestras   Oficinas,   caso contrario ser'#225' re' +
                'portado a nivel nacional ante las Centrales de Riesgo correspond' +
                'ientes, el cual lo inhabilitara en acceder a un cr'#233'dito en el si' +
                'stema financiero.'#13#10
              CharWrap = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 14
              Font.Style = []
              Lines.Strings = (
                
                  'se acerque a nuestras Oficinas, caso contrario ser'#225' reportado a ' +
                  'nivel nacional ante las Centrales de Riesgo correspondientes, el' +
                  ' cual lo inhabilitara en acceder a un cr'#233'dito en el sistema fina' +
                  'nciero.')
              TextAlignment = taFullJustified
              Transparent = True
              mmHeight = 18521
              mmLeft = 0
              mmTop = 104246
              mmWidth = 160073
              BandType = 4
              mmBottomOffset = 0
              mmOverFlowOffset = 0
              mmStopPosition = 0
              mmLeading = 0
            end
            object ppLabel140: TppLabel
              UserName = 'Label140'
              Caption = 'APELLIDOS(S) y NOMBRE(S) :'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 11
              Font.Style = []
              Transparent = True
              mmHeight = 4784
              mmLeft = 265
              mmTop = 16140
              mmWidth = 45593
              BandType = 4
            end
            object ppLabel142: TppLabel
              UserName = 'Label142'
              Caption = 'DIRECCION'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 11
              Font.Style = []
              Transparent = True
              mmHeight = 4784
              mmLeft = 265
              mmTop = 21960
              mmWidth = 17611
              BandType = 4
            end
            object ppLabel143: TppLabel
              UserName = 'Label143'
              Caption = 'DISTRITO'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 11
              Font.Style = []
              Transparent = True
              mmHeight = 4784
              mmLeft = 265
              mmTop = 27781
              mmWidth = 14647
              BandType = 4
            end
            object ppLabel144: TppLabel
              UserName = 'Label144'
              Caption = 'PROVINCIA'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 11
              Font.Style = []
              Transparent = True
              mmHeight = 4784
              mmLeft = 265
              mmTop = 33602
              mmWidth = 17695
              BandType = 4
            end
            object ppLabel148: TppLabel
              UserName = 'Label148'
              Caption = 'DPTO.'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 11
              Font.Style = []
              Transparent = True
              mmHeight = 4784
              mmLeft = 265
              mmTop = 39423
              mmWidth = 9906
              BandType = 4
            end
            object ppLabel151: TppLabel
              UserName = 'Label151'
              Caption = 'MODULAR'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 11
              Font.Style = []
              Transparent = True
              mmHeight = 4784
              mmLeft = 265
              mmTop = 45244
              mmWidth = 16849
              BandType = 4
            end
            object ppLabel155: TppLabel
              UserName = 'Label155'
              Caption = ':'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 11
              Font.Style = []
              Transparent = True
              mmHeight = 4763
              mmLeft = 21960
              mmTop = 21960
              mmWidth = 1058
              BandType = 4
            end
            object ppLabel156: TppLabel
              UserName = 'Label156'
              Caption = ':'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 11
              Font.Style = []
              Transparent = True
              mmHeight = 4763
              mmLeft = 21960
              mmTop = 27781
              mmWidth = 1058
              BandType = 4
            end
            object ppLabel157: TppLabel
              UserName = 'Label157'
              Caption = ':'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 11
              Font.Style = []
              Transparent = True
              mmHeight = 4763
              mmLeft = 21960
              mmTop = 33602
              mmWidth = 1058
              BandType = 4
            end
            object ppLabel158: TppLabel
              UserName = 'Label404'
              Caption = ':'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 11
              Font.Style = []
              Transparent = True
              mmHeight = 4763
              mmLeft = 21960
              mmTop = 39423
              mmWidth = 1058
              BandType = 4
            end
            object ppLabel159: TppLabel
              UserName = 'Label159'
              Caption = ':'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 11
              Font.Style = []
              Transparent = True
              mmHeight = 4763
              mmLeft = 21960
              mmTop = 45244
              mmWidth = 1058
              BandType = 4
            end
            object ppDBText16: TppDBText
              UserName = 'DBText16'
              DataField = 'ASOAPENOM'
              DataPipeline = ppdbC1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 11
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'ppdbC1'
              mmHeight = 4763
              mmLeft = 48683
              mmTop = 16140
              mmWidth = 111390
              BandType = 4
            end
            object ppDBText18: TppDBText
              UserName = 'DBText18'
              AutoSize = True
              DataField = 'ASOCODMOD'
              DataPipeline = ppdbC1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 11
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'ppdbC1'
              mmHeight = 4784
              mmLeft = 27252
              mmTop = 45244
              mmWidth = 22013
              BandType = 4
            end
            object pplDist5: TppLabel
              UserName = 'lDist5'
              Caption = 'lDist1'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 11
              Font.Style = []
              Transparent = True
              mmHeight = 4784
              mmLeft = 27252
              mmTop = 27781
              mmWidth = 9017
              BandType = 4
            end
            object pplProv5: TppLabel
              UserName = 'lProv5'
              Caption = 'lProv1'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 11
              Font.Style = []
              Transparent = True
              mmHeight = 4784
              mmLeft = 27252
              mmTop = 33602
              mmWidth = 10118
              BandType = 4
            end
            object pplDpto5: TppLabel
              UserName = 'lDpto5'
              Caption = 'lDpto1'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 11
              Font.Style = []
              Transparent = True
              mmHeight = 4784
              mmLeft = 27252
              mmTop = 39423
              mmWidth = 10710
              BandType = 4
            end
            object pplDir5: TppLabel
              UserName = 'lDir5'
              AutoSize = False
              Caption = 'lDir1'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 11
              Font.Style = []
              Transparent = True
              mmHeight = 4763
              mmLeft = 27252
              mmTop = 21960
              mmWidth = 132821
              BandType = 4
            end
            object ppLabel126: TppLabel
              UserName = 'Label126'
              Caption = 'Atentamente.'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 11
              Font.Style = []
              Transparent = True
              mmHeight = 4784
              mmLeft = 0
              mmTop = 137319
              mmWidth = 22056
              BandType = 4
            end
            object ppLabel145: TppLabel
              UserName = 'Label145'
              Caption = 'DERRAMA MAGISTERIAL'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 11
              Font.Style = []
              Transparent = True
              mmHeight = 4763
              mmLeft = 529
              mmTop = 149490
              mmWidth = 38894
              BandType = 4
            end
            object ppLabel146: TppLabel
              UserName = 'Label146'
              Caption = 'EQUIPO DE COBRANZAS'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 10
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 4233
              mmLeft = 2381
              mmTop = 154517
              mmWidth = 35190
              BandType = 4
            end
            object ppLabel174: TppLabel
              UserName = 'Label174'
              Caption = 
                'S'#237'rvase contactarse sobre el estado de su deuda con el Sr (ta). ' +
                '  '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 11
              Font.Style = []
              Transparent = True
              Visible = False
              mmHeight = 4763
              mmLeft = 0
              mmTop = 128059
              mmWidth = 100277
              BandType = 4
            end
            object pplGestor5: TppLabel
              UserName = 'lGestor5'
              AutoSize = False
              Caption = 'Gestor'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 11
              Font.Style = []
              Transparent = True
              Visible = False
              mmHeight = 4763
              mmLeft = 102923
              mmTop = 128059
              mmWidth = 50006
              BandType = 4
            end
          end
          object ppSummaryBand6: TppSummaryBand
            mmBottomOffset = 0
            mmHeight = 50271
            mmPrintPosition = 0
            object ppLabel175: TppLabel
              UserName = 'Label2'
              Caption = 
                'SI AL MOMENTO DE RECIBIR ESTE AVISO YA CUMPLIO CON REGULARIZAR L' +
                'O SOLICITADO, AGRADECEREMOS DEJAR SIN EFECTO LA PRESENTE.'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 7
              Font.Style = [fsBold]
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 2910
              mmLeft = 11377
              mmTop = 38365
              mmWidth = 136261
              BandType = 7
            end
            object ppLabel177: TppLabel
              UserName = 'Label96'
              Caption = 
                'El personal que entrega este documento no est'#225' autorizado para r' +
                'ecibir ning'#250'n tipo de pago, estos deber'#225'n realizarse solo en los'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 2910
              mmLeft = 17198
              mmTop = 42598
              mmWidth = 124619
              BandType = 7
            end
            object ppLabel178: TppLabel
              UserName = 'Label97'
              Caption = 'lugares autorizados por Derrama Magisterial.'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 2910
              mmLeft = 57415
              mmTop = 45773
              mmWidth = 43392
              BandType = 7
            end
            object ppmOfides5: TppMemo
              UserName = 'mOfides5'
              Caption = 'mOfides1'
              CharWrap = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 18521
              mmLeft = 794
              mmTop = 14552
              mmWidth = 153459
              BandType = 7
              mmBottomOffset = 0
              mmOverFlowOffset = 0
              mmStopPosition = 0
              mmLeading = 0
            end
            object ppLabel154: TppLabel
              UserName = 'Label154'
              Caption = 'AGENCIAS / OFIDES DERRAMA MAGISTERIAL:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 10
              Font.Style = [fsBold, fsUnderline]
              Transparent = True
              mmHeight = 3969
              mmLeft = 794
              mmTop = 9790
              mmWidth = 64029
              BandType = 7
            end
          end
        end
      end
    end
    object ppFooterBand6: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
  end
  object ppdLog: TppDesigner
    Caption = 'ReportBuilder'
    DataSettings.SessionType = 'BDESession'
    DataSettings.AllowEditSQL = False
    DataSettings.CollationType = ctASCII
    DataSettings.DatabaseType = dtParadox
    DataSettings.IsCaseSensitive = True
    DataSettings.SQLType = sqBDELocal
    Position = poScreenCenter
    Report = pprLog
    IniStorageType = 'IniFile'
    IniStorageName = '($WINSYS)\RBuilder.ini'
    WindowHeight = 400
    WindowLeft = 100
    WindowTop = 50
    WindowWidth = 600
    Left = 538
    Top = 431
  end
  object pprLog: TppReport
    AutoStop = False
    DataPipeline = ppdbLog
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 20000
    PrinterSetup.mmMarginLeft = 20000
    PrinterSetup.mmMarginRight = 20000
    PrinterSetup.mmMarginTop = 20000
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    Template.FileName = 'C:\FuentesAMedida\GestCob\log.rtm'
    Units = utMillimeters
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zsPercentage
    PreviewFormSettings.ZoomPercentage = 70
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 498
    Top = 431
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppdbLog'
    object ppHeaderBand7: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 24871
      mmPrintPosition = 0
      object ppLabel176: TppLabel
        UserName = 'Label176'
        Caption = 'CARTAS EMITIDAS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 69056
        mmTop = 0
        mmWidth = 31750
        BandType = 0
      end
      object ppDBText24: TppDBText
        UserName = 'DBText24'
        DataField = 'USUARIO'
        DataPipeline = ppdbLog
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbLog'
        mmHeight = 3969
        mmLeft = 20108
        mmTop = 8996
        mmWidth = 30163
        BandType = 0
      end
      object ppLabel179: TppLabel
        UserName = 'Label179'
        Caption = 'USUARIO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 1588
        mmTop = 8996
        mmWidth = 15875
        BandType = 0
      end
      object ppLabel180: TppLabel
        UserName = 'Label180'
        Caption = 'FECHA EMISION'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 121973
        mmTop = 8996
        mmWidth = 27781
        BandType = 0
      end
      object ppDBText25: TppDBText
        UserName = 'DBText25'
        AutoSize = True
        DataField = 'FECHA'
        DataPipeline = ppdbLog
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbLog'
        mmHeight = 3969
        mmLeft = 154517
        mmTop = 8996
        mmWidth = 11906
        BandType = 0
      end
      object ppLine8: TppLine
        UserName = 'Line8'
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 0
        mmTop = 14552
        mmWidth = 170657
        BandType = 0
      end
      object ppLine9: TppLine
        UserName = 'Line9'
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 0
        mmTop = 23019
        mmWidth = 170657
        BandType = 0
      end
      object ppLabel181: TppLabel
        UserName = 'Label181'
        Caption = 'No.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 529
        mmTop = 17198
        mmWidth = 4953
        BandType = 0
      end
      object ppLabel182: TppLabel
        UserName = 'Label182'
        Caption = 'C.Modular'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 12171
        mmTop = 17198
        mmWidth = 14647
        BandType = 0
      end
      object ppLabel183: TppLabel
        UserName = 'Label183'
        Caption = 'Doc.Identidad'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 33867
        mmTop = 17198
        mmWidth = 19727
        BandType = 0
      end
      object ppLabel184: TppLabel
        UserName = 'Label184'
        Caption = 'Apellidos y Nombres'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 67998
        mmTop = 17198
        mmWidth = 29295
        BandType = 0
      end
      object ppLabel185: TppLabel
        UserName = 'Label185'
        Caption = 'Modelo de carta'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 133086
        mmTop = 17198
        mmWidth = 22860
        BandType = 0
      end
      object ppLabel186: TppLabel
        UserName = 'Label186'
        Caption = 'Veces'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 160867
        mmTop = 17198
        mmWidth = 8890
        BandType = 0
      end
      object ppLabel187: TppLabel
        UserName = 'Label187'
        Caption = 'DERRAMA MAGISTERIAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 0
        mmTop = 794
        mmWidth = 42122
        BandType = 0
      end
    end
    object ppDetailBand12: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 5027
      mmPrintPosition = 0
      object ppDBText19: TppDBText
        UserName = 'DBText19'
        AutoSize = True
        DataField = 'ASOCODMOD'
        DataPipeline = ppdbLog
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbLog'
        mmHeight = 3260
        mmLeft = 12171
        mmTop = 1058
        mmWidth = 18838
        BandType = 4
      end
      object ppDBText21: TppDBText
        UserName = 'DBText21'
        DataField = 'IDCARTA'
        DataPipeline = ppdbLog
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbLog'
        mmHeight = 3260
        mmLeft = 132821
        mmTop = 1058
        mmWidth = 6350
        BandType = 4
      end
      object ppDBText22: TppDBText
        UserName = 'DBText22'
        DataField = 'ASOAPENOM'
        DataPipeline = ppdbLog
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbLog'
        mmHeight = 3260
        mmLeft = 55033
        mmTop = 1058
        mmWidth = 74877
        BandType = 4
      end
      object ppDBCalc2: TppDBCalc
        UserName = 'DBCalc2'
        DataPipeline = ppdbLog
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'ppdbLog'
        mmHeight = 3260
        mmLeft = 1058
        mmTop = 1058
        mmWidth = 7938
        BandType = 4
      end
      object ppDBText23: TppDBText
        UserName = 'DBText23'
        DataField = 'DESREF'
        DataPipeline = ppdbLog
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbLog'
        mmHeight = 3260
        mmLeft = 140494
        mmTop = 1058
        mmWidth = 16404
        BandType = 4
      end
      object ppDBText26: TppDBText
        UserName = 'DBText26'
        DataField = 'ASODNI'
        DataPipeline = ppdbLog
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbLog'
        mmHeight = 3260
        mmLeft = 34660
        mmTop = 1058
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText20: TppDBText
        UserName = 'DBText20'
        DataField = 'CARTAS'
        DataPipeline = ppdbLog
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbLog'
        mmHeight = 3260
        mmLeft = 160338
        mmTop = 1058
        mmWidth = 7144
        BandType = 4
      end
    end
    object ppFooterBand7: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppSummaryBand7: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 5027
      mmPrintPosition = 0
      object ppLine10: TppLine
        UserName = 'Line10'
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 0
        mmTop = 1588
        mmWidth = 170657
        BandType = 7
      end
    end
    object ppParameterList3: TppParameterList
    end
  end
  object ppdbLog: TppDBPipeline
    DataSource = DM1.dsCartas
    UserName = 'ppdbLog'
    Left = 458
    Top = 431
  end
  object cdsHojaRuta: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 312
    Top = 204
    object cdsHojaRutanro: TIntegerField
      FieldName = 'nro'
    end
    object cdsHojaRutaModular: TStringField
      FieldName = 'modular'
    end
    object cdsHojaRutaDomicilio: TStringField
      DisplayWidth = 20
      FieldName = 'domicilio'
      Size = 250
    end
    object cdsHojaRutaDistrito: TStringField
      DisplayWidth = 20
      FieldName = 'distrito'
      Size = 50
    end
    object cdsHojaRutaAsociado: TStringField
      DisplayWidth = 20
      FieldName = 'asociado'
      Size = 100
    end
  end
  object dsHojaRuta: TDataSource
    DataSet = cdsHojaRuta
    Left = 376
    Top = 204
  end
  object ppDBHojaRuta: TppDBPipeline
    DataSource = dsHojaRuta
    UserName = 'ppDBHojaRuta'
    Left = 458
    Top = 203
    object ppDBHojaRutappField1: TppField
      FieldAlias = 'nro'
      FieldName = 'nro'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppDBHojaRutappField2: TppField
      FieldAlias = 'modular'
      FieldName = 'modular'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppDBHojaRutappField3: TppField
      FieldAlias = 'domicilio'
      FieldName = 'domicilio'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppDBHojaRutappField4: TppField
      FieldAlias = 'distrito'
      FieldName = 'distrito'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppDBHojaRutappField5: TppField
      FieldAlias = 'asociado'
      FieldName = 'asociado'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
  end
  object pprHojaRuta: TppReport
    AutoStop = False
    DataPipeline = ppDBHojaRuta
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 15000
    PrinterSetup.mmMarginLeft = 10000
    PrinterSetup.mmMarginRight = 10000
    PrinterSetup.mmMarginTop = 15000
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    Template.FileName = 
      'D:\JUVER\TAREAS TERMINADAS\2011\Cobranzas\GESCOB\2011-02 16 - (0' +
      '4) HOJA DE RUTA\HojaRuta.rtm'
    Units = utMillimeters
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    PreviewFormSettings.WindowState = wsMaximized
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 522
    Top = 203
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBHojaRuta'
    object ppHeaderBand8: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 25929
      mmPrintPosition = 0
      object ppShape5: TppShape
        UserName = 'Shape1'
        mmHeight = 5292
        mmLeft = 0
        mmTop = 20637
        mmWidth = 190236
        BandType = 0
      end
      object ppLabel189: TppLabel
        UserName = 'Label1'
        Caption = 'N'#170
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2910
        mmLeft = 2910
        mmTop = 21696
        mmWidth = 2646
        BandType = 0
      end
      object ppLabel190: TppLabel
        UserName = 'Label2'
        Caption = 'DOMICILIO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2910
        mmLeft = 26194
        mmTop = 21696
        mmWidth = 12965
        BandType = 0
      end
      object ppLine12: TppLine
        UserName = 'Line2'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5027
        mmLeft = 8202
        mmTop = 20638
        mmWidth = 1323
        BandType = 0
      end
      object ppLine14: TppLine
        UserName = 'Line4'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5027
        mmLeft = 110596
        mmTop = 20638
        mmWidth = 1852
        BandType = 0
      end
      object ppLine15: TppLine
        UserName = 'Line5'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5027
        mmLeft = 142875
        mmTop = 20638
        mmWidth = 1058
        BandType = 0
      end
      object ppSystemVariable9: TppSystemVariable
        UserName = 'SystemVariable1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 169334
        mmTop = 265
        mmWidth = 14023
        BandType = 0
      end
      object ppSystemVariable10: TppSystemVariable
        UserName = 'SystemVariable2'
        VarType = vtTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 169334
        mmTop = 3704
        mmWidth = 17463
        BandType = 0
      end
      object ppLabel202: TppLabel
        UserName = 'Label14'
        Caption = 'HOJA DE RUTA DE GESTION DIARIA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5821
        mmLeft = 51858
        mmTop = 0
        mmWidth = 101071
        BandType = 0
      end
      object ppLabel203: TppLabel
        UserName = 'Label15'
        Caption = 'DERRAMA MAGISTERIAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4191
        mmLeft = 265
        mmTop = 0
        mmWidth = 42841
        BandType = 0
      end
      object ppLabel204: TppLabel
        UserName = 'Label16'
        Caption = 'GESTION DE COBRANZA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2910
        mmLeft = 529
        mmTop = 5027
        mmWidth = 41804
        BandType = 0
      end
      object ppLabel205: TppLabel
        UserName = 'Label19'
        Caption = 'MODULAR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2910
        mmLeft = 10583
        mmTop = 21696
        mmWidth = 12435
        BandType = 0
      end
      object pplblGestor: TppLabel
        UserName = 'ppLblGestorC'
        Caption = 'Hugo Noriega 01'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 20638
        mmTop = 11377
        mmWidth = 21336
        BandType = 0
      end
      object ppSystemVariable11: TppSystemVariable
        UserName = 'SystemVariable3'
        VarType = vtPageNo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 169334
        mmTop = 7408
        mmWidth = 5821
        BandType = 0
      end
      object pplblSupervisor: TppLabel
        UserName = 'ppLblGestorC1'
        Caption = 'Hugo Noriega 01'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 20638
        mmTop = 16140
        mmWidth = 21336
        BandType = 0
      end
      object ppLine11: TppLine
        UserName = 'Line11'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5027
        mmLeft = 25400
        mmTop = 20638
        mmWidth = 1852
        BandType = 0
      end
      object ppLabel191: TppLabel
        UserName = 'Label191'
        Caption = 'DISTRITO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2910
        mmLeft = 111919
        mmTop = 21696
        mmWidth = 11377
        BandType = 0
      end
      object ppLabel192: TppLabel
        UserName = 'Label192'
        Caption = 'APELLIDOS Y NOMBRES'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2910
        mmLeft = 143669
        mmTop = 21960
        mmWidth = 29633
        BandType = 0
      end
      object ppLabel193: TppLabel
        UserName = 'Label193'
        Caption = 'Fecha :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3260
        mmLeft = 159015
        mmTop = 265
        mmWidth = 9483
        BandType = 0
      end
      object ppLabel194: TppLabel
        UserName = 'Label194'
        Caption = 'Hora :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 160867
        mmTop = 3704
        mmWidth = 7673
        BandType = 0
      end
      object ppLabel195: TppLabel
        UserName = 'Label195'
        Caption = 'P'#225'gina :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3260
        mmLeft = 158126
        mmTop = 7408
        mmWidth = 10414
        BandType = 0
      end
      object ppLabel196: TppLabel
        UserName = 'Label196'
        Caption = 'de'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 175684
        mmTop = 7408
        mmWidth = 3175
        BandType = 0
      end
      object ppSystemVariable12: TppSystemVariable
        UserName = 'SystemVariable12'
        VarType = vtPageCount
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 179652
        mmTop = 7408
        mmWidth = 5821
        BandType = 0
      end
      object ppLabel197: TppLabel
        UserName = 'Label197'
        Caption = 'Usuario :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 157163
        mmTop = 11377
        mmWidth = 11377
        BandType = 0
      end
      object pplblUsuario: TppLabel
        UserName = 'lblUsuario'
        Caption = 'Usuario'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 169334
        mmTop = 11113
        mmWidth = 20108
        BandType = 0
      end
      object ppLabel198: TppLabel
        UserName = 'Label198'
        Caption = 'Gestor(a) :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 2646
        mmTop = 11377
        mmWidth = 16669
        BandType = 0
      end
      object ppLabel199: TppLabel
        UserName = 'Label199'
        Caption = 'Supervisor(a) :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 529
        mmTop = 16140
        mmWidth = 18785
        BandType = 0
      end
    end
    object ppDetailBand13: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 6879
      mmPrintPosition = 0
      object ppDBText27: TppDBText
        UserName = 'DBText27'
        DataField = 'nro'
        DataPipeline = ppDBHojaRuta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBHojaRuta'
        mmHeight = 2910
        mmLeft = 794
        mmTop = 265
        mmWidth = 6879
        BandType = 4
      end
      object ppDBText28: TppDBText
        UserName = 'DBText28'
        DataField = 'modular'
        DataPipeline = ppDBHojaRuta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBHojaRuta'
        mmHeight = 2910
        mmLeft = 8996
        mmTop = 265
        mmWidth = 15610
        BandType = 4
      end
      object ppDBText29: TppDBText
        UserName = 'DBText29'
        AutoSize = True
        DataField = 'domicilio'
        DataPipeline = ppDBHojaRuta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        WordWrap = True
        DataPipelineName = 'ppDBHojaRuta'
        mmHeight = 5757
        mmLeft = 26194
        mmTop = 265
        mmWidth = 69088
        BandType = 4
      end
      object ppDBText30: TppDBText
        UserName = 'DBText30'
        DataField = 'distrito'
        DataPipeline = ppDBHojaRuta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBHojaRuta'
        mmHeight = 2910
        mmLeft = 111919
        mmTop = 265
        mmWidth = 30692
        BandType = 4
      end
      object ppDBText31: TppDBText
        UserName = 'DBText31'
        DataField = 'asociado'
        DataPipeline = ppDBHojaRuta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBHojaRuta'
        mmHeight = 2910
        mmLeft = 143669
        mmTop = 265
        mmWidth = 45508
        BandType = 4
      end
      object ppLine13: TppLine
        UserName = 'Line13'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6879
        mmLeft = 142875
        mmTop = 0
        mmWidth = 1058
        BandType = 4
      end
      object ppLine17: TppLine
        UserName = 'Line17'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 6879
        mmLeft = 189177
        mmTop = 0
        mmWidth = 1058
        BandType = 4
      end
      object ppLine18: TppLine
        UserName = 'Line18'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6879
        mmLeft = 110596
        mmTop = 0
        mmWidth = 1852
        BandType = 4
      end
      object ppLine19: TppLine
        UserName = 'Line19'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6879
        mmLeft = 25400
        mmTop = 0
        mmWidth = 1852
        BandType = 4
      end
      object ppLine20: TppLine
        UserName = 'Line20'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6879
        mmLeft = 8202
        mmTop = 0
        mmWidth = 1323
        BandType = 4
      end
      object ppLine21: TppLine
        UserName = 'Line21'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6879
        mmLeft = 0
        mmTop = 0
        mmWidth = 1323
        BandType = 4
      end
      object ppLine22: TppLine
        UserName = 'Line22'
        Position = lpBottom
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 0
        mmTop = 5027
        mmWidth = 190236
        BandType = 4
      end
    end
    object ppFooterBand8: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 15081
      mmPrintPosition = 0
      object ppRichText1: TppRichText
        UserName = 'RichText1'
        Caption = 'RichText1'
        RichText = 
          '{\rtf1\ansi\ansicpg1252\deff0\deflang10250{\fonttbl{\f0\fnil\fch' +
          'arset0 MS Sans Serif;}{\f1\fnil MS Sans Serif;}}'#13#10'\viewkind4\uc1' +
          '\pard\lang3082\f0\fs16 Declaro que los datos consignados en la p' +
          'resente HOJA DE RESULTADOS DE GESTION\par'#13#10'DOMILICILIARIA se aju' +
          'stan a la verdad, por lo que asumo la responsabilidad TOTAL en c' +
          'aso los\par'#13#10'datos sean FALSOS y asumo las sanciones correspondi' +
          'entes para estos casos.\par'#13#10'Firmo la presente en se\'#39'f1al de co' +
          'nformidad.\lang10250\f1\par'#13#10'}'#13#10
        mmHeight = 13494
        mmLeft = 529
        mmTop = 1587
        mmWidth = 129646
        BandType = 8
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
      end
      object ppLine16: TppLine
        UserName = 'Line16'
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 132557
        mmTop = 8996
        mmWidth = 56621
        BandType = 8
      end
      object ppLabel207: TppLabel
        UserName = 'Label207'
        Caption = 'FIRMA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 157163
        mmTop = 9790
        mmWidth = 7408
        BandType = 8
      end
    end
    object ppSummaryBand8: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppParameterList4: TppParameterList
    end
  end
  object ppdHojaRuta: TppDesigner
    Caption = 'ReportBuilder'
    DataSettings.SessionType = 'BDESession'
    DataSettings.AllowEditSQL = False
    DataSettings.CollationType = ctASCII
    DataSettings.DatabaseType = dtParadox
    DataSettings.IsCaseSensitive = True
    DataSettings.SQLType = sqBDELocal
    Position = poScreenCenter
    Report = pprHojaRuta
    IniStorageType = 'IniFile'
    IniStorageName = '($WINSYS)\RBuilder.ini'
    WindowHeight = 400
    WindowLeft = 100
    WindowTop = 50
    WindowWidth = 600
    Left = 586
    Top = 203
  end
end
