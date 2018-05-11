unit un_qrcli_serv;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, QRCtrls, QuickRpt, Vcl.ExtCtrls,
  Data.DB, Data.Win.ADODB;

type
  Tfrm_rel_cli = class(TForm)
    quickrep1: TQuickRep;
    tb_movservico: TADOQuery;
    ds_cli: TDataSource;
    QRBand3: TQRBand;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    tb_movservicoNOM_CLI: TStringField;
    tb_movservicoCPF_CLI: TStringField;
    tb_movservicoEND_CLI: TStringField;
    tb_movservicoBAI_CLI: TStringField;
    tb_movservicoCEP_CLI: TStringField;
    tb_movservicoCID_CLI: TStringField;
    tb_movservicoTEL_CLI: TStringField;
    tb_movservicoCEL_CLI: TStringField;
    tb_movservicoDT_ANI: TDateTimeField;
    tb_movservicoDT_CAD: TDateTimeField;
    tb_movservicoEMAIL_CLI: TStringField;
    tb_movservicoNUM_CLI: TBCDField;
    tb_movservicoEST_CLI: TStringField;
    tb_movservicoNOM_EST: TStringField;
    tb_movservicoCOD_EST: TIntegerField;
    tb_movservicoCOMP_END: TStringField;
    tb_movservicoSITUACAO: TStringField;
    tb_movservicoID_CLI: TAutoIncField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_rel_cli: Tfrm_rel_cli;

implementation

uses un_dtstudio;

{$R *.dfm}

end.
