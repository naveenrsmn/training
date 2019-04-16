package com.training.training;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;
import org.springframework.stereotype.Controller;
//import org.springframework.web.bind.annotation.RestController;	
import org.springframework.web.bind.annotation.RequestMapping;



@SpringBootApplication
@Controller
public class TrainingApplication extends SpringBootServletInitializer{

	public static void main(String[] args) {
		SpringApplication.run(TrainingApplication.class, args);
	}
	
	@RequestMapping(value = "/")
	   public String hello() {
		return "welcome";
	   }

	
}
