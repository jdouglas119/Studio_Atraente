{ ***************************************************
  * Elaborado para: Studio Atraente                 *
  * Modulo     : Impress�o de Relat�rios - CLI      *
  * Analista   : Jo�o Douglas                       *
  * Elabora��o : Jo�o Douglas                       *
  * Ult Alt.   : 07/12/2016                         *
  *************************************************** }

unit un_chama_relcli;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, sButton, Vcl.Buttons,
  sBitBtn;

type
  Tfrm_chama_relcli = class(TForm)
    frm_chama_relcli: TsBitBtn;
    sButton1: TsButton;
    procedure frm_chama_relcliClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure sButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_chama_relcli: Tfrm_chama_relcli;

implementation

{$R *.dfm}

uses un_dtstudio, un_relatorios, un_qrcli_serv, un_relcli2;

procedure Tfrm_chama_relcli.FormShow(Sender: TObject);
begin //abrindo a tabela
  dt_studio.tb_cadcli.open;
end;

procedure Tfrm_chama_relcli.frm_chama_relcliClick(Sender: TObject);
begin
  // Chamando o layout do relat�rio e indexando por vencimento//
  frm_relatorios.rel_cli_dados.loadfromfile
  ('\\douglas-ti\Projeto_Studio Atraente\Relatorios\rel_cad_cli.fr3');
  frm_relatorios.rel_cli_dados.showreport(true);
  close;
end;

procedure Tfrm_chama_relcli.sButton1Click(Sender: TObject);
begin //Fechando a tabela
  dt_studio.tb_cadcli.close;
  close;
end;

end.
