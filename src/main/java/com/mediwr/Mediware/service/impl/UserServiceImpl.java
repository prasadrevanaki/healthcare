package com.mediwr.Mediware.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mediwr.Mediware.constants.UserRoleType;
import com.mediwr.Mediware.domain.User;
import com.mediwr.Mediware.model.UserVO;
import com.mediwr.Mediware.repository.UserRepository;
import com.mediwr.Mediware.service.CounterService;
import com.mediwr.Mediware.service.UserService;

@Service
public class UserServiceImpl implements UserService {
	
	@Autowired
	CounterService counterService;
	
	@Autowired
	private UserRepository userRepository;

	@Override
	public User getUserById(String id) {
		return this.userRepository.findById(id);
	}
	
	@Override
	public UserVO getUserByUserId(String userId) {
		User user = this.userRepository.findByUserId(userId);
		return convertUserToUserVO(user);
	}

	@Override
	public UserVO save(UserVO userVO) {
		User user = convertUserVOtoUser(userVO);
		user.setUserId("MWHC01"+new Long(counterService.getNextUserIdSequence()));
		user.setRoles(new UserRoleType[] {UserRoleType.USER});
		System.out.println("\n No.of users available in userRepository - " + userRepository.count());
		User userPersisted = userRepository.save(user);
		return convertUserToUserVO(userPersisted);
	}

	/**
	 * 
	 * @param userPersisted
	 * @return
	 */
	private UserVO convertUserToUserVO(User userPersisted) {
		UserVO userVO = new UserVO();
		userVO.setUserId(userPersisted.getUserId());
		userVO.setUserName(userPersisted.getUsername());
		userVO.setStage(userPersisted.getStage());
		userVO.setMobileNumber(userPersisted.getContactNumber());
		userVO.setDob(userPersisted.getDob());
		userVO.setEmail(userPersisted.getEmail());
		return userVO;
	}
	
	/**
	 * 
	 * @param userVO
	 * @return
	 */
	private User convertUserVOtoUser(UserVO userVO) {
		return new User(userVO.getUserName(), userVO.getMobileNumber(), 
				userVO.getStage(), userVO.getEmail(), userVO.getAge(), userVO.getDob());
	}

}
