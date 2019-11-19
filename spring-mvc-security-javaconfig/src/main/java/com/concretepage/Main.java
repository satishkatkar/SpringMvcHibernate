package com.concretepage;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

//public class Main {
//	public static void main(String[] args) {
//		BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
//		System.out.println(encoder.encode("m123"));
//	}
//}
@SpringBootApplication
public class Main {

	public static void main(String[] args) {
		BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
     	System.out.println(encoder.encode("satish"));
		SpringApplication.run(Main.class, args);
	}

}