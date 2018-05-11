{ ***************************************************
  * Elaborado para: Studio Atraente                 *
  * Modulo     : Relat�rio de Aposte                *
  * Analista   : Jo�o Douglas                       *
  * Elabora��o : Jo�o Douglas                       *
  * Ult Alt.   : 31/01/2017                         *
  *************************************************** }

unit un_rel_aposte;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, sButton, Vcl.Mask;

type
  Tfrm_rel_aposte = class(TForm)
    Label1: TLabel;
    DatIni: TMaskEdit;
    Label2: TLabel;
    DatFim: TMaskEdit;
    sButton1: TsButton;
    sButton2: TsButton;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure sButton1Click(Sender: TObject);
    procedure sButton2Click(Sender: TObject);
    procedure DatFimExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_rel_aposte: Tfrm_rel_aposte;

implementation

{$R *.dfm}

uses un_dtstudio, un_relatorios;

procedure Tfrm_rel_aposte.DatFimExit(Sender: TObject);
begin //Focando no bot�o
   sbutton1.SetFocus;
end;

procedure Tfrm_rel_aposte.FormKeyPress(Sender: TObject; var Key: Char);
begin //Usando a tecla [ENTER]
   If Key = #13 Then
     Selectnext(ActiveControl, true, true);
end;

procedure Tfrm_rel_aposte.FormShow(Sender: TObject);
begin //Focando no campo e abrindo a tabela
   DatIni.SetFocus;
   dt_studio.tb_aposte.open;
end;

procedure Tfrm_rel_aposte.sButton1Click(Sender: TObject);
begin// Comando para escolher o tipo de situa��o para emiss�o do relat�rio//
   dt_studio.tb_aposte.Close;
   dt_studio.tb_aposte.Filtered := true;
   dt_studio.tb_aposte.open;
   dt_studio.tb_aposte.Filter := 'DATA >= '#39 + DatIni.text +#39' And DATA <= '#39 + DatFim.text + #39;
   dt_studio.tb_aposte.open;
   if dt_studio.tb_aposte.RecordCount > 0 then
     begin
        // Comandos para verifica��o de per�odo e chamando o layout do relat�rio
        frm_relatorios.rel_aposte.loadfromfile('\\statraente\projeto_studio atraente\relatorios\rel_aposte.fr3');
        with frm_relatorios.rel_aposte.Variables do
           begin
               Variables['perido'] := QuotedStr(Datini.Text + ' at� ' + DatFim.Text);
               frm_relatorios.rel_aposte.showreport(true);
               close;
           end;
     end
     else
     Showmessage('N�o existe movimento para este PER�ODO!!!');
     dt_studio.tb_aposte.close;
     dt_studio.tb_aposte.Filtered:=false;
end;

procedure Tfrm_rel_aposte.sButton2Click(Sender: TObject);
begin//Fechando a tabela
   dt_studio.tb_aposte.close;
   close;
end;

end.
