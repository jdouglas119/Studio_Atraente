{ ***************************************************
  * Elaborado para: Studio Atraente                 *
  * Modulo     : Cadastro de Autotizadores          *
  * Analista   : Jo�o Douglas                       *
  * Elabora��o : Jo�o Douglas                       *
  * Ult Alt.   : 08/07/2017                         *
  *************************************************** }

unit un_cadautorizador;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.DBGrids, Vcl.DBCtrls,
  Vcl.StdCtrls, sButton, Vcl.ExtCtrls, sPanel, Vcl.Mask;

type
  Tfrm_cadauto = class(TForm)
    Label1: TLabel;
    nome: TDBEdit;
    Label2: TLabel;
    senha: TDBEdit;
    Label3: TLabel;
    cod: TDBEdit;
    sPanel1: TsPanel;
    novo: TsButton;
    editar: TsButton;
    excluir: TsButton;
    nav_cli: TDBNavigator;
    sair: TsButton;
    gravar: TsButton;
    cancelar: TsButton;
    grid_auto: TDBGrid;
    procedure novoClick(Sender: TObject);
    procedure editarClick(Sender: TObject);
    procedure excluirClick(Sender: TObject);
    procedure cancelarClick(Sender: TObject);
    procedure gravarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure sairClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure grid_autoDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_cadauto: Tfrm_cadauto;

implementation

uses un_dtstudio;

{$R *.dfm}

procedure Tfrm_cadauto.cancelarClick(Sender: TObject);
begin
   If Application.Messagebox('Confirma Cancelamento de Autorizador? ', 'Confirma��o',
   mb_Iconquestion + Mb_OkCancel + Mb_DefButton1) = IdOk then
   else
   exit;
   cod.ReadOnly := true;
   nome.ReadOnly := true;
   senha.ReadOnly := true;
   grid_auto.ReadOnly := true;
   novo.Enabled := true;
   editar.Enabled := true;
   excluir.Enabled := true;
   cancelar.Enabled := false;
   gravar.Enabled := false;
   sair.Enabled := true;
   dt_studio.tb_cadauto.cancel;
   nome.SetFocus;
end;

procedure Tfrm_cadauto.editarClick(Sender: TObject);
begin
   If Application.Messagebox('Confirma Altera��o de Autorizador? ', 'Confirma��o',
   mb_Iconquestion + Mb_OkCancel + Mb_DefButton1) = IdOk then
   else
   exit;
   cod.ReadOnly := false;
   nome.ReadOnly := false;
   senha.ReadOnly := false;
   grid_auto.ReadOnly := false;
   novo.Enabled := false;
   editar.Enabled := false;
   excluir.Enabled := false;
   cancelar.Enabled := true;
   gravar.Enabled := true;
   sair.Enabled := false;
   dt_studio.tb_cadauto.edit;
   nome.SetFocus;
end;

procedure Tfrm_cadauto.excluirClick(Sender: TObject);
begin
   If dt_studio.tb_cadauto.RecordCount <> 0 then
   If Application.Messagebox('Confirma Exclus�o?', 'Confirmar',
   mb_Iconquestion + MB_YesNo + Mb_DefButton1) = IdYes Then
   begin
      dt_studio.tb_cadauto.Delete;
      cod.SetFocus;
   end;
   If dt_studio.tb_cadauto.RecordCount = 0 then
   showmessage('Nao Existe Registro para Excluir');
end;

procedure Tfrm_cadauto.FormKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 Then
    Selectnext(ActiveControl, true, true);
end;

procedure Tfrm_cadauto.FormShow(Sender: TObject);
begin
   dt_studio.tb_cadauto.Open;
end;

procedure Tfrm_cadauto.gravarClick(Sender: TObject);
begin
   If Application.Messagebox('Confirma Grava��o de Autorizador? ', 'Confirma��o',
   mb_Iconquestion + Mb_OkCancel + Mb_DefButton1) = IdOk then
   else
   exit;
   cod.ReadOnly := true;
   nome.ReadOnly := true;
   senha.ReadOnly := true;
   grid_auto.ReadOnly := true;
   novo.Enabled := true;
   editar.Enabled := true;
   excluir.Enabled := true;
   cancelar.Enabled := false;
   gravar.Enabled := false;
   sair.Enabled := true;
   dt_studio.tb_cadauto.post;
   nome.SetFocus;
end;

procedure Tfrm_cadauto.grid_autoDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
    If odd(dt_studio.tb_cadauto.RecNo) then //Deixando o dbgrid zebrado
       begin
          grid_auto.Canvas.Brush.Color:= clBlack;
          grid_auto.Canvas.Brush.Color:= $00FFF5EC;
       end
       else
       begin
          grid_auto.Canvas.Brush.Color:= clBlack;
          grid_auto.Canvas.Brush.Color:= clWhite;
       end;
       grid_auto.Canvas.FillRect(Rect);
       grid_auto.DefaultDrawDataCell(Rect, Column.Field, State);
end;

procedure Tfrm_cadauto.novoClick(Sender: TObject);
begin // Inserindo registros na tabela
   If Application.Messagebox('Confirma Inclus�o de Autorizador? ', 'Confirma��o',
   mb_Iconquestion + Mb_OkCancel + Mb_DefButton1) = IdOk then
   else
   exit;
   cod.ReadOnly := false;
   nome.ReadOnly := false;
   senha.ReadOnly := false;
   grid_auto.ReadOnly := false;
   novo.Enabled := false;
   editar.Enabled := false;
   excluir.Enabled := false;
   cancelar.Enabled := true;
   gravar.Enabled := true;
   sair.Enabled := false;
   dt_studio.tb_cadauto.Append;
   nome.SetFocus;
end;

procedure Tfrm_cadauto.sairClick(Sender: TObject);
begin
   dt_studio.tb_cadauto.close;
   close;
end;

end.
