object fGestRealizadas: TfGestRealizadas
  Left = 380
  Top = 214
  BorderStyle = bsDialog
  Caption = 'Detalle de Gestiones Realizadas'
  ClientHeight = 280
  ClientWidth = 689
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
  object dtgDetGes: TwwDBGrid
    Left = 6
    Top = 7
    Width = 701
    Height = 234
    Cursor = crHandPoint
    DisableThemesInTitle = False
    Selected.Strings = (
      'DESGES'#9'25'#9'Tipo Gesti'#243'n'#9#9
      'DESGESDET'#9'45'#9'Resultados de Gesti'#243'n'#9#9
      'CONTACTADO'#9'5'#9'Contactado'#9#9
      'DIRECTO'#9'5'#9'Directa'#9#9
      'GESTIONES'#9'5'#9'N'#176' Gestiones'#9#9)
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    DataSource = DM1.dsTPension
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'Arial Narrow'
    Font.Style = []
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowFooter]
    ParentFont = False
    TabOrder = 0
    TitleAlignment = taLeftJustify
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Serif'
    TitleFont.Style = [fsBold]
    TitleLines = 1
    TitleButtons = False
  end
end
