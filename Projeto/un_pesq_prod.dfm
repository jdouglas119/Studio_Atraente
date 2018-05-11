object frm_pesq_prod: Tfrm_pesq_prod
  Left = 364
  Top = 209
  BorderStyle = bsToolWindow
  Caption = 'Pesquisa de Produtos - Studio Atraente - vers'#227'o: 1.0'
  ClientHeight = 425
  ClientWidth = 815
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object sPanel1: TsPanel
    Left = 0
    Top = 0
    Width = 815
    Height = 41
    Align = alTop
    Caption = 'CONSULTA CADASTRO DE PRODUTOS'
    Color = 13421568
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
  end
  object Edit1: TEdit
    Left = 4
    Top = 46
    Width = 729
    Height = 24
    CharCase = ecUpperCase
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
  end
  object sButton2: TsButton
    Left = 737
    Top = 45
    Width = 73
    Height = 25
    Caption = 'Pesquisar'
    TabOrder = 2
    OnClick = sButton2Click
  end
  object DBGrid1: TDBGrid
    Left = 4
    Top = 72
    Width = 806
    Height = 320
    DataSource = dt_studio.ds_cadprod
    DrawingStyle = gdsClassic
    FixedColor = 12713983
    ReadOnly = True
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnKeyPress = DBGrid1KeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'SITUACAO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ID_PROD'
        Width = 56
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOM_PROD'
        Width = 281
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DT_CAD'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VR_CUSTO'
        Width = 88
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VR_VENDA'
        Width = 91
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QUANT_ESTOQUE'
        Title.Caption = 'QUANT.'
        Width = 51
        Visible = True
      end>
  end
  object sButton1: TsButton
    Left = 376
    Top = 394
    Width = 75
    Height = 25
    Caption = 'Fechar'
    TabOrder = 4
    OnClick = sButton1Click
  end
end
