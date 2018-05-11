object frm_pesq_atend: Tfrm_pesq_atend
  Left = 332
  Top = 169
  BorderStyle = bsToolWindow
  Caption = 'Consulta Cadastro de Atendentes - Studio Atraente - vers'#227'o: 1.0'
  ClientHeight = 402
  ClientWidth = 833
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
    Width = 833
    Height = 41
    Align = alTop
    Caption = 'CONSULTA CADASTRO DE ATENDENTES'
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
  object DBGrid1: TDBGrid
    Left = 3
    Top = 74
    Width = 826
    Height = 294
    DataSource = dt_studio.ds_cadatend
    DrawingStyle = gdsClassic
    FixedColor = 12713983
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDrawColumnCell = DBGrid1DrawColumnCell
    OnKeyPress = DBGrid1KeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'SITUACAO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ID_FUNC'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOM_FUNC'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'END_FUNC'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BAI_FUNC'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CEP_FUNC'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CID_FUNC'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'AREA_FUNC'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'COMISSAO_FUNC'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DT_CAD'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NUM_FUNC'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'COD_EST'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'UF'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ESTADO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'COMP_FUNC'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TEL_FIXO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CEL_FUNC'
        Visible = True
      end>
  end
  object sButton1: TsButton
    Left = 397
    Top = 372
    Width = 75
    Height = 25
    Caption = 'Fechar'
    TabOrder = 2
    OnClick = sButton1Click
  end
  object Edit1: TEdit
    Left = 4
    Top = 48
    Width = 745
    Height = 24
    CharCase = ecUpperCase
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
  end
  object sButton2: TsButton
    Left = 751
    Top = 47
    Width = 75
    Height = 25
    Caption = 'Pesquisar'
    TabOrder = 4
    OnClick = sButton2Click
  end
end
