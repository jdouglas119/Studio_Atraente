object frm_vendas: Tfrm_vendas
  Left = 235
  Top = 83
  BorderStyle = bsToolWindow
  Caption = 'Movimenta'#231#227'o das Vendas - Studio Atraente - vers'#227'o: 1.0'
  ClientHeight = 525
  ClientWidth = 1005
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = [fsBold]
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesigned
  PixelsPerInch = 96
  TextHeight = 13
  object Label7: TLabel
    Left = 9
    Top = 268
    Width = 56
    Height = 13
    Caption = 'COD_PROD'
    FocusControl = cod_prod
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label8: TLabel
    Left = 138
    Top = 268
    Width = 57
    Height = 13
    Caption = 'NOM_PROD'
    FocusControl = nom_prod
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label9: TLabel
    Left = 406
    Top = 268
    Width = 39
    Height = 13
    Caption = 'QUANT.'
    FocusControl = quant
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label10: TLabel
    Left = 469
    Top = 268
    Width = 79
    Height = 13
    Caption = 'VR_UNITIT'#193'RIO'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label11: TLabel
    Left = 561
    Top = 268
    Width = 57
    Height = 13
    Caption = 'SUB_TOTAL'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label12: TLabel
    Left = 810
    Top = 268
    Width = 11
    Height = 13
    Caption = '%'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label13: TLabel
    Left = 841
    Top = 268
    Width = 74
    Height = 13
    Caption = 'VR_DESCONTO'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label14: TLabel
    Left = 929
    Top = 268
    Width = 59
    Height = 13
    Caption = 'TOTAL ITEM'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label15: TLabel
    Left = 8
    Top = 477
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
    Left = 192
    Top = 477
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
    Left = 456
    Top = 477
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
    Left = 762
    Top = 476
    Width = 85
    Height = 16
    Caption = 'TOTAL GERAL'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Prod: TSpeedButton
    Left = 81
    Top = 273
    Width = 48
    Height = 34
    Hint = 'Consulta Produtos'
    Caption = '...'
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000130B0000130B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      33033333333333333F7F3333333333333000333333333333F777333333333333
      000333333333333F777333333333333000333333333333F77733333333333300
      033333333FFF3F777333333700073B703333333F7773F77733333307777700B3
      33333377333777733333307F8F8F7033333337F333F337F3333377F8F9F8F773
      3333373337F3373F3333078F898F870333337F33F7FFF37F333307F99999F703
      33337F377777337F3333078F898F8703333373F337F33373333377F8F9F8F773
      333337F3373337F33333307F8F8F70333333373FF333F7333333330777770333
      333333773FF77333333333370007333333333333777333333333}
    NumGlyphs = 2
    ParentShowHint = False
    ShowHint = True
  end
  object Label17: TLabel
    Left = 653
    Top = 268
    Width = 43
    Height = 13
    Caption = ' %  COM'
    FocusControl = perc_comiss
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label18: TLabel
    Left = 711
    Top = 268
    Width = 73
    Height = 13
    Caption = 'VR_COMISSAO'
    FocusControl = vr_comiss
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object GroupBox4: TGroupBox
    Left = 4
    Top = 4
    Width = 995
    Height = 40
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentBackground = False
    ParentColor = False
    ParentFont = False
    TabOrder = 0
    object es_novo: TsButton
      Left = 6
      Top = 7
      Width = 82
      Height = 28
      Caption = 'Nova Venda'
      TabOrder = 0
    end
    object es_editar: TsButton
      Left = 87
      Top = 7
      Width = 75
      Height = 28
      Caption = 'Editar'
      TabOrder = 1
    end
    object es_excluir: TsButton
      Left = 162
      Top = 7
      Width = 75
      Height = 28
      Caption = 'Deletar'
      TabOrder = 2
    end
    object es_ok: TsButton
      Left = 289
      Top = 7
      Width = 75
      Height = 28
      Caption = 'OK'
      TabOrder = 3
    end
    object es_cancel: TsButton
      Left = 364
      Top = 7
      Width = 75
      Height = 28
      Caption = 'Cancelar'
      TabOrder = 4
    end
    object es_sair: TsButton
      Left = 897
      Top = 7
      Width = 75
      Height = 28
      Caption = 'Sair'
      TabOrder = 5
    end
    object BitBtn2: TBitBtn
      Left = 680
      Top = 7
      Width = 181
      Height = 28
      Caption = 'Imprimir Comanda de Vendas'
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
      TabOrder = 6
    end
    object nav_vendas: TDBNavigator
      Left = 497
      Top = 6
      Width = 144
      Height = 28
      DataSource = dt_studio.ds_vendas
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Hints.Strings = (
        'Registro Inicial'
        'Registro Anterior'
        'Registro Posterior'
        'Registro Final'
        ''
        '')
      TabOrder = 7
    end
  end
  object Panel1: TPanel
    Left = 4
    Top = 50
    Width = 995
    Height = 31
    BevelInner = bvLowered
    Caption = 'VENDAS'
    Color = 10485760
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clYellow
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 1
  end
  object GroupBox1: TGroupBox
    Left = 4
    Top = 229
    Width = 995
    Height = 38
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentBackground = False
    ParentColor = False
    ParentFont = False
    TabOrder = 2
    object Itens: TLabel
      Left = 405
      Top = 4
      Width = 177
      Height = 23
      Caption = 'ITENS DE VENDAS'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBNavigator1: TDBNavigator
      Left = 795
      Top = 7
      Width = 120
      Height = 23
      DataSource = dt_studio.ds_vendas_itens
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Hints.Strings = (
        'Item Inicial'
        'Item Anterior'
        'Item Posterior'
        'Item Final')
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
    end
    object bt_itensnovo: TsButton
      Left = 6
      Top = 4
      Width = 123
      Height = 28
      Caption = 'Novo Item '
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
    object bt_itensdelete: TsButton
      Left = 129
      Top = 4
      Width = 124
      Height = 28
      Caption = 'Deletar Item'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
    end
  end
  object sPanel1: TsPanel
    Left = 4
    Top = 85
    Width = 995
    Height = 128
    TabOrder = 3
    object Label1: TLabel
      Left = 7
      Top = 16
      Width = 50
      Height = 13
      Caption = 'ID_VENDA'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 211
      Top = 16
      Width = 27
      Height = 13
      Caption = 'DATA'
      FocusControl = data
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 439
      Top = 16
      Width = 44
      Height = 13
      Caption = 'COD_CLI'
      FocusControl = cod_cli
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 429
      Top = 48
      Width = 54
      Height = 13
      Caption = 'COD_VEND'
      FocusControl = cod_vend
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object bt_veiculo: TSpeedButton
      Left = 571
      Top = 41
      Width = 40
      Height = 29
      Hint = 'Consulta Atendente'
      Caption = '...'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33033333333333333F7F3333333333333000333333333333F777333333333333
        000333333333333F777333333333333000333333333333F77733333333333300
        033333333FFF3F777333333700073B703333333F7773F77733333307777700B3
        33333377333777733333307F8F8F7033333337F333F337F3333377F8F9F8F773
        3333373337F3373F3333078F898F870333337F33F7FFF37F333307F99999F703
        33337F377777337F3333078F898F8703333373F337F33373333377F8F9F8F773
        333337F3373337F33333307F8F8F70333333373FF333F7333333330777770333
        333333773FF77333333333370007333333333333777333333333}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
    end
    object Label4: TLabel
      Left = 619
      Top = 16
      Width = 45
      Height = 13
      Caption = 'NOM_CLI'
      FocusControl = nom_cli
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 619
      Top = 48
      Width = 55
      Height = 13
      Caption = 'NOM_VEND'
      FocusControl = nom_vend
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label27: TLabel
      Left = 175
      Top = 49
      Width = 63
      Height = 13
      Caption = 'FORMA PAG:'
      FocusControl = data
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label28: TLabel
      Left = 9
      Top = 52
      Width = 68
      Height = 13
      Caption = 'OBSERVA'#199#195'O'
      FocusControl = obs
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object data: TDBEdit
      Left = 242
      Top = 14
      Width = 160
      Height = 21
      BevelInner = bvLowered
      BevelOuter = bvSpace
      BevelKind = bkSoft
      DataField = 'DATA'
      DataSource = dt_studio.ds_vendas
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 5
    end
    object cod_vend: TDBEdit
      Left = 488
      Top = 45
      Width = 75
      Height = 21
      BevelInner = bvLowered
      BevelOuter = bvSpace
      BevelKind = bkSoft
      DataField = 'COD_VEND'
      DataSource = dt_studio.ds_vendas
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
    end
    object cod_cli: TDBEdit
      Left = 488
      Top = 14
      Width = 75
      Height = 21
      BevelInner = bvLowered
      BevelOuter = bvSpace
      BevelKind = bkSoft
      DataField = 'COD_CLI'
      DataSource = dt_studio.ds_vendas
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
    end
    object bt_cliente: TBitBtn
      Left = 571
      Top = 9
      Width = 40
      Height = 30
      Hint = 'Consulta Cliente'
      Caption = '...'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33033333333333333F7F3333333333333000333333333333F777333333333333
        000333333333333F777333333333333000333333333333F77733333333333300
        033333333FFF3F777333333700073B703333333F7773F77733333307777700B3
        33333377333777733333307F8F8F7033333337F333F337F3333377F8F9F8F773
        3333373337F3373F3333078F898F870333337F33F7FFF37F333307F99999F703
        33337F377777337F3333078F898F8703333373F337F33373333377F8F9F8F773
        333337F3373337F33333307F8F8F70333333373FF333F7333333330777770333
        333333773FF77333333333370007333333333333777333333333}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
    end
    object nom_vend: TDBEdit
      Left = 677
      Top = 46
      Width = 312
      Height = 21
      BevelInner = bvLowered
      BevelOuter = bvSpace
      BevelKind = bkSoft
      Color = 14671839
      DataField = 'NOM_VEND'
      DataSource = dt_studio.ds_vendas
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 7
    end
    object nom_cli: TDBEdit
      Left = 677
      Top = 14
      Width = 312
      Height = 21
      BevelInner = bvLowered
      BevelOuter = bvSpace
      BevelKind = bkSoft
      Color = 14671839
      DataField = 'NOM_CLI'
      DataSource = dt_studio.ds_vendas
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 8
    end
    object id_venda: TDBEdit
      Left = 61
      Top = 7
      Width = 122
      Height = 33
      BevelInner = bvLowered
      BevelOuter = bvSpace
      BevelKind = bkSoft
      Color = 14671839
      DataField = 'ID_VENDA'
      DataSource = dt_studio.ds_vendas
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
    object combo: TDBLookupComboBox
      Left = 242
      Top = 44
      Width = 160
      Height = 21
      DataField = 'FORMA_PAG'
      DataSource = dt_studio.ds_vendas
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      KeyField = 'FORMA_PAG'
      ListField = 'FORMA_PAG'
      ListSource = dt_studio.ds_formapag
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
    end
    object obs: TDBMemo
      Left = 7
      Top = 70
      Width = 395
      Height = 50
      BevelInner = bvLowered
      BevelOuter = bvSpace
      BevelKind = bkSoft
      DataField = 'OBSERVACAO'
      DataSource = dt_studio.ds_vendas
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 4
    end
  end
  object Panel2: TPanel
    Left = 4
    Top = 217
    Width = 993
    Height = 7
    BevelInner = bvRaised
    BevelWidth = 2
    TabOrder = 4
  end
  object cod_prod: TDBEdit
    Left = 8
    Top = 283
    Width = 70
    Height = 24
    BevelInner = bvLowered
    BevelOuter = bvSpace
    BevelKind = bkSoft
    DataField = 'COD_PROD'
    DataSource = dt_studio.ds_vendas_itens
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 5
  end
  object nom_prod: TDBEdit
    Left = 135
    Top = 283
    Width = 265
    Height = 24
    BevelInner = bvLowered
    BevelOuter = bvSpace
    BevelKind = bkSoft
    Color = 14671839
    DataField = 'NOM_PROD'
    DataSource = dt_studio.ds_vendas_itens
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 9
  end
  object quant: TDBEdit
    Left = 403
    Top = 283
    Width = 60
    Height = 24
    BevelInner = bvLowered
    BevelOuter = bvSpace
    BevelKind = bkSoft
    DataField = 'QUANTIDADE'
    DataSource = dt_studio.ds_vendas_itens
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 6
  end
  object grid_vendas: TDBGrid
    Left = 6
    Top = 313
    Width = 992
    Height = 151
    Color = 15400959
    DataSource = dt_studio.ds_vendas_itens
    DrawingStyle = gdsClassic
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 10
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_VENDA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'COD_PROD'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOM_PROD'
        Width = 438
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QUANTIDADE'
        Width = 73
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VR_UNIT'
        Width = 102
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SUB_TOTAL'
        Width = 98
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PERC_COMISSAO'
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
        Title.Caption = '( % ) COM'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VR_DESC'
        Width = 98
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TOTAL_GERAL'
        Title.Caption = 'TOTAL ITEM'
        Width = 123
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATA'
        Visible = True
      end>
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 506
    Width = 1005
    Height = 19
    Panels = <
      item
        Text = 
          'F2 - Nova Venda  -  F3 - Editar  -  F4 - Deletar  - F5 - Cancela' +
          'r  - F6 - Gravar  -  F10 - Novo Item  -  F11 - Deletar Item  - F' +
          '9 - Sair '
        Width = 50
      end>
  end
  object Panel6: TPanel
    Left = 114
    Top = 471
    Width = 44
    Height = 29
    BevelKind = bkTile
    BevelOuter = bvNone
    TabOrder = 12
    object Label16: TLabel
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
    Left = 306
    Top = 469
    Width = 126
    Height = 31
    BevelKind = bkTile
    BevelOuter = bvNone
    TabOrder = 13
    object Label20: TLabel
      Left = 83
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
    Left = 569
    Top = 469
    Width = 127
    Height = 32
    BevelKind = bkTile
    BevelOuter = bvNone
    TabOrder = 14
    object Label24: TLabel
      Left = 84
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
    Left = 853
    Top = 469
    Width = 146
    Height = 31
    BevelKind = bkTile
    BevelOuter = bvNone
    TabOrder = 15
    object Label22: TLabel
      Left = 96
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
  object perc_desc: TDBEdit
    Left = 799
    Top = 283
    Width = 40
    Height = 24
    BevelInner = bvLowered
    BevelOuter = bvSpace
    BevelKind = bkSoft
    DataField = 'PERC_DESC'
    DataSource = dt_studio.ds_vendas_itens
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 7
  end
  object vr_unit: TDBEdit
    Left = 466
    Top = 283
    Width = 86
    Height = 24
    BevelInner = bvLowered
    BevelOuter = bvSpace
    BevelKind = bkSoft
    Color = 14671839
    DataField = 'VR_UNIT'
    DataSource = dt_studio.ds_vendas_itens
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 16
  end
  object sub_total: TDBEdit
    Left = 556
    Top = 283
    Width = 94
    Height = 24
    BevelInner = bvLowered
    BevelOuter = bvSpace
    BevelKind = bkSoft
    Color = 14671839
    DataField = 'SUB_TOTAL'
    DataSource = dt_studio.ds_vendas_itens
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 17
  end
  object vr_desc: TDBEdit
    Left = 844
    Top = 283
    Width = 68
    Height = 24
    BevelInner = bvLowered
    BevelOuter = bvSpace
    BevelKind = bkSoft
    DataField = 'VR_DESC'
    DataSource = dt_studio.ds_vendas_itens
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 8
  end
  object total_geral: TDBEdit
    Left = 915
    Top = 283
    Width = 84
    Height = 24
    BevelInner = bvLowered
    BevelOuter = bvSpace
    BevelKind = bkSoft
    Color = 14671839
    DataField = 'TOTAL_GERAL'
    DataSource = dt_studio.ds_vendas_itens
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 18
  end
  object perc_comiss: TDBEdit
    Left = 653
    Top = 283
    Width = 51
    Height = 24
    BevelInner = bvLowered
    BevelOuter = bvSpace
    BevelKind = bkSoft
    Color = 14671839
    DataField = 'PERC_COMISSAO'
    DataSource = dt_studio.ds_vendas_itens
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 19
  end
  object vr_comiss: TDBEdit
    Left = 708
    Top = 283
    Width = 88
    Height = 24
    BevelInner = bvLowered
    BevelOuter = bvSpace
    BevelKind = bkSoft
    Color = 14671839
    DataField = 'VR_COMISSAO'
    DataSource = dt_studio.ds_vendas_itens
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 20
  end
  object radio: TRadioGroup
    Left = 411
    Top = 166
    Width = 205
    Height = 50
    Caption = 'Pesquisa por:'
    Columns = 2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Items.Strings = (
      'N'#186': Comanda'
      'Nome Cliente')
    ParentFont = False
    TabOrder = 21
  end
  object Edit1: TEdit
    Left = 622
    Top = 184
    Width = 283
    Height = 21
    BevelInner = bvLowered
    BevelKind = bkSoft
    BevelOuter = bvSpace
    CharCase = ecUpperCase
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 22
  end
  object BitBtn3: TBitBtn
    Left = 908
    Top = 181
    Width = 85
    Height = 26
    Caption = 'Pesquisa'
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000130B0000130B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      33033333333333333F7F3333333333333000333333333333F777333333333333
      000333333333333F777333333333333000333333333333F77733333333333300
      033333333FFF3F777333333700073B703333333F7773F77733333307777700B3
      33333377333777733333307F8F8F7033333337F333F337F3333377F8F9F8F773
      3333373337F3373F3333078F898F870333337F33F7FFF37F333307F99999F703
      33337F377777337F3333078F898F8703333373F337F33373333377F8F9F8F773
      333337F3373337F33333307F8F8F70333333373FF333F7333333330777770333
      333333773FF77333333333370007333333333333777333333333}
    NumGlyphs = 2
    TabOrder = 23
  end
  object query_cli: TADOQuery
    Connection = dt_studio.Conexao
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM CAD_CLI')
    Left = 40
    Top = 369
    object query_cliID_CLI: TIntegerField
      FieldName = 'ID_CLI'
    end
    object query_cliNOM_CLI: TStringField
      FieldName = 'NOM_CLI'
      Size = 45
    end
    object query_cliCPF_CLI: TStringField
      FieldName = 'CPF_CLI'
      Size = 14
    end
    object query_cliEND_CLI: TStringField
      FieldName = 'END_CLI'
      Size = 45
    end
    object query_cliBAI_CLI: TStringField
      FieldName = 'BAI_CLI'
    end
    object query_cliCEP_CLI: TStringField
      FieldName = 'CEP_CLI'
      Size = 10
    end
    object query_cliCID_CLI: TStringField
      FieldName = 'CID_CLI'
    end
    object query_cliTEL_CLI: TStringField
      FieldName = 'TEL_CLI'
      Size = 13
    end
    object query_cliCEL_CLI: TStringField
      FieldName = 'CEL_CLI'
      Size = 14
    end
    object query_cliDT_CAD: TDateTimeField
      FieldName = 'DT_CAD'
    end
    object query_cliEMAIL_CLI: TStringField
      FieldName = 'EMAIL_CLI'
      Size = 45
    end
    object query_cliNUM_CLI: TBCDField
      FieldName = 'NUM_CLI'
      Precision = 18
      Size = 0
    end
    object query_cliEST_CLI: TStringField
      FieldName = 'EST_CLI'
      FixedChar = True
      Size = 2
    end
    object query_cliCOMP_END: TStringField
      FieldName = 'COMP_END'
    end
    object query_cliSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Size = 10
    end
    object query_cliDT_ANI: TDateTimeField
      FieldName = 'DT_ANI'
    end
  end
  object query_prod: TADOQuery
    Connection = dt_studio.Conexao
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM CAD_PROD')
    Left = 115
    Top = 369
    object query_prodID_PROD: TIntegerField
      FieldName = 'ID_PROD'
    end
    object query_prodNOM_PROD: TStringField
      FieldName = 'NOM_PROD'
      Size = 45
    end
    object query_prodDT_CAD: TDateTimeField
      FieldName = 'DT_CAD'
    end
    object query_prodVR_CUSTO: TBCDField
      FieldName = 'VR_CUSTO'
      Precision = 18
      Size = 0
    end
    object query_prodVR_VENDA: TBCDField
      FieldName = 'VR_VENDA'
      Precision = 18
      Size = 0
    end
    object query_prodQUANT_ESTOQUE: TBCDField
      FieldName = 'QUANT_ESTOQUE'
      Precision = 18
      Size = 0
    end
    object query_prodSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Size = 10
    end
  end
  object query_atend: TADOQuery
    Connection = dt_studio.Conexao
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM CAD_FUNC')
    Left = 192
    Top = 369
    object query_atendID_FUNC: TIntegerField
      FieldName = 'ID_FUNC'
    end
    object query_atendNOM_FUNC: TStringField
      FieldName = 'NOM_FUNC'
      Size = 45
    end
    object query_atendEND_FUNC: TStringField
      FieldName = 'END_FUNC'
      Size = 45
    end
    object query_atendBAI_FUNC: TStringField
      FieldName = 'BAI_FUNC'
    end
    object query_atendCEP_FUNC: TStringField
      FieldName = 'CEP_FUNC'
      Size = 10
    end
    object query_atendCID_FUNC: TStringField
      FieldName = 'CID_FUNC'
    end
    object query_atendAREA_FUNC: TStringField
      FieldName = 'AREA_FUNC'
    end
    object query_atendCOMISSAO_FUNC: TBCDField
      FieldName = 'COMISSAO_FUNC'
      Precision = 18
      Size = 0
    end
    object query_atendDT_CAD: TDateTimeField
      FieldName = 'DT_CAD'
    end
    object query_atendSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Size = 10
    end
    object query_atendNUM_FUNC: TBCDField
      FieldName = 'NUM_FUNC'
      Precision = 18
      Size = 0
    end
    object query_atendUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object query_atendESTADO: TStringField
      FieldName = 'ESTADO'
    end
    object query_atendCOMP_FUNC: TStringField
      FieldName = 'COMP_FUNC'
    end
    object query_atendTEL_FIXO: TStringField
      FieldName = 'TEL_FIXO'
      Size = 13
    end
    object query_atendCEL_FUNC: TStringField
      FieldName = 'CEL_FUNC'
      Size = 14
    end
    object query_atendCOD_EST: TIntegerField
      FieldName = 'COD_EST'
    end
  end
  object Timer1: TTimer
    Left = 264
    Top = 368
  end
end
