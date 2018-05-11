{ ***************************************************
  * Elaborado para: Studio Atraente                 *
  * Modulo     : Relatório do Caixa                 *
  * Analista   : João Douglas                       *
  * Elaboração : João Douglas                       *
  * Ult Alt.   : 15/02/2017                         *
  *************************************************** }

unit un_chama_movcaixa2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RpCon, RpConDS, RpDefine, RpRave,
  Vcl.StdCtrls, sButton, Vcl.Mask;

type
  Tfrm_rel_movcaixa = class(TForm)
    Label1: TLabel;
    DatIni: TMaskEdit;
    Label2: TLabel;
    DatFim: TMaskEdit;
    sButton1: TsButton;
    sButton2: TsButton;
    rv_rel_movcaixa2: TRvProject;
    RvDB_movcaixa: TRvDataSetConnection;
    procedure sButton1Click(Sender: TObject);
    procedure sButton2Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_rel_movcaixa: Tfrm_rel_movcaixa;

implementation

uses un_dtstudio;

{$R *.dfm}

procedure Tfrm_rel_movcaixa.FormKeyPress(Sender: TObject; var Key: Char);
begin
   If Key = #13 Then
     Selectnext(ActiveControl, true, true);
end;

procedure Tfrm_rel_movcaixa.sButton1Click(Sender: TObject);
begin
    Try
       with dt_studio.qry_movcaixa do
          begin
              SQL.Clear;
              SQL.Text:='SELECT DT_CAIXA, USUARIO, REC_CARTAO_CRED, REC_CARTAO_DEB, REC_DINHEIRO, CHEQUES, DEB_FUNCIONARIO, APOSTE, PAGAMENTOS, RETIRADAS, SALDO_ANT, SALDO_ATUAL, '+
              'SUM(REC_CARTAO_CRED) AS CRED, SUM(REC_CARTAO_DEB) AS DEB, SUM(REC_DINHEIRO) AS DIN, SUM(CHEQUES) AS CHQ, '+
              'SUM(DEB_FUNCIONARIO) AS FUNC, SUM(APOSTE) AS APOS, SUM(PAGAMENTOS) AS PAG, SUM(RETIRADAS) AS RET '+
              'FROM MOV_FECHA_CAIXA '+
              'WHERE DT_CAIXA >= :DTINI AND DT_CAIXA <= :DTFIM '+
              'GROUP BY DT_CAIXA, USUARIO, REC_CARTAO_CRED, REC_CARTAO_DEB, REC_DINHEIRO, CHEQUES, DEB_FUNCIONARIO, APOSTE, PAGAMENTOS, RETIRADAS, SALDO_ANT, SALDO_ATUAL '+
              'ORDER BY DT_CAIXA, USUARIO, REC_CARTAO_CRED, REC_CARTAO_DEB, REC_DINHEIRO, CHEQUES, DEB_FUNCIONARIO, APOSTE, PAGAMENTOS, RETIRADAS, SALDO_ANT, SALDO_ATUAL ';
              Parameters.ParamByName('dtini').Value := StrToDate(DatIni.Text);
              Parameters.ParamByName('dtfim').Value := StrToDate(DatFim.Text);
              open;
              if RecordCount > 0 Then
              begin
                 frm_rel_movcaixa.rv_rel_movcaixa2.SetParam('periodo' , Datini.Text + ' até ' + DatFim.Text);
                 frm_rel_movcaixa.rv_rel_movcaixa2.ProjectFile:=('\\statraente\projeto_studio atraente\relatorios\rel_movcaixa2.rav');
                 frm_rel_movcaixa.rv_rel_movcaixa2.Execute;
                 close;
              end
              else
                 Showmessage('Não existe Movimento para esse Período !!!');
              Close;
       end;
       except
       Showmessage('Existe(m) Erro(s) no Relatorio do Movimento do Caixa!!!');
    end;
end;

procedure Tfrm_rel_movcaixa.sButton2Click(Sender: TObject);
begin
  close;
end;
end.
