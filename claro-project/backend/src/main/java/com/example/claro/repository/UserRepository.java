package com.example.claro.repository;

import com.example.claro.model.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

/**
 * Repositório simples para User
 */
@Repository
public interface UserRepository extends JpaRepository<User, Long> {
    // JpaRepository já fornece todos os métodos básicos:
    // save(), findAll(), findById(), deleteById(), etc.
}

