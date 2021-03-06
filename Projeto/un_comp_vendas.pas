{ ***************************************************
  * Elaborado para: Studio Atraente                 *
  * Modulo     : Rel�t�rio Comparativo de Servi�os  *
  * Analista   : Jo�o Douglas                       *
  * Elabora��o : Jo�o Douglas                       *
  * Ult Alt.   : 07/02/2017                         *
****************************************************}

unit un_comp_vendas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, sButton, Vcl.Buttons,
  Vcl.Mask, RpCon, RpConDS, RpDefine, RpRave;

type
  Tfrm_comp_vendas = class(TForm)
    Label1: TLabel;
    DatIni: TMaskEdit;
    DatFim: TMaskEdit;
    Label2: TLabel;
    SpeedButton1: TSpeedButton;
    sButton1: TsButton;
    rel_compvendas: TRvProject;
    RvDB_rel_compvendas: TRvDataSetConnection;
    RvDB_Totais: TRvDataSetConnection;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure sButton1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_comp_vendas: Tfrm_comp_vendas;

implementation

uses un_dtstudio, DateUtils;

{$R *.dfm}

procedure Tfrm_comp_vendas.FormKeyPress(Sender: TObject; var Key: Char);
begin//Usando a tecla [ENTER]
  If Key = #13 Then
    Selectnext(ActiveControl, true, true);
end;

procedure Tfrm_comp_vendas.FormShow(Sender: TObject);
begin
   dt_studio.tb_comandas.open;
   datini.SetFocus;
end;

procedure Tfrm_comp_vendas.sButton1Click(Sender: TObject);
begin
   dt_studio.tb_comandas.close;
   close;
end;

procedure Tfrm_comp_vendas.SpeedButton1Click(Sender: TObject);
var Hoje, Mes: TDate;
begin //Gerando o relat�rio
    Try
       with dt_studio.qry_comp_vendas do
       if Mes = Hoje then
          begin
              Hoje := MonthOf(now);
              Mes := MonthOf(strtodate(datini.text));
              Mes := MonthOf(strtodate(datfim.text));
              close;
              SQL.Clear;
              SQL.Text:='SELECT DATA_SERV, '+
                        'SUM(TOT_SERV) AS TOTAL '+
                        'FROM CAD_COMANDAS '+
                        'WHERE DATA_SERV >= :DTINI AND DATA_SERV <= :DTFIM '+
                        'GROUP BY DATA_SERV '+
                        'ORDER BY DATA_SERV ';
             Parameters.ParamByName('dtini').Value := StrToDate(DatIni.Text);
             Parameters.ParamByName('dtfim').Value := StrToDate(DatFim.Text);
             open;
             if RecordCount > 0 Then
                begin
                    frm_comp_vendas.rel_compvendas.SetParam('periodo' , Datini.Text + ' at� ' + DatFim.Text);
                    frm_comp_vendas.rel_compvendas.ProjectFile:=('\\statraente\projeto_studio atraente\relatorios\rel_comp_vendas.rav');
                    frm_comp_vendas.rel_compvendas.Execute;
                    close;
                end
            else
            if Mes <> hoje then
             begin
                Hoje := MonthOf(now);
                Mes := MonthOf(strtodate(datini.text));
                Mes := MonthOf(strtodate(datfim.text));
                close;
                SQL.Clear;
                SQL.Text:='SELECT DATA_SERV, '+
                          'SUM(TOT_SERV) AS TOTAL '+
                          'FROM CAD_COMANDAS '+
                          'WHERE DATA_SERV >= :DTINI AND DATA_SERV <= :DTFIM '+
                          'GROUP BY DATA_SERV '+
                          'ORDER BY DATA_SERV ';
             Parameters.ParamByName('dtini').Value := StrToDate(DatIni.Text);
             Parameters.ParamByName('dtfim').Value := StrToDate(DatFim.Text);
             open;
             if RecordCount > 0 Then
                begin
                    frm_comp_vendas.rel_compvendas.SetParam('periodo' , Datini.Text + ' at� ' + DatFim.Text);
                    frm_comp_vendas.rel_compvendas.ProjectFile:=('\\statraente\projeto_studio atraente\relatorios\rel_comp_vendas.rav');
                    frm_comp_vendas.rel_compvendas.Execute;
                    close;
                end
            end;
          end;
       except
       Showmessage('Existe(m) Erro(s) no Relatorio do Comparativo!!!');
   end;

end;

end.
