unit un_impcom;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, sButton, Vcl.ExtCtrls;

type
  Tfrm_impcom = class(TForm)
    radio: TRadioGroup;
    sButton1: TsButton;
    procedure sButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_impcom: Tfrm_impcom;

implementation

{$R *.dfm}

uses un_relatorios;

procedure Tfrm_impcom.sButton1Click(Sender: TObject);
begin
// Chamando o layout do relatório e indexando por vencimento//
  if radio.ItemIndex = 0 then
    begin
       frm_relatorios.rel_comandas.loadfromfile('\\statraente\projeto_studio atraente\relatorios\rel_comanda_cli.fr3');
       frm_relatorios.rel_comandas.ShowReport();
       frm_impcom.close;
    end;
  if radio.ItemIndex = 1 then
    begin
       frm_relatorios.rel_comandas.loadfromfile('\\statraente\projeto_studio atraente\relatorios\rel_comanda_cli.fr3');
       frm_relatorios.rel_comandas.PrepareReport;
       frm_relatorios.rel_comandas.Print;
       frm_impcom.close;
    end;
end;

end.
