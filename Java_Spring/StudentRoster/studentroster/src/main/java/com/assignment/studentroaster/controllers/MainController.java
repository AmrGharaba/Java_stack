package com.assignment.studentroaster.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.assignment.studentroaster.models.Dorm;
import com.assignment.studentroaster.models.Student;
import com.assignment.studentroaster.services.DormService;
import com.assignment.studentroaster.services.StudentService;

import jakarta.validation.Valid;

@Controller
public class MainController {
	
	@Autowired
	private DormService dormService;
	@Autowired
	private StudentService studentService;
	
	@GetMapping("/dorms")
	public String index(Model model) {
		List<Dorm> dorms = dormService.AllDorms();
		model.addAttribute("dorms", dorms);
		return "index.jsp";
	}
	
	
	@GetMapping("/dorms/new")
	public String newDorm(@Valid @ModelAttribute("newDorm") Dorm newDorm, BindingResult result) {
		
		return "newDorm.jsp";
	}
	
	@PostMapping("/dorms/new")
	public String addDorm(@Valid @ModelAttribute("newDorm") Dorm newDorm, BindingResult result) {
		
		
		if (result.hasErrors()) {
			return "newDorm.jsp";
		}
		dormService.createDorm(newDorm);
		
		return "redirect:/dorms";
	}
	
	@GetMapping("/students/new")
	public String newStudant(@Valid @ModelAttribute("newStudent") Student newStudent, BindingResult result, Model model) {
		List<Dorm> dorms = dormService.AllDorms(); 
		model.addAttribute("dorms", dorms);

		return "newStudent.jsp";
	}
	@PostMapping("students/new")
	public String createStudent(@Valid @ModelAttribute("newStudent") Student newStudent, BindingResult result) {
		if(result.hasErrors()) {
			return "newStudent.jsp";
		}
		studentService.create(newStudent);
		return "redirect:/dorms";
	}
	
	@GetMapping("/dorms/{dormId}")
	public String dormDetails(Model model, @PathVariable("dormId") Long id,@ModelAttribute("studentToAssign") Student studentToAssign) {
		Dorm dorm = dormService.getDorm(id);
		List<Student> otherStudents = studentService.getRemainingStudents(id);
		model.addAttribute("dorm", dorm);
		model.addAttribute("otherStudents", otherStudents);
		return "dormDetails.jsp";
	}
	@GetMapping("/students/{dormId}/{studentId}/remove")
	public String removeSudentFromDorm(@PathVariable("studentId") Long StudentId,
			@PathVariable("dormId") Long dormId) {
		Student studentToRemove = studentService.getStudent(StudentId);
		System.out.println(studentToRemove.getFirstName());
		studentService.removeStudentFromDorm(studentToRemove);

		return "redirect:/dorms/{dormId}";
	}
	@PostMapping("/dorms/{dormId}/assign")
	public String studentAssign(@PathVariable("dormId") Long dormId, @ModelAttribute("studentToAssign") Student studentToAssign ) {
		
		
		Long id = studentToAssign.getId();
		if(id == null) {
			return "redirect:/dorms";
		}
		Student student = studentService.getStudent(id);
		studentService.studentAssign(student, dormId);
		
		return "redirect:/dorms/{dormId}";
	}


}
