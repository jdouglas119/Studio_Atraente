{ ***************************************************
  * Elaborado para: Studio Atraente                 *
  * Modulo     : Rel�t�rio de Recebimentos          *
  * Analista   : Jo�o Douglas                       *
  * Elabora��o : Jo�o Douglas                       *
  * Ult Alt.   : 07/12/2016                         *
  *************************************************** }

unit un_chama_relcartao_cred;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, sButton, Vcl.Buttons,
  sBitBtn, Vcl.DBCtrls, Vcl.Mask;

type
  Tfrm_rel_cartaocred = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    DatIni: TMaskEdit;
    DatFim: TMaskEdit;
    sButton1: TsButton;
    frm_chama_relcli: TsBitBtn;
    procedure FormShow(Sender: TObject);
    procedure sButton1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DatFimExit(Sender: TObject);
    procedure frm_chama_relcliClick(Sender: TObject);
  private
    { Private declarations }
  public
    prog: string;
    { Public declarations }
  end;

var
  frm_rel_cartaocred: Tfrm_rel_cartaocred;

implementation

uses un_dtstudio, un_relatorios, un_retiradas, un_principal, un_fechacaixa;

{$R *.dfm}

procedure Tfrm_rel_cartaocred.DatFimExit(Sender: TObject);
begin //Focando no bot�o
   frm_chama_relcli.SetFocus;
end;

procedure Tfrm_rel_cartaocred.FormKeyPress(Sender: TObject; var Key: Char);
begin // Comandos para a tecla [ENTER]//
  If Key = #13 Then
    Selectnext(ActiveControl, true, true);
end;

procedure Tfrm_rel_cartaocred.FormShow(Sender: TObject);
begin //Abrindo as tabelas
  DatIni.SetFocus;
  dt_studio.tb_rec_caixa.open;
  dt_studio.tb_formapag.open;
  dt_studio.tb_comandas.open;
end;

procedure Tfrm_rel_cartaocred.frm_chama_relcliClick(Sender: TObject);
begin// Comando para escolher o tipo de situa��o para emiss�o do relat�rio//
   dt_studio.tb_fecha_caixa.Close;
   dt_studio.tb_fecha_caixa.Filtered := true;
   dt_studio.tb_fecha_caixa.open;
   dt_studio.tb_fecha_caixa.Filter := 'DT_CAIXA >= '#39 + DatIni.text + #39' And DT_CAIXA <= '#39 + DatFim.text + #39;
   dt_studio.tb_fecha_caixa.open;
   iF dt_studio.tb_fecha_caixa.RecordCount = 0 then
   begin
     Showmessage('N�o existe movimento para este PER�ODO!!!');
     Exit;
   end;
   // Comandos para verifica��o de per�odo e chamando o layout do relat�rio
   frm_relatorios.rel_cartaocred.loadfromfile('\\statraente\projeto_studio atraente\relatorios\rel_cartao_cred.fr3');
   with frm_relatorios.rel_cartaocred.Variables do
       begin
           Variables['periodo'] := QuotedStr(Datini.Text + ' at� ' + DatFim.Text);
           frm_relatorios.rel_cartaocred.showreport(true);
           close;
       end;
//       frm_fechacaixa.usuario.Text := frm_principal.UserControl1.CurrentUser.UserLogin;
end;

procedure Tfrm_rel_cartaocred.sButton1Click(Sender: TObject);
begin //Fechando as tabelas
  dt_studio.tb_rec_caixa.Close;
  dt_studio.tb_formapag.Close;
  dt_studio.tb_comandas.Close;
  Close;
end;

end.



