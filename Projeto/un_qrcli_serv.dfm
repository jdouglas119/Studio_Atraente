object frm_rel_cli: Tfrm_rel_cli
  Left = 235
  Top = 150
  Caption = 'Relat'#243'rio de Servi'#231'os - Clientes'
  ClientHeight = 544
  ClientWidth = 776
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  PixelsPerInch = 96
  TextHeight = 13
  object quickrep1: TQuickRep
    Tag = 1
    Left = 0
    Top = -16
    Width = 794
    Height = 1123
    DataSet = dt_studio.tb_cadcli
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Functions.Strings = (
      'PAGENUMBER'
      'COLUMNNUMBER'
      'REPORTTITLE')
    Functions.DATA = (
      '0'
      '0'
      #39#39)
    Options = [FirstPageHeader, LastPageFooter]
    Page.Columns = 1
    Page.Orientation = poPortrait
    Page.PaperSize = A4
    Page.Continuous = False
    Page.Values = (
      100.000000000000000000
      2970.000000000000000000
      100.000000000000000000
      2100.000000000000000000
      100.000000000000000000
      100.000000000000000000
      0.000000000000000000)
    PrinterSettings.Copies = 1
    PrinterSettings.OutputBin = Auto
    PrinterSettings.Duplex = False
    PrinterSettings.FirstPage = 0
    PrinterSettings.LastPage = 0
    PrinterSettings.UseStandardprinter = False
    PrinterSettings.UseCustomBinCode = False
    PrinterSettings.CustomBinCode = 0
    PrinterSettings.ExtendedDuplex = 0
    PrinterSettings.UseCustomPaperCode = False
    PrinterSettings.CustomPaperCode = 0
    PrinterSettings.PrintMetaFile = False
    PrinterSettings.MemoryLimit = 1000000
    PrinterSettings.PrintQuality = 0
    PrinterSettings.Collate = 0
    PrinterSettings.ColorOption = 0
    PrintIfEmpty = True
    SnapToGrid = True
    Units = MM
    Zoom = 100
    PrevFormStyle = fsNormal
    PreviewInitialState = wsNormal
    PrevInitialZoom = qrZoomToFit
    PreviewDefaultSaveType = stQRP
    PreviewLeft = 0
    PreviewTop = 0
    object QRBand3: TQRBand
      Left = 38
      Top = 38
      Width = 718
      Height = 27
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        71.437500000000000000
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbDetail
      object QRDBText6: TQRDBText
        Left = 53
        Top = 8
        Width = 57
        Height = 17
        Size.Values = (
          44.979166666666670000
          140.229166666666700000
          21.166666666666670000
          150.812500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = dt_studio.tb_cadcli
        DataField = 'NOM_CLI'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRDBText7: TQRDBText
        Left = 417
        Top = 6
        Width = 53
        Height = 17
        Size.Values = (
          44.979166666666670000
          1103.312500000000000000
          15.875000000000000000
          140.229166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = dt_studio.tb_cadcli
        DataField = 'CPF_CLI'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRDBText8: TQRDBText
        Left = 525
        Top = 6
        Width = 45
        Height = 17
        Size.Values = (
          44.979166666666670000
          1389.062500000000000000
          15.875000000000000000
          119.062500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = dt_studio.tb_cadcli
        DataField = 'DT_ANI'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRDBText9: TQRDBText
        Left = 8
        Top = 8
        Width = 39
        Height = 17
        Size.Values = (
          44.979166666666670000
          21.166666666666670000
          21.166666666666670000
          103.187500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = dt_studio.tb_cadcli
        DataField = 'ID_CLI'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRDBText10: TQRDBText
        Left = 576
        Top = 6
        Width = 66
        Height = 17
        Size.Values = (
          44.979166666666670000
          1524.000000000000000000
          15.875000000000000000
          174.625000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = dt_studio.tb_cadcli
        DataField = 'SITUACAO'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRDBText11: TQRDBText
        Left = 648
        Top = 6
        Width = 51
        Height = 17
        Size.Values = (
          44.979166666666670000
          1714.500000000000000000
          15.875000000000000000
          134.937500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = dt_studio.tb_cadcli
        DataField = 'DT_CAD'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
    end
  end
  object tb_movservico: TADOQuery
    Connection = dt_studio.Conexao
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM CAD_CLI')
    Left = 72
    object tb_movservicoNOM_CLI: TStringField
      FieldName = 'NOM_CLI'
      Size = 45
    end
    object tb_movservicoCPF_CLI: TStringField
      FieldName = 'CPF_CLI'
      Size = 14
    end
    object tb_movservicoEND_CLI: TStringField
      FieldName = 'END_CLI'
      Size = 45
    end
    object tb_movservicoBAI_CLI: TStringField
      FieldName = 'BAI_CLI'
    end
    object tb_movservicoCEP_CLI: TStringField
      FieldName = 'CEP_CLI'
      Size = 10
    end
    object tb_movservicoCID_CLI: TStringField
      FieldName = 'CID_CLI'
    end
    object tb_movservicoTEL_CLI: TStringField
      FieldName = 'TEL_CLI'
      Size = 13
    end
    object tb_movservicoCEL_CLI: TStringField
      FieldName = 'CEL_CLI'
      Size = 14
    end
    object tb_movservicoDT_ANI: TDateTimeField
      FieldName = 'DT_ANI'
    end
    object tb_movservicoDT_CAD: TDateTimeField
      FieldName = 'DT_CAD'
    end
    object tb_movservicoEMAIL_CLI: TStringField
      FieldName = 'EMAIL_CLI'
      Size = 45
    end
    object tb_movservicoNUM_CLI: TBCDField
      FieldName = 'NUM_CLI'
      Precision = 18
      Size = 0
    end
    object tb_movservicoEST_CLI: TStringField
      FieldName = 'EST_CLI'
      FixedChar = True
      Size = 2
    end
    object tb_movservicoNOM_EST: TStringField
      FieldName = 'NOM_EST'
    end
    object tb_movservicoCOD_EST: TIntegerField
      FieldName = 'COD_EST'
    end
    object tb_movservicoCOMP_END: TStringField
      FieldName = 'COMP_END'
    end
    object tb_movservicoSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Size = 10
    end
    object tb_movservicoID_CLI: TAutoIncField
      FieldName = 'ID_CLI'
      ReadOnly = True
    end
  end
  object ds_cli: TDataSource
    DataSet = dt_studio.tb_cadcli
    Left = 128
  end
end
