package com.assignment.desplaydates.controllers;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
public class MainController {
	@RequestMapping("/")
	public String index() {
		return "index.jsp";
	}

		@RequestMapping("/date")
		public String date(Model model) {
			SimpleDateFormat dateFormat = new SimpleDateFormat("y /MMMM /d /EEEE");
			Date date = new Date();
			String dateMessage = dateFormat.format(date);
			model.addAttribute("date", dateMessage);
			return "DateTemplate.jsp";
		}


		@RequestMapping("/time")
		public String time(Model model) {
			SimpleDateFormat timeFormat = new SimpleDateFormat("h:m:s a");
			Date time = new Date();
			String timeMessage = timeFormat.format(time);
			model.addAttribute("time", timeMessage);
			return "TimeTemplate.jsp";
		}
}
