package com.example.SpringBootMySQL.repository;

import org.springframework.data.repository.CrudRepository;

import com.example.SpringBootMySQL.model.User;

public interface UserRepository extends CrudRepository<User,Long>{
	
}
