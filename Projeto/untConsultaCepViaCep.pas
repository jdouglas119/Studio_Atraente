//desenvolvido por Itamar P. Souza
//e-mail:itasouza@yahoo.com.br

unit untConsultaCepViaCep;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, xmldom, XMLIntf, StdCtrls, msxmldom, XMLDoc, Buttons,
  IdIOHandler, IdIOHandlerSocket, IdIOHandlerStack, IdSSL, IdSSLOpenSSL,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,  Mask,
  Vcl.ExtCtrls;

type
  TfrmConsultaCepViaCep = class(TForm)
    XMLDocument1: TXMLDocument;
    Memo1: TMemo;
    SSLIO: TIdSSLIOHandlerSocketOpenSSL;
    Panel1: TPanel;
    Label1: TLabel;
    editCep: TMaskEdit;
    btnOK: TBitBtn;
    SpeedButton1: TSpeedButton;
    procedure btnOKClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
   procedure ConsultaCEP(Cep: String);
  public
    { Public declarations }
  end;

var
  frmConsultaCepViaCep: TfrmConsultaCepViaCep;

implementation

{$R *.dfm}

{ TForm1 }

procedure TfrmConsultaCepViaCep.ConsultaCEP(Cep: String);
var
  tempXML :IXMLNode;
  tempNodePAI :IXMLNode;
  tempNodeFilho :IXMLNode;
  I :Integer;
begin
   Memo1.Clear;
   XMLDocument1.FileName := 'https://viacep.com.br/ws/'+Trim(Cep)+ '/xml/';
   XMLDocument1.Active := true;
   tempXML := XMLDocument1.DocumentElement;

   tempNodePAI := tempXML.ChildNodes.FindNode('logradouro');
   for i := 0 to tempNodePAI.ChildNodes.Count - 1 do
   begin
      tempNodeFilho := tempNodePAI.ChildNodes[i];
      memo1.Lines.Add('Logradouro ...: ' +  tempNodeFilho.Text);
   end;
   tempNodePAI := tempXML.ChildNodes.FindNode('bairro');
   for i := 0 to tempNodePAI.ChildNodes.Count - 1 do
   begin
      tempNodeFilho := tempNodePAI.ChildNodes[i];
      memo1.Lines.Add('Bairro ............: ' +  tempNodeFilho.Text);
   end;
   tempNodePAI := tempXML.ChildNodes.FindNode('localidade');
   for i := 0 to tempNodePAI.ChildNodes.Count - 1 do
   begin
      tempNodeFilho := tempNodePAI.ChildNodes[i];
      memo1.Lines.Add('Localidade .....: ' +  tempNodeFilho.Text);
   end;
   tempNodePAI := tempXML.ChildNodes.FindNode('uf');
   for i := 0 to tempNodePAI.ChildNodes.Count - 1 do
   begin
      tempNodeFilho := tempNodePAI.ChildNodes[i];
      memo1.Lines.Add('Uf ...................: ' +  tempNodeFilho.Text);
   end;
   tempNodePAI := tempXML.ChildNodes.FindNode('ibge');
   for i := 0 to tempNodePAI.ChildNodes.Count - 1 do
   begin
      tempNodeFilho := tempNodePAI.ChildNodes[i];
      memo1.Lines.Add('IBGE ...............: ' + tempNodeFilho.Text);
   end;
   tempNodePAI := tempXML.ChildNodes.FindNode('gia');
   for i := 0 to tempNodePAI.ChildNodes.Count - 1 do
   begin
      tempNodeFilho := tempNodePAI.ChildNodes[i];
      memo1.Lines.Add('gia ...: ' +  tempNodeFilho.Text);
   end;
end;

procedure TfrmConsultaCepViaCep.FormShow(Sender: TObject);
begin
   editcep.SetFocus;
end;

procedure TfrmConsultaCepViaCep.SpeedButton1Click(Sender: TObject);
begin
   close;
end;

procedure TfrmConsultaCepViaCep.btnOKClick(Sender: TObject);
begin
 if editCep.Text = '     -   ' then
   begin
     ShowMessage('Adicione um Cep...');
   end
   else
     begin
       ConsultaCEP(editCep.Text);
     end;
end;

end.
