package com.springboot.eims.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.springboot.eims.dao.StudentMapper;
import com.springboot.eims.entity.Student;

@Service
public class StudentService {
	
	@Resource
	StudentMapper studentMapper;
	
	public List<Student> findAllStudent(){
		return studentMapper.findAllStudent();
	}

	public void addStudent(Student s) {
		// TODO Auto-generated method stub
		studentMapper.insertSelective(s);
	}

	public void deleteStudent(Integer id) {
		// TODO Auto-generated method stub
		studentMapper.deleteStudentById(id);
	}

	public void updateStudent(Student student) {
		// TODO Auto-generated method stub
		studentMapper.updateByPrimaryKey(student);
	}

	public Student findById(Integer id) {
		// TODO Auto-generated method stub
		return studentMapper.selectByPrimaryKey(id);
		
	}
	
	
	
}
