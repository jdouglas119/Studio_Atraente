{ ***************************************************
  * Elaborado para: Studio Atraente                 *
  * Modulo     : Retiradas e Pagamentos             *
  * Analista   : Jo�o Douglas                       *
  * Elabora��o : Jo�o Douglas                       *
  * Ult Alt.   : 31/01/2017                         *
  *************************************************** }

unit un_retiradas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, sButton, Vcl.Mask,
  Vcl.DBCtrls, Vcl.ComCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, acPNG,
  RxToolEdit;

type
  Tfrm_retiradas = class(TForm)
    Label8: TLabel;
    Label9: TLabel;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    DBMemo1: TDBMemo;
    Label3: TLabel;
    data: TDBEdit;
    nav_ret: TDBNavigator;
    Image4: TImage;
    Image5: TImage;
    id_retiradas: TDBEdit;
    Label4: TLabel;
    usuario: TDBEdit;
    pagamentos: TDBEdit;
    retiradas: TDBEdit;
    Label11: TLabel;
    DBText1: TDBText;
    Panel1: TPanel;
    Label6: TLabel;
    Label5: TLabel;
    data_pesq: TDateEdit;
    sButton3: TsButton;
    total_pag: TDBEdit;
    total_ret: TDBEdit;
    Panel2: TPanel;
    novo: TsButton;
    sButton1: TsButton;
    gravar: TsButton;
    cancel: TsButton;
    sair: TsButton;
    procedure novoClick(Sender: TObject);
    procedure gravarClick(Sender: TObject);
    procedure cancelClick(Sender: TObject);
    procedure sairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DBMemo1Exit(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure sButton1Click(Sender: TObject);
    procedure sButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_retiradas: Tfrm_retiradas;

implementation

uses un_dtstudio, un_principal, un_aut_retiradas;

{$R *.dfm}

procedure Tfrm_retiradas.cancelClick(Sender: TObject);
begin //Cancelando digita��o na tabela
   If Application.Messagebox
   ('Confirma Cancelamento de Retirada ou Pagamento do Caixa? ', 'Confirma��o',
   mb_Iconquestion + Mb_OkCancel + Mb_DefButton1) = IdOk then
   else
   exit;
   dt_studio.tb_retiradas.cancel;
   id_retiradas.ReadOnly := true;
   data.ReadOnly := true;
   pagamentos.ReadOnly := true;
   retiradas.ReadOnly := true;
   DBMemo1.ReadOnly := true;
   nav_ret.Enabled := true;
   novo.Enabled := true;
   gravar.Enabled := false;
   cancel.Enabled := false;
   sair.Enabled := true;
   pagamentos.SetFocus;
end;

procedure Tfrm_retiradas.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin //Deixando o dbgrid zebrado
   If odd(dt_studio.tb_retiradas.RecNo) then
       begin
          dbgrid1.Canvas.Font.Color:= clBlack;
          dbgrid1.Canvas.Brush.Color:= $00FFF5EC;
       end
       else
       begin
          dbgrid1.Canvas.Font.Color:= clBlack;
          dbgrid1.Canvas.Brush.Color:= clWhite;
       end;
       DBgrid1.Canvas.FillRect(Rect);
       DBgrid1.DefaultDrawDataCell(Rect, DBgrid1.columns[DataCol].Field, State);
end;

procedure Tfrm_retiradas.DBMemo1Exit(Sender: TObject);
begin //Focando no bot�o
  gravar.SetFocus;
end;

procedure Tfrm_retiradas.FormKeyPress(Sender: TObject; var Key: Char);
begin // Comandos para a tecla [ENTER]//
  If Key = #13 Then
    Selectnext(ActiveControl, true, true);
end;

procedure Tfrm_retiradas.FormShow(Sender: TObject);
var
  tot_pag : currency;
  tot_ret : currency;
begin //Abrindo as tabelas
  dt_studio.tb_movcaixa.open;
  dt_studio.tb_totais.open;
  gravar.Enabled := false;
  cancel.Enabled := false;
  data_pesq.text := DateToSTr(Date);
  dt_studio.tb_retiradas.close;
  dt_studio.tb_retiradas.Filtered := False;
  dt_studio.tb_retiradas.Open;
  dt_studio.tb_retiradas.Filter := 'DATA = ' + QuotedStr(data_pesq.Text);
  dt_studio.tb_retiradas.Filtered := True;
  dt_studio.tb_retiradas.locate('DATA',data_pesq.text,[]);
  tot_pag := 0;
  tot_ret := 0;
  dt_studio.tb_retiradas.first;
  dt_studio.tb_retiradas.DisableControls;
  try
    while not dt_studio.tb_retiradas.eof do
      begin
         tot_pag := tot_pag + dt_studio.tb_retiradas.FieldByName('PAGAMENTOS').AsCurrency;
         tot_ret := tot_ret + dt_studio.tb_retiradas.FieldByName('RETIRADAS').AsCurrency;
         dt_studio.tb_retiradas.next;
      end;
      dt_studio.tb_retiradas.EnableControls;
      total_pag.text := FormatFloat('#,###,###,##0.00',tot_pag);
      total_ret.text := FormatFloat('#,###,###,##0.00',tot_ret);
  finally
  end;
end;

procedure Tfrm_retiradas.gravarClick(Sender: TObject);
var
  tot_pag : currency;
  tot_ret : currency;
begin //Gravando informa��es na tabela
   If Application.Messagebox
   ('Confirma Grava��o de Retirada ou Pagamento do Caixa? ', 'Confirma��o',
   mb_Iconquestion + Mb_OkCancel + Mb_DefButton1) = IdOk then
   else
   exit;
   dt_studio.tb_retiradas.post;
   id_retiradas.ReadOnly := true;
   data.ReadOnly := true;
   pagamentos.ReadOnly := true;
   retiradas.ReadOnly := true;
   DBMemo1.ReadOnly := true;
   nav_ret.Enabled := true;
   novo.Enabled := true;
   gravar.Enabled := false;
   cancel.Enabled := false;
   sair.Enabled := true;
   id_retiradas.SetFocus;
  // Grava valores de pagamentos e retiradas no mov. do caixa
   dt_studio.tb_movcaixa.edit;
   dt_studio.tb_totais.edit;
   dt_studio.tb_movcaixaPAGAMENTOS.Value := dt_studio.tb_movcaixaPAGAMENTOS.Value + dt_studio.tb_retiradasPAGAMENTOS.Value;
   dt_studio.tb_movcaixaRETIRADAS.Value := dt_studio.tb_movcaixaRETIRADAS.Value + dt_studio.tb_retiradasRETIRADAS.Value;
   dt_studio.tb_totaisTOT_PAGAMENTO.Value := dt_studio.tb_retiradasPAGAMENTOS.Value + dt_studio.tb_retiradasPAGAMENTOS.Value;
   dt_studio.tb_totaisTOT_RETIRADAS.Value := dt_studio.tb_retiradasRETIRADAS.Value + dt_studio.tb_retiradasRETIRADAS.Value;
   dt_studio.tb_movcaixa.post;
   dt_studio.tb_totais.post;
   tot_pag := 0;
   tot_ret := 0;
   dt_studio.tb_retiradas.first;
   dt_studio.tb_retiradas.DisableControls;
   try
     while not dt_studio.tb_retiradas.eof do
       begin
          tot_pag := tot_pag + dt_studio.tb_retiradas.FieldByName('PAGAMENTOS').AsCurrency;
          tot_ret := tot_ret + dt_studio.tb_retiradas.FieldByName('RETIRADAS').AsCurrency;
          dt_studio.tb_retiradas.next;
       end;
       dt_studio.tb_totais.edit;
       dt_studio.tb_totaisDATA.asstring := DatetoStr(Date);
       dt_studio.tb_retiradas.EnableControls;
       total_pag.text := FormatFloat('#,###,###,##0.00',tot_pag);
       total_ret.text := FormatFloat('#,###,###,##0.00',tot_ret);
       dt_studio.tb_totais.post;
   finally
   end;
end;

procedure Tfrm_retiradas.novoClick(Sender: TObject);
begin //Verificando inform��o da abertura do caixa e incluindo registros na tabela
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
   If Application.Messagebox('Confirma Lan�amento de Retirada ou Pagamento do Caixa? ', 'Confirma��o',
   mb_Iconquestion + Mb_OkCancel + Mb_DefButton1) = IdOk then
   else
   exit;
   dt_studio.tb_retiradas.Append;
   id_retiradas.ReadOnly := false;
   pagamentos.ReadOnly := false;
   retiradas.ReadOnly := false;
   data.ReadOnly := true;
   DBMemo1.ReadOnly := false;
   nav_ret.Enabled := false;
   novo.Enabled := false;
   gravar.Enabled := true;
   cancel.Enabled := true;
   sair.Enabled := false;
   pagamentos.SetFocus;
   dt_studio.tb_retiradas.Append;
   dt_studio.tb_retiradasDATA.AsString := DateToStr(Date);
   usuario.Text := dt_studio.tb_cadusu.FieldByName('NOM_APELIDO').AsString;
end;

procedure Tfrm_retiradas.sairClick(Sender: TObject);
begin //Fechando as tabelas
  dt_studio.tb_retiradas.Close;
  dt_studio.tb_totais.close;
  Close;
end;

procedure Tfrm_retiradas.sButton1Click(Sender: TObject);
begin
   frm_aut_retiradas.showmodal;
end;

procedure Tfrm_retiradas.sButton3Click(Sender: TObject);
var
  tot_pag : currency;
  tot_ret : currency;
begin//Filtrando por Data
   dt_studio.tb_retiradas.close;
   dt_studio.tb_retiradas.Filtered := False;
   dt_studio.tb_retiradas.Open;
   dt_studio.tb_retiradas.Filter := 'DATA = ' + QuotedStr(data_pesq.Text);
   dt_studio.tb_retiradas.Filtered := True;
   dt_studio.tb_retiradas.locate('DATA',data_pesq.text,[]);
   tot_pag := 0;
   tot_ret := 0;
   dt_studio.tb_retiradas.first;
   dt_studio.tb_retiradas.DisableControls;
  try
    while not dt_studio.tb_retiradas.eof do
      begin
         tot_pag := tot_pag + dt_studio.tb_retiradas.FieldByName('PAGAMENTOS').AsCurrency;
         tot_ret := tot_ret + dt_studio.tb_retiradas.FieldByName('RETIRADAS').AsCurrency;
         dt_studio.tb_retiradas.next;
      end;
      dt_studio.tb_retiradas.EnableControls;
      total_pag.text := FormatFloat('#,###,###,##0.00',tot_pag);
      total_ret.text := FormatFloat('#,###,###,##0.00',tot_ret);
  finally
  end;
end;

end.
