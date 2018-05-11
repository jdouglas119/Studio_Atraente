object frm_cadauto: Tfrm_cadauto
  Left = 390
  Top = 271
  BorderStyle = bsToolWindow
  Caption = 
    'Cadastro de Usu'#225'rios para Autoriza'#231#227'o - Studio Atraente - vers'#227'o' +
    ': 1.0'
  ClientHeight = 223
  ClientWidth = 548
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
    Left = 135
    Top = 53
    Width = 109
    Height = 13
    Caption = 'NOME_AUTORIZADOR'
    FocusControl = nome
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 456
    Top = 53
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
  object Label3: TLabel
    Left = 8
    Top = 53
    Width = 102
    Height = 13
    Caption = 'COD_AUTORIZADOR'
    FocusControl = cod
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object nome: TDBEdit
    Left = 135
    Top = 69
    Width = 312
    Height = 21
    BevelInner = bvLowered
    BevelOuter = bvSpace
    CharCase = ecUpperCase
    DataField = 'AUTORIZADOR'
    DataSource = dt_studio.ds_cadauto
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 1
  end
  object senha: TDBEdit
    Left = 456
    Top = 69
    Width = 82
    Height = 21
    BevelInner = bvLowered
    BevelOuter = bvSpace
    DataField = 'SENHA'
    DataSource = dt_studio.ds_cadauto
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    PasswordChar = '*'
    ReadOnly = True
    TabOrder = 2
  end
  object cod: TDBEdit
    Left = 8
    Top = 69
    Width = 91
    Height = 21
    BevelInner = bvLowered
    BevelOuter = bvSpace
    DataField = 'COD_AUTORIZADOR'
    DataSource = dt_studio.ds_cadauto
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 0
  end
  object sPanel1: TsPanel
    Left = 8
    Top = 8
    Width = 532
    Height = 39
    BevelInner = bvLowered
    Color = 13421568
    ParentBackground = False
    TabOrder = 3
    object novo: TsButton
      Left = 3
      Top = 7
      Width = 88
      Height = 27
      Caption = 'Novo'
      TabOrder = 0
      OnClick = novoClick
    end
    object editar: TsButton
      Left = 91
      Top = 7
      Width = 88
      Height = 27
      Caption = 'Editar'
      TabOrder = 1
      OnClick = editarClick
    end
    object excluir: TsButton
      Left = 179
      Top = 7
      Width = 88
      Height = 27
      Caption = 'Excluir'
      TabOrder = 2
      OnClick = excluirClick
    end
    object nav_cli: TDBNavigator
      Left = 291
      Top = 6
      Width = 108
      Height = 27
      DataSource = dt_studio.ds_cadauto
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Hints.Strings = (
        'Inicio'
        'Anterior'
        'Posterior'
        'Ultimo')
      TabOrder = 3
    end
    object sair: TsButton
      Left = 426
      Top = 7
      Width = 88
      Height = 27
      Caption = 'Sair'
      TabOrder = 4
      OnClick = sairClick
    end
  end
  object gravar: TsButton
    Left = 415
    Top = 161
    Width = 88
    Height = 27
    Caption = 'OK'
    TabOrder = 4
    OnClick = gravarClick
  end
  object cancelar: TsButton
    Left = 415
    Top = 128
    Width = 88
    Height = 27
    Caption = 'Cancelar'
    TabOrder = 5
    OnClick = cancelarClick
  end
  object grid_auto: TDBGrid
    Left = 8
    Top = 96
    Width = 337
    Height = 120
    DataSource = dt_studio.ds_cadauto
    DrawingStyle = gdsClassic
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDrawColumnCell = grid_autoDrawColumnCell
    Columns = <
      item
        Expanded = False
        FieldName = 'COD_AUTORIZADOR'
        Title.Caption = 'C'#211'DIGO'
        Width = 55
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'AUTORIZADOR'
        Title.Caption = 'NOME_AUTORIZADOR'
        Width = 240
        Visible = True
      end>
  end
end
