object frm_consusuario: Tfrm_consusuario
  Left = 433
  Top = 194
  BorderStyle = bsToolWindow
  Caption = 'Consulta Usu'#225'rios - Studio Atraente - vers'#227'o: 1.0'
  ClientHeight = 295
  ClientWidth = 519
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
  object SpeedButton1: TSpeedButton
    Left = 224
    Top = 263
    Width = 89
    Height = 28
    Caption = 'Sair'
    OnClick = SpeedButton1Click
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 47
    Width = 503
    Height = 210
    Color = clWhite
    DataSource = dt_studio.ds_cadusu
    DrawingStyle = gdsClassic
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_USUARIO'
        Title.Caption = 'C'#211'DIGO'
        Width = 54
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOM_APELIDO'
        Title.Caption = 'APELIDO'
        Width = 95
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOM_USUARIO'
        Title.Caption = 'NOME USU'#193'RIO'
        Width = 217
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NIVEL'
        Width = 44
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DT_CADASTRO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SITUACAO'
        Visible = True
      end>
  end
  object sPanel1: TsPanel
    Left = 0
    Top = 0
    Width = 519
    Height = 41
    Align = alTop
    Caption = 'CONSULTA USU'#193'RIOS'
    Color = 13421568
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 1
  end
end
