{ ***************************************************
  * Elaborado para: Studio Atraente                 *
  * Modulo     : Relat�rio de Entradas - Estoque    *
  * Analista   : Jo�o Douglas                       *
  * Elabora��o : Jo�o Douglas                       *
  * Ult Alt.   : 07/12/2016                         *
  *************************************************** }

unit un_relmovest;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, sButton, Vcl.Buttons,
  sBitBtn, Vcl.Mask;

type
  Tfrm_relmovest = class(TForm)
    DatIni: TMaskEdit;
    Label1: TLabel;
    Label2: TLabel;
    DatFim: TMaskEdit;
    sButton2: TsButton;
    sButton1: TsButton;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure sButton2Click(Sender: TObject);
    procedure sButton1Click(Sender: TObject);
    procedure DatFimExit(Sender: TObject);
  private
    { Private declarations }
  public
    prog: string;
    { Public declarations }
  end;

var
  frm_relmovest: Tfrm_relmovest;

implementation

uses un_dtstudio, un_relatorios;

{$R *.dfm}

procedure Tfrm_relmovest.DatFimExit(Sender: TObject);
begin //Focando o bot�o
   sbutton1.SetFocus;
end;

procedure Tfrm_relmovest.FormKeyPress(Sender: TObject; var Key: Char);
begin //Usando a tecla [ENTER]
   If Key = #13 Then
     Selectnext(ActiveControl, true, true);
end;

procedure Tfrm_relmovest.FormShow(Sender: TObject);
begin //Focando o campo e abrindo a tabela
   DatIni.SetFocus;
   dt_studio.tb_movestitens.open;
end;

procedure Tfrm_relmovest.sButton2Click(Sender: TObject);
begin //Fechando a tabela
   dt_studio.tb_movestitens.close;
   close;
end;

procedure Tfrm_relmovest.sButton1Click(Sender: TObject);
begin //Gerando o relat�rio
   Try
       with dt_studio.qry_estoque do
          begin
              close;
              SQL.Clear;
              SQL.Text:='SELECT A.DT_MOV, A.NUM_NOTA, A.COD_FORNEC, A.NOM_FORNEC, B.COD_PROD, B.NOM_PROD, '+
              'SUM(B.QUANT) AS QDE, SUM(B.VR_UNIT) AS UNIT, SUM(B.TOTAL_NOTA) AS TOTAL '+
              'FROM MOV_ESTOQUE A INNER JOIN MOV_EST_ITENS B ON (A.NUM_NOTA = B.NUM_NOTA) '+
              'WHERE A.DT_MOV >= :DTINI AND A.DT_MOV <= :DTFIM '+
              'GROUP BY A.DT_MOV, A.NUM_NOTA, A.COD_FORNEC, A.NOM_FORNEC, B.COD_PROD, B.NOM_PROD '+
              'ORDER BY A.DT_MOV, A.NUM_NOTA, A.COD_FORNEC, A.NOM_FORNEC, B.COD_PROD, B.NOM_PROD ';
              Parameters.ParamByName('dtini').Value := StrToDate(DatIni.Text);
              Parameters.ParamByName('dtfim').Value := StrToDate(DatFim.Text);
              open;
              if RecordCount > 0 Then
             begin
                frm_relatorios.rel_entradasest.loadfromfile('\\statraente\projeto_studio atraente\relatorios\rel_movest.fr3');
                with frm_relatorios.rel_entradasest.Variables do
                   begin
                       Variables['periodo'] := QuotedStr(Datini.Text + ' at� ' + DatFim.Text);
                       frm_relatorios.rel_entradasest.showreport(true);
                       frm_relmovest.close;
                   end;
             end
             else
                Showmessage('N�o existe Movimento para essa Data !!!');
             Close;
          end;
          except
          Showmessage('Existe(m) Erro(s) no Relatorio de Estoque!!!');
   end;
end;

end.
