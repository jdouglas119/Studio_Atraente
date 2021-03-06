{ ***************************************************
  * Elaborado para: Studio Atraente                 *
  * Modulo     : Corre��es no Estoque               *
  * Analista   : Jo�o Douglas                       *
  * Elabora��o : Jo�o Douglas                       *
  * Ult Alt.   : 24/12/2016                         *
  *************************************************** }

unit un_correcaoest;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.ComCtrls,
  Vcl.StdCtrls, Vcl.Mask, Vcl.Grids, Vcl.DBGrids, sButton, Vcl.Buttons, Data.DB,
  Data.Win.ADODB;

type
  Tfrm_correcaoest = class(TForm)
    grid_correcao: TDBGrid;
    Label1: TLabel;
    id_cod: TDBEdit;
    Label2: TLabel;
    nom_prod: TDBEdit;
    Label3: TLabel;
    quant: TDBEdit;
    Label4: TLabel;
    data: TDBEdit;
    nav_correcao: TDBNavigator;
    Label5: TLabel;
    SpeedButton1: TSpeedButton;
    dbradio1: TDBRadioGroup;
    id_reg: TDBEdit;
    query_prod: TADOQuery;
    query_prodNOME_TIPO: TStringField;
    query_prodDT_CAD: TDateTimeField;
    query_prodPERC_SERVICO: TBCDField;
    query_prodVR_SERVICO: TBCDField;
    query_prodSITUACAO: TStringField;
    query_prodID_TIPO: TAutoIncField;
    query_prodCUSTO: TFloatField;
    query_prodTIPO: TStringField;
    query_prodESTOQUE: TBCDField;
    Panel1: TPanel;
    novo: TsButton;
    cancelar: TsButton;
    grava_mais: TSpeedButton;
    grava_menos: TSpeedButton;
    sair: TsButton;
    procedure SpeedButton1Click(Sender: TObject);
    procedure novoClick(Sender: TObject);
    procedure cancelarClick(Sender: TObject);
    procedure sairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure grava_menosClick(Sender: TObject);
    procedure grava_maisClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure quantExit(Sender: TObject);
    procedure grid_correcaoDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure id_codExit(Sender: TObject);
  private
    { Private declarations }
  public
    cod : integer;
    { Public declarations }
  end;

var
  frm_correcaoest: Tfrm_correcaoest;

implementation

uses un_dtstudio, un_pesq_prod, un_pesq_tipo;

{$R *.dfm}

procedure Tfrm_correcaoest.cancelarClick(Sender: TObject);
begin //Cancelando informa��es de digita��o na tabela
   If Application.Messagebox('Confirma Cancelamento de Corre��o no Estoque? ',
   'Confirma��o', mb_Iconquestion + Mb_OkCancel + Mb_DefButton1) = IdOk then
   else
   exit;
   id_reg.ReadOnly := true;
   id_cod.ReadOnly := true;
   nom_prod.ReadOnly := true;
   quant.ReadOnly := true;
   data.ReadOnly := true;
   grid_correcao.ReadOnly := true;
   nav_correcao.Enabled := true;
   novo.Enabled := true;
   cancelar.Enabled := false;
   sair.Enabled := true;
   grava_mais.Enabled := false;
   grava_menos.Enabled := false;
   SpeedButton1.Enabled := false;
   dt_studio.tb_correcaoest.cancel;
   id_cod.setfocus;
end;

procedure Tfrm_correcaoest.FormKeyPress(Sender: TObject; var Key: Char);
begin // Comandos para a tecla [ENTER]//
  If Key = #13 Then
    Selectnext(ActiveControl, true, true);
end;

procedure Tfrm_correcaoest.FormShow(Sender: TObject);
begin //Abrindo as tabelas
  SpeedButton1.Enabled := false;
  dt_studio.tb_correcaoest.open;
  dt_studio.tb_cadtiposerv.open;
  dt_studio.tb_situacao.open;
  query_prod.Open;
  cancelar.Enabled := false;
  grava_mais.Enabled := false;
  grava_menos.Enabled := false;
end;

procedure Tfrm_correcaoest.novoClick(Sender: TObject);
begin // Inserindo registros na tabela
   If Application.Messagebox('Confirma Inclus�o de Corre��o no Estoque? ',
   'Confirma��o', mb_Iconquestion + Mb_OkCancel + Mb_DefButton1) = IdOk then
   else
   exit;
   id_reg.ReadOnly := false;
   id_cod.ReadOnly := true;
   nom_prod.ReadOnly := true;
   quant.ReadOnly := false;
   data.ReadOnly := false;
   grid_correcao.ReadOnly := false;
   dbradio1.ReadOnly := false;
   nav_correcao.Enabled := false;
   novo.Enabled := false;
   cancelar.Enabled := true;
   grava_mais.Enabled := true;
   grava_menos.Enabled := true;
   sair.Enabled := false;
   SpeedButton1.Enabled := true;
   dt_studio.tb_correcaoest.Append;
   dt_studio.tb_correcaoestDATA.AsString := DateTimetoStr(now());
   id_cod.setfocus;
end;

procedure Tfrm_correcaoest.quantExit(Sender: TObject);
begin //Focando no radio
  dbradio1.setfocus;
end;

procedure Tfrm_correcaoest.sairClick(Sender: TObject);
begin //Fechando as tabelas
  dt_studio.tb_correcaoest.close;
  query_prod.close;
  close;
end;

procedure Tfrm_correcaoest.SpeedButton1Click(Sender: TObject);
begin // chamando a tela de pesquisa de produtos
   frm_pesq_tipo.cod := 1;
   quant.SetFocus;
   frm_pesq_tipo.showmodal;
end;

procedure Tfrm_correcaoest.grava_maisClick(Sender: TObject);
begin //Gravando informa��es na tabela para mais
   If Application.Messagebox
   ('Confirma Grava��o de Corre��o no Estoque para mais? ', 'Confirma��o',
   mb_Iconquestion + Mb_OkCancel + Mb_DefButton1) = IdOk then
   else
   exit;
   id_reg.ReadOnly := true;
   id_cod.ReadOnly := true;
   nom_prod.ReadOnly := true;
   quant.ReadOnly := true;
   data.ReadOnly := true;
   grid_correcao.ReadOnly := true;
   nav_correcao.Enabled := true;
   novo.Enabled := true;
   cancelar.Enabled := false;
   sair.Enabled := true;
   dt_studio.tb_correcaoest.post;
   id_cod.setfocus;
   dt_studio.tb_cadtiposerv.edit;
   dt_studio.tb_correcaoest.edit;
   if dt_studio.tb_cadtiposervTIPO.AsString = 'P' then //Gravando informa��es na tabela de produtos e servi�os
      begin
         dt_studio.tb_cadtiposervESTOQUE.Value := dt_studio.tb_cadtiposervESTOQUE.Value +
         dt_studio.tb_correcaoestQUANT_EST.Value;
         dt_studio.tb_cadtiposerv.post;
         dt_studio.tb_cadtiposerv.next;
      end;
end;

procedure Tfrm_correcaoest.grava_menosClick(Sender: TObject);
begin //Gravando informa��es na tabela para menos
   If Application.Messagebox
   ('Confirma Grava��o de Corre��o no Estoque para Menos? ', 'Confirma��o',
   mb_Iconquestion + Mb_OkCancel + Mb_DefButton1) = IdOk then
   else
   exit;
   id_reg.ReadOnly := true;
   id_cod.ReadOnly := true;
   nom_prod.ReadOnly := true;
   quant.ReadOnly := true;
   data.ReadOnly := true;
   grid_correcao.ReadOnly := true;
   nav_correcao.Enabled := true;
   novo.Enabled := true;
   cancelar.Enabled := false;
   sair.Enabled := true;
   dt_studio.tb_correcaoest.post;
   id_cod.setfocus;
   dt_studio.tb_cadtiposerv.edit;
   dt_studio.tb_correcaoest.edit;
   if dt_studio.tb_cadtiposervTIPO.AsString = 'P' then //Gravando informa��es na tabela de produtos e servi�os
      begin
         dt_studio.tb_cadtiposervESTOQUE.Value := dt_studio.tb_cadtiposervESTOQUE.Value -
         dt_studio.tb_correcaoestQUANT_EST.Value;
         dt_studio.tb_cadtiposerv.post;
         dt_studio.tb_cadtiposerv.next;
      end;
end;

procedure Tfrm_correcaoest.grid_correcaoDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin //Mudando a cor da fonte de acordo com a escolha do usu�rio
    if dt_studio.tb_correcaoestsituacao.AsString = '+' then
    begin
       grid_correcao.Canvas.Font.Color := clBlack;
       grid_correcao.Canvas.Brush.Color:= clWhite;
    end
    else
    begin
       grid_correcao.Canvas.Font.Color := clRed;
       grid_correcao.Canvas.Brush.Color:= clWhite;
    end;
    If odd(dt_studio.tb_correcaoest.RecNo) then //Deixando o dbgrid zebrado
    begin
       grid_correcao.Canvas.Font.Color:= clBlack;
       grid_correcao.Canvas.Brush.Color:= $00FFF5EC;
    end
    else
    begin
       grid_correcao.Canvas.Font.Color:= clBlack;
       grid_correcao.Canvas.Brush.Color:= clWhite;
    end;
    grid_correcao.Canvas.FillRect(Rect);
    grid_correcao.DefaultDrawDataCell(Rect, grid_correcao.columns[DataCol].Field, State);
end;

procedure Tfrm_correcaoest.id_codExit(Sender: TObject);
begin //Informando se o produto est� INATIVO
   if query_prodSITUACAO.AsString = 'I' then
   begin
      showmessage('Desculpe Servi�o ou Produto Inativo !!!');
      id_cod.SetFocus;
   end;
end;

end.
