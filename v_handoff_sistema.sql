-- ============================================================================
-- PROJETO: CONSOLIDAÇÃO GLOBAL E TRANSIÇÃO FINAL CLOUD
-- AMBIENTE: NEON POSTGRESQL CLOUD
-- REQUISITO: v_handoff_sistema.sql
-- ============================================================================

-- 1. CRIAÇÃO DA VISTA DE HANDOFF / PAINEL DE CONTROLO OPERACIONAL
CREATE OR REPLACE VIEW v_handoff_sistema AS
SELECT 
    t.table_schema AS esquema,
    t.table_name AS nome_tabela,
    pg_size_pretty(pg_total_relation_size('"' || t.table_schema || '"."' || t.table_name || '"')) AS tamanho_total,
    NOW() AS data_verificacao
FROM 
    information_schema.tables t
WHERE 
    t.table_schema = 'public' 
    AND t.table_type = 'BASE TABLE'
ORDER BY 
    t.table_name ASC;

-- 2. CONSULTA DE VALIDAÇÃO DO HANDOFF
SELECT * FROM v_handoff_sistema;
-- ============================================================================
-- PROJETO: CONSOLIDAÇÃO GLOBAL E TRANSIÇÃO FINAL CLOUD
-- AMBIENTE: NEON POSTGRESQL CLOUD
-- REQUISITO: v_handoff_sistema.sql
-- ============================================================================

-- 1. CRIAÇÃO DA VISTA DE HANDOFF / PAINEL DE CONTROLO OPERACIONAL
CREATE OR REPLACE VIEW v_handoff_sistema AS
SELECT 
    t.table_schema AS esquema,
    t.table_name AS nome_tabela,
    pg_size_pretty(pg_total_relation_size('"' || t.table_schema || '"."' || t.table_name || '"')) AS tamanho_total,
    NOW() AS data_verificacao
FROM 
    information_schema.tables t
WHERE 
    t.table_schema = 'public' 
    AND t.table_type = 'BASE TABLE'
ORDER BY 
    t.table_name ASC;

-- 2. CONSULTA DE VALIDAÇÃO DO HANDOFF
SELECT * FROM v_handoff_sistema;
