object frm_aposte: Tfrm_aposte
  Left = 411
  Top = 237
  BorderStyle = bsToolWindow
  Caption = 'Aposte Caixa - Studio Atraente - vers'#227'o: 1.0'
  ClientHeight = 320
  ClientWidth = 632
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
    Left = 91
    Top = 8
    Width = 56
    Height = 13
    Caption = 'ID_APOSTE'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 209
    Top = 8
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
    Left = 91
    Top = 56
    Width = 58
    Height = 13
    Caption = 'VR_APOSTE'
    FocusControl = valor
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 209
    Top = 56
    Width = 46
    Height = 13
    Caption = 'USUARIO'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label11: TLabel
    Left = 425
    Top = 52
    Width = 75
    Height = 13
    Caption = 'Autorizado por:'
    FocusControl = data
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object DBText1: TDBText
    Left = 504
    Top = 51
    Width = 123
    Height = 17
    DataField = 'AUTORIZADO'
    DataSource = dt_studio.ds_aposte
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 91
    Top = 99
    Width = 65
    Height = 13
    Caption = 'OBS_APOSTE'
    FocusControl = memo
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object DBGrid1: TDBGrid
    Left = 92
    Top = 154
    Width = 531
    Height = 119
    Color = clWhite
    DataSource = dt_studio.ds_aposte
    DrawingStyle = gdsClassic
    ReadOnly = True
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDrawColumnCell = DBGrid1DrawColumnCell
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_APOSTE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VR_APOSTE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USUARIO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'AUTORIZADO'
        Title.Alignment = taCenter
        Title.Caption = 'ALTERA'#199#195'O AUT. POR'
        Visible = True
      end>
  end
  object data: TDBEdit
    Left = 209
    Top = 24
    Width = 200
    Height = 21
    BevelInner = bvLowered
    BevelOuter = bvSpace
    DataField = 'DATA'
    DataSource = dt_studio.ds_aposte
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 4
  end
  object valor: TDBEdit
    Left = 91
    Top = 72
    Width = 105
    Height = 21
    BevelInner = bvLowered
    BevelOuter = bvSpace
    DataField = 'VR_APOSTE'
    DataSource = dt_studio.ds_aposte
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 1
  end
  object usuario: TDBEdit
    Left = 209
    Top = 72
    Width = 200
    Height = 21
    BevelInner = bvLowered
    BevelOuter = bvSpace
    DataField = 'USUARIO'
    DataSource = dt_studio.ds_aposte
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 5
  end
  object id_aposte: TDBEdit
    Left = 91
    Top = 24
    Width = 105
    Height = 21
    BevelInner = bvLowered
    BevelOuter = bvSpace
    DataField = 'ID_APOSTE'
    DataSource = dt_studio.ds_aposte
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 0
  end
  object DBNavigator1: TDBNavigator
    Left = 425
    Top = 8
    Width = 184
    Height = 25
    DataSource = dt_studio.ds_aposte
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
    TabOrder = 6
  end
  object memo: TDBMemo
    Left = 92
    Top = 115
    Width = 317
    Height = 35
    DataField = 'OBS_APOSTE'
    DataSource = dt_studio.ds_aposte
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 2
  end
  object Panel1: TPanel
    Left = 320
    Top = 279
    Width = 304
    Height = 36
    BevelKind = bkSoft
    BevelOuter = bvNone
    TabOrder = 7
    object Label6: TLabel
      Left = 10
      Top = 8
      Width = 140
      Height = 13
      Caption = 'TOTAL GERAL DO APOSTE'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object total_aposte: TDBEdit
      Left = 176
      Top = 2
      Width = 121
      Height = 24
      Color = 15263952
      DataField = 'TOT_APOSTE'
      DataSource = dt_studio.ds_totais
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
  end
  object data_pesq: TDateEdit
    Left = 415
    Top = 115
    Width = 108
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    NumGlyphs = 2
    ParentFont = False
    TabOrder = 8
  end
  object sButton1: TsButton
    Left = 526
    Top = 113
    Width = 97
    Height = 25
    Caption = 'Pesq.  por Data'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 9
    OnClick = sButton1Click
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 86
    Height = 320
    Align = alLeft
    Color = 13421568
    ParentBackground = False
    TabOrder = 10
    object novo: TsButton
      Left = 5
      Top = 5
      Width = 75
      Height = 25
      Caption = 'Novo'
      TabOrder = 0
      OnClick = novoClick
    end
    object editar: TsButton
      Left = 5
      Top = 32
      Width = 75
      Height = 25
      Caption = 'Alterar'
      TabOrder = 1
      OnClick = editarClick
    end
    object gravar: TsButton
      Left = 5
      Top = 86
      Width = 75
      Height = 25
      Caption = 'OK'
      TabOrder = 2
      OnClick = gravarClick
    end
    object cancelar: TsButton
      Left = 5
      Top = 113
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      TabOrder = 3
      OnClick = cancelarClick
    end
    object sair: TsButton
      Left = 5
      Top = 195
      Width = 75
      Height = 25
      Caption = 'Sair'
      TabOrder = 4
      OnClick = sairClick
    end
  end
end
