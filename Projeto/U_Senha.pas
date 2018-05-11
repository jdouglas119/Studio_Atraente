{***************************************************
 * Elaborado para: Studio Atraente                 *
 * Modulo     : Senha de Usu�rios                  *
 * Analista   : Jo�o Douglas                       *
 * Elabora��o : Jo�o Douglas                       *
 * Ult Alt.   : 30/03/2017                         *
 ***************************************************}

unit U_Senha;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, StdCtrls, Buttons, Mask, DB, DBTables, ExtCtrls, jpeg,
  IBX.IBCustomDataSet, IBX.IBDatabase, IBX.IBTable, IBX.IBQuery, Vcl.Themes,
  Vcl.Styles, sBitBtn, sPanel, sSkinManager, sLabel, Vcl.ComCtrls, IniFiles;
type
  TFm_Senha = class(TForm)
    Image1: TImage;
    Label4: TLabel;
    Label1: TLabel;
    codigo: TEdit;
    SpeedButton1: TSpeedButton;
    nome: TEdit;
    Label2: TLabel;
    editsenha: TEdit;
    sBitBtn1: TsBitBtn;
    sBitBtn2: TsBitBtn;
    Label3: TLabel;
    Label5: TLabel;
    StatusBar1: TStatusBar;
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure sBitBtn1Click(Sender: TObject);
    procedure sBitBtn2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure codigoExit(Sender: TObject);
  private
     tentativas: Smallint;
     { Private declarations }
  public
    { Public declarations }
  end;

var
  Fm_Senha: TFm_Senha;

implementation

uses un_principal, un_dtstudio, un_cadusuarios, un_consusuario;

{$R *.dfm}

procedure TFm_Senha.BitBtn2Click(Sender: TObject);
begin
//fechando o formul�rio com o bot�o cancelar//
  close;
end;

procedure TFm_Senha.codigoExit(Sender: TObject);
begin// Comando para filtrar por codigo do cliente
   if dt_studio.tb_cadusu.Locate('ID_USUARIO', codigo.text, [loPartialKey]) and (Trim(dt_studio.tb_cadusu.FieldByName('NOM_APELIDO').AsString) <> '') then
     begin
        nome.text := dt_studio.tb_cadusu.FieldByName('NOM_APELIDO').AsString;
        editsenha.SetFocus;
     end;
end;

procedure TFm_Senha.FormKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 Then
    Selectnext(ActiveControl, true, true);
end;

procedure TFm_Senha.FormShow(Sender: TObject);
var
  file_config : TIniFile;
  path_db : string;
  pass_db : string;
begin
//abrindo a tabela na base de dados//
   codigo.SetFocus;
   dt_studio.tb_cadusu.open;
   file_config := TIniFile.Create('C:\Projeto_Studio Atraente\Projeto\Win32\Debug\config.ini');
   path_db := file_config.ReadString('Conexao','Banco','');
   pass_db := file_config.ReadString('Conexao','Senha','');
end;

procedure TFm_Senha.sBitBtn1Click(Sender: TObject);
Var
   sql : String; //Vari�vel de entrada//
begin//login do sistema
  If (nome.Text <> '') and (editsenha.Text = dt_studio.tb_cadususenha.AsString) Then
     begin
        sql := 'select * from tbusuarios where usuarios = ' + QuotedStr(nome.Text);
        sql := sql + ' and senha = ' + QuotedStr(editsenha.Text);
        dt_studio.tb_cadusu.Active := True;
        fm_senha.hide;
        frm_principal.Showmodal;
        fm_senha.Close;
     end;
     inc(tentativas); //tentativas de acesso ao sistema//
     if tentativas < 3 then
        begin
            MessageDlg(Format('Tentativa %d de 3', [tentativas]), mtError, [mbOk], 0);
        end
     else
         begin
            MessageDlg(Format('%d� tentativa de acesso ao sistema.',
            [tentativas]) + #13 + 'A aplica��o ser� fechada voc� n�o tem acesso ao sistema!', mtError,[mbOk], 0);
             ModalResult := mrCancel;
             close;
         end;
         MessageDlg('Usu�rio n�o cadastrado ou senha inv�lida', mtInformation, [mbOK], 0);
         editsenha.Text := '';
end;

procedure TFm_Senha.sBitBtn2Click(Sender: TObject);
begin
   close;
end;

procedure TFm_Senha.SpeedButton1Click(Sender: TObject);
begin
  frm_consusuario.cod := 1;
  editsenha.SetFocus;
  frm_consusuario.showmodal;
end;

end.
