object frm_movservico: Tfrm_movservico
  Left = 373
  Top = 152
  BorderStyle = bsToolWindow
  Caption = 'Movimento de Servi'#231'os - Studio Atraente - vers'#227'o: 1.0'
  ClientHeight = 489
  ClientWidth = 809
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
  object sPanel1: TsPanel
    Left = 8
    Top = 5
    Width = 796
    Height = 35
    BevelInner = bvLowered
    TabOrder = 0
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
      Left = 511
      Top = 4
      Width = 164
      Height = 27
      DataSource = dt_studio.ds_movservico
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
    object gravar: TsButton
      Left = 303
      Top = 4
      Width = 88
      Height = 27
      Caption = 'OK'
      TabOrder = 5
      OnClick = gravarClick
    end
    object cancelar: TsButton
      Left = 392
      Top = 4
      Width = 88
      Height = 27
      Caption = 'Cancelar'
      TabOrder = 6
      OnClick = cancelarClick
    end
  end
  object Panel1: TPanel
    Left = 8
    Top = 46
    Width = 796
    Height = 93
    BevelWidth = 2
    TabOrder = 1
    object Label1: TLabel
      Left = 8
      Top = 5
      Width = 70
      Height = 13
      Caption = 'N'#186': COMANDA'
      FocusControl = id_comanda
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 104
      Top = 5
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
      Left = 397
      Top = 48
      Width = 58
      Height = 13
      Caption = 'ATENDENTE'
      FocusControl = nom_atend
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 275
      Top = 5
      Width = 45
      Height = 13
      Caption = 'C'#211'D. CLI'
      FocusControl = id_cli
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 398
      Top = 5
      Width = 41
      Height = 13
      Caption = 'CLIENTE'
      FocusControl = nom_cli
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object SpeedButton1: TSpeedButton
      Left = 352
      Top = 9
      Width = 39
      Height = 33
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
    end
    object Label6: TLabel
      Left = 274
      Top = 48
      Width = 66
      Height = 13
      Caption = 'C'#211'D. ATEND.'
      FocusControl = id_atend
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object SpeedButton2: TSpeedButton
      Left = 352
      Top = 52
      Width = 39
      Height = 33
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
    end
    object Label20: TLabel
      Left = 10
      Top = 48
      Width = 70
      Height = 13
      Caption = 'OBS_SERVICO'
      FocusControl = DBMemo1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object id_comanda: TDBEdit
      Left = 8
      Top = 20
      Width = 88
      Height = 21
      Color = 15658734
      DataField = 'ID_SERV'
      DataSource = dt_studio.ds_movservico
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
    object data: TDBEdit
      Left = 102
      Top = 20
      Width = 165
      Height = 21
      DataField = 'DATA_SERV'
      DataSource = dt_studio.ds_movservico
      ReadOnly = True
      TabOrder = 3
    end
    object nom_atend: TDBEdit
      Left = 397
      Top = 64
      Width = 388
      Height = 21
      CharCase = ecUpperCase
      Color = 15658734
      DataField = 'NOM_ATEND'
      DataSource = dt_studio.ds_movservico
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 4
    end
    object id_cli: TDBEdit
      Left = 273
      Top = 21
      Width = 72
      Height = 21
      DataField = 'COD_CLLI'
      DataSource = dt_studio.ds_movservico
      ReadOnly = True
      TabOrder = 1
      OnExit = id_cliExit
    end
    object nom_cli: TDBEdit
      Left = 396
      Top = 21
      Width = 389
      Height = 21
      CharCase = ecUpperCase
      Color = 15658734
      DataField = 'NOM_CLI'
      DataSource = dt_studio.ds_movservico
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 5
    end
    object id_atend: TDBEdit
      Left = 272
      Top = 64
      Width = 72
      Height = 21
      DataField = 'COD_ATEND'
      DataSource = dt_studio.ds_movservico
      ReadOnly = True
      TabOrder = 2
      OnExit = id_atendExit
    end
    object DBMemo1: TDBMemo
      Left = 9
      Top = 63
      Width = 258
      Height = 27
      DataField = 'OBS_SERV'
      DataSource = dt_studio.ds_movservico
      ReadOnly = True
      TabOrder = 6
    end
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 145
    Width = 794
    Height = 321
    Caption = 'Itens da Comanda'
    TabOrder = 2
    object Label10: TLabel
      Left = 10
      Top = 85
      Width = 58
      Height = 13
      Caption = 'C'#211'D. SERV.'
      FocusControl = id_codserv
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label11: TLabel
      Left = 144
      Top = 85
      Width = 106
      Height = 13
      Caption = 'SERVI'#199'O '#192' REALIZAR'
      FocusControl = tipo
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label12: TLabel
      Left = 536
      Top = 85
      Width = 35
      Height = 13
      Caption = 'QUANT'
      FocusControl = quant
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label13: TLabel
      Left = 614
      Top = 85
      Width = 43
      Height = 13
      Caption = 'VR_UNIT'
      FocusControl = unitario
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label14: TLabel
      Left = 697
      Top = 85
      Width = 50
      Height = 13
      Caption = 'TOT_ITEM'
      FocusControl = tot_item
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object SpeedButton4: TSpeedButton
      Left = 100
      Top = 89
      Width = 39
      Height = 33
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
      OnClick = SpeedButton4Click
    end
    object Label9: TLabel
      Left = 567
      Top = 146
      Width = 62
      Height = 13
      Caption = 'VR_PARCIAL'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label15: TLabel
      Left = 567
      Top = 199
      Width = 47
      Height = 13
      Caption = 'DESC - %'
      FocusControl = vr_perc
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label16: TLabel
      Left = 567
      Top = 237
      Width = 55
      Height = 13
      Caption = 'DESCONTO'
      FocusControl = vr_desconto
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label17: TLabel
      Left = 567
      Top = 289
      Width = 79
      Height = 13
      Caption = 'TOTAL SERVI'#199'O'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object SpeedButton5: TSpeedButton
      Left = 560
      Top = 46
      Width = 224
      Height = 28
      Caption = 'Imprimir Comanda de Servi'#231'os'
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
    end
    object Label18: TLabel
      Left = 10
      Top = 44
      Width = 76
      Height = 13
      Caption = 'ID_COMANDA'
      FocusControl = id_comanda_2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label19: TLabel
      Left = 326
      Top = 47
      Width = 90
      Height = 35
      Caption = 'ITENS'
      FocusControl = tipo
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -29
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 752
      Top = 140
      Width = 35
      Height = 19
      Alignment = taRightJustify
      Caption = '0,00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 752
      Top = 287
      Width = 35
      Height = 19
      Alignment = taRightJustify
      Caption = '0,00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object SpeedButton3: TSpeedButton
      Left = 374
      Top = 19
      Width = 106
      Height = 22
      Caption = 'Totalizar Servi'#231'o'
      OnClick = SpeedButton3Click
    end
    object id_codserv: TDBEdit
      Left = 10
      Top = 101
      Width = 86
      Height = 21
      Color = 15658734
      DataField = 'ID_CODSERV'
      DataSource = dt_studio.ds_comanda
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      OnExit = id_codservExit
    end
    object tipo: TDBEdit
      Left = 142
      Top = 101
      Width = 390
      Height = 21
      Color = 15658734
      DataField = 'NOM_SERV'
      DataSource = dt_studio.ds_comanda
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
    end
    object quant: TDBEdit
      Left = 536
      Top = 101
      Width = 70
      Height = 21
      DataField = 'QUANT'
      DataSource = dt_studio.ds_comanda
      ReadOnly = True
      TabOrder = 2
      OnExit = quantExit
    end
    object unitario: TDBEdit
      Left = 612
      Top = 101
      Width = 80
      Height = 21
      Color = 15658734
      DataField = 'VR_UNIT'
      DataSource = dt_studio.ds_comanda
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
    end
    object tot_item: TDBEdit
      Left = 697
      Top = 101
      Width = 87
      Height = 21
      Color = 15658734
      DataField = 'TOT_ITEM'
      DataSource = dt_studio.ds_comanda
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 5
    end
    object DBGrid1: TDBGrid
      Left = 10
      Top = 130
      Width = 551
      Height = 184
      DataSource = dt_studio.ds_comanda
      DrawingStyle = gdsClassic
      FixedColor = 12713983
      TabOrder = 4
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'ID_COMANDA'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ID_CODSERV'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOM_SERV'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'QUANT'
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
          FieldName = 'VR_PARCIAL'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCONTO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PERC_DESC'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TOT_SERV'
          Visible = True
        end>
    end
    object vr_perc: TDBEdit
      Left = 652
      Top = 196
      Width = 135
      Height = 21
      DataField = 'PERC_DESC'
      DataSource = dt_studio.ds_comanda
      TabOrder = 6
    end
    object vr_desconto: TDBEdit
      Left = 652
      Top = 231
      Width = 135
      Height = 21
      DataField = 'DESCONTO'
      DataSource = dt_studio.ds_comanda
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
    end
    object novo_item: TsButton
      Left = 10
      Top = 16
      Width = 96
      Height = 25
      Caption = 'Novo Item'
      TabOrder = 8
      OnClick = novo_itemClick
    end
    object del_item: TsButton
      Left = 105
      Top = 16
      Width = 96
      Height = 25
      Caption = 'Deletar Item'
      TabOrder = 9
      OnClick = del_itemClick
    end
    object cancela_item: TsButton
      Left = 201
      Top = 16
      Width = 96
      Height = 25
      Caption = 'Cancelar'
      TabOrder = 10
      OnClick = cancela_itemClick
    end
    object id_comanda_2: TDBEdit
      Left = 10
      Top = 60
      Width = 84
      Height = 21
      Color = 15658734
      DataField = 'ID_COMANDA'
      DataSource = dt_studio.ds_comanda
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 11
    end
    object DBNavigator2: TDBNavigator
      Left = 560
      Top = 15
      Width = 224
      Height = 25
      DataSource = dt_studio.ds_movservico
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      TabOrder = 12
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 470
    Width = 809
    Height = 19
    Panels = <
      item
        Text = 
          'F2 - Incluir  -  F3 - Alterar  -  F4 - Excluir  - F5 - Cancelar ' +
          ' - F6 - Gravar  -  F9 - Sair'
        Width = 50
      end>
  end
  object query_cli: TADOQuery
    Connection = dt_studio.Conexao
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM CAD_CLI')
    Left = 256
    Top = 337
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
    object query_cliDT_ANI: TStringField
      FieldName = 'DT_ANI'
      Size = 10
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
    object query_cliNOM_EST: TStringField
      FieldName = 'NOM_EST'
    end
    object query_cliCOD_EST: TIntegerField
      FieldName = 'COD_EST'
    end
    object query_cliCOMP_END: TStringField
      FieldName = 'COMP_END'
    end
    object query_cliSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Size = 10
    end
  end
  object query_serv: TADOQuery
    Connection = dt_studio.Conexao
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM CAD_TIPO')
    Left = 331
    Top = 337
    object query_servID_TIPO: TIntegerField
      FieldName = 'ID_TIPO'
    end
    object query_servNOME_TIPO: TStringField
      FieldName = 'NOME_TIPO'
    end
    object query_servDT_CAD: TDateTimeField
      FieldName = 'DT_CAD'
    end
    object query_servPERC_SERVICO: TBCDField
      FieldName = 'PERC_SERVICO'
      Precision = 18
      Size = 0
    end
    object query_servVR_SERVICO: TBCDField
      FieldName = 'VR_SERVICO'
      DisplayFormat = ',0.00'
      currency = True
      Precision = 18
      Size = 0
    end
    object query_servSITUACAO: TStringField
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
    Left = 408
    Top = 337
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
end
