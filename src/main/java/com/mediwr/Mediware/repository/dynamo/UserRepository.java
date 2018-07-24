/*package com.mediwr.Mediware.repository.dynamo;

import com.mediwr.Mediware.domain.dynamo.User;

import java.util.List;

import org.socialsignin.spring.data.dynamodb.repository.EnableScan;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@EnableScan
@Repository(value="dynamoUserRepository")
public interface UserRepository extends CrudRepository<User, String> {

	List<User> findByUserId(String userName);
	
}
*/