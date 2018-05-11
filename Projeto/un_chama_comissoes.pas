{ ***************************************************
  * Elaborado para: Studio Atraente                 *
  * Modulo     : Chame Rel Comiss�es                *
  * Analista   : Jo�o Douglas                       *
  * Elabora��o : Jo�o Douglas                       *
  * Ult Alt.   : 07/12/2016                         *
  *************************************************** }

unit un_chama_comissoes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, sButton, Vcl.Grids,
  Vcl.DBGrids, Vcl.Buttons, sBitBtn, Vcl.Mask, RpCon, RpConDS, RpDefine, RpRave,
  Data.DB, Data.Win.ADODB, Vcl.ExtCtrls;

type
  Tfrm_chama_rel_comissoes = class(TForm)
    DatIni: TMaskEdit;
    Label1: TLabel;
    Label2: TLabel;
    DatFim: TMaskEdit;
    Label3: TLabel;
    Edit1: TEdit;
    frm_chama_relcli: TsBitBtn;
    DBGrid1: TDBGrid;
    sButton1: TsButton;
    SpeedButton1: TSpeedButton;
    rv_comissao: TRvProject;
    rv_dbcomissao: TRvDataSetConnection;
    Radio: TRadioGroup;
    Rvdbcomissaogeral: TRvDataSetConnection;
    procedure FormShow(Sender: TObject);
    procedure sButton1Click(Sender: TObject);
    procedure frm_chama_relcliClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure RadioClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_chama_rel_comissoes: Tfrm_chama_rel_comissoes;

implementation

uses un_dtstudio, un_relatorios;

{$R *.dfm}

procedure Tfrm_chama_rel_comissoes.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
   If odd(dt_studio.tb_cadatend.RecNo) then //Deixando o dbgrid zebrado
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

procedure Tfrm_chama_rel_comissoes.FormKeyPress(Sender: TObject; var Key: Char);
begin //Comando para usar o [ENTER]
  If Key = #13 Then
    Selectnext(ActiveControl, true, true);
end;

procedure Tfrm_chama_rel_comissoes.FormShow(Sender: TObject);
begin //Abrindo as Tabelas
  dt_studio.tb_comandas.open;
  dt_studio.tb_cadatend.open;
end;

procedure Tfrm_chama_rel_comissoes.frm_chama_relcliClick(Sender: TObject);
begin
// Comandos para verifica��o de per�odo e chamando o layout do relat�rio
  dt_studio.tb_cadatend.close;
  dt_studio.tb_cadatend.Sql.Clear;
  dt_studio.tb_cadatend.Sql.Add('select * from CAD_FUNC');
  dt_studio.tb_cadatend.Sql.Add('where NOM_FUNC like ' + QuotedStr('%' + Edit1.Text + '%'));
  dt_studio.tb_cadatend.Sql.Add('order by NOM_FUNC');
  dt_studio.tb_cadatend.open;
end;

procedure Tfrm_chama_rel_comissoes.RadioClick(Sender: TObject);
begin //Definindo o tipo de relat�rio
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

procedure Tfrm_chama_rel_comissoes.sButton1Click(Sender: TObject);
begin //Fechando as tabelas
   dt_studio.tb_comandas.close;
   dt_studio.tb_cadatend.close;
   close;
end;

procedure Tfrm_chama_rel_comissoes.SpeedButton1Click(Sender: TObject);
begin //Gerando o Relat�rio comando SELECT
  case radio.ItemIndex of
       0:Begin
           Try
             with dt_studio.qry_comissaogeral do
                  begin
                     Close;
                     SQL.Clear;
                     SQL.Text:='SELECT ATENDENTE,PERC_COMISSAO,'+
                               'SUM(TOT_SERV) AS TOTALLIQ, SUM(VR_COMISSAO) AS VRCOMIS '+
                               'FROM CAD_COMANDAS '+
                               'WHERE DATA_SERV >= :DTINI AND DATA_SERV <= :DTFIM '+
                               'GROUP BY ATENDENTE,PERC_COMISSAO '+
                               'ORDER BY ATENDENTE,PERC_COMISSAO ';
                     Parameters.ParamByName('dtini').Value := StrToDate(DatIni.Text);
                     Parameters.ParamByName('dtfim').Value := StrToDate(DatFim.Text);
                     open;
                     if RecordCount > 0 Then
                        begin
                           frm_chama_rel_comissoes.rv_comissao.Close;
                           frm_chama_rel_comissoes.rv_comissao.SetParam('periodo' , Datini.Text + ' at� ' + DatFim.Text);
                           frm_chama_rel_comissoes.rv_comissao.ProjectFile:=('\\statraente\projeto_studio atraente\relatorios\rel_comiss_geral.rav');
                           frm_chama_rel_comissoes.rv_comissao.Execute;
                           frm_chama_rel_comissoes.rv_comissao.Close;
                        End
                     Else
                        Showmessage('N�o Existe(m) Comiss�o(�es) para esse Per�odo!!!');
                  End;
           except
               Showmessage('Existe(m) Erro(s) no Relat�rio de Comiss�es!!!');
           end;
         End;
       1:Begin
           Try
             with dt_studio.qry_comissao do
                  begin
                     Close;
                     SQL.Clear;
                     SQL.Text:='SELECT ID_SERV, NOM_SERV, DATA_SERV, PERC_COMISSAO, ATENDENTE,'+
                               'SUM(TOT_SERV) AS TOTALLIQ, SUM(VR_COMISSAO) AS VRCOMIS '+
                               'FROM CAD_COMANDAS '+
                               'WHERE DATA_SERV >= :DTINI AND DATA_SERV <= :DTFIM AND ATENDENTE = :CD '+
                               'GROUP BY ID_SERV, NOM_SERV, DATA_SERV, PERC_COMISSAO, ATENDENTE '+
                               'ORDER BY ID_SERV, NOM_SERV, DATA_SERV, PERC_COMISSAO, ATENDENTE ';
                     Parameters.ParamByName('dtini').Value := StrToDate(DatIni.Text);
                     Parameters.ParamByName('dtfim').Value := StrToDate(DatFim.Text);
                     Parameters.ParamByName('cd').Value := dt_studio.tb_cadatend.FieldByName('NOM_FUNC').AsString;
                     open;

                     if RecordCount > 0 Then
                        begin
                          frm_chama_rel_comissoes.rv_comissao.Close;
                          frm_chama_rel_comissoes.rv_comissao.SetParam('periodo' , Datini.Text + ' at� ' + DatFim.Text);
                          frm_chama_rel_comissoes.rv_comissao.SetParam('codNomeatend' , dt_studio.tb_cadatend.FieldByName('ID_FUNC').AsString+' - '+
                                                                                        dt_studio.tb_cadatend.FieldByName('NOM_FUNC').AsString);
                          frm_chama_rel_comissoes.rv_comissao.ProjectFile:=('\\statraente\projeto_studio atraente\relatorios\rel_comissoes.rav');
                          frm_chama_rel_comissoes.rv_comissao.Execute;
                          frm_chama_rel_comissoes.rv_comissao.Close;
                        end
                     else
                        Showmessage('N�o existe Comiss�o para esse Atendente Nesse Per�odo!!!');
                     Close;
                  End;
           except
               Showmessage('Existe(m) Erro(s) no Relat�rio de Comiss�es!!!');
           end;
         End;
  End;

end;

end.



