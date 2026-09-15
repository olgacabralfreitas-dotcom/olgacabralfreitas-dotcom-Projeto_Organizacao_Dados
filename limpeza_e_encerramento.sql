-- ============================================================================
-- PROJETO: LIMPEZA E ENCERRAMENTO DE CICLO OPERACIONAL
-- AMBIENTE: NEON POSTGRESQL CLOUD
-- REQUISITO: limpeza_e_encerramento.sql
-- ============================================================================

-- 1. REMOÇÃO DE ESTRUTURAS TEMPORÁRIAS OU RESIDUAIS DE DESENVOLVIMENTO
DROP TABLE IF EXISTS temp_migration_log;
DROP TABLE IF EXISTS staging_test_data;

-- 2. REORGANIZAÇÃO COMPLETA DE STORAGE E ATUALIZAÇÃO DO OTIMIZADOR
VACUUM ANALYZE;

-- 3. REGISTO DE AUDITORIA DE ENCERRAMENTO
INSERT INTO tb_log_incidentes (servico_afetado, descricao_incidente, nivel_severidade, status_resolucao, tempo_paragem_minutos)
VALUES ('Sistema Global', 'Encerramento formal de ciclo e transicao de infraestrutura concluida', 'BAIXA', 'RESOLVIDO', 0);
