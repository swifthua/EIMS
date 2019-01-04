package com.springboot.eims.dao;


import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.springboot.eims.entity.Area;
@Mapper
public interface AreaMapper  {
	int deleteByPrimaryKey(String adminId);

    int insert(Area record);

    int insertSelective(Area record);

    Area selectByPrimaryKey(String adminId);

    int updateByPrimaryKeySelective(Area record);

    int updateByPrimaryKey(Area record);
    
    Area selectByNameAndPwd(String name);
    
    public List<Area> findAllArea();
}