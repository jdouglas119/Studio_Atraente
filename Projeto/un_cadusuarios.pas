{ ***************************************************
  * Elaborado para: Studio Atraente                 *
  * Modulo     : Cadastro de Usu�rios               *
  * Analista   : Jo�o Douglas                       *
  * Elabora��o : Jo�o Douglas                       *
  * Ult Alt.   : 13/04/2017                         *
  *************************************************** }

unit un_cadusuarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.DBCtrls, Vcl.StdCtrls, sButton,
  Vcl.ExtCtrls, sPanel, Vcl.Mask, Vcl.ComCtrls, Vcl.Grids, Vcl.DBGrids,
  Vcl.Buttons;

type
  Tfrm_usuarios = class(TForm)
    sPanel1: TsPanel;
    novo: TsButton;
    editar: TsButton;
    excluir: TsButton;
    DBNavigator1: TDBNavigator;
    sair: TsButton;
    Label17: TLabel;
    Panel1: TPanel;
    Label18: TLabel;
    Panel2: TPanel;
    gravar: TsButton;
    cancelar: TsButton;
    StatusBar1: TStatusBar;
    dbradio1: TDBRadioGroup;
    Edit1: TEdit;
    sButton1: TsButton;
    radio1: TRadioGroup;
    Label1: TLabel;
    id_codigo: TDBEdit;
    Label2: TLabel;
    nom_usu: TDBEdit;
    Label3: TLabel;
    apelido: TDBEdit;
    Label4: TLabel;
    senha: TDBEdit;
    Label5: TLabel;
    confirma: TDBEdit;
    Label6: TLabel;
    nivel: TDBEdit;
    Label7: TLabel;
    data: TDBEdit;
    DBGrid1: TDBGrid;
    procedure novoClick(Sender: TObject);
    procedure editarClick(Sender: TObject);
    procedure excluirClick(Sender: TObject);
    procedure gravarClick(Sender: TObject);
    procedure cancelarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure sairClick(Sender: TObject);
    procedure sButton1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure confirmaExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure radio1Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_usuarios: Tfrm_usuarios;

implementation

uses un_dtstudio;

{$R *.dfm}

procedure Tfrm_usuarios.cancelarClick(Sender: TObject);
begin // Cancelar registros na tabela
  If Application.Messagebox('Confirma Cancelamento da Digita��o de Usu�rios? ',
    'Confirma��o', mb_Iconquestion + Mb_OkCancel + Mb_DefButton1) = IdOk then
  else
    exit;
  id_codigo.ReadOnly := true;
  nom_usu.ReadOnly := true;
  apelido.ReadOnly := true;
  senha.ReadOnly := true;
  confirma.ReadOnly := true;
  nivel.ReadOnly := true;
  data.ReadOnly := true;
  dbgrid1.ReadOnly := true;
  novo.Enabled := true;
  editar.Enabled := true;
  excluir.Enabled := true;
  cancelar.Enabled := false;
  gravar.Enabled := false;
  sair.Enabled := true;
  dt_studio.tb_cadusu.cancel;
  nom_usu.setfocus;
end;

procedure Tfrm_usuarios.confirmaExit(Sender: TObject);
begin
  if dt_studio.tb_cadusuconfirma.Value <> dt_studio.tb_cadususenha.Value then
  begin
    showmessage('SENHA DE CONFIRMA��O N�O PODE SER DIFERENTE DA SENHA');
    confirma.setfocus;
  end
  else
    nivel.setfocus;
end;

procedure Tfrm_usuarios.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin//Mudando a cor da fonte conforma a situa��o escolhida
    if dt_studio.tb_cadususituacao.asstring = 'A' then
    begin
       dbgrid1.Canvas.Font.Color := clBlack;
       dbgrid1.Canvas.Brush.Color := $00E6FFFF;
    end
    else
    begin
       dbgrid1.Canvas.Font.Color := clRed;
       dbgrid1.Canvas.Brush.Color := $00E6FFFF;
    end;
    If odd(dt_studio.tb_cadusu.RecNo) then //Deixando o dbgrid zebrado
       begin
          dbgrid1.Canvas.Brush.Color:= clBlack;
          dbgrid1.Canvas.Brush.Color:= $00FFF5EC;
       end
       else
       begin
          dbgrid1.Canvas.Brush.Color:= clBlack;
          dbgrid1.Canvas.Brush.Color:= clWhite;
       end;
       dbgrid1.Canvas.FillRect(Rect);
       dbgrid1.DefaultDrawDataCell(Rect, Column.Field, State);
end;

procedure Tfrm_usuarios.editarClick(Sender: TObject);
begin // Alterando registros na tabela
  If Application.Messagebox('Confirma Altera��o de Usu�rios? ', 'Confirma��o',
    mb_Iconquestion + Mb_OkCancel + Mb_DefButton1) = IdOk then
  else
    exit;
  id_codigo.ReadOnly := false;
  nom_usu.ReadOnly := false;
  apelido.ReadOnly := false;
  senha.ReadOnly := false;
  confirma.ReadOnly := false;
  nivel.ReadOnly := false;
  data.ReadOnly := true;
  dbradio1.ReadOnly := false;
  dbgrid1.ReadOnly := false;
  novo.Enabled := false;
  editar.Enabled := false;
  excluir.Enabled := false;
  cancelar.Enabled := true;
  gravar.Enabled := true;
  sair.Enabled := false;
  dt_studio.tb_cadusu.edit;
  nom_usu.setfocus;
end;

procedure Tfrm_usuarios.excluirClick(Sender: TObject);
begin // Comandos para excluir registros na tabela//
  If dt_studio.tb_cadusu.RecordCount <> 0 then
    If Application.Messagebox('Confirma Exclus�o?', 'Confirmar',
      mb_Iconquestion + MB_YesNo + Mb_DefButton1) = IdYes Then
    begin
      dt_studio.tb_cadusu.Delete;
      id_codigo.setfocus;
    end;
  If dt_studio.tb_cadusu.RecordCount = 0 then
    showmessage('Nao Existe Registro para Excluir');
end;

procedure Tfrm_usuarios.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  codigo: Integer; // Vari�vel do tipo integer

  Function StrZero(Num: Real; Tam: Integer): String;
  // Fun��o para colocar zeros a esquerda
  var
    x, T: Integer;
    N, D: String;

  begin
    N := FloatToStr(Num);
    T := Pos('.', N);
    D := '';
    if T <> 0 then
    begin
      N := Copy(N, 1, T - 1);
      D := Copy(N, T, 3)
    end;
    for x := 1 to Tam - length(N) do
      N := '0' + N;
    result := N + D;
  end;
begin
  Case Key of
       VK_F2: //Comando para teclas de atalho//
       begin
          If Application.Messagebox('Confirma Inclus�o de Usu�rios? ', 'Confirma��o',
          mb_Iconquestion + Mb_OkCancel + Mb_DefButton1) = IdOk then
          else
          exit;
          id_codigo.ReadOnly := false;
          nom_usu.ReadOnly := false;
          apelido.ReadOnly := false;
          senha.ReadOnly := false;
          confirma.ReadOnly := false;
          nivel.ReadOnly := false;
          data.ReadOnly := true;
          dbradio1.ReadOnly := false;
          dbgrid1.ReadOnly := false;
          novo.Enabled := false;
          editar.Enabled := false;
          excluir.Enabled := false;
          cancelar.Enabled := true;
          gravar.Enabled := true;
          sair.Enabled := false;
          if dt_studio.tb_cadusu.RecordCount = 0 Then
            codigo := 1
          else
          begin
              dt_studio.tb_cadusu.Last;
              codigo := dt_studio.tb_cadusuID_USUARIO.Asinteger + 1;
          end;
          dt_studio.tb_cadusu.Append;
          dt_studio.tb_cadusuID_USUARIO.asstring := StrZero(codigo, 1);
          dt_studio.tb_cadusuDT_CADASTRO.asstring := DateTimetoStr(now());
          dbradio1.ItemIndex := -0;
          nom_usu.setfocus;
       end;
  end;
  Case Key of
       VK_F3: //Comando para teclas de atalho//
       begin
          If Application.Messagebox('Confirma Altera��o de Usu�rios? ', 'Confirma��o',
          mb_Iconquestion + Mb_OkCancel + Mb_DefButton1) = IdOk then
          else
          exit;
          id_codigo.ReadOnly := false;
          nom_usu.ReadOnly := false;
          apelido.ReadOnly := false;
          senha.ReadOnly := false;
          confirma.ReadOnly := false;
          nivel.ReadOnly := false;
          data.ReadOnly := true;
          dbradio1.ReadOnly := false;
          dbgrid1.ReadOnly := false;
          novo.Enabled := false;
          editar.Enabled := false;
          excluir.Enabled := false;
          cancelar.Enabled := true;
          gravar.Enabled := true;
          sair.Enabled := false;
          dt_studio.tb_cadusu.edit;
          nom_usu.setfocus;
       end;
  end;
  Case Key of
       VK_F4: //Comando para teclas de atalho//
       begin
           If dt_studio.tb_cadusu.RecordCount <> 0 then
           If Application.Messagebox('Confirma Exclus�o?', 'Confirmar',
           mb_Iconquestion + MB_YesNo + Mb_DefButton1) = IdYes Then
           begin
             dt_studio.tb_cadusu.Delete;
             id_codigo.setfocus;
           end;
           If dt_studio.tb_cadusu.RecordCount = 0 then
           showmessage('Nao Existe Registro para Excluir');
       end;
  end;
  Case Key of
       VK_F5: //Comando para teclas de atalho//
       begin
          If Application.Messagebox('Confirma Cancelamento da Digita��o de Usu�rios? ',
          'Confirma��o', mb_Iconquestion + Mb_OkCancel + Mb_DefButton1) = IdOk then
          else
          exit;
          id_codigo.ReadOnly := true;
          nom_usu.ReadOnly := true;
          apelido.ReadOnly := true;
          senha.ReadOnly := true;
          confirma.ReadOnly := true;
          nivel.ReadOnly := true;
          data.ReadOnly := true;
          dbgrid1.ReadOnly := true;
          novo.Enabled := true;
          editar.Enabled := true;
          excluir.Enabled := true;
          cancelar.Enabled := false;
          gravar.Enabled := false;
          sair.Enabled := true;
          dt_studio.tb_cadusu.cancel;
          nom_usu.setfocus;
       end;
  end;
  Case Key of
       VK_F6: //Comando para teclas de atalho//
       begin
          If Application.Messagebox('Confirma Grava��o de Usu�rios? ', 'Confirma��o',
          mb_Iconquestion + Mb_OkCancel + Mb_DefButton1) = IdOk then
          else
          exit;
          id_codigo.ReadOnly := true;
          nom_usu.ReadOnly := true;
          apelido.ReadOnly := true;
          senha.ReadOnly := true;
          confirma.ReadOnly := true;
          nivel.ReadOnly := true;
          data.ReadOnly := true;
          dbgrid1.ReadOnly := true;
          novo.Enabled := true;
          editar.Enabled := true;
          excluir.Enabled := true;
          cancelar.Enabled := false;
          gravar.Enabled := false;
          sair.Enabled := true;
          dt_studio.tb_cadusu.post;
          nom_usu.setfocus;
       end;
  end;
  Case Key of
       VK_F9: //Comando para teclas de atalho//
       begin
          dt_studio.tb_cadusu.close;
          dt_studio.tb_situacao.close;
          close;
       end;
  end;
end;

procedure Tfrm_usuarios.FormKeyPress(Sender: TObject; var Key: Char);
begin // Comandos para a tecla [ENTER]//
  If Key = #13 Then
    Selectnext(ActiveControl, true, true);
end;

procedure Tfrm_usuarios.FormShow(Sender: TObject);
begin
  dt_studio.tb_cadusu.open;
  dt_studio.tb_situacao.open;
end;

procedure Tfrm_usuarios.gravarClick(Sender: TObject);
begin // Gravando registros na tabela
  If Application.Messagebox('Confirma Grava��o de Usu�rios? ', 'Confirma��o',
  mb_Iconquestion + Mb_OkCancel + Mb_DefButton1) = IdOk then
  else
  exit;
  id_codigo.ReadOnly := true;
  nom_usu.ReadOnly := true;
  apelido.ReadOnly := true;
  senha.ReadOnly := true;
  confirma.ReadOnly := true;
  nivel.ReadOnly := true;
  data.ReadOnly := true;
  dbgrid1.ReadOnly := true;
  novo.Enabled := true;
  editar.Enabled := true;
  excluir.Enabled := true;
  cancelar.Enabled := false;
  gravar.Enabled := false;
  sair.Enabled := true;
  dt_studio.tb_cadusu.post;
  nom_usu.setfocus;
end;

procedure Tfrm_usuarios.novoClick(Sender: TObject);
var
  codigo: Integer; // Vari�vel do tipo integer

  Function StrZero(Num: Real; Tam: Integer): String;
  // Fun��o para colocar zeros a esquerda
  var
    x, T: Integer;
    N, D: String;

  begin
    N := FloatToStr(Num);
    T := Pos('.', N);
    D := '';
    if T <> 0 then
    begin
      N := Copy(N, 1, T - 1);
      D := Copy(N, T, 3)
    end;
    for x := 1 to Tam - length(N) do
      N := '0' + N;
    result := N + D;
  end;

begin // Inserindo registros na tabela
  If Application.Messagebox('Confirma Inclus�o de Usu�rios? ', 'Confirma��o',
    mb_Iconquestion + Mb_OkCancel + Mb_DefButton1) = IdOk then
  else
  exit;
  id_codigo.ReadOnly := false;
  nom_usu.ReadOnly := false;
  apelido.ReadOnly := false;
  senha.ReadOnly := false;
  confirma.ReadOnly := false;
  nivel.ReadOnly := false;
  data.ReadOnly := true;
  dbradio1.ReadOnly := false;
  dbgrid1.ReadOnly := false;
  novo.Enabled := false;
  editar.Enabled := false;
  excluir.Enabled := false;
  cancelar.Enabled := true;
  gravar.Enabled := true;
  sair.Enabled := false;
  if dt_studio.tb_cadusu.RecordCount = 0 Then
     codigo := 1
  else
  begin
    dt_studio.tb_cadusu.Last;
    codigo := dt_studio.tb_cadusuID_USUARIO.Asinteger + 1;
  end;
  dt_studio.tb_cadusu.Append;
  dt_studio.tb_cadusuID_USUARIO.asstring := StrZero(codigo, 1);
  dt_studio.tb_cadusuDT_CADASTRO.asstring := DateTimetoStr(now());
  dbradio1.ItemIndex := -0;
  nom_usu.setfocus;
end;

procedure Tfrm_usuarios.radio1Click(Sender: TObject);
begin
   Edit1.SetFocus;
end;

procedure Tfrm_usuarios.sairClick(Sender: TObject);
begin
  dt_studio.tb_situacao.close;
  close;
end;

procedure Tfrm_usuarios.sButton1Click(Sender: TObject);
var
  Sql: string; // Pesquisando registros na tabela
begin
  dt_studio.tb_cadusu.close;
  dt_studio.tb_cadusu.Sql.Clear;
  dt_studio.tb_cadusu.Sql.Add('select * from CAD_USUARIOS');

  if (radio1.ItemIndex = 0) then
    Sql := 'where ID_USUARIO like ' + QuotedStr('%' + Edit1.Text + '%')
  else if (radio1.ItemIndex = 1) then
    Sql := 'where NOM_USUARIO like ' + QuotedStr('%' + Edit1.Text + '%');

  dt_studio.tb_cadusu.Sql.Add(Sql);
  dt_studio.tb_cadusu.Sql.Add('order by NOM_USUARIO');
  dt_studio.tb_cadusu.open;
end;

end.
