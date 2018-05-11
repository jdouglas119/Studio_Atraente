object frm_rel_aposte: Tfrm_rel_aposte
  Left = 584
  Top = 308
  BorderStyle = bsToolWindow
  Caption = 'Relat'#243'rio de Aposte - Studio Atraente - vers'#227'o: 1.0'
  ClientHeight = 111
  ClientWidth = 210
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
    Left = 71
    Top = 8
    Width = 51
    Height = 13
    Caption = 'Per'#237'odo de'
  end
  object Label2: TLabel
    Left = 95
    Top = 30
    Width = 6
    Height = 13
    Caption = #224
  end
  object DatIni: TMaskEdit
    Left = 8
    Top = 25
    Width = 70
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
    Left = 116
    Top = 25
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
    Left = 13
    Top = 59
    Width = 91
    Height = 41
    Caption = 'OK'
    TabOrder = 2
    OnClick = sButton1Click
  end
  object sButton2: TsButton
    Left = 104
    Top = 59
    Width = 91
    Height = 41
    Caption = 'Cancelar'
    TabOrder = 3
    OnClick = sButton2Click
  end
end
