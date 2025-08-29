package com.example.claro.service;

import com.example.claro.model.Solicitacao;
import com.example.claro.model.StatusSolicitacao;
import com.example.claro.repository.SolicitacaoRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Serviço para operações com Solicitacao
 */
@Service
public class SolicitacaoService {
    
    @Autowired
    private SolicitacaoRepository solicitacaoRepository;
    
    // Salvar solicitação
    public Solicitacao salvarSolicitacao(Solicitacao solicitacao) {
        return solicitacaoRepository.save(solicitacao);
    }
    
    // Buscar todas as solicitações
    public List<Solicitacao> buscarTodas() {
        return solicitacaoRepository.findAll();
    }
    
    // Buscar solicitação por ID
    public Solicitacao buscarPorId(Long id) {
        return solicitacaoRepository.findById(id).orElse(null);
    }
    
    // Buscar solicitações por status
    public List<Solicitacao> buscarPorStatus(StatusSolicitacao status) {
        return solicitacaoRepository.findByStatus(status);
    }
    
    // Buscar solicitações por usuário
    public List<Solicitacao> buscarPorUsuario(Long userId) {
        return solicitacaoRepository.findByUserId(userId);
    }
    
    // Atualizar status da solicitação
    public Solicitacao atualizarStatus(Long id, StatusSolicitacao novoStatus) {
        Solicitacao solicitacao = buscarPorId(id);
        if (solicitacao != null) {
            solicitacao.setStatus(novoStatus);
            return salvarSolicitacao(solicitacao);
        }
        return null;
    }
    
    // Deletar solicitação
    public void deletarSolicitacao(Long id) {
        solicitacaoRepository.deleteById(id);
    }
}

