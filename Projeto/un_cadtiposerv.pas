{ ***************************************************
  * Elaborado para: Studio Atraente                 *
  * Modulo     : Cadastro de Servi�os               *
  * Analista   : Jo�o Douglas                       *
  * Elabora��o : Jo�o Douglas                       *
  * Ult Alt.   : 14/02/2017                         *
  *************************************************** }

unit un_cadtiposerv;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls, sButton,
  Vcl.ExtCtrls, sPanel, Vcl.Mask, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls;

type
  Tfrm_cadtiposerv = class(TForm)
    sPanel1: TsPanel;
    novo: TsButton;
    editar: TsButton;
    excluir: TsButton;
    nav_tipo: TDBNavigator;
    sair: TsButton;
    Label17: TLabel;
    Panel1: TPanel;
    Label18: TLabel;
    Panel2: TPanel;
    gravar: TsButton;
    cancelar: TsButton;
    StatusBar1: TStatusBar;
    Edit1: TEdit;
    sButton1: TsButton;
    radio1: TRadioGroup;
    dbradio1: TDBRadioGroup;
    grid_tipo: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    perc: TDBEdit;
    Label5: TLabel;
    data: TDBEdit;
    id_codigo: TDBEdit;
    Label19: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label8: TLabel;
    custo: TDBEdit;
    Label9: TLabel;
    Label10: TLabel;
    estoque: TDBEdit;
    nom_tipo: TDBEdit;
    Label12: TLabel;
    radio2: TDBRadioGroup;
    valor: TDBEdit;
    Label11: TLabel;
    combo: TDBLookupComboBox;
    procedure sButton1Click(Sender: TObject);
    procedure novoClick(Sender: TObject);
    procedure editarClick(Sender: TObject);
    procedure excluirClick(Sender: TObject);
    procedure gravarClick(Sender: TObject);
    procedure cancelarClick(Sender: TObject);
    procedure grid_tipoDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormShow(Sender: TObject);
    procedure sairClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure radio1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure nom_tipoExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_cadtiposerv: Tfrm_cadtiposerv;

implementation

uses un_dtstudio;

{$R *.dfm}

procedure Tfrm_cadtiposerv.cancelarClick(Sender: TObject);
begin // Cancela Digita��o dos dados na tabela
   If Application.Messagebox
   ('Confirma Cancelamento da Digita��o de Tipo de Servi�o? ', 'Confirma��o',
   mb_Iconquestion + Mb_OkCancel + Mb_DefButton1) = IdOk then
   else
   exit;
   id_codigo.ReadOnly := true;
   nom_tipo.ReadOnly := true;
   data.ReadOnly := true;
   perc.ReadOnly := true;
   estoque.ReadOnly := true;
   custo.ReadOnly := true;
   combo.ReadOnly := true;
   valor.ReadOnly := true;
   grid_tipo.ReadOnly := true;
   nav_tipo.Enabled := true;
   novo.Enabled := true;
   editar.Enabled := true;
   excluir.Enabled := true;
   cancelar.Enabled := false;
   gravar.Enabled := false;
   sair.Enabled := true;
   dt_studio.tb_cadtiposerv.cancel;
   id_codigo.setfocus;
end;

procedure Tfrm_cadtiposerv.editarClick(Sender: TObject);
begin // Altera dados na tabela
   If Application.Messagebox('Confirma Altera��o de Tipo de Servi�o? ',
   'Confirma��o', mb_Iconquestion + Mb_OkCancel + Mb_DefButton1) = IdOk then
   else
   exit;
   id_codigo.ReadOnly := false;
   nom_tipo.ReadOnly := false;
   data.ReadOnly := true;
   perc.ReadOnly := false;
   estoque.ReadOnly := false;
   combo.ReadOnly := false;
   custo.ReadOnly := true;
   valor.ReadOnly := false;
   dbradio1.ReadOnly := false;
   radio2.ReadOnly := false;
   grid_tipo.ReadOnly := false;
   nav_tipo.Enabled := false;
   novo.Enabled := false;
   editar.Enabled := false;
   excluir.Enabled := false;
   cancelar.Enabled := true;
   gravar.Enabled := true;
   sair.Enabled := false;
   dt_studio.tb_cadtiposerv.edit;
   id_codigo.setfocus;
end;

procedure Tfrm_cadtiposerv.excluirClick(Sender: TObject);
begin // Comandos para excluir registros na tabela//
  If dt_studio.tb_cadtiposerv.RecordCount <> 0 then
  If Application.Messagebox('Confirma Exclus�o?', 'Confirmar',
  mb_Iconquestion + MB_YesNo + Mb_DefButton1) = IdYes Then
    begin
      dt_studio.tb_cadtiposerv.Delete;
      id_codigo.setfocus;
    end;
  If dt_studio.tb_cadtiposerv.RecordCount = 0 then
     showmessage('Nao Existe Registro para Excluir');
end;

procedure Tfrm_cadtiposerv.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   Case Key of
        VK_F2: //Comando para teclas de atalho//
        begin  //Incluindo Registro na Tabela
           If Application.Messagebox('Confirma Inclus�o de Tipo de Servi�o? ',
           'Confirma��o', mb_Iconquestion + Mb_OkCancel + Mb_DefButton1) = IdOk then
           else
           exit;
           id_codigo.ReadOnly := false;
           nom_tipo.ReadOnly := false;
           data.ReadOnly := true;
           perc.ReadOnly := false;
           custo.ReadOnly := true;
           valor.ReadOnly := false;
           dbradio1.ReadOnly := false;
           grid_tipo.ReadOnly := false;
           combo.ReadOnly := false;
           novo.Enabled := false;
           editar.Enabled := false;
           excluir.Enabled := false;
           cancelar.Enabled := true;
           gravar.Enabled := true;
           sair.Enabled := false;
           dt_studio.tb_cadtiposerv.Append;
           dt_studio.tb_cadtiposervDT_CAD.asstring := DateTimetoStr(now());
           dbradio1.ItemIndex := -0;
           dt_studio.tb_cadtiposervestoque.Value:=0;
           dt_studio.tb_cadtiposervcusto.Value:=0.00;
           nom_tipo.setfocus;
        end;
   end;
   Case Key of
        VK_F3: //Comando para teclas de atalho//
        begin  //Alterando Registro na Tabela
           If Application.Messagebox('Confirma Altera��o de Tipo de Servi�o? ',
           'Confirma��o', mb_Iconquestion + Mb_OkCancel + Mb_DefButton1) = IdOk then
           else
           exit;
           id_codigo.ReadOnly := false;
           nom_tipo.ReadOnly := false;
           data.ReadOnly := true;
           perc.ReadOnly := false;
           valor.ReadOnly := false;
           dbradio1.ReadOnly := false;
           custo.ReadOnly := true;
           combo.ReadOnly := false;
           grid_tipo.ReadOnly := false;
           novo.Enabled := false;
           editar.Enabled := false;
           excluir.Enabled := false;
           cancelar.Enabled := true;
           gravar.Enabled := true;
           sair.Enabled := false;
           dt_studio.tb_cadtiposerv.edit;
           nom_tipo.setfocus;
        end;
   end;
   Case Key of
        VK_F4: //Comando para teclas de atalho//
        begin  //Excluindo Registro na Tabela
           If dt_studio.tb_cadtiposerv.RecordCount <> 0 then
           If Application.Messagebox('Confirma Exclus�o?', 'Confirmar',
           mb_Iconquestion + MB_YesNo + Mb_DefButton1) = IdYes Then
           begin
             dt_studio.tb_cadtiposerv.Delete;
             id_codigo.setfocus;
           end;
           If dt_studio.tb_cadtiposerv.RecordCount = 0 then
           showmessage('Nao Existe Registro para Excluir');
        end;
   end;
   Case Key of
        VK_F5: //Comando para teclas de atalho//
        begin  //Cancelando digita��o na Tabela
           If Application.Messagebox
           ('Confirma Cancelamento da Digita��o de Tipo de Servi�o? ', 'Confirma��o',
           mb_Iconquestion + Mb_OkCancel + Mb_DefButton1) = IdOk then
           else
           exit;
           id_codigo.ReadOnly := true;
           nom_tipo.ReadOnly := true;
           data.ReadOnly := true;
           perc.ReadOnly := true;
           valor.ReadOnly := true;
           custo.ReadOnly := true;
           combo.ReadOnly := true;
           grid_tipo.ReadOnly := true;
           novo.Enabled := true;
           editar.Enabled := true;
           excluir.Enabled := true;
           cancelar.Enabled := false;
           gravar.Enabled := false;
           sair.Enabled := true;
           dt_studio.tb_cadtiposerv.cancel;
           id_codigo.setfocus;
        end;
   end;
   Case Key of
        VK_F6: //Comando para teclas de atalho//
        begin  //Gravando registro na tabela
           If Application.Messagebox('Confirma Grava��o de Tipo de Servi�o? ',
           'Confirma��o', mb_Iconquestion + Mb_OkCancel + Mb_DefButton1) = IdOk then
           else
           exit;
           if dt_studio.tb_cadtiposervNOME_TIPO.AsString = '' then //Informando os campos para preenchimento obrigat�rio
           begin
              Application.MessageBox('CAMPO NOME_TIPO N�O PODE SER VAZIO','AVISO',MB_ICONINFORMATION);
              nom_tipo.SetFocus;
              exit;
           end
           else
           if dt_studio.tb_cadtiposervPERC_SERVICO.AsString = '' then
           begin
              Application.MessageBox('CAMPO PERC_SERV N�O PODE SER VAZIO','AVISO',MB_ICONINFORMATION);
              perc.SetFocus;
              exit;
           end
           else
           if dt_studio.tb_cadtiposervVR_SERVICO.AsString = '' then
           begin
              Application.MessageBox('CAMPO VALOR N�O PODE SER VAZIO','AVISO',MB_ICONINFORMATION);
              valor.SetFocus;
           exit;
           end
           else
           dt_studio.tb_cadtiposerv.post;
           id_codigo.ReadOnly := true;
           nom_tipo.ReadOnly := true;
           custo.ReadOnly := true;
           data.ReadOnly := true;
           perc.ReadOnly := true;
           combo.ReadOnly := true;
           valor.ReadOnly := true;
           grid_tipo.ReadOnly := true;
           novo.Enabled := true;
           editar.Enabled := true;
           excluir.Enabled := true;
           cancelar.Enabled := false;
           gravar.Enabled := false;
           sair.Enabled := true;
           nom_tipo.setfocus;
        end;
   end;
   Case Key of
        VK_F9: //Comando para teclas de atalho//
        begin  //Fechando as Tabelas
           dt_studio.tb_cadtiposerv.close;
           dt_studio.tb_situacao.close;
           close;
        end;
   end;
end;

procedure Tfrm_cadtiposerv.FormKeyPress(Sender: TObject; var Key: Char);
begin // Comandos para a tecla [ENTER]//
  If Key = #13 Then
    Selectnext(ActiveControl, true, true);
end;

procedure Tfrm_cadtiposerv.FormShow(Sender: TObject);
begin //Abrindo as Tabelas
   dt_studio.tb_cadtiposerv.open;
   dt_studio.tb_situacao.open;
   dt_studio.tb_departamento.open;
   cancelar.Enabled := false;
   gravar.Enabled := false;
end;

procedure Tfrm_cadtiposerv.gravarClick(Sender: TObject);
begin // Grava dados na tabela
   If Application.Messagebox('Confirma Grava��o de Tipo de Servi�o? ',
   'Confirma��o', mb_Iconquestion + Mb_OkCancel + Mb_DefButton1) = IdOk then
   else
   exit;
   if dt_studio.tb_cadtiposervNOME_TIPO.AsString = '' then //Informando os campos para preenchimento obrigat�rio
   begin
      Application.MessageBox('CAMPO NOME_TIPO N�O PODE SER VAZIO','AVISO',MB_ICONINFORMATION);
      nom_tipo.SetFocus;
      exit;
   end
   else
   if dt_studio.tb_cadtiposervPERC_SERVICO.AsString = '' then
   begin
      Application.MessageBox('CAMPO PERC_SERV N�O PODE SER VAZIO','AVISO',MB_ICONINFORMATION);
      perc.SetFocus;
      exit;
   end
   else
   if dt_studio.tb_cadtiposervVR_SERVICO.AsString = '' then
   begin
      Application.MessageBox('CAMPO VALOR N�O PODE SER VAZIO','AVISO',MB_ICONINFORMATION);
      valor.SetFocus;
      exit;
   end
   else
   dt_studio.tb_cadtiposerv.post;
   id_codigo.ReadOnly := true;
   nom_tipo.ReadOnly := true;
   data.ReadOnly := true;
   perc.ReadOnly := true;
   estoque.ReadOnly := true;
   custo.ReadOnly := true;
   valor.ReadOnly := true;
   combo.ReadOnly := true;
   grid_tipo.ReadOnly := true;
   nav_tipo.Enabled := true;
   novo.Enabled := true;
   editar.Enabled := true;
   excluir.Enabled := true;
   cancelar.Enabled := false;
   gravar.Enabled := false;
   sair.Enabled := true;
   id_codigo.setfocus;
end;

procedure Tfrm_cadtiposerv.grid_tipoDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin // Muda a cor do grid de acordo com as informa��es selecionadas e estoque menor ou igual a 5
   if dt_studio.tb_cadtiposervsituacao.asstring = 'A' then
      begin
         grid_tipo.Canvas.Font.Color := clBlack;
         grid_tipo.Canvas.Brush.Color := $00E6FFFF;
      end
      else
      begin
         grid_tipo.Canvas.Font.Color := clRed;
         grid_tipo.Canvas.Brush.Color := $00E6FFFF;
      end;
      If odd(dt_studio.tb_cadtiposerv.RecNo) then //Deixando o dbgrid zebrado
      begin
         grid_tipo.Canvas.Brush.Color:= clBlack;
         grid_tipo.Canvas.Brush.Color:= $00FFF5EC;
      end
      else
      begin
         grid_tipo.Canvas.Brush.Color:= clBlack;
         grid_tipo.Canvas.Brush.Color:= clWhite;
      end;
      grid_tipo.Canvas.FillRect(Rect);
      grid_tipo.DefaultDrawDataCell(Rect, grid_tipo.columns[datacol].field, State);
end;

procedure Tfrm_cadtiposerv.nom_tipoExit(Sender: TObject);
begin //Verificando se o produto ou servi�o j� est� cadastrado
     with dt_studio.qry_verificaProd do
         begin
         	  close;
          	SQL.Clear;
          	SQL.Add('SELECT NOME_TIPO FROM CAD_TIPO WHERE NOME_TIPO = ' + QuotedStr(nom_tipo.Text));
          	Open;
         end;
         if dt_studio.qry_verificaProd.RecordCount > 0 then
            begin
              	ShowMessage('Produto ou Servi�o j� Existe na Base de Dados!');
                id_codigo.SetFocus;
            end
            else
            perc.setfocus;
end;

procedure Tfrm_cadtiposerv.novoClick(Sender: TObject);
begin // Inserindo registros na tabela
   If Application.Messagebox('Confirma Inclus�o de Tipo de Servi�o? ',
   'Confirma��o', mb_Iconquestion + Mb_OkCancel + Mb_DefButton1) = IdOk then
   else
   exit;
   id_codigo.ReadOnly := false;
   nom_tipo.ReadOnly := false;
   data.ReadOnly := true;
   perc.ReadOnly := false;
   combo.ReadOnly := false;
   custo.ReadOnly := true;
   estoque.ReadOnly := false;
   valor.ReadOnly := false;
   dbradio1.ReadOnly := false;
   radio2.ReadOnly := false;
   grid_tipo.ReadOnly := false;
   nav_tipo.Enabled := false;
   novo.Enabled := false;
   editar.Enabled := false;
   excluir.Enabled := false;
   cancelar.Enabled := true;
   gravar.Enabled := true;
   sair.Enabled := false;
   dt_studio.tb_cadtiposerv.Append;
   dt_studio.tb_cadtiposervDT_CAD.asstring := DateTimetoStr(now());
   dbradio1.ItemIndex := -0;
   dt_studio.tb_cadtiposervestoque.Value:=0;
   dt_studio.tb_cadtiposervcusto.Value:=0.00;
   nom_tipo.setfocus;
end;

procedure Tfrm_cadtiposerv.radio1Click(Sender: TObject);
begin //Focando no edit
  Edit1.setfocus;
end;

procedure Tfrm_cadtiposerv.sairClick(Sender: TObject);
begin //Fechando as tabelas
  dt_studio.tb_cadtiposerv.close;
  dt_studio.tb_situacao.close;
  dt_studio.tb_departamento.close;
  close;
end;

procedure Tfrm_cadtiposerv.sButton1Click(Sender: TObject);
var
  Sql: string; // Pesquisando registros na tabela
begin
  dt_studio.tb_cadtiposerv.close;
  dt_studio.tb_cadtiposerv.Sql.Clear;
  dt_studio.tb_cadtiposerv.Sql.Add('select * from CAD_TIPO');

  if (radio1.ItemIndex = 0) then
  Sql := 'where TIPO like ' + QuotedStr('%' + Edit1.Text + '%')
  else if (radio1.ItemIndex = 1) then
  Sql := 'where NOME_TIPO like ' + QuotedStr('%' + Edit1.Text + '%');

  dt_studio.tb_cadtiposerv.Sql.Add(Sql);
  dt_studio.tb_cadtiposerv.Sql.Add('order by NOME_TIPO');
  dt_studio.tb_cadtiposerv.open;
end;

end.
