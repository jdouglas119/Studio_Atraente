object frm_formapag: Tfrm_formapag
  Left = 425
  Top = 171
  BorderStyle = bsToolWindow
  Caption = 'Cadastro de Formas de Pagamentos - Studio Atraente - vers'#227'o: 1.0'
  ClientHeight = 303
  ClientWidth = 591
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
    Left = 9
    Top = 47
    Width = 79
    Height = 13
    Caption = 'ID_FORMA_PAG'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 118
    Top = 47
    Width = 62
    Height = 13
    Caption = 'FORMA_PAG'
    FocusControl = nom_forma
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 388
    Top = 47
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
  object Label27: TLabel
    Left = 9
    Top = 256
    Width = 187
    Height = 13
    Caption = 'Campo obrigat'#243'rio para preenchimento'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label28: TLabel
    Left = 200
    Top = 257
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
  object Label19: TLabel
    Left = 182
    Top = 47
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
  object sPanel1: TsPanel
    Left = 4
    Top = 5
    Width = 581
    Height = 35
    BevelInner = bvLowered
    Color = 13421568
    ParentBackground = False
    TabOrder = 4
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
    object nav_forma: TDBNavigator
      Left = 322
      Top = 4
      Width = 112
      Height = 27
      DataSource = dt_studio.ds_formapag
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Hints.Strings = (
        'Inicio'
        'Anterior'
        'Posterior'
        'Ultimo')
      TabOrder = 3
    end
    object sair: TsButton
      Left = 487
      Top = 4
      Width = 88
      Height = 27
      Caption = 'Sair'
      TabOrder = 4
      OnClick = sairClick
    end
  end
  object gravar: TsButton
    Left = 408
    Top = 252
    Width = 88
    Height = 27
    Caption = 'OK'
    TabOrder = 5
    OnClick = gravarClick
  end
  object cancelar: TsButton
    Left = 496
    Top = 252
    Width = 86
    Height = 27
    Caption = 'Cancelar'
    TabOrder = 6
    OnClick = cancelarClick
  end
  object nom_forma: TDBEdit
    Left = 118
    Top = 62
    Width = 264
    Height = 21
    BevelInner = bvLowered
    BevelOuter = bvSpace
    CharCase = ecUpperCase
    DataField = 'FORMA_PAG'
    DataSource = dt_studio.ds_formapag
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 1
  end
  object data: TDBEdit
    Left = 387
    Top = 62
    Width = 195
    Height = 21
    BevelInner = bvLowered
    BevelOuter = bvSpace
    DataField = 'DATA'
    DataSource = dt_studio.ds_formapag
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 3
  end
  object grid_forma: TDBGrid
    Left = 8
    Top = 88
    Width = 575
    Height = 160
    Color = clWhite
    DataSource = dt_studio.ds_formapag
    DrawingStyle = gdsClassic
    ReadOnly = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDrawColumnCell = grid_formaDrawColumnCell
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_FORMA_PAG'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FORMA_PAG'
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
    Top = 284
    Width = 591
    Height = 19
    Panels = <
      item
        Text = 
          'F2 - Incluir  -  F3 - Alterar  -  F4 - Excluir  - F5 - Cancelar ' +
          ' - F6 - Gravar  -  F9 - Sair'
        Width = 50
      end>
  end
  object id_formapag: TDBEdit
    Left = 8
    Top = 62
    Width = 105
    Height = 21
    BevelInner = bvLowered
    BevelOuter = bvSpace
    DataField = 'ID_FORMA_PAG'
    DataSource = dt_studio.ds_formapag
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
