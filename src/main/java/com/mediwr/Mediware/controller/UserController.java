package com.mediwr.Mediware.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.mediwr.Mediware.domain.User;
import com.mediwr.Mediware.model.UserVO;
//import com.mediwr.Mediware.service.UserService;
import com.mediwr.Mediware.service.UserService;

@Controller
@RequestMapping("/users")
public class UserController {
	
	@Autowired
	private UserService userService;
	
	public static Map<String, UserVO> usersMap = new HashMap<>();
	
	public UserController() {
		usersMap.put("Nikhil", new UserVO("Nikhil", "9u3203020", "nikhil@gmail.com", "BASELINE", "10/04/1985", "33"));
		usersMap.put("Zahir", new UserVO("Zahir", "r5g637388", "zahir@gmail.com", "HEART", "21/07/1996", "24"));
	}
	
	// React sample
	@RequestMapping(method=RequestMethod.POST, value="/reactSample")
	public String sampleUser() {
		return "user/reactSample";
	}
	
	@RequestMapping(method=RequestMethod.POST, value="/registerUser")
	public ModelAndView registerUser(@ModelAttribute("user")UserVO userVO, ModelMap model) {
		userVO = userService.save(userVO);
		usersMap.put(userVO.getUserName(), userVO);
		model.addAttribute("mode",  "USER_READ");
		model.addAttribute("userCreated", "TRUE");
		model.addAttribute("user", userVO);
		return new ModelAndView("user/userRegistration", model);
	}
	
	@RequestMapping(method=RequestMethod.GET, value="/searchUser")
	public ModelAndView searchPatient(@RequestParam("userName") String userName, ModelMap model) {
		List<UserVO> users = new ArrayList<>(usersMap.values());
		System.out.println("Search user. Available users - " + users.size());
		model.addAttribute("mode",  "USER_READ");
		model.addAttribute("userFound",  "FOUND");
		if(null != usersMap.get(userName)) System.out.println("User found... ");
		model.addAttribute("user", usersMap.get(userName));
		return new ModelAndView("user/userRegistration", model);
	}
	
	@RequestMapping(method=RequestMethod.GET, value="/searchByUserId")
	public ModelAndView searchPatientbyUserId(@RequestParam("userId") String userId, ModelMap model) {
		List<UserVO> users = new ArrayList<>(usersMap.values());
		System.out.println("Search user. Available users - " + users.size());
		model.addAttribute("mode",  "USER_READ");
		model.addAttribute("userFound",  "FOUND");
		UserVO userVO = userService.getUserByUserId(userId);
		if(null != userVO) {
			System.out.println("User found... " + userVO.getUserId());
			model.addAttribute("user", userVO);
		}else {
			System.out.println("User not found... ");
		}
		return new ModelAndView("user/userRegistration", model);
	}
	
	@RequestMapping(method=RequestMethod.GET, value="/retrieveUser")
	public ModelAndView retreiveUser(@RequestParam("userId") String userId, ModelMap model) {
		System.out.println("Retreive user..." + userId);
		UserVO userVO = userService.getUserByUserId(userId);
		model.addAttribute("mode",  "USER_UPDATE");
		model.addAttribute("user", userVO);
		return new ModelAndView("user/userRegistration", model);
	}
	
	@RequestMapping(method=RequestMethod.POST, value="/updateUser")
	public ModelAndView updateUser(@ModelAttribute("user")UserVO user, ModelMap model) {
		System.out.println("Update user..." + user.getUserName());
		usersMap.put(user.getUserName(), user);
		List<UserVO> users = new ArrayList<>(usersMap.values());
		model.addAttribute("mode",  "USER_VIEW");
		model.addAttribute("apiMethod",  "updateUser");
		model.addAttribute("users", new ArrayList<UserVO>(usersMap.values()));
		return new ModelAndView("searchUser", model);
	}
	
	@RequestMapping(method=RequestMethod.GET, value="/deleteUser")
	public ModelAndView deleteUser(@RequestParam("userId") String userId, ModelMap model) {
		System.out.println("Deleting user..." + userId);
		if(usersMap.containsKey(userId)) 
			usersMap.remove(userId);
		List<UserVO> users = new ArrayList<>(usersMap.values());
		System.out.println("Search user. Available users - " + users.size());
		model.addAttribute("mode",  "USER_VIEW");
		model.addAttribute("users", users);
		return new ModelAndView("searchUser", model);
	}
	
	@RequestMapping(method=RequestMethod.GET, value="/searchUserPage")
	public ModelAndView newPatientReport(ModelMap model) {
		System.out.println("new user report");
		List<UserVO> users = new ArrayList<>(usersMap.values());
		model.addAttribute("mode",  "USER_VIEW");
		model.addAttribute("users", users);
		return new ModelAndView("searchUser", model);
	}
	
	@RequestMapping(method=RequestMethod.POST, value="/logout")
	public String userLogout(ModelMap model) {
		System.out.println("Logout");
		return "redirect:/";
	}
	
	@GetMapping("/{id}")
	public User getUserById(String id) {
		return userService.getUserById(id);
	}
	
	@PostMapping
	public UserVO update(@RequestBody UserVO userVO) {
		return this.userService.save(userVO);
	}
	
}
