object frm_usuarios: Tfrm_usuarios
  Left = 373
  Top = 152
  BorderStyle = bsToolWindow
  Caption = 'Cadastro de Usu'#225'rios - Studio Atraente - vers'#227'o: 1.0'
  ClientHeight = 441
  ClientWidth = 808
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
  object Label17: TLabel
    Left = 8
    Top = 399
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
    Top = 399
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
  object Label1: TLabel
    Left = 162
    Top = 46
    Width = 41
    Height = 13
    Caption = 'C'#211'DIGO'
    FocusControl = id_codigo
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 255
    Top = 46
    Width = 46
    Height = 13
    Caption = 'USUARIO'
    FocusControl = nom_usu
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 11
    Top = 90
    Width = 43
    Height = 13
    Caption = 'APELIDO'
    FocusControl = apelido
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 256
    Top = 90
    Width = 33
    Height = 13
    Caption = 'SENHA'
    FocusControl = senha
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 393
    Top = 90
    Width = 54
    Height = 13
    Caption = 'CONFIRMA'
    FocusControl = confirma
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 535
    Top = 90
    Width = 28
    Height = 13
    Caption = 'NIVEL'
    FocusControl = nivel
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel
    Left = 608
    Top = 90
    Width = 74
    Height = 13
    Caption = 'DT_CADASTRO'
    FocusControl = data
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
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
    TabOrder = 6
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
    object DBNavigator1: TDBNavigator
      Left = 410
      Top = 4
      Width = 164
      Height = 27
      DataSource = dt_studio.ds_cadusu
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
  object Panel1: TPanel
    Left = 44
    Top = 401
    Width = 23
    Height = 11
    Color = clBlack
    ParentBackground = False
    TabOrder = 7
  end
  object Panel2: TPanel
    Left = 131
    Top = 401
    Width = 23
    Height = 11
    Color = clRed
    ParentBackground = False
    TabOrder = 8
  end
  object gravar: TsButton
    Left = 624
    Top = 389
    Width = 88
    Height = 27
    Caption = 'OK'
    TabOrder = 9
    OnClick = gravarClick
  end
  object cancelar: TsButton
    Left = 714
    Top = 389
    Width = 88
    Height = 27
    Caption = 'Cancelar'
    TabOrder = 10
    OnClick = cancelarClick
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 422
    Width = 808
    Height = 19
    Panels = <
      item
        Text = 
          'F2 - Incluir  -  F3 - Alterar  -  F4 - Excluir  - F5 - Cancelar ' +
          ' - F6 - Gravar  -  F9 - Sair'
        Width = 50
      end>
  end
  object dbradio1: TDBRadioGroup
    Left = 8
    Top = 46
    Width = 146
    Height = 38
    Columns = 2
    DataField = 'SITUACAO'
    DataSource = dt_studio.ds_cadusu
    Items.Strings = (
      'Ativo'
      'Inativo')
    ReadOnly = True
    TabOrder = 12
    Values.Strings = (
      'A'
      'I')
  end
  object Edit1: TEdit
    Left = 11
    Top = 149
    Width = 439
    Height = 21
    BevelInner = bvLowered
    BevelOuter = bvSpace
    CharCase = ecUpperCase
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 13
  end
  object sButton1: TsButton
    Left = 456
    Top = 149
    Width = 75
    Height = 22
    Caption = 'Pesquisar'
    TabOrder = 14
    OnClick = sButton1Click
  end
  object radio1: TRadioGroup
    Left = 549
    Top = 142
    Width = 251
    Height = 38
    Caption = 'Op'#231#245'es de Pesquisa'
    Columns = 2
    Items.Strings = (
      'C'#243'digo'
      'Nome')
    TabOrder = 15
    OnClick = radio1Click
  end
  object id_codigo: TDBEdit
    Left = 160
    Top = 62
    Width = 89
    Height = 21
    BevelInner = bvLowered
    BevelOuter = bvSpace
    DataField = 'ID_USUARIO'
    DataSource = dt_studio.ds_cadusu
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 0
  end
  object nom_usu: TDBEdit
    Left = 254
    Top = 62
    Width = 547
    Height = 21
    BevelInner = bvLowered
    BevelOuter = bvSpace
    CharCase = ecUpperCase
    DataField = 'NOM_USUARIO'
    DataSource = dt_studio.ds_cadusu
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 1
  end
  object apelido: TDBEdit
    Left = 11
    Top = 106
    Width = 238
    Height = 21
    BevelInner = bvLowered
    BevelOuter = bvSpace
    CharCase = ecUpperCase
    DataField = 'NOM_APELIDO'
    DataSource = dt_studio.ds_cadusu
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 2
  end
  object senha: TDBEdit
    Left = 255
    Top = 106
    Width = 134
    Height = 21
    BevelInner = bvLowered
    BevelOuter = bvSpace
    DataField = 'SENHA'
    DataSource = dt_studio.ds_cadusu
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    PasswordChar = '*'
    ReadOnly = True
    TabOrder = 3
  end
  object confirma: TDBEdit
    Left = 394
    Top = 106
    Width = 134
    Height = 21
    BevelInner = bvLowered
    BevelOuter = bvSpace
    DataField = 'CONFIRMA'
    DataSource = dt_studio.ds_cadusu
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    PasswordChar = '*'
    ReadOnly = True
    TabOrder = 4
    OnExit = confirmaExit
  end
  object nivel: TDBEdit
    Left = 535
    Top = 106
    Width = 66
    Height = 21
    BevelInner = bvLowered
    BevelOuter = bvSpace
    DataField = 'NIVEL'
    DataSource = dt_studio.ds_cadusu
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 5
  end
  object data: TDBEdit
    Left = 608
    Top = 106
    Width = 193
    Height = 21
    BevelInner = bvLowered
    BevelOuter = bvSpace
    DataField = 'DT_CADASTRO'
    DataSource = dt_studio.ds_cadusu
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 16
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 186
    Width = 792
    Height = 198
    DataSource = dt_studio.ds_cadusu
    DrawingStyle = gdsClassic
    ReadOnly = True
    TabOrder = 17
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDrawColumnCell = DBGrid1DrawColumnCell
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_USUARIO'
        Title.Caption = 'C'#211'DIGO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOM_USUARIO'
        Title.Caption = 'USU'#193'RIO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOM_APELIDO'
        Title.Caption = 'APELIDO'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NIVEL'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DT_CADASTRO'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SITUACAO'
        Visible = True
      end>
  end
end
