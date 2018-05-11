{ ***************************************************
  * Elaborado para: Studio Atraente                 *
  * Modulo     : Impressão de Relatórios - ATEND    *
  * Analista   : João Douglas                       *
  * Elaboração : João Douglas                       *
  * Ult Alt.   : 07/12/2016                         *
  *************************************************** }

unit un_chama_relatend;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, sButton, Vcl.Buttons,
  sBitBtn;

type
  Tfrm_chama_relatend = class(TForm)
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
  frm_chama_relatend: Tfrm_chama_relatend;

implementation

{$R *.dfm}

uses un_dtstudio, un_relatorios;

procedure Tfrm_chama_relatend.FormShow(Sender: TObject);
begin
  dt_studio.tb_cadatend.open;
end;

procedure Tfrm_chama_relatend.frm_chama_relcliClick(Sender: TObject);
begin
// Chamando o layout do relatório e indexando por vencimento//
  frm_relatorios.rel_cad_atend.loadfromfile
  ('\\statraente\projeto_studio atraente\relatorios\rel_atend_cli.fr3');
  frm_relatorios.rel_cad_atend.showreport();
  close;
end;

procedure Tfrm_chama_relatend.sButton1Click(Sender: TObject);
begin //Fechando a tabela
  dt_studio.tb_cadatend.close;
  close;
end;

end.
