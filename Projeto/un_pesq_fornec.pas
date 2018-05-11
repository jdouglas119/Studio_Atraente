{ ***************************************************
  * Elaborado para: Studio Atraente                 *
  * Modulo     : Tela de Consulta Cad. Fornecedores *
  * Analista   : João Douglas                       *
  * Elaboração : João Douglas                       *
  * Ult Alt.   : 07/12/2016                         *
  *************************************************** }

unit un_pesq_fornec;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls,
  sButton, Vcl.ExtCtrls, sPanel;

type
  Tfrm_pesq_fornec = class(TForm)
    sPanel1: TsPanel;
    Edit1: TEdit;
    sButton2: TsButton;
    DBGrid1: TDBGrid;
    sButton1: TsButton;
    procedure FormShow(Sender: TObject);
    procedure sButton1Click(Sender: TObject);
    procedure sButton2Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1CellClick(Column: TColumn);
  private
    { Private declarations }
  public
    cod: integer;
    { Public declarations }
  end;

var
  frm_pesq_fornec: Tfrm_pesq_fornec;

implementation

uses un_dtstudio, un_movservico;

{$R *.dfm}

procedure Tfrm_pesq_fornec.DBGrid1CellClick(Column: TColumn);
begin// chamando a tela cadastro de serviços
  Case cod Of
    1:
      Begin
        dt_studio.tb_movestCOD_FORNEC.asstring := dt_studio.tb_cadfornecID_FORNEC.asstring;
        dt_studio.tb_movestNOM_FORNEC.asstring := dt_studio.tb_cadfornecNOM_FORNEC.asstring;
      end;
  end;
  frm_movestoque.num_nota.setfocus;
  frm_pesq_fornec.Close;
end;

procedure Tfrm_pesq_fornec.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin //Definindo o tipo de fonte de acordo com a situação
   if dt_studio.tb_cadfornecsituacao.asstring = 'A' then
       begin
           dbgrid1.Canvas.Font.Color := clBlack;
           dbgrid1.Canvas.Brush.Color := $00E6FFFF;
       end
       else
       begin
           dbgrid1.Canvas.Font.Color := clRed;
           dbgrid1.Canvas.Brush.Color := $00E6FFFF;
       end;
       If odd(dt_studio.tb_cadfornec.RecNo) then  //Deixando o dbgrid zebrado
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

procedure Tfrm_pesq_fornec.FormShow(Sender: TObject);
begin //Abrindo a tabela e focando no edit
  dt_studio.tb_cadfornec.open;
  Edit1.setfocus;
end;

procedure Tfrm_pesq_fornec.sButton1Click(Sender: TObject);
begin //Fechando a tabela
  dt_studio.tb_cadfornec.Close;
  Close;
end;

procedure Tfrm_pesq_fornec.sButton2Click(Sender: TObject);
var
  Sql: string;
begin //Pesquisando por Nome de Fornecedor
  dt_studio.tb_cadfornec.Close;
  dt_studio.tb_cadfornec.Sql.Clear;
  dt_studio.tb_cadfornec.Sql.Add('select * from CAD_FORNEC');
  Sql := 'where NOM_FORNEC like ' + QuotedStr('%' + Edit1.Text + '%');
  dt_studio.tb_cadfornec.Sql.Add(Sql);
  dt_studio.tb_cadfornec.Sql.Add('order by NOM_FORNEC');
  dt_studio.tb_cadfornec.open;
end;

end.
