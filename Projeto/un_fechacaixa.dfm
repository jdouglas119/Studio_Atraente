object frm_fechacaixa: Tfrm_fechacaixa
  Left = 264
  Top = 115
  BorderStyle = bsToolWindow
  Caption = 'Movimento do Fechamento do Caixa - Studio Atraente -vers'#227'o: 1.0'
  ClientHeight = 501
  ClientWidth = 990
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
  object Label1: TLabel
    Left = 7
    Top = 383
    Width = 131
    Height = 16
    Caption = 'Total Cart'#227'o Cr'#233'dito'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 230
    Top = 383
    Width = 126
    Height = 16
    Caption = 'Total Cart'#227'o D'#233'bito'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 454
    Top = 383
    Width = 89
    Height = 16
    Caption = 'Total Dinheiro'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 697
    Top = 390
    Width = 116
    Height = 16
    Caption = 'Total Pagamentos'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 697
    Top = 426
    Width = 99
    Height = 16
    Caption = 'Total Retiradas'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 697
    Top = 469
    Width = 89
    Height = 16
    Caption = 'SALDO ATUAL'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label7: TLabel
    Left = 8
    Top = 53
    Width = 83
    Height = 13
    Caption = 'DATA DO CAIXA:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label8: TLabel
    Left = 321
    Top = 53
    Width = 46
    Height = 13
    Caption = 'USUARIO'
    FocusControl = usuario
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label9: TLabel
    Left = 8
    Top = 441
    Width = 149
    Height = 16
    Caption = 'Total D'#233'b. Funcion'#225'rios'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label10: TLabel
    Left = 230
    Top = 441
    Width = 91
    Height = 16
    Caption = 'Total Cheques'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label11: TLabel
    Left = 451
    Top = 441
    Width = 83
    Height = 16
    Caption = 'Total Aposte'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBText1: TDBText
    Left = 97
    Top = 51
    Width = 136
    Height = 17
    DataField = 'DT_CAIXA'
    DataSource = dt_studio.ds_fecha_caixa
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 3
    Top = 2
    Width = 979
    Height = 41
    BevelInner = bvLowered
    Caption = 'MOVIMENTO DO FECHAMENTO - CAIXA'
    Color = 13421568
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
  end
  object DBGrid1: TDBGrid
    Left = 7
    Top = 77
    Width = 975
    Height = 300
    Color = clWhite
    DataSource = dt_studio.ds_fecha_caixa
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
    OnCellClick = DBGrid1CellClick
    OnDrawColumnCell = DBGrid1DrawColumnCell
    OnKeyDown = DBGrid1KeyDown
    OnKeyUp = DBGrid1KeyUp
    Columns = <
      item
        Expanded = False
        FieldName = 'DT_CAIXA'
        Width = 74
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USUARIO'
        Title.Caption = 'ABERTURA'
        Width = 87
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USUARIO2'
        Title.Caption = 'FECHAMENTO'
        Width = 89
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SALDO_ANT'
        Width = 73
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'REC_CARTAO_CRED'
        Width = 109
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'REC_CARTAO_DEB'
        Width = 103
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'REC_DINHEIRO'
        Width = 88
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DEB_FUNCIONARIO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PAGAMENTOS'
        Width = 79
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RETIRADAS'
        Width = 78
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'APOSTE'
        Width = 75
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CHEQUES'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SALDO_ATUAL'
        Width = 129
        Visible = True
      end>
  end
  object sButton1: TsButton
    Left = 907
    Top = 46
    Width = 75
    Height = 25
    Caption = 'Fechar'
    TabOrder = 2
    OnClick = sButton1Click
  end
  object usuario: TDBEdit
    Left = 373
    Top = 50
    Width = 190
    Height = 21
    BevelInner = bvLowered
    BevelOuter = bvSpace
    DataField = 'USUARIO'
    DataSource = dt_studio.ds_fecha_caixa
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
  object sPanel1: TsPanel
    Left = 8
    Top = 402
    Width = 185
    Height = 33
    Alignment = taRightJustify
    BevelInner = bvLowered
    BevelOuter = bvNone
    Caption = '0,00'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 4
  end
  object sPanel2: TsPanel
    Left = 230
    Top = 402
    Width = 185
    Height = 33
    Alignment = taRightJustify
    BevelInner = bvLowered
    BevelOuter = bvNone
    Caption = '0,00'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 5
  end
  object sPanel3: TsPanel
    Left = 451
    Top = 402
    Width = 185
    Height = 33
    Alignment = taRightJustify
    BevelInner = bvLowered
    BevelOuter = bvNone
    Caption = '0,00'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 6
  end
  object DBNavigator1: TDBNavigator
    Left = 642
    Top = 47
    Width = 168
    Height = 23
    DataSource = dt_studio.ds_fecha_caixa
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
    Hints.Strings = (
      'Inicial'
      'Anterior'
      'Posterior'
      'Final')
    ParentShowHint = False
    ShowHint = True
    TabOrder = 7
    OnClick = DBNavigator1Click
  end
  object sPanel4: TsPanel
    Left = 828
    Top = 383
    Width = 154
    Height = 31
    Alignment = taRightJustify
    BevelInner = bvLowered
    BevelOuter = bvNone
    Caption = '0,00'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 8
  end
  object sPanel5: TsPanel
    Left = 828
    Top = 419
    Width = 154
    Height = 31
    Alignment = taRightJustify
    BevelInner = bvLowered
    BevelOuter = bvNone
    Caption = '0,00'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 9
  end
  object sPanel6: TsPanel
    Left = 828
    Top = 461
    Width = 154
    Height = 31
    Alignment = taRightJustify
    BevelInner = bvLowered
    BevelOuter = bvNone
    Caption = '0,00'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 10
  end
  object sPanel7: TsPanel
    Left = 8
    Top = 460
    Width = 185
    Height = 33
    Alignment = taRightJustify
    BevelInner = bvLowered
    BevelOuter = bvNone
    Caption = '0,00'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 11
  end
  object sPanel8: TsPanel
    Left = 230
    Top = 460
    Width = 185
    Height = 33
    Alignment = taRightJustify
    BevelInner = bvLowered
    BevelOuter = bvNone
    Caption = '0,00'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 12
  end
  object sPanel9: TsPanel
    Left = 451
    Top = 460
    Width = 185
    Height = 33
    Alignment = taRightJustify
    BevelInner = bvLowered
    BevelOuter = bvNone
    Caption = '0,00'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 13
  end
end
