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
