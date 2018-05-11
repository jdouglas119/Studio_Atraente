program Studio_Atraente;

uses
  Vcl.Forms,
  un_principal in 'un_principal.pas' {frm_principal},
  un_cadcli in 'un_cadcli.pas' {frm_cadcli},
  un_dtstudio in 'un_dtstudio.pas' {dt_studio: TDataModule},
  un_cadprod in 'un_cadprod.pas' {frm_cadprod},
  un_cadatend in 'un_cadatend.pas' {frm_cadatend},
  un_cadtiposerv in 'un_cadtiposerv.pas' {frm_cadtiposerv},
  un_cadusuarios in 'un_cadusuarios.pas' {frm_usuarios},
  un_movservico in 'un_movservico.pas' {frm_movestoque},
  un_pesq_tipo in 'un_pesq_tipo.pas' {frm_pesq_tipo},
  un_pesq_cli in 'un_pesq_cli.pas' {frm_pesq_cli},
  un_pesq_atend in 'un_pesq_atend.pas' {frm_pesq_atend},
  un_cadfornec in 'un_cadfornec.pas' {frm_cadfornec},
  un_pesq_prod in 'un_pesq_prod.pas' {frm_pesq_prod},
  un_pesq_fornec in 'un_pesq_fornec.pas' {frm_pesq_fornec},
  un_correcaoest in 'un_correcaoest.pas' {frm_correcaoest},
  un_vendas in 'un_vendas.pas' {frm_vendas},
  un_movcaixa in 'un_movcaixa.pas' {frm_movcaixa},
  un_rec_caixa in 'un_rec_caixa.pas' {frm_rec_caixa},
  un_retiradas in 'un_retiradas.pas' {frm_retiradas},
  un_formapag in 'un_formapag.pas' {frm_formapag},
  un_fechacaixa in 'un_fechacaixa.pas' {frm_fechacaixa},
  un_chama_relcli in 'un_chama_relcli.pas' {frm_chama_relcli},
  un_chama_relatend in 'un_chama_relatend.pas' {frm_chama_relatend},
  un_chama_servcli in 'un_chama_servcli.pas' {frm_rel_servcli},
  un_chama_tabservicos in 'un_chama_tabservicos.pas' {frm_tabela_servicos},
  un_chama_relcartao_cred in 'un_chama_relcartao_cred.pas' {frm_rel_cartaocred},
  un_chama_aniver in 'un_chama_aniver.pas' {frm_rel_aniver},
  un_sobre in 'un_sobre.pas' {frm_sobre},
  un_orcamento in 'un_orcamento.pas' {frm_servico},
  un_chama_valor_atend in 'un_chama_valor_atend.pas' {frm_rel_valor_atend},
  un_chama_comissoes in 'un_chama_comissoes.pas' {frm_chama_rel_comissoes},
  un_aniversario in 'un_aniversario.pas' {frm_aniversariantes},
  un_chama_comparativo in 'un_chama_comparativo.pas' {frm_relcomparativo},
  un_chama_comparativo_prod in 'un_chama_comparativo_prod.pas' {frm_vendasprod},
  un_relmovest in 'un_relmovest.pas' {frm_relmovest},
  un_aposte in 'un_aposte.pas' {frm_aposte},
  un_chama_movcaixa in 'un_chama_movcaixa.pas' {frm_chama_relcaixa},
  un_rel_retiradas in 'un_rel_retiradas.pas' {frm_rel_retiradas},
  un_agenda in 'un_agenda.pas' {frm_agenda},
  un_rel_agenda in 'un_rel_agenda.pas' {frm_rel_agenda},
  un_relatorios in 'un_relatorios.pas' {frm_relatorios},
  un_rel_fornecedor in 'un_rel_fornecedor.pas' {frm_rel_fornec},
  un_rel_formapgto in 'un_rel_formapgto.pas' {frm_forma},
  un_impcom in 'un_impcom.pas' {frm_impcom},
  un_senha_aut in 'un_senha_aut.pas' {frm_senha_aut},
  un_aut_aposte in 'un_aut_aposte.pas' {frm_aut_aposte},
  un_aut_retiradas in 'un_aut_retiradas.pas' {frm_aut_retiradas},
  un_aut_servico in 'un_aut_servico.pas' {frm_aut_servico},
  un_aut_itens in 'un_aut_itens.pas' {frm_aut_itens},
  un_vendas_dpto in 'un_vendas_dpto.pas' {frm_vendas_dpto},
  un_rel_aposte in 'un_rel_aposte.pas' {frm_rel_aposte},
  un_comp_vendas in 'un_comp_vendas.pas' {frm_comp_vendas},
  un_comp_totais in 'un_comp_totais.pas' {frm_comp_totais},
  un_arq_totais in 'un_arq_totais.pas' {frm_arq_totais},
  un_chama_movcaixa2 in 'un_chama_movcaixa2.pas' {frm_rel_movcaixa},
  U_Senha in 'U_Senha.pas' {Fm_Senha},
  un_consusuario in 'un_consusuario.pas' {frm_consusuario},
  un_mudausuario in 'un_mudausuario.pas' {frm_mudausu},
  un_resumo in 'un_resumo.pas' {frm_resumo},
  un_cadautorizador in 'un_cadautorizador.pas' {frm_cadauto},
  un_consauto in 'un_consauto.pas' {frm_consauto},
  un_msg in 'un_msg.pas' {frm_msg},
  untConsultaCepViaCep in 'untConsultaCepViaCep.pas' {frmConsultaCepViaCep};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFm_Senha, Fm_Senha);
  Application.CreateForm(Tfrm_principal, frm_principal);
  Application.CreateForm(Tfrm_cadcli, frm_cadcli);
  Application.CreateForm(Tdt_studio, dt_studio);
  Application.CreateForm(Tfrm_cadprod, frm_cadprod);
  Application.CreateForm(Tfrm_cadatend, frm_cadatend);
  Application.CreateForm(Tfrm_cadtiposerv, frm_cadtiposerv);
  Application.CreateForm(Tfrm_usuarios, frm_usuarios);
  Application.CreateForm(Tfrm_movestoque, frm_movestoque);
  Application.CreateForm(Tfrm_pesq_tipo, frm_pesq_tipo);
  Application.CreateForm(Tfrm_servico, frm_servico);
  Application.CreateForm(Tfrm_pesq_cli, frm_pesq_cli);
  Application.CreateForm(Tfrm_pesq_atend, frm_pesq_atend);
  Application.CreateForm(Tfrm_cadfornec, frm_cadfornec);
  Application.CreateForm(Tfrm_pesq_prod, frm_pesq_prod);
  Application.CreateForm(Tfrm_pesq_fornec, frm_pesq_fornec);
  Application.CreateForm(Tfrm_correcaoest, frm_correcaoest);
  Application.CreateForm(Tfrm_vendas, frm_vendas);
  Application.CreateForm(Tfrm_movcaixa, frm_movcaixa);
  Application.CreateForm(Tfrm_rec_caixa, frm_rec_caixa);
  Application.CreateForm(Tfrm_retiradas, frm_retiradas);
  Application.CreateForm(Tfrm_formapag, frm_formapag);
  Application.CreateForm(Tfrm_fechacaixa, frm_fechacaixa);
  Application.CreateForm(Tfrm_chama_relcli, frm_chama_relcli);
  Application.CreateForm(Tfrm_chama_relatend, frm_chama_relatend);
  Application.CreateForm(Tfrm_rel_servcli, frm_rel_servcli);
  Application.CreateForm(Tfrm_tabela_servicos, frm_tabela_servicos);
  Application.CreateForm(Tfrm_rel_cartaocred, frm_rel_cartaocred);
  Application.CreateForm(Tfrm_rel_aniver, frm_rel_aniver);
  Application.CreateForm(Tfrm_sobre, frm_sobre);
  Application.CreateForm(Tfrm_rel_valor_atend, frm_rel_valor_atend);
  Application.CreateForm(Tfrm_chama_rel_comissoes, frm_chama_rel_comissoes);
  Application.CreateForm(Tfrm_aniversariantes, frm_aniversariantes);
  Application.CreateForm(Tfrm_relcomparativo, frm_relcomparativo);
  Application.CreateForm(Tfrm_vendasprod, frm_vendasprod);
  Application.CreateForm(Tfrm_relmovest, frm_relmovest);
  Application.CreateForm(Tfrm_aposte, frm_aposte);
  Application.CreateForm(Tfrm_chama_relcaixa, frm_chama_relcaixa);
  Application.CreateForm(Tfrm_rel_retiradas, frm_rel_retiradas);
  Application.CreateForm(Tfrm_agenda, frm_agenda);
  Application.CreateForm(Tfrm_rel_agenda, frm_rel_agenda);
  Application.CreateForm(Tfrm_relatorios, frm_relatorios);
  Application.CreateForm(Tfrm_rel_fornec, frm_rel_fornec);
  Application.CreateForm(Tfrm_forma, frm_forma);
  Application.CreateForm(Tfrm_impcom, frm_impcom);
  Application.CreateForm(Tfrm_senha_aut, frm_senha_aut);
  Application.CreateForm(Tfrm_aut_aposte, frm_aut_aposte);
  Application.CreateForm(Tfrm_aut_retiradas, frm_aut_retiradas);
  Application.CreateForm(Tfrm_aut_servico, frm_aut_servico);
  Application.CreateForm(Tfrm_aut_itens, frm_aut_itens);
  Application.CreateForm(Tfrm_vendas_dpto, frm_vendas_dpto);
  Application.CreateForm(Tfrm_rel_aposte, frm_rel_aposte);
  Application.CreateForm(Tfrm_comp_vendas, frm_comp_vendas);
  Application.CreateForm(Tfrm_comp_totais, frm_comp_totais);
  Application.CreateForm(Tfrm_arq_totais, frm_arq_totais);
  Application.CreateForm(Tfrm_rel_movcaixa, frm_rel_movcaixa);
  Application.CreateForm(Tfrm_consusuario, frm_consusuario);
  Application.CreateForm(Tfrm_mudausu, frm_mudausu);
  Application.CreateForm(Tfrm_resumo, frm_resumo);
  Application.CreateForm(Tfrm_cadauto, frm_cadauto);
  Application.CreateForm(Tfrm_consauto, frm_consauto);
  Application.CreateForm(Tfrm_msg, frm_msg);
  Application.CreateForm(Tfrm_msg, frm_msg);
  Application.CreateForm(TfrmConsultaCepViaCep, frmConsultaCepViaCep);
  Application.Run;

end.
