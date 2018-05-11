{ ***************************************************
  * Elaborado para: Studio Atraente                 *
  * Modulo     : Rel�t�rio Comparativo              *
  * Analista   : Jo�o Douglas                       *
  * Elabora��o : Jo�o Douglas                       *
  * Ult Alt.   : 07/12/2016                         *
****************************************************}

unit un_chama_comparativo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, sButton, Vcl.Buttons,
  Vcl.Grids, Vcl.DBGrids, sBitBtn, Vcl.Mask, RpCon, RpConDS, RpDefine, RpRave,
  Vcl.ExtCtrls;

type
  Tfrm_relcomparativo = class(TForm)
    DatIni: TMaskEdit;
    Label1: TLabel;
    Label2: TLabel;
    DatFim: TMaskEdit;
    SpeedButton1: TSpeedButton;
    sButton1: TsButton;
    rv_comparativo: TRvProject;
    rv_comanda: TRvDataSetConnection;
    rv_dtcompgeral: TRvDataSetConnection;
    procedure sButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_relcomparativo: Tfrm_relcomparativo;

implementation

uses un_dtstudio, un_orcamento, un_chama_relcli;

{$R *.dfm}

procedure Tfrm_relcomparativo.FormKeyPress(Sender: TObject; var Key: Char);
begin //Usando a tecla [ENTER]
  If Key = #13 Then
    Selectnext(ActiveControl, true, true);
end;

procedure Tfrm_relcomparativo.FormShow(Sender: TObject);
begin //Abrindo as tabelas
   dt_studio.tb_comandas.open;
   dt_studio.tb_cadtiposerv.open;
end;

procedure Tfrm_relcomparativo.sButton1Click(Sender: TObject);
begin //Fechando as tabelas
   dt_studio.tb_comandas.close;
   dt_studio.tb_cadtiposerv.close;
   close;
end;

procedure Tfrm_relcomparativo.SpeedButton1Click(Sender: TObject);
begin //Gerando o relat�rio
    Try
       with dt_studio.qry_compgeral do
           begin
               close;
               SQL.Clear;
               SQL.Text:='SELECT DATA_SERV, NOM_SERV, '+
                         'SUM(QUANT) AS QDE, SUM(TOT_SERV) AS TOTAL '+
                         'FROM CAD_COMANDAS '+
                         'WHERE DATA_SERV >= :DTINI AND DATA_SERV <= :DTFIM '+
                         'GROUP BY DATA_SERV, NOM_SERV '+
                         'ORDER BY NOM_SERV ';
               Parameters.ParamByName('dtini').Value := StrToDate(DatIni.Text);
               Parameters.ParamByName('dtfim').Value := StrToDate(DatFim.Text);
               open;
               if RecordCount > 0 Then
                  begin
                      frm_relcomparativo.rv_comparativo.SetParam('periodo' , Datini.Text + ' at� ' + DatFim.Text);
                      frm_relcomparativo.rv_comparativo.ProjectFile:=('\\statraente\projeto_studio atraente\relatorios\rel_comparativo_prod.rav');
                      frm_relcomparativo.rv_comparativo.Execute;
                      close;
                  end
                  else
                  Showmessage('N�o existe Movimento para esse Tipo de Servi�o !!!');
               Close;
              end;
           except
               Showmessage('Existe(m) Erro(s) no Relatorio do Comparativo!!!');
           end;
end;

end.

