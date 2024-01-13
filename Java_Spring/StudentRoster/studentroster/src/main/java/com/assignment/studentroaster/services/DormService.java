package com.assignment.studentroaster.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.assignment.studentroaster.models.Dorm;
import com.assignment.studentroaster.repositories.DormRepository;
import com.assignment.studentroaster.repositories.StudentRepository;

@Service
public class DormService {
	
	@Autowired
	private DormRepository dormRepository;
	
	@Autowired
	private StudentRepository studentRepository;
	
	public List<Dorm> AllDorms() {
		List<Dorm> dorms = dormRepository.findAll();
		return dorms;
	}
	public void createDorm(Dorm dorm) {
		dormRepository.save(dorm);
	}
	
	public Dorm getDorm(Long id) {
		Optional<Dorm> dormSearch = dormRepository.findById(id);
		Dorm dorm = dormSearch.get();
		return dorm;
	}

}
