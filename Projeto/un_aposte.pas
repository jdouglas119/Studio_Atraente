{ ***************************************************
  * Elaborado para: Studio Atraente                 *
  * Modulo     : Aposte em dinheiro - caixa         *
  * Analista   : Jo�o Douglas                       *
  * Elabora��o : Jo�o Douglas                       *
  * Ult Alt.   : 31/01/2017                         *
  *************************************************** }

unit un_aposte;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls,
  sButton, Vcl.ComCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.ExtCtrls, RxToolEdit;

type
  Tfrm_aposte = class(TForm)
    DBGrid1: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    data: TDBEdit;
    Label3: TLabel;
    valor: TDBEdit;
    Label4: TLabel;
    usuario: TDBEdit;
    id_aposte: TDBEdit;
    Label11: TLabel;
    DBText1: TDBText;
    DBNavigator1: TDBNavigator;
    Label5: TLabel;
    memo: TDBMemo;
    Panel1: TPanel;
    Label6: TLabel;
    data_pesq: TDateEdit;
    sButton1: TsButton;
    total_aposte: TDBEdit;
    Panel2: TPanel;
    novo: TsButton;
    editar: TsButton;
    gravar: TsButton;
    cancelar: TsButton;
    sair: TsButton;
    procedure novoClick(Sender: TObject);
    procedure gravarClick(Sender: TObject);
    procedure cancelarClick(Sender: TObject);
    procedure sairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure editarClick(Sender: TObject);
    procedure sButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_aposte: Tfrm_aposte;

implementation

uses un_dtstudio, un_principal, un_aut_aposte, un_movcaixa;

{$R *.dfm}

procedure Tfrm_aposte.cancelarClick(Sender: TObject);
begin//Cancelando Registro na Tabela
   If Application.Messagebox('Confirma Cancelamento ? ', 'Confirma��o',
   mb_Iconquestion + Mb_OkCancel + Mb_DefButton1) = IdOk then
   else
   exit;
   id_aposte.ReadOnly := true;
   data.ReadOnly := true;
   memo.ReadOnly := true;
   valor.ReadOnly := true;
   usuario.ReadOnly := true;
   dbgrid1.ReadOnly := true;
   novo.Enabled := true;
   editar.Enabled := true;
   cancelar.Enabled := false;
   gravar.Enabled := false;
   sair.Enabled := true;
   dt_studio.tb_aposte.cancel;
   valor.SetFocus;
end;

procedure Tfrm_aposte.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin//Deixando o Dbgrid no formato zebrado
    If odd(dt_studio.tb_aposte.RecNo) then
        begin
            dbgrid1.Canvas.Font.Color:= clBlack;
            dbgrid1.Canvas.Brush.Color:= $00FFF5EC;
        end
        else
        begin
            dbgrid1.Canvas.Font.Color:= clBlack;
            dbgrid1.Canvas.Brush.Color:= clWhite;
       end;
       dbgrid1.Canvas.FillRect(Rect);
       dbgrid1.DefaultDrawDataCell(Rect, Column.Field, State);
end;

procedure Tfrm_aposte.FormKeyPress(Sender: TObject; var Key: Char);
begin// Comandos para a tecla [ENTER]//
  If Key = #13 Then
    Selectnext(ActiveControl, true, true);
end;

procedure Tfrm_aposte.FormShow(Sender: TObject);
var
  tot_aposte : currency;
begin//Abrindo as Tabelas
   dt_studio.tb_totais.Open;
   dt_studio.tb_movcaixa.Open;
   dt_studio.tb_aposte.open;
   gravar.enabled := false;
   cancelar.enabled := false;
   data_pesq.text := DateToSTr(Date);
   dt_studio.tb_aposte.close;
   dt_studio.tb_aposte.Filtered := False;
   dt_studio.tb_aposte.Open;
   dt_studio.tb_aposte.Filter := 'DATA = ' + QuotedStr(data_pesq.Text);
   dt_studio.tb_aposte.Filtered := True;
   dt_studio.tb_aposte.locate('DATA',data_pesq.text,[]);
   tot_aposte := 0;
   dt_studio.tb_aposte.first;
   dt_studio.tb_aposte.DisableControls;
   try
     while not dt_studio.tb_aposte.eof do
       begin
          tot_aposte := tot_aposte + dt_studio.tb_aposte.FieldByName('VR_APOSTE').AsCurrency;
          dt_studio.tb_aposte.next;
       end;
       dt_studio.tb_aposte.EnableControls;
       total_aposte.text := FormatFloat('#,###,###,##0.00',tot_aposte);
   finally
   end;
end;

procedure Tfrm_aposte.gravarClick(Sender: TObject);
var
  tot_aposte : currency;
begin//Gravando informa��es na Tabela
   If Application.Messagebox('Confirma Grava��o ? ', 'Confirma��o',
   mb_Iconquestion + Mb_OkCancel + Mb_DefButton1) = IdOk then
   else
   exit;
   dt_studio.tb_aposte.post;
   id_aposte.ReadOnly := true;
   data.ReadOnly := true;
   memo.ReadOnly := true;
   valor.ReadOnly := true;
   usuario.ReadOnly := true;
   dbgrid1.ReadOnly := true;
   novo.Enabled := true;
   editar.Enabled := true;
   cancelar.Enabled := false;
   gravar.Enabled := false;
   sair.Enabled := true;
//Gravando dados no mov. do caixa
   dt_studio.tb_movcaixa.edit;
   dt_studio.tb_totais.edit;
   dt_studio.tb_aposte.edit;
   dt_studio.tb_movcaixaAPOSTE.Value := dt_studio.tb_movcaixaAPOSTE.Value + dt_studio.tb_aposteVR_APOSTE.Value;
   dt_studio.tb_movcaixaSALDO_ATUAL.Value := dt_studio.tb_movcaixaSALDO_ATUAL.Value + dt_studio.tb_aposteVR_APOSTE.Value;
   dt_studio.tb_totaisTOT_APOSTE.Value := dt_studio.tb_aposteVR_APOSTE.Value + dt_studio.tb_aposteVR_APOSTE.Value;
   dt_studio.tb_movcaixa.post;
   dt_studio.tb_totais.post;
   tot_aposte := 0;
   dt_studio.tb_aposte.first;
   dt_studio.tb_aposte.DisableControls;
   try
     while not dt_studio.tb_aposte.eof do
       begin
          tot_aposte := tot_aposte + dt_studio.tb_aposte.FieldByName('VR_APOSTE').AsCurrency;
          dt_studio.tb_aposte.next;
       end;
       dt_studio.tb_totais.edit;
       dt_studio.tb_totaisDATA.asstring := DatetoStr(Date);
       dt_studio.tb_aposte.EnableControls;
       total_aposte.text := FormatFloat('#,###,###,##0.00',tot_aposte);
       dt_studio.tb_totais.post;
   finally
   end;
   valor.SetFocus;
end;

procedure Tfrm_aposte.novoClick(Sender: TObject);
begin// Inserindo registros na tabela
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
   If Application.Messagebox('Confirma Inclus�o ? ', 'Confirma��o',
   mb_Iconquestion + Mb_OkCancel + Mb_DefButton1) = IdOk then
   else
   exit;
   id_aposte.ReadOnly := false;
   data.ReadOnly := false;
   valor.ReadOnly := false;
   memo.ReadOnly := false;
   usuario.ReadOnly := false;
   dbgrid1.ReadOnly := false;
   novo.Enabled := false;
   editar.Enabled := false;
   cancelar.Enabled := true;
   gravar.Enabled := true;
   sair.Enabled := false;
   dt_studio.tb_aposte.Append;
   dt_studio.tb_aposteDATA.asstring := DatetoStr(Date);
   usuario.Text := dt_studio.tb_cadusu.FieldByName('NOM_APELIDO').AsString;
   valor.SetFocus;
end;

procedure Tfrm_aposte.sairClick(Sender: TObject);
begin//Fechando as Tabelas
   dt_studio.tb_aposte.Close;
   dt_studio.tb_totais.close;
   dt_studio.tb_movcaixa.close;
   close;
end;

procedure Tfrm_aposte.sButton1Click(Sender: TObject);
var
  tot_aposte : currency;
begin//Filtrando por Data
   dt_studio.tb_aposte.close;
   dt_studio.tb_aposte.Filtered := False;
   dt_studio.tb_aposte.Open;
   dt_studio.tb_aposte.Filter := 'DATA = ' + QuotedStr(data_pesq.Text);
   dt_studio.tb_aposte.Filtered := True;
   dt_studio.tb_aposte.locate('DATA',data_pesq.text,[]);
   tot_aposte := 0;
   dt_studio.tb_aposte.first;
   dt_studio.tb_aposte.DisableControls;
   try
     while not dt_studio.tb_aposte.eof do
       begin
          tot_aposte := tot_aposte + dt_studio.tb_aposte.FieldByName('VR_APOSTE').AsCurrency;
          dt_studio.tb_aposte.next;
       end;
       dt_studio.tb_aposte.EnableControls;
       total_aposte.text := FormatFloat('#,###,###,##0.00',tot_aposte);
   finally
   end;
end;

procedure Tfrm_aposte.editarClick(Sender: TObject);
begin
   frm_aut_aposte.showmodal;
   dt_studio.tb_aposte.Edit;
   valor.SetFocus;
   frm_aut_aposte.nome.text := '';
   frm_aut_aposte.cod.text := '';
   frm_aut_aposte.senha.text := '';
end;

end.
