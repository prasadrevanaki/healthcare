package com.mediwr.Mediware.controller;

import java.util.Arrays;
import java.util.Date;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.mediwr.Mediware.model.Values;

import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.SignatureAlgorithm;

@Controller
public class WelcomeController {    
	
    @RequestMapping("/")
    public String loginMessage(){
        return "user/login";
    }
    
    @RequestMapping("/landingPage")
    public String landingPage(){
        return "landingPagev4";
    }
    
    @RequestMapping(value="/login", method = RequestMethod.POST)
    public ModelAndView login(@RequestParam String username, @RequestParam String password){
    	System.out.println("Login...");
    	String jwt = Jwts.builder()
//    		    .setClaims(claims)
//    		    .setSubject(email)
    		    .setIssuedAt(new Date())
//    		    .setExpiration(new Date(System.currentTimeMillis()+ JWT_EXPIRATION_TIME))
//    		    .signWith(SignatureAlgorithm.HS256, JWT_SECRET)
    		    .compact();

    	return new ModelAndView("welcome", "values", new Values());
    }
    
    @RequestMapping("/questionnair")
    public ModelAndView saveQuestionnair(@ModelAttribute Values values, ModelMap model){
    	List<String> sports = values.getSports();
    	for(String sport:sports)
    		System.out.println("**********"+sport);
    	System.out.println("Gender - " + values.getGender());
        return new ModelAndView("welcome", "values", values);
    }
    
    @RequestMapping("/userRegistration")
    public ModelAndView userRegistration(ModelMap model){
    	Values values = new Values();
    	values.setGender("Male");
    	values.setSports(Arrays.asList("Cricket", "Snooker", "Volley Ball"));
    	model.addAttribute("mode",  "USER_WRITE");
    	model.addAttribute("apiMethod",  "registerUser");
    	model.addAttribute("values", values);
    	System.out.println("User registration - ");
        return new ModelAndView("user/userRegistration", model);
    }
    
}
