package com.example.claro.model;

import javax.persistence.*;

/**
 * Entidade User - Simples e funcional
 */
@Entity
@Table(name = "users")
public class User {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    
    private String nome;
    private String cpf;
    private String descricaoProblema;
    
    // Construtor padrão
    public User() {}
    
    // Construtor com parâmetros
    public User(String nome, String cpf, String descricaoProblema) {
        this.nome = nome;
        this.cpf = cpf;
        this.descricaoProblema = descricaoProblema;
    }
    
    // Getters e Setters
    public Long getId() {
        return id;
    }
    
    public void setId(Long id) {
        this.id = id;
    }
    
    public String getNome() {
        return nome;
    }
    
    public void setNome(String nome) {
        this.nome = nome;
    }
    
    public String getCpf() {
        return cpf;
    }
    
    public void setCpf(String cpf) {
        this.cpf = cpf;
    }
    
    public String getDescricaoProblema() {
        return descricaoProblema;
    }
    
    public void setDescricaoProblema(String descricaoProblema) {
        this.descricaoProblema = descricaoProblema;
    }
}

