package com.example.claro.controller;

import com.example.claro.model.Solicitacao;
import com.example.claro.model.StatusSolicitacao;
import com.example.claro.service.SolicitacaoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * Controller REST para Solicitacao
 */
@RestController
@RequestMapping("/api/solicitacoes")
@CrossOrigin(origins = "*")
public class SolicitacaoController {
    
    @Autowired
    private SolicitacaoService solicitacaoService;
    
    // GET - Buscar todas as solicitações
    @GetMapping
    public List<Solicitacao> getAllSolicitacoes() {
        return solicitacaoService.buscarTodas();
    }
    
    // POST - Criar nova solicitação
    @PostMapping
    public Solicitacao createSolicitacao(@RequestBody Solicitacao solicitacao) {
        return solicitacaoService.salvarSolicitacao(solicitacao);
    }
    
    // GET - Buscar solicitação por ID
    @GetMapping("/{id}")
    public Solicitacao getSolicitacaoById(@PathVariable Long id) {
        return solicitacaoService.buscarPorId(id);
    }
    
    // GET - Buscar solicitações por status
    @GetMapping("/status/{status}")
    public List<Solicitacao> getSolicitacoesByStatus(@PathVariable StatusSolicitacao status) {
        return solicitacaoService.buscarPorStatus(status);
    }
    
    // GET - Buscar solicitações por usuário
    @GetMapping("/usuario/{userId}")
    public List<Solicitacao> getSolicitacoesByUser(@PathVariable Long userId) {
        return solicitacaoService.buscarPorUsuario(userId);
    }
    
    // PUT - Atualizar status da solicitação
    @PutMapping("/{id}/status")
    public Solicitacao updateStatus(@PathVariable Long id, @RequestBody StatusSolicitacao novoStatus) {
        return solicitacaoService.atualizarStatus(id, novoStatus);
    }
    
    // DELETE - Deletar solicitação
    @DeleteMapping("/{id}")
    public void deleteSolicitacao(@PathVariable Long id) {
        solicitacaoService.deletarSolicitacao(id);
    }
}

