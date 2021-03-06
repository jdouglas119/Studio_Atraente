{ ***************************************************
  * Elaborado para: Studio Atraente                 *
  * Modulo     : Cadastro de Atendentes             *
  * Analista   : Jo�o Douglas                       *
  * Elabora��o : Jo�o Douglas                       *
  * Ult Alt.   : 07/12/2016                         *
  *************************************************** }

unit un_cadatend;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.DBGrids, Vcl.Mask,
  Vcl.DBCtrls, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.ComCtrls, sButton, sPanel,
  Vcl.Buttons;

type
  Tfrm_cadatend = class(TForm)
    sPanel1: TsPanel;
    novo: TsButton;
    editar: TsButton;
    excluir: TsButton;
    nav_atend: TDBNavigator;
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
    Label1: TLabel;
    Label2: TLabel;
    nom_func: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    end_func: TDBEdit;
    Label5: TLabel;
    bai_func: TDBEdit;
    Label6: TLabel;
    cep_func: TDBEdit;
    Label7: TLabel;
    cid_func: TDBEdit;
    Label8: TLabel;
    Label9: TLabel;
    com_func: TDBEdit;
    grid_func: TDBGrid;
    data: TDBEdit;
    Label10: TLabel;
    numero: TDBEdit;
    Label11: TLabel;
    Label13: TLabel;
    comp: TDBEdit;
    uf: TDBLookupComboBox;
    area_func: TDBEdit;
    dbradio1: TDBRadioGroup;
    Label14: TLabel;
    tel_func: TDBEdit;
    Label15: TLabel;
    cel_func: TDBEdit;
    id_codigo: TDBEdit;
    Label25: TLabel;
    dt_nasc: TDBEdit;
    SpeedButton1: TSpeedButton;
    procedure novoClick(Sender: TObject);
    procedure editarClick(Sender: TObject);
    procedure excluirClick(Sender: TObject);
    procedure gravarClick(Sender: TObject);
    procedure cancelarClick(Sender: TObject);
    procedure sButton1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure sairClick(Sender: TObject);
    procedure grid_funcDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure radio1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_cadatend: Tfrm_cadatend;

implementation

uses un_dtstudio, untConsultaCepViaCep;

{$R *.dfm}

procedure Tfrm_cadatend.cancelarClick(Sender: TObject);
begin // Cancelando dados na tabela
   If Application.Messagebox('Confirma Cancelamento na Digita��o de Atendentes? ', 'Confirma��o',
   mb_Iconquestion + Mb_OkCancel + Mb_DefButton1) = IdOk then
   else
   exit;
   id_codigo.ReadOnly := true;
   nom_func.ReadOnly := true;
   data.ReadOnly := true;
   end_func.ReadOnly := true;
   dt_nasc.ReadOnly := true;
   bai_func.ReadOnly := true;
   tel_func.ReadOnly := true;
   cel_func.ReadOnly := true;
   cep_func.ReadOnly := true;
   dbradio1.ReadOnly := true;
   comp.ReadOnly := true;
   uf.ReadOnly := true;
   cid_func.ReadOnly := true;
   area_func.ReadOnly := true;
   com_func.ReadOnly := true;
   grid_func.ReadOnly := true;
   nav_atend.Enabled := true;
   novo.Enabled := true;
   editar.Enabled := true;
   excluir.Enabled := true;
   cancelar.Enabled := false;
   gravar.Enabled := false;
   sair.Enabled := true;
   dt_studio.tb_cadatend.cancel;
   nom_func.setfocus;
end;

procedure Tfrm_cadatend.editarClick(Sender: TObject);
begin // Alterando dados na tabela
   If Application.Messagebox('Confirma Altera��o de Atendentes? ', 'Confirma��o',
   mb_Iconquestion + Mb_OkCancel + Mb_DefButton1) = IdOk then
   else
   exit;
   id_codigo.ReadOnly := false;
   nom_func.ReadOnly := false;
   data.ReadOnly := true;
   end_func.ReadOnly := false;
   bai_func.ReadOnly := false;
   dt_nasc.ReadOnly := false;
   comp.ReadOnly := false;
   uf.ReadOnly := false;
   tel_func.ReadOnly := false;
   cel_func.ReadOnly := false;
   cep_func.ReadOnly := false;
   cid_func.ReadOnly := false;
   area_func.ReadOnly := false;
   com_func.ReadOnly := false;
   dbradio1.ReadOnly := false;
   grid_func.ReadOnly := false;
   nav_atend.Enabled := false;
   novo.Enabled := false;
   editar.Enabled := false;
   excluir.Enabled := false;
   cancelar.Enabled := true;
   gravar.Enabled := true;
   sair.Enabled := false;
   dt_studio.tb_cadatend.edit;
   nom_func.setfocus;
end;

procedure Tfrm_cadatend.excluirClick(Sender: TObject);
begin // Comandos para excluir registros na tabela//
  If dt_studio.tb_cadatend.RecordCount <> 0 then
    If Application.Messagebox('Confirma Exclus�o?', 'Confirmar',
      mb_Iconquestion + MB_YesNo + Mb_DefButton1) = IdYes Then
    begin
      dt_studio.tb_cadatend.Delete;
      id_codigo.setfocus;
    end;
  If dt_studio.tb_cadatend.RecordCount = 0 then
    showmessage('Nao Existe Registro para Excluir');
end;

procedure Tfrm_cadatend.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     Case Key of
        VK_F2: //Comando para teclas de atalho//
           begin // Inserindo registros na tabela
              If Application.Messagebox('Confirma Inclus�o de Atendentes? ', 'Confirma��o',
              mb_Iconquestion + Mb_OkCancel + Mb_DefButton1) = IdOk then
           else
           exit;
           id_codigo.ReadOnly := false;
           nom_func.ReadOnly := false;
           data.ReadOnly := true;
           end_func.ReadOnly := false;
           bai_func.ReadOnly := false;
           cep_func.ReadOnly := false;
           comp.ReadOnly := false;
           dt_nasc.ReadOnly := false;
           tel_func.ReadOnly := false;
           cel_func.ReadOnly := false;
           uf.ReadOnly := false;
           cid_func.ReadOnly := false;
           area_func.ReadOnly := false;
           com_func.ReadOnly := false;
           dbradio1.ReadOnly := false;
           grid_func.ReadOnly := false;
           novo.Enabled := false;
           editar.Enabled := false;
           excluir.Enabled := false;
           cancelar.Enabled := true;
           gravar.Enabled := true;
           sair.Enabled := false;
           dt_studio.tb_cadatend.Append;
           dt_studio.tb_cadatendDT_CAD.asstring := DateTimetoStr(now());
           dbradio1.ItemIndex := -0;
           nom_func.setfocus;
     end;
  end;
  Case Key of
        VK_F3: //Comando para teclas de atalho//
      begin    //Alterando dados na Tabela
          If Application.Messagebox('Confirma Altera��o de Atendentes? ', 'Confirma��o',
          mb_Iconquestion + Mb_OkCancel + Mb_DefButton1) = IdOk then
          else
          exit;
          id_codigo.ReadOnly := false;
          nom_func.ReadOnly := false;
          data.ReadOnly := true;
          end_func.ReadOnly := false;
          bai_func.ReadOnly := false;
          comp.ReadOnly := false;
          uf.ReadOnly := false;
          dt_nasc.ReadOnly := false;
          tel_func.ReadOnly := false;
          cel_func.ReadOnly := false;
          cep_func.ReadOnly := false;
          cid_func.ReadOnly := false;
          area_func.ReadOnly := false;
          com_func.ReadOnly := false;
          dbradio1.ReadOnly := false;
          grid_func.ReadOnly := false;
          novo.Enabled := false;
          editar.Enabled := false;
          excluir.Enabled := false;
          cancelar.Enabled := true;
          gravar.Enabled := true;
          sair.Enabled := false;
          dt_studio.tb_cadatend.edit;
          nom_func.setfocus;
      end;
  end;
  Case Key of
       VK_F4: //Comando para teclas de atalho//
       begin  //Exluindo dados da Tabela
          If dt_studio.tb_cadatend.RecordCount <> 0 then
          If Application.Messagebox('Confirma Exclus�o?', 'Confirmar',
          mb_Iconquestion + MB_YesNo + Mb_DefButton1) = IdYes Then
          begin
             dt_studio.tb_cadatend.Delete;
             id_codigo.setfocus;
          end;
          If dt_studio.tb_cadatend.RecordCount = 0 then
          showmessage('Nao Existe Registro para Excluir');
       end;
  end;
  Case Key of
       VK_F6: //Comando para teclas de atalho//
       begin  //Gravando dados na Tabela
          If Application.Messagebox('Confirma Grava��o de Atendentes? ', 'Confirma��o',
          mb_Iconquestion + Mb_OkCancel + Mb_DefButton1) = IdOk then
          else
          exit;
          dt_studio.tb_cadatend.post;
          id_codigo.ReadOnly := true;
          nom_func.ReadOnly := true;
          data.ReadOnly := true;
          end_func.ReadOnly := true;
          tel_func.ReadOnly := true;
          cel_func.ReadOnly := true;
          bai_func.ReadOnly := true;
          comp.ReadOnly := true;
          dt_nasc.ReadOnly := true;
          uf.ReadOnly := true;
          cep_func.ReadOnly := true;
          cid_func.ReadOnly := true;
          area_func.ReadOnly := true;
          com_func.ReadOnly := true;
          grid_func.ReadOnly := true;
          novo.Enabled := true;
          editar.Enabled := true;
          excluir.Enabled := true;
          cancelar.Enabled := false;
          gravar.Enabled := false;
          sair.Enabled := true;
          nom_func.setfocus;
       end;
  end;
  Case Key of
       VK_F5: //Comando para teclas de atalho//
       begin  //Cancelando informa��es da digita��o
           If Application.Messagebox
           ('Confirma Cancelamento na Digita��o de Atendentes? ', 'Confirma��o',
           mb_Iconquestion + Mb_OkCancel + Mb_DefButton1) = IdOk then
           else
           exit;
           id_codigo.ReadOnly := true;
           nom_func.ReadOnly := true;
           data.ReadOnly := true;
           end_func.ReadOnly := true;
           bai_func.ReadOnly := true;
           tel_func.ReadOnly := true;
           dt_nasc.ReadOnly := true;
           cel_func.ReadOnly := true;
           cep_func.ReadOnly := true;
           dbradio1.ReadOnly := true;
           comp.ReadOnly := true;
           uf.ReadOnly := true;
           cid_func.ReadOnly := true;
           area_func.ReadOnly := true;
           com_func.ReadOnly := true;
           grid_func.ReadOnly := true;
           novo.Enabled := true;
           editar.Enabled := true;
           excluir.Enabled := true;
           cancelar.Enabled := false;
           gravar.Enabled := false;
           sair.Enabled := true;
           dt_studio.tb_cadatend.cancel;
           nom_func.setfocus;
       end;
  end;
  Case Key of
       VK_F9: //Comando para teclas de atalho//
        begin //Fechando as Tabelas
            dt_studio.tb_cadatend.close;
            dt_studio.tb_situacao.close;
            dt_studio.tb_cadestado.close;
            close;
        end;
  end;
end;

procedure Tfrm_cadatend.FormKeyPress(Sender: TObject; var Key: Char);
begin // Comandos para a tecla [ENTER]//
  If Key = #13 Then
    Selectnext(ActiveControl, true, true);
end;

procedure Tfrm_cadatend.FormShow(Sender: TObject);
begin // Abrindo tabelas
  cancelar.Enabled := false;
  gravar.Enabled := false;
  dt_studio.tb_cadatend.open;
  dt_studio.tb_situacao.open;
  dt_studio.tb_cadestado.open;
end;

procedure Tfrm_cadatend.gravarClick(Sender: TObject);
begin // Gravando dados na tabela
   If Application.Messagebox('Confirma Grava��o de Atendentes? ', 'Confirma��o',
   mb_Iconquestion + Mb_OkCancel + Mb_DefButton1) = IdOk then
   else
   exit;
   dt_studio.tb_cadatend.post;
   id_codigo.ReadOnly := true;
   nom_func.ReadOnly := true;
   data.ReadOnly := true;
   end_func.ReadOnly := true;
   tel_func.ReadOnly := true;
   dt_nasc.ReadOnly := true;
   cel_func.ReadOnly := true;
   bai_func.ReadOnly := true;
   comp.ReadOnly := true;
   uf.ReadOnly := true;
   cep_func.ReadOnly := true;
   cid_func.ReadOnly := true;
   area_func.ReadOnly := true;
   com_func.ReadOnly := true;
   grid_func.ReadOnly := true;
   nav_atend.Enabled := true;
   novo.Enabled := true;
   editar.Enabled := true;
   excluir.Enabled := true;
   cancelar.Enabled := false;
   gravar.Enabled := false;
   sair.Enabled := true;
   nom_func.setfocus;
end;

procedure Tfrm_cadatend.grid_funcDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin // Mudando a cor da situa��o no grid
    if dt_studio.tb_cadatendsituacao.asstring = 'A' then
    begin
        grid_func.Canvas.Font.Color := clBlack;
        grid_func.Canvas.Brush.Color := clWhite;
    end
    else
    begin
       grid_func.Canvas.Font.Color := clRed;
       grid_func.Canvas.Brush.Color := clWhite;
    end;
    If odd(dt_studio.tb_cadatend.RecNo) then //Comando para deixar o dbgrid zebrado
        begin
            grid_func.Canvas.Brush.Color:= clBlack;
            grid_func.Canvas.Brush.Color:= $00FFF5EC;
        end
        else
        begin
            grid_func.Canvas.Brush.Color:= clBlack;
            grid_func.Canvas.Brush.Color:= clWhite;
       end;
       grid_func.Canvas.FillRect(Rect);
       grid_func.DefaultDrawDataCell(Rect, Column.Field, State);
end;

procedure Tfrm_cadatend.novoClick(Sender: TObject);
begin // Inserindo registros na tabela
   If Application.Messagebox('Confirma Inclus�o de Atendentes? ', 'Confirma��o',
   mb_Iconquestion + Mb_OkCancel + Mb_DefButton1) = IdOk then
   else
   exit;
   id_codigo.ReadOnly := false;
   nom_func.ReadOnly := false;
   data.ReadOnly := true;
   end_func.ReadOnly := false;
   bai_func.ReadOnly := false;
   cep_func.ReadOnly := false;
   dt_nasc.ReadOnly := false;
   comp.ReadOnly := false;
   tel_func.ReadOnly := false;
   cel_func.ReadOnly := false;
   uf.ReadOnly := false;
   cid_func.ReadOnly := false;
   area_func.ReadOnly := false;
   com_func.ReadOnly := false;
   dbradio1.ReadOnly := false;
   grid_func.ReadOnly := false;
   nav_atend.Enabled := false;
   novo.Enabled := false;
   editar.Enabled := false;
   excluir.Enabled := false;
   cancelar.Enabled := true;
   gravar.Enabled := true;
   sair.Enabled := false;
   dt_studio.tb_cadatend.Append;
   dt_studio.tb_cadatendDT_CAD.asstring := DateTimetoStr(now());
   dbradio1.ItemIndex := -0;
   nom_func.setfocus;
end;

procedure Tfrm_cadatend.radio1Click(Sender: TObject);
begin //Focando do edit
  Edit1.setfocus;
end;

procedure Tfrm_cadatend.sairClick(Sender: TObject);
begin // Fechando dados na tabela
  dt_studio.tb_cadatend.close;
  dt_studio.tb_situacao.close;
  dt_studio.tb_cadestado.close;
  close;
end;

procedure Tfrm_cadatend.sButton1Click(Sender: TObject);
var
  Sql: string; // Pesquisando registros na tabela
begin
   dt_studio.tb_cadatend.close;
   dt_studio.tb_cadatend.Sql.Clear;
   dt_studio.tb_cadatend.Sql.Add('select * from CAD_FUNC');
   if (radio1.ItemIndex = 0) then
     Sql := 'where ID_FUNC like ' + QuotedStr('%' + Edit1.Text + '%')
   else
   if (radio1.ItemIndex = 1) then
     Sql := 'where NOM_FUNC like ' + QuotedStr('%' + Edit1.Text + '%');
     dt_studio.tb_cadatend.Sql.Add(Sql);
     dt_studio.tb_cadatend.Sql.Add('order by NOM_FUNC');
     dt_studio.tb_cadatend.open;
end;

procedure Tfrm_cadatend.SpeedButton1Click(Sender: TObject);
begin
   frmConsultaCepViaCep.show;
end;

end.
