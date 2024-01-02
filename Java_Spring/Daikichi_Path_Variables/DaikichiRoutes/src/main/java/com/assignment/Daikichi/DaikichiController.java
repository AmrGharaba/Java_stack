package com.assignment.Daikichi;

import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class DaikichiController {
	@RequestMapping("/Daikichi/")
	public String index() {
        return "Welcome!";
}
	@RequestMapping(value = "/Daikichi/today", method = RequestMethod.GET)
	public String today() {
        return "Today you will find luck in all your endeavors!";
}
	@RequestMapping(value = "/Daikichi/tomorrow", method = RequestMethod.GET)
	public String tomorrow() {
        return "Tomorrow, an opportunity will arise, so be sure to be open to new ideas!";
}
	@RequestMapping("/Daikichi/travel/{input1}")
	public String path1(@PathVariable("input1") String input1) {
		return "Congratulations! you will soon travel to "+ input1;
	}
	
	@RequestMapping("/Daikichi/lotto/{input1}")
	public String path2(@PathVariable("input1") int input1 ) {
		if(input1 % 2 == 0) {
			return "You will take a grand journey in the near future, but be weary of tempting offers";
		}
		return "You have enjoyed the fruits of your labor but now is a great time to spend time with family and friends";
		
	}
}
