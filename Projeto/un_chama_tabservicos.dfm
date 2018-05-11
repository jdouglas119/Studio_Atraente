object frm_tabela_servicos: Tfrm_tabela_servicos
  Left = 563
  Top = 315
  BorderStyle = bsToolWindow
  Caption = 'Relat'#243'rio da Tabela de Servi'#231'os - Studio Atraente - vers'#227'o: 1.0'
  ClientHeight = 106
  ClientWidth = 251
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object frm_chama_relcli: TsBitBtn
    Left = 39
    Top = 27
    Width = 93
    Height = 41
    Caption = 'OK'
    TabOrder = 0
    OnClick = frm_chama_relcliClick
  end
  object sButton1: TsButton
    Left = 135
    Top = 27
    Width = 91
    Height = 41
    Caption = 'Cancelar'
    TabOrder = 1
    OnClick = sButton1Click
  end
  object rv_tabela_serv: TRvProject
    Left = 40
    Top = 56
  end
  object rvdb_tabela_serv: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = dt_studio.tb_cadtiposerv
    Left = 128
    Top = 56
  end
end
