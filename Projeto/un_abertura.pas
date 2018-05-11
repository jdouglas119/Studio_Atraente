{ ***************************************************
  * Elaborado para: Studio Atraente                 *
  * Modulo     : Abertura do Caixa                  *
  * Analista   : João Douglas                       *
  * Elaboração : João Douglas                       *
  * Ult Alt.   : 15/07/2016                         *
  *************************************************** }

unit un_abertura;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, sButton, Vcl.Mask,
  Vcl.DBCtrls;

type
  Tfrm_abertura = class(TForm)
    Label1: TLabel;
    id_abre: TDBEdit;
    Label2: TLabel;
    data_abre: TDBEdit;
    Label3: TLabel;
    vr_abertura: TDBEdit;
    novo: TsButton;
    gravar: TsButton;
    procedure novoClick(Sender: TObject);
    procedure gravarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_abertura: Tfrm_abertura;

implementation

uses un_dtstudio;

{$R *.dfm}

procedure Tfrm_abertura.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dt_studio.tb_abertura.close;
  close;
end;

procedure Tfrm_abertura.FormKeyPress(Sender: TObject; var Key: Char);
begin // Comandos para a tecla [ENTER]//
  If Key = #13 Then
    Selectnext(ActiveControl, True, True);
end;

procedure Tfrm_abertura.FormShow(Sender: TObject);
begin
  showmessage('O CAIXA SÓ PODE SER ABERTO UMA ÚNICA VEZ AO DIA');
  novo.Enabled := True;
  gravar.Enabled := false;
  dt_studio.tb_abertura.open;
end;

procedure Tfrm_abertura.gravarClick(Sender: TObject);
begin
  dt_studio.tb_abertura.post;
  id_abre.ReadOnly := True;
  data_abre.ReadOnly := True;
  novo.Enabled := false;
  gravar.Enabled := false;
  vr_abertura.ReadOnly := True;
  If Application.Messagebox('Confirma Abertura do Caixa? ', 'Confirmação',
    mb_Iconquestion + Mb_OkCancel + Mb_DefButton1) = IdOk then
    close;
end;

procedure Tfrm_abertura.novoClick(Sender: TObject);
var
  codigo: integer; // Variável do tipo integer

  Function StrZero(Num: Real; Tam: integer): String;
  // Função para colocar zeros a esquerda
  var
    x, T: integer;
    N, D: String;

  begin
    N := FloatToStr(Num);
    T := Pos('.', N);
    D := '';
    if T <> 0 then
    begin
      N := Copy(N, 1, T - 1);
      D := Copy(N, T, 3)
    end;
    for x := 1 to Tam - length(N) do
      N := '0' + N;
    result := N + D;
  end;

begin // Inserindo registros na tabela
  id_abre.ReadOnly := false;
  data_abre.ReadOnly := false;
  vr_abertura.ReadOnly := false;
  novo.Enabled := false;
  gravar.Enabled := True;
  if dt_studio.tb_abertura.RecordCount = 0 Then
    codigo := 1
  else
  begin
    dt_studio.tb_abertura.Last;
    codigo := dt_studio.tb_aberturaID_ABERTURA.Asinteger + 1;
  end;
  dt_studio.tb_abertura.Append;
  dt_studio.tb_aberturaID_ABERTURA.AsString := StrZero(codigo, 1);
  dt_studio.tb_aberturaDT_CAIXA.AsString := DateTimetoStr(now());
  vr_abertura.setfocus;
end;

end.
