{ ***************************************************
  * Elaborado para: Studio Atraente                 *
  * Modulo     : Movimenta��o de Servi�os           *
  * Analista   : Jo�o Douglas                       *
  * Elabora��o : Jo�o Douglas                       *
  * Ult Alt.   : 18/04/2018                         *
  *************************************************** }

unit un_orcamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.DBCtrls,
  Vcl.ExtCtrls, Vcl.Mask, Data.DB, IBX.IBCustomDataSet, IBX.IBQuery,
  Data.Win.ADODB, sButton, Vcl.ComCtrls, sPanel, frxClass, frxExportPDF,
  Vcl.Samples.Gauges, sLabel, Vcl.Menus, RxToolEdit;

type
  Tfrm_servico = class(TForm)
    Timer1: TTimer;
    query_cli: TADOQuery;
    query_comanda: TADOQuery;
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
    query_atendCOMP_FUNC: TStringField;
    query_atendTEL_FIXO: TStringField;
    query_atendCEL_FUNC: TStringField;
    query_atendCOD_EST: TIntegerField;
    Panel1: TPanel;
    query_comandaNOM_SERV: TStringField;
    query_comandaQUANT: TBCDField;
    query_comandaVR_UNIT: TFloatField;
    query_comandaTOT_ITEM: TFloatField;
    query_comandaDESCONTO: TFloatField;
    query_comandaPERC_DESC: TFloatField;
    query_comandaTOT_SERV: TFloatField;
    query_comandaID_CODSERV: TIntegerField;
    query_comandaPERC_COMISSAO: TFloatField;
    query_comandaVR_COMISSAO: TFloatField;
    query_comandaID_SERV: TIntegerField;
    query_comandaDATA_SERV: TDateTimeField;
    sPanel2: TsPanel;
    Label1: TLabel;
    id_serv: TDBEdit;
    Label2: TLabel;
    data: TDBEdit;
    Label25: TLabel;
    obs: TDBMemo;
    Label3: TLabel;
    id_cli: TDBEdit;
    nom_cli: TDBEdit;
    radio: TRadioGroup;
    Edit1: TEdit;
    sPanel3: TsPanel;
    Label6: TLabel;
    id_cod: TDBEdit;
    nom_serv: TDBEdit;
    Label7: TLabel;
    quant: TDBEdit;
    Label8: TLabel;
    vr_unit: TDBEdit;
    Label9: TLabel;
    vr_item: TDBEdit;
    Label10: TLabel;
    perc_comis: TDBEdit;
    Label15: TLabel;
    vr_comiss: TDBEdit;
    Label16: TLabel;
    perc: TDBEdit;
    Label5: TLabel;
    vr_desc: TDBEdit;
    Label11: TLabel;
    vr_total: TDBEdit;
    Label12: TLabel;
    DBGrid1: TDBGrid;
    Label19: TLabel;
    Panel5: TPanel;
    Label20: TLabel;
    Label23: TLabel;
    Panel4: TPanel;
    Label24: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    sButton12: TsButton;
    sButton13: TsButton;
    DBNavigator1: TDBNavigator;
    Label4: TLabel;
    combo: TDBLookupComboBox;
    situacao: TLabel;
    sit: TDBEdit;
    Panel2: TPanel;
    DBGrid2: TDBGrid;
    query_prod: TADOQuery;
    query_prodNOME_TIPO: TStringField;
    query_prodDT_CAD: TDateTimeField;
    query_prodPERC_SERVICO: TBCDField;
    query_prodVR_SERVICO: TBCDField;
    query_prodSITUACAO: TStringField;
    query_prodID_TIPO: TAutoIncField;
    query_prodCUSTO: TFloatField;
    query_prodTIPO: TStringField;
    Label13: TLabel;
    Panel6: TPanel;
    Label14: TLabel;
    query_prodESTOQUE: TBCDField;
    Edit2: TEdit;
    sButton3: TsButton;
    sLabel1: TsLabel;
    Label17: TLabel;
    niver: TDBEdit;
    query_cliNOM_CLI: TStringField;
    query_cliDT_ANI: TDateTimeField;
    sButton4: TsButton;
    Panel3: TPanel;
    es_novo: TsButton;
    es_editar: TsButton;
    es_excluir: TsButton;
    es_ok: TsButton;
    es_cancel: TsButton;
    Panel7: TPanel;
    sButton8: TsButton;
    sButton1: TsButton;
    sButton10: TsButton;
    sButton2: TsButton;
    sButton5: TsButton;
    data_pesq: TDateEdit;
    sButton6: TsButton;
    sButton11: TsButton;
    es_sair: TsButton;
    es_alt_fim: TsButton;
    sButton7: TsButton;
    sButton9: TsButton;
    Label18: TLabel;
    combo2: TDBLookupComboBox;
    Edit3: TEdit;
    Label26: TLabel;
    Label27: TLabel;
    Panel8: TPanel;
    Label28: TLabel;
    sPanel1: TsPanel;
    sLabel2: TsLabel;
    cont_vis: TDBEdit;
    procedure FormShow(Sender: TObject);
    procedure id_cliExit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure id_codExit(Sender: TObject);
    procedure quantExit(Sender: TObject);
    procedure obsEnter(Sender: TObject);
    procedure radioClick(Sender: TObject);
    procedure percExit(Sender: TObject);
    procedure nav_servClick(Sender: TObject; Button: TNavigateBtn);
    procedure vr_descExit(Sender: TObject);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure atend1Click(Sender: TObject);
    procedure sButton2Click(Sender: TObject);
    procedure sButton12Click(Sender: TObject);
    procedure sButton13Click(Sender: TObject);
    procedure sButton11Click(Sender: TObject);
    procedure es_novoClick(Sender: TObject);
    procedure es_editarClick(Sender: TObject);
    procedure es_excluirClick(Sender: TObject);
    procedure es_okClick(Sender: TObject);
    procedure es_cancelClick(Sender: TObject);
    procedure es_sairClick(Sender: TObject);
    procedure sButton8Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure comboClick(Sender: TObject);
    procedure sButton10Click(Sender: TObject);
    procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid2CellClick(Column: TColumn);
    procedure sButton1Click(Sender: TObject);
    procedure sButton3Click(Sender: TObject);
    procedure sButton4Click(Sender: TObject);
    procedure sButton5Click(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure sButton6Click(Sender: TObject);
    procedure vr_unitExit(Sender: TObject);
    procedure DBGrid2KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure es_alt_fimClick(Sender: TObject);
    procedure sButton7Click(Sender: TObject);
    procedure sButton9Click(Sender: TObject);
    procedure combo2Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_servico: Tfrm_servico;

implementation

uses un_dtstudio, un_pesq_tipo, un_pesq_cli, un_pesq_atend, un_relatorios,
  un_pesq_prod, un_rec_caixa, un_aniversario, DateUtils, un_impcom,
  un_aut_servico, un_aut_itens, un_comp_totais, Unit1, un_inserirdata,
  un_cadcli, un_msg;

{$R *.dfm}

procedure Tfrm_servico.id_cliExit(Sender: TObject);
begin
  // Comando para filtrar por codigo do cliente
  if query_cli.Locate('ID_CLI', id_cli.text, [loPartialKey]) and
    (Trim(query_cli.FieldByName('NOM_CLI').AsString) <> '') then
  begin
    nom_cli.text := query_cli.FieldByName('NOM_CLI').AsString;
    obs.SetFocus;
  end;
end;

procedure Tfrm_servico.id_codExit(Sender: TObject);
begin //Filtrando informa��es pelo c�digo do servi�o
   if query_comanda.Locate('ID_CODSERV', id_cod.text, [loPartialKey]) and
    (Trim(query_comanda.FieldByName('NOM_SERV').AsString) <> '') then
     begin
        nom_serv.text := query_comanda.FieldByName('NOM_SERV').AsString;
        vr_desc.SetFocus;
     end;
end;

procedure Tfrm_servico.obsEnter(Sender: TObject);
begin //Deixando os bot�es visiveis
  es_sair.Enabled := true;
  es_novo.Enabled := true;
  es_editar.Enabled := true;
  es_excluir.Enabled := true;
  es_cancel.Enabled := true;
end;

procedure Tfrm_servico.percExit(Sender: TObject);
begin //Informando o desconto no valor
   dt_studio.tb_comandas.Edit;
   dt_studio.tb_comandasDESCONTO.value := dt_studio.tb_comandasTOT_ITEM.value *
   (dt_studio.tb_comandasPERC_DESC.value) / 100;
   vr_desc.SetFocus;
end;

procedure Tfrm_servico.quantExit(Sender: TObject);
var Hoje, Mes: TDate;
begin  //Multiplicando o valor pela quantidade e informando que � pra baixar a quant. no estoque de acordo com a situa��o P
    if dt_studio.tb_comandasAUTORIZADO.AsString <> '' then
    begin
       vr_desc.ReadOnly := true;
       exit;
    end;
    dt_studio.tb_comandas.Edit;
    dt_studio.tb_cadtiposerv.Edit;
    try
       StrToDate(niver.Text);
       except on EConvertError do
          begin
             ShowMessage ('Data de Anivers�rio do Cliente est� em branco - VERIFIQUE!');
             exit;
          end;
    end;
    vr_desc.Readonly := false;
    dt_studio.tb_comandasTOT_ITEM.value := dt_studio.tb_comandasVR_UNIT.value *
    dt_studio.tb_comandasQUANT.value;
    if dt_studio.tb_cadtiposervTIPO.AsString = 'P' then
        begin
           dt_studio.tb_cadtiposervESTOQUE.Value := dt_studio.tb_cadtiposervESTOQUE.Value - dt_studio.tb_comandasQUANT.Value;
           dt_studio.tb_cadtiposerv.post;
           dt_studio.tb_cadtiposerv.Next;
           perc.SetFocus;
        end;
        Hoje := MonthOf(now);
        Mes := MonthOf(strtodate(niver.text));
        if (Mes = Hoje) and (dt_studio.tb_comandasDEPARTAMENTO.AsString = 'DEPILACAO') then
            begin
                dt_studio.tb_comandasPERC_DESC.Value := 10;
                perc.SetFocus;
            end;
        if dt_studio.tb_movservicoCONT_VISITAS.value > 10 then
          begin
             dt_studio.tb_comandasPERC_DESC.Value := 5;
             perc.SetFocus;
          end;
 end;

procedure Tfrm_servico.radioClick(Sender: TObject);
begin //Focando o edit
   Edit1.SetFocus;
end;

procedure Tfrm_servico.sButton10Click(Sender: TObject);
var
   totalgeral: Currency;
   subtotal: Currency;
   desconto: Currency;
begin
// excluindo dados na tabela de itens
   if dt_studio.tb_movservicoSITUACAO.Value = 'FINALIZADO' then
      begin
         showmessage('SERVI�O J� FINALIZADO !!');
         exit;
      end
   else
   If Application.MessageBox('Confirma Exclus�o?', 'Confirmar',
   Mb_IconQuestion + MB_YesNo + MB_DefButton1) = IdYes Then
   dt_studio.tb_comandas.delete;
//Totalizando valores
   dt_studio.tb_comandas.First;
   totalgeral := 0;
   desconto := 0;
   subtotal := 0;
   dt_studio.tb_comandas.DisableControls;
   try
     while not dt_studio.tb_comandas.eof do
     begin
        subtotal := subtotal + dt_studio.tb_comandas.FieldByName('TOT_ITEM').AsCurrency;
        totalgeral := totalgeral + dt_studio.tb_comandas.FieldByName('TOT_SERV').AsCurrency;
        desconto := desconto + dt_studio.tb_comandas.FieldByName('DESCONTO').AsCurrency;
        dt_studio.tb_comandas.next;
     end;
     dt_studio.tb_comandas.EnableControls;
     Label20.Caption := FormatFloat('#,###,###,##0.00', subtotal);
     Label22.Caption := FormatFloat('#,###,###,##0.00', totalgeral);
     Label24.Caption := FormatFloat('#,###,###,##0.00', desconto);
   finally
   end;
end;

procedure Tfrm_servico.sButton11Click(Sender: TObject);
begin//Impress�o da Comanda de Servi�o
   frm_relatorios.rel_comandas.loadfromfile('\\statraente\projeto_studio atraente\relatorios\rel_comanda_cli.fr3');
   frm_relatorios.rel_comandas.ShowReport();
   frm_impcom.close;
//   frm_impcom.showmodal;
end;

procedure Tfrm_servico.sButton12Click(Sender: TObject);
begin // chamando a tela de pesquisa de produtos
   frm_pesq_tipo.cod := 1;
   frm_pesq_tipo.ShowModal;
   quant.SetFocus;
end;

procedure Tfrm_servico.sButton13Click(Sender: TObject);
var
   Sql: string; // Pesquisando registros na tabela
   totalgeral: Currency;
   subtotal: Currency;
   desconto: Currency;
   Hoje, Mes: TDate; // A variavel Hoje salva a data atual e a Mes salva a data que consta no seu DBEdit.
begin
   dt_studio.tb_movservico.close;
   dt_studio.tb_movservico.Sql.Clear;
   dt_studio.tb_movservico.Sql.Add('select * from CAB_SERV');
   if (radio.ItemIndex = 0) then
   Sql := 'where ID_SERV like ' + QuotedStr('%' + Edit1.text + '%')
   else if (radio.ItemIndex = 1) then
   Sql := 'where NOM_CLI like ' + QuotedStr('%' + Edit1.text + '%');
   dt_studio.tb_comandas.EnableControls;
   dt_studio.tb_movservico.Sql.Add(Sql);
   dt_studio.tb_movservico.Sql.Add('order by ID_SERV');
   dt_studio.tb_movservico.open;
//Extraindo o m�s da data de nascimento para gerar desconto no m�s do anivers�rio
   Hoje := MonthOf(now);
   Mes := MonthOf(strtodate(niver.text));
   if Mes = Hoje then
      begin
         frm_servico.label28.Visible := true;
         frm_servico.label28.caption := 'Cliente Aniversariante no M�S tem Desconto !';
      end
      else
      frm_servico.label28.Visible := false;
      edit1.SetFocus;
//Totalizando os valores
      totalgeral := 0;
      desconto := 0;
      subtotal := 0;
      dt_studio.tb_comandas.DisableControls;
   try
      while not dt_studio.tb_comandas.eof do
      begin
         subtotal := subtotal + dt_studio.tb_comandas.FieldByName('TOT_ITEM').AsCurrency;
         totalgeral := totalgeral + dt_studio.tb_comandas.FieldByName('TOT_SERV').AsCurrency;
         desconto := desconto + dt_studio.tb_comandas.FieldByName('DESCONTO').AsCurrency;
         dt_studio.tb_comandas.next;
      end;
      dt_studio.tb_comandas.EnableControls;
      Label20.Caption := FormatFloat('#,###,###,##0.00', subtotal);
      Label22.Caption := FormatFloat('#,###,###,##0.00', totalgeral);
      Label24.Caption := FormatFloat('#,###,###,##0.00', desconto);
   finally
   end;
end;

procedure Tfrm_servico.sButton1Click(Sender: TObject);
begin
// Alterando dados na tabela de itens
   if dt_studio.tb_movservicoSITUACAO.Value = 'FINALIZADO' then
      begin
         showmessage('SERVI�O J� FINALIZADO USE OUTRA OP��O!');
         exit;
      end
   else
   dt_studio.tb_comandas.edit;
   combo2.ReadOnly := false;
   combo.ReadOnly := false;
   combo.visible := true;
   combo2.visible := true;
   sbutton8.Enabled := true;
   sbutton1.Enabled := false;
   sbutton7.Enabled := false;
   sbutton5.Enabled := true;
   sbutton10.Enabled := false;
   sbutton11.Enabled := false;
   es_sair.Enabled := false;
   sbutton9.Enabled := false;
   sbutton2.Enabled := false;
   vr_unit.ReadOnly := false;
   vr_item.ReadOnly := true;
   perc_comis.ReadOnly := false;
   perc.ReadOnly := false;
   vr_desc.ReadOnly := false;
   vr_comiss.ReadOnly := true;
   dbgrid1.ReadOnly := false;
   combo.SetFocus;
end;

procedure Tfrm_servico.es_sairClick(Sender: TObject);
begin
  // fechando a tabela de dados
    dt_studio.tb_comandas.close;
    dt_studio.tb_departamento.close;
    dt_studio.tb_movservico.close;
    query_comanda.close;
    query_cli.close;
    query_prod.Close;
    query_atend.close;
    close;
end;

procedure Tfrm_servico.sButton2Click(Sender: TObject);
begin //Chamando a tela de recebimentos para finaliza��o da comanda
   frm_rec_caixa.show;
end;

procedure Tfrm_servico.sButton3Click(Sender: TObject);
var
   Sql: string; // Pesquisando registros na tabela
   totalgeral: Currency;
   subtotal: Currency;
   desconto: Currency;
   quantlinhas : integer;
begin
   dt_studio.tb_movservico.close;
   dt_studio.tb_movservico.Sql.Clear;
   dt_studio.tb_movservico.Sql.Add('select * from CAB_SERV');
   Sql := 'where SITUACAO like ' + QuotedStr('%' + Edit2.text + '%');
   dt_studio.tb_movservico.Sql.Add(Sql);
   dt_studio.tb_movservico.Sql.Add('order by ID_SERV');
   dt_studio.tb_movservico.open;
//Totalizando valores
   totalgeral := 0;
   desconto := 0;
   subtotal := 0;
   quantlinhas := 0;
   dt_studio.tb_comandas.DisableControls;
   try
     while not dt_studio.tb_comandas.eof do
     begin
        subtotal := subtotal + dt_studio.tb_comandas.FieldByName('TOT_ITEM').AsCurrency;
        totalgeral := totalgeral + dt_studio.tb_comandas.FieldByName('TOT_SERV').AsCurrency;
        desconto := desconto + dt_studio.tb_comandas.FieldByName('DESCONTO').AsCurrency;
        quantlinhas := dbgrid1.DataSource.DataSet.RecordCount;
        dt_studio.tb_comandas.next;
     end;
     dt_studio.tb_comandas.EnableControls;
     Label20.Caption := FormatFloat('#,###,###,##0.00', subtotal);
     Label22.Caption := FormatFloat('#,###,###,##0.00', totalgeral);
     Label24.Caption := FormatFloat('#,###,###,##0.00', desconto);
     Label14.Caption := FormatFloat('#,0', quantlinhas);
   finally
   end;
end;

procedure Tfrm_servico.sButton4Click(Sender: TObject);
begin
  // chamando a tela de pesquisa de clientes
  frm_pesq_cli.cod := 1;
  obs.SetFocus;
  frm_pesq_cli.showmodal;
end;

procedure Tfrm_servico.sButton5Click(Sender: TObject);
begin
// Alterando dados na tabela de itens
   dt_studio.tb_comandas.cancel;
   sbutton8.Enabled := true;
   sbutton1.Enabled := true;
   sbutton2.Enabled := true;
   sbutton7.Enabled := true;
   sbutton5.Enabled := false;
   sbutton10.Enabled := true;
   sbutton11.Enabled := true;
   es_sair.Enabled := true;
   sbutton9.Enabled := true;
   id_cod.ReadOnly := true;
   nom_serv.ReadOnly := true;
   quant.ReadOnly := true;
   combo.ReadOnly := true;
   combo2.ReadOnly := true;
   vr_unit.ReadOnly := true;
   vr_item.ReadOnly := true;
   perc_comis.ReadOnly := true;
   perc.ReadOnly := true;
   vr_desc.ReadOnly := true;
   vr_comiss.ReadOnly := true;
   dbgrid1.ReadOnly := true;
end;

procedure Tfrm_servico.sButton6Click(Sender: TObject);
var
   totalgeral: Currency;
   subtotal: Currency;
   desconto: Currency;
   quantlinhas : integer;
begin//Filtrando por Data
    dt_studio.tb_movservico.close;
    dt_studio.tb_movservico.Filtered := False;
    dt_studio.tb_movservico.Open;
    dt_studio.tb_movservico.Filter := 'DATA_SERV = ' + QuotedStr(data_pesq.Text);
    dt_studio.tb_movservico.Filtered := True;
    dt_studio.tb_movservico.locate('DATA_SERV',data_pesq.text,[loCaseInsensitive, loPartialKey]);
//Totalizando valores
    totalgeral := 0;
    desconto := 0;
    subtotal := 0;
    quantlinhas := 0;
    dt_studio.tb_comandas.DisableControls;
    try
      while not dt_studio.tb_comandas.eof do
      begin
         subtotal := subtotal + dt_studio.tb_comandas.FieldByName('TOT_ITEM').AsCurrency;
         totalgeral := totalgeral + dt_studio.tb_comandas.FieldByName('TOT_SERV').AsCurrency;
         desconto := desconto + dt_studio.tb_comandas.FieldByName('DESCONTO').AsCurrency;
         quantlinhas := dbgrid1.DataSource.DataSet.RecordCount;
         dt_studio.tb_comandas.next;
      end;
      dt_studio.tb_comandas.EnableControls;
      Label20.Caption := FormatFloat('#,###,###,##0.00', subtotal);
      Label22.Caption := FormatFloat('#,###,###,##0.00', totalgeral);
      Label24.Caption := FormatFloat('#,###,###,##0.00', desconto);
      Edit3.Text := FormatFloat('#,###,###,##0.00', totalgeral);
      Label14.Caption := FormatFloat('#,0', quantlinhas);
    finally
    end;
end;

procedure Tfrm_servico.sButton7Click(Sender: TObject);
begin
   if dt_studio.tb_movservicoSITUACAO.Value = 'ABERTO' then
      begin
         showmessage('SERVI�O EST� ABERTO USE OUTRA OP��O!!');
         exit;
      end
   else
   if dt_studio.tb_movservicoSITUACAO.Value = 'FINALIZADO' then
      begin
          If Application.MessageBox('Confirma Altera��o? ', 'Confirma��o',
          Mb_IconQuestion + Mb_OkCancel + MB_DefButton1) = IdOk then
          else
          exit;
          dt_studio.tb_comandas.edit;
          sbutton8.Enabled := false;
          sbutton1.Enabled := false;
          sbutton7.Enabled := false;
          sbutton5.Enabled := true;
          frm_pesq_tipo.DBGrid1.ReadOnly := false;
          sbutton10.Enabled := false;
          sbutton11.Enabled := false;
          es_sair.Enabled := false;
          sbutton9.Enabled := false;
          sbutton2.Enabled := false;
          combo.ReadOnly := true;
          combo2.ReadOnly := true;
          perc.ReadOnly := true;
          vr_desc.ReadOnly := true;
          id_cod.ReadOnly := true;
          combo.visible := true;
          combo2.visible := true;
          combo.SetFocus;
          frm_aut_itens.ShowModal;
      end;
end;

procedure Tfrm_servico.es_alt_fimClick(Sender: TObject);
begin
   if dt_studio.tb_movservicoSITUACAO.Value = 'ABERTO' then
      begin
         showmessage('SERVI�O EST� ABERTO USE OUTRA OP��O!!');
         exit;
      end
   else
   If Application.MessageBox('Confirma Altera��o de Servi�os FINALIZADOS? ', 'Confirma��o',
   Mb_IconQuestion + Mb_OkCancel + MB_DefButton1) = IdOk then
   else
   exit;
   id_cli.ReadOnly := true;
   obs.ReadOnly := true;
   Dbgrid2.ReadOnly := false;
   es_alt_fim.Enabled := false;
   es_novo.Enabled := false;
   es_editar.Enabled := false;
   es_excluir.Enabled := false;
   es_ok.Enabled := true;
   es_cancel.Enabled := true;
   frm_aut_servico.ShowModal;
end;

procedure Tfrm_servico.sButton8Click(Sender: TObject);
begin//Verificando se o Caixa j� foi Aberto
   sbutton8.Enabled := false;
   if dt_studio.tb_movcaixaDT_CAIXA.asstring = '' then
     begin
        showmessage('ATEN��O! ABERTURA DO CAIXA AINDA N�O FOI REALIZADA...!');
        exit;
     end
   else
//inserindo dados na tabela de itens
   if dt_studio.tb_movservicoSITUACAO.Value = 'FINALIZADO' then
      begin
         showmessage('SERVI�O J� FINALIZADO !!');
         exit;
      end
   else
   dt_studio.tb_comandas.edit;
   dt_studio.tb_comandas.append;
   dt_studio.tb_comandasDATA_SERV.asstring := dt_studio.tb_movservicoDATA_SERV.asstring;
   dt_studio.tb_comandasID_CODSERV.asstring := '';
   dt_studio.tb_comandasNOM_SERV.asstring := '';
   dt_studio.tb_comandasATENDENTE.asstring := '';
   dt_studio.tb_comandasQUANT.asstring := '1';
   dt_studio.tb_comandasVR_UNIT.asstring := '';
   dt_studio.tb_comandasTOT_ITEM.asstring := '';
   dt_studio.tb_comandasPERC_DESC.asstring := '';
   dt_studio.tb_comandasPERC_COMISSAO.asstring := '';
   dt_studio.tb_comandasVR_COMISSAO.asstring := '';
   dt_studio.tb_comandasPERC_DESC.asstring := '';
   dt_studio.tb_comandasDESCONTO.asstring := '';
   dt_studio.tb_comandasTOT_SERV.asstring := '';
   id_cod.ReadOnly := true;
   nom_serv.ReadOnly := true;
   quant.ReadOnly := false;
   combo.ReadOnly := false;
   combo2.ReadOnly := false;
   vr_unit.ReadOnly := false;
   vr_item.ReadOnly := true;
   perc_comis.ReadOnly := false;
   perc.ReadOnly := false;
   sbutton5.Enabled := true;
   vr_desc.ReadOnly := false;
   vr_comiss.ReadOnly := true;
   dbgrid1.ReadOnly := false;
   frm_pesq_tipo.cod := 1;
   combo.setfocus;
end;

procedure Tfrm_servico.sButton9Click(Sender: TObject);
begin
   WinExec('Calc.Exe',SW_Show);
end;

procedure Tfrm_servico.es_novoClick(Sender: TObject);
begin// inluindo registros na base de dados//
   if dt_studio.tb_movcaixaDT_CAIXA.asstring = '' then
     begin
        showmessage('ATEN��O! ABERTURA DO CAIXA AINDA N�O FOI REALIZADA...!');
        exit;
     end
   else
   if dt_studio.tb_movcaixaDT_CAIXA.asstring <> DatetoStr(Date) then
     begin
        showmessage('ATEN��O! O CAIXA DO DIA ANTERIOR AINDA N�O FOI FECHADO...!');
        exit;
     end
   else
   If Application.MessageBox('Confirma Inclus�o de Servi�os? ', 'Confirma��o',
   Mb_IconQuestion + Mb_OkCancel + MB_DefButton1) = IdOk then
   else
   exit;
   id_serv.Readonly := true;
   Data.Readonly := true;
   id_cli.Readonly := false;
   nom_cli.Readonly := true;
   combo.ReadOnly := false;
   Dbgrid2.ReadOnly := false;
   niver.ReadOnly := false;
   obs.Readonly := false;
   sit.ReadOnly := false;
   id_cod.ReadOnly := true;
   nom_serv.ReadOnly := true;
   quant.ReadOnly := false;
   vr_unit.ReadOnly := false;
   vr_item.ReadOnly := false;
   perc_comis.ReadOnly := false;
   vr_comiss.ReadOnly := false;
   perc.ReadOnly := false;
   vr_desc.ReadOnly := false;
   vr_total.ReadOnly := false;
   es_novo.Enabled := false;
   es_editar.Enabled := false;
   es_alt_fim.Enabled := false;
   es_excluir.Enabled := false;
   es_cancel.Enabled := true;
   sbutton8.Enabled := false;
   es_ok.Enabled := true;
   es_sair.Enabled := false;
   dt_studio.tb_movservico.Append;
   dt_studio.tb_movservicoDATA_SERV.asstring := DatetoStr(Date);
   dt_studio.tb_movservicoSITUACAO.AsString := 'ABERTO';
   if dt_studio.tb_movservicoSITUACAO.AsString = 'ABERTO' then
   sit.Font.Color:=clBlack;
   id_cli.SetFocus;
   sbutton4.Enabled := true;
   frm_servico.label28.Visible := false;
   frm_pesq_cli.cod := 1;
   obs.SetFocus;
   frm_pesq_cli.showmodal;
end;

procedure Tfrm_servico.es_editarClick(Sender: TObject);
begin
   if dt_studio.tb_movservicoSITUACAO.Value = 'FINALIZADO' then
      begin
         showmessage('SERVI�O J� FINALIZADO USE OUTRA OP��O!!');
         exit;
      end
   else
   If Application.MessageBox('Confirma Altera��o de Servi�os ABERTOS? ', 'Confirma��o',
   Mb_IconQuestion + Mb_OkCancel + MB_DefButton1) = IdOk then
   else
   exit;
   dt_studio.tb_movservico.edit;
   id_cli.ReadOnly := false;
   Dbgrid2.ReadOnly := false;
   obs.ReadOnly := false;
   sbutton4.Enabled := true;
   es_novo.Enabled := false;
   es_alt_fim.Enabled := false;
   es_editar.Enabled := false;
   es_excluir.Enabled := false;
   es_ok.Enabled := true;
   es_cancel.Enabled := true;
   sbutton4.SetFocus;
end;

procedure Tfrm_servico.es_excluirClick(Sender: TObject);
begin
// excluindo registros na base de dados
// excluindo dados na tabela de itens
   if dt_studio.tb_movservicoSITUACAO.Value = 'FINALIZADO' then
      begin
         showmessage('SERVI�O J� FINALIZADO !!');
         exit;
      end
   else
   if dt_studio.tb_comandasATENDENTE.AsString <> '' then
    begin
       Showmessage('EXISTEM ITENS QUE FAZEM REFER�NCIA A ESSE SERVI�O, EXCLUA PRIMEIRO OS ITENS!');
       id_serv.SetFocus;
    end
    else
    If dt_studio.tb_movservico.RecordCount <> 0 then
    If Application.MessageBox('Confirma Exclus�o?', 'Confirmar',
    Mb_IconQuestion + MB_YesNo + MB_DefButton1) = IdYes Then
    begin
        dt_studio.tb_movservico.Delete;
        sbutton4.Enabled := false;
        id_serv.SetFocus;
       end;
end;

procedure Tfrm_servico.es_okClick(Sender: TObject);
var Hoje, Mes: TDate;// A variavel Hoje salva a data atual e a Mes salva a data que consta no seu DBEdit.
cont_vis: integer;
MSG: String;
begin
// Grava registros na digita��o na base de dados//
   If Application.MessageBox('Confirma Grava��o de Servi�os? ',
   'Confirma��o', Mb_IconQuestion + Mb_OkCancel + MB_DefButton1) = IdOk then
   else
   exit;
   sbutton8.Enabled := true;
   sbutton1.Enabled := true;
   sbutton5.Enabled := true;
   sbutton10.Enabled := true;
   id_cod.ReadOnly := true;
   nom_serv.ReadOnly := true;
   Dbgrid2.ReadOnly := true;
   quant.ReadOnly := true;
   obs.ReadOnly := true;
   niver.ReadOnly := true;
   combo.ReadOnly := true;
   sit.ReadOnly := true;
   vr_unit.ReadOnly := true;
   vr_item.ReadOnly := true;
   perc_comis.ReadOnly := true;
   vr_comiss.ReadOnly := true;
   perc.ReadOnly := true;
   vr_desc.ReadOnly := true;
   vr_total.ReadOnly := true;
   es_novo.Enabled := true;
   es_editar.Enabled := true;
   es_alt_fim.Enabled := true;
   es_excluir.Enabled := true;
   es_cancel.Enabled := false;
   es_ok.Enabled := false;
   es_sair.Enabled := true;
   dt_studio.conexao.BeginTrans;
   dt_studio.tb_movservico.post;
   dt_studio.conexao.CommitTrans;
   sbutton8.SetFocus;
   sbutton4.Enabled := false;
   sbutton8.Enabled := true;
   sbutton1.Enabled := true;
   sbutton10.Enabled := true;
   sbutton2.Enabled := true;
   try
      StrToDate(niver.Text);
      except on EConvertError do
      begin
         ShowMessage ('Data de Anivers�rio do Cliente est� em branco - VERIFIQUE!');
         exit;
      end;
   end;
   Hoje := MonthOf(now);
   Mes := MonthOf(strtodate(niver.text));
   if Mes = Hoje then
     begin
        frm_servico.label28.Visible := true;
        frm_servico.label28.caption := 'CLIENTE ANIVERSARIANTE NO M�S TEM DESCONTO !';
     end
   else
     if Mes <> hoje then
     begin
        frm_servico.label28.Visible := false;
        sbutton8.setfocus;
     end;
     cont_vis := 0;
     if (dt_studio.tb_movservicoNOM_CLI.asstring = dt_studio.tb_cadcliNOM_CLI.asstring)
         and (dt_studio.tb_cadcliCONT_VISITAS.value >=10) then
         begin
            frm_msg.showmodal;
            {MSG := 'ATEN��O!'+#13+'CLIENTE J� EST� COM 10 OU MAIS VISITAS'+#13+'HAVER� UM DESCONTO NESSE SERVI�O DE 5%!'
                             +#13+'ESTE CICLO DE 10 VISITAS VAI ZERAR PARA O INICIO DE UM NOVO CICLO DE VISITAS';
            ShowMessage(MSG);}
            dt_studio.tb_cadcli.edit;
            dt_studio.tb_cadcliCONT_VISITAS.Value := 0;
            dt_studio.tb_cadcli.post;
            exit;
         end
     else
     if dt_studio.tb_movservicoNOM_CLI.asstring = dt_studio.tb_cadcliNOM_CLI.asstring then
        begin
           dt_studio.tb_cadcli.Edit;
           cont_vis := cont_vis + dt_studio.tb_cadcliCONT_VISITAS.Value + 1;
           frm_cadcli.cont_vis.text := FormatFloat('0', cont_vis);
           dt_studio.tb_cadcli.post;
        end;
end;

procedure Tfrm_servico.es_cancelClick(Sender: TObject);
begin
   // cancela registros na digita��o na base de dados//
   If Application.MessageBox('Confirma Cancelamento na Digita��o de Servi�os? ',
   'Confirma��o', Mb_IconQuestion + Mb_OkCancel + MB_DefButton1) = IdOk then
   else
   exit;
   id_serv.Readonly := true;
   Data.Readonly := true;
   id_cli.Readonly := true;
   nom_cli.Readonly := true;
   niver.ReadOnly := true;
   sit.ReadOnly := true;
   Dbgrid2.ReadOnly := true;
   combo.ReadOnly := true;
   obs.Readonly := true;
   id_cod.ReadOnly := true;
   nom_serv.ReadOnly := true;
   quant.ReadOnly := true;
   vr_unit.ReadOnly := true;
   vr_item.ReadOnly := true;
   perc_comis.ReadOnly := true;
   vr_comiss.ReadOnly := true;
   perc.ReadOnly := true;
   vr_desc.ReadOnly := true;
   vr_total.ReadOnly := true;
   es_novo.Enabled := true;
   es_editar.Enabled := true;
   es_alt_fim.Enabled := true;
   es_excluir.Enabled := true;
   es_cancel.Enabled := false;
   es_ok.Enabled := false;
   es_sair.Enabled := true;
   sbutton8.Enabled := true;
   dt_studio.tb_movservico.cancel;
   id_serv.SetFocus;
   sbutton4.Enabled := false;
   sbutton8.Enabled := true;
   sbutton1.Enabled := true;
   sbutton10.Enabled := true;
   sbutton2.Enabled := true;
end;

procedure Tfrm_servico.FormKeyPress(Sender: TObject; var Key: Char);
begin
  // usando a tecla [ENTER] para entrar com os dados
  If Key = #13 Then
    Selectnext(ActiveControl, true, true);
end;

procedure Tfrm_servico.FormShow(Sender: TObject);
var
   Sql: string; // Pesquisando registros na tabela
   totalgeral: Currency;
   subtotal: Currency;
   desconto: Currency;
   quantlinhas : integer;
begin
   data_pesq.text := DateToSTr(Date);
   dt_studio.tb_movservico.close;
   dt_studio.tb_movservico.Filtered := False;
   dt_studio.tb_movservico.Open;
   dt_studio.tb_movservico.Filter := 'DATA_SERV = ' + QuotedStr(data_pesq.Text);
   dt_studio.tb_movservico.Filtered := True;
   dt_studio.tb_movservico.locate('DATA_SERV',data_pesq.text,[loCaseInsensitive, loPartialKey]);
   es_novo.SetFocus;
   combo.ReadOnly := true;
   combo2.ReadOnly := true;
   sbutton4.Enabled := false;
   sbutton12.Enabled := false;
   sbutton2.Enabled := true;
   frm_servico.label28.Visible := false;
   es_novo.Enabled := true;
   es_editar.Enabled := true;
   es_excluir.Enabled := true;
   es_cancel.Enabled := false;
   es_ok.Enabled := false;
   es_alt_fim.Enabled := true;
   dt_studio.tb_formapag.open;
   dt_studio.tb_comandas.open;
   dt_studio.tb_movservico.open;
   dt_studio.tb_comp_totais.open;
   dt_studio.tb_movcaixa.open;
   dt_studio.tb_departamento.open;
   dt_studio.tb_cadatend.open;
   dt_studio.tb_cadtiposerv.open;
   dt_studio.tb_cadcli.open;
   query_comanda.open;
   query_prod.open;
   query_cli.open;
   query_atend.open;
//Totalizando valores
   totalgeral := 0;
   desconto := 0;
   subtotal := 0;
   quantlinhas := 0;
   dt_studio.tb_comandas.DisableControls;
   try
     while not dt_studio.tb_comandas.eof do
     begin
        subtotal := subtotal + dt_studio.tb_comandas.FieldByName('TOT_ITEM').AsCurrency;
        totalgeral := totalgeral + dt_studio.tb_comandas.FieldByName('TOT_SERV').AsCurrency;
        desconto := desconto + dt_studio.tb_comandas.FieldByName('DESCONTO').AsCurrency;
        quantlinhas := dbgrid1.DataSource.DataSet.RecordCount;
        dt_studio.tb_comandas.next;
     end;
     dt_studio.tb_comandas.EnableControls;
     Label20.Caption := FormatFloat('#,###,###,##0.00', subtotal);
     Label22.Caption := FormatFloat('#,###,###,##0.00', totalgeral);
     Label24.Caption := FormatFloat('#,###,###,##0.00', desconto);
     Edit3.Text := FormatFloat('#,###,###,##0.00', totalgeral);
     Label14.Caption := FormatFloat('#,0', quantlinhas);
   finally
   end;
end;

procedure Tfrm_servico.atend1Click(Sender: TObject);
begin //Focando no campo c�digo
   id_cod.SetFocus;
end;

procedure Tfrm_servico.comboClick(Sender: TObject);
begin
   combo2.SetFocus;
end;

procedure Tfrm_servico.DBGrid1CellClick(Column: TColumn);
begin
   if dt_studio.tb_comandasDATA_SERV.asstring <> '' then
     begin
       dbgrid1.SetFocus;
     end
   else
   dt_studio.tb_comandas.edit;
   if dt_studio.tb_comandasDATA_SERV.asstring = '' then
   begin
       dt_studio.tb_comandasDATA_SERV.asstring := dt_studio.tb_movservicoDATA_SERV.asstring;
       dt_studio.tb_comandas.post;
   end;
end;

procedure Tfrm_servico.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
   if (Column.Field.FieldName = 'ID_SERV') then
       DBGrid1.Canvas.Brush.Color:= $00E8E8D0;
   if (Column.Field.FieldName = 'TOT_SERV') then
       begin
          DBGrid1.Canvas.Font.Style:= [fsbold];
          DBGrid1.Canvas.Brush.Color:= $00E8E8D0;
       end;
       if (Column.Field.FieldName = 'ATENDENTE') then
           DBGrid1.Canvas.Brush.Color:= $00E8E8D0;

           DBGrid1.Canvas.FillRect(Rect);
           DBGrid1.DefaultDrawDataCell(Rect, DBGrid1.columns[datacol].field, State);
end;

procedure Tfrm_servico.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
   totalgeral: Currency;
   subtotal: Currency;
   desconto: Currency;
begin
   If dt_studio.tb_comandas.RecordCount <> 0 then
   if (Key = vk_delete) then
   If Application.MessageBox('DESEJA REALMENTE EXCLUIR ESSE ITEM ?','Confirmar',Mb_IconQuestion+MB_YesNo+MB_DefButton2)=IdYes Then
   dt_studio.tb_comandas.Delete;
//Totalizando valores
   totalgeral := 0;
   desconto := 0;
   subtotal := 0;
   dt_studio.tb_comandas.First;
   dt_studio.tb_comandas.DisableControls;
   try
     while not dt_studio.tb_comandas.eof do
     begin
        subtotal := subtotal + dt_studio.tb_comandas.FieldByName('TOT_ITEM').AsCurrency;
        totalgeral := totalgeral + dt_studio.tb_comandas.FieldByName('TOT_SERV').AsCurrency;
        desconto := desconto + dt_studio.tb_comandas.FieldByName('DESCONTO').AsCurrency;
        dt_studio.tb_comandas.next;
     end;
     dt_studio.tb_comandas.EnableControls;
     Label20.Caption := FormatFloat('#,###,###,##0.00', subtotal);
     Label22.Caption := FormatFloat('#,###,###,##0.00', totalgeral);
     Label24.Caption := FormatFloat('#,###,###,##0.00', desconto);
     Edit3.Text := FormatFloat('#,###,###,##0.00', totalgeral);
   finally
   end;
end;

procedure Tfrm_servico.DBGrid2CellClick(Column: TColumn);
var
  totalgeral: Currency;
  subtotal: Currency;
  desconto: Currency;
  quantlinhas : integer;
  Hoje, Mes: TDate; // A variavel Hoje salva a data atual e a Mes salva a data que consta no seu DBEdit.
begin
//Extraindo o m�s da data de nascimento para gerar desconto no m�s do anivers�rio
  if dt_studio.tb_movservicoSITUACAO.AsString = 'ABERTO' then
  sit.Font.Color:=clBlack
  else
  if dt_studio.tb_movservicoSITUACAO.AsString = 'FINALIZADO' then
  sit.Font.Color:=clRed;
  try
     StrToDate(niver.Text);
     except on EConvertError do
        begin
           ShowMessage ('Data de Anivers�rio do Cliente est� em branco - VERIFIQUE!');
           exit;
        end;
  end;
  Hoje := MonthOf(now);
  Mes := MonthOf(strtodate(niver.text));
  if Mes = Hoje then
     begin
        frm_servico.label28.Visible := true;
        frm_servico.label28.caption := 'Cliente Aniversariante no M�S tem Desconto !';
     end
     else
     frm_servico.label28.Visible := false;
     ShowScrollBar(DBGrid2.Handle,SB_HORZ,true); //Mostrar a barra Horizontal
//Informando valores na tela
     totalgeral := 0;
     desconto := 0;
     subtotal := 0;
     quantlinhas := 0;
     dt_studio.tb_comandas.DisableControls;
   try
     while not dt_studio.tb_comandas.eof do
     begin
        dt_studio.tb_comandas.open;
        subtotal := subtotal + dt_studio.tb_comandas.FieldByName('TOT_ITEM').AsCurrency;
        totalgeral := totalgeral + dt_studio.tb_comandas.FieldByName('TOT_SERV').AsCurrency;
        desconto := desconto + dt_studio.tb_comandas.FieldByName('DESCONTO').AsCurrency;
        quantlinhas := dbgrid1.DataSource.DataSet.RecordCount;
        dt_studio.tb_comandas.next;
     end;
     dt_studio.tb_comandas.EnableControls;
     Label20.Caption := FormatFloat('#,###,###,##0.00', subtotal);
     Label22.Caption := FormatFloat('#,###,###,##0.00', totalgeral);
     Label24.Caption := FormatFloat('#,###,###,##0.00', desconto);
     Edit3.Text := FormatFloat('#,###,###,##0.00', totalgeral);
     Label14.Caption := FormatFloat('#,0', quantlinhas);
   finally
   end;
end;

procedure Tfrm_servico.DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin //Informando o tipo de situa��o da comanda
   if (Column.Field.FieldName = 'ID_SERV') then
       DBGrid2.Canvas.Brush.Color:= $00E8E8D0;
       DBGrid2.Canvas.FillRect(Rect);
       DBGrid2.DefaultDrawDataCell(Rect, DBGrid2.columns[datacol].field, State);
   if dt_studio.tb_movservicoSITUACAO.asstring = 'FINALIZADO' then
       dbgrid2.Canvas.Font.Color := clRed;
       dbgrid2.Canvas.FillRect(Rect);
       dbgrid2.DefaultDrawDataCell(Rect, dbgrid2.columns[DataCol].Field, State);
end;

procedure Tfrm_servico.DBGrid2KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
   totalgeral: Currency;
   subtotal: Currency;
   desconto: Currency;
   quantlinhas : integer;
   Hoje, Mes: TDate; // A variavel Hoje salva a data atual e a Mes salva a data que consta no seu DBEdit.
begin
//Extraindo o m�s da data de nascimento para gerar desconto no m�s do anivers�rio
  Hoje := MonthOf(now);
  Mes := MonthOf(strtodate(niver.text));
  if Mes = Hoje then
     begin
        frm_servico.label28.Visible := true;
        frm_servico.label28.caption := 'Cliente Aniversariante no M�S tem Desconto !';
     end
     else
     frm_servico.label28.Visible := false;
     ShowScrollBar(DBGrid2.Handle,SB_HORZ,true); //Mostrar a barra Horizontal
//Informando valores na tela
     totalgeral := 0;
     desconto := 0;
     subtotal := 0;
     quantlinhas := 0;
     dt_studio.tb_comandas.DisableControls;
   try
     while not dt_studio.tb_comandas.eof do
     begin
        subtotal := subtotal + dt_studio.tb_comandas.FieldByName('TOT_ITEM').AsCurrency;
        totalgeral := totalgeral + dt_studio.tb_comandas.FieldByName('TOT_SERV').AsCurrency;
        desconto := desconto + dt_studio.tb_comandas.FieldByName('DESCONTO').AsCurrency;
        quantlinhas := dbgrid1.DataSource.DataSet.RecordCount;
        dt_studio.tb_comandas.next;
     end;
     dt_studio.tb_comandas.EnableControls;
     Label20.Caption := FormatFloat('#,###,###,##0.00', subtotal);
     Label22.Caption := FormatFloat('#,###,###,##0.00', totalgeral);
     Label24.Caption := FormatFloat('#,###,###,##0.00', desconto);
     Label14.Caption := FormatFloat('#,0', quantlinhas);
   finally
   end;
end;

procedure Tfrm_servico.combo2Click(Sender: TObject);
var
  Sql: string;
begin
    radio.ItemIndex := 0;
    frm_pesq_tipo.showmodal;
    quant.SetFocus;
    sbutton12.Enabled := true;
    dt_studio.tb_comandasPERC_DESC.value := 0.00;
    dt_studio.tb_comandasDESCONTO.value := 0.00;
end;

procedure Tfrm_servico.DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
var
   totalgeral: Currency;
   subtotal: Currency;
   desconto: Currency;
   quantlinhas : integer;
   Hoje, Mes: TDate; // A variavel Hoje salva a data atual e a Mes salva a data que consta no seu DBEdit.
begin //Informando valores na tela
   totalgeral := 0;
   desconto := 0;
   subtotal := 0;
   quantlinhas := 0;
   dt_studio.tb_comandas.DisableControls;
//Extraindo o m�s da data de nascimento para gerar desconto no m�s do anivers�rio
   Hoje := MonthOf(now);
   Mes := MonthOf(strtodate(niver.text));
   if Mes = Hoje then
      begin
         frm_servico.label28.Visible := true;
         frm_servico.label28.caption := 'Cliente Aniversariante no M�S tem Desconto !';
      end
      else
      frm_servico.label28.Visible := false;
//Totalizando os valores
   try
     while not dt_studio.tb_comandas.eof do
          begin
            subtotal := subtotal + dt_studio.tb_comandas.FieldByName('TOT_ITEM').AsCurrency;
            totalgeral := totalgeral + dt_studio.tb_comandas.FieldByName('TOT_SERV').AsCurrency;
            desconto := desconto + dt_studio.tb_comandas.FieldByName('DESCONTO').AsCurrency;
            quantlinhas := dbgrid1.DataSource.DataSet.RecordCount;
            dt_studio.tb_comandas.next;
          end;
          dt_studio.tb_comandas.EnableControls;
          Label20.Caption := FormatFloat('#,###,###,##0.00', subtotal);
          Label22.Caption := FormatFloat('#,###,###,##0.00', totalgeral);
          Label24.Caption := FormatFloat('#,###,###,##0.00', desconto);
          Edit3.Text := FormatFloat('#,###,###,##0.00', totalgeral);
          Label14.Caption := FormatFloat('#,0', quantlinhas);
   finally
   end;
end;

procedure Tfrm_servico.nav_servClick(Sender: TObject; Button: TNavigateBtn);
begin //Posicionando o registro no inicio da tabela
  dt_studio.tb_comandas.first;
end;

procedure Tfrm_servico.vr_descExit(Sender: TObject);
var
   totalgeral: Currency;
   subtotal: Currency;
   desconto: Currency;
   quantlinhas: Integer;
begin //Informando valores na tela
   sbutton8.Enabled := true;
   dt_studio.tb_movservico.edit;
   dt_studio.tb_comandas.edit;
   dt_studio.tb_comp_totais.edit;
   dt_studio.tb_comandasTOT_ITEM.value := dt_studio.tb_comandasVR_UNIT.value * dt_studio.tb_comandasQUANT.value;
   dt_studio.tb_comandasTOT_SERV.value := dt_studio.tb_comandasTOT_ITEM.value - dt_studio.tb_comandasDESCONTO.value;
   dt_studio.tb_comandasPERC_DESC.value := dt_studio.tb_comandasDESCONTO.value / dt_studio.tb_comandasTOT_ITEM.value * 100;
   dt_studio.tb_comandasVR_COMISSAO.value := dt_studio.tb_comandasTOT_SERV.value * dt_studio.tb_comandasPERC_COMISSAO.value / 100;
   dt_studio.tb_comandas.insert;
   dbgrid1.DataSource.DataSet.first;
   combo.ReadOnly := true;
   quant.ReadOnly := true;
   perc.ReadOnly := true;
   vr_desc.ReadOnly := true;
   vr_unit.ReadOnly := true;
   sbutton8.Enabled := true;
   sbutton1.Enabled := true;
   sbutton2.Enabled := true;
   sbutton7.Enabled := true;
   sbutton5.Enabled := false;
   sbutton10.Enabled := true;
   sbutton11.Enabled := true;
   es_sair.Enabled := true;
   sbutton9.Enabled := true;
   sbutton12.Enabled := false;
   sbutton8.setfocus;
   dbgrid1.ReadOnly := false;
//Totalizando valores
   totalgeral := 0;
   quantlinhas := 0;
   desconto := 0;
   subtotal := 0;
//   fev := 0;
   dt_studio.tb_comandas.first;
   dt_studio.tb_comandas.DisableControls;
   try
     while not dt_studio.tb_comandas.eof do
     begin
        subtotal := subtotal + dt_studio.tb_comandas.FieldByName('TOT_ITEM').AsCurrency;
        totalgeral := totalgeral + dt_studio.tb_comandas.FieldByName('TOT_SERV').AsCurrency;
        desconto := desconto + dt_studio.tb_comandas.FieldByName('DESCONTO').AsCurrency;
        quantlinhas := dbgrid1.DataSource.DataSet.RecordCount;
        dt_studio.tb_comandas.next;
     end;
     dt_studio.tb_comandas.EnableControls;
     Label20.Caption := FormatFloat('#,###,###,##0.00', subtotal);
     Label22.Caption := FormatFloat('#,###,###,##0.00', totalgeral);
     Label24.Caption := FormatFloat('#,###,###,##0.00', desconto);
     Label14.Caption := FormatFloat('#,0', quantlinhas);
     Edit3.Text := FormatFloat('#,###,###,##0.00', totalgeral);
     dt_studio.tb_comp_totais.Post;
   finally
   end;
end;

procedure Tfrm_servico.vr_unitExit(Sender: TObject);
begin
    perc.setfocus;
end;

end.




