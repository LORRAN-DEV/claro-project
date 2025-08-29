package com.example.claro.model;

import javax.persistence.*;
import java.time.LocalDateTime;

/**
 * Entidade Solicitacao para gerenciar solicitações de atendimento
 */
@Entity
@Table(name = "solicitacoes")
public class Solicitacao {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    
    @ManyToOne
    @JoinColumn(name = "user_id")
    private User user;
    
    private String descricao;
    
    @Enumerated(EnumType.STRING)
    private StatusSolicitacao status;
    
    private LocalDateTime dataCriacao;
    private LocalDateTime dataAtualizacao;
    
    // Construtor padrão
    public Solicitacao() {
        this.dataCriacao = LocalDateTime.now();
        this.dataAtualizacao = LocalDateTime.now();
        this.status = StatusSolicitacao.PENDENTE;
    }
    
    // Construtor com parâmetros
    public Solicitacao(User user, String descricao) {
        this();
        this.user = user;
        this.descricao = descricao;
    }
    
    // Getters e Setters
    public Long getId() {
        return id;
    }
    
    public void setId(Long id) {
        this.id = id;
    }
    
    public User getUser() {
        return user;
    }
    
    public void setUser(User user) {
        this.user = user;
    }
    
    public String getDescricao() {
        return descricao;
    }
    
    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }
    
    public StatusSolicitacao getStatus() {
        return status;
    }
    
    public void setStatus(StatusSolicitacao status) {
        this.status = status;
        this.dataAtualizacao = LocalDateTime.now();
    }
    
    public LocalDateTime getDataCriacao() {
        return dataCriacao;
    }
    
    public void setDataCriacao(LocalDateTime dataCriacao) {
        this.dataCriacao = dataCriacao;
    }
    
    public LocalDateTime getDataAtualizacao() {
        return dataAtualizacao;
    }
    
    public void setDataAtualizacao(LocalDateTime dataAtualizacao) {
        this.dataAtualizacao = dataAtualizacao;
    }
}

