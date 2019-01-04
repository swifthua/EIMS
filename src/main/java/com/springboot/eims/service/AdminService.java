package com.springboot.eims.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springboot.eims.dao.AdminMapper;
import com.springboot.eims.entity.Admin;

@Service
public class AdminService {
	
	@Autowired
	AdminMapper adminMapper;
	
	
	public Admin selectByPrimaryKey(String adminId){
		return adminMapper.selectByPrimaryKey(adminId);
	}
	
	public List<Admin> list(){
		return adminMapper.findAll();
	}
	
	public Admin selectByNameAndPwd(String name) {
	     Admin admin= adminMapper.selectByNameAndPwd(name);
	     return admin;
	}
	
}
