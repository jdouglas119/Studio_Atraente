object frm_pesq_fornec: Tfrm_pesq_fornec
  Left = 312
  Top = 140
  BorderStyle = bsToolWindow
  Caption = 'Pesquisa de Fornecedores - Studio Atraente - vers'#227'o 1.0'
  ClientHeight = 441
  ClientWidth = 817
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object sPanel1: TsPanel
    Left = 0
    Top = 0
    Width = 817
    Height = 41
    Align = alTop
    Caption = 'CONSULTA CADASTRO DE FORNECEDORES'
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
    Left = 7
    Top = 72
    Width = 802
    Height = 335
    DataSource = dt_studio.ds_cadfornec
    DrawingStyle = gdsClassic
    FixedColor = 12713983
    ReadOnly = True
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
    OnDrawColumnCell = DBGrid1DrawColumnCell
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_FORNEC'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOM_FORNEC'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'END_FORNEC'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BAIRRO_FORNEC'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CIDADE_FORNEC'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CEP_FORNEC'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'UF_FORNEC'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TEL_FORNEC'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CEL_FORNEC'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EMAIL_FORNEC'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATA_CAD'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NUM_END'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'COMPL_FORNEC'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'COD_EST'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOM_EST'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SITUACAO'
        Visible = True
      end>
  end
  object sButton1: TsButton
    Left = 376
    Top = 410
    Width = 75
    Height = 25
    Caption = 'Fechar'
    TabOrder = 4
    OnClick = sButton1Click
  end
end
