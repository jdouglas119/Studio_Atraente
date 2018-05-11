{ ***************************************************
  * Elaborado para: Studio Atraente                 *
  * Modulo     : Chame Rel Valor por Atend.         *
  * Analista   : João Douglas                       *
  * Elaboração : João Douglas                       *
  * Ult Alt.   : 01/09/2016                         *
  *************************************************** }

unit un_chama_valor_atend;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, sButton, Vcl.Grids,
  Vcl.DBGrids, Vcl.Buttons, sBitBtn, Vcl.Mask, RpCon, RpConDS, RpDefine, RpRave;

type
  Tfrm_rel_valor_atend = class(TForm)
    DatIni: TMaskEdit;
    DatFim: TMaskEdit;
    Label2: TLabel;
    Label1: TLabel;
    Edit1: TEdit;
    Label3: TLabel;
    frm_chama_relcli: TsBitBtn;
    DBGrid1: TDBGrid;
    sButton1: TsButton;
    SpeedButton1: TSpeedButton;
    rv_relatend: TRvProject;
    rvdata_atend: TRvDataSetConnection;
    procedure sButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure frm_chama_relcliClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_rel_valor_atend: Tfrm_rel_valor_atend;

implementation

uses un_dtstudio, un_relatorios;

{$R *.dfm}

procedure Tfrm_rel_valor_atend.FormKeyPress(Sender: TObject; var Key: Char);
begin //usando a tecla [ENTER]
   If Key = #13 Then
     Selectnext(ActiveControl, true, true);
end;

procedure Tfrm_rel_valor_atend.FormShow(Sender: TObject);
begin //Abrindo as tabelas
   dt_studio.tb_comandas.open;
   dt_studio.tb_cadatend.open;
end;

procedure Tfrm_rel_valor_atend.frm_chama_relcliClick(Sender: TObject);
begin
// Comandos para verificação de período e chamando o layout do relatório
    dt_studio.tb_cadatend.close;
    dt_studio.tb_cadatend.Sql.Clear;
    dt_studio.tb_cadatend.Sql.Add('select * from CAD_FUNC');
    dt_studio.tb_cadatend.Sql.Add('where NOM_FUNC like ' + QuotedStr('%' + Edit1.Text + '%'));
    dt_studio.tb_cadatend.Sql.Add('order by NOM_FUNC');
    dt_studio.tb_cadatend.open;
end;

procedure Tfrm_rel_valor_atend.sButton1Click(Sender: TObject);
begin //Fechando as tabelas
    dt_studio.tb_comandas.close;
    dt_studio.tb_movservico.close;
    dt_studio.tb_cadatend.close;
    close;
end;

end.
