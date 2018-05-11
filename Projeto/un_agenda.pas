{ ***************************************************
  * Elaborado para: Studio Atraente                 *
  * Modulo     : Cadastro de Agenda Clientes        *
  * Analista   : Jo�o Douglas                       *
  * Elabora��o : Jo�o Douglas                       *
  * Ult Alt.   : 27/12/2016                         *
  *************************************************** }

unit un_agenda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.DBGrids, Vcl.DBCtrls,
  Vcl.StdCtrls, Vcl.Mask, Vcl.ComCtrls, sButton, Vcl.ExtCtrls, sPanel, Data.DB,
  Data.Win.ADODB;

type
  Tfrm_agenda = class(TForm)
    sPanel1: TsPanel;
    novo: TsButton;
    editar: TsButton;
    excluir: TsButton;
    sair: TsButton;
    gravar: TsButton;
    cancelar: TsButton;
    StatusBar1: TStatusBar;
    Label1: TLabel;
    Label2: TLabel;
    nom_cli: TDBEdit;
    Label3: TLabel;
    data: TDBEdit;
    Label4: TLabel;
    Label5: TLabel;
    memo: TDBMemo;
    Label6: TLabel;
    combo: TDBLookupComboBox;
    grid_agenda: TDBGrid;
    id_agenda: TDBEdit;
    Label7: TLabel;
    id_cli: TDBEdit;
    nav: TDBNavigator;
    sButton1: TsButton;
    horario: TDBEdit;
    radio: TRadioGroup;
    Edit1: TEdit;
    sButton13: TsButton;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure sairClick(Sender: TObject);
    procedure novoClick(Sender: TObject);
    procedure editarClick(Sender: TObject);
    procedure excluirClick(Sender: TObject);
    procedure gravarClick(Sender: TObject);
    procedure cancelarClick(Sender: TObject);
    procedure id_cliExit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure sButton1Click(Sender: TObject);
    procedure sButton13Click(Sender: TObject);
    procedure radioClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure grid_agendaDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_agenda: Tfrm_agenda;

implementation

uses un_dtstudio, un_pesq_cli, un_relatorios;

{$R *.dfm}

procedure Tfrm_agenda.cancelarClick(Sender: TObject);
begin // Cancelando registros na tabela
   If Application.Messagebox('Confirma Cancelamento na Agenda? ', 'Confirma��o',
   mb_Iconquestion + Mb_OkCancel + Mb_DefButton1) = IdOk then
   else
   exit;
   id_agenda.ReadOnly := true;
   id_cli.ReadOnly := true;
   nom_cli.ReadOnly := true;
   data.ReadOnly := true;
   horario.ReadOnly := true;
   combo.ReadOnly := true;
   grid_agenda.ReadOnly := true;
   novo.Enabled := true;
   editar.Enabled := true;
   excluir.Enabled := true;
   cancelar.Enabled := false;
   gravar.Enabled := false;
   sair.Enabled := true;
   dt_studio.tb_agenda.cancel;
   data.SetFocus;
   sbutton1.Enabled := false;
end;

procedure Tfrm_agenda.editarClick(Sender: TObject);
begin // Alterando registros na tabela
   If Application.Messagebox('Confirma Altera��o na Agenda? ', 'Confirma��o',
   mb_Iconquestion + Mb_OkCancel + Mb_DefButton1) = IdOk then
   else
   exit;
   id_agenda.ReadOnly := false;
   id_cli.ReadOnly := false;
   nom_cli.ReadOnly := false;
   data.ReadOnly := false;
   horario.ReadOnly := false;
   combo.ReadOnly := false;
   grid_agenda.ReadOnly := false;
   novo.Enabled := false;
   editar.Enabled := false;
   excluir.Enabled := false;
   cancelar.Enabled := true;
   gravar.Enabled := true;
   sair.Enabled := false;
   dt_studio.tb_agenda.edit;
   data.SetFocus;
   sbutton1.Enabled := true;
end;

procedure Tfrm_agenda.excluirClick(Sender: TObject);
begin // Comandos para excluir registros na tabela//
   If dt_studio.tb_agenda.RecordCount <> 0 then
   If Application.Messagebox('Confirma Exclus�o?', 'Confirmar',
   mb_Iconquestion + MB_YesNo + Mb_DefButton1) = IdYes Then
   begin
      dt_studio.tb_agenda.Delete;
      data.SetFocus;
   end;
   If dt_studio.tb_agenda.RecordCount = 0 then
   showmessage('Nao Existe Registro para Excluir');
end;

procedure Tfrm_agenda.FormClose(Sender: TObject; var Action: TCloseAction);
begin// Fechando as tabelas
   dt_studio.tb_agenda.close;
   dt_studio.tb_cadcli.close;
   dt_studio.tb_cadatend.close;
end;

procedure Tfrm_agenda.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   Case Key of
        VK_F2: //Comando para teclas de atalho//
        begin // Inserindo registros na tabela
           If Application.Messagebox('Confirma Inclus�o na Agenda? ', 'Confirma��o',
           mb_Iconquestion + Mb_OkCancel + Mb_DefButton1) = IdOk then
           else
           exit;
           id_agenda.ReadOnly := false;
           id_cli.ReadOnly := false;
           nom_cli.ReadOnly := false;
           data.ReadOnly := false;
           horario.ReadOnly := false;
           combo.ReadOnly := false;
           grid_agenda.ReadOnly := false;
           novo.Enabled := false;
           editar.Enabled := false;
           excluir.Enabled := false;
           cancelar.Enabled := true;
           gravar.Enabled := true;
           sair.Enabled := false;
           dt_studio.tb_agenda.Append;
           id_cli.SetFocus;
        end;
   end;
   Case Key of
        VK_F3: //Comando para teclas de atalho//
        begin // Alterando registros na tabela
           If Application.Messagebox('Confirma Altera��o na Agenda? ', 'Confirma��o',
           mb_Iconquestion + Mb_OkCancel + Mb_DefButton1) = IdOk then
           else
           exit;
           id_agenda.ReadOnly := false;
           id_cli.ReadOnly := false;
           nom_cli.ReadOnly := false;
           data.ReadOnly := false;
           horario.ReadOnly := false;
           combo.ReadOnly := false;
           grid_agenda.ReadOnly := false;
           novo.Enabled := false;
           editar.Enabled := false;
           excluir.Enabled := false;
           cancelar.Enabled := true;
           gravar.Enabled := true;
           sair.Enabled := false;
           dt_studio.tb_agenda.edit;
           data.SetFocus;
        end;
   end;
   Case Key of
        VK_F4: //Comando para teclas de atalho//
        begin // Comandos para excluir registros na tabela//
           If dt_studio.tb_agenda.RecordCount <> 0 then
           If Application.Messagebox('Confirma Exclus�o?', 'Confirmar',
           mb_Iconquestion + MB_YesNo + Mb_DefButton1) = IdYes Then
           begin
             dt_studio.tb_agenda.Delete;
             data.SetFocus;
           end;
           If dt_studio.tb_agenda.RecordCount = 0 then
           showmessage('Nao Existe Registro para Excluir');
        end;
   end;
   Case Key of
        VK_F5: //Comando para teclas de atalho//
        begin // Cancelando registros na tabela
           If Application.Messagebox('Confirma Cancelamento na Agenda? ', 'Confirma��o',
           mb_Iconquestion + Mb_OkCancel + Mb_DefButton1) = IdOk then
           else
           exit;
           id_agenda.ReadOnly := true;
           id_cli.ReadOnly := true;
           nom_cli.ReadOnly := true;
           data.ReadOnly := true;
           horario.ReadOnly := true;
           combo.ReadOnly := true;
           grid_agenda.ReadOnly := true;
           novo.Enabled := true;
           editar.Enabled := true;
           excluir.Enabled := true;
           cancelar.Enabled := false;
           gravar.Enabled := false;
           sair.Enabled := true;
           dt_studio.tb_agenda.cancel;
           data.SetFocus;
        end;
   end;
   Case Key of
        VK_F6: //Comando para teclas de atalho//
        begin // Gravando registros na tabela
           If Application.Messagebox('Confirma Grava��o na Agenda? ', 'Confirma��o',
           mb_Iconquestion + Mb_OkCancel + Mb_DefButton1) = IdOk then
           else
           exit;
           id_agenda.ReadOnly := true;
           id_cli.ReadOnly := true;
           nom_cli.ReadOnly := true;
           data.ReadOnly := true;
           horario.ReadOnly := true;
           combo.ReadOnly := true;
           grid_agenda.ReadOnly := true;
           novo.Enabled := true;
           editar.Enabled := true;
           excluir.Enabled := true;
           cancelar.Enabled := false;
           gravar.Enabled := false;
           sair.Enabled := true;
           dt_studio.tb_agenda.post;
           data.SetFocus;
        end;
   end;
   Case Key of
        VK_F9: //Comando para teclas de atalho//
        begin  //Fechando Tela
           close;
        end;
   end;
end;

procedure Tfrm_agenda.FormKeyPress(Sender: TObject; var Key: Char);
begin//Comando para tecla [ENTER]
  If Key = #13 Then
    Selectnext(ActiveControl, true, true);
end;

procedure Tfrm_agenda.FormShow(Sender: TObject);
begin//Abrindo as tabelas
   dt_studio.tb_agenda.Open;
   dt_studio.tb_cadcli.open;
   dt_studio.tb_cadatend.Open;
   sbutton1.Enabled := false;
end;

procedure Tfrm_agenda.gravarClick(Sender: TObject);
begin // Gravando registros na tabela
   If Application.Messagebox('Confirma Grava��o na Agenda? ', 'Confirma��o',
   mb_Iconquestion + Mb_OkCancel + Mb_DefButton1) = IdOk then
   else
   exit;
   id_agenda.ReadOnly := true;
   id_cli.ReadOnly := true;
   nom_cli.ReadOnly := true;
   data.ReadOnly := true;
   horario.ReadOnly := true;
   combo.ReadOnly := true;
   grid_agenda.ReadOnly := true;
   novo.Enabled := true;
   editar.Enabled := true;
   excluir.Enabled := true;
   cancelar.Enabled := false;
   gravar.Enabled := false;
   sair.Enabled := true;
   dt_studio.tb_agenda.post;
   data.SetFocus;
   sbutton1.Enabled := false;
end;

procedure Tfrm_agenda.grid_agendaDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin//Deixando o Grid com linhas no formato zebrado
   If odd(dt_studio.tb_agenda.RecNo) then
   begin
      grid_agenda.Canvas.Font.Color:= clBlack;
      grid_agenda.Canvas.Brush.Color:= $00FFF5EC;
   end
   else
   begin
      grid_agenda.Canvas.Font.Color:= clBlack;
      grid_agenda.Canvas.Brush.Color:= clWhite;
   end;
   grid_agenda.Canvas.FillRect(Rect);
   grid_agenda.Canvas.TextOut(Rect.Left+2,Rect.Top,Column.Field.AsString);
end;

procedure Tfrm_agenda.id_cliExit(Sender: TObject);
begin
  // Comando para filtrar por codigo//
  if dt_studio.tb_cadcli.Locate('ID_CLI', id_cli.text, [loPartialKey]) and
    (Trim(dt_studio.tb_cadcli.FieldByName('NOM_CLI').AsString) <> '') then
  begin
    nom_cli.text := dt_studio.tb_cadcli.FieldByName('NOM_CLI').AsString;
    data.SetFocus;
  end;
 if dt_studio.tb_cadcliSITUACAO.AsString = 'I' then
  begin
    showmessage('Desculpe Cliente Inativo !!!');
    id_cli.SetFocus;
  end;
end;

procedure Tfrm_agenda.novoClick(Sender: TObject);
begin // Inserindo registros na tabela
   If Application.Messagebox('Confirma Inclus�o na Agenda? ', 'Confirma��o',
   mb_Iconquestion + Mb_OkCancel + Mb_DefButton1) = IdOk then
   else
   exit;
   id_agenda.ReadOnly := false;
   id_cli.ReadOnly := false;
   nom_cli.ReadOnly := false;
   data.ReadOnly := false;
   horario.ReadOnly := false;
   combo.ReadOnly := false;
   grid_agenda.ReadOnly := false;
   novo.Enabled := false;
   editar.Enabled := false;
   excluir.Enabled := false;
   cancelar.Enabled := true;
   gravar.Enabled := true;
   sair.Enabled := false;
   dt_studio.tb_agenda.Append;
   id_cli.SetFocus;
   sbutton1.Enabled := true;
end;

procedure Tfrm_agenda.radioClick(Sender: TObject);
begin//Focando o edit
   edit1.SetFocus;
end;

procedure Tfrm_agenda.sairClick(Sender: TObject);
begin//Fechando a Tela
   close;
end;

procedure Tfrm_agenda.sButton13Click(Sender: TObject);
var
   Sql: string;
begin//Pesquisando Registro na Tabela
   dt_studio.tb_agenda.close;
   dt_studio.tb_agenda.Sql.Clear;
   dt_studio.tb_agenda.Sql.Add('select * from CAD_AGENDA');
   if (radio.ItemIndex = 0) then
   Sql := 'where HORARIO like ' + QuotedStr('%' + Edit1.text + '%')
   else if (radio.ItemIndex = 1) then
   Sql := 'where NOM_CLI like ' + QuotedStr('%' + Edit1.text + '%');
   dt_studio.tb_agenda.Sql.Add(Sql);
   dt_studio.tb_agenda.Sql.Add('order by NOM_CLI');
   dt_studio.tb_agenda.open;
end;

procedure Tfrm_agenda.sButton1Click(Sender: TObject);
begin
  // chamando a tela de pesquisa de clientes
  frm_pesq_cli.cod := 2;
  data.SetFocus;
  frm_pesq_cli.showmodal;
end;

end.
