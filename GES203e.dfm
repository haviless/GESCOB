object fDetPagos: TfDetPagos
  Left = 232
  Top = 233
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Detalle De Pagos'
  ClientHeight = 203
  ClientWidth = 608
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 2
    Top = -2
    Width = 605
    Height = 204
    TabOrder = 0
    object BitSalir: TBitBtn
      Left = 481
      Top = 169
      Width = 79
      Height = 27
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
    object dtgDetPag: TwwDBGrid
      Left = 7
      Top = 17
      Width = 594
      Height = 147
      Cursor = crHandPoint
      DisableThemesInTitle = False
      Selected.Strings = (
        'CREFPAG'#9'11'#9'Fec.Pago'
        'TMONID'#9'5'#9'Mon.'
        'CREMTOCUO'#9'12'#9'Monto Cuota'
        'CREMTOCOB'#9'12'#9'Importe'
        'FORPAGABR'#9'10'#9'Frm.Pago'
        'CREDOCPAG'#9'14'#9'Documento'
        'CREESTADO'#9'20'#9'Estado'#9'F')
      IniAttributes.Delimiter = ';;'
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      DataSource = DM1.dsDetalle
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowFooter]
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
      OnDblClick = dtgDetPagDblClick
      object dtgDetPagIButton: TwwIButton
        Left = 0
        Top = 0
        Width = 30
        Height = 27
        AllowAllUp = True
        Enabled = False
        Glyph.Data = {
          96010000424D9601000000000000760000002800000018000000180000000100
          0400000000002001000000000000000000001000000000000000000000000000
          BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          3333333333333333333333333333333333333333333333333B3333333B333333
          B33333333B333333B33333333BB33888BB8888BB3333333333B00000000000B3
          333333333330FFFFFFFFF083333333333330FFFFFFFFF083333333333330FFFF
          FFFFF083333333333330FFFFFFFFF083333333333330FFFFFFFFF08333333333
          3BB0FFFFFFFFF0833333333BB330FFFFFFFFF0BB333333333330FFFFFF777033
          BB3333333330FFFFF0000033333333333330FFFFF0FF0333333333333330FFFF
          F0F0B333333333333330FFFFF003BB333333333333B0000000333BB333333333
          3BB33333BB3333BB33333333B3333333B3333333B33333333333333333333333
          3333333333333333333333333333333333333333333333333333}
      end
    end
  end
end