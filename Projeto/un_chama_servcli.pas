{ ***************************************************
  * Elaborado para: Studio Atraente                 *
  * Modulo     : Chame Rel Serv. Clientes           *
  * Analista   : Jo�o Douglas                       *
  * Elabora��o : Jo�o Douglas                       *
  * Ult Alt.   : 07/12/2016                         *
  *************************************************** }

unit un_chama_servcli;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, sButton, Vcl.Buttons,
  sBitBtn, Vcl.DBCtrls, Vcl.Mask, Vcl.Grids, Vcl.DBGrids, RpCon, RpConDS,
  RpDefine, RpRave, Data.DB, Data.Win.ADODB;

type
  Tfrm_rel_servcli = class(TForm)
    sButton1: TsButton;
    DatIni: TMaskEdit;
    DatFim: TMaskEdit;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    DBGrid1: TDBGrid;
    Label3: TLabel;
    SpeedButton1: TSpeedButton;
    rv_servcli: TRvProject;
    rv_historico_cliente: TRvDataSetConnection;
    frm_chama_relcli: TsBitBtn;
    procedure FormShow(Sender: TObject);
    procedure sButton1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton1Click(Sender: TObject);
    procedure frm_chama_relcliClick(Sender: TObject);
  private
    { Private declarations }
  public
     { Public declarations }
  end;

var
  frm_rel_servcli: Tfrm_rel_servcli;

implementation

{$R *.dfm}

uses un_dtstudio, un_qrcli_serv, un_relatorios, un_orcamento;

procedure Tfrm_rel_servcli.FormKeyPress(Sender: TObject; var Key: Char);
begin //Usando a tecla [ENTER]
  If Key = #13 Then
    Selectnext(ActiveControl, true, true);
end;

procedure Tfrm_rel_servcli.FormShow(Sender: TObject);
begin //Abrindo as tabelas
   dt_studio.tb_movservico.open;
   dt_studio.tb_comandas.open;
   dt_studio.tb_cadcli.open;
   datini.SetFocus;
end;

procedure Tfrm_rel_servcli.frm_chama_relcliClick(Sender: TObject);
begin
// Comandos para verifica��o de per�odo e chamando o layout do relat�rio
    dt_studio.tb_cadcli.close;
    dt_studio.tb_cadcli.Sql.Clear;
    dt_studio.tb_cadcli.Sql.Add('select * from CAD_CLI');
    dt_studio.tb_cadcli.Sql.Add('where NOM_CLI like ' + QuotedStr('%' + Edit1.Text + '%'));
    dt_studio.tb_cadcli.Sql.Add('order by NOM_CLI');
    dt_studio.tb_cadcli.open;
end;

procedure Tfrm_rel_servcli.sButton1Click(Sender: TObject);
begin //Fechando as tabelas
   dt_studio.tb_movservico.close;
   dt_studio.tb_comandas.Close;
   dt_studio.tb_cadcli.close;
   close;
end;

procedure Tfrm_rel_servcli.SpeedButton1Click(Sender: TObject);
begin //Gerando o relat�rio
    Try
       with dt_studio.qry_historico_cliente do
          begin
              SQL.Clear;
              SQL.Text:='SELECT A.ID_SERV, A.DATA_SERV, A.SITUACAO, B.ID_CODSERV, B.NOM_SERV, B.ATENDENTE, '+
              'SUM(B.QUANT) AS QDE, SUM(B.VR_UNIT) AS VRUNIT, SUM(B.DESCONTO) AS DESCONTO, '+
              'SUM(B.TOT_ITEM) AS TOTALITEM, SUM(B.TOT_SERV) AS TOTALLIQ '+
              'FROM CAB_SERV A INNER JOIN CAD_COMANDAS B ON (A.ID_SERV = B.ID_SERV) '+
              'WHERE A.DATA_SERV >= :DTINI AND A.DATA_SERV <= :DTFIM AND A.COD_CLLI = :CD '+
              'GROUP BY A.ID_SERV, A.DATA_SERV, A.SITUACAO, B.ID_CODSERV, B.NOM_SERV, B.ATENDENTE '+
              'ORDER BY A.ID_SERV, A.DATA_SERV, A.SITUACAO, B.ID_CODSERV, B.NOM_SERV, B.ATENDENTE ';
              Parameters.ParamByName('dtini').Value := StrToDate(DatIni.Text);
              Parameters.ParamByName('dtfim').Value := StrToDate(DatFim.Text);
              Parameters.ParamByName('cd').Value := dt_studio.tb_cadcli.FieldByName('ID_CLI').AsInteger;
              open;
              if RecordCount > 0 Then
              begin
                 frm_rel_servcli.rv_servcli.SetParam('periodo' , Datini.Text + ' at� ' + DatFim.Text);
                 frm_rel_servcli.rv_servcli.SetParam('codNomecliente' , dt_studio.tb_cadcli.FieldByName('ID_CLI').AsString+' - '+
                 dt_studio.tb_cadcli.FieldByName('NOM_CLI').AsString);
                 frm_rel_servcli.rv_servcli.SetParam('cpfcliente' , dt_studio.tb_cadcli.FieldByName('CPF_CLI').AsString);
                 frm_rel_servcli.rv_servcli.ProjectFile:=('\\statraente\projeto_studio atraente\relatorios\rel_serv_cli.rav');
                 frm_rel_servcli.rv_servcli.Execute;
                 close;
              end
              else
                 Showmessage('N�o existe Historico para esse Cliente !!!');
              Close;
       end;
       except
       Showmessage('Existe(m) Erro(s) no Relatorio de Historico dos Servi�os!!!');
    end;
end;

end.
