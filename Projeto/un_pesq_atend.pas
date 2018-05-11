{ ***************************************************
  * Elaborado para: Studio Atraente                 *
  * Modulo     : Tela de Consulta Cad. Atendentes   *
  * Analista   : Jo�o Douglas                       *
  * Elabora��o : Jo�o Douglas                       *
  * Ult Alt.   : 07/12/2016                         *
  *************************************************** }

unit un_pesq_atend;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, sButton, Vcl.Grids,
  Vcl.DBGrids, Vcl.ExtCtrls, sPanel;

type
  Tfrm_pesq_atend = class(TForm)
    sPanel1: TsPanel;
    DBGrid1: TDBGrid;
    sButton1: TsButton;
    Edit1: TEdit;
    sButton2: TsButton;
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure sButton1Click(Sender: TObject);
    procedure sButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    cod: integer;
    { Public declarations }
  end;

var
  frm_pesq_atend: Tfrm_pesq_atend;

implementation

uses un_dtstudio, un_orcamento, un_vendas;

{$R *.dfm}

procedure Tfrm_pesq_atend.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin //Define a cor da fonte de acordo com a situa��o
   if dt_studio.tb_cadatendsituacao.asstring = 'A' then
       begin
           dbgrid1.Canvas.Font.Color := clBlack;
           dbgrid1.Canvas.Brush.Color := $00E6FFFF;
       end
       else
       begin
           dbgrid1.Canvas.Font.Color := clRed;
           dbgrid1.Canvas.Brush.Color := $00E6FFFF;
       end;
       If odd(dt_studio.tb_cadatend.RecNo) then //Deixando o grid zebrado
       begin
          dbgrid1.Canvas.Brush.Color:= clBlack;
          dbgrid1.Canvas.Brush.Color:= $00FFF5EC;
       end
       else
       begin
          dbgrid1.Canvas.Brush.Color:= clBlack;
          dbgrid1.Canvas.Brush.Color:= clWhite;
       end;
       dbgrid1.Canvas.FillRect(Rect);
       dbgrid1.DefaultDrawDataCell(Rect, dbgrid1.columns[datacol].field, State);
end;

procedure Tfrm_pesq_atend.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  // chamando a tela cadastro de servi�os
  Case cod Of
    1:
      Begin
        { dt_studio.tb_movservicoCOD_ATEND.asstring :=
         dt_studio.tb_cadatendID_FUNC.asstring;
         dt_studio.tb_movservicoNOM_ATEND.asstring :=
         dt_studio.tb_cadatendNOM_FUNC.asstring;}
      end;
    2:
      Begin
         dt_studio.tb_vendasCOD_VEND.asstring :=
         dt_studio.tb_cadatendID_FUNC.asstring;
         dt_studio.tb_vendasNOM_VEND.asstring :=
         dt_studio.tb_cadatendNOM_FUNC.asstring;
         frm_vendas.cod_vend.setfocus;
      end;
  end;
  frm_pesq_atend.Close;
end;

procedure Tfrm_pesq_atend.FormShow(Sender: TObject);
begin //Abrindo a Tabela e focando no edit
  dt_studio.tb_cadatend.open;
  Edit1.setfocus;
end;

procedure Tfrm_pesq_atend.sButton1Click(Sender: TObject);
begin //Fechando a tabela
  dt_studio.tb_cadatend.Close;
  Close;
end;

procedure Tfrm_pesq_atend.sButton2Click(Sender: TObject);
var
  Sql: string;
begin //Pesquisando por Nome
  dt_studio.tb_cadatend.Close;
  dt_studio.tb_cadatend.Sql.Clear;
  dt_studio.tb_cadatend.Sql.Add('select * from CAD_FUNC');
  Sql := 'where NOM_FUNC like ' + QuotedStr('%' + Edit1.Text + '%');
  dt_studio.tb_cadatend.Sql.Add(Sql);
  dt_studio.tb_cadatend.Sql.Add('order by NOM_FUNC');
  dt_studio.tb_cadatend.open;
end;

end.





