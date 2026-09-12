# 📊 Projeto: Consolidação da Infraestrutura Cloud e Continuidade do Negócio
> **Módulo:** UFCD 10797 – Organização e Consolidação de Dados  
> **Repositório:** `Projeto_Organizacao_Dados`

---

## 📌 Visão Geral
Este repositório consolida a infraestrutura de dados em nuvem no **Neon PostgreSQL Cloud**, integrando rotinas automatizadas de auditoria de incidentes, planos de manutenção operacional e protocolos formais de transparência para a Direção.

---

## 📂 Ficheiros de Continuidade e Resiliência

```text
Projeto_Organizacao_Dados/
│
├── 📄 00_CONTINUIDADE_E_INCIDENTES.sql  # Tabela de log (tb_log_incidentes), monitorização pg_stat_activity e VACUUM ANALYZE
├── 📄 CALENDARIO_OPERACIONAL.txt         # Plano de manutenção diário, semanal e mensal na consola Neon
├── 📄 PROTOCOLO_SLA.txt                  # Guião oficial de comunicação de indisponibilidade e SLA
└── 📄 README.md                          # Documentação principal da infraestrutura

## ⚙️ Componentes da Infraestrutura Cloud

### 1. Monitorização e Auditoria (`00_CONTINUIDADE_E_INCIDENTES.sql`)
* **Criação da estrutura de auditoria:** Tabela `tb_log_incidentes` para registo rigoroso de ocorrências.
* **Análise em tempo real:** Consulta à visualização de sistema `pg_stat_activity` para monitorização de conexões ativas.
* **Manutenção:** Execução do comando `VACUUM ANALYZE` para otimização de storage e atualização de estatísticas de pesquisa.

### 2. Manutenção Preventiva (`CALENDARIO_OPERACIONAL.txt`)
* **Planeamento operacional:** Definição rigorosa de rotinas diárias, semanais e mensais executadas no Neon Cloud Console para garantir a saúde da base de dados.

### 3. Governação e Transparência (`PROTOCOLO_SLA.txt`)
* **Níveis de serviço e comunicação:** Definição de matrizes de SLA e disponibilização de um *template* oficial para comunicação transparente de incidentes à Direção.
