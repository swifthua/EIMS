package com.springboot.eims.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springboot.eims.dao.TopDao;
/**
 * 
 * @author luo
 *
 * @param <D>Mapper
 * @param <V>实体类
 */

public class TopService <D extends TopDao<V>, V >{


    public D dao;
    
    public V  selectByPrimaryKey(String Id){
	return dao.selectByPrimaryKey(Id);
    }
    public int deleteByPrimaryKey(String adminId){
	return dao.deleteByPrimaryKey(adminId);
    };

    public int insert(V record){
	return dao.insert(record);
    };

    public  int insertSelective(V record){
	return dao.insertSelective(record);
    };


    public int updateByPrimaryKey(V record){;
    	return dao.updateByPrimaryKey(record);
    }

    public int updateByPrimaryKeySelective(V record){
	return dao.updateByPrimaryKeySelective(record);
    };
    
    public List<V> findAll(){
	return dao.findAll();
    };
}