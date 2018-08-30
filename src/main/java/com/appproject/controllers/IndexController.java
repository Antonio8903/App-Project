package com.appproject.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.appproject.models.Student;
import com.appproject.repositories.StudentRepository;

@Controller
public class IndexController {
	@Autowired
	private StudentRepository studentRepository;
	
	@GetMapping("/")
	public String getStudents(Model model) {
		model.addAttribute("students", studentRepository.findAll());
		return "index";
	}
	
	@GetMapping("/student/delete/{id}")
	public String deleteStudent(@PathVariable Long id, Model model) {
		studentRepository.deleteById(id);
		return "redirect:/";
	}
	
	@GetMapping("/create")
	public String getViewCreateStudent() {
		return "create-student";
	}
	
	@PostMapping("/student/create")
	public String createStudent(@RequestParam("name") String name, @RequestParam("lastname") String lastName, @RequestParam("identification") String identificationDocument, @RequestParam("email") String email, @RequestParam("age") int age, Model model) {
		Student student = new Student();
		
		student.setName(name);
		student.setLastName(lastName);
		student.setEmail(email);
		student.setIdentificationDocument(identificationDocument);
		student.setAge(age);
		
		studentRepository.save(student);
		
		return "redirect:/";
	}
	
	@GetMapping("/student/edit/{id}")
	public String getViewEditStudent(@PathVariable Long id, Model model) {
		model.addAttribute("student", studentRepository.findById(id).get());
		return "edit-student";
	}
	
	@PostMapping("/student/edit")
	public String createStudent(@RequestParam("id") long id, @RequestParam("name") String name, @RequestParam("lastname") String lastName, @RequestParam("identification") String identificationDocument, @RequestParam("email") String email, @RequestParam("age") int age, Model model) {
		Student student = new Student();
		
		student.setId(id);
		student.setName(name);
		student.setLastName(lastName);
		student.setEmail(email);
		student.setIdentificationDocument(identificationDocument);
		student.setAge(age);
		
		studentRepository.save(student);
		
		return "redirect:/";
	}
}
