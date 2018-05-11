{ ***************************************************
  * Elaborado para: Studio Atraente                 *
  * Modulo     : Movimentação de Estoque (Entradas) *
  * Analista   : João Douglas                       *
  * Elaboração : João Douglas                       *
  * Ult Alt.   : 07/12/2016                         *
  *************************************************** }

unit un_movservico;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.DBCtrls, Vcl.StdCtrls, sButton,
  Vcl.ExtCtrls, sPanel, Vcl.Buttons, Vcl.Mask, Vcl.Grids, Vcl.DBGrids,
  Vcl.ComCtrls, Data.DB, Data.Win.ADODB;

type
  Tfrm_movestoque = class(TForm)
    sPanel1: TsPanel;
    novo: TsButton;
    editar: TsButton;
    excluir: TsButton;
    nav_est: TDBNavigator;
    sair: TsButton;
    gravar: TsButton;
    cancelar: TsButton;
    query_fornec: TADOQuery;
    query_prod: TADOQuery;
    Label1: TLabel;
    Label2: TLabel;
    Data: TDBEdit;
    Label3: TLabel;
    cod_fornec: TDBEdit;
    Label4: TLabel;
    nom_fornec: TDBEdit;
    Label5: TLabel;
    num_nota: TDBEdit;
    Label6: TLabel;
    obs: TDBMemo;
    SpeedButton4: TSpeedButton;
    sPanel2: TsPanel;
    novo_item: TsButton;
    itens: TLabel;
    Label7: TLabel;
    cod_prod: TDBEdit;
    Label8: TLabel;
    nom_prod: TDBEdit;
    Label9: TLabel;
    quant: TDBEdit;
    Label10: TLabel;
    Label11: TLabel;
    DBNavigator2: TDBNavigator;
    grid_itens: TDBGrid;
    Label13: TLabel;
    Panel6: TPanel;
    Label14: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    query_fornecID_FORNEC: TIntegerField;
    query_fornecNOM_FORNEC: TStringField;
    query_fornecEND_FORNEC: TStringField;
    query_fornecCEP_FORNEC: TStringField;
    query_fornecBAIRRO_FORNEC: TStringField;
    query_fornecCIDADE_FORNEC: TStringField;
    query_fornecUF_FORNEC: TStringField;
    query_fornecTEL_FORNEC: TStringField;
    query_fornecCEL_FORNEC: TStringField;
    query_fornecEMAIL_FORNEC: TStringField;
    query_fornecDATA_CAD: TDateTimeField;
    query_fornecNUM_END: TBCDField;
    query_fornecCOMPL_FORNEC: TStringField;
    query_fornecSITUACAO: TStringField;
    vr_unit: TDBEdit;
    total: TDBEdit;
    radio: TRadioGroup;
    Edit1: TEdit;
    BitBtn3: TBitBtn;
    btn_cancel: TsButton;
    Timer1: TTimer;
    id_reg: TDBEdit;
    query_prodNOME_TIPO: TStringField;
    query_prodDT_CAD: TDateTimeField;
    query_prodPERC_SERVICO: TBCDField;
    query_prodVR_SERVICO: TBCDField;
    query_prodSITUACAO: TStringField;
    query_prodID_TIPO: TAutoIncField;
    query_prodCUSTO: TFloatField;
    query_prodTIPO: TStringField;
    query_prodESTOQUE: TBCDField;
    SpeedButton1: TSpeedButton;
    procedure novoClick(Sender: TObject);
    procedure editarClick(Sender: TObject);
    procedure excluirClick(Sender: TObject);
    procedure gravarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure sairClick(Sender: TObject);
    procedure cancelarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure novo_itemClick(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure cod_fornecExit(Sender: TObject);
    procedure cod_prodExit(Sender: TObject);
    procedure vr_unitExit(Sender: TObject);
    procedure quantExit(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure radioClick(Sender: TObject);
    procedure nav_estClick(Sender: TObject; Button: TNavigateBtn);
    procedure grid_itensKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton1Click(Sender: TObject);
    procedure btn_cancelClick(Sender: TObject);
    procedure grid_itensDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure grid_itensCellClick(Column: TColumn);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_movestoque: Tfrm_movestoque;

implementation

uses un_dtstudio, un_pesq_tipo, un_pesq_prod, un_pesq_fornec;

{$R *.dfm}

procedure Tfrm_movestoque.BitBtn3Click(Sender: TObject);
var
  quantlinhas: currency;
  total: currency;
  Sql: string;
begin
  dt_studio.tb_movest.close;
  dt_studio.tb_movest.Sql.Clear;
  dt_studio.tb_movest.Sql.Add('select * from MOV_ESTOQUE');
  if (radio.ItemIndex = 0) then
      Sql := 'where NUM_NOTA like ' + QuotedStr('%' + Edit1.Text + '%')
  else if (radio.ItemIndex = 1) then
      Sql := 'where NOM_FORNEC like ' + QuotedStr('%' + Edit1.Text + '%');
  dt_studio.tb_movest.Sql.Add(Sql);
  dt_studio.tb_movest.Sql.Add('order by NOM_FORNEC');
  dt_studio.tb_movest.Open;
  // rotina para calcular a quantidade e o vr. unitário
  dt_studio.tb_movestitens.edit;
  dt_studio.tb_movestitensTOTAL_NOTA.value :=
    dt_studio.tb_movestitensQUANT.value * dt_studio.tb_movestitensVR_UNIT.value;
  Edit1.SetFocus;
  // rotina para visualizar o total das colunas do grid
  quantlinhas := 0;
  total := 0;
  try
    while not dt_studio.tb_movestitens.eof do
    begin
      total := total + dt_studio.tb_movestitens.FieldByName('TOTAL_NOTA')
        .AsCurrency;
      quantlinhas := grid_itens.DataSource.DataSet.RecordCount;
      dt_studio.tb_movestitens.next;
    end;
    dt_studio.tb_movestitens.EnableControls;
    Label14.caption := FormatFloat('#,###,###,##0.00', quantlinhas);
    Label22.caption := FormatFloat('#,###,###,##0.00', total);
  finally
  end;
end;

procedure Tfrm_movestoque.cancelarClick(Sender: TObject);
begin //Gravando informações na tabela
   If Application.Messagebox('Confirma Gravação de Estoque? ', 'Confirmação',
   mb_Iconquestion + Mb_OkCancel + Mb_DefButton1) = IdOk then
   else
   exit;
   id_reg.ReadOnly := true;
   Data.ReadOnly := true;
   cod_fornec.ReadOnly := true;
   nom_fornec.ReadOnly := true;
   num_nota.ReadOnly := true;
   obs.ReadOnly := true;
   nav_est.Enabled := true;
   novo.Enabled := true;
   editar.Enabled := true;
   excluir.Enabled := true;
   cancelar.Enabled := false;
   gravar.Enabled := false;
   sair.Enabled := true;
   novo_item.Enabled := false;
   btn_cancel.Enabled := false;
   SpeedButton1.Enabled := false;
   SpeedButton4.Enabled := false;
   dt_studio.tb_movest.cancel;
   id_reg.SetFocus;
end;

procedure Tfrm_movestoque.editarClick(Sender: TObject);
begin //Alterando informações na tabela
   If Application.Messagebox('Confirma Alteração de Entradas? ', 'Confirmação',
   mb_Iconquestion + Mb_OkCancel + Mb_DefButton1) = IdOk then
   else
   exit;
   id_reg.ReadOnly := false;
   Data.ReadOnly := true;
   cod_fornec.ReadOnly := false;
   nom_fornec.ReadOnly := true;
   num_nota.ReadOnly := false;
   obs.ReadOnly := false;
   nav_est.Enabled := false;
   novo.Enabled := false;
   editar.Enabled := false;
   excluir.Enabled := false;
   cancelar.Enabled := true;
   gravar.Enabled := true;
   sair.Enabled := false;
   SpeedButton1.Enabled := true;
   SpeedButton4.Enabled := true;
   dt_studio.tb_movest.edit;
   cod_fornec.SetFocus;
end;

procedure Tfrm_movestoque.excluirClick(Sender: TObject);
begin // Comandos para excluir registros na tabela//
  If dt_studio.tb_movest.RecordCount <> 0 then
    If Application.Messagebox('Confirma Exclusão?', 'Confirmar',
      mb_Iconquestion + MB_YesNo + Mb_DefButton1) = IdYes Then
    begin
      dt_studio.tb_movest.Delete;
      id_reg.SetFocus;
    end;
  If dt_studio.tb_movest.RecordCount = 0 then
    showmessage('Nao Existe Registro para Excluir');
end;

procedure Tfrm_movestoque.FormKeyPress(Sender: TObject; var Key: Char);
begin // Comandos para a tecla [ENTER]//
  If Key = #13 Then
    Selectnext(ActiveControl, true, true);
end;

procedure Tfrm_movestoque.FormShow(Sender: TObject);
var
  quantlinhas: currency;
  total: currency;
begin
  SpeedButton1.Enabled := false;
  SpeedButton4.Enabled := false;
  cancelar.Enabled := false;
  gravar.Enabled := false;
  dt_studio.tb_movest.Open;
  dt_studio.tb_cadfornec.Open;
  dt_studio.tb_movestitens.Open;
  dt_studio.tb_cadtiposerv.Open;
  query_fornec.Open;
  query_prod.Open;
  novo_item.Enabled := false;
  btn_cancel.Enabled := false;
  // rotina para visualizar o total das colunas do grid
  quantlinhas := 0;
  total := 0;
  try
    while not dt_studio.tb_movestitens.eof do
    begin
      total := total + dt_studio.tb_movestitens.FieldByName('TOTAL_NOTA').AsCurrency;
      quantlinhas := grid_itens.DataSource.DataSet.RecordCount;
      dt_studio.tb_movestitens.next;
    end;
    dt_studio.tb_movestitens.EnableControls;
    Label14.caption := FormatFloat('#,###,###,##0.00', quantlinhas);
    Label22.caption := FormatFloat('#,###,###,##0.00', total);
  finally
  end;
end;

procedure Tfrm_movestoque.gravarClick(Sender: TObject);
begin //Gravando informações na tabela
   If Application.Messagebox('Confirma Gravação de Estoque? ', 'Confirmação',
   mb_Iconquestion + Mb_OkCancel + Mb_DefButton1) = IdOk then
   else
   exit;
   id_reg.ReadOnly := true;
   Data.ReadOnly := true;
   cod_fornec.ReadOnly := true;
   nom_fornec.ReadOnly := true;
   num_nota.ReadOnly := true;
   obs.ReadOnly := true;
   nav_est.Enabled := true;
   novo.Enabled := true;
   editar.Enabled := true;
   excluir.Enabled := true;
   cancelar.Enabled := false;
   gravar.Enabled := false;
   sair.Enabled := true;
   SpeedButton1.Enabled := false;
   SpeedButton4.Enabled := false;
   dt_studio.tb_movest.post;
   novo_item.SetFocus;
end;

procedure Tfrm_movestoque.grid_itensCellClick(Column: TColumn);
begin //Deixando os botões no estado visivel
  novo_item.Enabled := true;
  btn_cancel.Enabled := true;
end;

procedure Tfrm_movestoque.grid_itensDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin //Deixando o dbgrid zebrado
   If odd(dt_studio.tb_movestitens.RecNo) then
       begin
          grid_itens.Canvas.Font.Color:= clBlack;
          grid_itens.Canvas.Brush.Color:= $00FFF5EC;
       end
       else
       begin
          grid_itens.Canvas.Font.Color:= clBlack;
          grid_itens.Canvas.Brush.Color:= clWhite;
       end;
       grid_itens.Canvas.FillRect(Rect);
       grid_itens.DefaultDrawDataCell(Rect, grid_itens.columns[DataCol].Field, State);
end;

procedure Tfrm_movestoque.grid_itensKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  quantlinhas: currency;
  total: currency;
begin //Confirmação de exclusão do item
   dt_studio.tb_cadprod.edit;
   If dt_studio.tb_movestitens.RecordCount <> 0 then
   if (Key = vk_delete) then
   If Application.Messagebox('DESEJA REALMENTE EXCLUIR ESSE ITEM ?','Confirmar', mb_Iconquestion + MB_YesNo + MB_DefButton2) = IdYes Then
   dt_studio.tb_cadprodQUANT_ESTOQUE.value :=
   dt_studio.tb_cadprodQUANT_ESTOQUE.value -
   dt_studio.tb_movestitensQUANT.value;
   dt_studio.tb_movestitens.Delete;
   dt_studio.tb_cadprod.next;
//Totalizando os valores
   quantlinhas := 0;
   total := 0;
  try
    while not dt_studio.tb_movestitens.eof do
    begin
      total := total + dt_studio.tb_movestitens.FieldByName('TOTAL_NOTA').AsCurrency;
      quantlinhas := grid_itens.DataSource.DataSet.RecordCount;
      dt_studio.tb_movestitens.next;
    end;
    dt_studio.tb_movestitens.EnableControls;
    Label14.caption := FormatFloat('#,###,###,##0.00', quantlinhas);
    Label22.caption := FormatFloat('#,###,###,##0.00', total);
  finally
  end;
end;

procedure Tfrm_movestoque.novoClick(Sender: TObject);
begin // Inserindo registros na tabela
   If Application.Messagebox('Confirma Inclusão de Entradas? ', 'Confirmação',
   mb_Iconquestion + Mb_OkCancel + Mb_DefButton1) = IdOk then
   else
   exit;
   id_reg.ReadOnly := false;
   Data.ReadOnly := true;
   cod_fornec.ReadOnly := false;
   nom_fornec.ReadOnly := true;
   num_nota.ReadOnly := false;
   obs.ReadOnly := false;
   nav_est.Enabled := false;
   novo.Enabled := false;
   editar.Enabled := false;
   excluir.Enabled := false;
   cancelar.Enabled := true;
   gravar.Enabled := true;
   sair.Enabled := false;
   novo_item.Enabled := true;
   btn_cancel.Enabled := true;
   SpeedButton1.Enabled := true;
   SpeedButton4.Enabled := true;
   dt_studio.tb_movest.Append;
   dt_studio.tb_movestDT_MOV.AsString := DatetoStr(Date);
   cod_fornec.SetFocus;
end;

procedure Tfrm_movestoque.sairClick(Sender: TObject);
begin //Fechando as tabelas
   dt_studio.tb_movest.close;
   dt_studio.tb_movestitens.close;
   query_fornec.close;
   query_prod.close;
   close;
end;

procedure Tfrm_movestoque.btn_cancelClick(Sender: TObject);
begin //Cancelando a digitação na tabela
   cod_prod.ReadOnly := true;
   nom_prod.ReadOnly := true;
   quant.ReadOnly := true;
   vr_unit.ReadOnly := true;
   total.ReadOnly := true;
   novo_item.Enabled := true;
   btn_cancel.Enabled := true;
   dt_studio.tb_movestitens.cancel;
end;

procedure Tfrm_movestoque.SpeedButton1Click(Sender: TObject);
begin// chamando a tela de produtos e serviços
   frm_pesq_fornec.cod := 1;
   num_nota.SetFocus;
   frm_pesq_fornec.showmodal;
end;

procedure Tfrm_movestoque.SpeedButton4Click(Sender: TObject);
begin // chamando a tela de produtos e serviços
   frm_pesq_tipo.cod := 1;
   quant.SetFocus;
   frm_pesq_tipo.showmodal;
end;

procedure Tfrm_movestoque.Timer1Timer(Sender: TObject);
begin
  // label piscando no form
  itens.Visible := not itens.Visible;
end;

procedure Tfrm_movestoque.vr_unitExit(Sender: TObject);
var
  quantlinhas: currency;
  total: currency;
begin
   dt_studio.tb_movest.Open;
   dt_studio.tb_cadfornec.Open;
   dt_studio.tb_movestitens.Open;
   dt_studio.tb_cadtiposerv.Open;
   query_fornec.Open;
   query_prod.Open;
   dt_studio.tb_movestitens.edit;
   dt_studio.tb_cadtiposerv.edit;
   dt_studio.tb_cadtiposervCUSTO.Value :=
   dt_studio.tb_movestitensVR_UNIT.Value;
   dt_studio.tb_cadtiposerv.post;
   dt_studio.tb_cadtiposerv.next;
   dt_studio.tb_movestitensTOTAL_NOTA.value :=
   dt_studio.tb_movestitensQUANT.value * dt_studio.tb_movestitensVR_UNIT.value;
   dt_studio.tb_movestitens.insert;
   grid_itens.DataSource.DataSet.first;
   novo_item.SetFocus;
  // rotina para visualizar o total das colunas do grid
   quantlinhas := 0;
   total := 0;
  try
    while not dt_studio.tb_movestitens.eof do
    begin
      total := total + dt_studio.tb_movestitens.FieldByName('TOTAL_NOTA').AsCurrency;
      quantlinhas := grid_itens.DataSource.DataSet.RecordCount;
      dt_studio.tb_movestitens.next;
    end;
    dt_studio.tb_movestitens.EnableControls;
    Label14.caption := FormatFloat('#,###,###,##0.00', quantlinhas);
    Label22.caption := FormatFloat('#,###,###,##0.00', total);
  finally
  end;
end;

procedure Tfrm_movestoque.novo_itemClick(Sender: TObject);
begin //Inserindo informações na tabela de itens
   cod_prod.ReadOnly := true;
   nom_prod.ReadOnly := false;
   quant.ReadOnly := false;
   vr_unit.ReadOnly := false;
   total.ReadOnly := false;
   novo_item.Enabled := true;
   btn_cancel.Enabled := true;
   dt_studio.tb_movestitens.Append;
   frm_pesq_tipo.cod := 1;
   quant.SetFocus;
   frm_pesq_tipo.showmodal;
   dt_studio.tb_movestitensDATA_MOV.AsString := DatetoStr(Date);
   dt_studio.tb_movestitensNUM_NOTA.value := dt_studio.tb_movestNUM_NOTA.value;
end;

procedure Tfrm_movestoque.quantExit(Sender: TObject);
begin //Gravando informações na tabela de produtos e serviços caso a situação seja P
   dt_studio.tb_cadtiposerv.edit;
   dt_studio.tb_movestitens.edit;
   if dt_studio.tb_cadtiposervTIPO.AsString = 'P' then
   begin
      dt_studio.tb_cadtiposervESTOQUE.value := dt_studio.tb_cadtiposervESTOQUE.value +
      dt_studio.tb_movestitensQUANT.value;
      dt_studio.tb_cadtiposerv.post;
      dt_studio.tb_cadtiposerv.Next;
   end;
end;

procedure Tfrm_movestoque.radioClick(Sender: TObject);
begin //Focando no edit
   Edit1.SetFocus;
end;

procedure Tfrm_movestoque.cod_fornecExit(Sender: TObject);
begin
  // Comando para filtrar por codigo//
  if query_fornec.Locate('ID_FORNEC', cod_fornec.Text, [loPartialKey]) and
    (Trim(query_fornec.FieldByName('NOM_FORNEC').AsString) <> '') then
  begin
    nom_fornec.Text := query_fornec.FieldByName('NOM_FORNEC').AsString;
    num_nota.SetFocus;
  end;
  if query_fornecSITUACAO.AsString = 'I' then
  begin
    showmessage('Desculpe Fornecedor Inativo !!!');
    cod_fornec.SetFocus;
  end;
end;

procedure Tfrm_movestoque.cod_prodExit(Sender: TObject);
begin
  // Comando para filtrar por codigo//
  if query_prod.Locate('ID_TIPO', cod_prod.Text, [loPartialKey]) and
     (Trim(query_prod.FieldByName('NOME_TIPO').AsString) <> '') then
     begin
        nom_prod.Text := query_prod.FieldByName('NOME_TIPO').AsString;
        quant.SetFocus;
     end;
    if query_prodSITUACAO.AsString = 'I' then
      begin
         showmessage('Desculpe Serviço ou Produto Inativo !!!');
         cod_prod.SetFocus;
      end;
end;

procedure Tfrm_movestoque.nav_estClick(Sender: TObject;
  Button: TNavigateBtn);
var
  quantlinhas: currency;
  total: currency;
  Sql: string;
begin //Informando valores na tabela de estoque
  dt_studio.tb_movestitens.first;
  quantlinhas := 0;
  total := 0;
  try
    while not dt_studio.tb_movestitens.eof do
    begin
      total := total + dt_studio.tb_movestitens.FieldByName('TOTAL_NOTA').AsCurrency;
      quantlinhas := grid_itens.DataSource.DataSet.RecordCount;
      dt_studio.tb_movestitens.next;
    end;
    dt_studio.tb_movestitens.EnableControls;
    Label14.caption := FormatFloat('#,###,###,##0.00', quantlinhas);
    Label22.caption := FormatFloat('#,###,###,##0.00', total);
  finally
  end;
end;

end.
