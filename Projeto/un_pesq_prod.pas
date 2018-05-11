{ ***************************************************
  * Elaborado para: Studio Atraente                 *
  * Modulo     : Tela de Consulta Cad. Produtos     *
  * Analista   : Jo�o Douglas                       *
  * Elabora��o : Jo�o Douglas                       *
  * Ult Alt.   : 28/07/2016                         *
  *************************************************** }

unit un_pesq_prod;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls,
  sButton, Vcl.ExtCtrls, sPanel;

type
  Tfrm_pesq_prod = class(TForm)
    sPanel1: TsPanel;
    Edit1: TEdit;
    sButton2: TsButton;
    DBGrid1: TDBGrid;
    sButton1: TsButton;
    procedure FormShow(Sender: TObject);
    procedure sButton1Click(Sender: TObject);
    procedure sButton2Click(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    cod: integer;
    { Public declarations }
  end;

var
  frm_pesq_prod: Tfrm_pesq_prod;

implementation

uses un_dtstudio, un_movservico, un_vendas, un_orcamento;

{$R *.dfm}

procedure Tfrm_pesq_prod.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  // chamando a tela cadastro de servi�os
  Case cod Of
    1:
      Begin
        dt_studio.tb_movestitensCOD_PROD.asstring :=dt_studio.tb_cadprodID_PROD.asstring;
        dt_studio.tb_movestitensNOM_PROD.asstring :=dt_studio.tb_cadprodNOM_PROD.asstring;
        frm_servico.quant.setfocus;
      end;
    2:
      Begin
        dt_studio.tb_correcaoestCOD_PROD.asstring :=dt_studio.tb_cadprodID_PROD.asstring;
        dt_studio.tb_correcaoestNOM_PROD.asstring :=dt_studio.tb_cadprodNOM_PROD.asstring;
      end;
  end;
  frm_pesq_prod.Close;
end;

procedure Tfrm_pesq_prod.FormShow(Sender: TObject);
begin
  dt_studio.tb_cadprod.open;
  Edit1.SetFocus;
end;

procedure Tfrm_pesq_prod.sButton1Click(Sender: TObject);
begin
  dt_studio.tb_cadprod.Close;
  Close;
end;

procedure Tfrm_pesq_prod.sButton2Click(Sender: TObject);
var
  Sql: string;
begin
  dt_studio.tb_cadprod.Close;
  dt_studio.tb_cadprod.Sql.Clear;
  dt_studio.tb_cadprod.Sql.Add('select * from CAD_PROD');
  Sql := 'where NOM_PROD like ' + QuotedStr('%' + Edit1.Text + '%');
  dt_studio.tb_cadprod.Sql.Add(Sql);
  dt_studio.tb_cadprod.Sql.Add('order by NOM_PROD');
  dt_studio.tb_cadprod.open;
end;

end.
