{ ***************************************************
  * Elaborado para: Studio Atraente                 *
  * Modulo     : Cadastro de Produtos               *
  * Analista   : João Douglas                       *
  * Elaboração : João Douglas                       *
  * Ult Alt.   : 14/09/2016                         *
  *************************************************** }

unit un_cadprod;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.DBCtrls, Vcl.StdCtrls, sButton,
  Vcl.ExtCtrls, sPanel, Vcl.ComCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Mask;

type
  Tfrm_cadprod = class(TForm)
    sPanel1: TsPanel;
    novo: TsButton;
    editar: TsButton;
    excluir: TsButton;
    nav_prod: TDBNavigator;
    sair: TsButton;
    Label1: TLabel;
    Label2: TLabel;
    produto: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    quant: TDBEdit;
    grid_prod: TDBGrid;
    StatusBar1: TStatusBar;
    radio1: TRadioGroup;
    Edit1: TEdit;
    sButton1: TsButton;
    dt_cad: TDBEdit;
    Label17: TLabel;
    Panel1: TPanel;
    Label18: TLabel;
    Panel2: TPanel;
    dbradio1: TDBRadioGroup;
    cancelar: TsButton;
    gravar: TsButton;
    custo: TDBEdit;
    venda: TDBEdit;
    Label7: TLabel;
    perc_comiss: TDBEdit;
    id_prod: TDBEdit;
    Label19: TLabel;
    Label8: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    procedure novoClick(Sender: TObject);
    procedure editarClick(Sender: TObject);
    procedure excluirClick(Sender: TObject);
    procedure cancelarClick(Sender: TObject);
    procedure gravarClick(Sender: TObject);
    procedure sairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure radio1Click(Sender: TObject);
    procedure sButton1Click(Sender: TObject);
    procedure grid_prodDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_cadprod: Tfrm_cadprod;

implementation

uses un_dtstudio;

{$R *.dfm}

procedure Tfrm_cadprod.cancelarClick(Sender: TObject);
begin
   If Application.Messagebox('Confirma Cancelamento da Digitação de Produtos? ',
   'Confirmação', mb_Iconquestion + Mb_OkCancel + Mb_DefButton1) = IdOk then
   else
   exit;
   dt_studio.tb_cadprod.cancel;
   id_prod.ReadOnly := true;
   produto.ReadOnly := true;
   dt_cad.ReadOnly := true;
   custo.ReadOnly := true;
   dbradio1.ReadOnly := true;
   perc_comiss.ReadOnly := true;
   venda.ReadOnly := true;
   quant.ReadOnly := true;
   grid_prod.ReadOnly := true;
   nav_prod.Enabled := true;
   novo.Enabled := true;
   editar.Enabled := true;
   excluir.Enabled := true;
   cancelar.Enabled := false;
   gravar.Enabled := false;
   sair.Enabled := true;
   custo.SetFocus;
end;

procedure Tfrm_cadprod.editarClick(Sender: TObject);
begin
   If Application.Messagebox('Confirma Alteração de Produtos? ', 'Confirmação',
   mb_Iconquestion + Mb_OkCancel + Mb_DefButton1) = IdOk then
   else
   exit;
   dt_studio.tb_cadprod.edit;
   id_prod.ReadOnly := false;
   produto.ReadOnly := false;
   dt_cad.ReadOnly := true;
   dbradio1.ReadOnly := false;
   custo.ReadOnly := true;
   perc_comiss.ReadOnly := false;
   venda.ReadOnly := false;
   quant.ReadOnly := true;
   grid_prod.ReadOnly := false;
   nav_prod.Enabled := false;
   novo.Enabled := false;
   editar.Enabled := false;
   excluir.Enabled := false;
   cancelar.Enabled := true;
   gravar.Enabled := true;
   sair.Enabled := false;
   custo.SetFocus;
end;

procedure Tfrm_cadprod.excluirClick(Sender: TObject);
begin
  If dt_studio.tb_cadprod.RecordCount <> 0 then
    If Application.Messagebox('Confirma Exclusão?', 'Confirmar',
      mb_Iconquestion + MB_YesNo + Mb_DefButton1) = IdYes Then
    begin
      dt_studio.tb_cadprod.Delete;
      id_prod.SetFocus;
    end;
  If dt_studio.tb_cadprod.RecordCount = 0 then
    showmessage('Nao Existe Registro para Excluir');
end;

procedure Tfrm_cadprod.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   Case Key of
        VK_F2: //Comando para teclas de atalho//
        begin
           If Application.Messagebox('Confirma Inclusão de Produtos? ', 'Confirmação',
           mb_Iconquestion + Mb_OkCancel + Mb_DefButton1) = IdOk then
           else
           exit;
           id_prod.ReadOnly := false;
           produto.ReadOnly := false;
           dt_cad.ReadOnly := true;
           custo.ReadOnly := true;
           venda.ReadOnly := false;
           perc_comiss.ReadOnly := false;
           dbradio1.ReadOnly := false;
           quant.ReadOnly := true;
           grid_prod.ReadOnly := false;
           novo.Enabled := false;
           editar.Enabled := false;
           excluir.Enabled := false;
           cancelar.Enabled := true;
           gravar.Enabled := true;
           sair.Enabled := false;
           dt_studio.tb_cadprod.Append;
           dt_studio.tb_cadprodDT_CAD.asstring := DateTimetoStr(now());
           dbradio1.ItemIndex := -0;
           produto.SetFocus;
        end;
   end;
   Case Key of
        VK_F3: //Comando para teclas de atalho//
        begin
           If Application.Messagebox('Confirma Alteração de Produtos? ', 'Confirmação',
           mb_Iconquestion + Mb_OkCancel + Mb_DefButton1) = IdOk then
           else
           exit;
           dt_studio.tb_cadprod.edit;
           id_prod.ReadOnly := false;
           produto.ReadOnly := false;
           dt_cad.ReadOnly := true;
           dbradio1.ReadOnly := false;
           custo.ReadOnly := true;
           perc_comiss.ReadOnly := false;
           venda.ReadOnly := false;
           quant.ReadOnly := true;
           grid_prod.ReadOnly := false;
           novo.Enabled := false;
           editar.Enabled := false;
           excluir.Enabled := false;
           cancelar.Enabled := true;
           gravar.Enabled := true;
           sair.Enabled := false;
           custo.SetFocus;
        end;
   end;
   Case Key of
        VK_F4: //Comando para teclas de atalho//
        begin
           If dt_studio.tb_cadprod.RecordCount <> 0 then
           If Application.Messagebox('Confirma Exclusão?', 'Confirmar',
           mb_Iconquestion + MB_YesNo + Mb_DefButton1) = IdYes Then
           begin
              dt_studio.tb_cadprod.Delete;
              id_prod.SetFocus;
           end;
           If dt_studio.tb_cadprod.RecordCount = 0 then
           showmessage('Nao Existe Registro para Excluir');
        end;
   end;
   Case Key of
        VK_F5: //Comando para teclas de atalho//
        begin
           If Application.Messagebox('Confirma Cancelamento da Digitação de Produtos? ',
           'Confirmação', mb_Iconquestion + Mb_OkCancel + Mb_DefButton1) = IdOk then
           else
           exit;
           dt_studio.tb_cadprod.cancel;
           id_prod.ReadOnly := true;
           produto.ReadOnly := true;
           dt_cad.ReadOnly := true;
           custo.ReadOnly := true;
           dbradio1.ReadOnly := true;
           perc_comiss.ReadOnly := true;
           venda.ReadOnly := true;
           quant.ReadOnly := true;
           grid_prod.ReadOnly := true;
           novo.Enabled := true;
           editar.Enabled := true;
           excluir.Enabled := true;
           cancelar.Enabled := false;
           gravar.Enabled := false;
           sair.Enabled := true;
           custo.SetFocus;
        end;
   end;
   Case Key of
        VK_F6: //Comando para teclas de atalho//
        begin
           If Application.Messagebox('Confirma Gravação de Produtos? ', 'Confirmação',
           mb_Iconquestion + Mb_OkCancel + Mb_DefButton1) = IdOk then
           else
           exit;
           if dt_studio.tb_cadprodNOM_PROD.AsString = '' then
           begin
              Application.MessageBox('CAMPO PRODUTO NÃO PODE SER VAZIO','AVISO',MB_ICONINFORMATION);
              produto.SetFocus;
              exit;
           end
           else
           if dt_studio.tb_cadprodPERC_COMISSAO.AsString = '' then
           begin
              Application.MessageBox('CAMPO COMISSÃO NÃO PODE SER VAZIO','AVISO',MB_ICONINFORMATION);
              perc_comiss.SetFocus;
              exit;
           end
           else
           dt_studio.tb_cadprod.post;
           id_prod.ReadOnly := true;
           produto.ReadOnly := true;
           dt_cad.ReadOnly := true;
           custo.ReadOnly := true;
           dbradio1.ReadOnly := true;
           perc_comiss.ReadOnly := true;
           venda.ReadOnly := true;
           quant.ReadOnly := true;
           grid_prod.ReadOnly := true;
           novo.Enabled := true;
           editar.Enabled := true;
           excluir.Enabled := true;
           cancelar.Enabled := false;
           gravar.Enabled := false;
           sair.Enabled := true;
           custo.SetFocus;
        end;
   end;
   Case Key of
        VK_F9: //Comando para teclas de atalho//
        begin
           dt_studio.tb_cadprod.close;
           dt_studio.tb_situacao.close;
           close;
        end;
   end;
end;

procedure Tfrm_cadprod.FormKeyPress(Sender: TObject; var Key: Char);
begin // Comandos para a tecla [ENTER]//
  If Key = #13 Then
    Selectnext(ActiveControl, true, true);
end;

procedure Tfrm_cadprod.FormShow(Sender: TObject);
begin
  cancelar.Enabled := false;
  gravar.Enabled := false;
  dt_studio.tb_cadprod.open;
  dt_studio.tb_situacao.open;
end;

procedure Tfrm_cadprod.gravarClick(Sender: TObject);
begin
   If Application.Messagebox('Confirma Gravação de Produtos? ', 'Confirmação',
   mb_Iconquestion + Mb_OkCancel + Mb_DefButton1) = IdOk then
   else
   exit;
   if dt_studio.tb_cadprodNOM_PROD.AsString = '' then
   begin
      Application.MessageBox('CAMPO PRODUTO NÃO PODE SER VAZIO','AVISO',MB_ICONINFORMATION);
      produto.SetFocus;
      exit;
   end
   else
   if dt_studio.tb_cadprodPERC_COMISSAO.AsString = '' then
   begin
      Application.MessageBox('CAMPO COMISSÃO NÃO PODE SER VAZIO','AVISO',MB_ICONINFORMATION);
      perc_comiss.SetFocus;
      exit;
   end
   else
   dt_studio.tb_cadprod.post;
   id_prod.ReadOnly := true;
   produto.ReadOnly := true;
   dt_cad.ReadOnly := true;
   custo.ReadOnly := true;
   dbradio1.ReadOnly := true;
   perc_comiss.ReadOnly := true;
   venda.ReadOnly := true;
   quant.ReadOnly := true;
   grid_prod.ReadOnly := true;
   nav_prod.Enabled := true;
   novo.Enabled := true;
   editar.Enabled := true;
   excluir.Enabled := true;
   cancelar.Enabled := false;
   gravar.Enabled := false;
   sair.Enabled := true;
   custo.SetFocus;
end;

procedure Tfrm_cadprod.grid_prodDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
   if dt_studio.tb_cadprodsituacao.asstring = 'A' then
   begin
      grid_prod.Canvas.Font.Color := clBlack;
      grid_prod.Canvas.Brush.Color := clWhite;
   end;
   if dt_studio.tb_cadprodsituacao.asstring = 'I' then
   begin
     grid_prod.Canvas.Font.Color := clRed;
     grid_prod.Canvas.Brush.Color := clWhite;
   end;
   grid_prod.Canvas.FillRect(Rect);
   grid_prod.DefaultDrawDataCell(Rect, Column.Field, State);
end;

procedure Tfrm_cadprod.novoClick(Sender: TObject);
begin // Inserindo registros na tabela
   If Application.Messagebox('Confirma Inclusão de Produtos? ', 'Confirmação',
   mb_Iconquestion + Mb_OkCancel + Mb_DefButton1) = IdOk then
   else
   exit;
   id_prod.ReadOnly := false;
   produto.ReadOnly := false;
   dt_cad.ReadOnly := true;
   custo.ReadOnly := true;
   venda.ReadOnly := false;
   perc_comiss.ReadOnly := false;
   dbradio1.ReadOnly := false;
   quant.ReadOnly := true;
   grid_prod.ReadOnly := false;
   nav_prod.Enabled := false;
   novo.Enabled := false;
   editar.Enabled := false;
   excluir.Enabled := false;
   cancelar.Enabled := true;
   gravar.Enabled := true;
   sair.Enabled := false;
   dt_studio.tb_cadprod.Append;
   dt_studio.tb_cadprodDT_CAD.asstring := DateTimetoStr(now());
   dbradio1.ItemIndex := -0;
   produto.SetFocus;
end;

procedure Tfrm_cadprod.radio1Click(Sender: TObject);
begin
  Edit1.SetFocus;
end;

procedure Tfrm_cadprod.sairClick(Sender: TObject);
begin
  dt_studio.tb_cadprod.close;
  dt_studio.tb_situacao.close;
  close;
end;

procedure Tfrm_cadprod.sButton1Click(Sender: TObject);
var
  Sql: string; // Pesquisando registros na tabela
begin
  dt_studio.tb_cadprod.close;
  dt_studio.tb_cadprod.Sql.Clear;
  dt_studio.tb_cadprod.Sql.Add('select * from CAD_PROD');

  if (radio1.ItemIndex = 0) then
    Sql := 'where ID_PROD like ' + QuotedStr('%' + Edit1.Text + '%')
  else if (radio1.ItemIndex = 1) then
    Sql := 'where NOM_PROD like ' + QuotedStr('%' + Edit1.Text + '%');

  dt_studio.tb_cadprod.Sql.Add(Sql);
  dt_studio.tb_cadprod.Sql.Add('order by NOM_PROD');
  dt_studio.tb_cadprod.open;
end;

end.
