{ ***************************************************
  * Elaborado para: Studio Atraente                 *
  * Modulo     : Relatório de Mov. Caixa            *
  * Analista   : João Douglas                       *
  * Elaboração : João Douglas                       *
  * Ult Alt.   : 07/12/2016                         *
  *************************************************** }

unit un_chama_movcaixa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, sButton, Vcl.Mask;

type
  Tfrm_chama_relcaixa = class(TForm)
    DatIni: TMaskEdit;
    Label1: TLabel;
    Label2: TLabel;
    DatFim: TMaskEdit;
    sButton1: TsButton;
    sButton2: TsButton;
    procedure sButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure sButton2Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DatFimExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_chama_relcaixa: Tfrm_chama_relcaixa;

implementation

{$R *.dfm}

uses un_dtstudio, un_relatorios;

procedure Tfrm_chama_relcaixa.DatFimExit(Sender: TObject);
begin //Focando no botão
   sbutton1.SetFocus;
end;

procedure Tfrm_chama_relcaixa.FormKeyPress(Sender: TObject; var Key: Char);
begin //Comando para usar a tecla [ENTER]
   If Key = #13 Then
     Selectnext(ActiveControl, true, true);
end;

procedure Tfrm_chama_relcaixa.FormShow(Sender: TObject);
begin //Focando no edit e abrindo a tabela
   DatIni.SetFocus;
   dt_studio.tb_rec_caixa.open;
end;

procedure Tfrm_chama_relcaixa.sButton1Click(Sender: TObject);
begin
   // Comando para escolher o tipo de situação para emissão do relatório//
   dt_studio.tb_rec_caixa.Close;
   dt_studio.tb_rec_caixa.Filtered := true;
   dt_studio.tb_rec_caixa.open;
   dt_studio.tb_rec_caixa.Filter := 'DATA_REC >= '#39 + DatIni.text +
   #39' And DATA_REC <= '#39 + DatFim.text + #39;
   dt_studio.tb_rec_caixa.open;
   if dt_studio.tb_rec_caixa.RecordCount > 0 then
     begin
        // Comandos para verificação de período e chamando o layout do relatório
        frm_relatorios.rel_movcaixa.loadfromfile
        ('\\statraente\projeto_studio atraente\relatorios\rel_movcaixa.fr3');
        with frm_relatorios.rel_movcaixa.Variables do
           begin
               Variables['periodo'] := QuotedStr(Datini.Text + ' até ' + DatFim.Text);
               frm_relatorios.rel_movcaixa.showreport(true);
               close;
           end;
     end
     else
     Showmessage('Não existe movimento para este PERÍODO!!!');
     dt_studio.tb_rec_caixa.close;
     dt_studio.tb_rec_caixa.Filtered:=false;
end;

procedure Tfrm_chama_relcaixa.sButton2Click(Sender: TObject);
begin //Fechando a tabela
   dt_studio.tb_rec_caixa.close;
   close;
end;

end.
