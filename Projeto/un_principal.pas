{****************************************************
  * Elaborado para: Studio Atraente                 *
  * Modulo     : Tela Principal do Sistema          *
  * Analista   : Jo�o Douglas                       *
  * Elabora��o : Jo�o Douglas                       *
  * Ult Alt.   : 25/08/2017                         *
****************************************************}

unit un_principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.Imaging.jpeg, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.Menus, sSkinManager,
  Vcl.Buttons, Vcl.StdCtrls, sButton, UCDataConnector, UCADOConn, UCBase,
  UCIdle, UCMail, sSkinProvider, sLabel;

type
  Tfrm_principal = class(TForm)
    StatusBar1: TStatusBar;
    MainMenu1: TMainMenu;
    Cadastros1: TMenuItem;
    Clientes1: TMenuItem;
    Funcionios1: TMenuItem;
    ipoServio1: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    Movimento1: TMenuItem;
    ComandadeServ1: TMenuItem;
    Estoque1: TMenuItem;
    Entradas1: TMenuItem;
    Consultas1: TMenuItem;
    Utilitrios1: TMenuItem;
    Sobre1: TMenuItem;
    Sair1: TMenuItem;
    Relatrios1: TMenuItem;
    Clientes2: TMenuItem;
    Servios2: TMenuItem;
    Atendentes1: TMenuItem;
    Caixa1: TMenuItem;
    otalCartodeCrditoDirioeMensal1: TMenuItem;
    ValorDirioeMensalComisses1: TMenuItem;
    ComparativoMsAnoAnterior1: TMenuItem;
    Timer1: TTimer;
    N6: TMenuItem;
    FormasdePagamento1: TMenuItem;
    Caixa2: TMenuItem;
    AberturaFechamentodoCaixa1: TMenuItem;
    N7: TMenuItem;
    RecebimentosePagamentos2: TMenuItem;
    PagamentoseRetiradas1: TMenuItem;
    MovdoFechamentodoCaixa1: TMenuItem;
    RelClientes1: TMenuItem;
    ServiosRealizados1: TMenuItem;
    abeladeServios1: TMenuItem;
    sc01: TScrollBox;
    c01: TSpeedButton;
    c03: TSpeedButton;
    c02: TSpeedButton;
    c05: TSpeedButton;
    cx02: TSpeedButton;
    cx01: TSpeedButton;
    c06: TSpeedButton;
    cx03: TSpeedButton;
    cx04: TSpeedButton;
    e02: TSpeedButton;
    m01: TSpeedButton;
    e01: TSpeedButton;
    r01: TSpeedButton;
    r02: TSpeedButton;
    r03: TSpeedButton;
    r04: TSpeedButton;
    r05: TSpeedButton;
    r06: TSpeedButton;
    r07: TSpeedButton;
    r08: TSpeedButton;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    sLabelFX1: TsLabelFX;
    p01: TPanel;
    p02: TPanel;
    p03: TPanel;
    p04: TPanel;
    p05: TPanel;
    p06: TPanel;
    ut01: TSpeedButton;
    ut03: TSpeedButton;
    Calculadora1: TMenuItem;
    PrinterSetupDialog1: TPrinterSetupDialog;
    N3: TMenuItem;
    MovimentodoEstoque1: TMenuItem;
    MovRecdoCaixaAnlitico1: TMenuItem;
    MovdeRetiradasCaixa1: TMenuItem;
    N4: TMenuItem;
    N8: TMenuItem;
    ClientesAniversariantesdoMs1: TMenuItem;
    N9: TMenuItem;
    AgendadeClientes1: TMenuItem;
    N10: TMenuItem;
    Agendamentos1: TMenuItem;
    c07: TSpeedButton;
    r10: TSpeedButton;
    r09: TSpeedButton;
    r11: TSpeedButton;
    r12: TSpeedButton;
    r13: TSpeedButton;
    Fornecedores1: TMenuItem;
    FormadePgto1: TMenuItem;
    r14: TSpeedButton;
    r15: TSpeedButton;
    N11: TMenuItem;
    ConsultaAniversariantesdoMs1: TMenuItem;
    ut02: TSpeedButton;
    N12: TMenuItem;
    LancdeAposte1: TMenuItem;
    cx05: TSpeedButton;
    VendaseServios1: TMenuItem;
    MovdeAposteCaixa1: TMenuItem;
    N13: TMenuItem;
    N14: TMenuItem;
    N15: TMenuItem;
    r16: TSpeedButton;
    r17: TSpeedButton;
    ComparativodeVendasMensalAnual1: TMenuItem;
    ComparativodeVendas1: TMenuItem;
    N16: TMenuItem;
    ArquivodosTotaisMensal1: TMenuItem;
    r18: TSpeedButton;
    ut04: TSpeedButton;
    ut05: TSpeedButton;
    Usurios1: TMenuItem;
    N5: TMenuItem;
    MudarUsurio1: TMenuItem;
    ResumodeServios1: TMenuItem;
    Autorizadores1: TMenuItem;
    c08: TSpeedButton;
    c09: TSpeedButton;
    c10: TSpeedButton;
    m02: TSpeedButton;
    Image1: TImage;
    procedure c01Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure Clientes1Click(Sender: TObject);
    procedure c03Click(Sender: TObject);
    procedure Produtos1Click(Sender: TObject);
    procedure c02Click(Sender: TObject);
    procedure Funcionios1Click(Sender: TObject);
    procedure ipoServio1Click(Sender: TObject);
    procedure c04Click(Sender: TObject);
    procedure AberturadoCaixa1Click(Sender: TObject);
    procedure m01Click(Sender: TObject);
    procedure ComandadeServ1Click(Sender: TObject);
    procedure c05Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure e01Click(Sender: TObject);
    procedure Entradas1Click(Sender: TObject);
    procedure Consultas1Click(Sender: TObject);
    procedure m02Click(Sender: TObject);
    procedure Venda1Click(Sender: TObject);
    procedure FechamentodoCaixa1Click(Sender: TObject);
    procedure FormasdePagamento1Click(Sender: TObject);
    procedure AberturaFechamentodoCaixa1Click(Sender: TObject);
    procedure RecebimentosePagamentos2Click(Sender: TObject);
    procedure PagamentoseRetiradas1Click(Sender: TObject);
    procedure MovdoFechamentodoCaixa1Click(Sender: TObject);
    procedure RelClientes1Click(Sender: TObject);
    procedure Atendentes1Click(Sender: TObject);
    procedure ServiosRealizados1Click(Sender: TObject);
    procedure abeladeServios1Click(Sender: TObject);
    procedure otalCartodeCrditoDirioeMensal1Click(Sender: TObject);
    procedure Sobre1Click(Sender: TObject);
    procedure ValorDirioeMensalComisses1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cx02Click(Sender: TObject);
    procedure p01Click(Sender: TObject);
    procedure p02Click(Sender: TObject);
    procedure p03Click(Sender: TObject);
    procedure p04Click(Sender: TObject);
    procedure p05Click(Sender: TObject);
    procedure c06Click(Sender: TObject);
    procedure cx01Click(Sender: TObject);
    procedure cx03Click(Sender: TObject);
    procedure cx04Click(Sender: TObject);
    procedure e02Click(Sender: TObject);
    procedure r01Click(Sender: TObject);
    procedure r02Click(Sender: TObject);
    procedure r03Click(Sender: TObject);
    procedure r04Click(Sender: TObject);
    procedure r05Click(Sender: TObject);
    procedure r06Click(Sender: TObject);
    procedure r07Click(Sender: TObject);
    procedure p06Click(Sender: TObject);
    procedure ut01Click(Sender: TObject);
    procedure ConfigurarImpressora1Click(Sender: TObject);
    procedure ut03Click(Sender: TObject);
    procedure Calculadora1Click(Sender: TObject);
    procedure AniversariantesdoDia1Click(Sender: TObject);
    procedure ComparativoMsAnoAnterior1Click(Sender: TObject);
    procedure MovimentodoEstoque1Click(Sender: TObject);
    procedure MovRecdoCaixaAnlitico1Click(Sender: TObject);
    procedure MovdeRetiradasCaixa1Click(Sender: TObject);
    procedure ClientesAniversariantesdoMs1Click(Sender: TObject);
    procedure AgendadeClientes1Click(Sender: TObject);
    procedure Agendamentos1Click(Sender: TObject);
    procedure c07Click(Sender: TObject);
    procedure r08Click(Sender: TObject);
    procedure r09Click(Sender: TObject);
    procedure r10Click(Sender: TObject);
    procedure r11Click(Sender: TObject);
    procedure r12Click(Sender: TObject);
    procedure r13Click(Sender: TObject);
    procedure r14Click(Sender: TObject);
    procedure r15Click(Sender: TObject);
    procedure Fornecedores1Click(Sender: TObject);
    procedure FormadePgto1Click(Sender: TObject);
    procedure ConsultaAniversariantesdoMs1Click(Sender: TObject);
    procedure ut02Click(Sender: TObject);
    procedure LancdeAposte1Click(Sender: TObject);
    procedure cx05Click(Sender: TObject);
    procedure VendaseServios1Click(Sender: TObject);
    procedure MovdeAposteCaixa1Click(Sender: TObject);
    procedure r16Click(Sender: TObject);
    procedure r17Click(Sender: TObject);
    procedure ComparativodeVendasMensalAnual1Click(Sender: TObject);
    procedure ComparativodeVendas1Click(Sender: TObject);
    procedure ArquivodosTotaisMensal1Click(Sender: TObject);
    procedure r18Click(Sender: TObject);
    procedure ut04Click(Sender: TObject);
    procedure ut05Click(Sender: TObject);
    procedure Usurios1Click(Sender: TObject);
    procedure MudarUsurio1Click(Sender: TObject);
    procedure ResumodeServios1Click(Sender: TObject);
    procedure Autorizadores1Click(Sender: TObject);
    procedure c08Click(Sender: TObject);
    procedure c09Click(Sender: TObject);
    procedure c10Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_principal: Tfrm_principal;

implementation

{$R *.dfm}

uses un_cadcli, un_cadprod, un_cadatend, un_cadtiposerv, un_cadusuarios,
     un_dtstudio, un_abertura, un_movservico, un_orcamento, un_cadfornec,
     un_correcaoest, un_vendas, un_movcaixa, un_rec_caixa, un_retiradas,
     un_formapag, un_fechacaixa, un_chama_relcli, un_chama_relatend, un_chama_servcli,
     un_chama_tabservicos, un_chama_relcartao_cred, un_chama_aniver, un_sobre,
     un_chama_valor_atend, un_chama_comissoes, un_aniversario,
     un_chama_comparativo, un_chama_comparativo_prod, un_relmovest,
     un_chama_movcaixa, un_rel_retiradas, un_agenda, un_rel_agenda,
     un_rel_fornecedor, un_rel_formapgto, un_aposte, un_vendas_dpto,
     un_rel_aposte, un_comp_vendas, un_comp_totais, un_arq_totais,
     un_chama_movcaixa2, U_Senha, un_mudausuario, un_resumo, un_cadautorizador;

procedure Tfrm_principal.abeladeServios1Click(Sender: TObject);
begin
  frm_tabela_servicos.show;
end;

procedure Tfrm_principal.AberturadoCaixa1Click(Sender: TObject);
begin
  frm_movcaixa.show;
end;

procedure Tfrm_principal.AberturaFechamentodoCaixa1Click(Sender: TObject);
begin
  frm_movcaixa.show;
end;

procedure Tfrm_principal.AgendadeClientes1Click(Sender: TObject);
begin
   frm_agenda.show;
end;

procedure Tfrm_principal.Agendamentos1Click(Sender: TObject);
begin
   frm_rel_agenda.show;
end;

procedure Tfrm_principal.AniversariantesdoDia1Click(Sender: TObject);
begin
   frm_aniversariantes.show;
end;

procedure Tfrm_principal.ArquivodosTotaisMensal1Click(Sender: TObject);
begin
   frm_arq_totais.showmodal;
end;

procedure Tfrm_principal.Atendentes1Click(Sender: TObject);
begin
  frm_chama_relatend.show;
end;

procedure Tfrm_principal.Autorizadores1Click(Sender: TObject);
begin
   frm_cadauto.showmodal;
end;

procedure Tfrm_principal.Calculadora1Click(Sender: TObject);
begin
   WinExec('Calc.Exe',SW_Show);
end;

procedure Tfrm_principal.Clientes1Click(Sender: TObject);
begin
   frm_cadcli.show;
end;

procedure Tfrm_principal.ClientesAniversariantesdoMs1Click(Sender: TObject);
begin
   frm_rel_aniver.show;
end;

procedure Tfrm_principal.ComandadeServ1Click(Sender: TObject);
begin
   frm_servico.show;
end;

procedure Tfrm_principal.ComparativodeVendas1Click(Sender: TObject);
begin
   frm_comp_totais.showmodal;
end;

procedure Tfrm_principal.ComparativodeVendasMensalAnual1Click(Sender: TObject);
begin
   frm_comp_vendas.showmodal;
end;

procedure Tfrm_principal.ComparativoMsAnoAnterior1Click(Sender: TObject);
begin
   frm_relcomparativo.show;
end;

procedure Tfrm_principal.ConfigurarImpressora1Click(Sender: TObject);
begin
   printersetupdialog1.execute;
end;

procedure Tfrm_principal.ConsultaAniversariantesdoMs1Click(Sender: TObject);
begin
   frm_aniversariantes.show;
   frm_aniversariantes.memo.clear;
end;

procedure Tfrm_principal.Consultas1Click(Sender: TObject);
begin
   frm_correcaoest.show;
end;

procedure Tfrm_principal.Entradas1Click(Sender: TObject);
begin
   frm_movestoque.show;
end;

procedure Tfrm_principal.FechamentodoCaixa1Click(Sender: TObject);
begin
   frm_retiradas.show;
end;

procedure Tfrm_principal.FormadePgto1Click(Sender: TObject);
begin
   frm_forma.show;
end;

procedure Tfrm_principal.FormasdePagamento1Click(Sender: TObject);
begin
   frm_formapag.show;
end;

procedure Tfrm_principal.FormShow(Sender: TObject);
begin // Controle dos bot�es
   p01.SetFocus;
   c01.Visible := true;
   c02.Visible := true;
   c03.Visible := true;
   c05.Visible := true;
   c06.Visible := true;
   c07.Visible := true;
   c08.Visible := true;
   c09.Visible := true;
   c10.Visible := true;
   sc01.Top := 56;
   Top := 0;
   Left := 0;
   Width := Screen.Width;
   Height := Screen.Height;
   //TRABALHAR NIVEIS DE ACESSO AO SISTEMA DE ACORDO COM O NIVEL DO USU�RIO
   if dt_studio.tb_cadusuNIVEL.Value = 1 then
     begin
       frm_principal.Autorizadores1.visible := true;
       frm_principal.Usurios1.visible := true;
       frm_principal.c08.visible := true;
       frm_principal.c10.visible := true;
     end
   else
   if dt_studio.tb_cadusuNIVEL.Value = 2 then
     begin
       frm_principal.Autorizadores1.visible := false;
       frm_principal.Usurios1.visible := false;
       frm_principal.c08.visible := false;
       frm_principal.c10.visible := false;
     end;
end;

procedure Tfrm_principal.Fornecedores1Click(Sender: TObject);
begin
   frm_rel_fornec.show;
end;

procedure Tfrm_principal.Funcionios1Click(Sender: TObject);
begin
   frm_cadatend.show;
end;

procedure Tfrm_principal.ipoServio1Click(Sender: TObject);
begin
   frm_cadtiposerv.show;
end;

procedure Tfrm_principal.LancdeAposte1Click(Sender: TObject);
begin
   frm_aposte.showmodal;
end;

procedure Tfrm_principal.MovdeAposteCaixa1Click(Sender: TObject);
begin
   frm_rel_aposte.showmodal;
end;

procedure Tfrm_principal.MovdeRetiradasCaixa1Click(Sender: TObject);
begin
   frm_rel_retiradas.show;
end;

procedure Tfrm_principal.MovdoFechamentodoCaixa1Click(Sender: TObject);
begin
   frm_fechacaixa.show;
end;

procedure Tfrm_principal.MovimentodoEstoque1Click(Sender: TObject);
begin
   frm_relmovest.show;
end;

procedure Tfrm_principal.MovRecdoCaixaAnlitico1Click(Sender: TObject);
begin
   frm_chama_relcaixa.show;
end;

procedure Tfrm_principal.MudarUsurio1Click(Sender: TObject);
begin
   frm_mudausu.showmodal;
end;

procedure Tfrm_principal.N1Click(Sender: TObject);
begin
   frm_cadfornec.show;
end;

procedure Tfrm_principal.otalCartodeCrditoDirioeMensal1Click(Sender: TObject);
begin
//   frm_rel_movcaixa.showmodal;
   frm_rel_cartaocred.showmodal;
end;

procedure Tfrm_principal.PagamentoseRetiradas1Click(Sender: TObject);
begin
   frm_retiradas.show;
end;

procedure Tfrm_principal.p01Click(Sender: TObject);
begin // Controle dos bot�es
   p01.Top := 31;
   p02.Top := 540;
   p03.Top := 565;
   p04.Top := 590;
   p05.Top := 615;
   p06.Top := 640;
   c01.Visible := true;
   c02.Visible := true;
   c03.Visible := true;
   c05.Visible := true;
   c06.Visible := true;
   c07.Visible := true;
   c08.Visible := true;
   c09.Visible := true;
   c10.Visible := true;
   r01.Visible := false;
   r02.Visible := false;
   r03.Visible := false;
   r04.Visible := false;
   r05.Visible := false;
   r06.Visible := false;
   r07.Visible := false;
   r08.Visible := false;
   r09.Visible := false;
   r10.Visible := false;
   r11.Visible := false;
   r12.Visible := false;
   r13.Visible := false;
   r14.Visible := false;
   r15.Visible := false;
   r16.Visible := false;
   r17.Visible := false;
   r18.Visible := false;
   e01.Visible := false;
   e02.Visible := false;
   cx01.Visible := false;
   cx02.Visible := false;
   cx03.Visible := false;
   cx04.Visible := false;
   cx05.Visible := false;
   m01.Visible := false;
   m02.Visible := false;
   ut01.Visible := false;
   ut02.Visible := false;
   ut03.Visible := false;
   ut04.Visible := false;
   ut05.Visible := false;
end;

procedure Tfrm_principal.p02Click(Sender: TObject);
begin // Controle dos bot�es
   p03.Top := 565;
   p04.Top := 590;
   p05.Top := 615;
   p06.Top := 640;
   r01.Visible := false;
   r02.Visible := false;
   r03.Visible := false;
   r04.Visible := false;
   r05.Visible := false;
   r06.Visible := false;
   r07.Visible := false;
   r08.Visible := false;
   r09.Visible := false;
   r10.Visible := false;
   r11.Visible := false;
   r12.Visible := false;
   r13.Visible := false;
   r14.Visible := false;
   r15.Visible := false;
   r16.Visible := false;
   r17.Visible := false;
   r18.Visible := false;
   e01.Visible := false;
   e02.Visible := false;
   m01.Visible := false;
   m02.Visible := false;
   c01.Visible := false;
   c02.Visible := false;
   c03.Visible := false;
   c05.Visible := false;
   c06.Visible := false;
   c07.Visible := false;
   c08.Visible := false;
   c09.Visible := false;
   c10.Visible := false;
   ut01.Visible := false;
   ut02.Visible := false;
   ut03.Visible := false;
   ut04.Visible := false;
   ut05.Visible := false;
   cx01.Visible := true;
   cx02.Visible := true;
   cx03.Visible := true;
   cx04.Visible := true;
   cx05.Visible := true;
   p01.Top := 540;
   p02.Top := 31;
   cx01.Top := -1;
   cx02.Top := 68;
   cx03.Top := 137;
   cx04.Top := 206;
   cx05.Top := 275;
   cx04.Left := -2;
   cx01.Left := -2;
   cx02.Left := -2;
   cx03.Left := -2;
   cx04.Left := -2;
   cx05.Left := -2;
end;

procedure Tfrm_principal.p03Click(Sender: TObject);
begin // Controle dos bot�es
   p02.Top := 540;
   p04.Top := 590;
   p05.Top := 615;
   p06.Top := 640;
   r01.Visible := false;
   r02.Visible := false;
   r03.Visible := false;
   r04.Visible := false;
   r05.Visible := false;
   r06.Visible := false;
   r07.Visible := false;
   r08.Visible := false;
   r09.Visible := false;
   r10.Visible := false;
   r11.Visible := false;
   r12.Visible := false;
   r13.Visible := false;
   r14.Visible := false;
   r15.Visible := false;
   r16.Visible := false;
   r17.Visible := false;
   r18.Visible := false;
   cx01.Visible := false;
   cx02.Visible := false;
   cx03.Visible := false;
   cx04.Visible := false;
   cx05.Visible := false;
   c01.Visible := false;
   c02.Visible := false;
   c03.Visible := false;
   c05.Visible := false;
   c06.Visible := false;
   c07.Visible := false;
   c08.Visible := false;
   c09.Visible := false;
   c10.Visible := false;
   e01.Visible := false;
   e02.Visible := false;
   ut01.Visible := false;
   ut02.Visible := false;
   ut03.Visible := false;
   ut04.Visible := false;
   ut05.Visible := false;
   m01.Visible := true;
   m02.Visible := true;
   p01.Top := 565;
   p03.Top := 31;
   m01.Left := -2;
   m02.Left := -2;
end;

procedure Tfrm_principal.p04Click(Sender: TObject);
begin // Controle dos bot�es
   p02.Top := 540;
   p03.Top := 565;
   p05.Top := 615;
   p06.Top := 640;
   r01.Visible := false;
   r02.Visible := false;
   r03.Visible := false;
   r04.Visible := false;
   r05.Visible := false;
   r06.Visible := false;
   r07.Visible := false;
   r08.Visible := false;
   r09.Visible := false;
   r10.Visible := false;
   r11.Visible := false;
   r12.Visible := false;
   r13.Visible := false;
   r14.Visible := false;
   r15.Visible := false;
   r16.Visible := false;
   r17.Visible := false;
   r18.Visible := false;
   m01.Visible := false;
   m02.Visible := false;
   cx01.Visible := false;
   cx02.Visible := false;
   cx03.Visible := false;
   cx04.Visible := false;
   cx05.Visible := false;
   c01.Visible := false;
   c02.Visible := false;
   c03.Visible := false;
   c05.Visible := false;
   c06.Visible := false;
   c07.Visible := false;
   c08.Visible := false;
   c09.Visible := false;
   c10.Visible := false;
   ut01.Visible := false;
   ut02.Visible := false;
   ut03.Visible := false;
   ut04.Visible := false;
   ut05.Visible := false;
   e01.Visible := true;
   e02.Visible := true;
   p01.Top := 590;
   p04.Top := 31;
   e01.Top := -1;
   e02.Top := 68;
   e01.Left := -2;
   e02.Left := -2;
end;

procedure Tfrm_principal.p05Click(Sender: TObject);
begin // Controle dos bot�es
   p02.Top := 540;
   p03.Top := 565;
   p04.Top := 590;
   p06.Top := 640;
   cx01.Visible := false;
   cx02.Visible := false;
   cx03.Visible := false;
   cx04.Visible := false;
   cx05.Visible := false;
   e01.Visible := false;
   e02.Visible := false;
   m01.Visible := false;
   m02.Visible := false;
   c01.Visible := false;
   c02.Visible := false;
   c03.Visible := false;
   c05.Visible := false;
   c06.Visible := false;
   c07.Visible := false;
   c08.Visible := false;
   c09.Visible := false;
   c10.Visible := false;
   ut01.Visible := false;
   ut02.Visible := false;
   ut03.Visible := false;
   ut04.Visible := false;
   ut05.Visible := false;
   r01.Visible := true;
   r02.Visible := true;
   r03.Visible := true;
   r04.Visible := true;
   r05.Visible := true;
   r06.Visible := true;
   r07.Visible := true;
   r08.Visible := true;
   r09.Visible := true;
   r10.Visible := true;
   r11.Visible := true;
   r12.Visible := true;
   r13.Visible := true;
   r14.Visible := true;
   r15.Visible := true;
   r16.Visible := true;
   r17.Visible := true;
   r18.Visible := true;
   p01.Top := 615;
   p05.Top := 31;
   r01.top := -1;
   r02.top := 68;
   r03.top := 137;
   r04.top := 206;
   r05.top := 275;
   r06.top := 344;
   r07.top := 413;
   r08.top := 482;
   r09.top := 551;
   r10.top := 620;
   r11.top := 689;
   r12.top := 758;
   r13.top := 827;
   r14.top := 896;
   r15.top := 965;
   r16.top := 1034;
   r17.top := 1103;
   r18.top := 1172;
   r01.left := -2;
   r02.left := -2;
   r03.left := -2;
   r04.left := -2;
   r05.left := -2;
   r06.left := -2;
   r07.left := -2;
   r08.left := -2;
   r09.left := -2;
   r10.left := -2;
   r11.left := -2;
   r12.left := -2;
   r13.left := -2;
   r14.left := -2;
   r15.left := -2;
   r16.left := -2;
   r17.left := -2;
   r18.left := -2;
end;

procedure Tfrm_principal.p06Click(Sender: TObject);
begin // Controle dos bot�es
   p02.Top := 540;
   p03.Top := 565;
   p04.Top := 590;
   p05.Top := 615;
   c01.Visible := false;
   c02.Visible := false;
   c03.Visible := false;
   c05.Visible := false;
   c06.Visible := false;
   c07.Visible := false;
   c08.Visible := false;
   c09.Visible := false;
   c10.Visible := false;
   r01.Visible := false;
   r02.Visible := false;
   r03.Visible := false;
   r04.Visible := false;
   r05.Visible := false;
   r06.Visible := false;
   r07.Visible := false;
   r08.Visible := false;
   r09.Visible := false;
   r10.Visible := false;
   r11.Visible := false;
   r12.Visible := false;
   r13.Visible := false;
   r14.Visible := false;
   r15.Visible := false;
   r16.Visible := false;
   r17.Visible := false;
   r18.Visible := false;
   e01.Visible := false;
   e02.Visible := false;
   cx01.Visible := false;
   cx02.Visible := false;
   cx03.Visible := false;
   cx04.Visible := false;
   cx05.Visible := false;
   m01.Visible := false;
   m02.Visible := false;
   ut01.Visible := true;
   ut02.Visible := true;
   ut03.Visible := true;
   ut04.Visible := true;
   ut05.Visible := true;
   p01.Top := 640;
   p06.Top := 31;
   ut01.Top := -1;
   ut03.Top := 68;
   ut02.Top := 137;
   ut04.Top := 206;
   ut05.Top := 275;
   ut01.Left := -2;
   ut02.Left := -2;
   ut03.Left := -2;
   ut04.Left := -2;
   ut05.Left := -2;
end;

procedure Tfrm_principal.Produtos1Click(Sender: TObject);
begin
   frm_cadprod.show;
end;

procedure Tfrm_principal.r01Click(Sender: TObject);
begin
   frm_chama_relcli.show;
end;

procedure Tfrm_principal.r02Click(Sender: TObject);
begin
   frm_rel_servcli.show;
end;

procedure Tfrm_principal.r03Click(Sender: TObject);
begin
   frm_tabela_servicos.show;
end;

procedure Tfrm_principal.r04Click(Sender: TObject);
begin
   frm_chama_relatend.show;
end;

procedure Tfrm_principal.r05Click(Sender: TObject);
begin
   frm_rel_valor_atend.show;
end;

procedure Tfrm_principal.r06Click(Sender: TObject);
begin
   frm_rel_cartaocred.show;
end;

procedure Tfrm_principal.r07Click(Sender: TObject);
begin
   frm_chama_rel_comissoes.show;
end;

procedure Tfrm_principal.r08Click(Sender: TObject);
begin
   frm_relcomparativo.show;
end;

procedure Tfrm_principal.r09Click(Sender: TObject);
begin
   frm_rel_aniver.show;
end;

procedure Tfrm_principal.r10Click(Sender: TObject);
begin
   frm_rel_agenda.show;
end;

procedure Tfrm_principal.r11Click(Sender: TObject);
begin
   frm_chama_relcaixa.show;
end;

procedure Tfrm_principal.r12Click(Sender: TObject);
begin
   frm_rel_retiradas.show;
end;

procedure Tfrm_principal.r13Click(Sender: TObject);
begin
   frm_relmovest.show;
end;

procedure Tfrm_principal.r14Click(Sender: TObject);
begin
   frm_rel_fornec.show;
end;

procedure Tfrm_principal.r15Click(Sender: TObject);
begin
   frm_forma.show;
end;

procedure Tfrm_principal.r16Click(Sender: TObject);
begin
   frm_rel_aposte.showmodal;
end;

procedure Tfrm_principal.r17Click(Sender: TObject);
begin
   frm_vendas_dpto.showmodal;
end;

procedure Tfrm_principal.RecebimentosePagamentos2Click(Sender: TObject);
begin
   frm_rec_caixa.show;
end;

procedure Tfrm_principal.RelClientes1Click(Sender: TObject);
begin
   frm_chama_relcli.show;
end;

procedure Tfrm_principal.ResumodeServios1Click(Sender: TObject);
begin
   frm_resumo.showmodal;
end;

procedure Tfrm_principal.Sair1Click(Sender: TObject);
begin
  // Finalizando o Processo do Sistema//
  If Application.Messagebox('Deseja Realmente Sair do Sistema? ', 'Confirma��o',
  mb_Iconquestion + Mb_OkCancel + Mb_DefButton1) = IdOk Then
  Close;
end;

procedure Tfrm_principal.ServiosRealizados1Click(Sender: TObject);
begin
   frm_rel_servcli.show;
end;

procedure Tfrm_principal.Sobre1Click(Sender: TObject);
begin
   frm_sobre.show;
end;

procedure Tfrm_principal.SpeedButton1Click(Sender: TObject);
begin
   frm_resumo.showmodal;
end;

procedure Tfrm_principal.r18Click(Sender: TObject);
begin
   frm_comp_vendas.showmodal;
end;

procedure Tfrm_principal.m01Click(Sender: TObject);
begin
   frm_servico.show;
end;

procedure Tfrm_principal.m02Click(Sender: TObject);
begin
   frm_vendas.show;
end;

procedure Tfrm_principal.c01Click(Sender: TObject);
begin
   frm_cadcli.show;
end;

procedure Tfrm_principal.c03Click(Sender: TObject);
begin
   frm_cadtiposerv.show;
end;

procedure Tfrm_principal.c02Click(Sender: TObject);
begin
   frm_cadatend.show;
end;

procedure Tfrm_principal.c05Click(Sender: TObject);
begin
   frm_cadfornec.show;
end;

procedure Tfrm_principal.c06Click(Sender: TObject);
begin
   frm_formapag.show;
end;

procedure Tfrm_principal.c07Click(Sender: TObject);
begin
   frm_agenda.show;
end;

procedure Tfrm_principal.c08Click(Sender: TObject);
begin
   frm_usuarios.ShowModal;
end;

procedure Tfrm_principal.c09Click(Sender: TObject);
begin
   frm_mudausu.showmodal;
end;

procedure Tfrm_principal.c10Click(Sender: TObject);
begin
   frm_cadauto.showmodal;
end;

procedure Tfrm_principal.c04Click(Sender: TObject);
begin
   frm_cadtiposerv.show;
end;

procedure Tfrm_principal.cx01Click(Sender: TObject);
begin
   frm_movcaixa.show;
end;

procedure Tfrm_principal.cx02Click(Sender: TObject);
begin
   frm_rec_caixa.show;
end;

procedure Tfrm_principal.cx03Click(Sender: TObject);
begin
   frm_retiradas.show;
end;

procedure Tfrm_principal.cx04Click(Sender: TObject);
begin
   frm_fechacaixa.show;
end;

procedure Tfrm_principal.cx05Click(Sender: TObject);
begin
   frm_aposte.showmodal;
end;

procedure Tfrm_principal.e01Click(Sender: TObject);
begin
   frm_movestoque.show;
end;

procedure Tfrm_principal.e02Click(Sender: TObject);
begin
   frm_correcaoest.show;
end;

procedure Tfrm_principal.Timer1Timer(Sender: TObject);
begin
  // Iforma��es de Data Hora e usuarios//
  StatusBar1.Panels[3].Text := '' + FormatDateTime
  ('dddd", "dd" de "mmmm" de "yyyy', now);
  StatusBar1.Panels[4].Text := '' + FormatDateTime('hh:nn:ss', now);
  StatusBar1.Panels[6].Text := dt_studio.tb_cadusu.FieldByName('NOM_APELIDO').AsString;
end;

procedure Tfrm_principal.Usurios1Click(Sender: TObject);
begin
   frm_usuarios.ShowModal;
end;

procedure Tfrm_principal.ut01Click(Sender: TObject);
begin
   frm_sobre.show;
end;

procedure Tfrm_principal.ut02Click(Sender: TObject);
begin
   frm_aniversariantes.show;
   frm_aniversariantes.memo.clear;
end;

procedure Tfrm_principal.ut03Click(Sender: TObject);
begin
   WinExec('Calc.Exe',SW_Show);
end;

procedure Tfrm_principal.ut04Click(Sender: TObject);
begin
   frm_comp_totais.showmodal;
end;

procedure Tfrm_principal.ut05Click(Sender: TObject);
begin
   frm_arq_totais.showmodal;
end;

procedure Tfrm_principal.ValorDirioeMensalComisses1Click(Sender: TObject);
begin
   frm_chama_rel_comissoes.show;
end;

procedure Tfrm_principal.Venda1Click(Sender: TObject);
begin
   frm_vendas.show;
end;

procedure Tfrm_principal.VendaseServios1Click(Sender: TObject);
begin
   frm_vendas_dpto.showmodal;
end;

end.
