package com.springboot.eims.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springboot.eims.dao.ProjectMapper;
import com.springboot.eims.entity.Project;

@Service
public class ProjectService {

    @Autowired
    private ProjectMapper projectMapper;

    public int deleteByPrimaryKey(String projectId) {
	return projectMapper.deleteByPrimaryKey(projectId);
    };

    public int insert(Project record) {
	return projectMapper.insert(record);
    };

    public int insertSelective(Project record) {
	return projectMapper.insertSelective(record);
    };

    public Project selectByPrimaryKey(String projectId) {
	return projectMapper.selectByPrimaryKey(projectId);
    };

    public int updateByPrimaryKeySelective(Project record) {
	return projectMapper.updateByPrimaryKeySelective(record);
    };

    public int updateByPrimaryKey(Project record) {
	return projectMapper.updateByPrimaryKey(record);
    };
    public List<Project> findAll(Project record){
	return projectMapper.findAll(record);
    }
    
    public boolean selectId(String id){
	if(this.selectByPrimaryKey(id)!=null){
	    return true;
	}else{
	    return false;
	}
	
    }

    public List<Project> findPass(Project project) {
	return projectMapper.findPass(project);
	
    }
    
    public List<Project> selectView(Project project) {
    	return projectMapper.selectView(project);
    	
        }
}
