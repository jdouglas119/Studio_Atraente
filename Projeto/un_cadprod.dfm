object frm_cadprod: Tfrm_cadprod
  Left = 331
  Top = 134
  BorderStyle = bsToolWindow
  Caption = 'Cadastro de Produtos - Studio Atraente - vers'#227'o: 1.0'
  ClientHeight = 482
  ClientWidth = 810
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesigned
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 148
    Top = 48
    Width = 41
    Height = 13
    Caption = 'C'#211'DIGO'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 236
    Top = 48
    Width = 49
    Height = 13
    Caption = 'PRODUTO'
    FocusControl = produto
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 618
    Top = 48
    Width = 74
    Height = 13
    Caption = 'DT_CADASTRO'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 12
    Top = 94
    Width = 53
    Height = 13
    Caption = 'VR_CUSTO'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 121
    Top = 94
    Width = 52
    Height = 13
    Caption = 'VR_VENDA'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 343
    Top = 111
    Width = 63
    Height = 13
    Caption = 'QUANT_EST.'
    FocusControl = quant
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label17: TLabel
    Left = 11
    Top = 435
    Width = 30
    Height = 13
    Caption = 'Ativo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label18: TLabel
    Left = 86
    Top = 435
    Width = 41
    Height = 13
    Caption = 'Inativo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label7: TLabel
    Left = 233
    Top = 94
    Width = 82
    Height = 13
    Caption = '( % ) COMISS'#195'O'
    FocusControl = perc_comiss
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label19: TLabel
    Left = 289
    Top = 48
    Width = 7
    Height = 13
    Caption = '*'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label8: TLabel
    Left = 319
    Top = 94
    Width = 7
    Height = 13
    Caption = '*'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label27: TLabel
    Left = 173
    Top = 435
    Width = 197
    Height = 13
    Caption = 'Campos obrigat'#243'rios para preenchimento'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label28: TLabel
    Left = 376
    Top = 433
    Width = 10
    Height = 19
    Caption = '*'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object sPanel1: TsPanel
    Left = 8
    Top = 5
    Width = 796
    Height = 35
    BevelInner = bvLowered
    Color = 13421568
    ParentBackground = False
    TabOrder = 7
    object novo: TsButton
      Left = 3
      Top = 4
      Width = 88
      Height = 27
      Caption = 'Novo'
      TabOrder = 0
      OnClick = novoClick
    end
    object editar: TsButton
      Left = 91
      Top = 4
      Width = 88
      Height = 27
      Caption = 'Editar'
      TabOrder = 1
      OnClick = editarClick
    end
    object excluir: TsButton
      Left = 179
      Top = 4
      Width = 88
      Height = 27
      Caption = 'Excluir'
      TabOrder = 2
      OnClick = excluirClick
    end
    object nav_prod: TDBNavigator
      Left = 406
      Top = 4
      Width = 164
      Height = 27
      DataSource = dt_studio.ds_cadprod
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Hints.Strings = (
        'Inicio'
        'Anterior'
        'Posterior'
        'Ultimo')
      TabOrder = 3
    end
    object sair: TsButton
      Left = 706
      Top = 4
      Width = 88
      Height = 27
      Caption = 'Sair'
      TabOrder = 4
      OnClick = sairClick
    end
  end
  object produto: TDBEdit
    Left = 236
    Top = 64
    Width = 376
    Height = 21
    BevelInner = bvLowered
    BevelOuter = bvSpace
    CharCase = ecUpperCase
    DataField = 'NOM_PROD'
    DataSource = dt_studio.ds_cadprod
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 1
  end
  object quant: TDBEdit
    Left = 412
    Top = 99
    Width = 88
    Height = 31
    Color = 14671839
    DataField = 'QUANT_ESTOQUE'
    DataSource = dt_studio.ds_cadprod
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 6
  end
  object grid_prod: TDBGrid
    Left = 8
    Top = 168
    Width = 794
    Height = 256
    Color = clWhite
    DataSource = dt_studio.ds_cadprod
    DrawingStyle = gdsClassic
    ReadOnly = True
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDrawColumnCell = grid_prodDrawColumnCell
    Columns = <
      item
        Expanded = False
        FieldName = 'SITUACAO'
        Width = 27
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ID_PROD'
        Title.Caption = 'C'#211'DIGO'
        Width = 58
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOM_PROD'
        Title.Caption = 'PRODUTO'
        Width = 269
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QUANT_ESTOQUE'
        Title.Caption = 'QUANT_EST.'
        Width = 73
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VR_CUSTO'
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VR_VENDA'
        Width = 96
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PERC_COMISSAO'
        Title.Caption = '( % ) COMISS'#195'O'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DT_CAD'
        Title.Caption = 'DT_CADASTRO'
        Width = 125
        Visible = True
      end>
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 463
    Width = 810
    Height = 19
    Panels = <
      item
        Text = 
          'F2 - Incluir  -  F3 - Alterar  -  F4 - Excluir  - F5 - Cancelar ' +
          ' - F6 - Gravar  -  F9 - Sair'
        Width = 50
      end>
  end
  object radio1: TRadioGroup
    Left = 508
    Top = 91
    Width = 294
    Height = 43
    Caption = 'Op'#231#245'es de Pesquisa'
    Columns = 2
    Items.Strings = (
      'C'#243'digo'
      'Nome')
    TabOrder = 9
    OnClick = radio1Click
  end
  object Edit1: TEdit
    Left = 8
    Top = 141
    Width = 713
    Height = 21
    BevelInner = bvLowered
    BevelOuter = bvSpace
    CharCase = ecUpperCase
    TabOrder = 10
  end
  object sButton1: TsButton
    Left = 727
    Top = 139
    Width = 75
    Height = 23
    Caption = 'Pesquisar'
    TabOrder = 11
    OnClick = sButton1Click
  end
  object dt_cad: TDBEdit
    Left = 615
    Top = 64
    Width = 187
    Height = 21
    BevelInner = bvLowered
    BevelOuter = bvSpace
    DataField = 'DT_CAD'
    DataSource = dt_studio.ds_cadprod
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 12
  end
  object Panel1: TPanel
    Left = 44
    Top = 437
    Width = 23
    Height = 11
    Color = clBlack
    ParentBackground = False
    TabOrder = 13
  end
  object Panel2: TPanel
    Left = 131
    Top = 437
    Width = 23
    Height = 11
    Color = clRed
    ParentBackground = False
    TabOrder = 14
  end
  object dbradio1: TDBRadioGroup
    Left = 8
    Top = 49
    Width = 136
    Height = 36
    Columns = 2
    DataField = 'SITUACAO'
    DataSource = dt_studio.ds_cadprod
    Items.Strings = (
      'Ativo'
      'Inativo')
    ReadOnly = True
    TabOrder = 15
    Values.Strings = (
      'A'
      'I')
  end
  object cancelar: TsButton
    Left = 714
    Top = 430
    Width = 88
    Height = 27
    Caption = 'Cancelar'
    TabOrder = 16
    OnClick = cancelarClick
  end
  object gravar: TsButton
    Left = 625
    Top = 430
    Width = 88
    Height = 27
    Caption = 'OK'
    TabOrder = 17
    OnClick = gravarClick
  end
  object custo: TDBEdit
    Left = 11
    Top = 109
    Width = 105
    Height = 21
    BevelInner = bvLowered
    BevelOuter = bvSpace
    Color = 14408667
    DataField = 'VR_CUSTO'
    DataSource = dt_studio.ds_cadprod
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 5
  end
  object venda: TDBEdit
    Left = 119
    Top = 109
    Width = 108
    Height = 21
    BevelInner = bvLowered
    BevelOuter = bvSpace
    DataField = 'VR_VENDA'
    DataSource = dt_studio.ds_cadprod
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 2
  end
  object perc_comiss: TDBEdit
    Left = 231
    Top = 109
    Width = 101
    Height = 21
    BevelInner = bvLowered
    BevelOuter = bvSpace
    DataField = 'PERC_COMISSAO'
    DataSource = dt_studio.ds_cadprod
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 3
  end
  object id_prod: TDBEdit
    Left = 148
    Top = 64
    Width = 84
    Height = 21
    BevelInner = bvLowered
    BevelOuter = bvSpace
    DataField = 'ID_PROD'
    DataSource = dt_studio.ds_cadprod
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 0
  end
end
