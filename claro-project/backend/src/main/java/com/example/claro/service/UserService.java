package com.example.claro.service;

import com.example.claro.model.User;
import com.example.claro.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Serviço simples para operações com User
 */
@Service
public class UserService {
    
    @Autowired
    private UserRepository userRepository;
    
    // Salvar usuário
    public User salvarUser(User user) {
        return userRepository.save(user);
    }
    
    // Buscar todos os usuários
    public List<User> buscarTodos() {
        return userRepository.findAll();
    }
    
    // Buscar usuário por ID
    public User buscarPorId(Long id) {
        return userRepository.findById(id).orElse(null);
    }
    
    // Deletar usuário
    public void deletarUser(Long id) {
        userRepository.deleteById(id);
    }
}

