package com.assignment.ninjagold.controllers;

import java.util.ArrayList;
import java.util.Random;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import jakarta.servlet.http.HttpSession;

@Controller
public class MainController {
	ArrayList<String> log = new ArrayList<String>();
	@RequestMapping("/")
	public String index(HttpSession session) {
		if(session.getAttribute("gold") == null) {
			session.setAttribute("gold", 0);
		}
		
		
		return "index.jsp";
	}
	@RequestMapping("/quest")
	public String farm(HttpSession session,
			@RequestParam(value="whichForm") String whichForm) {
		
		String message;
		if(session.getAttribute("gold") == null) {
			session.setAttribute("gold", 0);
		}
		Random rand = new Random();
		
		if(whichForm.contains("farm") || whichForm.contains("cave") || whichForm.contains("house")) {
			
			int random = rand.nextInt(10,21);
			int gold = (int) session.getAttribute("gold");
			gold += random;
			session.setAttribute("gold", gold);
			message = "you entered a "+ whichForm + " and earned "+gold ;
			log.add(message);
			
		}
		else{

			int random = rand.nextInt(-50,51);
			int gold = (int) session.getAttribute("gold");
			gold += random;
			session.setAttribute("gold", gold);
			if(random >= 0) {
				message = "you completed a "+ whichForm + " and earned "+gold ;	
			}
			else {
				message = "you failed a "+ whichForm + " and lost "+gold ;	
				
				
			}
			log.add(message);
		}
		
		session.setAttribute("log", log);
		return "redirect:/";
	}
	
	
	@RequestMapping("/reset")
	public String reset(HttpSession session) {
		session.invalidate();
		log.removeAll(log);
		return "redirect:/";
	}
		
	
	

}
