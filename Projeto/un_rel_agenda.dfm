object frm_rel_agenda: Tfrm_rel_agenda
  Left = 580
  Top = 304
  BorderStyle = bsToolWindow
  Caption = 'Relat'#243'rio de Agendamentos'
  ClientHeight = 105
  ClientWidth = 251
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesigned
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 98
    Top = 4
    Width = 51
    Height = 13
    Caption = 'Per'#237'odo de'
  end
  object Label2: TLabel
    Left = 122
    Top = 26
    Width = 6
    Height = 13
    Caption = #224
  end
  object frm_chama_relcli: TsBitBtn
    Left = 32
    Top = 55
    Width = 93
    Height = 41
    Caption = 'OK'
    TabOrder = 0
    OnClick = frm_chama_relcliClick
  end
  object sButton1: TsButton
    Left = 131
    Top = 55
    Width = 91
    Height = 41
    Caption = 'Cancelar'
    TabOrder = 1
    OnClick = sButton1Click
  end
  object DatIni: TMaskEdit
    Left = 35
    Top = 21
    Width = 72
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
    TabOrder = 2
    Text = '  /  /    '
  end
  object DatFim: TMaskEdit
    Left = 143
    Top = 21
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
    TabOrder = 3
    Text = '  /  /    '
  end
end
