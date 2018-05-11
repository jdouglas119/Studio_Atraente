{ ***************************************************
  * Elaborado para: Studio Atraente                 *
  * Modulo     : Movimento do Fechamento Caixa      *
  * Analista   : Jo�o Douglas                       *
  * Elabora��o : Jo�o Douglas                       *
  * Ult Alt.   : 20/01/2017                         *
  *************************************************** }

unit un_fechacaixa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls,
  Vcl.DBCtrls, Vcl.StdCtrls, sButton, Vcl.Mask, sPanel, Vcl.Buttons;

type
  Tfrm_fechacaixa = class(TForm)
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    sButton1: TsButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    usuario: TDBEdit;
    sPanel1: TsPanel;
    sPanel2: TsPanel;
    sPanel3: TsPanel;
    DBNavigator1: TDBNavigator;
    sPanel4: TsPanel;
    sPanel5: TsPanel;
    sPanel6: TsPanel;
    Label9: TLabel;
    sPanel7: TsPanel;
    Label10: TLabel;
    sPanel8: TsPanel;
    Label11: TLabel;
    sPanel9: TsPanel;
    DBText1: TDBText;
    procedure FormShow(Sender: TObject);
    procedure sButton1Click(Sender: TObject);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_fechacaixa: Tfrm_fechacaixa;

implementation

uses un_dtstudio;

{$R *.dfm}

procedure Tfrm_fechacaixa.DBGrid1CellClick(Column: TColumn);
var
  aposte : Currency;
  cartao_cred: Currency;
  cartao_deb: Currency;
  dinheiro: Currency;
  pagamentos: Currency;
  retiradas: Currency;
  deb_func: Currency;
  cheques : Currency;
  saldo: Currency;
begin //Informando dados da tabela do caixa
  aposte := 0;
  cartao_cred := 0;
  cartao_deb := 0;
  dinheiro := 0;
  pagamentos := 0;
  retiradas := 0;
  deb_func := 0;
  cheques := 0;
  saldo := 0;
  try
     begin
       aposte := aposte + dt_studio.tb_fecha_caixa.FieldByName('APOSTE').AsCurrency;
       cartao_cred := cartao_cred + dt_studio.tb_fecha_caixa.FieldByName('REC_CARTAO_CRED').AsCurrency;
       cartao_deb := cartao_deb + dt_studio.tb_fecha_caixa.FieldByName('REC_CARTAO_DEB').AsCurrency;
       dinheiro := dinheiro + dt_studio.tb_fecha_caixa.FieldByName('REC_DINHEIRO').AsCurrency;
       pagamentos := pagamentos + dt_studio.tb_fecha_caixa.FieldByName('PAGAMENTOS').AsCurrency;
       retiradas := retiradas + dt_studio.tb_fecha_caixa.FieldByName('RETIRADAS').AsCurrency;
       deb_func := deb_func + dt_studio.tb_fecha_caixa.FieldByName('DEB_FUNCIONARIO').AsCurrency;
       cheques := cheques + dt_studio.tb_fecha_caixa.FieldByName('CHEQUES').AsCurrency;
       saldo := saldo + dt_studio.tb_fecha_caixa.FieldByName('SALDO_ATUAL').AsCurrency;
     end;
     spanel1.Caption := FormatFloat('#,###,###,##0.00',cartao_cred);
     spanel2.Caption := FormatFloat('#,###,###,##0.00',cartao_deb);
     spanel3.Caption := FormatFloat('#,###,###,##0.00',dinheiro);
     spanel4.Caption := FormatFloat('#,###,###,##0.00',pagamentos);
     spanel5.Caption := FormatFloat('#,###,###,##0.00',retiradas);
     spanel7.Caption := FormatFloat('#,###,###,##0.00',deb_func);
     spanel8.Caption := FormatFloat('#,###,###,##0.00',cheques);
     spanel9.Caption := FormatFloat('#,###,###,##0.00',aposte);
     spanel6.Caption := FormatFloat('#,###,###,##0.00',saldo);
  finally
  end;
end;

procedure Tfrm_fechacaixa.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
   If odd(dt_studio.tb_fecha_caixa.RecNo) then //Deixando o dbgrid zebrado
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

procedure Tfrm_fechacaixa.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  aposte : Currency;
  cartao_cred: Currency;
  cartao_deb: Currency;
  dinheiro: Currency;
  pagamentos: Currency;
  retiradas: Currency;
  deb_func : Currency;
  cheques : Currency;
  saldo: Currency;
begin //Informando dados da tabela do caixa
  aposte := 0;
  cartao_cred := 0;
  cartao_deb := 0;
  dinheiro := 0;
  pagamentos := 0;
  retiradas := 0;
  deb_func := 0;
  cheques := 0;
  saldo := 0;
  try
     begin
       aposte := aposte + dt_studio.tb_fecha_caixa.FieldByName('APOSTE').AsCurrency;
       cartao_cred := cartao_cred + dt_studio.tb_fecha_caixa.FieldByName('REC_CARTAO_CRED').AsCurrency;
       cartao_deb := cartao_deb + dt_studio.tb_fecha_caixa.FieldByName('REC_CARTAO_DEB').AsCurrency;
       dinheiro := dinheiro + dt_studio.tb_fecha_caixa.FieldByName('REC_DINHEIRO').AsCurrency;
       pagamentos := pagamentos + dt_studio.tb_fecha_caixa.FieldByName('PAGAMENTOS').AsCurrency;
       retiradas := retiradas + dt_studio.tb_fecha_caixa.FieldByName('RETIRADAS').AsCurrency;
       deb_func := deb_func + dt_studio.tb_fecha_caixa.FieldByName('DEB_FUNCIONARIO').AsCurrency;
       cheques := cheques + dt_studio.tb_fecha_caixa.FieldByName('CHEQUES').AsCurrency;
       saldo := saldo + dt_studio.tb_fecha_caixa.FieldByName('SALDO_ATUAL').AsCurrency;
     end;
     spanel1.Caption := FormatFloat('#,###,###,##0.00',cartao_cred);
     spanel2.Caption := FormatFloat('#,###,###,##0.00',cartao_deb);
     spanel3.Caption := FormatFloat('#,###,###,##0.00',dinheiro);
     spanel4.Caption := FormatFloat('#,###,###,##0.00',pagamentos);
     spanel5.Caption := FormatFloat('#,###,###,##0.00',retiradas);
     spanel7.Caption := FormatFloat('#,###,###,##0.00',deb_func);
     spanel8.Caption := FormatFloat('#,###,###,##0.00',cheques);
     spanel9.Caption := FormatFloat('#,###,###,##0.00',aposte);
     spanel6.Caption := FormatFloat('#,###,###,##0.00',saldo);
  finally
  end;
end;

procedure Tfrm_fechacaixa.DBGrid1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  aposte : Currency;
  cartao_cred: Currency;
  cartao_deb: Currency;
  dinheiro: Currency;
  pagamentos: Currency;
  retiradas: Currency;
  deb_func : Currency;
  cheques : Currency;
  saldo: Currency;
begin //Informando dados da tabela do caixa
  aposte := 0;
  cartao_cred := 0;
  cartao_deb := 0;
  dinheiro := 0;
  pagamentos := 0;
  retiradas := 0;
  deb_func := 0;
  cheques := 0;
  saldo := 0;
  try
     begin
       aposte := aposte + dt_studio.tb_fecha_caixa.FieldByName('APOSTE').AsCurrency;
       cartao_cred := cartao_cred + dt_studio.tb_fecha_caixa.FieldByName('REC_CARTAO_CRED').AsCurrency;
       cartao_deb := cartao_deb + dt_studio.tb_fecha_caixa.FieldByName('REC_CARTAO_DEB').AsCurrency;
       dinheiro := dinheiro + dt_studio.tb_fecha_caixa.FieldByName('REC_DINHEIRO').AsCurrency;
       pagamentos := pagamentos + dt_studio.tb_fecha_caixa.FieldByName('PAGAMENTOS').AsCurrency;
       retiradas := retiradas + dt_studio.tb_fecha_caixa.FieldByName('RETIRADAS').AsCurrency;
       deb_func := deb_func + dt_studio.tb_fecha_caixa.FieldByName('DEB_FUNCIONARIO').AsCurrency;
       cheques := cheques + dt_studio.tb_fecha_caixa.FieldByName('CHEQUES').AsCurrency;
       saldo := saldo + dt_studio.tb_fecha_caixa.FieldByName('SALDO_ATUAL').AsCurrency;
     end;
     spanel1.Caption := FormatFloat('#,###,###,##0.00',cartao_cred);
     spanel2.Caption := FormatFloat('#,###,###,##0.00',cartao_deb);
     spanel3.Caption := FormatFloat('#,###,###,##0.00',dinheiro);
     spanel4.Caption := FormatFloat('#,###,###,##0.00',pagamentos);
     spanel5.Caption := FormatFloat('#,###,###,##0.00',retiradas);
     spanel7.Caption := FormatFloat('#,###,###,##0.00',deb_func);
     spanel8.Caption := FormatFloat('#,###,###,##0.00',cheques);
     spanel9.Caption := FormatFloat('#,###,###,##0.00',aposte);
     spanel6.Caption := FormatFloat('#,###,###,##0.00',saldo);
  finally
  end;
end;

procedure Tfrm_fechacaixa.DBNavigator1Click(Sender: TObject;
  Button: TNavigateBtn);
var
  aposte : Currency;
  cartao_cred: Currency;
  cartao_deb: Currency;
  dinheiro: Currency;
  pagamentos: Currency;
  retiradas: Currency;
  deb_func : Currency;
  cheques : Currency;
  saldo: Currency;
begin //Informando dados da tabela do caixa
  aposte := 0;
  cartao_cred := 0;
  cartao_deb := 0;
  dinheiro := 0;
  pagamentos := 0;
  retiradas := 0;
  deb_func := 0;
  cheques := 0;
  saldo := 0;
  try
     begin
       aposte := aposte + dt_studio.tb_fecha_caixa.FieldByName('APOSTE').AsCurrency;
       cartao_cred := cartao_cred + dt_studio.tb_fecha_caixa.FieldByName('REC_CARTAO_CRED').AsCurrency;
       cartao_deb := cartao_deb + dt_studio.tb_fecha_caixa.FieldByName('REC_CARTAO_DEB').AsCurrency;
       dinheiro := dinheiro + dt_studio.tb_fecha_caixa.FieldByName('REC_DINHEIRO').AsCurrency;
       pagamentos := pagamentos + dt_studio.tb_fecha_caixa.FieldByName('PAGAMENTOS').AsCurrency;
       retiradas := retiradas + dt_studio.tb_fecha_caixa.FieldByName('RETIRADAS').AsCurrency;
       deb_func := deb_func + dt_studio.tb_fecha_caixa.FieldByName('DEB_FUNCIONARIO').AsCurrency;
       cheques := cheques + dt_studio.tb_fecha_caixa.FieldByName('CHEQUES').AsCurrency;
       saldo := saldo + dt_studio.tb_fecha_caixa.FieldByName('SALDO_ATUAL').AsCurrency;
     end;
     spanel1.Caption := FormatFloat('#,###,###,##0.00',cartao_cred);
     spanel2.Caption := FormatFloat('#,###,###,##0.00',cartao_deb);
     spanel3.Caption := FormatFloat('#,###,###,##0.00',dinheiro);
     spanel4.Caption := FormatFloat('#,###,###,##0.00',pagamentos);
     spanel5.Caption := FormatFloat('#,###,###,##0.00',retiradas);
     spanel7.Caption := FormatFloat('#,###,###,##0.00',deb_func);
     spanel8.Caption := FormatFloat('#,###,###,##0.00',cheques);
     spanel9.Caption := FormatFloat('#,###,###,##0.00',aposte);
     spanel6.Caption := FormatFloat('#,###,###,##0.00',saldo);
  finally
  end;
end;

procedure Tfrm_fechacaixa.FormShow(Sender: TObject);
var
  aposte : Currency;
  cartao_cred: Currency;
  cartao_deb: Currency;
  dinheiro: Currency;
  pagamentos: Currency;
  retiradas: Currency;
  deb_func : Currency;
  cheques : Currency;
  saldo: Currency;
begin //Informando dados da tabela do caixa
  dt_studio.tb_fecha_caixa.Open;
  dt_studio.tb_movcaixa.Open;
  aposte := 0;
  cartao_cred := 0;
  cartao_deb := 0;
  dinheiro := 0;
  pagamentos := 0;
  retiradas := 0;
  deb_func := 0;
  cheques := 0;
  saldo := 0;
  try
     begin
       aposte := aposte + dt_studio.tb_fecha_caixa.FieldByName('APOSTE').AsCurrency;
       cartao_cred := cartao_cred + dt_studio.tb_fecha_caixa.FieldByName('REC_CARTAO_CRED').AsCurrency;
       cartao_deb := cartao_deb + dt_studio.tb_fecha_caixa.FieldByName('REC_CARTAO_DEB').AsCurrency;
       dinheiro := dinheiro + dt_studio.tb_fecha_caixa.FieldByName('REC_DINHEIRO').AsCurrency;
       pagamentos := pagamentos + dt_studio.tb_fecha_caixa.FieldByName('PAGAMENTOS').AsCurrency;
       retiradas := retiradas + dt_studio.tb_fecha_caixa.FieldByName('RETIRADAS').AsCurrency;
       deb_func := deb_func + dt_studio.tb_fecha_caixa.FieldByName('DEB_FUNCIONARIO').AsCurrency;
       cheques := cheques + dt_studio.tb_fecha_caixa.FieldByName('CHEQUES').AsCurrency;
       saldo := saldo + dt_studio.tb_fecha_caixa.FieldByName('SALDO_ATUAL').AsCurrency;
     end;
     spanel1.Caption := FormatFloat('#,###,###,##0.00',cartao_cred);
     spanel2.Caption := FormatFloat('#,###,###,##0.00',cartao_deb);
     spanel3.Caption := FormatFloat('#,###,###,##0.00',dinheiro);
     spanel4.Caption := FormatFloat('#,###,###,##0.00',pagamentos);
     spanel5.Caption := FormatFloat('#,###,###,##0.00',retiradas);
     spanel7.Caption := FormatFloat('#,###,###,##0.00',deb_func);
     spanel8.Caption := FormatFloat('#,###,###,##0.00',cheques);
     spanel9.Caption := FormatFloat('#,###,###,##0.00',aposte);
     spanel6.Caption := FormatFloat('#,###,###,##0.00',saldo);
  finally
  end;
end;

procedure Tfrm_fechacaixa.sButton1Click(Sender: TObject);
begin //Fechando as tabelas
   dt_studio.tb_fecha_caixa.close;
   close;
end;

end.
