package com.springboot.eims.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.springboot.eims.dao.AreaMapper;
import com.springboot.eims.entity.Area;

@Service
public class AreaService {
	
	@Resource
	AreaMapper areaMapper;
	
	public List<Area> findAllArea(){
		return areaMapper.findAllArea();
	}
	
}
