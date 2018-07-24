package com.mediwr.Mediware.service;

import com.mediwr.Mediware.domain.User;
import com.mediwr.Mediware.model.UserVO;

public interface UserService {

	public User getUserById(String id);

	public UserVO save(UserVO userVO);
	
	public UserVO getUserByUserId(String userId);
	
}
