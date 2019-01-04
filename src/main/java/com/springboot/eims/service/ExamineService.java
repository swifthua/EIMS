package com.springboot.eims.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springboot.eims.dao.ExamineMapper;
import com.springboot.eims.entity.Examine;
@Service
public class ExamineService {
    @Autowired
    ExamineMapper examineMapper;
    public int insert(Examine record) {
	return examineMapper.insert(record);
    };
    
    public Examine selectByPrimaryKey(String id){
	return examineMapper.selectByPrimaryKey(id);
    }
}
