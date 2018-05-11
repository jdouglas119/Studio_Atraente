{ ***************************************************
  * Elaborado para: Studio Atraente                 *
  * Modulo     : Movimentação de Vendas             *
  * Analista   : João Douglas                       *
  * Elaboração : João Douglas                       *
  * Ult Alt.   : 14/09/2016                         *
  *************************************************** }

unit un_vendas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Buttons,
  Vcl.StdCtrls, sButton, Vcl.Mask, sPanel, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls,
  Data.DB, Data.Win.ADODB, frxClass, frxExportPDF;

type
  Tfrm_vendas = class(TForm)
    GroupBox4: TGroupBox;
    es_novo: TsButton;
    es_editar: TsButton;
    es_excluir: TsButton;
    es_ok: TsButton;
    es_cancel: TsButton;
    es_sair: TsButton;
    BitBtn2: TBitBtn;
    nav_vendas: TDBNavigator;
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    Itens: TLabel;
    DBNavigator1: TDBNavigator;
    bt_itensnovo: TsButton;
    bt_itensdelete: TsButton;
    sPanel1: TsPanel;
    Label1: TLabel;
    Label2: TLabel;
    Data: TDBEdit;
    Label3: TLabel;
    Label5: TLabel;
    cod_vend: TDBEdit;
    cod_cli: TDBEdit;
    bt_veiculo: TSpeedButton;
    bt_cliente: TBitBtn;
    Label4: TLabel;
    Label6: TLabel;
    nom_vend: TDBEdit;
    nom_cli: TDBEdit;
    Panel2: TPanel;
    Label7: TLabel;
    cod_prod: TDBEdit;
    Label8: TLabel;
    nom_prod: TDBEdit;
    Label9: TLabel;
    quant: TDBEdit;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    grid_vendas: TDBGrid;
    StatusBar1: TStatusBar;
    Label15: TLabel;
    Panel6: TPanel;
    Label16: TLabel;
    Label19: TLabel;
    Panel5: TPanel;
    Label20: TLabel;
    Label23: TLabel;
    Panel4: TPanel;
    Label24: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Prod: TSpeedButton;
    query_cli: TADOQuery;
    query_cliID_CLI: TIntegerField;
    query_cliNOM_CLI: TStringField;
    query_cliCPF_CLI: TStringField;
    query_cliEND_CLI: TStringField;
    query_cliBAI_CLI: TStringField;
    query_cliCEP_CLI: TStringField;
    query_cliCID_CLI: TStringField;
    query_cliTEL_CLI: TStringField;
    query_cliCEL_CLI: TStringField;
    query_cliDT_CAD: TDateTimeField;
    query_cliEMAIL_CLI: TStringField;
    query_cliNUM_CLI: TBCDField;
    query_cliEST_CLI: TStringField;
    query_cliCOMP_END: TStringField;
    query_cliSITUACAO: TStringField;
    query_prod: TADOQuery;
    query_atend: TADOQuery;
    query_atendID_FUNC: TIntegerField;
    query_atendNOM_FUNC: TStringField;
    query_atendEND_FUNC: TStringField;
    query_atendBAI_FUNC: TStringField;
    query_atendCEP_FUNC: TStringField;
    query_atendCID_FUNC: TStringField;
    query_atendAREA_FUNC: TStringField;
    query_atendCOMISSAO_FUNC: TBCDField;
    query_atendDT_CAD: TDateTimeField;
    query_atendSITUACAO: TStringField;
    query_atendNUM_FUNC: TBCDField;
    query_atendUF: TStringField;
    query_atendESTADO: TStringField;
    query_atendCOMP_FUNC: TStringField;
    query_atendTEL_FIXO: TStringField;
    query_atendCEL_FUNC: TStringField;
    query_atendCOD_EST: TIntegerField;
    query_prodID_PROD: TIntegerField;
    query_prodNOM_PROD: TStringField;
    query_prodDT_CAD: TDateTimeField;
    query_prodVR_CUSTO: TBCDField;
    query_prodVR_VENDA: TBCDField;
    query_prodQUANT_ESTOQUE: TBCDField;
    query_prodSITUACAO: TStringField;
    perc_desc: TDBEdit;
    vr_unit: TDBEdit;
    sub_total: TDBEdit;
    vr_desc: TDBEdit;
    total_geral: TDBEdit;
    Label17: TLabel;
    perc_comiss: TDBEdit;
    Label18: TLabel;
    vr_comiss: TDBEdit;
    Timer1: TTimer;
    id_venda: TDBEdit;
    Label27: TLabel;
    combo: TDBLookupComboBox;
    query_cliDT_ANI: TDateTimeField;
    radio: TRadioGroup;
    Edit1: TEdit;
    BitBtn3: TBitBtn;
    Label28: TLabel;
    obs: TDBMemo;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_vendas: Tfrm_vendas;

implementation

uses un_dtstudio, un_pesq_cli, un_pesq_atend, un_pesq_tipo, un_pesq_prod,
  un_relatorios, un_movcaixa;

{$R *.dfm}

end.
