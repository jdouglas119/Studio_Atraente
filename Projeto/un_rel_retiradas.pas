{ ***************************************************
  * Elaborado para: Studio Atraente                 *
  * Modulo     : Relat�rio de Retiradas e Pag.      *
  * Analista   : Jo�o Douglas                       *
  * Elabora��o : Jo�o Douglas                       *
  * Ult Alt.   : 07/12/2016                         *
  *************************************************** }

unit un_rel_retiradas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, sButton, Vcl.Mask;

type
  Tfrm_rel_retiradas = class(TForm)
    DatIni: TMaskEdit;
    Label1: TLabel;
    Label2: TLabel;
    DatFim: TMaskEdit;
    sButton1: TsButton;
    sButton2: TsButton;
    procedure sButton1Click(Sender: TObject);
    procedure sButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DatFimExit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_rel_retiradas: Tfrm_rel_retiradas;

implementation

{$R *.dfm}

uses un_dtstudio, un_relatorios;

procedure Tfrm_rel_retiradas.DatFimExit(Sender: TObject);
begin //Focando no bot�o
   sbutton1.SetFocus;
end;

procedure Tfrm_rel_retiradas.FormKeyPress(Sender: TObject; var Key: Char);
begin //Usando a tecla [ENTER]
   If Key = #13 Then
     Selectnext(ActiveControl, true, true);
end;

procedure Tfrm_rel_retiradas.FormShow(Sender: TObject);
begin //Focando no campo e abrindo a tabela
   DatIni.SetFocus;
   dt_studio.tb_retiradas.open;
end;

procedure Tfrm_rel_retiradas.sButton1Click(Sender: TObject);
begin// Comando para escolher o tipo de situa��o para emiss�o do relat�rio//
   dt_studio.tb_retiradas.Close;
   dt_studio.tb_retiradas.Filtered := true;
   dt_studio.tb_retiradas.open;
   dt_studio.tb_retiradas.Filter := 'DATA >= '#39 + DatIni.text +
   #39' And DATA <= '#39 + DatFim.text + #39;
   dt_studio.tb_retiradas.open;
   if dt_studio.tb_retiradas.RecordCount > 0 then
     begin
        // Comandos para verifica��o de per�odo e chamando o layout do relat�rio
        frm_relatorios.rel_retiradas.loadfromfile
        ('\\statraente\projeto_studio atraente\relatorios\rel_retiradas.fr3');
        with frm_relatorios.rel_retiradas.Variables do
           begin
               Variables['periodo'] := QuotedStr(Datini.Text + ' at� ' + DatFim.Text);
               frm_relatorios.rel_retiradas.showreport(true);
               close;
           end;
     end
     else
     Showmessage('N�o existe movimento para este PER�ODO!!!');
     dt_studio.tb_retiradas.close;
     dt_studio.tb_retiradas.Filtered:=false;
end;

procedure Tfrm_rel_retiradas.sButton2Click(Sender: TObject);
begin //Fechando a tabela
   dt_studio.tb_retiradas.close;
   close;
end;

end.
