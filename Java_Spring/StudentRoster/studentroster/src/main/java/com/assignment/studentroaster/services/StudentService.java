package com.assignment.studentroaster.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.assignment.studentroaster.models.Dorm;
import com.assignment.studentroaster.models.Student;
import com.assignment.studentroaster.repositories.DormRepository;
import com.assignment.studentroaster.repositories.StudentRepository;

@Service
public class StudentService {
@Autowired
private StudentRepository studentRepository; 
@Autowired
private DormService dormServices;
@Autowired
private DormRepository dormRepository;

public Student create(Student newStudent) {
	return studentRepository.save(newStudent);
}

public void removeStudentFromDorm(Student studentRmove) {
	studentRmove.setDorm(null);
	studentRepository.save(studentRmove);
}
public Student getStudent(Long id) {
	Optional<Student> student = studentRepository.findById(id);
	return student.get();
}
public List<Student> getRemainingStudents(Long id){
	List<Student> students = studentRepository.findStudentByDorm_idIsNot(id);
	List<Student> studentWithNoDorm = studentRepository.findStudentByDorm_idIsNull();
	students.addAll(studentWithNoDorm);
	return students;
	
}
public Student studentAssign(Student student, Long DormId) {
	Dorm finrdDorm = dormRepository.findById(DormId).get();
	student.setDorm(finrdDorm);
	return studentRepository.save(student);
	
	
}
}
