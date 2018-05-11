{ ***************************************************
  * Elaborado para: Studio Atraente                 *
  * Modulo     : Formulario de Autorização Serviços *
  * Analista   : João Douglas                       *
  * Elaboração : João Douglas                       *
  * Ult Alt.   : 10/07/2017                         *
  *************************************************** }

unit un_aut_servico;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Imaging.jpeg, Vcl.ExtCtrls;

type
  Tfrm_aut_servico = class(TForm)
    senha: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    nome: TEdit;
    cod: TEdit;
    Image1: TImage;
    Label3: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    SpeedButton1: TSpeedButton;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure loginClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_aut_servico: Tfrm_aut_servico;

implementation

{$R *.dfm}

uses un_dtstudio, un_orcamento, un_rec_caixa, un_consauto;

procedure Tfrm_aut_servico.BitBtn1Click(Sender: TObject);
Var
   sql : String; //Variável de entrada//
begin//login do sistema
   if senha.text <> dt_studio.tb_cadautoSENHA.asstring then
      begin
         showmessage('AUTORIZADOR NÃO CADASTRADO E/OU SENHA INVÁLIDA');
      end
   else
   If (nome.Text <> '') and (senha.Text = dt_studio.tb_cadautosenha.AsString) Then
     begin
        sql := 'select * from cad_autorizador where autorizador = ' + QuotedStr(nome.Text);
        sql := sql + ' and senha = ' + QuotedStr(senha.Text);
        dt_studio.tb_cadauto.Active := True;
        frm_aut_servico.hide;
        frm_aut_servico.Close;
        dt_studio.tb_movservico.Edit;
        frm_servico.id_cli.ReadOnly := false;
        frm_servico.obs.ReadOnly := false;
        frm_servico.es_novo.enabled := false;
        frm_servico.es_editar.enabled := false;
        frm_servico.es_excluir.enabled := false;
        frm_servico.es_ok.enabled := true;
        frm_servico.es_cancel.enabled := true;
        frm_servico.sButton4.enabled := true;
        frm_servico.sbutton4.setfocus;
     end;
     if nome.Text <> '' then
       begin
          dt_studio.tb_movservico.Edit;
          dt_studio.tb_movservicoAUTORIZADO.AsString := nome.text;
          exit;
       end
       else
       dt_studio.tb_movservicoAUTORIZADO.AsString := dt_studio.tb_movservicoAUTORIZADO.AsString;
end;

procedure Tfrm_aut_servico.BitBtn2Click(Sender: TObject);
begin
   frm_servico.es_alt_fim.Enabled := true;
   frm_servico.es_novo.Enabled := true;
   frm_servico.es_editar.Enabled := true;
   frm_servico.es_excluir.Enabled := true;
   frm_servico.es_ok.Enabled := false;
   frm_servico.es_cancel.Enabled := false;
   close;
end;

procedure Tfrm_aut_servico.FormKeyPress(Sender: TObject; var Key: Char);
begin// Comandos para a tecla [ENTER]//
   If Key = #13 Then
     Selectnext(ActiveControl, true, true);
end;

procedure Tfrm_aut_servico.FormShow(Sender: TObject);
begin
   nome.Text := '';
   cod.Text := '';
   senha.Text := '';
end;

procedure Tfrm_aut_servico.loginClick(Sender: TObject);
begin
   senha.SetFocus;
end;

procedure Tfrm_aut_servico.SpeedButton1Click(Sender: TObject);
begin
  frm_consauto.cod := 4;
  senha.SetFocus;
  frm_consauto.showmodal;
end;

end.


