object frm_impcom: Tfrm_impcom
  Left = 503
  Top = 261
  BorderStyle = bsToolWindow
  Caption = 'Impress'#227'o da Comanda - Studio Atraente - vers'#227'o: 1.0'
  ClientHeight = 149
  ClientWidth = 267
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  PixelsPerInch = 96
  TextHeight = 13
  object radio: TRadioGroup
    Left = 14
    Top = 8
    Width = 241
    Height = 105
    Caption = 'Tipo de Impress'#227'o'
    Columns = 2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ItemIndex = 0
    Items.Strings = (
      'Video'
      'Impressora')
    ParentFont = False
    TabOrder = 0
  end
  object sButton1: TsButton
    Left = 96
    Top = 118
    Width = 75
    Height = 25
    Caption = 'OK'
    TabOrder = 1
    OnClick = sButton1Click
  end
end
