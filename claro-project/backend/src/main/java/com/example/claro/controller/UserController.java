package com.example.claro.controller;

import com.example.claro.model.User;
import com.example.claro.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * Controller REST simples para User
 */
@RestController
@RequestMapping("/api/users")
@CrossOrigin(origins = "*") // Permite requisições de qualquer origem
public class UserController {
    
    @Autowired
    private UserService userService;
    
    // GET - Buscar todos os usuários
    @GetMapping
    public List<User> getAllUsers() {
        return userService.buscarTodos();
    }
    
    // POST - Criar novo usuário
    @PostMapping
    public User createUser(@RequestBody User user) {
        return userService.salvarUser(user);
    }
    
    // GET - Buscar usuário por ID
    @GetMapping("/{id}")
    public User getUserById(@PathVariable Long id) {
        return userService.buscarPorId(id);
    }
    
    // DELETE - Deletar usuário
    @DeleteMapping("/{id}")
    public void deleteUser(@PathVariable Long id) {
        userService.deletarUser(id);
    }
}

