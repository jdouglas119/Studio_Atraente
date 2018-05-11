unit un_qrservcli;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, QuickRpt, Vcl.ExtCtrls;

type
  Tqrep_servcli = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  qrep_servcli: Tqrep_servcli;

implementation

uses un_dtstudio;

{$R *.dfm}

end.
