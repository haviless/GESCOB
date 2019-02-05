object fSegControl: TfSegControl
  Left = 315
  Top = 59
  Width = 727
  Height = 663
  Caption = 'Seguimiento y Control'
  Color = 10207162
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 13
  object pnlBusqueda: TPanel
    Left = 0
    Top = 0
    Width = 711
    Height = 41
    Align = alTop
    ParentColor = True
    TabOrder = 0
    DesignSize = (
      711
      41)
    object lblTitulo: TLabel
      Left = 189
      Top = 12
      Width = 448
      Height = 17
      AutoSize = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl1: TLabel
      Left = 10
      Top = 5
      Width = 74
      Height = 32
      Caption = 'Periodo'#13#10'de Cartera'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object cboPeriodoCartera: TwwDBLookupCombo
      Left = 94
      Top = 9
      Width = 90
      Height = 25
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      DropDownAlignment = taLeftJustify
      LookupTable = DM1.cdsQry3
      Options = [loColLines, loRowLines]
      Style = csDropDownList
      ParentFont = False
      TabOrder = 0
      AutoDropDown = False
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      OnChange = cboPeriodoCarteraChange
    end
    object btnExportar: TBitBtn
      Left = 607
      Top = 6
      Width = 100
      Height = 32
      Anchors = [akTop, akRight]
      Caption = 'Exportar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = btnExportarClick
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
  end
  object dbgData: TwwDBGrid
    Left = 481
    Top = 113
    Width = 168
    Height = 96
    DisableThemesInTitle = False
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowFooter]
    ParentFont = False
    TabOrder = 1
    TitleAlignment = taCenter
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
    TitleLines = 1
    TitleButtons = False
    FooterCellColor = 16776176
    PaintOptions.AlternatingRowColor = clInfoBk
  end
  object pnlGraficos: TPanel
    Left = 0
    Top = 41
    Width = 711
    Height = 584
    Align = alClient
    Caption = 'pnlGraficos'
    ParentColor = True
    TabOrder = 2
    object DBChart01: TDBChart
      Left = 1
      Top = 1
      Width = 709
      Height = 120
      Cursor = crHandPoint
      BackWall.Brush.Color = clWhite
      BackWall.Brush.Style = bsClear
      BackWall.Color = clWhite
      BottomWall.Brush.Color = clWhite
      BottomWall.Brush.Style = bsClear
      Gradient.Direction = gdBottomTop
      Gradient.EndColor = clWhite
      Gradient.Visible = True
      Title.Font.Charset = DEFAULT_CHARSET
      Title.Font.Color = clBlack
      Title.Font.Height = -13
      Title.Font.Name = 'Arial'
      Title.Font.Style = [fsBold]
      Title.Text.Strings = (
        '')
      OnClickSeries = DBChart01ClickSeries
      BackColor = clWhite
      BottomAxis.LabelsAngle = 90
      BottomAxis.LabelsFont.Charset = ANSI_CHARSET
      BottomAxis.LabelsFont.Color = clBlack
      BottomAxis.LabelsFont.Height = -11
      BottomAxis.LabelsFont.Name = 'Arial'
      BottomAxis.LabelsFont.Style = [fsBold]
      LeftAxis.ExactDateTime = False
      LeftAxis.Increment = 1.000000000000000000
      LeftAxis.LabelsFont.Charset = DEFAULT_CHARSET
      LeftAxis.LabelsFont.Color = clBlack
      LeftAxis.LabelsFont.Height = -11
      LeftAxis.LabelsFont.Name = 'Arial'
      LeftAxis.LabelsFont.Style = [fsBold]
      Legend.Font.Charset = DEFAULT_CHARSET
      Legend.Font.Color = clBlack
      Legend.Font.Height = -13
      Legend.Font.Name = 'Arial'
      Legend.Font.Style = [fsBold]
      View3D = False
      Align = alTop
      Color = clWindow
      TabOrder = 0
    end
    object DBChart03: TDBChart
      Left = 1
      Top = 297
      Width = 709
      Height = 286
      Cursor = crHandPoint
      BackWall.Brush.Color = clWhite
      BackWall.Brush.Style = bsClear
      BackWall.Color = clWhite
      BottomWall.Brush.Color = clWhite
      BottomWall.Brush.Style = bsClear
      Gradient.Direction = gdBottomTop
      Gradient.EndColor = clWhite
      Gradient.Visible = True
      Title.Font.Charset = DEFAULT_CHARSET
      Title.Font.Color = clBlack
      Title.Font.Height = -13
      Title.Font.Name = 'Arial'
      Title.Font.Style = [fsBold]
      Title.Text.Strings = (
        '')
      OnClickSeries = DBChart03ClickSeries
      BackColor = clWhite
      BottomAxis.LabelsAngle = 90
      BottomAxis.LabelsFont.Charset = ANSI_CHARSET
      BottomAxis.LabelsFont.Color = clBlack
      BottomAxis.LabelsFont.Height = -11
      BottomAxis.LabelsFont.Name = 'Arial'
      BottomAxis.LabelsFont.Style = [fsBold]
      LeftAxis.ExactDateTime = False
      LeftAxis.Increment = 1.000000000000000000
      LeftAxis.LabelsFont.Charset = DEFAULT_CHARSET
      LeftAxis.LabelsFont.Color = clBlack
      LeftAxis.LabelsFont.Height = -11
      LeftAxis.LabelsFont.Name = 'Arial'
      LeftAxis.LabelsFont.Style = [fsBold]
      Legend.Font.Charset = DEFAULT_CHARSET
      Legend.Font.Color = clBlack
      Legend.Font.Height = -13
      Legend.Font.Name = 'Arial'
      Legend.Font.Style = [fsBold]
      View3D = False
      Align = alClient
      Color = clWindow
      TabOrder = 1
    end
    object DBChart02: TDBChart
      Left = 1
      Top = 121
      Width = 709
      Height = 176
      Cursor = crHandPoint
      BackWall.Brush.Color = clWhite
      BackWall.Brush.Style = bsClear
      BackWall.Color = clWhite
      BottomWall.Brush.Color = clWhite
      BottomWall.Brush.Style = bsClear
      Gradient.Direction = gdBottomTop
      Gradient.EndColor = clWhite
      Gradient.Visible = True
      Title.Font.Charset = DEFAULT_CHARSET
      Title.Font.Color = clBlack
      Title.Font.Height = -13
      Title.Font.Name = 'Arial'
      Title.Font.Style = [fsBold]
      Title.Text.Strings = (
        '')
      OnClickSeries = DBChart02ClickSeries
      BackColor = clWhite
      BottomAxis.LabelsAngle = 90
      BottomAxis.LabelsFont.Charset = ANSI_CHARSET
      BottomAxis.LabelsFont.Color = clBlack
      BottomAxis.LabelsFont.Height = -11
      BottomAxis.LabelsFont.Name = 'Arial'
      BottomAxis.LabelsFont.Style = [fsBold]
      LeftAxis.ExactDateTime = False
      LeftAxis.Increment = 1.000000000000000000
      LeftAxis.LabelsFont.Charset = DEFAULT_CHARSET
      LeftAxis.LabelsFont.Color = clBlack
      LeftAxis.LabelsFont.Height = -11
      LeftAxis.LabelsFont.Name = 'Arial'
      LeftAxis.LabelsFont.Style = [fsBold]
      Legend.Font.Charset = DEFAULT_CHARSET
      Legend.Font.Color = clBlack
      Legend.Font.Height = -13
      Legend.Font.Name = 'Arial'
      Legend.Font.Style = [fsBold]
      View3D = False
      Align = alTop
      Color = clWindow
      TabOrder = 2
    end
  end
  object SaveDialog1: TSaveDialog
    Filter = '*.slk'
    Left = 121
    Top = 370
  end
end
