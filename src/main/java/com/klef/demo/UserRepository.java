package com.klef.demo;

import org.springframework.data.repository.CrudRepository;

public interface UserRepository extends CrudRepository<User,Integer>{
	User findByemailIgnoreCase(String email);
}
