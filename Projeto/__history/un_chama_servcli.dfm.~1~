object frm_rel_servcli: Tfrm_rel_servcli
  Left = 436
  Top = 280
  BorderStyle = bsToolWindow
  Caption = 'Relat'#243'rio de Servi'#231'os - Clientes'
  ClientHeight = 218
  ClientWidth = 528
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
  object Label1: TLabel
    Left = 71
    Top = 0
    Width = 51
    Height = 13
    Caption = 'Per'#237'odo de'
  end
  object Label2: TLabel
    Left = 95
    Top = 22
    Width = 6
    Height = 13
    Caption = #224
  end
  object Label3: TLabel
    Left = 207
    Top = 0
    Width = 33
    Height = 13
    Caption = 'Cliente'
  end
  object SpeedButton1: TSpeedButton
    Left = 8
    Top = 185
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
  object sButton1: TsButton
    Left = 244
    Top = 185
    Width = 79
    Height = 25
    Caption = 'Fechar'
    TabOrder = 0
    OnClick = sButton1Click
  end
  object DatIni: TMaskEdit
    Left = 8
    Top = 17
    Width = 75
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
  object DatFim: TMaskEdit
    Left = 116
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
    TabOrder = 2
    Text = '  /  /    '
  end
  object Edit1: TEdit
    Left = 203
    Top = 17
    Width = 230
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 3
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 46
    Width = 507
    Height = 133
    DataSource = dt_studio.ds_cadcli
    DrawingStyle = gdsClassic
    FixedColor = 12713983
    ReadOnly = True
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_CLI'
        Title.Caption = 'C'#211'DIGO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOM_CLI'
        Title.Caption = 'CLIENTE'
        Width = 389
        Visible = True
      end>
  end
  object frm_chama_relcli: TsBitBtn
    Left = 439
    Top = 15
    Width = 79
    Height = 25
    Caption = 'Pesquisar'
    TabOrder = 5
    OnClick = frm_chama_relcliClick
  end
  object rv_servcli: TRvProject
    Left = 48
    Top = 96
  end
  object rv_historico_cliente: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = dt_studio.qry_historico_cliente
    Left = 144
    Top = 96
  end
end
