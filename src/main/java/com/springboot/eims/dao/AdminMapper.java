package com.springboot.eims.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.springboot.eims.entity.Admin;
@Mapper
public interface AdminMapper  {
    int deleteByPrimaryKey(String adminId);

    int insert(Admin record);

    int insertSelective(Admin record);

    Admin selectByPrimaryKey(String adminId);

    int updateByPrimaryKeySelective(Admin record);

    int updateByPrimaryKey(Admin record);
    
    List<Admin> findAll();
    
    Admin selectByNameAndPwd(String name);
}