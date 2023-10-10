package com.ledya.funtuta.service;

import com.ledya.funtuta.model.User;
import com.ledya.funtuta.repository.UserRepository;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class UserService {
    private final UserRepository userRepository;

    public UserService(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    public Optional<User> findById(Long id) {
        return userRepository.findById(id);
    }

    public List<User> findAll() {
        return userRepository.findAll();
    }

    public List<User> findAllByFirstName(String name) {
        return userRepository.findAllByFirstName(name);
    }
}
