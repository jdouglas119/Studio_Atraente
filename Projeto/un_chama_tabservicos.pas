{ ***************************************************
  * Elaborado para: Studio Atraente                 *
  * Modulo     : Impressão de Relatórios-TABELA_SER *
  * Analista   : João Douglas                       *
  * Elaboração : João Douglas                       *
  * Ult Alt.   : 07/12/2016                         *
  *************************************************** }

unit un_chama_tabservicos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, sButton, Vcl.Buttons,
  sBitBtn, RpCon, RpConDS, RpDefine, RpRave, Vcl.Mask;

type
  Tfrm_tabela_servicos = class(TForm)
    frm_chama_relcli: TsBitBtn;
    sButton1: TsButton;
    rv_tabela_serv: TRvProject;
    rvdb_tabela_serv: TRvDataSetConnection;
    procedure sButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure frm_chama_relcliClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_tabela_servicos: Tfrm_tabela_servicos;

implementation

{$R *.dfm}

uses un_dtstudio, un_relatorios, un_chama_valor_atend;

procedure Tfrm_tabela_servicos.FormKeyPress(Sender: TObject; var Key: Char);
begin //usando a tecla [ENTER]
   If Key = #13 Then
     Selectnext(ActiveControl, true, true);
end;

procedure Tfrm_tabela_servicos.FormShow(Sender: TObject);
begin //Abrindo a tabela
   dt_studio.tb_comandas.open;
end;

procedure Tfrm_tabela_servicos.frm_chama_relcliClick(Sender: TObject);
begin
  // Comando para escolher o tipo de situação para emissão do relatório//
     frm_tabela_servicos.rv_tabela_serv.ProjectFile := '\\statraente\projeto_studio atraente\relatorios\rel_tabela_servicos.rav';
     frm_tabela_servicos.rv_tabela_serv.Execute;
     close;
end;

procedure Tfrm_tabela_servicos.sButton1Click(Sender: TObject);
begin //Fechando a tabela
   dt_studio.tb_comandas.close;
   close;
end;

end.
