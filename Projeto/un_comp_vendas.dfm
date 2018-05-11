object frm_comp_vendas: Tfrm_comp_vendas
  Left = 595
  Top = 343
  BorderStyle = bsToolWindow
  Caption = 'Comparativo de Vendas  - Studio Atraente - vers'#227'o: 1.0'
  ClientHeight = 116
  ClientWidth = 282
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
    Left = 107
    Top = 8
    Width = 51
    Height = 13
    Caption = 'Per'#237'odo de'
  end
  object Label2: TLabel
    Left = 131
    Top = 30
    Width = 6
    Height = 13
    Caption = #224
  end
  object SpeedButton1: TSpeedButton
    Left = 8
    Top = 79
    Width = 153
    Height = 25
    Caption = 'Imprime Relat'#243'rio'
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000130B0000130B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
      00033FFFFFFFFFFFFFFF0888888888888880777777777777777F088888888888
      8880777777777777777F0000000000000000FFFFFFFFFFFFFFFF0F8F8F8F8F8F
      8F80777777777777777F08F8F8F8F8F8F9F0777777777777777F0F8F8F8F8F8F
      8F807777777777777F7F0000000000000000777777777777777F3330FFFFFFFF
      03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
      03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
      33333337F3FF7F3733333330F08F0F0333333337F7737F7333333330FFFF0033
      33333337FFFF7733333333300000033333333337777773333333}
    NumGlyphs = 2
    OnClick = SpeedButton1Click
  end
  object DatIni: TMaskEdit
    Left = 44
    Top = 25
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
    TabOrder = 0
    Text = '  /  /    '
  end
  object DatFim: TMaskEdit
    Left = 152
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
  end
  object sButton1: TsButton
    Left = 191
    Top = 79
    Width = 79
    Height = 25
    Caption = 'Fechar'
    TabOrder = 2
    OnClick = sButton1Click
  end
  object rel_compvendas: TRvProject
    Left = 32
    Top = 32
  end
  object RvDB_rel_compvendas: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = dt_studio.qry_comp_vendas
    Left = 144
    Top = 32
  end
  object RvDB_Totais: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = dt_studio.tb_comp_totais
    Left = 224
    Top = 8
  end
end
