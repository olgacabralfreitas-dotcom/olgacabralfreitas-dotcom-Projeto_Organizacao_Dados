# 📊 Projeto: Consolidação Global da Infraestrutura Cloud (Neon PostgreSQL)
> **Módulo:** UFCD 10797 – Organização e Consolidação de Dados  
> **Repositório:** `Projeto_Organizacao_Dados`

---

## 📌 Visão Geral
Este repositório documenta a transição, consolidação e encerramento operacional do projeto de migração para a nuvem no **Neon PostgreSQL Cloud**. A arquitetura foi desenhada para garantir resiliência, alta disponibilidade, autonomia operacional e conformidade com as melhores práticas de governação de dados.

---

## 📂 Estrutura de Ficheiros do Repositório

```text
Projeto_Organizacao_Dados/
│
├── 📄 v_handoff_sistema.sql          # Vista SQL de handoff e inventário do estado do sistema
├── 📄 limpeza_e_encerramento.sql     # Script de encerramento, otimização final e registo de transição
├── 📄 00_CONTINUIDADE_E_INCIDENTES.sql # Tabela de audit log, monitorização e manutenção
├── 📄 CALENDARIO_OPERACIONAL.txt     # Rotinas diárias, semanais e mensais de manutenção no Neon Console
├── 📄 PROTOCOLO_SLA.txt              # Matriz de SLA e guiões oficiais de comunicação com a Direção
└── 📄 README.md                      # Documentação consolidada da infraestrutura
