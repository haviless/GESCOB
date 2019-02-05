object fGestInt: TfGestInt
  Left = 314
  Top = 28
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Gesti'#243'n Interna'
  ClientHeight = 649
  ClientWidth = 824
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
  OnClose = FormClose
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
  object Shape5: TShape
    Left = 272
    Top = 106
    Width = 134
    Height = 17
  end
  object Shape6: TShape
    Left = 405
    Top = 106
    Width = 134
    Height = 17
  end
  object Shape7: TShape
    Left = 538
    Top = 106
    Width = 134
    Height = 17
  end
  object Shape10: TShape
    Left = 139
    Top = 106
    Width = 134
    Height = 17
  end
  object Shape11: TShape
    Left = 6
    Top = 106
    Width = 134
    Height = 17
  end
  object Shape12: TShape
    Left = 14
    Top = 114
    Width = 134
    Height = 17
  end
  object Shape13: TShape
    Left = 147
    Top = 114
    Width = 134
    Height = 17
  end
  object Shape14: TShape
    Left = 280
    Top = 114
    Width = 134
    Height = 17
  end
  object Shape15: TShape
    Left = 413
    Top = 114
    Width = 134
    Height = 17
  end
  object Shape16: TShape
    Left = 546
    Top = 114
    Width = 134
    Height = 17
  end
  object Label3: TLabel
    Left = 40
    Top = 140
    Width = 64
    Height = 13
    Alignment = taCenter
    Caption = 'CANTIDAD'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 176
    Top = 140
    Width = 64
    Height = 13
    Alignment = taCenter
    Caption = 'CANTIDAD'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 824
    Height = 649
    Align = alClient
    TabOrder = 0
    object pcGestion: TPageControl
      Left = 2
      Top = 273
      Width = 820
      Height = 279
      ActivePage = tsHojaRutaDia
      Align = alClient
      TabOrder = 0
      object tsPersonal: TTabSheet
        Caption = 'Personal'
        object dtgGestion: TwwDBGrid
          Left = 0
          Top = 0
          Width = 812
          Height = 205
          Cursor = crHandPoint
          DisableThemesInTitle = False
          IniAttributes.Delimiter = ';;'
          TitleColor = clBtnFace
          FixedCols = 0
          ShowHorzScrollBar = True
          Align = alClient
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
        object Panel2: TPanel
          Left = 0
          Top = 205
          Width = 812
          Height = 46
          Align = alBottom
          ParentColor = True
          TabOrder = 1
          object btnHojaRutaDiaAddPersonal: TBitBtn
            Left = 597
            Top = 4
            Width = 185
            Height = 32
            Cursor = crHandPoint
            Caption = 'Agregar a Hoja de Ruta del dia'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            OnClick = btnHojaRutaDiaAddPersonalClick
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
          object btnDesasignar: TBitBtn
            Left = 5
            Top = 5
            Width = 92
            Height = 32
            Cursor = crHandPoint
            Caption = 'Desasignar'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            OnClick = btnDesasignarClick
            NumGlyphs = 2
          end
        end
        object Memo1: TMemo
          Left = -699
          Top = 128
          Width = 1549
          Height = 41
          Lines.Strings = (
            'Memo1')
          TabOrder = 2
          Visible = False
        end
      end
      object tsOtros: TTabSheet
        Caption = 'Otros Gestores '
        ImageIndex = 1
        object dtgOtrasGest: TwwDBGrid
          Left = 0
          Top = 53
          Width = 812
          Height = 152
          Cursor = crHandPoint
          DisableThemesInTitle = False
          Selected.Strings = (
            'PRIORIDAD'#9'20'#9'Distribuci'#243'n~Estrat'#233'gica'
            'DISOPE'#9'20'#9'Distribuci'#243'n~Operativa'
            'USUARIO'#9'12'#9'Gestor'
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
          Align = alClient
          DataSource = DM1.dsModelo
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
          OnTitleButtonClick = dtgOtrasGestTitleButtonClick
          OnDrawDataCell = dtgOtrasGestDrawDataCell
          OnDblClick = dtgOtrasGestDblClick
          OnDrawTitleCell = dtgOtrasGestDrawTitleCell
          PaintOptions.ActiveRecordColor = 13165023
        end
        object GroupBox2: TGroupBox
          Left = 0
          Top = 0
          Width = 812
          Height = 53
          Align = alTop
          TabOrder = 1
          object z2bbtnBuscarOG: TfcShapeBtn
            Left = 479
            Top = 17
            Width = 31
            Height = 31
            Hint = 'Buscar Asociado'
            Color = cl3DLight
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
            ShowHint = True
            TabOrder = 3
            TabStop = True
            TextOptions.Alignment = taCenter
            TextOptions.VAlignment = vaVCenter
            OnClick = z2bbtnBuscarOGClick
          end
          object edtBuscarOG: TEdit
            Left = 150
            Top = 20
            Width = 316
            Height = 24
            CharCase = ecUpperCase
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            MaxLength = 60
            ParentFont = False
            TabOrder = 2
          end
          object BitBtn2: TBitBtn
            Left = 703
            Top = 279
            Width = 100
            Height = 27
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
          object BitAsigna: TBitBtn
            Left = 595
            Top = 279
            Width = 100
            Height = 27
            Cursor = crHandPoint
            Caption = 'AutoAsignar'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
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
          object rdbNombre: TRadioButton
            Left = 24
            Top = 12
            Width = 113
            Height = 17
            Caption = 'Apellidos y Nombres'
            Checked = True
            TabOrder = 0
            TabStop = True
            OnClick = rdbNombreClick
          end
          object rdbDni: TRadioButton
            Left = 24
            Top = 32
            Width = 113
            Height = 17
            Caption = 'DNI'
            TabOrder = 1
            OnClick = rdbDniClick
          end
          object bbtnAsignar: TBitBtn
            Left = 488
            Top = 279
            Width = 100
            Height = 27
            Cursor = crHandPoint
            Caption = 'Asignar'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            TabOrder = 6
            Visible = False
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
        end
        object Panel3: TPanel
          Left = 0
          Top = 205
          Width = 812
          Height = 46
          Align = alBottom
          ParentColor = True
          TabOrder = 2
          object btnHojaRutaDiaAddOtros: TBitBtn
            Left = 597
            Top = 4
            Width = 185
            Height = 32
            Cursor = crHandPoint
            Caption = 'Agregar a Hoja de Ruta del dia'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            OnClick = btnHojaRutaDiaAddOtrosClick
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
        end
      end
      object tsHojaRutaDia: TTabSheet
        Caption = 'Hoja de Ruta del D'#237'a'
        ImageIndex = 2
        object Panel1: TPanel
          Left = 0
          Top = 176
          Width = 812
          Height = 75
          Align = alBottom
          ParentColor = True
          TabOrder = 0
          DesignSize = (
            812
            75)
          object Shape8: TShape
            Left = 453
            Top = 26
            Width = 155
            Height = 17
            Brush.Color = 16382457
          end
          object Shape21: TShape
            Left = 607
            Top = 26
            Width = 168
            Height = 17
            Brush.Color = 16382457
          end
          object Shape32: TShape
            Left = 607
            Top = 10
            Width = 168
            Height = 17
            Brush.Color = 4342527
          end
          object Shape4: TShape
            Left = 453
            Top = 10
            Width = 155
            Height = 17
            Brush.Color = 15198159
          end
          object Label1: TLabel
            Left = 457
            Top = 12
            Width = 147
            Height = 13
            Alignment = taCenter
            Caption = 'DOMICILIOS VALIDADOS'
            Color = 15198159
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object lblCantDomValidados: TLabel
            Left = 496
            Top = 27
            Width = 70
            Height = 13
            Alignment = taCenter
            AutoSize = False
            Caption = 'CANTIDAD'
            Color = 16382457
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object lblCantDomPorValidar: TLabel
            Left = 651
            Top = 27
            Width = 70
            Height = 13
            Alignment = taCenter
            AutoSize = False
            Caption = 'CANTIDAD'
            Color = 16382457
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object Label6: TLabel
            Left = 610
            Top = 12
            Width = 160
            Height = 13
            Alignment = taCenter
            Caption = 'DOMICILIOS POR VALIDAR'
            Color = 4342527
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object gbBuscarHojaRuta: TGroupBox
            Left = 3
            Top = 34
            Width = 174
            Height = 39
            Caption = 'Buscar Asociado en Hoja de Ruta'
            TabOrder = 0
            object fcShapeBtn1: TfcShapeBtn
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
            object edtHojaRutaDiaBuscar: TEdit
              Left = 5
              Top = 12
              Width = 164
              Height = 24
              CharCase = ecUpperCase
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 1
              OnChange = edtHojaRutaDiaBuscarChange
              OnKeyPress = edtHojaRutaDiaBuscarKeyPress
            end
          end
          object btnImpHojaRuta: TBitBtn
            Left = 199
            Top = 7
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
            Left = 280
            Top = 7
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
          object btnCerrarHojaRuta: TBitBtn
            Left = 361
            Top = 7
            Width = 80
            Height = 27
            Cursor = crHandPoint
            Hint = 'Cerrar la Hoja de Ruta'
            Anchors = [akTop, akRight]
            Caption = 'Cerrar'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            OnClick = btnCerrarHojaRutaClick
            Glyph.Data = {
              5A010000424D5A01000000000000760000002800000012000000130000000100
              040000000000E400000000000000000000001000000010000000000000000000
              8000008000000080800080000000800080008080000080808000C0C0C0000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
              888888000000888888888888888888000000800000000000000888000000800B
              FBFBFBFBFB08880000008070BFBFBFBFBFB08800000080B0FBFBFBFBFBF08800
              00008070BFBFBFBFBFB08800000080B77BFBFBFBFBFB78000000807B7FBFBFBF
              BFBF7800000080B777777777777778000000807B7B7EEEE77B78880000008000
              B7B0EEE77778880000008888000EEEE7888888000000888880EEE0E788888800
              000088880EEE08778888880000008880EEE0888788888800000088880E088888
              888888000000888880888888888888000000888888888888888888000000}
          end
          object btnHojaRutaDiaDel: TBitBtn
            Left = 185
            Top = 42
            Width = 140
            Height = 27
            Cursor = crHandPoint
            Hint = 'Retirar Asociado de la Hoja de Ruta'
            Caption = 'Retirar de Hoja d/Ruta'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
            OnClick = btnHojaRutaDiaDelClick
            Glyph.Data = {
              36060000424D3606000000000000360000002800000020000000100000000100
              18000000000000060000130B0000130B00000000000000000000008080008080
              0080800080800080800080800080800080800080800080800080800080800080
              8000808000808000808000808000808000808000808000808000808000808000
              8080008080008080008080008080008080008080008080008080000000000000
              0000000080800080800080800080800080800080800080800080800080800080
              800080800080800080807F7F7F7F7F7F7F7F7F00808000808000808000808000
              8080008080008080008080008080008080008080008080008080000000000000
              0000000080800080800080800080800080800080800080800080800080800080
              800080800080800080807F7F7F7F7F7F7F7F7F00808000808000808000808000
              8080008080008080008080008080008080008080008080008080008080008080
              0080800080800080800080800080800080800080800080800080800080800080
              80008080008080008080FFFFFFFFFFFF00808000808000808000808000808000
              8080008080008080008080008080008080008080008080008080000000000000
              0080800080800080800080800080800080800080800080800080800080800080
              800080800080800080807F7F7F7F7F7F00808000808000808000808000808000
              8080008080008080008080008080008080008080008080008080000000000000
              0080800080800080800080800080800080800080800080800000000000000000
              000080800080800080807F7F7F7F7F7F00808000808000808000808000808000
              80800080800080807F7F7F7F7F7F7F7F7F008080008080008080008080008080
              00808000808000808000808000808000808000808000000000FFFFFFFFFF00FF
              FF000000000000000000FFFFFF00808000808000808000808000808000808000
              80800080807F7F7FFFFFFFFFFFFF0080807F7F7F7F7F7F7F7F7F0000FF0000FF
              008080008080000000000000000000000000000000000000000000000000FFFF
              FF00FFFF000000FFFF007F7F7F7F7F7F0080800080807F7F7F7F7F7F7F7F7F7F
              7F7F7F7F7F7F7F7F7F7F7F7F7F7FFFFFFFFFFFFF7F7F7F7F7F7F0000FF0000FF
              00808000000000FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FF
              FFFFFFFF000000FFFF007F7F7F7F7F7F0080807F7F7FFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFF008080008080FFFFFF7F7F7F7F7F7F008080008080
              008080008080000000000000000000000000000000000000FFFFFF00FFFFFFFF
              FF00FFFF000000FFFF00FFFFFF008080FFFFFF0080807F7F7F7F7F7F7F7F7F7F
              7F7F7F7F7F7F7F7F008080008080008080FFFFFF7F7F7F7F7F7F000000000000
              008080008080008080008080000000FFFFFF00FFFFFFFFFF00FFFFFFFFFF00FF
              FFFFFFFF000000FFFF007F7F7F7F7F7F008080FFFFFFFFFFFFFFFFFF7F7F7FFF
              FFFFFFFFFF008080008080008080008080FFFFFF7F7F7F7F7F7F000000000000
              008080008080008080008080008080000000000000000000FFFFFF00FFFFFFFF
              FF00FFFF000000FFFF007F7F7F7F7F7F008080008080008080FFFFFF0080807F
              7F7F7F7F7F7F7F7F008080008080008080FFFFFF7F7F7F7F7F7F008080008080
              00808000808000808000808000808000000000FFFFFFFFFF00FFFFFFFFFF00FF
              FF000000000000FFFF00FFFFFF008080008080008080008080008080FFFFFF7F
              7F7FFFFFFF0080800080800080800080807F7F7F7F7F7F7F7F7F000000000000
              0000000080800080800080800080800080800000000000000000000000000000
              000080800000000000007F7F7F7F7F7F7F7F7F008080008080008080FFFFFF00
              80807F7F7F7F7F7F7F7F7F7F7F7F7F7F7FFFFFFF7F7F7F7F7F7F000000000000
              0000000080800080800080800080800080800080800080800080800080800080
              800080800080800080807F7F7F7F7F7F7F7F7F008080008080008080008080FF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFF008080FFFFFFFFFFFF008080008080008080
              0080800080800080800080800080800080800080800080800080800080800080
              80008080008080008080FFFFFFFFFFFF00808000808000808000808000808000
              8080008080008080008080008080008080008080008080008080}
            NumGlyphs = 2
          end
          object rgTipo: TRadioGroup
            Left = 2
            Top = 2
            Width = 98
            Height = 31
            Caption = 'Tipo'
            Columns = 2
            ItemIndex = 0
            Items.Strings = (
              'DOM'
              'TEL')
            TabOrder = 5
          end
          object btnNuevaHojaRuta: TBitBtn
            Left = 103
            Top = 7
            Width = 95
            Height = 27
            Cursor = crHandPoint
            Caption = 'Nueva Hoja'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 6
            OnClick = btnNuevaHojaRutaClick
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
          end
          object btnContactabilidad: TBitBtn
            Left = 333
            Top = 42
            Width = 108
            Height = 27
            Cursor = crHandPoint
            Caption = 'Contactabilidad'
            TabOrder = 7
            OnClick = btnContactabilidadClick
            Glyph.Data = {
              AA040000424DAA04000000000000360000002800000013000000130000000100
              18000000000074040000C40E0000C40E00000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFF4F4F4CCCCCCB5B5B5DEDEDEF3F3F3FEFEFEFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFB7B7B75D5C5D8E928E0002007776778182818B8C8BCFCFCFFCFCFC
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFA6AA
              A62325236E736EA9AEA9595C59FFFFFFEEEFEEABADAB797B79878987ACB2ACFF
              FFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFC4C4C4000000C0C1C0
              E4E5E4D4D4D4E3E4E2F5F8F9F4F5F3F9FBF9DFE5DFA8AFA87B7F7B616561D2D6
              D2FFFFFFFFFFFF000000FFFFFFFFFFFFFDFFFD555C55919191FFFFFFFFFFFFFF
              FFFFFFFFFFF6F8F9EEEFEEE7ECE7E6EDE6DFE7DFDEE0DEC1C1C1535453909390
              FFFFFF000000FFFFFFFFFFFFAFB0AF424542EFF3EFFFFFFFFFFFFFFFFFFFFFFE
              FFF3F7F9EFF0EEEDEEEDE4EBE4DBE1DBD5DED5DDDBDDEEEDEE7B7B7BD1D1D100
              0000FFFFFFF5F5F56463648C8F8CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9FDFF
              EFF1F2EEEFEEE6ECE6DFE5DFD4DCD4DBD9DBC7C8C7747374D9D9D9000000FFFF
              FFB8B8B8505050C1C1C1DCDFDCEAE9EAFFFFFFFFFFFFFFFFFFF9FDFFF0F2F2EE
              EEEDE4EBE4E2E7E2D9E1D9C5C5C5848784B5B5B5F4F4F4000000F6F6F65D5D5D
              808180ACB3ABA9B0A9B2B6B1EEEDEEFFFFFFFFFFFFFEFEFFF1F0F0F0F1F1E8ED
              E8E6EDE6DEE3DE8A8F8AB7B6B7FFFFFFFFFFFF000000F1F1F1828281A9B1AAC0
              CAC576747A707276B4BBB8EAEBEBFFFFFFFFFFFFF0F3F6F2F2F0E8EEE8E8EEE8
              DBE2DB5D5B5DFFFFFFFFFFFFFFFFFF000000D3D3D3777878A2A8A45F5B56544E
              463D362E5A554EB0B2B1FFFFFFFFFFFFF3F8FCF1EFEEEAEEEAFAFFFA616361C5
              C5C5FFFFFFFFFFFFFFFFFF000000E1E1E151545A5754279E8D00BFB100C1B400
              A19000595223DFDFE3FFFFFFFCFCFCEEEEEFFDFDFDC5CCC5515351FFFFFFFFFF
              FFFFFFFFFFFFFF000000FFFFFF8F909A757200DBE3028A7E008B7E00D3D9035E
              5E00C9C8CAFFFFFFFDFDFEF4F4F6FEFFFD5E605EE5E5E5FFFFFFFFFFFFFFFFFF
              FFFFFF000000FFFFFFC4C3CC6E7304595C09769400B5B4066F740E9D9807E2E1
              DCFFFFFFFDFEFFFCFEFFCBCBCA7A7A7AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
              0000FFFFFFFFFFFFB7BABB0000169EA100D8D600000000130E1AC9C9CBFDFDFD
              FFFFFFFFFFFF585958D9D9D9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF
              FFFFFFFFF2F3FA7085542C4D0C4C5A04637740E4EBF2727873747774B7BAB792
              93929DA19DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
              818683A6B600F9FF00F6FF00B5C400878E79FFFFFFD8DBD7979B97838683DFE0
              DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFA3A39DAD
              AE00B4B600B3B400AFB100A7A991F2F2F9FFFFFFFFFFFFF1F1F1FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFCFCFFEEEFDFE1E3
              C4E1E3C4EAECD8FDFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFF000000}
          end
        end
        object dtgHojaRutaDia: TwwDBGrid
          Left = 0
          Top = 0
          Width = 812
          Height = 176
          Cursor = crHandPoint
          DisableThemesInTitle = False
          Selected.Strings = (
            'nro'#9'10'#9'nro'#9#9
            'modular'#9'20'#9'modular'#9#9
            'domicilio'#9'20'#9'domicilio'#9#9
            'distrito'#9'20'#9'distrito'#9#9
            'asociado'#9'20'#9'asociado'#9#9)
          IniAttributes.Delimiter = ';;'
          TitleColor = clBtnFace
          FixedCols = 0
          ShowHorzScrollBar = True
          Align = alClient
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          MultiSelectOptions = [msoShiftSelect]
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgMultiSelect, dgShowFooter, dgFooter3DCells]
          ParentFont = False
          TabOrder = 1
          TitleAlignment = taLeftJustify
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          TitleLines = 4
          TitleButtons = True
          OnTitleButtonClick = dtgHojaRutaDiaTitleButtonClick
          OnDrawDataCell = dtgHojaRutaDiaDrawDataCell
          OnDblClick = dtgHojaRutaDiaDblClick
          PaintOptions.ActiveRecordColor = 13165023
        end
      end
    end
    object pnlCab: TPanel
      Left = 2
      Top = 54
      Width = 820
      Height = 219
      Align = alTop
      ParentColor = True
      TabOrder = 1
      object Shape2: TShape
        Left = 6
        Top = 106
        Width = 134
        Height = 33
        Brush.Color = 8882114
      end
      object Shape3: TShape
        Left = 139
        Top = 106
        Width = 268
        Height = 17
        Brush.Color = 16764002
      end
      object Shape20: TShape
        Left = 139
        Top = 122
        Width = 134
        Height = 17
        Brush.Color = 16771022
      end
      object Shape9: TShape
        Left = 405
        Top = 106
        Width = 267
        Height = 17
        Brush.Color = 13553309
      end
      object Shape19: TShape
        Left = 272
        Top = 122
        Width = 134
        Height = 17
        Brush.Color = 16771022
      end
      object Shape18: TShape
        Left = 405
        Top = 122
        Width = 134
        Height = 17
        Brush.Color = 15198159
      end
      object Shape17: TShape
        Left = 538
        Top = 122
        Width = 134
        Height = 17
        Brush.Color = 15198159
      end
      object Shape22: TShape
        Left = 538
        Top = 138
        Width = 134
        Height = 17
        Brush.Color = 16382457
      end
      object Shape23: TShape
        Left = 405
        Top = 138
        Width = 134
        Height = 17
        Brush.Color = 16382457
      end
      object Shape24: TShape
        Left = 272
        Top = 138
        Width = 134
        Height = 17
        Brush.Color = 16382457
      end
      object Shape25: TShape
        Left = 139
        Top = 138
        Width = 134
        Height = 17
        Brush.Color = 16382457
      end
      object Shape26: TShape
        Left = 6
        Top = 138
        Width = 134
        Height = 17
        Brush.Color = 16382457
      end
      object Label21: TLabel
        Left = 104
        Top = 70
        Width = 42
        Height = 14
        Caption = 'Prioridad'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
      object lblIndDeudoresAsignados: TLabel
        Left = 38
        Top = 140
        Width = 70
        Height = 13
        Alignment = taCenter
        AutoSize = False
        Caption = 'CANTIDAD'
        Color = 16382457
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Shape27: TShape
        Left = 6
        Top = 158
        Width = 267
        Height = 17
        Brush.Color = 16749000
      end
      object Shape28: TShape
        Left = 6
        Top = 174
        Width = 134
        Height = 17
        Brush.Color = 16759773
      end
      object Shape29: TShape
        Left = 6
        Top = 190
        Width = 134
        Height = 17
        Brush.Color = 16382457
      end
      object Shape30: TShape
        Left = 139
        Top = 190
        Width = 134
        Height = 17
        Brush.Color = 16382457
      end
      object Shape31: TShape
        Left = 139
        Top = 174
        Width = 134
        Height = 17
        Brush.Color = 16759773
      end
      object Shape33: TShape
        Left = 272
        Top = 158
        Width = 400
        Height = 17
        Brush.Color = 6993407
      end
      object Shape34: TShape
        Left = 272
        Top = 174
        Width = 134
        Height = 17
        Brush.Color = 10210815
      end
      object Shape35: TShape
        Left = 272
        Top = 190
        Width = 134
        Height = 17
        Brush.Color = 16382457
      end
      object Shape36: TShape
        Left = 405
        Top = 190
        Width = 134
        Height = 17
        Brush.Color = 16382457
      end
      object Shape37: TShape
        Left = 405
        Top = 174
        Width = 134
        Height = 17
        Brush.Color = 10210815
      end
      object Shape40: TShape
        Left = 538
        Top = 174
        Width = 134
        Height = 17
        Brush.Color = 10210815
      end
      object Shape41: TShape
        Left = 538
        Top = 190
        Width = 134
        Height = 17
        Brush.Color = 16382457
      end
      object lblIndGestionados: TLabel
        Left = 171
        Top = 140
        Width = 70
        Height = 13
        Alignment = taCenter
        AutoSize = False
        Caption = 'CANTIDAD'
        Color = 16382457
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object lblIndNoGestionados: TLabel
        Left = 304
        Top = 140
        Width = 70
        Height = 13
        Alignment = taCenter
        AutoSize = False
        Caption = 'CANTIDAD'
        Color = 16382457
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object lblIndContactados: TLabel
        Left = 440
        Top = 140
        Width = 70
        Height = 13
        Alignment = taCenter
        AutoSize = False
        Caption = 'CANTIDAD'
        Color = 16382457
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object lblIndConCompromisos: TLabel
        Left = 38
        Top = 192
        Width = 70
        Height = 13
        Alignment = taCenter
        AutoSize = False
        Caption = 'CANTIDAD'
        Color = 16382457
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object lblIndSinCompromisos: TLabel
        Left = 168
        Top = 192
        Width = 70
        Height = 13
        Alignment = taCenter
        AutoSize = False
        Caption = 'CANTIDAD'
        Color = 16382457
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object lblIndCumplidos: TLabel
        Left = 304
        Top = 192
        Width = 70
        Height = 13
        Alignment = taCenter
        AutoSize = False
        Caption = 'CANTIDAD'
        Color = 16382457
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object lblIndInCumplidos: TLabel
        Left = 440
        Top = 192
        Width = 70
        Height = 13
        Alignment = taCenter
        AutoSize = False
        Caption = 'CANTIDAD'
        Color = 16382457
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object lblIndNoContactados: TLabel
        Left = 568
        Top = 140
        Width = 70
        Height = 13
        Alignment = taCenter
        AutoSize = False
        Caption = 'CANTIDAD'
        Color = 16382457
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object lblIndProxVencer: TLabel
        Left = 568
        Top = 192
        Width = 70
        Height = 13
        Alignment = taCenter
        AutoSize = False
        Caption = 'CANTIDAD'
        Color = 16382457
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Label15: TLabel
        Left = 40
        Top = 109
        Width = 73
        Height = 26
        Alignment = taCenter
        Caption = 'DEUDORES'#13#10'ASIGNADOS'
        Color = 8882114
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Label16: TLabel
        Left = 167
        Top = 124
        Width = 90
        Height = 13
        Alignment = taCenter
        Caption = 'GESTIONADOS'
        Color = 16771022
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Label20: TLabel
        Left = 283
        Top = 124
        Width = 112
        Height = 13
        Alignment = taCenter
        Caption = 'NO GESTIONADOS'
        Color = 16771022
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Label22: TLabel
        Left = 427
        Top = 124
        Width = 93
        Height = 13
        Alignment = taCenter
        Caption = 'CONTACTADOS'
        Color = 15198159
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Label23: TLabel
        Left = 548
        Top = 124
        Width = 115
        Height = 13
        Alignment = taCenter
        Caption = 'NO CONTACTADOS'
        Color = 15198159
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Label24: TLabel
        Left = 539
        Top = 176
        Width = 132
        Height = 13
        Alignment = taCenter
        Caption = 'PROXIMOS A VENCER'
        Color = 10210815
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Label25: TLabel
        Left = 432
        Top = 176
        Width = 86
        Height = 13
        Alignment = taCenter
        Caption = 'INCUMPLIDOS'
        Color = 10210815
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Label26: TLabel
        Left = 306
        Top = 176
        Width = 73
        Height = 13
        Alignment = taCenter
        Caption = 'CUMPLIDOS'
        Color = 10210815
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Label27: TLabel
        Left = 148
        Top = 176
        Width = 118
        Height = 13
        Alignment = taCenter
        Caption = 'SIN COMPROMISOS'
        Color = 16759773
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Label28: TLabel
        Left = 12
        Top = 176
        Width = 123
        Height = 13
        Alignment = taCenter
        Caption = 'CON COMPROMISOS'
        Color = 16759773
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Label29: TLabel
        Left = 68
        Top = 160
        Width = 151
        Height = 13
        Alignment = taCenter
        Caption = 'SOBRE LO CONTACTADO'
        Color = 16749000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Label30: TLabel
        Left = 390
        Top = 160
        Width = 167
        Height = 13
        Alignment = taCenter
        Caption = 'SOBRE LOS COMPROMISOS'
        Color = 6993407
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Label31: TLabel
        Left = 218
        Top = 108
        Width = 131
        Height = 13
        Alignment = taCenter
        Caption = 'SOBRE LO ASIGNADO'
        Color = 16764002
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Label32: TLabel
        Left = 471
        Top = 108
        Width = 148
        Height = 13
        Alignment = taCenter
        Caption = 'SOBRE LO GESTIONADO'
        Color = 13553309
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object BitFiltrar: TBitBtn
        Left = 713
        Top = 62
        Width = 100
        Height = 28
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
        Left = 709
        Top = 93
        Width = 103
        Height = 23
        BevelInner = bvRaised
        BorderStyle = bsSingle
        Caption = 'Panel5'
        ParentColor = True
        TabOrder = 1
        object lblRegistros: TLabel
          Left = 11
          Top = 2
          Width = 78
          Height = 13
          Alignment = taCenter
          AutoSize = False
          Caption = '0 Registros'
        end
      end
      object dblcDpto: TwwDBLookupCombo
        Left = 104
        Top = 16
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
        Left = 145
        Top = 15
        Width = 112
        Height = 21
        Caption = 'Panel1'
        Color = 13165023
        Enabled = False
        TabOrder = 3
        object edtDpto: TEdit
          Left = 1
          Top = 0
          Width = 110
          Height = 21
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
        Left = 259
        Top = 16
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
        Left = 297
        Top = 14
        Width = 182
        Height = 22
        Caption = 'Panel1'
        Color = 13165023
        Enabled = False
        TabOrder = 5
        object edtProvin: TEdit
          Left = 1
          Top = 1
          Width = 180
          Height = 21
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
        Left = 482
        Top = 15
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
        Left = 520
        Top = 14
        Width = 182
        Height = 23
        Caption = 'Panel1'
        Color = 13165023
        Enabled = False
        TabOrder = 7
        object edtDist: TEdit
          Left = 1
          Top = 1
          Width = 180
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
      object dblcPrioridad: TwwDBLookupCombo
        Left = 104
        Top = 83
        Width = 82
        Height = 21
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'CODIGO_PRIORIDAD'#9'10'#9'Codigo'#9'F'
          'DESCRIPCION_PRIORIDAD'#9'40'#9'Descripci'#243'n'#9'F')
        LookupTable = DM1.cdsUPro
        Options = [loColLines, loRowLines]
        MaxLength = 1
        ParentFont = False
        TabOrder = 8
        AutoDropDown = False
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = False
        OnChange = dblcPrioridadChange
      end
      object Panel10: TPanel
        Left = 187
        Top = 82
        Width = 190
        Height = 22
        Caption = 'Panel1'
        Color = 13165023
        Enabled = False
        TabOrder = 9
        object EdtPrioridad: TEdit
          Left = 0
          Top = 0
          Width = 189
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
      object rgRefinanciados: TRadioGroup
        Left = 384
        Top = 70
        Width = 321
        Height = 35
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
        TabOrder = 10
        OnClick = rgRefinanciadosClick
      end
      object Panel11: TPanel
        Left = 104
        Top = 2
        Width = 492
        Height = 13
        BevelOuter = bvNone
        ParentColor = True
        TabOrder = 11
        object Label17: TLabel
          Left = 4
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
        object Label18: TLabel
          Left = 156
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
        object Label19: TLabel
          Left = 380
          Top = -2
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
      object pnlAcuerdos: TPanel
        Left = 712
        Top = 3
        Width = 99
        Height = 57
        BevelOuter = bvNone
        BorderWidth = 1
        BorderStyle = bsSingle
        ParentColor = True
        TabOrder = 12
        object DtpCompromisos: TDateTimePicker
          Left = 6
          Top = 24
          Width = 88
          Height = 21
          Date = 39679.671306192130000000
          Time = 39679.671306192130000000
          TabOrder = 0
        end
        object chbxCompromisos: TCheckBox
          Left = 2
          Top = 2
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
      object pnlColegio: TPanel
        Left = 99
        Top = 37
        Width = 590
        Height = 35
        BevelOuter = bvNone
        ParentColor = True
        TabOrder = 13
        object Label12: TLabel
          Left = 6
          Top = -3
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
          Top = 9
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
          Left = 6
          Top = 11
          Width = 505
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
      object rgUbigeo: TRadioGroup
        Left = 5
        Top = 1
        Width = 95
        Height = 70
        ItemIndex = 0
        Items.Strings = (
          'Domicilio'
          'Colegio')
        TabOrder = 14
        OnClick = rgUbigeoClick
      end
    end
    object pnlCab2: TPanel
      Left = 2
      Top = 15
      Width = 820
      Height = 39
      Align = alTop
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
        Left = 7
        Top = 7
        Width = 334
        Height = 21
        AutoSize = False
        Caption = 'Gestor :  XXXXXXXXXXXXXXXXXXXXXXXXXX'
        Color = clBtnHighlight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object dblUserInt: TwwDBLookupCombo
        Left = 7
        Top = 6
        Width = 124
        Height = 24
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'USERID'#9'15'#9'Usuario'#9'F'
          'USERNOM'#9'25'#9'Descripci'#243'n'#9'F')
        LookupTable = DM1.cdsQry6
        LookupField = 'USERID'
        Options = [loColLines, loRowLines]
        ParentFont = False
        TabOrder = 0
        Visible = False
        AutoDropDown = False
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = False
        OnChange = dblUserIntChange
        OnExit = dblUserIntExit
      end
      object pnlUser: TPanel
        Left = 130
        Top = 5
        Width = 218
        Height = 25
        Enabled = False
        TabOrder = 1
        Visible = False
        object EdtUserNom: TEdit
          Left = 2
          Top = 1
          Width = 215
          Height = 23
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
      object rgSitua: TRadioGroup
        Left = 354
        Top = -2
        Width = 444
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
        TabOrder = 2
        Visible = False
        OnClick = rgSituaClick
      end
    end
    object Panel4: TPanel
      Left = 2
      Top = 552
      Width = 820
      Height = 95
      Align = alBottom
      BevelOuter = bvNone
      Caption = 'Panel4'
      ParentColor = True
      TabOrder = 3
      DesignSize = (
        820
        95)
      object pcPie: TPageControl
        Left = 2
        Top = 2
        Width = 699
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
        TabOrder = 0
        object TabSheet4: TTabSheet
          Caption = 'Opciones      '
          DesignSize = (
            691
            63)
          object Bevel9: TBevel
            Left = 569
            Top = 2
            Width = 2
            Height = 60
          end
          object BitExporta: TBitBtn
            Left = 464
            Top = 32
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
            TabOrder = 0
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
            Spacing = 10
          end
          object btnImprimir: TBitBtn
            Left = 368
            Top = 32
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
            TabOrder = 1
            OnClick = btnImprimirClick
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
          object grpBusAso: TGroupBox
            Left = 103
            Top = 4
            Width = 261
            Height = 50
            Caption = 'Buscar Asociado'
            TabOrder = 2
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
              Left = 9
              Top = 18
              Width = 241
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
          object BitBuscar: TBitBtn
            Left = 1
            Top = 35
            Width = 100
            Height = 27
            Hint = 'Buscar Deudor'
            Caption = 'Buscar'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = 'Comic Sans MS'
            Font.Style = [fsBold]
            ParentFont = False
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
          object BitObsEsp: TBitBtn
            Left = 1
            Top = 3
            Width = 100
            Height = 27
            Hint = 'Obsercaciones'
            Caption = 'Obs.Super.'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = 'Comic Sans MS'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 4
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
          object ChkIndidual2: TCheckBox
            Left = 404
            Top = 10
            Width = 89
            Height = 14
            Caption = 'Seleccionado'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 5
          end
          object bbtnImportacionMasiva: TBitBtn
            Left = 579
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
            TabOrder = 6
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
            Left = 579
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
            TabOrder = 7
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
        object TabSheet6: TTabSheet
          Caption = 'Resultados de Gesti'#243'n'
          ImageIndex = 1
          object lblTitulo: TLabel
            Left = 61
            Top = 9
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
            Left = 342
            Top = 9
            Width = 32
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
            Left = 452
            Top = 9
            Width = 24
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
            Left = 59
            Top = 27
            Width = 50
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
            Left = 110
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
            Width = 100
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
            Left = 424
            Top = 26
            Width = 100
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
            Left = 545
            Top = 22
            Width = 90
            Height = 28
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
      end
      object btnDesmarcarTodo: TBitBtn
        Left = 722
        Top = 31
        Width = 84
        Height = 26
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
        TabOrder = 1
        OnClick = btnDesmarcarTodoClick
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
        NumGlyphs = 2
        Spacing = 5
      end
      object BitSalir: TBitBtn
        Left = 722
        Top = 63
        Width = 84
        Height = 26
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
    end
  end
  object dtgData: TDBGrid
    Left = 112
    Top = 312
    Width = 449
    Height = 153
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
  object DBGestiones: TppDBPipeline
    DataSource = DM1.dsMovCre
    UserName = 'DBGestiones'
    Left = 138
    Top = 379
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
    Left = 178
    Top = 379
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
      object ppLblGestorC: TppLabel
        UserName = 'ppLblGestorC'
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
        object ppLblGestorF: TppLabel
          UserName = 'ppLblGestorF'
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
    Left = 210
    Top = 379
  end
  object ppdbLog: TppDBPipeline
    DataSource = DM1.dsCartas
    UserName = 'ppdbLog'
    Left = 474
    Top = 439
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
    Left = 522
    Top = 439
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppdbLog'
    object ppHeaderBand7: TppHeaderBand
      BeforePrint = ppHeaderBand7BeforePrint
      mmBottomOffset = 0
      mmHeight = 30163
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
        mmLeft = 24077
        mmTop = 8996
        mmWidth = 30163
        BandType = 0
      end
      object ppLabel179: TppLabel
        UserName = 'Label179'
        Caption = 'Gestor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 1588
        mmTop = 8996
        mmWidth = 10583
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
        mmTop = 20638
        mmWidth = 170657
        BandType = 0
      end
      object ppLine9: TppLine
        UserName = 'Line9'
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 0
        mmTop = 29104
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
        mmTop = 23283
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
        mmTop = 23283
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
        mmTop = 23283
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
        mmTop = 23283
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
        mmTop = 23283
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
        mmTop = 23283
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
      object ppLabel188: TppLabel
        UserName = 'Label188'
        Caption = 'Responsable'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 1323
        mmTop = 15346
        mmWidth = 20489
        BandType = 0
      end
      object pplRespon: TppLabel
        UserName = 'lRespon'
        Caption = 'lRespon'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 24077
        mmTop = 15346
        mmWidth = 12869
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
    Left = 562
    Top = 439
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
    Left = 546
    Top = 299
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
      'D:\Modulos\@Dise'#241'ador de Reportes\Gestion de Cobranzas\HojaRuta.' +
      'rtm'
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
    Left = 506
    Top = 299
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
        mmTop = 21960
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
        mmLeft = 51329
        mmTop = 21960
        mmWidth = 12965
        BandType = 0
      end
      object ppLine17: TppLine
        UserName = 'Line2'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5027
        mmLeft = 8202
        mmTop = 20638
        mmWidth = 1323
        BandType = 0
      end
      object ppLine18: TppLine
        UserName = 'Line4'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5027
        mmLeft = 120386
        mmTop = 20638
        mmWidth = 1852
        BandType = 0
      end
      object ppLine19: TppLine
        UserName = 'Line5'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5027
        mmLeft = 147373
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
        mmLeft = 25665
        mmTop = 21960
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
      object ppLine20: TppLine
        UserName = 'Line11'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5027
        mmLeft = 40217
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
        mmLeft = 121709
        mmTop = 21960
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
        mmLeft = 148167
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
      object ppLine29: TppLine
        UserName = 'Line29'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5027
        mmLeft = 22490
        mmTop = 20902
        mmWidth = 1323
        BandType = 0
      end
      object ppLabel200: TppLabel
        UserName = 'Label10'
        Caption = 'COMPROM'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2910
        mmLeft = 8731
        mmTop = 21960
        mmWidth = 13229
        BandType = 0
      end
      object ppLabel17: TppLabel
        UserName = 'Label17'
        Caption = 'VAL.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2910
        mmLeft = 42598
        mmTop = 21960
        mmWidth = 5292
        BandType = 0
      end
      object ppLine7: TppLine
        UserName = 'Line7'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5027
        mmLeft = 50271
        mmTop = 20902
        mmWidth = 1852
        BandType = 0
      end
    end
    object ppDetailBand13: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 12965
      mmPrintPosition = 0
      object ppDBText27: TppDBText
        UserName = 'DBText27'
        DataField = 'NRO'
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
        DataField = 'ASOCODMOD'
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
        mmLeft = 23813
        mmTop = 265
        mmWidth = 15610
        BandType = 4
      end
      object ppDBText29: TppDBText
        UserName = 'DBText29'
        DataField = 'ASODIR'
        DataPipeline = ppDBHojaRuta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        WordWrap = True
        DataPipelineName = 'ppDBHojaRuta'
        mmHeight = 12000
        mmLeft = 51329
        mmTop = 265
        mmWidth = 67733
        BandType = 4
      end
      object ppDBText30: TppDBText
        UserName = 'DBText30'
        DataField = 'DISTRITO'
        DataPipeline = ppDBHojaRuta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        WordWrap = True
        DataPipelineName = 'ppDBHojaRuta'
        mmHeight = 9260
        mmLeft = 121709
        mmTop = 265
        mmWidth = 25135
        BandType = 4
      end
      object ppDBText31: TppDBText
        UserName = 'DBText31'
        DataField = 'ASOAPENOM'
        DataPipeline = ppDBHojaRuta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        WordWrap = True
        DataPipelineName = 'ppDBHojaRuta'
        mmHeight = 9260
        mmLeft = 148167
        mmTop = 265
        mmWidth = 41010
        BandType = 4
      end
      object ppLine21: TppLine
        UserName = 'Line13'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 12700
        mmLeft = 147373
        mmTop = 0
        mmWidth = 1058
        BandType = 4
      end
      object ppLine22: TppLine
        UserName = 'Line17'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 12700
        mmLeft = 189177
        mmTop = 0
        mmWidth = 1058
        BandType = 4
      end
      object ppLine23: TppLine
        UserName = 'Line18'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 12700
        mmLeft = 120386
        mmTop = 0
        mmWidth = 1852
        BandType = 4
      end
      object ppLine24: TppLine
        UserName = 'Line19'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 12700
        mmLeft = 40217
        mmTop = 0
        mmWidth = 1852
        BandType = 4
      end
      object ppLine25: TppLine
        UserName = 'Line20'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 12700
        mmLeft = 8202
        mmTop = 0
        mmWidth = 1323
        BandType = 4
      end
      object ppLine26: TppLine
        UserName = 'Line21'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 12700
        mmLeft = 0
        mmTop = 0
        mmWidth = 1323
        BandType = 4
      end
      object ppLine27: TppLine
        UserName = 'Line22'
        Position = lpBottom
        Weight = 0.750000000000000000
        mmHeight = 2381
        mmLeft = 0
        mmTop = 10583
        mmWidth = 190236
        BandType = 4
      end
      object ppLine30: TppLine
        UserName = 'Line201'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 12700
        mmLeft = 22490
        mmTop = 0
        mmWidth = 1323
        BandType = 4
      end
      object ppDBText32: TppDBText
        UserName = 'DBText14'
        OnGetText = ppDBText32GetText
        DataField = 'ESTCOM'
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
        mmLeft = 9790
        mmTop = 265
        mmWidth = 11642
        BandType = 4
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        DataField = 'VALIDADO'
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
        mmLeft = 41010
        mmTop = 265
        mmWidth = 8467
        BandType = 4
      end
      object ppLine6: TppLine
        UserName = 'Line6'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 12700
        mmLeft = 50271
        mmTop = 0
        mmWidth = 1852
        BandType = 4
      end
    end
    object ppFooterBand8: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 14023
      mmPrintPosition = 0
      object ppRichText2: TppRichText
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
        mmTop = 529
        mmWidth = 129646
        BandType = 8
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
      end
      object ppLine28: TppLine
        UserName = 'Line16'
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 132557
        mmTop = 10054
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
        mmTop = 10848
        mmWidth = 7408
        BandType = 8
      end
    end
    object ppSummaryBand8: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 22490
      mmPrintPosition = 0
      object pplblComInc: TppLabel
        UserName = 'lblComInc'
        Caption = 'I : COMPROMISO INCUMPLIDO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2921
        mmLeft = 4233
        mmTop = 10054
        mmWidth = 36534
        BandType = 7
      end
      object pplblNoCom: TppLabel
        UserName = 'lblNoCom'
        Caption = 'N : NO TIENE COMPROMISO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2910
        mmLeft = 4233
        mmTop = 13494
        mmWidth = 33602
        BandType = 7
      end
      object pplblComVig: TppLabel
        UserName = 'lblComVig'
        Caption = 'V : COMPROMISO VIGENTE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2910
        mmLeft = 4233
        mmTop = 16933
        mmWidth = 32808
        BandType = 7
      end
      object ppLabel20: TppLabel
        UserName = 'Label20'
        Caption = 'LEYENDA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold, fsUnderline]
        Transparent = True
        mmHeight = 4191
        mmLeft = 2117
        mmTop = 1323
        mmWidth = 16679
        BandType = 7
      end
      object ppLabel22: TppLabel
        UserName = 'Label101'
        Caption = 'COMPROM = COMPROMISO DE PAGO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2921
        mmLeft = 2117
        mmTop = 6350
        mmWidth = 45170
        BandType = 7
      end
      object ppLabel23: TppLabel
        UserName = 'Label23'
        Caption = 'VAL. = DOMICILIO VALIDADO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2910
        mmLeft = 63765
        mmTop = 6350
        mmWidth = 34396
        BandType = 7
      end
      object pplblValidado: TppLabel
        UserName = 'lblComInc1'
        Caption = 'S : VALIDADO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2921
        mmLeft = 69850
        mmTop = 10054
        mmWidth = 16425
        BandType = 7
      end
      object pplblPorValidar: TppLabel
        UserName = 'lblNoCom1'
        Caption = 'N : POR VALIDAD'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2910
        mmLeft = 69850
        mmTop = 13494
        mmWidth = 20638
        BandType = 7
      end
    end
    object ppParameterList4: TppParameterList
    end
  end
  object ppDBHojaRuta: TppDBPipeline
    UserName = 'ppDBHojaRuta'
    Left = 466
    Top = 299
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
  object ppDBHojaRutaDet: TppDBPipeline
    DataSource = DataSource7
    UserName = 'ppDBHojaRutaDet'
    Left = 378
    Top = 355
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
  object pprHojaRutaDet: TppReport
    AutoStop = False
    DataPipeline = ppDBHojaRutaDet
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
      'D:\Modulos\@Dise'#241'ador de Reportes\Gestion de Cobranzas\HojaRutaD' +
      'et.rtm'
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
    Left = 378
    Top = 387
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBHojaRutaDet'
    object ppHeaderBand9: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 20108
      mmPrintPosition = 0
      object ppSystemVariable13: TppSystemVariable
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
      object ppSystemVariable14: TppSystemVariable
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
      object ppLabel201: TppLabel
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
      object ppLabel206: TppLabel
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
      object ppLabel208: TppLabel
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
      object ppLabel209: TppLabel
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
      object ppSystemVariable15: TppSystemVariable
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
      object ppLabel210: TppLabel
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
      object ppLabel211: TppLabel
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
      object ppLabel212: TppLabel
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
      object ppLabel213: TppLabel
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
      object ppLabel214: TppLabel
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
      object ppSystemVariable16: TppSystemVariable
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
      object ppLabel215: TppLabel
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
      object ppLabel216: TppLabel
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
      object ppLabel217: TppLabel
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
      object ppLabel218: TppLabel
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
      object ppLabel219: TppLabel
        UserName = 'Label67'
        Caption = 'DETALLE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5821
        mmLeft = 52123
        mmTop = 6615
        mmWidth = 100806
        BandType = 0
      end
    end
    object ppDetailBand14: TppDetailBand
      BeforePrint = ppDetailBand14BeforePrint
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 111919
      mmPrintPosition = 0
      object ppLine41: TppLine
        UserName = 'Line21'
        Pen.Color = clWindowText
        Position = lpLeft
        Weight = 1.000000000000000000
        mmHeight = 93398
        mmLeft = 0
        mmTop = 0
        mmWidth = 1323
        BandType = 4
      end
      object ppLine42: TppLine
        UserName = 'Line22'
        Position = lpBottom
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 0
        mmTop = 3440
        mmWidth = 190236
        BandType = 4
      end
      object ppLabel220: TppLabel
        UserName = 'Label11'
        Caption = 'DNI'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 794
        mmTop = 1058
        mmWidth = 4868
        BandType = 4
      end
      object ppDBText33: TppDBText
        UserName = 'DBText15'
        DataField = 'DNI'
        DataPipeline = ppDBHojaRutaDet
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBHojaRutaDet'
        mmHeight = 3175
        mmLeft = 8202
        mmTop = 1058
        mmWidth = 17198
        BandType = 4
      end
      object ppLabel221: TppLabel
        UserName = 'Label12'
        Caption = 'APELLIDOS Y NOMBRES'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 26988
        mmTop = 1058
        mmWidth = 34036
        BandType = 4
      end
      object ppDBText34: TppDBText
        UserName = 'DBText16'
        DataField = 'APELLIDOS_NOMBRES'
        DataPipeline = ppDBHojaRutaDet
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBHojaRutaDet'
        mmHeight = 3175
        mmLeft = 63765
        mmTop = 1058
        mmWidth = 93927
        BandType = 4
      end
      object ppLabel222: TppLabel
        UserName = 'Label29'
        Caption = 'TIPO(DO/CE)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 160867
        mmTop = 1058
        mmWidth = 17441
        BandType = 4
      end
      object ppDBText35: TppDBText
        UserName = 'DBText17'
        DataField = 'TIPO_ASOCIADO'
        DataPipeline = ppDBHojaRutaDet
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBHojaRutaDet'
        mmHeight = 3175
        mmLeft = 180975
        mmTop = 1058
        mmWidth = 7938
        BandType = 4
      end
      object ppLine33: TppLine
        UserName = 'Line33'
        Position = lpRight
        Weight = 1.000000000000000000
        mmHeight = 92604
        mmLeft = 189707
        mmTop = 0
        mmWidth = 529
        BandType = 4
      end
      object ppLabel223: TppLabel
        UserName = 'Label32'
        Caption = 'DOMICILIO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 794
        mmTop = 5821
        mmWidth = 15081
        BandType = 4
      end
      object ppLabel224: TppLabel
        UserName = 'Label35'
        Caption = 'DIST DOM'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 2117
        mmTop = 10583
        mmWidth = 13758
        BandType = 4
      end
      object ppLabel225: TppLabel
        UserName = 'Label45'
        Caption = 'PROV DOM'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 78052
        mmTop = 10583
        mmWidth = 15610
        BandType = 4
      end
      object ppLabel226: TppLabel
        UserName = 'Label46'
        Caption = 'DPTO DOM'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 137584
        mmTop = 10583
        mmWidth = 15346
        BandType = 4
      end
      object ppLine34: TppLine
        UserName = 'Line34'
        Position = lpBottom
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 0
        mmTop = 8202
        mmWidth = 190236
        BandType = 4
      end
      object ppLine31: TppLine
        UserName = 'Line31'
        Position = lpBottom
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 0
        mmTop = 12965
        mmWidth = 190236
        BandType = 4
      end
      object ppLabel227: TppLabel
        UserName = 'Label47'
        Caption = 'COLEGIO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 2910
        mmTop = 15346
        mmWidth = 12965
        BandType = 4
      end
      object ppLabel228: TppLabel
        UserName = 'Label48'
        Caption = 'DIST COL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 2646
        mmTop = 20108
        mmWidth = 13229
        BandType = 4
      end
      object ppLabel229: TppLabel
        UserName = 'Label49'
        Caption = 'PROV COL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 78846
        mmTop = 20108
        mmWidth = 14817
        BandType = 4
      end
      object ppLabel230: TppLabel
        UserName = 'Label50'
        Caption = 'DPTO COL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 138377
        mmTop = 20108
        mmWidth = 14552
        BandType = 4
      end
      object ppLine32: TppLine
        UserName = 'Line32'
        Position = lpBottom
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 0
        mmTop = 17727
        mmWidth = 190236
        BandType = 4
      end
      object ppLine35: TppLine
        UserName = 'Line35'
        Position = lpBottom
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 0
        mmTop = 22490
        mmWidth = 190236
        BandType = 4
      end
      object ppLabel231: TppLabel
        UserName = 'Label51'
        Caption = 'SITUACION'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 5556
        mmTop = 29633
        mmWidth = 15346
        BandType = 4
      end
      object ppLabel232: TppLabel
        UserName = 'Label52'
        Caption = 'COMPROMISO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 794
        mmTop = 24871
        mmWidth = 20108
        BandType = 4
      end
      object ppLabel233: TppLabel
        UserName = 'Label53'
        Caption = 'MTO COMPROMISO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 66411
        mmTop = 24871
        mmWidth = 27252
        BandType = 4
      end
      object ppLabel234: TppLabel
        UserName = 'Label501'
        Caption = 'NRO CREDITOS PEND PAGO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 137319
        mmTop = 24871
        mmWidth = 39158
        BandType = 4
      end
      object ppLine36: TppLine
        UserName = 'Line36'
        Position = lpBottom
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 0
        mmTop = 27252
        mmWidth = 190236
        BandType = 4
      end
      object ppLine37: TppLine
        UserName = 'Line37'
        Pen.Width = 3
        Position = lpBottom
        Weight = 2.250000000000000000
        mmHeight = 1852
        mmLeft = 0
        mmTop = 32279
        mmWidth = 190236
        BandType = 4
      end
      object ppLine38: TppLine
        UserName = 'Line38'
        Weight = 1.000000000000000000
        mmHeight = 1852
        mmLeft = 0
        mmTop = 0
        mmWidth = 190236
        BandType = 4
      end
      object ppLine39: TppLine
        UserName = 'Line39'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5292
        mmLeft = 6615
        mmTop = 0
        mmWidth = 1323
        BandType = 4
      end
      object ppLine40: TppLine
        UserName = 'Line40'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5292
        mmLeft = 26194
        mmTop = 0
        mmWidth = 1323
        BandType = 4
      end
      object ppLine43: TppLine
        UserName = 'Line43'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 19050
        mmLeft = 16933
        mmTop = 5292
        mmWidth = 1323
        BandType = 4
      end
      object ppLine45: TppLine
        UserName = 'Line45'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 9260
        mmLeft = 21696
        mmTop = 24342
        mmWidth = 1323
        BandType = 4
      end
      object ppLine46: TppLine
        UserName = 'Line46'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5027
        mmLeft = 62177
        mmTop = 265
        mmWidth = 1323
        BandType = 4
      end
      object ppLine47: TppLine
        UserName = 'Line47'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 94721
        mmTop = 9790
        mmWidth = 1323
        BandType = 4
      end
      object ppLine48: TppLine
        UserName = 'Line48'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5292
        mmLeft = 179652
        mmTop = 0
        mmWidth = 1323
        BandType = 4
      end
      object ppLine49: TppLine
        UserName = 'Line49'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5292
        mmLeft = 159279
        mmTop = 0
        mmWidth = 1323
        BandType = 4
      end
      object ppLine50: TppLine
        UserName = 'Line50'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 177536
        mmTop = 24342
        mmWidth = 1323
        BandType = 4
      end
      object ppLine51: TppLine
        UserName = 'Line51'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4498
        mmLeft = 154252
        mmTop = 10054
        mmWidth = 1323
        BandType = 4
      end
      object ppLine52: TppLine
        UserName = 'Line52'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5027
        mmLeft = 154252
        mmTop = 19315
        mmWidth = 1323
        BandType = 4
      end
      object ppLine53: TppLine
        UserName = 'Line53'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14023
        mmLeft = 94721
        mmTop = 19315
        mmWidth = 1323
        BandType = 4
      end
      object ppLine54: TppLine
        UserName = 'Line54'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14023
        mmLeft = 65881
        mmTop = 19315
        mmWidth = 1323
        BandType = 4
      end
      object ppLine55: TppLine
        UserName = 'Line55'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 65881
        mmTop = 9790
        mmWidth = 1323
        BandType = 4
      end
      object ppLine56: TppLine
        UserName = 'Line56'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 135202
        mmTop = 9790
        mmWidth = 1323
        BandType = 4
      end
      object ppLine57: TppLine
        UserName = 'Line57'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 9790
        mmLeft = 135202
        mmTop = 19315
        mmWidth = 1323
        BandType = 4
      end
      object ppDBText36: TppDBText
        UserName = 'DBText18'
        DataField = 'DIRECCION_DOM'
        DataPipeline = ppDBHojaRutaDet
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBHojaRutaDet'
        mmHeight = 3175
        mmLeft = 17992
        mmTop = 5821
        mmWidth = 171186
        BandType = 4
      end
      object ppDBText37: TppDBText
        UserName = 'DBText21'
        DataField = 'DIST_DOM'
        DataPipeline = ppDBHojaRutaDet
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBHojaRutaDet'
        mmHeight = 3175
        mmLeft = 17992
        mmTop = 10583
        mmWidth = 46567
        BandType = 4
      end
      object ppDBText38: TppDBText
        UserName = 'DBText22'
        DataField = 'NOMCENEDU'
        DataPipeline = ppDBHojaRutaDet
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBHojaRutaDet'
        mmHeight = 3175
        mmLeft = 17992
        mmTop = 15346
        mmWidth = 170921
        BandType = 4
      end
      object ppDBText39: TppDBText
        UserName = 'DBText23'
        DataField = 'DIST_COL'
        DataPipeline = ppDBHojaRutaDet
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBHojaRutaDet'
        mmHeight = 3175
        mmLeft = 17992
        mmTop = 20108
        mmWidth = 46038
        BandType = 4
      end
      object ppDBText40: TppDBText
        UserName = 'DBText24'
        DataField = 'PROV_COL'
        DataPipeline = ppDBHojaRutaDet
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBHojaRutaDet'
        mmHeight = 3175
        mmLeft = 96309
        mmTop = 20108
        mmWidth = 37835
        BandType = 4
      end
      object ppDBText41: TppDBText
        UserName = 'DBText25'
        DataField = 'PROV_DOM'
        DataPipeline = ppDBHojaRutaDet
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBHojaRutaDet'
        mmHeight = 3175
        mmLeft = 96309
        mmTop = 10583
        mmWidth = 37835
        BandType = 4
      end
      object ppDBText42: TppDBText
        UserName = 'DBText26'
        DataField = 'DPTO_COL'
        DataPipeline = ppDBHojaRutaDet
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBHojaRutaDet'
        mmHeight = 3175
        mmLeft = 155311
        mmTop = 20108
        mmWidth = 34396
        BandType = 4
      end
      object ppDBText43: TppDBText
        UserName = 'DBText32'
        DataField = 'DPTO_DOM'
        DataPipeline = ppDBHojaRutaDet
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBHojaRutaDet'
        mmHeight = 3175
        mmLeft = 155311
        mmTop = 10583
        mmWidth = 34396
        BandType = 4
      end
      object ppDBText44: TppDBText
        UserName = 'DBText33'
        DataField = 'FECHA_COMPROMISO'
        DataPipeline = ppDBHojaRutaDet
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBHojaRutaDet'
        mmHeight = 3175
        mmLeft = 22754
        mmTop = 24871
        mmWidth = 23283
        BandType = 4
      end
      object ppDBText45: TppDBText
        UserName = 'DBText34'
        DataField = 'MONTO_COMPROMISO'
        DataPipeline = ppDBHojaRutaDet
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBHojaRutaDet'
        mmHeight = 3175
        mmLeft = 96309
        mmTop = 24871
        mmWidth = 37835
        BandType = 4
      end
      object ppDBText46: TppDBText
        UserName = 'DBText35'
        DataField = 'CANT_CRE_PEN_PAGO'
        DataPipeline = ppDBHojaRutaDet
        DisplayFormat = '#,0;-#,0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBHojaRutaDet'
        mmHeight = 3175
        mmLeft = 178065
        mmTop = 24871
        mmWidth = 10848
        BandType = 4
      end
      object ppDBText47: TppDBText
        UserName = 'DBText36'
        DataField = 'SITUACION_PADRON'
        DataPipeline = ppDBHojaRutaDet
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBHojaRutaDet'
        mmHeight = 3175
        mmLeft = 22754
        mmTop = 29633
        mmWidth = 40746
        BandType = 4
      end
      object ppLine58: TppLine
        UserName = 'Line58'
        Position = lpBottom
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 0
        mmTop = 37042
        mmWidth = 190236
        BandType = 4
      end
      object ppLine59: TppLine
        UserName = 'Line59'
        Position = lpBottom
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 0
        mmTop = 41804
        mmWidth = 189971
        BandType = 4
      end
      object ppLine60: TppLine
        UserName = 'Line60'
        Position = lpBottom
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 0
        mmTop = 46302
        mmWidth = 190236
        BandType = 4
      end
      object ppLabel235: TppLabel
        UserName = 'Label59'
        Caption = 'SALDOS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 65617
        mmTop = 34660
        mmWidth = 11684
        BandType = 4
      end
      object ppLabel236: TppLabel
        UserName = 'Label601'
        Caption = 'CONCEPTO DE CUOTAS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 152136
        mmTop = 34660
        mmWidth = 33073
        BandType = 4
      end
      object ppLabel237: TppLabel
        UserName = 'Label62'
        Caption = 'SALDO VENCIDO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 3440
        mmTop = 39423
        mmWidth = 23548
        BandType = 4
      end
      object ppLabel238: TppLabel
        UserName = 'Label63'
        Caption = 'SALDO DIFERIDO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 2910
        mmTop = 43921
        mmWidth = 24077
        BandType = 4
      end
      object ppLabel239: TppLabel
        UserName = 'Label64'
        Caption = 'PACTADAS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 155311
        mmTop = 39423
        mmWidth = 14817
        BandType = 4
      end
      object ppLabel240: TppLabel
        UserName = 'Label65'
        Caption = 'VALOR CUOTA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 150019
        mmTop = 43921
        mmWidth = 20108
        BandType = 4
      end
      object ppLine61: TppLine
        UserName = 'Line61'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 9525
        mmLeft = 28310
        mmTop = 38629
        mmWidth = 1323
        BandType = 4
      end
      object ppLine62: TppLine
        UserName = 'Line62'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 9525
        mmLeft = 171450
        mmTop = 38629
        mmWidth = 1323
        BandType = 4
      end
      object ppLine63: TppLine
        UserName = 'Line63'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14288
        mmLeft = 146050
        mmTop = 33602
        mmWidth = 1323
        BandType = 4
      end
      object ppLabel241: TppLabel
        UserName = 'Label60'
        Caption = 'CUOTAS SALDO VENCIDO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 67469
        mmTop = 39423
        mmWidth = 35983
        BandType = 4
      end
      object ppLabel242: TppLabel
        UserName = 'Label66'
        Caption = 'CUOTAS SALDO DIFERIDO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 66940
        mmTop = 43921
        mmWidth = 36513
        BandType = 4
      end
      object ppLine64: TppLine
        UserName = 'Line64'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 9525
        mmLeft = 104511
        mmTop = 38629
        mmWidth = 1323
        BandType = 4
      end
      object ppLine65: TppLine
        UserName = 'Line65'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 9525
        mmLeft = 65352
        mmTop = 38629
        mmWidth = 1323
        BandType = 4
      end
      object ppLine66: TppLine
        UserName = 'Line66'
        Pen.Width = 3
        Position = lpBottom
        Weight = 2.250000000000000000
        mmHeight = 1852
        mmLeft = 0
        mmTop = 46567
        mmWidth = 190236
        BandType = 4
      end
      object pplblSaldoVencido: TppLabel
        UserName = 'lblSaldoVencido'
        AutoSize = False
        Caption = '335.93'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3260
        mmLeft = 29633
        mmTop = 39423
        mmWidth = 24077
        BandType = 4
      end
      object pplblSaldoDiferido: TppLabel
        UserName = 'lblSaldoVencido1'
        AutoSize = False
        Caption = '.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 29633
        mmTop = 43921
        mmWidth = 24077
        BandType = 4
      end
      object pplblCuotasSaldoVencido: TppLabel
        UserName = 'lblSaldoVencido2'
        AutoSize = False
        Caption = '1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 105304
        mmTop = 39423
        mmWidth = 14288
        BandType = 4
      end
      object pplblCuotasSaldoDiferido: TppLabel
        UserName = 'lblSaldoVencido3'
        AutoSize = False
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 105304
        mmTop = 43921
        mmWidth = 14288
        BandType = 4
      end
      object pplblCuotasPactadas: TppLabel
        UserName = 'lblSaldoVencido4'
        AutoSize = False
        Caption = '72'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 172244
        mmTop = 39423
        mmWidth = 13494
        BandType = 4
      end
      object pplblValorCuota: TppLabel
        UserName = 'lblValorCuota'
        AutoSize = False
        Caption = '335.93'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 172244
        mmTop = 43921
        mmWidth = 13494
        BandType = 4
      end
      object ppLine67: TppLine
        UserName = 'Line67'
        Position = lpBottom
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 0
        mmTop = 56092
        mmWidth = 190236
        BandType = 4
      end
      object ppLine68: TppLine
        UserName = 'Line68'
        Position = lpBottom
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 0
        mmTop = 60854
        mmWidth = 190236
        BandType = 4
      end
      object ppLabel243: TppLabel
        UserName = 'Label68'
        Caption = 'ULTIMOS TRES DESCARGOS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3440
        mmLeft = 1588
        mmTop = 53446
        mmWidth = 39952
        BandType = 4
      end
      object ppLabel244: TppLabel
        UserName = 'Label69'
        Caption = 'SEGMENTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 138377
        mmTop = 53711
        mmWidth = 16140
        BandType = 4
      end
      object pplblUltDescargos_Des_01: TppLabel
        UserName = 'lblUltDescargos_Des_01'
        Caption = 'PLA JUL 2014'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 1852
        mmTop = 58473
        mmWidth = 18785
        BandType = 4
      end
      object pplblUltDescargos_Des_02: TppLabel
        UserName = 'lblUltDescargos_Des_02'
        Caption = 'PLA MAY 2014'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 1852
        mmTop = 62971
        mmWidth = 19050
        BandType = 4
      end
      object ppLabel245: TppLabel
        UserName = 'Label72'
        Caption = 'CONTENCION'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3387
        mmLeft = 136790
        mmTop = 58473
        mmWidth = 18965
        BandType = 4
      end
      object ppLabel246: TppLabel
        UserName = 'Label73'
        Caption = 'ZONA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 103452
        mmTop = 62442
        mmWidth = 7874
        BandType = 4
      end
      object ppLine70: TppLine
        UserName = 'Line70'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 13758
        mmLeft = 22754
        mmTop = 57944
        mmWidth = 1323
        BandType = 4
      end
      object ppLine71: TppLine
        UserName = 'Line71'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 9525
        mmLeft = 113242
        mmTop = 62442
        mmWidth = 1323
        BandType = 4
      end
      object ppLine72: TppLine
        UserName = 'Line72'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 18785
        mmLeft = 92604
        mmTop = 52652
        mmWidth = 1323
        BandType = 4
      end
      object pplblUltPagosDirectos_Des_01: TppLabel
        UserName = 'Label602'
        Caption = 'EFE 15/02/2013'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3440
        mmLeft = 43921
        mmTop = 58473
        mmWidth = 23019
        BandType = 4
      end
      object pplblUltPagosDirectos_Des_02: TppLabel
        UserName = 'lblUltPagosDirectos_Des_02'
        Caption = 'EFE 30/05/2012'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3440
        mmLeft = 43921
        mmTop = 62971
        mmWidth = 23019
        BandType = 4
      end
      object ppLine73: TppLine
        UserName = 'Line73'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 13494
        mmLeft = 67733
        mmTop = 57944
        mmWidth = 1323
        BandType = 4
      end
      object pplblUltDescargos_Mto_01: TppLabel
        UserName = 'lblSaldoVencido5'
        AutoSize = False
        Caption = '671.86'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 24077
        mmTop = 58473
        mmWidth = 16933
        BandType = 4
      end
      object pplblUltDescargos_Mto_02: TppLabel
        UserName = 'lblUltDescargos_Mto_02'
        AutoSize = False
        Caption = '335.93'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 24077
        mmTop = 62971
        mmWidth = 16933
        BandType = 4
      end
      object pplblUltPagosDirectos_Mto_01: TppLabel
        UserName = 'lblUltPagosDirectos_Mto_01'
        AutoSize = False
        Caption = '335.93'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 68527
        mmTop = 58473
        mmWidth = 15875
        BandType = 4
      end
      object pplblUltPagosDirectos_Mto_02: TppLabel
        UserName = 'lblUltPagosDirectos_Mto_02'
        AutoSize = False
        Caption = '335.93'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 68527
        mmTop = 62971
        mmWidth = 15875
        BandType = 4
      end
      object ppLine76: TppLine
        UserName = 'Line76'
        Position = lpBottom
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 0
        mmTop = 51065
        mmWidth = 190236
        BandType = 4
      end
      object ppLabel247: TppLabel
        UserName = 'Label82'
        Caption = 'DETALLE DE PAGO DE LOS ULTIMOS TRES MESES'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3440
        mmLeft = 59002
        mmTop = 48683
        mmWidth = 70115
        BandType = 4
      end
      object ppLabel248: TppLabel
        UserName = 'Label83'
        Caption = 'ULTIMOS TRES PAGOS DIRECTOS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3440
        mmLeft = 44450
        mmTop = 53446
        mmWidth = 47096
        BandType = 4
      end
      object ppLine77: TppLine
        UserName = 'Line77'
        Position = lpBottom
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 0
        mmTop = 65352
        mmWidth = 190236
        BandType = 4
      end
      object ppLine78: TppLine
        UserName = 'Line78'
        Position = lpBottom
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 0
        mmTop = 69850
        mmWidth = 190236
        BandType = 4
      end
      object pplblUltDescargos_Des_03: TppLabel
        UserName = 'lblUltDescargos_Des_03'
        Caption = 'PLA ABR 2014'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 1852
        mmTop = 67469
        mmWidth = 19315
        BandType = 4
      end
      object ppLabel249: TppLabel
        UserName = 'Label85'
        Caption = 'CUADRANTE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 93927
        mmTop = 67469
        mmWidth = 17463
        BandType = 4
      end
      object pplblUltPagosDirectos_Des_03: TppLabel
        UserName = 'lblUltPagosDirectos_Des_03'
        Caption = 'EFE 06/05/2011'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3440
        mmLeft = 43921
        mmTop = 67469
        mmWidth = 23019
        BandType = 4
      end
      object ppLine84: TppLine
        UserName = 'Line84'
        Pen.Width = 3
        Position = lpBottom
        Weight = 2.250000000000000000
        mmHeight = 1852
        mmLeft = 0
        mmTop = 70115
        mmWidth = 190236
        BandType = 4
      end
      object pplblUltDescargos_Mto_03: TppLabel
        UserName = 'lblUltDescargos_Mto_03'
        AutoSize = False
        Caption = '671.86'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 24077
        mmTop = 67469
        mmWidth = 16933
        BandType = 4
      end
      object pplblUltPagosDirectos_Mto_03: TppLabel
        UserName = 'lblUltPagosDirectos_Mto_03'
        AutoSize = False
        Caption = '211.27'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 68527
        mmTop = 67469
        mmWidth = 15875
        BandType = 4
      end
      object ppLine69: TppLine
        UserName = 'Line69'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 18256
        mmLeft = 43127
        mmTop = 52917
        mmWidth = 1323
        BandType = 4
      end
      object ppLabel256: TppLabel
        UserName = 'Label701'
        Caption = 'N'#218'MERO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3440
        mmLeft = 4498
        mmTop = 72231
        mmWidth = 12700
        BandType = 4
      end
      object ppLabel257: TppLabel
        UserName = 'Label257'
        Caption = 'TIPO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3440
        mmLeft = 21167
        mmTop = 72231
        mmWidth = 6615
        BandType = 4
      end
      object ppLabel258: TppLabel
        UserName = 'Label258'
        Caption = 'RESULTADO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 61119
        mmTop = 72231
        mmWidth = 16933
        BandType = 4
      end
      object ppLabel259: TppLabel
        UserName = 'Label259'
        Caption = 'GESTIONADO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 130440
        mmTop = 72231
        mmWidth = 20108
        BandType = 4
      end
      object ppLabel260: TppLabel
        UserName = 'Label260'
        Caption = 'FECHA Y HORA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 165894
        mmTop = 72231
        mmWidth = 21167
        BandType = 4
      end
      object ppLine11: TppLine
        UserName = 'Line1'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 21960
        mmLeft = 19844
        mmTop = 71173
        mmWidth = 1852
        BandType = 4
      end
      object ppLine12: TppLine
        UserName = 'Line12'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 21960
        mmLeft = 60325
        mmTop = 71173
        mmWidth = 1852
        BandType = 4
      end
      object ppLine13: TppLine
        UserName = 'Line2'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 22225
        mmLeft = 129382
        mmTop = 71173
        mmWidth = 1852
        BandType = 4
      end
      object ppLine14: TppLine
        UserName = 'Line901'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 21960
        mmLeft = 160338
        mmTop = 71173
        mmWidth = 1852
        BandType = 4
      end
      object ppLine16: TppLine
        UserName = 'Line3'
        Position = lpBottom
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 0
        mmTop = 74348
        mmWidth = 190236
        BandType = 4
      end
      object ppLine94: TppLine
        UserName = 'Line94'
        Position = lpBottom
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 0
        mmTop = 78581
        mmWidth = 190236
        BandType = 4
      end
      object ppLine15: TppLine
        UserName = 'Line15'
        Position = lpBottom
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 0
        mmTop = 82815
        mmWidth = 190236
        BandType = 4
      end
      object ppLine99: TppLine
        UserName = 'Line99'
        Position = lpBottom
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 0
        mmTop = 87048
        mmWidth = 190236
        BandType = 4
      end
      object ppLine100: TppLine
        UserName = 'Line100'
        Position = lpBottom
        Weight = 1.000000000000000000
        mmHeight = 1852
        mmLeft = 0
        mmTop = 91546
        mmWidth = 190236
        BandType = 4
      end
      object pplblGesNum_01: TppLabel
        UserName = 'lblGesNum_01'
        AutoSize = False
        Caption = '101950'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3260
        mmLeft = 794
        mmTop = 76465
        mmWidth = 17992
        BandType = 4
      end
      object pplblGesNum_02: TppLabel
        UserName = 'Label2501'
        AutoSize = False
        Caption = '268043'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3260
        mmLeft = 794
        mmTop = 80698
        mmWidth = 17992
        BandType = 4
      end
      object pplblGesNum_03: TppLabel
        UserName = 'Label2502'
        AutoSize = False
        Caption = '000755'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3260
        mmLeft = 794
        mmTop = 85196
        mmWidth = 17992
        BandType = 4
      end
      object pplblGesNum_04: TppLabel
        UserName = 'Label2503'
        AutoSize = False
        Caption = '723468'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3260
        mmLeft = 794
        mmTop = 89429
        mmWidth = 17992
        BandType = 4
      end
      object pplblGesTipo_01: TppLabel
        UserName = 'Label2504'
        AutoSize = False
        Caption = 'TELEFONICA (Externa)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 21167
        mmTop = 76465
        mmWidth = 38365
        BandType = 4
      end
      object pplblGesTipo_02: TppLabel
        UserName = 'lblGesTipo_02'
        AutoSize = False
        Caption = 'TELEFONICA (Externa)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 21167
        mmTop = 80698
        mmWidth = 38365
        BandType = 4
      end
      object pplblGesTipo_03: TppLabel
        UserName = 'lblGesTipo_03'
        AutoSize = False
        Caption = 'DOMICILIARIA (Interna)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 21167
        mmTop = 85196
        mmWidth = 38365
        BandType = 4
      end
      object pplblGesTipo_04: TppLabel
        UserName = 'lblGesTipo_04'
        AutoSize = False
        Caption = 'TELEFONICA (Externa)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 21167
        mmTop = 89429
        mmWidth = 38365
        BandType = 4
      end
      object pplblGesResultado_01: TppLabel
        UserName = 'Label2505'
        AutoSize = False
        Caption = 'CONTACTO TITULAR(CELULAR)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 61383
        mmTop = 76465
        mmWidth = 66675
        BandType = 4
      end
      object pplblGesResultado_02: TppLabel
        UserName = 'lblGesResultado_02'
        AutoSize = False
        Caption = 'NO EXISTE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 61383
        mmTop = 80698
        mmWidth = 66675
        BandType = 4
      end
      object pplblGesResultado_03: TppLabel
        UserName = 'lblGesResultado_03'
        AutoSize = False
        Caption = 'SE MUDO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 61383
        mmTop = 85196
        mmWidth = 66675
        BandType = 4
      end
      object pplblGesResultado_04: TppLabel
        UserName = 'lblGesResultado_04'
        AutoSize = False
        Caption = 'CONTACTO TITULAR (TELEFONO FIJO)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 61383
        mmTop = 89429
        mmWidth = 66675
        BandType = 4
      end
      object pplblGesGestionado_04: TppLabel
        UserName = 'lblGesGestionado_04'
        AutoSize = False
        Caption = '00006'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 130440
        mmTop = 89429
        mmWidth = 28575
        BandType = 4
      end
      object pplblGesGestionado_03: TppLabel
        UserName = 'lblGesGestionado_03'
        AutoSize = False
        Caption = 'JPALACIOS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 130440
        mmTop = 85196
        mmWidth = 28575
        BandType = 4
      end
      object pplblGesGestionado_02: TppLabel
        UserName = 'lblGesGestionado_02'
        AutoSize = False
        Caption = '00006'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 130440
        mmTop = 80698
        mmWidth = 28575
        BandType = 4
      end
      object pplblGesGestionado_01: TppLabel
        UserName = 'Label2506'
        AutoSize = False
        Caption = '00006'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 130440
        mmTop = 76465
        mmWidth = 28575
        BandType = 4
      end
      object pplblGesFecHor_03: TppLabel
        UserName = 'lblGesFecHor_03'
        AutoSize = False
        Caption = '02/02/2011 17:51:22'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 161661
        mmTop = 85196
        mmWidth = 27517
        BandType = 4
      end
      object pplblGesFecHor_04: TppLabel
        UserName = 'lblGesFecHor_04'
        AutoSize = False
        Caption = '17/09/2010 08:36:19'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 161661
        mmTop = 89429
        mmWidth = 27517
        BandType = 4
      end
      object pplblGesFecHor_02: TppLabel
        UserName = 'lblGesFecHor_02'
        AutoSize = False
        Caption = '17/05/2012 17:21:27'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 161661
        mmTop = 80698
        mmWidth = 27517
        BandType = 4
      end
      object pplblGesFecHor_01: TppLabel
        UserName = 'Label2507'
        AutoSize = False
        Caption = '09/02/2013 13:52:17'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 161661
        mmTop = 76465
        mmWidth = 27517
        BandType = 4
      end
      object ppShape6: TppShape
        UserName = 'Shape6'
        Pen.Color = clWhite
        mmHeight = 6350
        mmLeft = 529
        mmTop = 105569
        mmWidth = 13229
        BandType = 4
      end
      object ppLabel24: TppLabel
        UserName = 'Label24'
        Caption = 'TELEFONOS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 76465
        mmTop = 29369
        mmWidth = 17198
        BandType = 4
      end
      object pplblTelefonos: TppLabel
        UserName = 'lblTelefonos'
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 96309
        mmTop = 29369
        mmWidth = 92604
        BandType = 4
      end
    end
    object ppFooterBand9: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 15081
      mmPrintPosition = 0
      object ppRichText3: TppRichText
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
      object ppLine44: TppLine
        UserName = 'Line16'
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 132557
        mmTop = 8996
        mmWidth = 56621
        BandType = 8
      end
      object ppLabel255: TppLabel
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
    object ppSummaryBand10: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppGroup3: TppGroup
      BreakName = 'COMPROMISO'
      DataPipeline = ppDBHojaRutaDet
      OutlineSettings.CreateNode = True
      NewPage = True
      UserName = 'Group3'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBHojaRutaDet'
      object ppGroupHeaderBand3: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 6615
        mmPrintPosition = 0
        object ppDBText53: TppDBText
          UserName = 'DBText37'
          AutoSize = True
          DataField = 'COMPROMISO'
          DataPipeline = ppDBHojaRutaDet
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppDBHojaRutaDet'
          mmHeight = 3387
          mmLeft = 0
          mmTop = 1058
          mmWidth = 20108
          BandType = 3
          GroupNo = 0
        end
        object ppLine93: TppLine
          UserName = 'Line93'
          Pen.Width = 3
          Position = lpBottom
          Weight = 2.250000000000000000
          mmHeight = 1852
          mmLeft = 0
          mmTop = 3440
          mmWidth = 190236
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand3: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
    object ppParameterList5: TppParameterList
    end
  end
  object ppdHojaRutaDet: TppDesigner
    Caption = 'ReportBuilder'
    DataSettings.SessionType = 'BDESession'
    DataSettings.AllowEditSQL = False
    DataSettings.CollationType = ctASCII
    DataSettings.DatabaseType = dtParadox
    DataSettings.IsCaseSensitive = True
    DataSettings.SQLType = sqBDELocal
    Position = poScreenCenter
    Report = pprHojaRutaDet
    IniStorageType = 'IniFile'
    IniStorageName = '($WINSYS)\RBuilder.ini'
    WindowHeight = 400
    WindowLeft = 100
    WindowTop = 50
    WindowWidth = 600
    Left = 378
    Top = 419
  end
  object DataSource7: TDataSource
    Left = 379
    Top = 320
  end
end
