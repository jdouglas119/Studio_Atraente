object frm_rel_fornec: Tfrm_rel_fornec
  Left = 546
  Top = 291
  BorderStyle = bsToolWindow
  Caption = 'Relat'#243'rio de Fornecedores - Studio Atraente - vers'#227'o: 1.0'
  ClientHeight = 110
  ClientWidth = 291
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object frm_chama_relcli: TsBitBtn
    Left = 54
    Top = 32
    Width = 93
    Height = 41
    Caption = 'OK'
    TabOrder = 0
    OnClick = frm_chama_relcliClick
  end
  object sButton1: TsButton
    Left = 153
    Top = 32
    Width = 91
    Height = 41
    Caption = 'Cancelar'
    TabOrder = 1
    OnClick = sButton1Click
  end
end
