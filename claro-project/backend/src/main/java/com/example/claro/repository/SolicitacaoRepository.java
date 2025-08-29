package com.example.claro.repository;

import com.example.claro.model.Solicitacao;
import com.example.claro.model.StatusSolicitacao;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Repositório para Solicitacao
 */
@Repository
public interface SolicitacaoRepository extends JpaRepository<Solicitacao, Long> {
    
    List<Solicitacao> findByStatus(StatusSolicitacao status);
    List<Solicitacao> findByUserId(Long userId);
}

