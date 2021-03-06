unit un_comp_totais;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, sButton, Vcl.Grids, Vcl.DBGrids, Vcl.Samples.Gauges, Vcl.ExtCtrls;

type
  Tfrm_comp_totais = class(TForm)
    DBGrid1: TDBGrid;
    sButton1: TsButton;
    progress: TGauge;
    Panel1: TPanel;
    novo: TsButton;
    editar: TsButton;
    gravar: TsButton;
    cancelar: TsButton;
    fechar: TsButton;
    procedure FormShow(Sender: TObject);
    procedure gravarClick(Sender: TObject);
    procedure fecharClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure novoClick(Sender: TObject);
    procedure editarClick(Sender: TObject);
    procedure cancelarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure sButton1Click(Sender: TObject);
    procedure FormClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_comp_totais: Tfrm_comp_totais;

implementation

uses un_dtstudio, DateUtils;

{$R *.dfm}

procedure Tfrm_comp_totais.FormClick(Sender: TObject);
begin
   sbutton1.enabled := true;
end;

procedure Tfrm_comp_totais.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   dt_studio.tb_comp_totais.close;
   dt_studio.tb_arquivo_totais.Close;
end;

procedure Tfrm_comp_totais.FormKeyPress(Sender: TObject; var Key: Char);
begin// Comandos para a tecla [ENTER]//
  If Key = #13 Then
    Selectnext(ActiveControl, true, true);
end;

procedure Tfrm_comp_totais.FormShow(Sender: TObject);
begin
   novo.SetFocus;
   sbutton1.enabled := false;
   dt_studio.tb_comp_totais.open;
   dt_studio.tb_arquivo_totais.open;
end;

procedure Tfrm_comp_totais.gravarClick(Sender: TObject);
var jan,fev,mar,abr,mai,jun,jul,ago,sete,outu,nov,dez : currency;
begin//Gravando registros na tabela
   If Application.Messagebox('Confirma Grava��o do Valor do M�s ? ', 'Confirma��o',
   mb_Iconquestion + Mb_OkCancel + Mb_DefButton1) = IdOk then
   else
   exit;
   novo.Enabled := true;
   editar.Enabled := true;
   cancelar.Enabled := false;
   gravar.Enabled := false;
   dbgrid1.ReadOnly := true;
   fechar.Enabled := true;
   dt_studio.tb_comp_totais.post;
   novo.SetFocus;
   dt_studio.tb_comp_totais.edit;
   jan := 0;
   fev := 0;
   mar := 0;
   abr := 0;
   mai := 0;
   jun := 0;
   jul := 0;
   ago := 0;
   sete := 0;
   outu := 0;
   nov := 0;
   dez := 0;
   try
     while not dt_studio.tb_comp_totais.eof do
       begin
         dt_studio.tb_comp_totais.edit;
         dt_studio.tb_comp_totaisTOT_ANO.Value := dt_studio.tb_comp_totaisTOT_JAN.Value +
         dt_studio.tb_comp_totaisTOT_FEV.Value + dt_studio.tb_comp_totaisTOT_MAR.Value +
         dt_studio.tb_comp_totaisTOT_ABR.Value + dt_studio.tb_comp_totaisTOT_MAI.Value +
         dt_studio.tb_comp_totaisTOT_JUN.Value + dt_studio.tb_comp_totaisTOT_JUL.Value +
         dt_studio.tb_comp_totaisTOT_AGO.Value + dt_studio.tb_comp_totaisTOT_SET.Value +
         dt_studio.tb_comp_totaisTOT_OUT.Value + dt_studio.tb_comp_totaisTOT_NOV.Value +
         dt_studio.tb_comp_totaisTOT_DEZ.Value;
         jan := jan + dt_studio.tb_comp_totais.FieldByName('TOT_JAN').AsCurrency;
         fev := fev + dt_studio.tb_comp_totais.FieldByName('TOT_FEV').AsCurrency;
         mar := mar + dt_studio.tb_comp_totais.FieldByName('TOT_MAR').AsCurrency;
         abr := abr + dt_studio.tb_comp_totais.FieldByName('TOT_ABR').AsCurrency;
         mai := mai + dt_studio.tb_comp_totais.FieldByName('TOT_MAI').AsCurrency;
         jun := jun + dt_studio.tb_comp_totais.FieldByName('TOT_JUN').AsCurrency;
         jul := jul + dt_studio.tb_comp_totais.FieldByName('TOT_JUL').AsCurrency;
         ago := ago + dt_studio.tb_comp_totais.FieldByName('TOT_AGO').AsCurrency;
         sete := sete + dt_studio.tb_comp_totais.FieldByName('TOT_SET').AsCurrency;
         outu := outu + dt_studio.tb_comp_totais.FieldByName('TOT_OUT').AsCurrency;
         nov := nov + dt_studio.tb_comp_totais.FieldByName('TOT_NOV').AsCurrency;
         dez := dez + dt_studio.tb_comp_totais.FieldByName('TOT_DEZ').AsCurrency;
         dt_studio.tb_comp_totais.post;
         dt_studio.tb_comp_totais.next;
       end;
   finally
  end;
end;

procedure Tfrm_comp_totais.cancelarClick(Sender: TObject);
begin//Cancelar registros na tabela
   If Application.Messagebox('Confirma Cancelamento do Valor do M�s ? ', 'Confirma��o',
   mb_Iconquestion + Mb_OkCancel + Mb_DefButton1) = IdOk then
   else
   exit;
   dbgrid1.ReadOnly := true;
   novo.Enabled := true;
   editar.Enabled := true;
   cancelar.Enabled := false;
   gravar.Enabled := false;
   fechar.Enabled := true;
   dt_studio.tb_comp_totais.cancel;
   dbgrid1.SetFocus;
end;

procedure Tfrm_comp_totais.editarClick(Sender: TObject);
begin//Alterando registros na tabela
   If Application.Messagebox('Confirma Altera��o do Valor do M�s ? ', 'Confirma��o',
   mb_Iconquestion + Mb_OkCancel + Mb_DefButton1) = IdOk then
   else
   exit;
   dbgrid1.ReadOnly := false;
   novo.Enabled := false;
   editar.Enabled := false;
   cancelar.Enabled := true;
   gravar.Enabled := true;
   fechar.Enabled := false;
   dt_studio.tb_comp_totais.edit;
   dbgrid1.SetFocus;
end;

procedure Tfrm_comp_totais.fecharClick(Sender: TObject);
begin
   close;
end;

procedure Tfrm_comp_totais.novoClick(Sender: TObject);
begin//Inserindo registros na tabela
   If Application.Messagebox('Confirma Lan�amento do Valor do M�s ? ', 'Confirma��o',
   mb_Iconquestion + Mb_OkCancel + Mb_DefButton1) = IdOk then
   else
   exit;
   dbgrid1.ReadOnly := false;
   novo.Enabled := false;
   editar.Enabled := false;
   cancelar.Enabled := true;
   gravar.Enabled := true;
   fechar.Enabled := false;
   dbgrid1.SetFocus;
end;

procedure Tfrm_comp_totais.sButton1Click(Sender: TObject);
var
  codigo: integer;
  a: integer;
  i: integer;
  NomeCampo: String;
begin// Exortando movimentos do caixa
   dt_studio.tb_comp_totais.Edit;
   If Application.Messagebox('Confirma Exporta��o dos Valores? ', 'Confirma��o',
      mb_Iconquestion + Mb_OkCancel + Mb_DefButton2) = IdOk then
   else
   exit;
   dt_studio.tb_comp_totais.Open;
   progress.MaxValue := dt_studio.tb_comp_totais.RecordCount;
   dt_studio.tb_comp_totais.First;
   While Not dt_studio.tb_comp_totais.Eof Do
     begin
         progress.Progress := progress.Progress + 1;
         dt_studio.tb_arquivo_totais.Append;
         For i := 0 To dt_studio.tb_comp_totais.FieldCount - 1 Do
         begin
            NomeCampo := dt_studio.tb_comp_totais.Fields[i].FieldName;
            dt_studio.tb_arquivo_totais.FieldbyName(NomeCampo).value :=
            dt_studio.tb_comp_totais.FieldbyName(NomeCampo).value;
         end;
         dt_studio.tb_arquivo_totais.post;
         dt_studio.tb_comp_totais.Next;
     end;
     showmessage('EXPORTA��O REALIZADA COM SUCESSO!');
     dt_studio.tb_comp_totais.First;
     While Not dt_studio.tb_comp_totais.Eof Do
     dt_studio.tb_comp_totais.Delete;
end;

end.
