package com.mediwr.Mediware.repository;

import org.springframework.data.mongodb.repository.MongoRepository;
import org.springframework.stereotype.Repository;

import com.mediwr.Mediware.domain.User;

@Repository
public interface UserRepository extends MongoRepository<User, String>{

	public User findById(String id);

	public User findByUserId(String userId);
}
