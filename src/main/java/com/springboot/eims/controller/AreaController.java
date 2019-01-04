package com.springboot.eims.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.springboot.eims.entity.Area;
import com.springboot.eims.service.AreaService;

@Controller
public class AreaController {
	
	@Autowired
	AreaService areaService;
	
	@GetMapping("/findAllArea")
	public String findAll(Model model){
		
		List<Area> listarea=areaService.findAllArea();
		model.addAttribute("listarea",listarea);
		System.out.println(listarea);
		return "/chaeducation/boardeducation";
	}
}
