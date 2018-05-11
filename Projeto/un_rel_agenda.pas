{ ***************************************************
  * Elaborado para: Studio Atraente                 *
  * Modulo     : Relat�rio de Agendamentos          *
  * Analista   : Jo�o Douglas                       *
  * Elabora��o : Jo�o Douglas                       *
  * Ult Alt.   : 07/12/2016                         *
  *************************************************** }

unit un_rel_agenda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, sButton, Vcl.Buttons,
  sBitBtn, Vcl.Mask;

type
  Tfrm_rel_agenda = class(TForm)
    frm_chama_relcli: TsBitBtn;
    sButton1: TsButton;
    Label1: TLabel;
    DatIni: TMaskEdit;
    Label2: TLabel;
    DatFim: TMaskEdit;
    procedure frm_chama_relcliClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure sButton1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_rel_agenda: Tfrm_rel_agenda;

implementation

{$R *.dfm}

uses un_dtstudio, un_relatorios;

procedure Tfrm_rel_agenda.FormClose(Sender: TObject; var Action: TCloseAction);
begin //Fechando a tabela
   dt_studio.tb_agenda.close;
end;

procedure Tfrm_rel_agenda.FormKeyPress(Sender: TObject; var Key: Char);
begin //Usando a tecla [ENTER]
   If Key = #13 Then
     Selectnext(ActiveControl, true, true);
end;

procedure Tfrm_rel_agenda.FormShow(Sender: TObject);
begin //Abrindo a tabela
   dt_studio.tb_agenda.open;
   datini.SetFocus;
end;

procedure Tfrm_rel_agenda.frm_chama_relcliClick(Sender: TObject);
begin //Comando para gerar o relat�rio
    Try
       with dt_studio.qry_agenda do
          begin
              close;
              SQL.Clear;
              SQL.Text:='SELECT ID_CLI, NOM_CLI, DATA_AGENDA, HORARIO, ATENDENTE '+
              'FROM CAD_AGENDA '+
              'WHERE DATA_AGENDA >= :DTINI AND DATA_AGENDA <= :DTFIM '+
              'ORDER BY NOM_CLI';
              Parameters.ParamByName('dtini').Value := StrToDate(DatIni.Text);
              Parameters.ParamByName('dtfim').Value := StrToDate(DatFim.Text);
              open;
              if RecordCount > 0 Then
              begin
                  frm_relatorios.rel_agenda.loadfromfile // Chamando o layout do relat�rio Agendamentos
                  ('\\statraente\Projeto_Studio Atraente\Relatorios\rel_agenda.fr3');
                  with frm_relatorios.rel_agenda.Variables do
                     begin
                        Variables['periodo'] := QuotedStr(Datini.Text + ' at� ' + DatFim.Text);
                        frm_relatorios.rel_agenda.showreport(true);
                        frm_rel_agenda.Close;
                     end;
              end
              else
                 Showmessage('N�o existe Agendamento para este PER�ODO!!!');
              close;
          end;
       Finally
    end;
end;

procedure Tfrm_rel_agenda.sButton1Click(Sender: TObject);
begin //Fechando a tela
   close;
end;

end.
