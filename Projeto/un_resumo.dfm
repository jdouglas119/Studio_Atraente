object frm_resumo: Tfrm_resumo
  Left = 267
  Top = 94
  BorderStyle = bsToolWindow
  Caption = 'Resumo das Comandas de Servi'#231'os - Studio Atraente - vers'#227'o: 1.0'
  ClientHeight = 561
  ClientWidth = 973
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
    Left = 8
    Top = 97
    Width = 94
    Height = 13
    Caption = 'Dados do Cliente'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 8
    Top = 285
    Width = 103
    Height = 13
    Caption = 'Itens da Comanda'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 214
    Top = 61
    Width = 106
    Height = 13
    Caption = 'Pesquisar Servi'#231'os'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label13: TLabel
    Left = 7
    Top = 537
    Width = 100
    Height = 16
    Caption = 'ITENS...............:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label19: TLabel
    Left = 177
    Top = 537
    Width = 111
    Height = 16
    Caption = 'SUB-TOTAL.........:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label23: TLabel
    Left = 439
    Top = 537
    Width = 110
    Height = 16
    Caption = 'DESCONTO..........:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label21: TLabel
    Left = 699
    Top = 537
    Width = 110
    Height = 16
    Caption = 'TOTAL GERAL.....:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 114
    Width = 957
    Height = 169
    DataSource = dt_studio.ds_qry_clientes
    DrawingStyle = gdsClassic
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
    OnDrawColumnCell = DBGrid1DrawColumnCell
    OnKeyDown = DBGrid1KeyDown
    OnKeyUp = DBGrid1KeyUp
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_SERV'
        Title.Caption = 'COMANDA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATA_SERV'
        Width = 63
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'COD_CLLI'
        Width = 69
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOM_CLI'
        Width = 337
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SITUACAO'
        Width = 91
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DT_ANI'
        Width = 63
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'AUTORIZADO'
        Width = 138
        Visible = True
      end>
  end
  object DBGrid2: TDBGrid
    Left = 8
    Top = 301
    Width = 957
    Height = 213
    DataSource = dt_studio.ds_qry_comandas
    DrawingStyle = gdsClassic
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDrawColumnCell = DBGrid2DrawColumnCell
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_SERV'
        Title.Caption = 'COMANDA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATA_SERV'
        Width = 69
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DEPARTAMENTO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ID_CODSERV'
        Title.Caption = 'COD. SERV.'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOM_SERV'
        Title.Caption = 'SERVI'#199'O'
        Width = 227
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ATENDENTE'
        Width = 87
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QUANT'
        Width = 44
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VR_UNIT'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TOT_ITEM'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PERC_COMISSAO'
        Title.Caption = '% COMISS'#195'O'
        Width = 45
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VR_COMISSAO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PERC_DESC'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCONTO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TOT_SERV'
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'AUTORIZADO'
        Width = 91
        Visible = True
      end>
  end
  object Edit1: TEdit
    Left = 328
    Top = 58
    Width = 298
    Height = 21
    BevelInner = bvLowered
    BevelOuter = bvSpace
    CharCase = ecUpperCase
    TabOrder = 2
  end
  object radio: TRadioGroup
    Left = 8
    Top = 42
    Width = 200
    Height = 49
    Caption = 'Pesquisa por:'
    Columns = 2
    Items.Strings = (
      'N'#186': Comanda'
      'Nome Cliente')
    TabOrder = 3
    OnClick = radioClick
  end
  object Panel6: TPanel
    Left = 112
    Top = 523
    Width = 44
    Height = 29
    BevelKind = bkTile
    BevelOuter = bvNone
    TabOrder = 4
    object Label14: TLabel
      Left = 27
      Top = 3
      Width = 10
      Height = 18
      Alignment = taRightJustify
      Caption = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object Panel5: TPanel
    Left = 295
    Top = 522
    Width = 137
    Height = 31
    BevelKind = bkTile
    BevelOuter = bvNone
    TabOrder = 5
    object Label20: TLabel
      Left = 91
      Top = 4
      Width = 35
      Height = 18
      Alignment = taRightJustify
      Caption = '0,00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object Panel4: TPanel
    Left = 558
    Top = 520
    Width = 133
    Height = 32
    BevelKind = bkTile
    BevelOuter = bvNone
    TabOrder = 6
    object Label24: TLabel
      Left = 88
      Top = 4
      Width = 35
      Height = 18
      Alignment = taRightJustify
      Caption = '0,00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object TPanel
    Left = 814
    Top = 522
    Width = 149
    Height = 31
    BevelKind = bkTile
    BevelOuter = bvNone
    TabOrder = 7
    object Label22: TLabel
      Left = 97
      Top = 1
      Width = 42
      Height = 23
      Alignment = taRightJustify
      Caption = '0,00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object sButton1: TsButton
    Left = 633
    Top = 55
    Width = 100
    Height = 28
    Caption = 'Pesquisar'
    TabOrder = 8
    OnClick = sButton1Click
  end
  object sButton2: TsButton
    Left = 862
    Top = 55
    Width = 103
    Height = 28
    Caption = 'Sair'
    TabOrder = 9
    OnClick = sButton2Click
  end
  object DBNavigator1: TDBNavigator
    Left = 746
    Top = 58
    Width = 100
    Height = 25
    DataSource = dt_studio.ds_qry_clientes
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
    TabOrder = 10
  end
  object Panel1: TPanel
    Left = 8
    Top = 8
    Width = 957
    Height = 32
    BevelInner = bvLowered
    Caption = 'RESUMO DOS SERVI'#199'OS REALIZADOS'
    Color = 13421568
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 11
  end
end
