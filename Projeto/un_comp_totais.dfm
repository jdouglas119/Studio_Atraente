object frm_comp_totais: Tfrm_comp_totais
  Left = 402
  Top = 290
  BorderStyle = bsToolWindow
  Caption = 'Comparativo dos Meses - Studio Atraente - vers'#227'o: 1.0'
  ClientHeight = 149
  ClientWidth = 644
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesigned
  OnClick = FormClick
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object progress: TGauge
    Left = 128
    Top = 115
    Width = 510
    Height = 26
    ForeColor = clBlue
    Progress = 0
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 40
    Width = 631
    Height = 66
    Color = clWhite
    DataSource = dt_studio.ds_comp_totais
    DrawingStyle = gdsClassic
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'ANO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TOT_JAN'
        Width = 98
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TOT_FEV'
        Width = 105
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TOT_MAR'
        Width = 96
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TOT_ABR'
        Width = 106
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TOT_MAI'
        Width = 103
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TOT_JUN'
        Width = 106
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TOT_JUL'
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TOT_AGO'
        Width = 112
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TOT_SET'
        Width = 109
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TOT_OUT'
        Width = 115
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TOT_NOV'
        Width = 106
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TOT_DEZ'
        Width = 113
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TOT_ANO'
        Width = 131
        Visible = True
      end>
  end
  object sButton1: TsButton
    Left = 8
    Top = 113
    Width = 115
    Height = 30
    Caption = 'Exportar Valores'
    TabOrder = 1
    OnClick = sButton1Click
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 644
    Height = 34
    Align = alTop
    Color = 13421568
    ParentBackground = False
    TabOrder = 2
    object novo: TsButton
      Left = 5
      Top = 4
      Width = 88
      Height = 25
      Caption = 'Incluir Vr. M'#234's'
      TabOrder = 0
      OnClick = novoClick
    end
    object editar: TsButton
      Left = 99
      Top = 4
      Width = 88
      Height = 25
      Caption = 'Alterar Vr. M'#234's'
      TabOrder = 1
      OnClick = editarClick
    end
    object gravar: TsButton
      Left = 263
      Top = 4
      Width = 88
      Height = 25
      Caption = 'OK'
      TabOrder = 2
      OnClick = gravarClick
    end
    object cancelar: TsButton
      Left = 351
      Top = 4
      Width = 88
      Height = 25
      Caption = 'Cancelar'
      TabOrder = 3
      OnClick = cancelarClick
    end
    object fechar: TsButton
      Left = 539
      Top = 4
      Width = 88
      Height = 25
      Caption = 'Fechar'
      TabOrder = 4
      OnClick = fecharClick
    end
  end
end
