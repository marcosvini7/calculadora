object form_historico: Tform_historico
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Hist'#243'rico'
  ClientHeight = 292
  ClientWidth = 338
  Color = clGradientInactiveCaption
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object btn_limpar: TSpeedButton
    Left = 8
    Top = 8
    Width = 97
    Height = 22
    Caption = 'Limpar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial Narrow'
    Font.Style = []
    ParentFont = False
    OnClick = btn_limparClick
  end
  object memo_historico: TMemo
    Left = 8
    Top = 40
    Width = 305
    Height = 233
    Color = clMenuBar
    Font.Charset = ANSI_CHARSET
    Font.Color = clFuchsia
    Font.Height = -16
    Font.Name = 'Verdana'
    Font.Style = []
    Lines.Strings = (
      '')
    ParentFont = False
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 0
  end
end
