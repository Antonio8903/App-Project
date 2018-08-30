package com.appproject.repositories;

import org.springframework.data.repository.CrudRepository;
import com.appproject.models.Student;

public interface StudentRepository extends CrudRepository<Student, Long> {

}
