package com.Assignment.HelloHuman;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class Homecontroller {
	@RequestMapping("/")
	public String index(@RequestParam(value = "name", required = false) String name,
			@RequestParam(value = "last_name", required = false) String lastName) {
		
			if(name == null) {
				return "Hello human";
			}
			else if(name != null && lastName == null) {
				return "Hello " + name;
			}
			return "Hello " + name +" "+ lastName;
		}
//	public String repeat(@RequestParam(value = "name", required = false) String name,
//			@RequestParam(value = "last_name", required = false) String lastName,
//			@RequestParam(value = "repeat", required = false) int times) {
//			if(times != 0) {
//				
//			
//			String message = "";
//			while(times !=0) {
//				
//				if(name == null) {
//					message+= "Hello human";
//				}
//				else if(name != null && lastName == null) {
//					message+= "Hello " + name;
//				}
//				else {
//					
//				message+= "Hello " + name +" "+ lastName;
//			}						
//					
//				times--;
//			}
//			
//			return message;
//			}
//			
//			if(name == null) {
//				return "Hello human";
//			}
//			else if(name != null && lastName == null) {
//				return "Hello " + name;
//			}
//			return "Hello " + name +" "+ lastName;
//		}
		
			
}
		
			


