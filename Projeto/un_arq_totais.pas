unit un_arq_totais;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, sButton, Vcl.Grids,
  Vcl.DBGrids, Vcl.ExtCtrls, sPanel;

type
  Tfrm_arq_totais = class(TForm)
    DBGrid1: TDBGrid;
    sButton1: TsButton;
    Label1: TLabel;
    sPanel1: TsPanel;
    sPanel2: TsPanel;
    sPanel3: TsPanel;
    sPanel4: TsPanel;
    sPanel5: TsPanel;
    sPanel6: TsPanel;
    sPanel7: TsPanel;
    sPanel8: TsPanel;
    sPanel9: TsPanel;
    sPanel10: TsPanel;
    sPanel11: TsPanel;
    sPanel12: TsPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    sPanel13: TsPanel;
    Label13: TLabel;
    Panel1: TPanel;
    procedure sButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_arq_totais: Tfrm_arq_totais;

implementation

uses un_dtstudio;

{$R *.dfm}

procedure Tfrm_arq_totais.DBGrid1CellClick(Column: TColumn);
var
  jan,fev,mar,abr,mai,jun,jul,ago,sete,outu,nov,dez,total : Currency;
begin
  jan := 0;
  fev := 0;
  mar := 0;
  abr := 0;
  mai := 0;
  jun := 0;
  jul := 0;
  ago := 0;
  sete := 0;
  outu := 0;
  nov := 0;
  dez := 0;
  total := 0;
  try
     begin
        jan := jan + dt_studio.tb_arquivo_totais.FieldByName('TOT_JAN').AsCurrency;
        fev := fev + dt_studio.tb_arquivo_totais.FieldByName('TOT_FEV').AsCurrency;
        mar := mar + dt_studio.tb_arquivo_totais.FieldByName('TOT_MAR').AsCurrency;
        abr := abr + dt_studio.tb_arquivo_totais.FieldByName('TOT_ABR').AsCurrency;
        mai := mai + dt_studio.tb_arquivo_totais.FieldByName('TOT_MAI').AsCurrency;
        jun := jun + dt_studio.tb_arquivo_totais.FieldByName('TOT_JUN').AsCurrency;
        jul := jul + dt_studio.tb_arquivo_totais.FieldByName('TOT_JUL').AsCurrency;
        ago := ago + dt_studio.tb_arquivo_totais.FieldByName('TOT_AGO').AsCurrency;
        sete := sete + dt_studio.tb_arquivo_totais.FieldByName('TOT_SET').AsCurrency;
        outu := outu + dt_studio.tb_arquivo_totais.FieldByName('TOT_OUT').AsCurrency;
        nov := nov + dt_studio.tb_arquivo_totais.FieldByName('TOT_NOV').AsCurrency;
        dez := dez + dt_studio.tb_arquivo_totais.FieldByName('TOT_DEZ').AsCurrency;
        total := total + dt_studio.tb_arquivo_totais.FieldByName('TOT_ANO').AsCurrency;
     end;
     spanel1.Caption := FormatFloat('#,###,###,##0.00',jan);
     spanel2.Caption := FormatFloat('#,###,###,##0.00',fev);
     spanel3.Caption := FormatFloat('#,###,###,##0.00',mar);
     spanel4.Caption := FormatFloat('#,###,###,##0.00',abr);
     spanel5.Caption := FormatFloat('#,###,###,##0.00',mai);
     spanel6.Caption := FormatFloat('#,###,###,##0.00',jun);
     spanel7.Caption := FormatFloat('#,###,###,##0.00',jul);
     spanel8.Caption := FormatFloat('#,###,###,##0.00',ago);
     spanel9.Caption := FormatFloat('#,###,###,##0.00',sete);
     spanel10.Caption := FormatFloat('#,###,###,##0.00',outu);
     spanel11.Caption := FormatFloat('#,###,###,##0.00',nov);
     spanel12.Caption := FormatFloat('#,###,###,##0.00',dez);
     spanel13.Caption := FormatFloat('#,###,###,##0.00',total);
  finally
  end;
end;

procedure Tfrm_arq_totais.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
   If odd(dt_studio.tb_arquivo_totais.RecNo) then //Deixando o dbgrid zebrado
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

procedure Tfrm_arq_totais.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   dt_studio.tb_arquivo_totais.Close;
end;

procedure Tfrm_arq_totais.FormShow(Sender: TObject);
var
  jan,fev,mar,abr,mai,jun,jul,ago,sete,outu,nov,dez,total : Currency;
begin
  dt_studio.tb_arquivo_totais.open;
  jan := 0;
  fev := 0;
  mar := 0;
  abr := 0;
  mai := 0;
  jun := 0;
  jul := 0;
  ago := 0;
  sete := 0;
  outu := 0;
  nov := 0;
  dez := 0;
  total := 0;
  try
     begin
        jan := jan + dt_studio.tb_arquivo_totais.FieldByName('TOT_JAN').AsCurrency;
        fev := fev + dt_studio.tb_arquivo_totais.FieldByName('TOT_FEV').AsCurrency;
        mar := mar + dt_studio.tb_arquivo_totais.FieldByName('TOT_MAR').AsCurrency;
        abr := abr + dt_studio.tb_arquivo_totais.FieldByName('TOT_ABR').AsCurrency;
         mai := mai + dt_studio.tb_arquivo_totais.FieldByName('TOT_MAI').AsCurrency;
        jun := jun + dt_studio.tb_arquivo_totais.FieldByName('TOT_JUN').AsCurrency;
        jul := jul + dt_studio.tb_arquivo_totais.FieldByName('TOT_JUL').AsCurrency;
        ago := ago + dt_studio.tb_arquivo_totais.FieldByName('TOT_AGO').AsCurrency;
        sete := sete + dt_studio.tb_arquivo_totais.FieldByName('TOT_SET').AsCurrency;
        outu := outu + dt_studio.tb_arquivo_totais.FieldByName('TOT_OUT').AsCurrency;
        nov := nov + dt_studio.tb_arquivo_totais.FieldByName('TOT_NOV').AsCurrency;
        dez := dez + dt_studio.tb_arquivo_totais.FieldByName('TOT_DEZ').AsCurrency;
        total := total + dt_studio.tb_arquivo_totais.FieldByName('TOT_ANO').AsCurrency;
     end;
     spanel1.Caption := FormatFloat('#,###,###,##0.00',jan);
     spanel2.Caption := FormatFloat('#,###,###,##0.00',fev);
     spanel3.Caption := FormatFloat('#,###,###,##0.00',mar);
     spanel4.Caption := FormatFloat('#,###,###,##0.00',abr);
     spanel5.Caption := FormatFloat('#,###,###,##0.00',mai);
     spanel6.Caption := FormatFloat('#,###,###,##0.00',jun);
     spanel7.Caption := FormatFloat('#,###,###,##0.00',jul);
     spanel8.Caption := FormatFloat('#,###,###,##0.00',ago);
     spanel9.Caption := FormatFloat('#,###,###,##0.00',sete);
     spanel10.Caption := FormatFloat('#,###,###,##0.00',outu);
     spanel11.Caption := FormatFloat('#,###,###,##0.00',nov);
     spanel12.Caption := FormatFloat('#,###,###,##0.00',dez);
     spanel13.Caption := FormatFloat('#,###,###,##0.00',total);
  finally
  end;
end;

procedure Tfrm_arq_totais.sButton1Click(Sender: TObject);
begin
   close;
end;

end.
