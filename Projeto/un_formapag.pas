{ ***************************************************
  * Elaborado para: Studio Atraente                 *
  * Modulo     : Cadastros de Forma de Pagamentos   *
  * Analista   : Jo�o Douglas                       *
  * Elabora��o : Jo�o Douglas                       *
  * Ult Alt.   : 14/09/2016                         *
  *************************************************** }

unit un_formapag;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.DBCtrls, Vcl.StdCtrls, sButton,
  Vcl.ExtCtrls, sPanel, Vcl.ComCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Mask;

type
  Tfrm_formapag = class(TForm)
    sPanel1: TsPanel;
    novo: TsButton;
    editar: TsButton;
    excluir: TsButton;
    nav_forma: TDBNavigator;
    sair: TsButton;
    gravar: TsButton;
    cancelar: TsButton;
    Label1: TLabel;
    Label2: TLabel;
    nom_forma: TDBEdit;
    Label3: TLabel;
    data: TDBEdit;
    grid_forma: TDBGrid;
    StatusBar1: TStatusBar;
    id_formapag: TDBEdit;
    Label27: TLabel;
    Label28: TLabel;
    Label19: TLabel;
    procedure novoClick(Sender: TObject);
    procedure editarClick(Sender: TObject);
    procedure excluirClick(Sender: TObject);
    procedure gravarClick(Sender: TObject);
    procedure cancelarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure sairClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure grid_formaDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_formapag: Tfrm_formapag;

implementation

uses un_dtstudio;

{$R *.dfm}

procedure Tfrm_formapag.cancelarClick(Sender: TObject);
begin //Cancelando digita��o das informa��es na tabela
   If Application.Messagebox('Confirma Cancelamento da Forma de Pagamento? ',
   'Confirma��o', mb_Iconquestion + Mb_OkCancel + Mb_DefButton1) = IdOk then
   else
   exit;
   id_formapag.ReadOnly := true;
   nom_forma.ReadOnly := true;
   data.ReadOnly := true;
   grid_forma.ReadOnly := true;
   nav_forma.Enabled := true;
   novo.Enabled := true;
   editar.Enabled := true;
   excluir.Enabled := true;
   cancelar.Enabled := false;
   gravar.Enabled := false;
   sair.Enabled := true;
   dt_studio.tb_formapag.cancel;
   nom_forma.setfocus;
end;

procedure Tfrm_formapag.editarClick(Sender: TObject);
begin //Alterando informa��es na tabela
   If Application.Messagebox('Confirma Altera��o da Forma de Pagamento? ',
   'Confirma��o', mb_Iconquestion + Mb_OkCancel + Mb_DefButton1) = IdOk then
   else
   exit;
   id_formapag.ReadOnly := false;
   nom_forma.ReadOnly := false;
   data.ReadOnly := true;
   grid_forma.ReadOnly := false;
   nav_forma.Enabled := false;
   novo.Enabled := false;
   editar.Enabled := false;
   excluir.Enabled := false;
   cancelar.Enabled := true;
   gravar.Enabled := true;
   sair.Enabled := false;
   dt_studio.tb_formapag.edit;
   nom_forma.setfocus;
end;

procedure Tfrm_formapag.excluirClick(Sender: TObject);
begin // Comandos para excluir registros na tabela//
   If dt_studio.tb_formapag.RecordCount <> 0 then
   If Application.Messagebox('Confirma Exclus�o?', 'Confirmar',
   mb_Iconquestion + MB_YesNo + Mb_DefButton1) = IdYes Then
   begin
      dt_studio.tb_formapag.Delete;
      nom_forma.setfocus;
    end;
  If dt_studio.tb_formapag.RecordCount = 0 then
     showmessage('Nao Existe Registro para Excluir');
end;

procedure Tfrm_formapag.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   Case Key of
        VK_F2: //Comando para teclas de atalho//
        begin  //Inluindo informa��es na tabela
           If Application.Messagebox('Confirma Inclus�o da Forma de Pagamento? ',
           'Confirma��o', mb_Iconquestion + Mb_OkCancel + Mb_DefButton1) = IdOk then
           else
           exit;
           id_formapag.ReadOnly := false;
           nom_forma.ReadOnly := false;
           data.ReadOnly := true;
           grid_forma.ReadOnly := false;
           novo.Enabled := false;
           editar.Enabled := false;
           excluir.Enabled := false;
           cancelar.Enabled := true;
           gravar.Enabled := true;
           sair.Enabled := false;
           dt_studio.tb_formapag.Append;
           dt_studio.tb_formapagDATA.AsString := DateTimetoStr(now());
           nom_forma.setfocus;
        end;
   end;
   Case Key of
        VK_F3: //Comando para teclas de atalho
        begin  //Alterando informa��es na tabela
           If Application.Messagebox('Confirma Altera��o da Forma de Pagamento? ',
           'Confirma��o', mb_Iconquestion + Mb_OkCancel + Mb_DefButton1) = IdOk then
           else
           exit;
           id_formapag.ReadOnly := false;
           nom_forma.ReadOnly := false;
           data.ReadOnly := true;
           grid_forma.ReadOnly := false;
           novo.Enabled := false;
           editar.Enabled := false;
           excluir.Enabled := false;
           cancelar.Enabled := true;
           gravar.Enabled := true;
           sair.Enabled := false;
           dt_studio.tb_formapag.edit;
           nom_forma.setfocus;
        end;
   end;
   Case Key of
        VK_F4: //Comando para teclas de atalho
        begin  //Excluindo informa��es na tabela
           If dt_studio.tb_formapag.RecordCount <> 0 then
           If Application.Messagebox('Confirma Exclus�o?', 'Confirmar',
           mb_Iconquestion + MB_YesNo + Mb_DefButton1) = IdYes Then
           begin
             dt_studio.tb_formapag.Delete;
             nom_forma.setfocus;
           end;
           If dt_studio.tb_formapag.RecordCount = 0 then
           showmessage('Nao Existe Registro para Excluir');
        end;
   end;
   Case Key of
        VK_F5: //Comando para teclas de atalho
        begin  //Cancelando informa��es na tabela
           If Application.Messagebox('Confirma Cancelamento da Forma de Pagamento? ',
           'Confirma��o', mb_Iconquestion + Mb_OkCancel + Mb_DefButton1) = IdOk then
           else
           exit;
           id_formapag.ReadOnly := true;
           nom_forma.ReadOnly := true;
           data.ReadOnly := true;
           grid_forma.ReadOnly := true;
           novo.Enabled := true;
           editar.Enabled := true;
           excluir.Enabled := true;
           cancelar.Enabled := false;
           gravar.Enabled := false;
           sair.Enabled := true;
           dt_studio.tb_formapag.cancel;
           nom_forma.setfocus;
        end;
   end;
   Case Key of
        VK_F6: //Comando para teclas de atalho
        begin  //Gravando informa��es na tabela
           If Application.Messagebox('Confirma Grava��o da Forma de Pagamento? ',
           'Confirma��o', mb_Iconquestion + Mb_OkCancel + Mb_DefButton1) = IdOk then
           else
           exit;
           if dt_studio.tb_formapagFORMA_PAG.AsString = '' then
           begin
              Application.MessageBox('CAMPO FORMA_PAG N�O PODE SER VAZIO','AVISO',MB_ICONINFORMATION);
              nom_forma.SetFocus;
              exit;
           end
           else
           dt_studio.tb_formapag.post;
           id_formapag.ReadOnly := true;
           nom_forma.ReadOnly := true;
           data.ReadOnly := true;
           grid_forma.ReadOnly := true;
           novo.Enabled := true;
           editar.Enabled := true;
           excluir.Enabled := true;
           cancelar.Enabled := false;
           gravar.Enabled := false;
           sair.Enabled := true;
           nom_forma.setfocus;
        end;
   end;
   Case Key of
        VK_F9: //Comando para teclas de atalho
        begin  //Fechando a tabela
           dt_studio.tb_formapag.close;
           close;
        end;
   end;
end;

procedure Tfrm_formapag.FormKeyPress(Sender: TObject; var Key: Char);
begin // Comandos para a tecla [ENTER]//
  If Key = #13 Then
    Selectnext(ActiveControl, true, true);
end;

procedure Tfrm_formapag.FormShow(Sender: TObject);
begin //Abrindo a tabela
   dt_studio.tb_formapag.Open;
   cancelar.Enabled := false;
   gravar.Enabled := false;
end;

procedure Tfrm_formapag.gravarClick(Sender: TObject);
begin //Gravando informa��es na tabela
   If Application.Messagebox('Confirma Grava��o da Forma de Pagamento? ',
   'Confirma��o', mb_Iconquestion + Mb_OkCancel + Mb_DefButton1) = IdOk then
   else
   exit;
   if dt_studio.tb_formapagFORMA_PAG.AsString = '' then //Informando campo para preenchimento obrigat�rio
   begin
       Application.MessageBox('CAMPO FORMA_PAG N�O PODE SER VAZIO','AVISO',MB_ICONINFORMATION);
       nom_forma.SetFocus;
       exit;
   end
   else
   dt_studio.tb_formapag.post;
   id_formapag.ReadOnly := true;
   nom_forma.ReadOnly := true;
   data.ReadOnly := true;
   grid_forma.ReadOnly := true;
   nav_forma.Enabled := true;
   novo.Enabled := true;
   editar.Enabled := true;
   excluir.Enabled := true;
   cancelar.Enabled := false;
   gravar.Enabled := false;
   sair.Enabled := true;
   id_formapag.setfocus;
end;

procedure Tfrm_formapag.grid_formaDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin //Deixando o dbgrid zebrado
    If odd(dt_studio.tb_formapag.RecNo) then
       begin
          grid_forma.Canvas.Font.Color:= clBlack;
          grid_forma.Canvas.Brush.Color:= $00FFF5EC;
       end
       else
       begin
          grid_forma.Canvas.Font.Color:= clBlack;
          grid_forma.Canvas.Brush.Color:= clWhite;
       end;
       grid_forma.Canvas.FillRect(Rect);
       grid_forma.DefaultDrawDataCell(Rect, grid_forma.columns[datacol].field, State);
end;

procedure Tfrm_formapag.novoClick(Sender: TObject);
begin // Inserindo registros na tabela
   If Application.Messagebox('Confirma Inclus�o da Forma de Pagamento? ',
   'Confirma��o', mb_Iconquestion + Mb_OkCancel + Mb_DefButton1) = IdOk then
   else
   exit;
   id_formapag.ReadOnly := false;
   nom_forma.ReadOnly := false;
   data.ReadOnly := true;
   grid_forma.ReadOnly := false;
   nav_forma.Enabled := false;
   novo.Enabled := false;
   editar.Enabled := false;
   excluir.Enabled := false;
   cancelar.Enabled := true;
   gravar.Enabled := true;
   sair.Enabled := false;
   dt_studio.tb_formapag.Append;
   dt_studio.tb_formapagDATA.AsString := DateTimetoStr(now());
   nom_forma.setfocus;
end;

procedure Tfrm_formapag.sairClick(Sender: TObject);
begin //Fechando a tabela
  dt_studio.tb_formapag.close;
  close;
end;

end.
