object dt_studio: Tdt_studio
  OldCreateOrder = False
  Left = 339
  Top = 74
  Height = 657
  Width = 667
  object Conexao: TADOConnection
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=Pc1190623;Persist Security Info=Tru' +
      'e;User ID=sa;Initial Catalog=Studio_Atraente;Data Source=DOUGLAS' +
      '-TI;Use Procedure for Prepare=1;Auto Translate=True;Packet Size=' +
      '4096;Workstation ID=STATRAENTE;Use Encryption for Data=False;Tag' +
      ' with column collation when possible=False'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 25
    Top = 3
  end
  object ds_cadcli: TDataSource
    DataSet = tb_cadcli
    Left = 473
    Top = 223
  end
  object tb_cadcli: TADOQuery
    Connection = Conexao
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM CAD_CLI'
      'ORDER BY NOM_CLI')
    Left = 89
    Top = 3
    object tb_cadcliSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Size = 10
    end
    object tb_cadcliID_CLI: TAutoIncField
      FieldName = 'ID_CLI'
      ReadOnly = True
    end
    object tb_cadcliNOM_CLI: TStringField
      FieldName = 'NOM_CLI'
      Size = 45
    end
    object tb_cadcliPROFISSAO_CLI: TStringField
      FieldName = 'PROFISSAO_CLI'
    end
    object tb_cadcliCPF_CLI: TStringField
      FieldName = 'CPF_CLI'
      EditMask = '999.999.999-99'
      Size = 14
    end
    object tb_cadcliEND_CLI: TStringField
      FieldName = 'END_CLI'
      Size = 45
    end
    object tb_cadcliCOMP_END: TStringField
      FieldName = 'COMP_END'
    end
    object tb_cadcliNUM_CLI: TBCDField
      FieldName = 'NUM_CLI'
      Precision = 18
      Size = 0
    end
    object tb_cadcliBAI_CLI: TStringField
      FieldName = 'BAI_CLI'
    end
    object tb_cadcliCEP_CLI: TStringField
      FieldName = 'CEP_CLI'
      EditMask = '99.999-999'
      Size = 10
    end
    object tb_cadcliCID_CLI: TStringField
      FieldName = 'CID_CLI'
    end
    object tb_cadcliEST_CLI: TStringField
      FieldName = 'EST_CLI'
      FixedChar = True
      Size = 2
    end
    object tb_cadcliTEL_CLI: TStringField
      FieldName = 'TEL_CLI'
      EditMask = '(99)9999-9999'
      Size = 13
    end
    object tb_cadcliDT_ANI: TDateTimeField
      FieldName = 'DT_ANI'
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '99/99/9999'
    end
    object tb_cadcliCEL_CLI: TStringField
      FieldName = 'CEL_CLI'
      EditMask = '(99)99999-9999'
      Size = 14
    end
    object tb_cadcliDT_CAD: TDateTimeField
      FieldName = 'DT_CAD'
      EditMask = '!99/99/0000;1;_'
    end
    object tb_cadcliEMAIL_CLI: TStringField
      FieldName = 'EMAIL_CLI'
      Size = 45
    end
    object tb_cadcliFOTO_CLI: TBlobField
      FieldName = 'FOTO_CLI'
    end
    object tb_cadcliCONT_VISITAS: TIntegerField
      FieldName = 'CONT_VISITAS'
    end
  end
  object tb_cadestado: TADOQuery
    Connection = Conexao
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from cad_estado')
    Left = 158
    Top = 3
    object tb_cadestadoCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object tb_cadestadoESTADO: TStringField
      FieldName = 'ESTADO'
    end
    object tb_cadestadoSIGLA: TStringField
      FieldName = 'SIGLA'
      FixedChar = True
      Size = 2
    end
  end
  object ds_cadestado: TDataSource
    DataSet = tb_cadestado
    Left = 183
    Top = 332
  end
  object tb_cadprod: TADOQuery
    Connection = Conexao
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from cad_prod'
      '  order by id_prod')
    Left = 233
    Top = 3
    object tb_cadprodSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Size = 10
    end
    object tb_cadprodID_PROD: TAutoIncField
      FieldName = 'ID_PROD'
      ReadOnly = True
    end
    object tb_cadprodNOM_PROD: TStringField
      FieldName = 'NOM_PROD'
      Size = 45
    end
    object tb_cadprodVR_VENDA: TBCDField
      FieldName = 'VR_VENDA'
      DisplayFormat = ',0.00'
      currency = True
      Precision = 18
      Size = 0
    end
    object tb_cadprodVR_CUSTO: TBCDField
      FieldName = 'VR_CUSTO'
      DisplayFormat = ',0.00'
      currency = True
      Precision = 18
      Size = 0
    end
    object tb_cadprodDT_CAD: TDateTimeField
      FieldName = 'DT_CAD'
    end
    object tb_cadprodQUANT_ESTOQUE: TBCDField
      FieldName = 'QUANT_ESTOQUE'
      Precision = 18
      Size = 0
    end
    object tb_cadprodPERC_COMISSAO: TFloatField
      FieldName = 'PERC_COMISSAO'
    end
  end
  object ds_cadprod: TDataSource
    DataSet = tb_cadprod
    Left = 188
    Top = 223
  end
  object tb_situacao: TADOQuery
    Connection = Conexao
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from cad_situ')
    Left = 388
    Top = 4
    object tb_situacaoSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Size = 10
    end
  end
  object ds_situacao: TDataSource
    DataSet = tb_situacao
    Left = 472
    Top = 335
  end
  object tb_cadatend: TADOQuery
    Connection = Conexao
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from cad_func'
      '  order by id_func')
    Left = 470
    Top = 5
    object tb_cadatendSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Size = 10
    end
    object tb_cadatendID_FUNC: TAutoIncField
      FieldName = 'ID_FUNC'
      ReadOnly = True
    end
    object tb_cadatendNOM_FUNC: TStringField
      FieldName = 'NOM_FUNC'
      Size = 45
    end
    object tb_cadatendDT_NASC: TDateTimeField
      FieldName = 'DT_NASC'
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '99/99/9999'
    end
    object tb_cadatendEND_FUNC: TStringField
      FieldName = 'END_FUNC'
      Size = 45
    end
    object tb_cadatendBAI_FUNC: TStringField
      FieldName = 'BAI_FUNC'
    end
    object tb_cadatendCEP_FUNC: TStringField
      FieldName = 'CEP_FUNC'
      EditMask = '99.999-999'
      Size = 10
    end
    object tb_cadatendCID_FUNC: TStringField
      FieldName = 'CID_FUNC'
    end
    object tb_cadatendAREA_FUNC: TStringField
      FieldName = 'AREA_FUNC'
    end
    object tb_cadatendCOMISSAO_FUNC: TBCDField
      FieldName = 'COMISSAO_FUNC'
      Precision = 18
      Size = 0
    end
    object tb_cadatendDT_CAD: TDateTimeField
      FieldName = 'DT_CAD'
    end
    object tb_cadatendNUM_FUNC: TBCDField
      FieldName = 'NUM_FUNC'
      Precision = 18
      Size = 0
    end
    object tb_cadatendCOD_EST: TIntegerField
      FieldName = 'COD_EST'
    end
    object tb_cadatendUF: TStringField
      FieldKind = fkLookup
      FieldName = 'UF'
      LookupDataSet = tb_cadestado
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'SIGLA'
      KeyFields = 'COD_EST'
      Size = 2
      Lookup = True
    end
    object tb_cadatendCOMP_FUNC: TStringField
      FieldName = 'COMP_FUNC'
    end
    object tb_cadatendTEL_FIXO: TStringField
      FieldName = 'TEL_FIXO'
      EditMask = '(99)9999-9999'
      Size = 13
    end
    object tb_cadatendCEL_FUNC: TStringField
      FieldName = 'CEL_FUNC'
      EditMask = '(99)99999-9999'
      Size = 14
    end
    object tb_cadatendESTADO: TStringField
      FieldKind = fkLookup
      FieldName = 'ESTADO'
      LookupDataSet = tb_cadestado
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'SIGLA'
      KeyFields = 'COD_EST'
      Lookup = True
    end
  end
  object ds_cadatend: TDataSource
    DataSet = tb_cadatend
    Left = 557
    Top = 224
  end
  object tb_cadtiposerv: TADOQuery
    Connection = Conexao
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from cad_tipo order by departamento')
    Left = 25
    Top = 52
    object tb_cadtiposervTIPO: TStringField
      FieldName = 'TIPO'
      Size = 10
    end
    object tb_cadtiposervSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Size = 10
    end
    object tb_cadtiposervNOME_TIPO: TStringField
      FieldName = 'NOME_TIPO'
      Size = 50
    end
    object tb_cadtiposervID_TIPO: TAutoIncField
      FieldName = 'ID_TIPO'
      ReadOnly = True
    end
    object tb_cadtiposervVR_SERVICO: TFloatField
      FieldName = 'VR_SERVICO'
      DisplayFormat = ',0.00'
      currency = True
    end
    object tb_cadtiposervDT_CAD: TDateTimeField
      FieldName = 'DT_CAD'
    end
    object tb_cadtiposervPERC_SERVICO: TBCDField
      FieldName = 'PERC_SERVICO'
      Precision = 18
      Size = 0
    end
    object tb_cadtiposervCUSTO: TFloatField
      FieldName = 'CUSTO'
      DisplayFormat = ',0.00'
      currency = True
    end
    object tb_cadtiposervESTOQUE: TBCDField
      FieldName = 'ESTOQUE'
      Precision = 18
      Size = 0
    end
    object tb_cadtiposervDEPARTAMENTO: TStringField
      FieldName = 'DEPARTAMENTO'
      Size = 15
    end
  end
  object ds_cadtiposerv: TDataSource
    DataSet = tb_cadtiposerv
    Left = 26
    Top = 222
  end
  object tb_cadusu: TADOQuery
    Connection = Conexao
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from cad_usuarios'
      '  order by id_usuario')
    Left = 159
    Top = 52
    object tb_cadusuID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
    end
    object tb_cadusuNOM_USUARIO: TStringField
      FieldName = 'NOM_USUARIO'
      Size = 40
    end
    object tb_cadusuNOM_APELIDO: TStringField
      FieldName = 'NOM_APELIDO'
    end
    object tb_cadusuSENHA: TStringField
      FieldName = 'SENHA'
      Size = 10
    end
    object tb_cadusuCONFIRMA: TStringField
      FieldName = 'CONFIRMA'
      Size = 10
    end
    object tb_cadusuNIVEL: TBCDField
      FieldName = 'NIVEL'
      Precision = 18
      Size = 0
    end
    object tb_cadusuDT_CADASTRO: TDateTimeField
      FieldName = 'DT_CADASTRO'
    end
    object tb_cadusuSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Size = 10
    end
  end
  object ds_cadusu: TDataSource
    DataSet = tb_cadusu
    Left = 29
    Top = 386
  end
  object tb_abertura: TADOQuery
    Connection = Conexao
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from cad_abertura_cx')
    Left = 233
    Top = 53
    object tb_aberturaID_ABERTURA: TIntegerField
      FieldName = 'ID_ABERTURA'
    end
    object tb_aberturaDT_CAIXA: TDateTimeField
      FieldName = 'DT_CAIXA'
    end
    object tb_aberturaVALOR_INI: TFloatField
      FieldName = 'VALOR_INI'
      DisplayFormat = ',0.00'
      currency = True
    end
    object tb_aberturaDT_ATUAL: TDateTimeField
      FieldName = 'DT_ATUAL'
    end
  end
  object ds_abertura: TDataSource
    DataSet = tb_abertura
    Left = 99
    Top = 386
  end
  object tb_movservico: TADOQuery
    Connection = Conexao
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from cab_serv'
      ''
      ''
      ''
      #11
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      '')
    Left = 388
    Top = 55
    object tb_movservicoID_SERV: TIntegerField
      FieldName = 'ID_SERV'
    end
    object tb_movservicoDATA_SERV: TDateTimeField
      FieldName = 'DATA_SERV'
    end
    object tb_movservicoCOD_CLLI: TIntegerField
      FieldName = 'COD_CLLI'
    end
    object tb_movservicoNOM_CLI: TStringField
      FieldName = 'NOM_CLI'
      Size = 45
    end
    object tb_movservicoOBS_SERV: TMemoField
      FieldName = 'OBS_SERV'
      BlobType = ftMemo
    end
    object tb_movservicoSITUACAO: TStringField
      FieldName = 'SITUACAO'
    end
    object tb_movservicoDT_ANI: TDateTimeField
      FieldName = 'DT_ANI'
    end
    object tb_movservicoAUTORIZADO: TStringField
      FieldName = 'AUTORIZADO'
    end
    object tb_movservicoCONT_VISITAS: TIntegerField
      FieldName = 'CONT_VISITAS'
    end
  end
  object ds_movservico: TDataSource
    DataSet = tb_movservico
    Left = 397
    Top = 334
  end
  object ds_comanda: TDataSource
    DataSet = tb_comandas
    Left = 321
    Top = 335
  end
  object tb_cadfornec: TADOQuery
    Connection = Conexao
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM CAD_FORNEC'
      '  order by id_fornec')
    Left = 312
    Top = 6
    object tb_cadfornecID_FORNEC: TAutoIncField
      FieldName = 'ID_FORNEC'
      ReadOnly = True
    end
    object tb_cadfornecCNPJ_FORNEC: TStringField
      FieldName = 'CNPJ_FORNEC'
      EditMask = '99.999.999/9999-99'
      Size = 18
    end
    object tb_cadfornecNOM_FORNEC: TStringField
      FieldName = 'NOM_FORNEC'
      Size = 45
    end
    object tb_cadfornecEND_FORNEC: TStringField
      FieldName = 'END_FORNEC'
      Size = 45
    end
    object tb_cadfornecBAIRRO_FORNEC: TStringField
      FieldName = 'BAIRRO_FORNEC'
    end
    object tb_cadfornecCIDADE_FORNEC: TStringField
      FieldName = 'CIDADE_FORNEC'
    end
    object tb_cadfornecCEP_FORNEC: TStringField
      FieldName = 'CEP_FORNEC'
      EditMask = '99.999-999'
      Size = 10
    end
    object tb_cadfornecUF_FORNEC: TStringField
      FieldName = 'UF_FORNEC'
      FixedChar = True
      Size = 2
    end
    object tb_cadfornecTEL_FORNEC: TStringField
      FieldName = 'TEL_FORNEC'
      EditMask = '(99)9999-9999'
      Size = 13
    end
    object tb_cadfornecCEL_FORNEC: TStringField
      FieldName = 'CEL_FORNEC'
      EditMask = '(99)99999-9999'
      Size = 14
    end
    object tb_cadfornecEMAIL_FORNEC: TStringField
      FieldName = 'EMAIL_FORNEC'
      Size = 45
    end
    object tb_cadfornecDATA_CAD: TDateTimeField
      FieldName = 'DATA_CAD'
    end
    object tb_cadfornecNUM_END: TBCDField
      FieldName = 'NUM_END'
      Precision = 18
      Size = 0
    end
    object tb_cadfornecCOMPL_FORNEC: TStringField
      FieldName = 'COMPL_FORNEC'
    end
    object tb_cadfornecSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Size = 10
    end
  end
  object ds_cadfornec: TDataSource
    DataSet = tb_cadfornec
    Left = 396
    Top = 223
  end
  object tb_movest: TADOQuery
    Connection = Conexao
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM MOV_ESTOQUE')
    Left = 471
    Top = 56
    object tb_movestID_REGISTRO: TAutoIncField
      FieldName = 'ID_REGISTRO'
      ReadOnly = True
    end
    object tb_movestDT_MOV: TDateTimeField
      FieldName = 'DT_MOV'
    end
    object tb_movestES_OBSERVACAO: TMemoField
      FieldName = 'ES_OBSERVACAO'
      BlobType = ftMemo
    end
    object tb_movestNUM_NOTA: TStringField
      FieldName = 'NUM_NOTA'
      Size = 10
    end
    object tb_movestCOD_FORNEC: TIntegerField
      FieldName = 'COD_FORNEC'
    end
    object tb_movestNOM_FORNEC: TStringField
      FieldName = 'NOM_FORNEC'
      Size = 45
    end
    object tb_movestSITU_FORNEC: TStringField
      FieldName = 'SITU_FORNEC'
      Size = 10
    end
  end
  object ds_movest: TDataSource
    DataSet = tb_movest
    Left = 166
    Top = 387
  end
  object ds_movestitens: TDataSource
    DataSet = tb_movestitens
    Left = 27
    Top = 273
  end
  object tb_movestitens: TADODataSet
    Connection = Conexao
    CursorType = ctStatic
    Filtered = True
    CommandText = 'SELECT * FROM MOV_EST_ITENS ORDER BY NOM_PROD'
    DataSource = ds_movest
    IndexFieldNames = 'NUM_NOTA'
    MasterFields = 'NUM_NOTA'
    Parameters = <>
    Left = 166
    Top = 158
    object tb_movestitensNUM_NOTA: TStringField
      FieldName = 'NUM_NOTA'
      Size = 10
    end
    object tb_movestitensCOD_PROD: TIntegerField
      FieldName = 'COD_PROD'
    end
    object tb_movestitensNOM_PROD: TStringField
      FieldName = 'NOM_PROD'
      Size = 45
    end
    object tb_movestitensQUANT: TBCDField
      FieldName = 'QUANT'
      Precision = 18
      Size = 0
    end
    object tb_movestitensVR_UNIT: TFloatField
      FieldName = 'VR_UNIT'
      DisplayFormat = ',0.00'
      currency = True
    end
    object tb_movestitensTOTAL_NOTA: TFloatField
      FieldName = 'TOTAL_NOTA'
      DisplayFormat = ',0.00'
      currency = True
    end
    object tb_movestitensDATA_MOV: TDateTimeField
      FieldName = 'DATA_MOV'
    end
  end
  object tb_correcaoest: TADOQuery
    Connection = Conexao
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM CORRECAO_EST')
    Left = 160
    Top = 105
    object tb_correcaoestID_REGISTRO: TAutoIncField
      FieldName = 'ID_REGISTRO'
      ReadOnly = True
    end
    object tb_correcaoestCOD_PROD: TIntegerField
      FieldName = 'COD_PROD'
    end
    object tb_correcaoestNOM_PROD: TStringField
      FieldName = 'NOM_PROD'
      Size = 45
    end
    object tb_correcaoestQUANT_EST: TBCDField
      FieldName = 'QUANT_EST'
      Precision = 18
      Size = 0
    end
    object tb_correcaoestSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Size = 10
    end
    object tb_correcaoestDATA: TDateTimeField
      FieldName = 'DATA'
    end
  end
  object ds_correcaoest: TDataSource
    DataSet = tb_correcaoest
    Left = 101
    Top = 331
  end
  object tb_vendas: TADOQuery
    Connection = Conexao
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM MOV_VENDAS')
    Left = 235
    Top = 105
    object tb_vendasID_VENDA: TAutoIncField
      FieldName = 'ID_VENDA'
      ReadOnly = True
    end
    object tb_vendasDATA: TDateTimeField
      FieldName = 'DATA'
    end
    object tb_vendasCOD_CLI: TIntegerField
      FieldName = 'COD_CLI'
    end
    object tb_vendasNOM_CLI: TStringField
      FieldName = 'NOM_CLI'
      Size = 45
    end
    object tb_vendasCOD_VEND: TIntegerField
      FieldName = 'COD_VEND'
    end
    object tb_vendasNOM_VEND: TStringField
      FieldName = 'NOM_VEND'
      Size = 45
    end
    object tb_vendasFORMA_PAG: TStringField
      DisplayWidth = 30
      FieldName = 'FORMA_PAG'
      Size = 30
    end
    object tb_vendasOBSERVACAO: TMemoField
      FieldName = 'OBSERVACAO'
      BlobType = ftMemo
    end
  end
  object ds_vendas: TDataSource
    DataSet = tb_vendas
    Left = 249
    Top = 333
  end
  object ds_vendas_itens: TDataSource
    Left = 351
    Top = 278
  end
  object tb_movcaixa: TADOQuery
    Connection = Conexao
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM MOV_CAIXA')
    Left = 399
    Top = 108
    object tb_movcaixaDT_CAIXA: TDateTimeField
      FieldName = 'DT_CAIXA'
    end
    object tb_movcaixaSALDO_ANT: TBCDField
      FieldName = 'SALDO_ANT'
      DisplayFormat = ',0.00'
      currency = True
      Precision = 18
      Size = 2
    end
    object tb_movcaixaREC_CARTAO_CRED: TBCDField
      FieldName = 'REC_CARTAO_CRED'
      DisplayFormat = ',0.00'
      currency = True
      Precision = 18
      Size = 2
    end
    object tb_movcaixaREC_CARTAO_DEB: TBCDField
      FieldName = 'REC_CARTAO_DEB'
      DisplayFormat = ',0.00'
      currency = True
      Precision = 18
      Size = 2
    end
    object tb_movcaixaREC_DINHEIRO: TBCDField
      FieldName = 'REC_DINHEIRO'
      DisplayFormat = ',0.00'
      currency = True
      Precision = 18
      Size = 2
    end
    object tb_movcaixaPAGAMENTOS: TBCDField
      FieldName = 'PAGAMENTOS'
      DisplayFormat = ',0.00'
      currency = True
      Precision = 18
      Size = 2
    end
    object tb_movcaixaRETIRADAS: TBCDField
      FieldName = 'RETIRADAS'
      DisplayFormat = ',0.00'
      currency = True
      Precision = 18
      Size = 2
    end
    object tb_movcaixaAPOSTE: TBCDField
      FieldName = 'APOSTE'
      DisplayFormat = ',0.00'
      currency = True
      Precision = 18
      Size = 2
    end
    object tb_movcaixaSALDO_ATUAL: TBCDField
      FieldName = 'SALDO_ATUAL'
      DisplayFormat = ',0.00'
      currency = True
      Precision = 18
      Size = 2
    end
    object tb_movcaixaUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
    object tb_movcaixaDEB_FUNCIONARIO: TFloatField
      FieldName = 'DEB_FUNCIONARIO'
      DisplayFormat = ',0.00'
      currency = True
    end
    object tb_movcaixaCHEQUES: TFloatField
      FieldName = 'CHEQUES'
      DisplayFormat = ',0.00'
      currency = True
    end
    object tb_movcaixaUSUARIO2: TStringField
      FieldName = 'USUARIO2'
    end
  end
  object ds_movcaixa: TDataSource
    DataSet = tb_movcaixa
    Left = 559
    Top = 280
  end
  object tb_rec_caixa: TADOQuery
    Connection = Conexao
    CursorType = ctStatic
    Filtered = True
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM REC_CAIXA')
    Left = 313
    Top = 54
    object tb_rec_caixaID_CAIXA_REC: TAutoIncField
      FieldName = 'ID_CAIXA_REC'
      ReadOnly = True
    end
    object tb_rec_caixaDATA_REC: TDateTimeField
      FieldName = 'DATA_REC'
    end
    object tb_rec_caixaREC_CARTAO_CRED: TFloatField
      FieldName = 'REC_CARTAO_CRED'
      DisplayFormat = ',0.00'
      currency = True
    end
    object tb_rec_caixaREC_CARTAO_DEB: TFloatField
      FieldName = 'REC_CARTAO_DEB'
      DisplayFormat = ',0.00'
      currency = True
    end
    object tb_rec_caixaREC_DINHEIRO: TFloatField
      FieldName = 'REC_DINHEIRO'
      DisplayFormat = ',0.00'
      currency = True
    end
    object tb_rec_caixaFORMA_PAG: TStringField
      FieldName = 'FORMA_PAG'
      Size = 30
    end
    object tb_rec_caixaUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
    object tb_rec_caixaCOMANDA: TIntegerField
      FieldName = 'COMANDA'
    end
    object tb_rec_caixaAUTORIZADO: TStringField
      FieldName = 'AUTORIZADO'
    end
    object tb_rec_caixaOBS_ALTERACAO: TMemoField
      FieldName = 'OBS_ALTERACAO'
      BlobType = ftMemo
    end
    object tb_rec_caixaDEB_FUNCIONARIO: TFloatField
      FieldName = 'DEB_FUNCIONARIO'
      DisplayFormat = ',0.00'
      currency = True
    end
    object tb_rec_caixaCHEQUES: TFloatField
      FieldName = 'CHEQUES'
      DisplayFormat = ',0.00'
      currency = True
    end
    object tb_rec_caixaCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Size = 40
    end
  end
  object ds_rec_caixa: TDataSource
    DataSet = tb_rec_caixa
    Left = 320
    Top = 223
  end
  object tb_retiradas: TADOQuery
    Connection = Conexao
    CursorType = ctStatic
    Filtered = True
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM CAD_RETIRADAS')
    Left = 561
    Top = 108
    object tb_retiradasID_RETIRADAS: TAutoIncField
      FieldName = 'ID_RETIRADAS'
      ReadOnly = True
    end
    object tb_retiradasDATA: TDateTimeField
      FieldName = 'DATA'
    end
    object tb_retiradasPAGAMENTOS: TFloatField
      FieldName = 'PAGAMENTOS'
      DisplayFormat = ',0.00'
      currency = True
    end
    object tb_retiradasRETIRADAS: TFloatField
      FieldName = 'RETIRADAS'
      DisplayFormat = ',0.00'
      currency = True
    end
    object tb_retiradasOBSERVACAO: TMemoField
      FieldName = 'OBSERVACAO'
      BlobType = ftMemo
    end
    object tb_retiradasUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
    object tb_retiradasAUTORIZADO: TStringField
      FieldName = 'AUTORIZADO'
    end
  end
  object ds_retiradas: TDataSource
    DataSet = tb_retiradas
    Left = 428
    Top = 280
  end
  object tb_formapag: TADOQuery
    Connection = Conexao
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM CAD_FORMA_PAG')
    Left = 92
    Top = 157
    object tb_formapagID_FORMA_PAG: TAutoIncField
      FieldName = 'ID_FORMA_PAG'
      ReadOnly = True
    end
    object tb_formapagFORMA_PAG: TStringField
      DisplayWidth = 30
      FieldName = 'FORMA_PAG'
      Size = 30
    end
    object tb_formapagDATA: TDateTimeField
      FieldName = 'DATA'
    end
  end
  object ds_formapag: TDataSource
    DataSet = tb_formapag
    Left = 26
    Top = 329
  end
  object tb_fecha_caixa: TADOQuery
    Connection = Conexao
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM MOV_FECHA_CAIXA'
      '                ORDER BY DT_CAIXA')
    Left = 318
    Top = 107
    object tb_fecha_caixaDT_CAIXA: TDateTimeField
      FieldName = 'DT_CAIXA'
    end
    object tb_fecha_caixaSALDO_ANT: TBCDField
      FieldName = 'SALDO_ANT'
      DisplayFormat = ',0.00'
      currency = True
      Precision = 18
      Size = 0
    end
    object tb_fecha_caixaREC_CARTAO_CRED: TBCDField
      FieldName = 'REC_CARTAO_CRED'
      DisplayFormat = ',0.00'
      currency = True
      Precision = 18
      Size = 0
    end
    object tb_fecha_caixaREC_CARTAO_DEB: TBCDField
      FieldName = 'REC_CARTAO_DEB'
      DisplayFormat = ',0.00'
      currency = True
      Precision = 18
      Size = 0
    end
    object tb_fecha_caixaREC_DINHEIRO: TBCDField
      FieldName = 'REC_DINHEIRO'
      DisplayFormat = ',0.00'
      currency = True
      Precision = 18
      Size = 0
    end
    object tb_fecha_caixaPAGAMENTOS: TBCDField
      FieldName = 'PAGAMENTOS'
      DisplayFormat = ',0.00'
      currency = True
      Precision = 18
      Size = 0
    end
    object tb_fecha_caixaRETIRADAS: TBCDField
      FieldName = 'RETIRADAS'
      DisplayFormat = ',0.00'
      currency = True
      Precision = 18
      Size = 0
    end
    object tb_fecha_caixaAPOSTE: TBCDField
      FieldName = 'APOSTE'
      DisplayFormat = ',0.00'
      currency = True
      Precision = 18
      Size = 0
    end
    object tb_fecha_caixaSALDO_ATUAL: TBCDField
      FieldName = 'SALDO_ATUAL'
      DisplayFormat = ',0.00'
      currency = True
      Precision = 18
      Size = 0
    end
    object tb_fecha_caixaFORMA_PAG: TStringField
      FieldName = 'FORMA_PAG'
    end
    object tb_fecha_caixaUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
    object tb_fecha_caixaDEB_FUNCIONARIO: TFloatField
      FieldName = 'DEB_FUNCIONARIO'
      DisplayFormat = ',0.00'
      currency = True
    end
    object tb_fecha_caixaCHEQUES: TFloatField
      FieldName = 'CHEQUES'
      DisplayFormat = ',0.00'
      currency = True
    end
    object tb_fecha_caixaUSUARIO2: TStringField
      FieldName = 'USUARIO2'
    end
  end
  object ds_fecha_caixa: TDataSource
    DataSet = tb_fecha_caixa
    Left = 203
    Top = 276
  end
  object sql_nivers1: TADOQuery
    Connection = Conexao
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM CAD_CLI')
    Left = 90
    Top = 52
    object sql_nivers1DT_ANI: TDateTimeField
      FieldName = 'DT_ANI'
    end
    object sql_nivers1NOM_CLI: TStringField
      FieldName = 'NOM_CLI'
      Size = 45
    end
  end
  object sql_nivers2: TADOQuery
    Connection = Conexao
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from cad_func')
    Left = 22
    Top = 104
    object sql_nivers2NOM_FUNC: TStringField
      FieldName = 'NOM_FUNC'
      Size = 45
    end
    object sql_nivers2DT_NASC: TDateTimeField
      FieldName = 'DT_NASC'
    end
  end
  object tb_aposte: TADOQuery
    Connection = Conexao
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from cad_aposte')
    Left = 90
    Top = 105
    object tb_aposteID_APOSTE: TAutoIncField
      FieldName = 'ID_APOSTE'
      ReadOnly = True
    end
    object tb_aposteDATA: TDateTimeField
      FieldName = 'DATA'
    end
    object tb_aposteVR_APOSTE: TFloatField
      FieldName = 'VR_APOSTE'
      DisplayFormat = ',0.00'
      currency = True
    end
    object tb_aposteUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
    object tb_aposteAUTORIZADO: TStringField
      FieldName = 'AUTORIZADO'
    end
    object tb_aposteOBS_APOSTE: TMemoField
      FieldName = 'OBS_APOSTE'
      BlobType = ftMemo
    end
  end
  object ds_aposte: TDataSource
    DataSet = tb_aposte
    Left = 255
    Top = 223
  end
  object tb_comandas: TADODataSet
    Connection = Conexao
    CursorType = ctStatic
    Filtered = True
    CommandText = 'SELECT * FROM CAD_COMANDAS'
    DataSource = ds_movservico
    IndexFieldNames = 'ID_SERV'
    MasterFields = 'ID_SERV'
    Parameters = <>
    Left = 242
    Top = 158
    object tb_comandasNOM_SERV: TStringField
      FieldName = 'NOM_SERV'
      Size = 45
    end
    object tb_comandasQUANT: TBCDField
      FieldName = 'QUANT'
      Precision = 18
      Size = 0
    end
    object tb_comandasVR_UNIT: TFloatField
      FieldName = 'VR_UNIT'
      DisplayFormat = ',0.00'
      currency = True
    end
    object tb_comandasTOT_ITEM: TFloatField
      FieldName = 'TOT_ITEM'
      DisplayFormat = ',0.00'
      currency = True
    end
    object tb_comandasDESCONTO: TFloatField
      FieldName = 'DESCONTO'
      DisplayFormat = ',0.00'
      currency = True
    end
    object tb_comandasPERC_DESC: TFloatField
      FieldName = 'PERC_DESC'
      DisplayFormat = ',0.00'
      currency = True
    end
    object tb_comandasTOT_SERV: TFloatField
      FieldName = 'TOT_SERV'
      DisplayFormat = ',0.00'
      currency = True
    end
    object tb_comandasID_CODSERV: TIntegerField
      FieldName = 'ID_CODSERV'
    end
    object tb_comandasPERC_COMISSAO: TFloatField
      FieldName = 'PERC_COMISSAO'
      DisplayFormat = ',0.00'
      currency = True
    end
    object tb_comandasVR_COMISSAO: TFloatField
      FieldName = 'VR_COMISSAO'
      DisplayFormat = ',0.00'
      currency = True
    end
    object tb_comandasDATA_SERV: TDateTimeField
      FieldName = 'DATA_SERV'
    end
    object tb_comandasID_SERV: TIntegerField
      FieldName = 'ID_SERV'
    end
    object tb_comandasATENDENTE: TStringField
      FieldName = 'ATENDENTE'
      Size = 30
    end
    object tb_comandasAUTORIZADO: TStringField
      FieldName = 'AUTORIZADO'
    end
    object tb_comandasDEPARTAMENTO: TStringField
      FieldName = 'DEPARTAMENTO'
      Size = 15
    end
  end
  object ds_cad_tipo: TDataSource
    Left = 279
    Top = 277
  end
  object tb_agenda: TADOQuery
    Connection = Conexao
    CursorType = ctStatic
    Filtered = True
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM CAD_AGENDA')
    Left = 25
    Top = 156
    object tb_agendaNOM_CLI: TStringField
      FieldName = 'NOM_CLI'
      Size = 40
    end
    object tb_agendaDATA_AGENDA: TDateTimeField
      FieldName = 'DATA_AGENDA'
      EditMask = '99/99/9999'
    end
    object tb_agendaHORARIO: TStringField
      FieldName = 'HORARIO'
      EditMask = '99:99'
      Size = 5
    end
    object tb_agendaOBSERVACOES: TMemoField
      FieldName = 'OBSERVACOES'
      BlobType = ftMemo
    end
    object tb_agendaATENDENTE: TStringField
      FieldName = 'ATENDENTE'
      Size = 40
    end
    object tb_agendaID_CLI: TIntegerField
      FieldName = 'ID_CLI'
    end
    object tb_agendaID_AGENDA: TAutoIncField
      FieldName = 'ID_AGENDA'
      ReadOnly = True
    end
  end
  object ds_agenda: TDataSource
    DataSet = tb_agenda
    Left = 493
    Top = 280
  end
  object qry_historico_cliente: TADOQuery
    Connection = Conexao
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT A.ID_SERV, A.DATA_SERV, A.SITUACAO,B.ID_CODSERV, B.NOM_SE' +
        'RV, B.ATENDENTE,SUM(B.QUANT) AS QDE, SUM(B.VR_UNIT) AS VRUNIT, S' +
        'UM(B.DESCONTO) AS DESCONTO, SUM(B.TOT_ITEM) AS TOTALITEM, SUM(B.' +
        'TOT_SERV) AS TOTALLIQ'
      
        'FROM CAB_SERV A INNER JOIN CAD_COMANDAS B ON (A.ID_SERV = B.ID_S' +
        'ERV) '
      
        'GROUP BY A.ID_SERV, A.DATA_SERV, A.SITUACAO,B.ID_CODSERV, B.NOM_' +
        'SERV, B.ATENDENTE')
    Left = 210
    Top = 458
    object qry_historico_clienteID_SERV: TAutoIncField
      FieldName = 'ID_SERV'
      ReadOnly = True
    end
    object qry_historico_clienteDATA_SERV: TDateTimeField
      FieldName = 'DATA_SERV'
    end
    object qry_historico_clienteSITUACAO: TStringField
      FieldName = 'SITUACAO'
    end
    object qry_historico_clienteNOM_SERV: TStringField
      FieldName = 'NOM_SERV'
      Size = 45
    end
    object qry_historico_clienteATENDENTE: TStringField
      FieldName = 'ATENDENTE'
      Size = 30
    end
    object qry_historico_clienteQDE: TFMTBCDField
      FieldName = 'QDE'
      ReadOnly = True
      Precision = 38
      Size = 0
    end
    object qry_historico_clienteVRUNIT: TFloatField
      FieldName = 'VRUNIT'
      ReadOnly = True
      DisplayFormat = ',0.00'
      currency = True
    end
    object qry_historico_clienteDESCONTO: TFloatField
      FieldName = 'DESCONTO'
      ReadOnly = True
      DisplayFormat = ',0.00'
      currency = True
    end
    object qry_historico_clienteID_CODSERV: TIntegerField
      FieldName = 'ID_CODSERV'
    end
    object qry_historico_clienteTOTALITEM: TFloatField
      FieldName = 'TOTALITEM'
      ReadOnly = True
      DisplayFormat = ',0.00'
      currency = True
    end
    object qry_historico_clienteTOTALLIQ: TFloatField
      FieldName = 'TOTALLIQ'
      ReadOnly = True
      DisplayFormat = ',0.00'
      currency = True
    end
  end
  object qry_comissao: TADOQuery
    Connection = Conexao
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT ID_SERV, DATA_SERV, NOM_SERV,PERC_COMISSAO,ATENDENTE,SUM(' +
        'TOT_SERV) AS TOTALLIQ,SUM(VR_COMISSAO) AS VRCOMIS'
      '             FROM CAD_COMANDAS '
      
        '             GROUP BY ID_SERV, DATA_SERV, NOM_SERV,PERC_COMISSAO' +
        ',ATENDENTE'
      
        '             ORDER BY ID_SERV, DATA_SERV, NOM_SERV,PERC_COMISSAO' +
        ',ATENDENTE')
    Left = 34
    Top = 507
    object qry_comissaoID_SERV: TIntegerField
      FieldName = 'ID_SERV'
    end
    object qry_comissaoDATA_SERV: TDateTimeField
      FieldName = 'DATA_SERV'
    end
    object qry_comissaoNOM_SERV: TStringField
      FieldName = 'NOM_SERV'
      Size = 45
    end
    object qry_comissaoPERC_COMISSAO: TFloatField
      FieldName = 'PERC_COMISSAO'
      DisplayFormat = ',0.00'
      currency = True
    end
    object qry_comissaoATENDENTE: TStringField
      FieldName = 'ATENDENTE'
      Size = 30
    end
    object qry_comissaoTOTALLIQ: TFloatField
      FieldName = 'TOTALLIQ'
      ReadOnly = True
      DisplayFormat = ',0.00'
      currency = True
    end
    object qry_comissaoVRCOMIS: TFloatField
      FieldName = 'VRCOMIS'
      ReadOnly = True
      DisplayFormat = ',0.00'
      currency = True
    end
  end
  object qry_estoque: TADOQuery
    Connection = Conexao
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT A.DT_MOV, A.NUM_NOTA, A.COD_FORNEC, A.NOM_FORNEC, B.COD_P' +
        'ROD, B.NOM_PROD,SUM(B.QUANT) AS QDE,SUM(B.VR_UNIT) AS UNIT,SUM(B' +
        '.TOTAL_NOTA) AS TOTAL'
      
        'FROM MOV_ESTOQUE A INNER JOIN MOV_EST_ITENS B ON (A.NUM_NOTA = B' +
        '.NUM_NOTA)'
      
        'GROUP BY A.DT_MOV, A.NUM_NOTA, A.COD_FORNEC, A.NOM_FORNEC, B.COD' +
        '_PROD, B.NOM_PROD')
    Left = 122
    Top = 457
    object qry_estoqueDT_MOV: TDateTimeField
      FieldName = 'DT_MOV'
    end
    object qry_estoqueNUM_NOTA: TStringField
      FieldName = 'NUM_NOTA'
      Size = 10
    end
    object qry_estoqueCOD_FORNEC: TIntegerField
      FieldName = 'COD_FORNEC'
    end
    object qry_estoqueNOM_FORNEC: TStringField
      FieldName = 'NOM_FORNEC'
      Size = 45
    end
    object qry_estoqueCOD_PROD: TIntegerField
      FieldName = 'COD_PROD'
    end
    object qry_estoqueNOM_PROD: TStringField
      FieldName = 'NOM_PROD'
      Size = 45
    end
    object qry_estoqueQDE: TFMTBCDField
      FieldName = 'QDE'
      ReadOnly = True
      Precision = 38
      Size = 0
    end
    object qry_estoqueUNIT: TFloatField
      FieldName = 'UNIT'
      ReadOnly = True
      DisplayFormat = ',0.00'
      currency = True
    end
    object qry_estoqueTOTAL: TFloatField
      FieldName = 'TOTAL'
      ReadOnly = True
      DisplayFormat = ',0.00'
      currency = True
    end
  end
  object qry_comparativo: TADOQuery
    Connection = Conexao
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT DATA_SERV, NOM_SERV,SUM(QUANT) AS QDE, SUM(TOT_SERV) AS T' +
        'OTAL'
      'FROM CAD_COMANDAS'
      'GROUP BY DATA_SERV, NOM_SERV ')
    Left = 121
    Top = 508
    object qry_comparativoDATA_SERV: TDateTimeField
      FieldName = 'DATA_SERV'
    end
    object qry_comparativoNOM_SERV: TStringField
      FieldName = 'NOM_SERV'
      Size = 45
    end
    object qry_comparativoQDE: TFMTBCDField
      FieldName = 'QDE'
      ReadOnly = True
      Precision = 38
      Size = 0
    end
    object qry_comparativoTOTAL: TFloatField
      FieldName = 'TOTAL'
      ReadOnly = True
      DisplayFormat = ',0.00'
      currency = True
    end
  end
  object qry_agenda: TADOQuery
    Connection = Conexao
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT ID_CLI, NOM_CLI, DATA_AGENDA, HORARIO, ATENDENTE '
      'FROM CAD_AGENDA'
      'ORDER BY NOM_CLI')
    Left = 556
    Top = 457
    object qry_agendaID_CLI: TIntegerField
      FieldName = 'ID_CLI'
    end
    object qry_agendaNOM_CLI: TStringField
      FieldName = 'NOM_CLI'
      Size = 40
    end
    object qry_agendaDATA_AGENDA: TDateTimeField
      FieldName = 'DATA_AGENDA'
    end
    object qry_agendaHORARIO: TStringField
      FieldName = 'HORARIO'
      Size = 5
    end
    object qry_agendaATENDENTE: TStringField
      FieldName = 'ATENDENTE'
      Size = 40
    end
  end
  object qry_ComissaoGeral: TADOQuery
    Connection = Conexao
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT ATENDENTE,PERC_COMISSAO,SUM(TOT_SERV) AS TOTALLIQ,'
      'SUM(VR_COMISSAO) AS VRCOMIS FROM CAD_COMANDAS '
      'GROUP BY ATENDENTE,PERC_COMISSAO'
      'ORDER BY ATENDENTE,PERC_COMISSAO')
    Left = 38
    Top = 562
    object qry_ComissaoGeralATENDENTE: TStringField
      FieldName = 'ATENDENTE'
      Size = 30
    end
    object qry_ComissaoGeralPERC_COMISSAO: TFloatField
      FieldName = 'PERC_COMISSAO'
      DisplayFormat = ',0.00'
      currency = True
    end
    object qry_ComissaoGeralTOTALLIQ: TFloatField
      FieldName = 'TOTALLIQ'
      ReadOnly = True
      DisplayFormat = ',0.00'
      currency = True
    end
    object qry_ComissaoGeralVRCOMIS: TFloatField
      FieldName = 'VRCOMIS'
      ReadOnly = True
      DisplayFormat = ',0.00'
      currency = True
    end
  end
  object qry_compgeral: TADOQuery
    Connection = Conexao
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT DATA_SERV, NOM_SERV,'
      'SUM(QUANT) AS QDE, SUM(TOT_SERV) AS TOTAL'
      'FROM CAD_COMANDAS'
      'GROUP BY DATA_SERV, NOM_SERV'
      'ORDER BY DATA_SERV, NOM_SERV;')
    Left = 482
    Top = 457
    object qry_compgeralDATA_SERV: TDateTimeField
      FieldName = 'DATA_SERV'
    end
    object qry_compgeralNOM_SERV: TStringField
      FieldName = 'NOM_SERV'
      Size = 45
    end
    object qry_compgeralQDE: TFMTBCDField
      FieldName = 'QDE'
      ReadOnly = True
      Precision = 38
      Size = 0
    end
    object qry_compgeralTOTAL: TFloatField
      FieldName = 'TOTAL'
      ReadOnly = True
      DisplayFormat = ',0.00'
      currency = True
    end
  end
  object qry_verificaCpf: TADOQuery
    Connection = Conexao
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT CPF_CLI FROM CAD_CLI')
    Left = 397
    Top = 458
    object qry_verificaCpfCPF_CLI: TStringField
      FieldName = 'CPF_CLI'
      Size = 14
    end
  end
  object qry_verificaCnpj: TADOQuery
    Connection = Conexao
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT CNPJ_FORNEC FROM CAD_FORNEC')
    Left = 398
    Top = 510
    object qry_verificaCnpjCNPJ_FORNEC: TStringField
      FieldName = 'CNPJ_FORNEC'
      Size = 18
    end
  end
  object qry_verificaProd: TADOQuery
    Connection = Conexao
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT NOME_TIPO FROM CAD_TIPO')
    Left = 483
    Top = 510
    object qry_verificaProdNOME_TIPO: TStringField
      FieldName = 'NOME_TIPO'
      Size = 50
    end
  end
  object tb_totais: TADOQuery
    Connection = Conexao
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM CAD_TOTAIS')
    Left = 561
    Top = 54
    object tb_totaisTOT_APOSTE: TFloatField
      FieldName = 'TOT_APOSTE'
      DisplayFormat = ',0.00'
      currency = True
    end
    object tb_totaisTOT_PAGAMENTO: TFloatField
      FieldName = 'TOT_PAGAMENTO'
      DisplayFormat = ',0.00'
      currency = True
    end
    object tb_totaisTOT_RETIRADAS: TFloatField
      FieldName = 'TOT_RETIRADAS'
      DisplayFormat = ',0.00'
      currency = True
    end
    object tb_totaisTOT_CARTAO_CRED: TFloatField
      FieldName = 'TOT_CARTAO_CRED'
      DisplayFormat = ',0.00'
      currency = True
    end
    object tb_totaisTOT_CARTAO_DEB: TFloatField
      FieldName = 'TOT_CARTAO_DEB'
      DisplayFormat = ',0.00'
      currency = True
    end
    object tb_totaisTOT_DINHEIRO: TFloatField
      FieldName = 'TOT_DINHEIRO'
      DisplayFormat = ',0.00'
      currency = True
    end
    object tb_totaisTOT_CHEQUES: TFloatField
      FieldName = 'TOT_CHEQUES'
      DisplayFormat = ',0.00'
      currency = True
    end
    object tb_totaisTOT_DEB_FUNC: TFloatField
      FieldName = 'TOT_DEB_FUNC'
      DisplayFormat = ',0.00'
      currency = True
    end
    object tb_totaisDATA: TDateTimeField
      FieldName = 'DATA'
    end
  end
  object ds_totais: TDataSource
    DataSet = tb_totais
    Left = 244
    Top = 386
  end
  object tb_departamento: TADOQuery
    Connection = Conexao
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM CAD_DEPARTAMENTO')
    Left = 556
    Top = 5
    object tb_departamentoID_DEP: TIntegerField
      FieldName = 'ID_DEP'
    end
    object tb_departamentoDEPARTAMENTO: TStringField
      FieldName = 'DEPARTAMENTO'
      Size = 15
    end
  end
  object ds_departamento: TDataSource
    DataSet = tb_departamento
    Left = 554
    Top = 335
  end
  object qry_vendas_dpto: TADOQuery
    Connection = Conexao
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT ID_SERV, NOM_SERV, DATA_SERV, DEPARTAMENTO,SUM(TOT_SERV) ' +
        'AS TOTALLIQ, SUM(QUANT) AS TOT_QUANT'
      '                               FROM CAD_COMANDAS '
      
        '                               GROUP BY ID_SERV, NOM_SERV, DATA_' +
        'SERV, DEPARTAMENTO'
      
        '                               ORDER BY ID_SERV, NOM_SERV, DATA_' +
        'SERV, DEPARTAMENTO')
    Left = 310
    Top = 510
    object qry_vendas_dptoID_SERV: TIntegerField
      FieldName = 'ID_SERV'
    end
    object qry_vendas_dptoNOM_SERV: TStringField
      FieldName = 'NOM_SERV'
      Size = 45
    end
    object qry_vendas_dptoDATA_SERV: TDateTimeField
      FieldName = 'DATA_SERV'
    end
    object qry_vendas_dptoDEPARTAMENTO: TStringField
      FieldName = 'DEPARTAMENTO'
      Size = 15
    end
    object qry_vendas_dptoTOTALLIQ: TFloatField
      FieldName = 'TOTALLIQ'
      ReadOnly = True
      DisplayFormat = ',0.00'
      currency = True
    end
    object qry_vendas_dptoTOT_QUANT: TFMTBCDField
      FieldName = 'TOT_QUANT'
      ReadOnly = True
      Precision = 38
      Size = 0
    end
  end
  object qry_vendasgeral: TADOQuery
    Connection = Conexao
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT DEPARTAMENTO,ID_SERV,ATENDENTE,SUM(TOT_SERV) AS TOTALLIQ,' +
        ' SUM(QUANT) AS TOT_QUANT'
      '                               FROM CAD_COMANDAS '
      
        '                               GROUP BY DEPARTAMENTO,ID_SERV,ATE' +
        'NDENTE '
      
        '                               ORDER BY DEPARTAMENTO,ID_SERV,ATE' +
        'NDENTE')
    Left = 308
    Top = 459
    object qry_vendasgeralDEPARTAMENTO: TStringField
      FieldName = 'DEPARTAMENTO'
      Size = 15
    end
    object qry_vendasgeralTOTALLIQ: TFloatField
      FieldName = 'TOTALLIQ'
      ReadOnly = True
      DisplayFormat = ',0.00'
      currency = True
    end
    object qry_vendasgeralTOT_QUANT: TFMTBCDField
      FieldName = 'TOT_QUANT'
      ReadOnly = True
      Precision = 38
      Size = 0
    end
    object qry_vendasgeralID_SERV: TIntegerField
      FieldName = 'ID_SERV'
    end
    object qry_vendasgeralATENDENTE: TStringField
      FieldName = 'ATENDENTE'
      Size = 30
    end
  end
  object qry_comp_vendas: TADOQuery
    Connection = Conexao
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT DATA_SERV,'
      
        '                         SUM(TOT_SERV) AS TOTAL, SUM(TOTAL_SERV)' +
        ' AS TOT_GERAL'
      '                          FROM CAD_COMANDAS '
      '                         GROUP BY DATA_SERV'
      '                         ORDER BY DATA_SERV'
      ' ')
    Left = 214
    Top = 509
    object qry_comp_vendasDATA_SERV: TDateTimeField
      FieldName = 'DATA_SERV'
    end
    object qry_comp_vendasTOTAL: TFloatField
      FieldName = 'TOTAL'
      ReadOnly = True
      DisplayFormat = ',0.00'
      currency = True
    end
  end
  object tb_comp_totais: TADOQuery
    Connection = Conexao
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM MOV_COMP_VENDAS')
    Left = 474
    Top = 108
    object tb_comp_totaisTOT_JAN: TFloatField
      FieldName = 'TOT_JAN'
      DisplayFormat = ',0.00'
      currency = True
    end
    object tb_comp_totaisTOT_FEV: TFloatField
      FieldName = 'TOT_FEV'
      DisplayFormat = ',0.00'
      currency = True
    end
    object tb_comp_totaisTOT_MAR: TFloatField
      FieldName = 'TOT_MAR'
      DisplayFormat = ',0.00'
      currency = True
    end
    object tb_comp_totaisTOT_ABR: TFloatField
      FieldName = 'TOT_ABR'
      DisplayFormat = ',0.00'
      currency = True
    end
    object tb_comp_totaisTOT_MAI: TFloatField
      FieldName = 'TOT_MAI'
      DisplayFormat = ',0.00'
      currency = True
    end
    object tb_comp_totaisTOT_JUN: TFloatField
      FieldName = 'TOT_JUN'
      DisplayFormat = ',0.00'
      currency = True
    end
    object tb_comp_totaisTOT_JUL: TFloatField
      FieldName = 'TOT_JUL'
      DisplayFormat = ',0.00'
      currency = True
    end
    object tb_comp_totaisTOT_AGO: TFloatField
      FieldName = 'TOT_AGO'
      DisplayFormat = ',0.00'
      currency = True
    end
    object tb_comp_totaisTOT_SET: TFloatField
      FieldName = 'TOT_SET'
      DisplayFormat = ',0.00'
      currency = True
    end
    object tb_comp_totaisTOT_OUT: TFloatField
      FieldName = 'TOT_OUT'
      DisplayFormat = ',0.00'
      currency = True
    end
    object tb_comp_totaisTOT_NOV: TFloatField
      FieldName = 'TOT_NOV'
      DisplayFormat = ',0.00'
      currency = True
    end
    object tb_comp_totaisTOT_DEZ: TFloatField
      FieldName = 'TOT_DEZ'
      DisplayFormat = ',0.00'
      currency = True
    end
    object tb_comp_totaisTOT_ANO: TFloatField
      FieldName = 'TOT_ANO'
      DisplayFormat = ',0.00'
      currency = True
    end
    object tb_comp_totaisANO: TStringField
      FieldName = 'ANO'
      Size = 4
    end
  end
  object ds_comp_totais: TDataSource
    DataSet = tb_comp_totais
    Left = 110
    Top = 222
  end
  object qry_totais_vendas: TADOQuery
    Connection = Conexao
    Parameters = <>
    SQL.Strings = (
      'SELECT DATA_SERV'
      '                         SUM(TOT_SERV) AS TOTAL'
      '                         FROM CAD_COMANDA'
      '                         GROUP BY DATA_SERV')
    Left = 36
    Top = 456
  end
  object tb_arquivo_totais: TADOQuery
    Connection = Conexao
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM CAD_ARQ_TOTAIS')
    Left = 324
    Top = 159
    object tb_arquivo_totaisTOT_JAN: TFloatField
      FieldName = 'TOT_JAN'
      DisplayFormat = ',0.00'
      currency = True
    end
    object tb_arquivo_totaisTOT_FEV: TFloatField
      FieldName = 'TOT_FEV'
      DisplayFormat = ',0.00'
      currency = True
    end
    object tb_arquivo_totaisTOT_MAR: TFloatField
      FieldName = 'TOT_MAR'
      DisplayFormat = ',0.00'
      currency = True
    end
    object tb_arquivo_totaisTOT_ABR: TFloatField
      FieldName = 'TOT_ABR'
      DisplayFormat = ',0.00'
      currency = True
    end
    object tb_arquivo_totaisTOT_MAI: TFloatField
      FieldName = 'TOT_MAI'
      DisplayFormat = ',0.00'
      currency = True
    end
    object tb_arquivo_totaisTOT_JUN: TFloatField
      FieldName = 'TOT_JUN'
      DisplayFormat = ',0.00'
      currency = True
    end
    object tb_arquivo_totaisTOT_JUL: TFloatField
      FieldName = 'TOT_JUL'
      DisplayFormat = ',0.00'
      currency = True
    end
    object tb_arquivo_totaisTOT_AGO: TFloatField
      FieldName = 'TOT_AGO'
      DisplayFormat = ',0.00'
      currency = True
    end
    object tb_arquivo_totaisTOT_SET: TFloatField
      FieldName = 'TOT_SET'
      DisplayFormat = ',0.00'
      currency = True
    end
    object tb_arquivo_totaisTOT_OUT: TFloatField
      FieldName = 'TOT_OUT'
      DisplayFormat = ',0.00'
      currency = True
    end
    object tb_arquivo_totaisTOT_NOV: TFloatField
      FieldName = 'TOT_NOV'
      DisplayFormat = ',0.00'
      currency = True
    end
    object tb_arquivo_totaisTOT_DEZ: TFloatField
      FieldName = 'TOT_DEZ'
      DisplayFormat = ',0.00'
      currency = True
    end
    object tb_arquivo_totaisTOT_ANO: TFloatField
      FieldName = 'TOT_ANO'
      DisplayFormat = ',0.00'
      currency = True
    end
    object tb_arquivo_totaisANO: TStringField
      FieldName = 'ANO'
      Size = 4
    end
  end
  object ds_arquivo_totais: TDataSource
    DataSet = tb_arquivo_totais
    Left = 115
    Top = 274
  end
  object qry_movcaixa: TADOQuery
    Connection = Conexao
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'DTINI'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'DTFIM'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT DT_CAIXA, USUARIO, REC_CARTAO_CRED, REC_CARTAO_DEB, REC_D' +
        'INHEIRO, CHEQUES, DEB_FUNCIONARIO, APOSTE, PAGAMENTOS, RETIRADAS' +
        ', SALDO_ANT, SALDO_ATUAL, '
      
        '              SUM(REC_CARTAO_CRED) AS CRED, SUM(REC_CARTAO_DEB) ' +
        'AS DEB, SUM(REC_DINHEIRO) AS DIN, SUM(CHEQUES) AS CHQ,'
      
        '              SUM(DEB_FUNCIONARIO) AS FUNC, SUM(APOSTE) AS APOS,' +
        ' SUM(PAGAMENTOS) AS PAG, SUM(RETIRADAS) AS RET'
      ''
      'FROM MOV_FECHA_CAIXA'
      '              WHERE DT_CAIXA >= :DTINI AND DT_CAIXA <= :DTFIM '
      ''
      
        '              GROUP BY DT_CAIXA, USUARIO, REC_CARTAO_CRED, REC_C' +
        'ARTAO_DEB, REC_DINHEIRO, CHEQUES, DEB_FUNCIONARIO, APOSTE, PAGAM' +
        'ENTOS, RETIRADAS, SALDO_ANT, SALDO_ATUAL '
      
        '              ORDER BY DT_CAIXA, USUARIO, REC_CARTAO_CRED, REC_C' +
        'ARTAO_DEB, REC_DINHEIRO, CHEQUES, DEB_FUNCIONARIO, APOSTE, PAGAM' +
        'ENTOS, RETIRADAS, SALDO_ANT, SALDO_ATUAL')
    Left = 127
    Top = 562
    object qry_movcaixaDT_CAIXA: TDateTimeField
      FieldName = 'DT_CAIXA'
    end
    object qry_movcaixaUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
    object qry_movcaixaREC_CARTAO_CRED: TFloatField
      FieldName = 'REC_CARTAO_CRED'
      DisplayFormat = ',0.00'
      currency = True
    end
    object qry_movcaixaREC_CARTAO_DEB: TFloatField
      FieldName = 'REC_CARTAO_DEB'
      DisplayFormat = ',0.00'
      currency = True
    end
    object qry_movcaixaREC_DINHEIRO: TFloatField
      FieldName = 'REC_DINHEIRO'
      DisplayFormat = ',0.00'
      currency = True
    end
    object qry_movcaixaCHEQUES: TFloatField
      FieldName = 'CHEQUES'
      DisplayFormat = ',0.00'
      currency = True
    end
    object qry_movcaixaDEB_FUNCIONARIO: TFloatField
      FieldName = 'DEB_FUNCIONARIO'
      DisplayFormat = ',0.00'
      currency = True
    end
    object qry_movcaixaAPOSTE: TFloatField
      FieldName = 'APOSTE'
      DisplayFormat = ',0.00'
      currency = True
    end
    object qry_movcaixaPAGAMENTOS: TFloatField
      FieldName = 'PAGAMENTOS'
      DisplayFormat = ',0.00'
      currency = True
    end
    object qry_movcaixaRETIRADAS: TFloatField
      FieldName = 'RETIRADAS'
      DisplayFormat = ',0.00'
      currency = True
    end
    object qry_movcaixaSALDO_ANT: TFloatField
      FieldName = 'SALDO_ANT'
      DisplayFormat = ',0.00'
      currency = True
    end
    object qry_movcaixaSALDO_ATUAL: TFloatField
      FieldName = 'SALDO_ATUAL'
      DisplayFormat = ',0.00'
      currency = True
    end
    object qry_movcaixaCRED: TFloatField
      FieldName = 'CRED'
      ReadOnly = True
      DisplayFormat = ',0.00'
      currency = True
    end
    object qry_movcaixaDEB: TFloatField
      FieldName = 'DEB'
      ReadOnly = True
      DisplayFormat = ',0.00'
      currency = True
    end
    object qry_movcaixaDIN: TFloatField
      FieldName = 'DIN'
      ReadOnly = True
      DisplayFormat = ',0.00'
      currency = True
    end
    object qry_movcaixaCHQ: TFloatField
      FieldName = 'CHQ'
      ReadOnly = True
      DisplayFormat = ',0.00'
      currency = True
    end
    object qry_movcaixaFUNC: TFloatField
      FieldName = 'FUNC'
      ReadOnly = True
      DisplayFormat = ',0.00'
      currency = True
    end
    object qry_movcaixaAPOS: TFloatField
      FieldName = 'APOS'
      ReadOnly = True
      DisplayFormat = ',0.00'
      currency = True
    end
    object qry_movcaixaPAG: TFloatField
      FieldName = 'PAG'
      ReadOnly = True
      DisplayFormat = ',0.00'
      currency = True
    end
    object qry_movcaixaRET: TFloatField
      FieldName = 'RET'
      ReadOnly = True
      DisplayFormat = ',0.00'
      currency = True
    end
  end
  object qry_clientes: TADOQuery
    Connection = Conexao
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from cab_serv'
      '   order by id_serv')
    Left = 559
    Top = 509
    object qry_clientesDATA_SERV: TDateTimeField
      FieldName = 'DATA_SERV'
    end
    object qry_clientesCOD_CLLI: TIntegerField
      FieldName = 'COD_CLLI'
    end
    object qry_clientesNOM_CLI: TStringField
      FieldName = 'NOM_CLI'
      Size = 45
    end
    object qry_clientesOBS_SERV: TMemoField
      FieldName = 'OBS_SERV'
      BlobType = ftMemo
    end
    object qry_clientesSITUACAO: TStringField
      FieldName = 'SITUACAO'
    end
    object qry_clientesDT_ANI: TDateTimeField
      FieldName = 'DT_ANI'
    end
    object qry_clientesID_SERV: TAutoIncField
      FieldName = 'ID_SERV'
      ReadOnly = True
    end
    object qry_clientesAUTORIZADO: TStringField
      FieldName = 'AUTORIZADO'
    end
  end
  object ds_qry_clientes: TDataSource
    DataSet = qry_clientes
    Left = 321
    Top = 387
  end
  object qry_comandas: TADODataSet
    Connection = Conexao
    CursorType = ctStatic
    CommandText = 'SELECT * FROM CAD_COMANDAS'
    DataSource = ds_qry_clientes
    IndexFieldNames = 'ID_SERV'
    MasterFields = 'ID_SERV'
    Parameters = <>
    Left = 209
    Top = 563
    object qry_comandasNOM_SERV: TStringField
      FieldName = 'NOM_SERV'
      Size = 45
    end
    object qry_comandasQUANT: TBCDField
      FieldName = 'QUANT'
      Precision = 18
      Size = 0
    end
    object qry_comandasVR_UNIT: TFloatField
      FieldName = 'VR_UNIT'
      DisplayFormat = ',0.00'
      currency = True
    end
    object qry_comandasTOT_ITEM: TFloatField
      FieldName = 'TOT_ITEM'
      DisplayFormat = ',0.00'
      currency = True
    end
    object qry_comandasDESCONTO: TFloatField
      FieldName = 'DESCONTO'
      DisplayFormat = ',0.00'
      currency = True
    end
    object qry_comandasPERC_DESC: TFloatField
      FieldName = 'PERC_DESC'
      DisplayFormat = ',0.00'
      currency = True
    end
    object qry_comandasTOT_SERV: TFloatField
      FieldName = 'TOT_SERV'
      DisplayFormat = ',0.00'
      currency = True
    end
    object qry_comandasID_CODSERV: TIntegerField
      FieldName = 'ID_CODSERV'
    end
    object qry_comandasPERC_COMISSAO: TFloatField
      FieldName = 'PERC_COMISSAO'
      DisplayFormat = ',0.00'
      currency = True
    end
    object qry_comandasVR_COMISSAO: TFloatField
      FieldName = 'VR_COMISSAO'
      DisplayFormat = ',0.00'
      currency = True
    end
    object qry_comandasDATA_SERV: TDateTimeField
      FieldName = 'DATA_SERV'
    end
    object qry_comandasID_SERV: TIntegerField
      FieldName = 'ID_SERV'
    end
    object qry_comandasATENDENTE: TStringField
      FieldName = 'ATENDENTE'
      Size = 30
    end
    object qry_comandasAUTORIZADO: TStringField
      FieldName = 'AUTORIZADO'
    end
    object qry_comandasDEPARTAMENTO: TStringField
      FieldName = 'DEPARTAMENTO'
      Size = 15
    end
  end
  object ds_qry_comandas: TDataSource
    DataSet = qry_comandas
    Left = 410
    Top = 387
  end
  object tb_cadauto: TADOQuery
    Connection = Conexao
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM CAD_AUTORIZADOR'
      'ORDER BY AUTORIZADOR')
    Left = 404
    Top = 160
    object tb_cadautoAUTORIZADOR: TStringField
      FieldName = 'AUTORIZADOR'
      Size = 30
    end
    object tb_cadautoSENHA: TStringField
      FieldName = 'SENHA'
      Size = 6
    end
    object tb_cadautoCOD_AUTORIZADOR: TAutoIncField
      FieldName = 'COD_AUTORIZADOR'
      ReadOnly = True
    end
  end
  object ds_cadauto: TDataSource
    DataSet = tb_cadauto
    Left = 492
    Top = 388
  end
end
