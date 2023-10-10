package com.ledya.funtuta.repository;

import com.ledya.funtuta.model.User;
import org.springframework.data.repository.ListCrudRepository;

import java.util.List;

public interface UserRepository extends ListCrudRepository<User, Long> {
    List<User> findAllByFirstName(String name);
}
