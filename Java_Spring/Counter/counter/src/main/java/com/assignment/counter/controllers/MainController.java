package com.assignment.counter.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import jakarta.servlet.http.HttpSession;

@Controller
public class MainController {
	@RequestMapping("/")
	public String index(){
		return "index.jsp";
		
	}
		
	@RequestMapping("/counter")
	public String counter(HttpSession session){
		if (session.getAttribute("count") == null) {
			session.setAttribute("count", 0);
			}
			else {
			int count = (int) session.getAttribute("count");
			count++;
			session.setAttribute("count", count);
			}
			return "counter.jsp";

	}

}
