{ ***************************************************
  * Elaborado para: Studio Atraente                 *
  * Modulo     : Tela de Consulta Cad. Clientes     *
  * Analista   : Jo�o Douglas                       *
  * Elabora��o : Jo�o Douglas                       *
  * Ult Alt.   : 25/08/2017                         *
  *************************************************** }

unit un_pesq_cli;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, sButton, Vcl.Grids,
  Vcl.DBGrids, Vcl.ExtCtrls, sPanel;

type
  Tfrm_pesq_cli = class(TForm)
    sPanel1: TsPanel;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    sButton2: TsButton;
    sButton1: TsButton;
    procedure FormShow(Sender: TObject);
    procedure sButton2Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure sButton1Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
  private
    { Private declarations }
  public
    cod: integer;
    { Public declarations }
  end;

var
  frm_pesq_cli: Tfrm_pesq_cli;

implementation

uses un_dtstudio, un_orcamento, un_vendas, un_agenda, un_cadcli;

{$R *.dfm}

procedure Tfrm_pesq_cli.DBGrid1CellClick(Column: TColumn);
begin
  // chamando a tela cadastro de servi�os
  Case cod Of
     1:Begin
         dt_studio.tb_movservico.Edit;
         if dt_studio.tb_cadcliSITUACAO.AsString = 'I' then
            begin
               showmessage('CLIENTE ENCONTRA-SE COM O CADASTRO INATIVO!');
               exit;
               frm_servico.nom_cli.text := '';
               frm_servico.sbutton4.SetFocus;
            end
         else
         dt_studio.tb_movservicoCOD_CLLI.asstring := dt_studio.tb_cadcliID_CLI.asstring;
         dt_studio.tb_movservicoNOM_CLI.asstring := dt_studio.tb_cadcliNOM_CLI.asstring;
         dt_studio.tb_movservicoDT_ANI.asstring := dt_studio.tb_cadcliDT_ANI.asstring;
       end;
     2:Begin
         dt_studio.tb_agenda.Edit;
         dt_studio.tb_agendaID_CLI.asstring := dt_studio.tb_cadcliID_CLI.asstring;
         dt_studio.tb_agendaNOM_CLI.asstring := dt_studio.tb_cadcliNOM_CLI.asstring;
         frm_agenda.data.setfocus;
      end;
  end;
  if dt_studio.tb_movservicoNOM_CLI.asstring = dt_studio.tb_cadcliNOM_CLI.asstring then
     begin
         dt_studio.tb_movservicoCONT_VISITAS.Value := dt_studio.tb_cadcliCONT_VISITAS.Value + 1;
     end;
     frm_pesq_cli.Close;
end;

procedure Tfrm_pesq_cli.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin  //Definindo o tipo de fonte de acordo com o tipo de situa��o
   if dt_studio.tb_cadclisituacao.asstring = 'A' then
       begin
           dbgrid1.Canvas.Font.Color := clBlack;
           dbgrid1.Canvas.Brush.Color := $00E6FFFF;
       end
       else
       begin
           dbgrid1.Canvas.Font.Color := clRed;
           dbgrid1.Canvas.Brush.Color := $00E6FFFF;
       end;
       If odd(dt_studio.tb_cadcli.RecNo) then  //Deixando o dbgrid zebrado
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

procedure Tfrm_pesq_cli.FormClose(Sender: TObject; var Action: TCloseAction);
begin //Fechando a tela de pesquisa
   Close;
end;

procedure Tfrm_pesq_cli.FormShow(Sender: TObject);
begin //Abrindo a tabela e focando no edit
  dt_studio.tb_cadcli.open;
  Edit1.setfocus;
end;

procedure Tfrm_pesq_cli.sButton1Click(Sender: TObject);
begin //Abrindo a tela de cadastro dos clientes
   frm_cadcli.show;
end;

procedure Tfrm_pesq_cli.sButton2Click(Sender: TObject);
var
  Sql: string;
begin //Pesquisando por nome do cliente
  dt_studio.tb_cadcli.Close;
  dt_studio.tb_cadcli.Sql.Clear;
  dt_studio.tb_cadcli.Sql.Add('select * from CAD_CLI');
  Sql := 'where NOM_CLI like ' + QuotedStr('%' + Edit1.Text + '%');
  dt_studio.tb_cadcli.Sql.Add(Sql);
  dt_studio.tb_cadcli.Sql.Add('order by NOM_CLI');
  dt_studio.tb_cadcli.open;
end;

end.
