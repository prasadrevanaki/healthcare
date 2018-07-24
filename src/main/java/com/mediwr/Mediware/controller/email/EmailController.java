package com.mediwr.Mediware.controller.email;

import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class EmailController {

	EmailUtil emailUtil = new EmailUtil();
	
	@RequestMapping(value="/sendEmail", method=RequestMethod.GET)
	public void sendEMail(@RequestParam String email) {
		
		String smtpHostServer = "smtp.gmail.com";
	    String emailID = "prasadrevanaki@gmail.com";
	    
	    String fromEmail = "mediwavediagnostics4@gmail.com";
	    String password = "shreyas02052013";
	    
	    Properties props = System.getProperties();
	    props.put("mail.smtp.host", smtpHostServer);
	    props.put("mail.smtp.starttls.enable", "true");
	    props.put("mail.smtp.port", "587"); //TLS Port
	    props.put("mail.smtp.auth", "true"); //enable authentication
	    
  		Authenticator auth = new Authenticator() {
  			protected PasswordAuthentication getPasswordAuthentication() {
  				return new PasswordAuthentication(fromEmail, password);
  			}
  		};
  		Session session = Session.getInstance(props, auth);
	    
	    EmailUtil.sendEmail(session, emailID, "SimpleEmail Testing Subject", "SimpleEmail Testing Body");
	}
	
}
