{ ***************************************************
  * Elaborado para: Studio Atraente                 *
  * Modulo     : Impress�o de Relat�rios - FORMAPGTO*
  * Analista   : Jo�o Douglas                       *
  * Elabora��o : Jo�o Douglas                       *
  * Ult Alt.   : 07/12/2016                         *
  *************************************************** }

unit un_rel_formapgto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, sButton, Vcl.Buttons,
  sBitBtn;

type
  Tfrm_forma = class(TForm)
    frm_chama_relcli: TsBitBtn;
    sButton1: TsButton;
    procedure frm_chama_relcliClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure sButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_forma: Tfrm_forma;

implementation

{$R *.dfm}

uses un_dtstudio, un_relatorios;

procedure Tfrm_forma.FormClose(Sender: TObject; var Action: TCloseAction);
begin //Fechando a tabela
   dt_studio.tb_formapag.close;
end;

procedure Tfrm_forma.FormShow(Sender: TObject);
begin //Abrindo a tabela
   dt_studio.tb_formapag.open;
end;

procedure Tfrm_forma.frm_chama_relcliClick(Sender: TObject);
begin
  // Chamando o layout do relat�rio e indexando por vencimento//
  frm_relatorios.rel_formapgto.loadfromfile
  ('\\statraente\Projeto_Studio Atraente\Relatorios\rel_formapgto.fr3');
  frm_relatorios.rel_formapgto.showreport(true);
  close;
end;

procedure Tfrm_forma.sButton1Click(Sender: TObject);
begin //Fechando a tela
   close;
end;

end.
