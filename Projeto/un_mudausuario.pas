unit un_mudausuario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Imaging.jpeg, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.ComCtrls, sLabel;

type
  Tfrm_mudausu = class(TForm)
    Image1: TImage;
    BitBtn1: TBitBtn;
    codigo: TEdit;
    SpeedButton1: TSpeedButton;
    nome: TEdit;
    senha: TEdit;
    StatusBar1: TStatusBar;
    sLabel1: TsLabel;
    sLabel2: TsLabel;
    sLabel3: TsLabel;
    sLabel4: TsLabel;
    sLabel5: TsLabel;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure nomeClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
     tentativas: Smallint;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_mudausu: Tfrm_mudausu;

implementation

uses un_dtstudio, un_principal, un_consusuario;

{$R *.dfm}

procedure Tfrm_mudausu.BitBtn1Click(Sender: TObject);
Var
  sql : String; //Vari�vel de entrada//
begin//login do sistema
  If (nome.Text <> '') and (senha.Text = dt_studio.tb_cadususenha.AsString) Then
     begin
        sql := 'select * from tbusuarios where usuarios = ' + QuotedStr(nome.Text);
        sql := sql + ' and senha = ' + QuotedStr(senha.Text);
        dt_studio.tb_cadusu.Active := True;
        frm_mudausu.hide;
        frm_mudausu.Close;
     end
  else
  if (nome.Text = '') and (codigo.Text = '') and (senha.Text = '') then
      begin
         showmessage('Usu�rio e Senha n�o pode ser vazio !');
      end;
  //TRABALHAR NIVEIS DE ACESSO AO SISTEMA DE ACORDO COM O NIVEL DO USU�RIO
   if dt_studio.tb_cadusuNIVEL.Value = 1 then
     begin
       frm_principal.Autorizadores1.visible := true;
       frm_principal.Usurios1.visible := true;
       frm_principal.c08.visible := true;
       frm_principal.c10.visible := true;
     end
   else
   if dt_studio.tb_cadusuNIVEL.Value = 2 then
     begin
       frm_principal.Autorizadores1.visible := false;
       frm_principal.Usurios1.visible := false;
       frm_principal.c08.visible := false;
       frm_principal.c10.visible := false;
     end;
end;

procedure Tfrm_mudausu.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   close;
end;

procedure Tfrm_mudausu.FormShow(Sender: TObject);
begin
   codigo.SetFocus;
   codigo.Text := '';
   nome.Text := '';
   senha.Text := '';
   dt_studio.tb_cadusu.Open;
end;

procedure Tfrm_mudausu.nomeClick(Sender: TObject);
begin
   senha.SetFocus;
end;

procedure Tfrm_mudausu.SpeedButton1Click(Sender: TObject);
begin
  frm_consusuario.cod := 2;
  senha.SetFocus;
  frm_consusuario.showmodal;
end;

end.
