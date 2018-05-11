object frm_rel_retiradas: Tfrm_rel_retiradas
  Left = 563
  Top = 297
  BorderStyle = bsToolWindow
  Caption = 'Relat'#243'rio de Retiradas - Studio Atraente - vers'#227'o:1.0'
  ClientHeight = 109
  ClientWidth = 258
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesigned
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 98
    Top = 0
    Width = 51
    Height = 13
    Caption = 'Per'#237'odo de'
  end
  object Label2: TLabel
    Left = 122
    Top = 22
    Width = 6
    Height = 13
    Caption = #224
  end
  object DatIni: TMaskEdit
    Left = 35
    Top = 17
    Width = 71
    Height = 21
    Color = clWhite
    Ctl3D = True
    EditMask = '!99/99/9999;1;_'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    MaxLength = 10
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 0
    Text = '  /  /    '
  end
  object DatFim: TMaskEdit
    Left = 143
    Top = 17
    Width = 81
    Height = 21
    Color = clWhite
    Ctl3D = True
    EditMask = '!99/99/9999;1;_'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    MaxLength = 10
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 1
    Text = '  /  /    '
    OnExit = DatFimExit
  end
  object sButton1: TsButton
    Left = 40
    Top = 51
    Width = 91
    Height = 41
    Caption = 'OK'
    TabOrder = 2
    OnClick = sButton1Click
  end
  object sButton2: TsButton
    Left = 131
    Top = 51
    Width = 91
    Height = 41
    Caption = 'Cancelar'
    TabOrder = 3
    OnClick = sButton2Click
  end
end
