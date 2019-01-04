package com.springboot.eims.dao;

import org.apache.ibatis.annotations.Mapper;

import com.springboot.eims.entity.Examine;
@Mapper
public interface ExamineMapper {
    int deleteByPrimaryKey(String projectId);

    int insert(Examine record);

    int insertSelective(Examine record);

    Examine selectByPrimaryKey(String projectId);

    int updateByPrimaryKeySelective(Examine record);

    int updateByPrimaryKey(Examine record);
}