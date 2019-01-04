package com.springboot.eims.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.springboot.eims.entity.Student;
import com.springboot.eims.entity.Teacher;

@Mapper
public interface StudentMapper {
    int insert(Student record);

    int insertSelective(Student record);
    
    Student selectByPrimaryKey(Integer tid);
    
    public List<Student> findAllStudent();

	void deleteStudentById(Integer id);
	
	int updateByPrimaryKey(Student record);

}