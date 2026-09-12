-- ============================================================================
-- PROJETO: CONSOLIDAÇÃO DE CONTINUIDADE E MONITORIZAÇÃO CLOUD
-- AMBIENTE: NEON POSTGRESQL CLOUD
-- REQUISITO: 00_CONTINUIDADE_E_INCIDENTES.sql
-- ============================================================================

-- 1. CRIAÇÃO DA TABELA DE LOG DE INCIDENTES E AUDITORIA
CREATE TABLE IF NOT EXISTS tb_log_incidentes (
    id_incidente SERIAL PRIMARY KEY,
    data_hora TIMESTAMP DEFAULT NOW(),
    servico_afetado VARCHAR(100) NOT NULL,
    descricao_incidente TEXT NOT NULL,
    nivel_severidade VARCHAR(20) CHECK (nivel_severidade IN ('BAIXA', 'MÉDIA', 'ALTA', 'CRÍTICA')),
    status_resolucao VARCHAR(20) DEFAULT 'EM ANALISE',
    tempo_paragem_minutos INT DEFAULT 0
);

-- 2. INSERÇÕES DE REGISTOS DE AUDITORIA E TESTE DE MONITORIZAÇÃO
INSERT INTO tb_log_incidentes (servico_afetado, descricao_incidente, nivel_severidade, status_resolucao, tempo_paragem_minutos)
VALUES 
    ('Neon Cloud DB', 'Teste de failover e verificação de redundância de réplicas', 'BAIXA', 'RESOLVIDO', 0),
    ('API de Conexão', 'Ligeira oscilação de latência na ligação do pooler', 'MÉDIA', 'RESOLVIDO', 2),
    ('Rotina de Backup', 'Validação manual do ponto de restauração PITR (Point-in-Time Recovery)', 'BAIXA', 'RESOLVIDO', 0);

-- 3. CONSULTA DE MONITORIZAÇÃO EM TEMPO REAL DE CONEXÕES ATIVAS
SELECT 
    pid,
    usename AS utilizador,
    datname AS base_dados,
    client_addr AS ip_cliente,
    state AS estado,
    query AS consulta_ativa,
    state_change - query_start AS duracao_execucao
FROM 
    pg_stat_activity
WHERE 
    state != 'idle'
ORDER BY 
    duracao_execucao DESC;

-- 4. MANUTENÇÃO E OTIMIZAÇÃO DE RECURSOS CLOUD
VACUUM ANALYZE;
