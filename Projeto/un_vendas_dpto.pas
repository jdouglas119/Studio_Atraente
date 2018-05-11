{ ***************************************************
  * Elaborado para: Studio Atraente                 *
  * Modulo     : Chame Rel Vendas                   *
  * Analista   : João Douglas                       *
  * Elaboração : João Douglas                       *
  * Ult Alt.   : 15/02/2017                         *
  *************************************************** }

unit un_vendas_dpto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RpCon, RpConDS, RpDefine, RpRave,
  Vcl.StdCtrls, sButton, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, sBitBtn, Vcl.Mask,
  Vcl.ExtCtrls;

type
  Tfrm_vendas_dpto = class(TForm)
    Radio: TRadioGroup;
    DatIni: TMaskEdit;
    Label1: TLabel;
    Label2: TLabel;
    DatFim: TMaskEdit;
    Label3: TLabel;
    Edit1: TEdit;
    frm_chama_relcli: TsBitBtn;
    DBGrid1: TDBGrid;
    SpeedButton1: TSpeedButton;
    sButton1: TsButton;
    Rv_vendas_dpto: TRvProject;
    RvDB_vendas_dpto: TRvDataSetConnection;
    RvDB_Vendas_geral: TRvDataSetConnection;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure sButton1Click(Sender: TObject);
    procedure RadioClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure frm_chama_relcliClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_vendas_dpto: Tfrm_vendas_dpto;

implementation

uses un_dtstudio;

{$R *.dfm}

procedure Tfrm_vendas_dpto.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
   If odd(dt_studio.tb_departamento.RecNo) then //Deixando o dbgrid zebrado
       begin
          dbgrid1.Canvas.Font.Color:= clBlack;
          dbgrid1.Canvas.Brush.Color:= $00FFF5EC;
       end
       else
       begin
          dbgrid1.Canvas.Font.Color:= clBlack;
          dbgrid1.Canvas.Brush.Color:= clWhite;
       end;
       DBgrid1.Canvas.FillRect(Rect);
       DBgrid1.DefaultDrawDataCell(Rect, DBgrid1.columns[DataCol].Field, State);
end;

procedure Tfrm_vendas_dpto.FormKeyPress(Sender: TObject; var Key: Char);
begin//Comando para usar o [ENTER]
  If Key = #13 Then
     Selectnext(ActiveControl, true, true);
end;

procedure Tfrm_vendas_dpto.FormShow(Sender: TObject);
begin
   dt_studio.tb_comandas.open;
   dt_studio.tb_departamento.open;
end;

procedure Tfrm_vendas_dpto.frm_chama_relcliClick(Sender: TObject);
begin// Comandos para verificação de período e chamando o layout do relatório
   dt_studio.tb_departamento.close;
   dt_studio.tb_departamento.Sql.Clear;
   dt_studio.tb_departamento.Sql.Add('select * from CAD_DEPARTAMENTO');
   dt_studio.tb_departamento.Sql.Add('where DEPARTAMENTO like ' + QuotedStr('%' + Edit1.Text + '%'));
   dt_studio.tb_departamento.Sql.Add('order by DEPARTAMENTO');
   dt_studio.tb_departamento.open;
end;

procedure Tfrm_vendas_dpto.RadioClick(Sender: TObject);
begin//Definindo o tipo de relatório
   if radio.ItemIndex = 0 then
   begin
      label3.Visible:=false;
      edit1.visible:=false;
      frm_chama_relcli.Visible:=false;
      dbgrid1.Visible:=false;
      datini.SetFocus;
   end;
   if radio.ItemIndex = 1 then
   begin
      label3.visible:=true;
      edit1.visible:=true;
      frm_chama_relcli.Visible:=true;
      dbgrid1.Visible:=true;
      datini.SetFocus;
   end;
end;

procedure Tfrm_vendas_dpto.sButton1Click(Sender: TObject);
begin
   dt_studio.tb_comandas.close;
   dt_studio.tb_departamento.close;
   close;
end;

procedure Tfrm_vendas_dpto.SpeedButton1Click(Sender: TObject);
begin//Gerando o Relatório comando SELECT
  case radio.ItemIndex of
       0:Begin
           Try
             with dt_studio.qry_vendasgeral do
                  begin
                     Close;
                     SQL.Clear;
                     SQL.Text:='SELECT DEPARTAMENTO, ID_SERV, ATENDENTE, '+
                               'SUM(TOT_SERV) AS TOTALLIQ, SUM(QUANT) AS TOT_QUANT '+
                               'FROM CAD_COMANDAS '+
                               'WHERE DATA_SERV >= :DTINI AND DATA_SERV <= :DTFIM '+
                               'GROUP BY DEPARTAMENTO, ID_SERV, ATENDENTE '+
                               'ORDER BY DEPARTAMENTO, ID_SERV, ATENDENTE ';
                     Parameters.ParamByName('dtini').Value := StrToDate(DatIni.Text);
                     Parameters.ParamByName('dtfim').Value := StrToDate(DatFim.Text);
                     open;
                     if RecordCount > 0 Then
                        begin
                           frm_vendas_dpto.Rv_vendas_dpto.Close;
                           frm_vendas_dpto.Rv_vendas_dpto.SetParam('periodo' , Datini.Text + ' até ' + DatFim.Text);
                           frm_vendas_dpto.Rv_vendas_dpto.ProjectFile:=('\\statraente\projeto_studio atraente\relatorios\rel_vendas_geral.rav');
                           frm_vendas_dpto.Rv_vendas_dpto.Execute;
                           frm_vendas_dpto.Rv_vendas_dpto.Close;
                        end
                     else
                        Showmessage('Não Existe(m) Vendas e Serviços para esse Período!!!');
                  end;
           except
               Showmessage('Existe(m) Erro(s) no Relatório de Vendas e Serviços!!!');
           end;
         end;
       1:Begin
           Try
             with dt_studio.qry_vendas_dpto do
                  begin
                     Close;
                     SQL.Clear;
                     SQL.Text:='SELECT ID_SERV, NOM_SERV, DATA_SERV, DEPARTAMENTO, '+
                               'SUM(TOT_SERV) AS TOTALLIQ, SUM(QUANT) AS TOT_QUANT '+
                               'FROM CAD_COMANDAS '+
                               'WHERE DATA_SERV >= :DTINI AND DATA_SERV <= :DTFIM AND DEPARTAMENTO = :CD '+
                               'GROUP BY ID_SERV, NOM_SERV, DATA_SERV, DEPARTAMENTO '+
                               'ORDER BY ID_SERV, NOM_SERV, DATA_SERV, DEPARTAMENTO ';
                     Parameters.ParamByName('dtini').Value := StrToDate(DatIni.Text);
                     Parameters.ParamByName('dtfim').Value := StrToDate(DatFim.Text);
                     Parameters.ParamByName('cd').Value := dt_studio.tb_departamento.FieldByName('DEPARTAMENTO').AsString;
                     open;
                     if RecordCount > 0 Then
                        begin
                           frm_vendas_dpto.Rv_vendas_dpto.Close;
                           frm_vendas_dpto.Rv_vendas_dpto.SetParam('periodo' , Datini.Text + ' até ' + DatFim.Text);
                           frm_vendas_dpto.Rv_vendas_dpto.SetParam('codNomedpto' , dt_studio.tb_departamento.FieldByName('ID_DEP').AsString+' - '+
                                                                                   dt_studio.tb_departamento.FieldByName('DEPARTAMENTO').AsString);
                           frm_vendas_dpto.Rv_vendas_dpto.ProjectFile:=('\\statraente\projeto_studio atraente\relatorios\rel_vendas_dpto.rav');
                           frm_vendas_dpto.Rv_vendas_dpto.Execute;
                           frm_vendas_dpto.Rv_vendas_dpto.Close;
                        end
                     else
                        Showmessage('Não existe(m) Vendas e Serviços para esse Departamento Nesse Período!!!');
                  end;
           except
               Showmessage('Existe(m) Erro(s) no Relatório de Vendas e Serviços!!!');
           end;
         end;
  end;
end;

end.
