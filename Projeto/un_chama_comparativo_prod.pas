{ ***************************************************
  * Elaborado para: Studio Atraente                 *
  * Modulo     : Relat�rio de Qtd Produtos          *
  * Analista   : Jo�o Douglas                       *
  * Elabora��o : Jo�o Douglas                       *
  * Ult Alt.   : 11/10/2016                         *
  *************************************************** }

unit un_chama_comparativo_prod;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, sButton, Vcl.Buttons,
  Vcl.Grids, Vcl.DBGrids, sBitBtn, Vcl.Mask, RpCon, RpConDS, RpDefine, RpRave;

type
  Tfrm_vendasprod = class(TForm)
    DatIni: TMaskEdit;
    Label2: TLabel;
    DatFim: TMaskEdit;
    Label1: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    frm_chama_relcli: TsBitBtn;
    DBGrid1: TDBGrid;
    SpeedButton1: TSpeedButton;
    sButton1: TsButton;
    rv_comparativo_prod: TRvProject;
    rv_dbcomparativo_prod: TRvDataSetConnection;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure sButton1Click(Sender: TObject);
    procedure frm_chama_relcliClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_vendasprod: Tfrm_vendasprod;

implementation

uses un_dtstudio, un_chama_valor_atend;

{$R *.dfm}

procedure Tfrm_vendasprod.FormKeyPress(Sender: TObject; var Key: Char);
begin
   If Key = #13 Then
     Selectnext(ActiveControl, true, true);
end;

procedure Tfrm_vendasprod.FormShow(Sender: TObject);
begin
   dt_studio.tb_cadprod.open;
end;

procedure Tfrm_vendasprod.frm_chama_relcliClick(Sender: TObject);
begin
// Comandos para verifica��o de per�odo e chamando o layout do relat�rio
  dt_studio.tb_cadprod.close;
  dt_studio.tb_cadprod.Sql.Clear;
  dt_studio.tb_cadprod.Sql.Add('select * from CAD_PROD');
  dt_studio.tb_cadprod.Sql.Add('where NOM_PROD like ' + QuotedStr('%' + Edit1.Text + '%'));
  dt_studio.tb_cadprod.Sql.Add('order by NOM_PROD');
  dt_studio.tb_cadprod.open;
end;

procedure Tfrm_vendasprod.sButton1Click(Sender: TObject);
begin
   dt_studio.tb_cadprod.close;
   close;
end;

end.
