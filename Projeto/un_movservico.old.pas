{***************************************************
 * Elaborado para: Studio Atraente                 *
 * Modulo     : Movimentação de Serviços           *
 * Analista   : João Douglas                       *
 * Elaboração : João Douglas                       *
 * Ult Alt.   : 18/07/2016                         *
 ***************************************************}

unit un_movservico;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.DBCtrls, Vcl.StdCtrls, sButton,
  Vcl.ExtCtrls, sPanel, Vcl.Buttons, Vcl.Mask, Vcl.Grids, Vcl.DBGrids,
  Vcl.ComCtrls, Data.DB, Data.Win.ADODB;

type
  Tfrm_movservico = class(TForm)
    sPanel1: TsPanel;
    novo: TsButton;
    editar: TsButton;
    excluir: TsButton;
    DBNavigator1: TDBNavigator;
    sair: TsButton;
    Panel1: TPanel;
    Label1: TLabel;
    id_comanda: TDBEdit;
    Label2: TLabel;
    data: TDBEdit;
    Label3: TLabel;
    nom_atend: TDBEdit;
    Label4: TLabel;
    id_cli: TDBEdit;
    Label5: TLabel;
    nom_cli: TDBEdit;
    SpeedButton1: TSpeedButton;
    Label6: TLabel;
    id_atend: TDBEdit;
    SpeedButton2: TSpeedButton;
    gravar: TsButton;
    cancelar: TsButton;
    GroupBox1: TGroupBox;
    Label10: TLabel;
    id_codserv: TDBEdit;
    Label11: TLabel;
    tipo: TDBEdit;
    Label12: TLabel;
    quant: TDBEdit;
    Label13: TLabel;
    unitario: TDBEdit;
    Label14: TLabel;
    tot_item: TDBEdit;
    DBGrid1: TDBGrid;
    SpeedButton4: TSpeedButton;
    StatusBar1: TStatusBar;
    Label9: TLabel;
    Label15: TLabel;
    vr_perc: TDBEdit;
    Label16: TLabel;
    vr_desconto: TDBEdit;
    Label17: TLabel;
    novo_item: TsButton;
    del_item: TsButton;
    cancela_item: TsButton;
    SpeedButton5: TSpeedButton;
    Label18: TLabel;
    id_comanda_2: TDBEdit;
    query_cli: TADOQuery;
    query_cliID_CLI: TIntegerField;
    query_cliNOM_CLI: TStringField;
    query_cliCPF_CLI: TStringField;
    query_cliEND_CLI: TStringField;
    query_cliBAI_CLI: TStringField;
    query_cliCEP_CLI: TStringField;
    query_cliCID_CLI: TStringField;
    query_cliTEL_CLI: TStringField;
    query_cliCEL_CLI: TStringField;
    query_cliDT_ANI: TStringField;
    query_cliDT_CAD: TDateTimeField;
    query_cliEMAIL_CLI: TStringField;
    query_cliNUM_CLI: TBCDField;
    query_cliEST_CLI: TStringField;
    query_cliNOM_EST: TStringField;
    query_cliCOD_EST: TIntegerField;
    query_cliCOMP_END: TStringField;
    query_cliSITUACAO: TStringField;
    query_serv: TADOQuery;
    query_atend: TADOQuery;
    query_atendID_FUNC: TIntegerField;
    query_atendNOM_FUNC: TStringField;
    query_atendEND_FUNC: TStringField;
    query_atendBAI_FUNC: TStringField;
    query_atendCEP_FUNC: TStringField;
    query_atendCID_FUNC: TStringField;
    query_atendAREA_FUNC: TStringField;
    query_atendCOMISSAO_FUNC: TBCDField;
    query_atendDT_CAD: TDateTimeField;
    query_atendSITUACAO: TStringField;
    query_atendNUM_FUNC: TBCDField;
    query_atendUF: TStringField;
    query_atendESTADO: TStringField;
    query_atendCOMP_FUNC: TStringField;
    query_atendTEL_FIXO: TStringField;
    query_atendCEL_FUNC: TStringField;
    query_atendCOD_EST: TIntegerField;
    query_servID_TIPO: TIntegerField;
    query_servNOME_TIPO: TStringField;
    query_servDT_CAD: TDateTimeField;
    query_servPERC_SERVICO: TBCDField;
    query_servVR_SERVICO: TBCDField;
    query_servSITUACAO: TStringField;
    DBNavigator2: TDBNavigator;
    Label19: TLabel;
    Label20: TLabel;
    DBMemo1: TDBMemo;
    Label7: TLabel;
    Label8: TLabel;
    SpeedButton3: TSpeedButton;
    procedure novoClick(Sender: TObject);
    procedure editarClick(Sender: TObject);
    procedure excluirClick(Sender: TObject);
    procedure gravarClick(Sender: TObject);
    procedure id_cliExit(Sender: TObject);
    procedure id_atendExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure sairClick(Sender: TObject);
    procedure cancelarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure id_codservExit(Sender: TObject);
    procedure quantExit(Sender: TObject);
    procedure novo_itemClick(Sender: TObject);
    procedure del_itemClick(Sender: TObject);
    procedure cancela_itemClick(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_movservico: Tfrm_movservico;

implementation

uses un_dtstudio, un_pesq_tipo;

{$R *.dfm}

procedure Tfrm_movservico.cancelarClick(Sender: TObject);
begin
   If Application.Messagebox('Confirma Gravação de Serviços? ',
   'Confirmação',mb_Iconquestion + Mb_OkCancel + Mb_DefButton1)= IdOk then
   else
   exit;
   id_comanda.ReadOnly:=true;
   data.ReadOnly:=true;
   id_cli.ReadOnly:=true;
   nom_cli.ReadOnly:=true;
   id_atend.ReadOnly:=true;
   nom_atend.ReadOnly:=true;
   novo.Enabled:=true;
   editar.Enabled:=true;
   excluir.Enabled:=true;
   cancelar.Enabled:=false;
   gravar.Enabled:=false;
   sair.Enabled:=true;
   dt_studio.tb_movservico.cancel;
   id_cli.setfocus;
end;

procedure Tfrm_movservico.editarClick(Sender: TObject);
begin
   If Application.Messagebox('Confirma Alteração de Serviços? ',
   'Confirmação',mb_Iconquestion + Mb_OkCancel + Mb_DefButton1)= IdOk then
   else
   exit;
   id_comanda.ReadOnly:=false;
   data.ReadOnly:=true;
   id_cli.ReadOnly:=false;
   nom_cli.ReadOnly:=true;
   id_atend.ReadOnly:=false;
   nom_atend.ReadOnly:=true;
   novo.Enabled:=false;
   editar.Enabled:=false;
   excluir.Enabled:=false;
   cancelar.Enabled:=true;
   gravar.Enabled:=true;
   sair.Enabled:=false;
   dt_studio.tb_movservico.edit;
   id_cli.setfocus;
end;

procedure Tfrm_movservico.excluirClick(Sender: TObject);
begin //Comandos para excluir registros na tabela//
  If dt_studio.tb_movservico.RecordCount <> 0 then
      If Application.MessageBox('Confirma Exclusão?','Confirmar',Mb_IconQuestion+MB_YesNo+MB_DefButton1)=IdYes Then
      begin
         dt_studio.tb_movservico.Delete;
         id_cli.SetFocus;
      end;
      If dt_studio.tb_movservico.RecordCount = 0 then
      showmessage('Nao Existe Registro para Excluir');
end;

procedure Tfrm_movservico.FormKeyPress(Sender: TObject; var Key: Char);
begin //Comandos para a tecla [ENTER]//
  If Key=#13 Then
     Selectnext(ActiveControl,True,True);
end;

procedure Tfrm_movservico.FormShow(Sender: TObject);
var parcial : currency;
    total : currency;
begin
   dt_studio.tb_movservico.open;
   dt_studio.tb_comanda.open;
   dt_studio.tb_cadcli.open;
   dt_studio.tb_cadatend.open;
   query_cli.open;
   query_serv.Open;
   query_atend.Open;
   // rotina para visualizar o total das colunas do grid
   parcial := 0;
   total := 0;
  try
    while not dt_studio.tb_comanda.eof do
     begin
        parcial := parcial + dt_studio.tb_comanda.FieldByName('TOT_ITEM').AsCurrency;
        total := parcial;
        dt_studio.tb_comanda.next;
     end;
     label7.caption:=FormatFloat('#,###,###,##0.00',parcial);
     label8.Caption:=FormatFloat('#,###,###,##0.00',total);
  finally
  end;
end;

procedure Tfrm_movservico.gravarClick(Sender: TObject);
begin
   If Application.Messagebox('Confirma Gravação de Serviços? ',
   'Confirmação',mb_Iconquestion + Mb_OkCancel + Mb_DefButton1)= IdOk then
   else
   exit;
   id_comanda.ReadOnly:=true;
   data.ReadOnly:=true;
   id_cli.ReadOnly:=true;
   nom_cli.ReadOnly:=true;
   id_atend.ReadOnly:=true;
   nom_atend.ReadOnly:=true;
   novo.Enabled:=true;
   editar.Enabled:=true;
   excluir.Enabled:=true;
   cancelar.Enabled:=false;
   gravar.Enabled:=false;
   sair.Enabled:=true;
   dt_studio.tb_movservico.post;
   id_comanda.setfocus;
end;

procedure Tfrm_movservico.id_atendExit(Sender: TObject);
begin
   if query_atend.Locate('ID_FUNC', id_atend.text, [loPartialKey]) and (Trim(query_atend.FieldByName('NOM_FUNC').AsString)<> '') then
    begin
       nom_atend.text := query_atend.FieldByName('NOM_FUNC').asString;
       id_comanda.SetFocus;
     end;
     if query_atendNOM_FUNC.asstring = 'I' then
     begin
        showmessage('Desculpe Atendente Inativo !!!');
        id_comanda.setfocus;
     end;
end;

procedure Tfrm_movservico.id_cliExit(Sender: TObject);
begin
//Comando para filtrar por codigo//
   if query_cli.Locate('ID_CLI', id_cli.text, [loPartialKey]) and (Trim(query_cli.FieldByName('NOM_CLI').AsString)<> '') then
    begin
       nom_cli.text := query_cli.FieldByName('NOM_CLI').asString;
       id_atend.SetFocus;
     end;
     if query_cliNOM_CLI.asstring = 'I' then
     begin
        showmessage('Desculpe Cliente Inativo !!!');
        id_cli.setfocus;
     end;
end;

procedure Tfrm_movservico.id_codservExit(Sender: TObject);
begin
   if query_serv.Locate('ID_TIPO', id_codserv.text, [loPartialKey]) and (Trim(query_serv.FieldByName('NOME_TIPO').AsString)<> '') then
    begin
       tipo.text := query_serv.FieldByName('NOME_TIPO').asString;
       quant.SetFocus;
     end;
     if query_servNOME_TIPO.asstring = 'I' then
     begin
        showmessage('Desculpe Serviço Inativo !!!');
        quant.setfocus;
     end;
end;

procedure Tfrm_movservico.novoClick(Sender: TObject);
var codigo:integer; //Variável do tipo integer

Function StrZero(Num : Real;Tam : integer) : String; //Função para colocar zeros a esquerda
var x,T : integer;
    N,D : String;

begin
  N := FloatToStr(Num);
  T := Pos('.',N);
  D := '';
  if T <> 0 then
  begin
     N := Copy(N,1,T-1);
     D := Copy(N,T,3)
  end;
  for x := 1 to Tam-length(N) do
     n:= '0'+n;
  result := N+D;
end;
begin //Inserindo registros na tabela
   If Application.Messagebox('Confirma Inclusão de Serviços? ',
   'Confirmação',mb_Iconquestion + Mb_OkCancel + Mb_DefButton1)= IdOk then
   else
   exit;
   id_comanda.ReadOnly:=false;
   data.ReadOnly:=true;
   id_cli.ReadOnly:=false;
   nom_cli.ReadOnly:=true;
   id_atend.ReadOnly:=false;
   nom_atend.ReadOnly:=true;
   novo.Enabled:=false;
   editar.Enabled:=false;
   excluir.Enabled:=false;
   cancelar.Enabled:=true;
   gravar.Enabled:=true;
   sair.Enabled:=false;
   if dt_studio.tb_movservico.RecordCount = 0 Then
       Codigo:=1
   else
      begin
         dt_studio.tb_movservico.Last;
         codigo:=dt_studio.tb_movservicoID_SERV.Asinteger+1;
      end;
      dt_studio.tb_movservico.Append;
      dt_studio.tb_movservicoID_SERV.AsString:=StrZero(Codigo,1);
      dt_studio.tb_movservicoDATA_SERV.Asstring :=DateTimetoStr(now());
      id_cli.setfocus;
end;

procedure Tfrm_movservico.sairClick(Sender: TObject);
begin
   dt_studio.tb_movservico.close;
   dt_studio.tb_comanda.close;
   dt_studio.tb_cadcli.close;
   dt_studio.tb_cadatend.close;
   query_cli.close;
   query_serv.close;
   query_atend.close;
   close;
end;

procedure Tfrm_movservico.SpeedButton3Click(Sender: TObject);
var parcial : currency;
    total : currency;
begin
   parcial := 0;
   total := 0;
  try
    while not dt_studio.tb_comanda.eof do
     begin
        parcial := dt_studio.tb_comanda.FieldByName('TOT_ITEM').AsCurrency;
        total := dt_studio.tb_comanda.FieldByName('TOT_ITEM').AsCurrency+dt_studio.tb_comanda.FieldByName('TOT_ITEM').AsCurrency;
        dt_studio.tb_comanda.next;
     end;
     label7.caption:=FormatFloat('#,###,###,##0.00',parcial);
     label8.Caption:=FormatFloat('#,###,###,##0.00',total);
  finally
  end;
end;

procedure Tfrm_movservico.SpeedButton4Click(Sender: TObject);
begin //chamando a tela de pesquisa de produtos
    frm_pesq_tipo.cod := 1;
    quant.setfocus;
    frm_pesq_tipo.showmodal;
end;

procedure Tfrm_movservico.novo_itemClick(Sender: TObject);
begin
   id_codserv.ReadOnly:=true;
   tipo.ReadOnly:=false;
   quant.ReadOnly:=false;
   unitario.ReadOnly:=false;
   tot_item.ReadOnly:=false;
   novo_item.Enabled:=true;
   del_item.Enabled:=true;
   cancela_item.Enabled:=true;
   dt_studio.tb_comanda.Append;
   id_codserv.setfocus;
end;

procedure Tfrm_movservico.del_itemClick(Sender: TObject);
begin //Comandos para excluir registros na tabela//
  If dt_studio.tb_comanda.RecordCount <> 0 then
      If Application.MessageBox('Confirma Exclusão?','Confirmar',Mb_IconQuestion+MB_YesNo+MB_DefButton1)=IdYes Then
      begin
         dt_studio.tb_comanda.Delete;
         id_codserv.SetFocus;
      end;
      If dt_studio.tb_comanda.RecordCount = 0 then
      showmessage('Nao Existe Registro para Excluir');
end;

procedure Tfrm_movservico.cancela_itemClick(Sender: TObject);
begin
   id_codserv.ReadOnly:=true;
   tipo.ReadOnly:=true;
   quant.ReadOnly:=true;
   unitario.ReadOnly:=true;
   tot_item.ReadOnly:=true;
   novo_item.Enabled:=true;
   del_item.Enabled:=true;
   cancelar.Enabled:=true;
   dt_studio.tb_comanda.cancel;
   id_codserv.setfocus;
end;

procedure Tfrm_movservico.quantExit(Sender: TObject);
begin
   dt_studio.tb_comanda.edit;
   dt_studio.tb_comandaTOT_ITEM.value:=dt_studio.tb_comandaVR_UNIT.value*dt_studio.tb_comandaQUANT.value;
   novo_item.SetFocus;
end;

end.
