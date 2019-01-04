package com.springboot.eims.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.springboot.eims.entity.Project;
@Mapper
public interface ProjectMapper{
    int deleteByPrimaryKey(String projectId);

    int insert(Project record);

    int insertSelective(Project record);

    Project selectByPrimaryKey(String projectId);

    int updateByPrimaryKeySelective(Project record);

    int updateByPrimaryKey(Project record);

    List<Project> findAll(Project record);

    List<Project> findPass(Project project);
    
    List<Project> selectView(Project project);
}