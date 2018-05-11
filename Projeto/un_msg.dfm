object frm_msg: Tfrm_msg
  Left = 240
  Top = 141
  BorderStyle = bsNone
  Caption = 'Mensagem'
  ClientHeight = 227
  ClientWidth = 543
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 8
    Top = 8
    Width = 533
    Height = 221
    BevelInner = bvLowered
    BevelKind = bkFlat
    Color = 13421568
    ParentBackground = False
    TabOrder = 0
    object Label2: TLabel
      Left = 10
      Top = 47
      Width = 501
      Height = 18
      Caption = 'CLIENTE  J'#193'  ATINGIU O N'#218'MERO M'#193'XIMO  DE  DEZ ( 10 ) VISITAS'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 55
      Top = 72
      Width = 449
      Height = 18
      Caption = 'ESSE SERVI'#199'O IR'#193' GERAR UM DESCONTO DE CINCO ( 5% )'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 118
      Top = 97
      Width = 253
      Height = 18
      Caption = 'O CICLO DE  VISITAS  IR'#193'  ZERAR'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 207
      Top = 10
      Width = 119
      Height = 25
      Caption = 'ATEN'#199#195'O ! '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 110
      Top = 122
      Width = 270
      Height = 18
      Caption = 'PARA O INICIO DE UM NOVO CICLO'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object BitBtn1: TBitBtn
      Left = 223
      Top = 162
      Width = 95
      Height = 33
      Kind = bkOK
      NumGlyphs = 2
      TabOrder = 0
      OnClick = BitBtn1Click
    end
  end
end
