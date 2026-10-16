# Itens de informação — catálogo e matriz autor × revisor

Este arquivo é a **fonte única** de quem escreve e de quem revisa cada parte do
documento. Ele atende à **regra 5** do enunciado e ao critério individual
*"Autoria e revisão"*. Todos os membros precisam ser autores e revisores, e
ninguém revisa o próprio item.

> **Status desta matriz:** PROPOSTA INICIAL, a ser discutida e aprovada na
> reunião de abertura. Registre a aprovação e as trocas na ata. Toda troca
> precisa manter as restrições da seção [Verificação](#verificação).

## Como a divisão foi pensada

A divisão segue o princípio **"dividir e conquistar"** (Apêndice C).

- **Cada pessoa acompanha um fio do trabalho ao longo das quatro seções.** Assim,
  quem elicita um assunto também o analisa, especifica e valida. Isso reduz
  lacunas de integração e cria um "dono" para cada linha de raciocínio.
- **Os revisores vêm de outro fio.** Um olhar externo encontra mais
  inconsistências entre modelos (critério 4.2).
- **A integração é coletiva.** Os itens transversais (glossário, matriz de
  rastreabilidade e inspeção) têm donos, mas todos alimentam esses itens.

| Fio de trabalho | Dono | Itens de autoria |
|-----------------|------|------------------|
| Stakeholders, vocabulário e validação | CFS  | EL-01, AN-01, ES-06, VA-02, VA-05 |
| App atual (8 funcionalidades)         | GBR  | EL-03, AN-04, ES-01, VA-03 |
| Evolução — estrutura do domínio       | JVBT | EL-02, AN-03, ES-02, VA-04 |
| Documentos, regras e prioridades      | MMRA | EL-04, AN-06, ES-04, VA-01 |
| Usuários, objetivos e interação       | NCLD | EL-05, AN-02, ES-05, ES-07 |
| Necessidades, qualidade e rastreabilidade | TICB | EL-06, AN-05, ES-03, ES-08 |

## Catálogo

**Legenda:**

- **Status:** `A fazer` → `Em autoria` → `Em revisão` → `Aprovado` → `No documento`.
- **Depende de:** itens que precisam existir, ao menos em rascunho, antes deste.
  É a base da análise de impacto (critério 5.1).

### 1. Elicitação

| ID    | Item de informação | Conteúdo esperado | Autor | Revisor | Depende de | Status | Issue |
|-------|--------------------|-------------------|-------|---------|------------|--------|-------|
| EL-01 | Identificação de stakeholders | Ver nota EL-01 abaixo. | CFS | NCLD | — | A fazer | |
| EL-02 | Plano de elicitação | Técnicas escolhidas e justificadas (SWEBOK cap. 1), fontes, cronograma e roteiros. | JVBT | TICB | EL-01 | A fazer | |
| EL-03 | Inventário do app atual | Ver nota EL-03 abaixo. | GBR | MMRA | EL-02 | A fazer | |
| EL-04 | Análise de documentos | Ver nota EL-04 abaixo. | MMRA | CFS | EL-02 | A fazer | |
| EL-05 | Questionário e entrevistas | Instrumento aplicado à comunidade sobre a evolução (avaliação de UA), com a consolidação anonimizada das respostas. | NCLD | JVBT | EL-01, EL-02 | A fazer | |
| EL-06 | Registro de necessidades | Necessidades brutas (`NEC-xx`) com a origem de cada uma (stakeholder e técnica). É a entrada da análise. | TICB | GBR | EL-03, EL-04, EL-05 | A fazer | |

**Notas da Elicitação:**

- **EL-01.**
  - Stakeholders: discentes, docentes, técnicos, visitantes, direção de UA,
    Secom, central de segurança, RU, Rádio, CPA etc.
  - Para cada um: interesse, influência e papel na evolução.
- **EL-03.**
  - Engenharia reversa das 8 funcionalidades, com capturas de tela e fluxos
    observados.
  - Versão do app e dispositivo usados.
  - Integrações externas observadas: abrir outros apps, mapas, lojas.
- **EL-04.** Documentos analisados:
  - tabela de áreas do conhecimento do CNPq;
  - instrumentos de avaliação institucional (SINAES/CPA);
  - lista de UAs da UFG;
  - termos de uso e política de privacidade do app.

### 2. Análise

| ID    | Item de informação | Conteúdo esperado | Autor | Revisor | Depende de | Status | Issue |
|-------|--------------------|-------------------|-------|---------|------------|--------|-------|
| AN-01 | Glossário | Termos do domínio com definição única. Ex.: UA, regional, dimensão de qualidade, elemento educacional, questão, avaliação, nota, área do conhecimento. | CFS | GBR | EL-03, EL-04 | A fazer | |
| AN-02 | Modelo de objetivos | Objetivos dos stakeholders e como o app contribui, em iStar 2.0 ou árvore de objetivos. Ponto central: por que avaliar UAs. | NCLD | MMRA | EL-01, EL-06 | A fazer | |
| AN-03 | Modelo conceitual do domínio | Ver nota AN-03 abaixo. | JVBT | NCLD | AN-01 | A fazer | |
| AN-04 | Diagrama de casos de uso | Atores e casos de uso do app inteiro, com a versão atual e a evolução separadas por pacote. | GBR | TICB | EL-03, EL-06 | A fazer | |
| AN-05 | Conflitos e negociação | Conflitos entre necessidades e a resolução adotada. Ex.: anonimato × evitar avaliações duplicadas. | TICB | CFS | EL-06 | A fazer | |
| AN-06 | Priorização | Classificação MoSCoW (ou outra técnica justificada) das necessidades e dos requisitos, com critério e participantes. | MMRA | JVBT | EL-06, AN-05 | A fazer | |

**Nota AN-03.** Diagrama de classes conceitual, com dicionário de dados.

- Classes: Unidade Acadêmica, Área do Conhecimento, Regional, Dimensão,
  Elemento Educacional, Questão, Avaliação, Resposta, Usuário etc.
- Também cobre os conceitos da versão atual: Evento, Notícia, Cardápio, Local,
  App.

### 3. Especificação

| ID    | Item de informação | Conteúdo esperado | Autor | Revisor | Depende de | Status | Issue |
|-------|--------------------|-------------------|-------|---------|------------|--------|-------|
| ES-01 | Requisitos funcionais — versão atual | `RF-xx` das 8 categorias, no padrão da ISO/IEC/IEEE 29148, com prioridade e origem. | GBR | CFS | AN-04, AN-06 | A fazer | |
| ES-02 | Requisitos funcionais — avaliação de UA | `RF-xx` da evolução: registrar avaliação e consultar as notas por UA, por área e da UFG. | JVBT | MMRA | AN-03, AN-04, AN-06 | A fazer | |
| ES-03 | Requisitos de qualidade | Ver nota ES-03 abaixo. | TICB | NCLD | EL-06, AN-06 | A fazer | |
| ES-04 | Regras de negócio | `RN-xx`, com destaque para o cálculo das médias (elemento → dimensão → UA → área → UFG). Ver nota ES-04 abaixo. | MMRA | GBR | AN-03, AN-05 | A fazer | |
| ES-05 | Especificação de casos de uso | Descrição detalhada dos casos de uso prioritários: pré-condições, fluxo principal, fluxos alternativos e de exceção, pós-condições. | NCLD | JVBT | AN-04, ES-01, ES-02 | A fazer | |
| ES-06 | Modelos de comportamento | Diagramas de sequência e atividade dos fluxos prioritários e diagrama de estados da Avaliação. | CFS | TICB | ES-05, AN-03 | A fazer | |
| ES-07 | Protótipos de interface | Telas da evolução (avaliar UA e ver notas) em baixa ou média fidelidade, ligadas aos casos de uso. | NCLD | CFS | ES-02, ES-05 | A fazer | |
| ES-08 | Matriz de rastreabilidade | `NEC` → `RF`/`RNF`/`RN` → `UC` → modelos → critérios de aceitação, com links para os itens. | TICB | JVBT | ES-01 a ES-07, VA-04 | A fazer | |

**Notas da Especificação:**

- **ES-03.** `RNF-xx` organizados pelas características da ISO/IEC 25010, cada
  um com **métrica verificável**. Características esperadas:
  - usabilidade e acessibilidade;
  - desempenho;
  - disponibilidade;
  - segurança e privacidade (LGPD);
  - compatibilidade;
  - manutenibilidade.
- **ES-04.** Também define:
  - arredondamento das notas;
  - mínimo de respostas para exibir uma nota;
  - elegibilidade de quem pode avaliar.

### 4. Validação

| ID    | Item de informação | Conteúdo esperado | Autor | Revisor | Depende de | Status | Issue |
|-------|--------------------|-------------------|-------|---------|------------|--------|-------|
| VA-01 | Plano de validação | Técnicas (inspeção, prototipação, critérios de aceitação), participantes, critérios de saída. | MMRA | TICB | — | A fazer | |
| VA-02 | Checklist de inspeção | Checklist baseado nas características de requisitos bem formados da ISO/IEC/IEEE 29148. Ver nota VA-02 abaixo. | CFS | MMRA | VA-01 | A fazer | |
| VA-03 | Relatório de inspeção | Defeitos encontrados (`DEF-xx`): item afetado, tipo, severidade, quem encontrou, correção e status. | GBR | NCLD | VA-02, seção 3 | A fazer | |
| VA-04 | Critérios de aceitação | Critérios verificáveis por requisito prioritário, no formato Dado/Quando/Então. | JVBT | GBR | ES-01, ES-02, ES-04 | A fazer | |
| VA-05 | Validação por protótipo | Sessões com usuários usando ES-07: roteiro, participantes anonimizados, achados e mudanças geradas. | CFS | GBR | ES-07 | A fazer | |

**Nota VA-02.** Características verificadas pelo checklist:

- necessário;
- adequado;
- não ambíguo;
- completo;
- singular;
- viável;
- verificável;
- correto;
- conforme.

### Apêndices do documento (responsabilidade coletiva)

| ID    | Apêndice | Responsável pela consolidação |
|-------|----------|-------------------------------|
| AP-01 | Atas de reuniões | Secretário(a) de cada reunião (rodízio). |
| AP-02 | Registro de comunicações | Todos registram; JVBT consolida. |
| AP-03 | Matriz autor × revisor final | JVBT. |

## Verificação

Recalcule esta tabela sempre que houver uma troca.

| Membro | Autor | Revisor | Total |
|--------|:-----:|:-------:|:-----:|
| CFS    | 5 | 4 | 9 |
| GBR    | 4 | 5 | 9 |
| JVBT   | 4 | 4 | 8 |
| MMRA   | 4 | 4 | 8 |
| NCLD   | 4 | 4 | 8 |
| TICB   | 4 | 4 | 8 |

Restrições que precisam valer depois de qualquer troca:

- [x] Todos são autores de ao menos 1 item.
- [x] Todos são revisores de ao menos 1 item.
- [x] Nenhum item tem autor igual ao revisor.
- [x] Carga equilibrada: diferença máxima de 1 item entre os membros.
