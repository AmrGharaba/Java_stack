package com.assignment.studentroaster.repositories;

import java.util.List;
import java.util.Optional;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.assignment.studentroaster.models.Dorm;
import com.assignment.studentroaster.models.Student;

@Repository
public interface StudentRepository extends CrudRepository<Student, Long>{
	
	List<Student> findAll();
	Optional<Student> findById(Long id);
	List<Student> findStudentByDorm_idIsNot(Long id);
	List<Student> findStudentByDorm_idIsNull();

}
