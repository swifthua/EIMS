package com.springboot.eims.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springboot.eims.dao.TeacherMapper;
import com.springboot.eims.entity.Result;
import com.springboot.eims.entity.Teacher;

import java.util.List;

/**
 * @author ygh
 * @Description
 * @Date: 2017/9/14
 */

@Service
public class TeacherService {

    @Autowired
    private TeacherMapper mapper;

    public Teacher findByID(Integer id){
        return mapper.selectByPrimaryKey(id);
    }


    public List<Result> countAddressCategory(){
        return mapper.countAddressCategory();
    }

    public List<Result> countSexCategory(){
        return mapper.countSexCategory();
    }

    public List<Result> countNationCategory(){
        return mapper.countNationCategory();
    }

    public List<Teacher> mulitConditionFindLike(Teacher teacher){
        return mapper.mulitConditionFindLike(teacher);
    }


    /**
     * 通过主键删除
     * @param id
     */
	public Integer deleteTeacherById(Integer id) {
		// TODO Auto-generated method stub
		return mapper.deleteByPrimaryKey(id);
	}


	public void updateTeacher(Teacher teacher) {

		mapper.updateByPrimaryKey(teacher);
	}


	public void insertTeacher(Teacher teacher) {
		// TODO Auto-generated method stub
		mapper.insert(teacher);
	}


}

