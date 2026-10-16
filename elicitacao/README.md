# Evidências de elicitação

Esta pasta guarda o **material bruto** que sustenta os itens da seção 1. O texto
final de cada item fica no Google Docs. Aqui ficam as provas de que cada
requisito tem origem real (critérios 1.2 *Ética* e 3.1 *Corretude
contextual*).

```
elicitacao/
├── app-atual/            EL-03 — uma pasta por funcionalidade, com capturas de tela
│   ├── 01-seguranca/
│   ├── 02-radio/
│   ├── 03-guia-estudantil/
│   ├── 04-eventos/
│   ├── 05-noticias/
│   ├── 06-restaurante-universitario/
│   ├── 07-locais/
│   └── 08-apps-ufg/
├── documentos/           EL-04 — documentos analisados, ou links para eles
├── questionario/         EL-05 — instrumento aplicado e respostas consolidadas (anonimizadas)
└── entrevistas/          EL-05 — roteiros e notas (anonimizadas)
```

## Regras

1. **Capturas do app atual.** Use o nome `AAAA-MM-DD_<plataforma>_<tela>.png`,
   por exemplo `2026-10-20_android_cardapio-semana.png`. No `notas.md` de cada
   pasta, registre:
   - a versão do app (*Configurações → Sobre*, ou a página da loja);
   - o dispositivo e o sistema;
   - quem capturou (sigla);
   - o comportamento observado, passo a passo.
2. **Privacidade.**
   - Não publique nomes, e-mails, matrículas ou telefones de participantes.
   - Identifique as pessoas por código: `P01`, `P02`…
   - Antes da coleta, apresente um termo de consentimento curto: o objetivo é
     acadêmico, a participação é voluntária e os dados são anonimizados.
3. **Respostas brutas de formulário**, como a planilha exportada do Google
   Forms, **não** vão para o repositório se tiverem dados pessoais. Guarde só a
   versão anonimizada.
4. **Documentos de terceiros.** Prefira um link com data de acesso a copiar o
   arquivo. Isso evita problemas de direito autoral.

## Checklist do inventário (EL-03)

Por funcionalidade, registre:

- [ ] Como se chega a ela (navegação a partir da tela inicial).
- [ ] As informações exibidas (campos e dados).
- [ ] As ações possíveis (filtros, busca, abrir app externo, compartilhar…).
- [ ] As integrações externas (outro app, navegador, mapa, loja, telefone).
- [ ] O comportamento sem conexão e as mensagens de erro observadas.
- [ ] Os requisitos de qualidade percebidos: tempo de carregamento,
  acessibilidade (tamanho de fonte, leitor de tela), modo escuro.
- [ ] As diferenças entre Android e iOS, se houver acesso aos dois.
