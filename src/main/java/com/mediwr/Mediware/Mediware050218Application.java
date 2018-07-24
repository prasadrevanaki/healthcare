package com.mediwr.Mediware;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import com.mediwr.Mediware.controller.email.EmailController;

@SpringBootApplication
public class Mediware050218Application {

	public static void main(String[] args) {
		SpringApplication.run(Mediware050218Application.class, args);
//		new EmailController().sendEMail("prasadrevanaki@gmail.com");
	}
}
