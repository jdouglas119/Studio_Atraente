object frm_servico: Tfrm_servico
  Left = -8
  Top = -8
  Caption = 'Movimento de Comandas e Servi'#231'os - Studio Atraente - vers'#227'o: 1.0'
  ClientHeight = 715
  ClientWidth = 1366
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesigned
  WindowState = wsMaximized
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 4
    Top = 2
    Width = 1357
    Height = 31
    BevelKind = bkSoft
    Caption = 'INFORMA'#199#213'ES DO CLIENTE'
    Color = 13421568
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
  end
  object sPanel2: TsPanel
    Left = 131
    Top = 30
    Width = 1232
    Height = 265
    BevelInner = bvRaised
    TabOrder = 1
    object Label1: TLabel
      Left = 13
      Top = 25
      Width = 70
      Height = 13
      Caption = 'N'#186': COMANDA'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 207
      Top = 25
      Width = 27
      Height = 13
      Caption = 'DATA'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label25: TLabel
      Left = 684
      Top = 58
      Width = 73
      Height = 13
      Caption = 'OBSERVA'#199#213'ES'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 423
      Top = 25
      Width = 38
      Height = 13
      Caption = 'CODCLI'
      FocusControl = id_cli
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object situacao: TLabel
      Left = 961
      Top = 54
      Width = 52
      Height = 13
      Caption = 'SITUACAO'
      FocusControl = sit
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object sLabel1: TsLabel
      Left = 683
      Top = 169
      Width = 210
      Height = 14
      SkinSection = 'TRANSPARENT'
      Caption = '(AB) - ABERTO - (FI) - FINALIZADO'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
    end
    object Label17: TLabel
      Left = 1019
      Top = 3
      Width = 88
      Height = 13
      Caption = 'DT_ANIVERS'#193'RIO'
      FocusControl = niver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label26: TLabel
      Left = 437
      Top = 241
      Width = 97
      Height = 13
      Caption = 'TOTAL DO SERVI'#199'O'
      FocusControl = id_cli
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label27: TLabel
      Left = 776
      Top = -1
      Width = 58
      Height = 19
      Caption = 'Cliente'
      FocusControl = id_cli
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object id_serv: TDBEdit
      Left = 88
      Top = 16
      Width = 105
      Height = 33
      BevelInner = bvLowered
      BevelOuter = bvSpace
      Color = 15263952
      DataField = 'ID_SERV'
      DataSource = dt_studio.ds_movservico
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
    object data: TDBEdit
      Left = 240
      Top = 22
      Width = 166
      Height = 21
      BevelInner = bvLowered
      BevelOuter = bvSpace
      DataField = 'DATA_SERV'
      DataSource = dt_studio.ds_movservico
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
    end
    object obs: TDBMemo
      Left = 682
      Top = 75
      Width = 303
      Height = 48
      BevelInner = bvLowered
      BevelOuter = bvSpace
      DataField = 'OBS_SERV'
      DataSource = dt_studio.ds_movservico
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      ScrollBars = ssVertical
      TabOrder = 4
    end
    object id_cli: TDBEdit
      Left = 465
      Top = 23
      Width = 97
      Height = 21
      BevelInner = bvLowered
      BevelOuter = bvSpace
      DataField = 'COD_CLLI'
      DataSource = dt_studio.ds_movservico
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
      OnExit = id_cliExit
    end
    object nom_cli: TDBEdit
      Left = 619
      Top = 19
      Width = 394
      Height = 27
      BevelInner = bvLowered
      BevelOuter = bvSpace
      Color = 15263952
      DataField = 'NOM_CLI'
      DataSource = dt_studio.ds_movservico
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
    end
    object radio: TRadioGroup
      Left = 684
      Top = 125
      Width = 205
      Height = 37
      Caption = 'Pesquisa por:'
      Columns = 2
      Items.Strings = (
        'N'#186': Comanda'
        'Nome Cliente')
      TabOrder = 5
      OnClick = radioClick
    end
    object Edit1: TEdit
      Left = 898
      Top = 130
      Width = 223
      Height = 27
      BevelInner = bvLowered
      BevelOuter = bvSpace
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
    end
    object sButton13: TsButton
      Left = 1130
      Top = 132
      Width = 87
      Height = 27
      Caption = 'Pesquisar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
      OnClick = sButton13Click
    end
    object sit: TDBEdit
      Left = 1019
      Top = 49
      Width = 198
      Height = 24
      CharCase = ecUpperCase
      DataField = 'SITUACAO'
      DataSource = dt_studio.ds_movservico
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 8
    end
    object DBGrid2: TDBGrid
      Left = 6
      Top = 58
      Width = 674
      Height = 176
      Color = clWhite
      DataSource = dt_studio.ds_movservico
      DrawingStyle = gdsClassic
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTitleClick, dgTitleHotTrack]
      ReadOnly = True
      TabOrder = 9
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnCellClick = DBGrid2CellClick
      OnDrawColumnCell = DBGrid2DrawColumnCell
      OnKeyUp = DBGrid2KeyUp
      Columns = <
        item
          Expanded = False
          FieldName = 'ID_SERV'
          Title.Caption = 'COMANDA'
          Width = 58
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DATA_SERV'
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'COD_CLLI'
          Title.Caption = 'COD_CLI'
          Width = 52
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOM_CLI'
          Width = 244
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SITUACAO'
          Width = 67
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CONT_VISITAS'
          Title.Caption = 'N'#186' VISITAS'
          Width = 58
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'AUTORIZADO'
          Title.Caption = 'ALT. AUTORIZADO POR'
          Visible = True
        end>
    end
    object Edit2: TEdit
      Left = 899
      Top = 163
      Width = 222
      Height = 27
      BevelInner = bvLowered
      BevelOuter = bvSpace
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 10
    end
    object sButton3: TsButton
      Left = 1130
      Top = 163
      Width = 87
      Height = 27
      Caption = 'Pesquisar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 11
      OnClick = sButton3Click
    end
    object niver: TDBEdit
      Left = 1019
      Top = 19
      Width = 198
      Height = 27
      DataField = 'DT_ANI'
      DataSource = dt_studio.ds_movservico
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 12
    end
    object sButton4: TsButton
      Left = 565
      Top = 20
      Width = 51
      Height = 25
      Caption = '...'
      TabOrder = 13
      OnClick = sButton4Click
    end
    object data_pesq: TDateEdit
      Left = 1019
      Top = 100
      Width = 108
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 14
    end
    object sButton6: TsButton
      Left = 1130
      Top = 98
      Width = 86
      Height = 31
      Caption = 'Pesq. por Data'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 15
      OnClick = sButton6Click
    end
    object Edit3: TEdit
      Left = 542
      Top = 235
      Width = 138
      Height = 24
      Alignment = taRightJustify
      Color = 15263952
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 16
    end
    object sPanel1: TsPanel
      Left = 688
      Top = 196
      Width = 525
      Height = 63
      BevelInner = bvSpace
      BevelKind = bkSoft
      BevelOuter = bvNone
      TabOrder = 17
      object sLabel2: TsLabel
        Left = 18
        Top = 18
        Width = 388
        Height = 19
        Caption = 'N'#186'. DE VISITAS REALIZADAS AT'#201' O MOMENTO:'
        FocusControl = data_pesq
        ParentFont = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
      end
      object cont_vis: TDBEdit
        Left = 414
        Top = 9
        Width = 101
        Height = 37
        Color = 10485760
        DataField = 'CONT_VISITAS'
        DataSource = dt_studio.ds_movservico
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -24
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
      end
    end
  end
  object sPanel3: TsPanel
    Left = 1
    Top = 297
    Width = 1360
    Height = 416
    TabOrder = 2
    object Label6: TLabel
      Left = 133
      Top = 82
      Width = 58
      Height = 13
      Caption = 'COD. SERV.'
      FocusControl = id_cod
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 265
      Top = 82
      Width = 136
      Height = 13
      Caption = 'DESCRI'#199'AO DOS SERVI'#199'OS'
      FocusControl = nom_serv
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 579
      Top = 82
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
    object Label9: TLabel
      Left = 632
      Top = 82
      Width = 70
      Height = 13
      Caption = 'VR. UNIT'#193'RIO'
      FocusControl = vr_unit
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label10: TLabel
      Left = 738
      Top = 82
      Width = 55
      Height = 13
      Caption = 'SUB-TOTAL'
      FocusControl = vr_item
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label15: TLabel
      Left = 839
      Top = 82
      Width = 43
      Height = 13
      Caption = ' %  COM'
      FocusControl = perc_comis
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label16: TLabel
      Left = 903
      Top = 82
      Width = 73
      Height = 13
      Caption = 'VR_COMISS'#195'O'
      FocusControl = vr_comiss
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 1016
      Top = 82
      Width = 40
      Height = 13
      Caption = 'DESC %'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label11: TLabel
      Left = 1076
      Top = 82
      Width = 55
      Height = 13
      Caption = 'DESCONTO'
      FocusControl = vr_desc
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label12: TLabel
      Left = 1212
      Top = 82
      Width = 59
      Height = 13
      Caption = 'TOTAL ITEM'
      FocusControl = vr_total
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label19: TLabel
      Left = 346
      Top = 393
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
      Left = 705
      Top = 393
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
      Left = 1069
      Top = 393
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
    object Label4: TLabel
      Left = 133
      Top = 51
      Width = 74
      Height = 13
      Caption = 'PROFISSIONAL'
      FocusControl = id_cli
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label13: TLabel
      Left = 129
      Top = 392
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
    object Label18: TLabel
      Left = 451
      Top = 51
      Width = 81
      Height = 13
      Caption = 'DEPARTAMENTO'
      FocusControl = id_cli
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object id_cod: TDBEdit
      Left = 127
      Top = 99
      Width = 68
      Height = 24
      BevelInner = bvLowered
      BevelOuter = bvSpace
      Color = clWhite
      DataField = 'ID_CODSERV'
      DataSource = dt_studio.ds_comanda
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      OnExit = id_codExit
    end
    object nom_serv: TDBEdit
      Left = 265
      Top = 99
      Width = 304
      Height = 24
      BevelInner = bvLowered
      BevelOuter = bvSpace
      Color = 15263952
      DataField = 'NOM_SERV'
      DataSource = dt_studio.ds_comanda
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 6
    end
    object quant: TDBEdit
      Left = 574
      Top = 99
      Width = 51
      Height = 24
      BevelInner = bvLowered
      BevelOuter = bvSpace
      DataField = 'QUANT'
      DataSource = dt_studio.ds_comanda
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
      OnExit = quantExit
    end
    object vr_unit: TDBEdit
      Left = 631
      Top = 99
      Width = 95
      Height = 24
      BevelInner = bvLowered
      BevelOuter = bvSpace
      Color = 15263952
      DataField = 'VR_UNIT'
      DataSource = dt_studio.ds_comanda
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 5
      OnExit = vr_unitExit
    end
    object vr_item: TDBEdit
      Left = 733
      Top = 99
      Width = 100
      Height = 24
      BevelInner = bvLowered
      BevelOuter = bvSpace
      Color = 15263952
      DataField = 'TOT_ITEM'
      DataSource = dt_studio.ds_comanda
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 7
    end
    object perc_comis: TDBEdit
      Left = 839
      Top = 99
      Width = 53
      Height = 24
      BevelInner = bvLowered
      BevelOuter = bvSpace
      Color = 15263952
      DataField = 'PERC_COMISSAO'
      DataSource = dt_studio.ds_comanda
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 8
    end
    object vr_comiss: TDBEdit
      Left = 899
      Top = 99
      Width = 102
      Height = 24
      BevelInner = bvLowered
      BevelOuter = bvSpace
      Color = 15263952
      DataField = 'VR_COMISSAO'
      DataSource = dt_studio.ds_comanda
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 9
    end
    object perc: TDBEdit
      Left = 1009
      Top = 99
      Width = 54
      Height = 24
      BevelInner = bvLowered
      BevelOuter = bvSpace
      DataField = 'PERC_DESC'
      DataSource = dt_studio.ds_comanda
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
      OnExit = percExit
    end
    object vr_desc: TDBEdit
      Left = 1069
      Top = 99
      Width = 105
      Height = 24
      BevelInner = bvLowered
      BevelOuter = bvSpace
      DataField = 'DESCONTO'
      DataSource = dt_studio.ds_comanda
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
      OnExit = vr_descExit
    end
    object vr_total: TDBEdit
      Left = 1212
      Top = 99
      Width = 130
      Height = 24
      BevelInner = bvLowered
      BevelOuter = bvSpace
      Color = 15263952
      DataField = 'TOT_SERV'
      DataSource = dt_studio.ds_comanda
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 10
    end
    object DBGrid1: TDBGrid
      Left = 128
      Top = 129
      Width = 1226
      Height = 246
      Color = clWhite
      DataSource = dt_studio.ds_comanda
      DrawingStyle = gdsClassic
      FixedColor = 15658734
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      ParentFont = False
      ReadOnly = True
      TabOrder = 4
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clBlack
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnCellClick = DBGrid1CellClick
      OnDrawColumnCell = DBGrid1DrawColumnCell
      OnKeyDown = DBGrid1KeyDown
      Columns = <
        item
          Expanded = False
          FieldName = 'ID_SERV'
          Title.Caption = 'COMANDA'
          Width = 59
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DATA_SERV'
          Width = 77
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ATENDENTE'
          Width = 110
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DEPARTAMENTO'
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ID_CODSERV'
          Title.Caption = 'C'#211'DIGO'
          Width = 49
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOM_SERV'
          Title.Caption = 'SERVI'#199'O / PRODUTO'
          Width = 239
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'QUANT'
          Width = 39
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VR_UNIT'
          Width = 62
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PERC_COMISSAO'
          Width = 69
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
          Width = 66
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCONTO'
          Width = 63
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TOT_ITEM'
          Width = 73
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TOT_SERV'
          Width = 78
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'AUTORIZADO'
          Title.Caption = 'ALT. AUTORIZADO POR'
          Width = 126
          Visible = True
        end>
    end
    object Panel5: TPanel
      Left = 467
      Top = 378
      Width = 167
      Height = 31
      BevelKind = bkTile
      BevelOuter = bvNone
      TabOrder = 11
      object Label20: TLabel
        Left = 118
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
      Left = 823
      Top = 378
      Width = 168
      Height = 32
      BevelKind = bkTile
      BevelOuter = bvNone
      TabOrder = 12
      object Label24: TLabel
        Left = 122
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
      Left = 1185
      Top = 378
      Width = 169
      Height = 31
      BevelKind = bkTile
      BevelOuter = bvNone
      TabOrder = 13
      object Label22: TLabel
        Left = 115
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
    object sButton12: TsButton
      Left = 202
      Top = 98
      Width = 57
      Height = 25
      Caption = '...'
      TabOrder = 14
      OnClick = sButton12Click
    end
    object DBNavigator1: TDBNavigator
      Left = 1238
      Top = 48
      Width = 104
      Height = 24
      DataSource = dt_studio.ds_movservico
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Hints.Strings = (
        'Inicial'
        'Anterior'
        'Posterior'
        'Final')
      ParentShowHint = False
      ShowHint = True
      TabOrder = 15
      OnClick = DBNavigator1Click
    end
    object combo: TDBLookupComboBox
      Left = 213
      Top = 47
      Width = 228
      Height = 26
      DataField = 'ATENDENTE'
      DataSource = dt_studio.ds_comanda
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      KeyField = 'NOM_FUNC'
      ListField = 'NOM_FUNC'
      ListSource = dt_studio.ds_cadatend
      ParentFont = False
      ReadOnly = True
      TabOrder = 16
      OnClick = comboClick
    end
    object Panel2: TPanel
      Left = -1
      Top = 4
      Width = 1353
      Height = 33
      BevelKind = bkSoft
      Caption = 'INFORMA'#199#213'ES DOS SERVI'#199'OS'
      Color = 13421568
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 17
    end
    object Panel6: TPanel
      Left = 235
      Top = 381
      Width = 44
      Height = 29
      BevelKind = bkTile
      BevelOuter = bvNone
      ParentBackground = False
      TabOrder = 18
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
    object Panel7: TPanel
      Left = -1
      Top = 40
      Width = 122
      Height = 369
      Color = 13421568
      ParentBackground = False
      TabOrder = 19
      object sButton8: TsButton
        Left = 5
        Top = 4
        Width = 114
        Height = 37
        Caption = 'Novo Item'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        OnClick = sButton8Click
      end
      object sButton1: TsButton
        Left = 5
        Top = 41
        Width = 114
        Height = 37
        Caption = 'Alterar Item COM. Aberta'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        OnClick = sButton1Click
      end
      object sButton10: TsButton
        Left = 5
        Top = 148
        Width = 114
        Height = 35
        Caption = 'Excluir Item'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        OnClick = sButton10Click
      end
      object sButton2: TsButton
        Left = 5
        Top = 269
        Width = 114
        Height = 45
        Caption = 'Finalizar Comanda'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        OnClick = sButton2Click
      end
      object sButton5: TsButton
        Left = 5
        Top = 113
        Width = 114
        Height = 35
        Hint = 'CANCELA APENAS A DIGITA'#199#195'O CASO DESISTA DE INCLUIR ITEM'
        Caption = 'Cancelar Item'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
        OnClick = sButton5Click
      end
      object sButton11: TsButton
        Left = 4
        Top = 222
        Width = 115
        Height = 40
        Caption = 'Imprimir Comanda'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
        OnClick = sButton11Click
      end
      object es_sair: TsButton
        Left = 5
        Top = 332
        Width = 114
        Height = 32
        Caption = 'Sair'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 6
        OnClick = es_sairClick
      end
      object sButton7: TsButton
        Left = 5
        Top = 78
        Width = 114
        Height = 35
        Caption = 'Alterar Atend. COM. Finalizada'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 7
        OnClick = sButton7Click
      end
      object sButton9: TsButton
        Left = 5
        Top = 184
        Width = 114
        Height = 35
        Caption = 'Calculadora'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 8
        OnClick = sButton9Click
      end
    end
    object combo2: TDBLookupComboBox
      Left = 538
      Top = 47
      Width = 166
      Height = 26
      DataField = 'DEPARTAMENTO'
      DataSource = dt_studio.ds_comanda
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      KeyField = 'DEPARTAMENTO'
      ListField = 'DEPARTAMENTO'
      ListSource = dt_studio.ds_departamento
      ParentFont = False
      ReadOnly = True
      TabOrder = 20
      OnClick = combo2Click
    end
    object Panel8: TPanel
      Left = 710
      Top = 47
      Width = 526
      Height = 29
      BevelKind = bkTile
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 21
      object Label28: TLabel
        Left = 49
        Top = 3
        Width = 64
        Height = 18
        Alignment = taCenter
        Caption = 'Label28'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial Rounded MT Bold'
        Font.Style = []
        ParentFont = False
      end
    end
  end
  object Panel3: TPanel
    Left = 4
    Top = 36
    Width = 125
    Height = 261
    Color = 13421568
    ParentBackground = False
    TabOrder = 3
    object es_novo: TsButton
      Left = 4
      Top = 4
      Width = 117
      Height = 37
      Caption = 'Novo Servi'#231'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = es_novoClick
    end
    object es_editar: TsButton
      Left = 4
      Top = 41
      Width = 117
      Height = 37
      Caption = 'Alterar Serv. Aberto'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = es_editarClick
    end
    object es_excluir: TsButton
      Left = 4
      Top = 115
      Width = 117
      Height = 37
      Caption = 'Excluir Servi'#231'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = es_excluirClick
    end
    object es_ok: TsButton
      Left = 3
      Top = 185
      Width = 118
      Height = 37
      Caption = 'Gravar Servi'#231'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = es_okClick
    end
    object es_cancel: TsButton
      Left = 4
      Top = 221
      Width = 117
      Height = 34
      Caption = 'Cancelar Servi'#231'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      OnClick = es_cancelClick
    end
    object es_alt_fim: TsButton
      Left = 4
      Top = 78
      Width = 117
      Height = 37
      Caption = 'Alterar Serv. Finalizado'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      OnClick = es_alt_fimClick
    end
  end
  object Timer1: TTimer
    Left = 404
    Top = 142
  end
  object query_cli: TADOQuery
    Connection = dt_studio.Conexao
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT DISTINCT NOM_CLI, DT_ANI'
      'FROM CAD_CLI')
    Left = 556
    Top = 143
    object query_cliNOM_CLI: TStringField
      FieldName = 'NOM_CLI'
      Size = 45
    end
    object query_cliDT_ANI: TDateTimeField
      FieldName = 'DT_ANI'
    end
  end
  object query_comanda: TADOQuery
    Connection = dt_studio.Conexao
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM CAD_COMANDAS')
    Left = 719
    Top = 143
    object query_comandaNOM_SERV: TStringField
      FieldName = 'NOM_SERV'
      Size = 45
    end
    object query_comandaQUANT: TBCDField
      FieldName = 'QUANT'
      Precision = 18
      Size = 0
    end
    object query_comandaVR_UNIT: TFloatField
      FieldName = 'VR_UNIT'
    end
    object query_comandaTOT_ITEM: TFloatField
      FieldName = 'TOT_ITEM'
    end
    object query_comandaDESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object query_comandaPERC_DESC: TFloatField
      FieldName = 'PERC_DESC'
    end
    object query_comandaTOT_SERV: TFloatField
      FieldName = 'TOT_SERV'
    end
    object query_comandaID_CODSERV: TIntegerField
      FieldName = 'ID_CODSERV'
    end
    object query_comandaPERC_COMISSAO: TFloatField
      FieldName = 'PERC_COMISSAO'
    end
    object query_comandaVR_COMISSAO: TFloatField
      FieldName = 'VR_COMISSAO'
    end
    object query_comandaID_SERV: TIntegerField
      FieldName = 'ID_SERV'
    end
    object query_comandaDATA_SERV: TDateTimeField
      FieldName = 'DATA_SERV'
    end
  end
  object query_atend: TADOQuery
    Connection = dt_studio.Conexao
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM CAD_FUNC')
    Left = 628
    Top = 143
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
  object query_prod: TADOQuery
    Connection = dt_studio.Conexao
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM CAD_TIPO')
    Left = 479
    Top = 142
    object query_prodNOME_TIPO: TStringField
      FieldName = 'NOME_TIPO'
    end
    object query_prodDT_CAD: TDateTimeField
      FieldName = 'DT_CAD'
    end
    object query_prodPERC_SERVICO: TBCDField
      FieldName = 'PERC_SERVICO'
      Precision = 18
      Size = 0
    end
    object query_prodVR_SERVICO: TBCDField
      FieldName = 'VR_SERVICO'
      Precision = 18
      Size = 0
    end
    object query_prodSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Size = 10
    end
    object query_prodID_TIPO: TAutoIncField
      FieldName = 'ID_TIPO'
      ReadOnly = True
    end
    object query_prodCUSTO: TFloatField
      FieldName = 'CUSTO'
    end
    object query_prodTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 5
    end
    object query_prodESTOQUE: TBCDField
      FieldName = 'ESTOQUE'
      Precision = 18
      Size = 0
    end
  end
end
