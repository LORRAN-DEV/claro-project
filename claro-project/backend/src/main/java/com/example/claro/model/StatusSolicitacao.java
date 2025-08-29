package com.example.claro.model;

/**
 * Enum que representa os possíveis status de uma solicitação de atendimento
 */
public enum StatusSolicitacao {
    PENDENTE("Pendente"),
    EM_ANDAMENTO("Em Andamento"),
    RESOLVIDO("Resolvido"),
    CANCELADO("Cancelado");
    
    private final String descricao;
    
    StatusSolicitacao(String descricao) {
        this.descricao = descricao;
    }
    
    public String getDescricao() {
        return descricao;
    }
    
    @Override
    public String toString() {
        return descricao;
    }
}

