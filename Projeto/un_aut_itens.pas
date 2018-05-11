{ ***************************************************
  * Elaborado para: Studio Atraente                 *
  * Modulo     : Formulario de Autoriza��o Itens    *
  * Analista   : Jo�o Douglas                       *
  * Elabora��o : Jo�o Douglas                       *
  * Ult Alt.   : 10/07/2017                         *
  *************************************************** }

unit un_aut_itens;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Imaging.jpeg, Vcl.ExtCtrls;

type
  Tfrm_aut_itens = class(TForm)
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    senha: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    nome: TEdit;
    cod: TEdit;
    Label3: TLabel;
    SpeedButton1: TSpeedButton;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure loginClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_aut_itens: Tfrm_aut_itens;

implementation

{$R *.dfm}

uses un_orcamento, un_dtstudio, un_consauto;

procedure Tfrm_aut_itens.BitBtn1Click(Sender: TObject);
 Var
   sql : String; //Vari�vel de entrada//
begin//login do sistema
   if senha.text <> dt_studio.tb_cadautoSENHA.asstring then
      begin
         showmessage('AUTORIZADOR N�O CADASTRADO E/OU SENHA INV�LIDA');
      end
   else
   If (nome.Text <> '') and (senha.Text = dt_studio.tb_cadautosenha.AsString) Then
     begin
        sql := 'select * from cad_autorizador where autorizador = ' + QuotedStr(nome.Text);
        sql := sql + ' and senha = ' + QuotedStr(senha.Text);
        dt_studio.tb_cadauto.Active := True;
        frm_aut_itens.hide;
        frm_aut_itens.Close;
        dt_studio.tb_comandas.Edit;
        frm_servico.combo.ReadOnly := false;
        frm_servico.combo2.ReadOnly := false;
        frm_servico.vr_desc.ReadOnly := false;
        frm_servico.perc.ReadOnly := false;
        frm_servico.sbutton8.enabled := false;
        frm_servico.sbutton1.enabled := false;
        frm_servico.sbutton7.enabled := false;
        frm_servico.sbutton10.enabled := false;
        frm_servico.sbutton5.enabled := true;
     end;
     if nome.Text <> '' then
       begin
          dt_studio.tb_comandas.Edit;
          dt_studio.tb_comandasAUTORIZADO.AsString := nome.text;
          exit;
       end
       else
       dt_studio.tb_comandasAUTORIZADO.AsString := dt_studio.tb_comandasAUTORIZADO.AsString;
end;

procedure Tfrm_aut_itens.BitBtn2Click(Sender: TObject);
begin
   close;
end;

procedure Tfrm_aut_itens.FormKeyPress(Sender: TObject; var Key: Char);
begin// Comandos para a tecla [ENTER]//
   If Key = #13 Then
     Selectnext(ActiveControl, true, true);
end;

procedure Tfrm_aut_itens.FormShow(Sender: TObject);
begin
   cod.Text := '';
   nome.Text := '';
   senha.Text := '';
end;

procedure Tfrm_aut_itens.loginClick(Sender: TObject);
begin
   nome.SetFocus;
end;

procedure Tfrm_aut_itens.SpeedButton1Click(Sender: TObject);
begin
  frm_consauto.cod := 2;
  senha.SetFocus;
  frm_consauto.showmodal;
end;

end.
