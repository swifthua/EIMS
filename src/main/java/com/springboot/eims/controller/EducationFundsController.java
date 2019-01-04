package com.springboot.eims.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.springboot.eims.entity.Area;
import com.springboot.eims.entity.Project;
import com.springboot.eims.service.AreaService;
import com.springboot.eims.service.ProjectService;
import com.springboot.eims.util.PageUtils;

@Controller
public class EducationFundsController {
	
	@Autowired
	ProjectService projectService;
	
	@Autowired
	AreaService areaService;
	
	@GetMapping("/performance")
	public String performance(Model model){
		int[][] z=new int[8][4]; //总计

		List<Project> listProject=projectService.findAll(new Project());
		for(Project project:listProject){
			if(project.getProjectStatus().equals("正在审核")){
				if(project.getArea().equals("1")){
					z[0][0]++;
				}else if(project.getArea().equals("2")){
					z[1][0]++;
				}else if(project.getArea().equals("3")){
					z[2][0]++;
				}else if(project.getArea().equals("4")){
					z[3][0]++;
				}else if(project.getArea().equals("5")){
					z[4][0]++;
				}else if(project.getArea().equals("6")){
					z[5][0]++;
				}else if(project.getArea().equals("7")){
					z[6][0]++;
				}else{
					z[7][0]++;
				}
			}else if(project.getProjectStatus().equals("未审核")){
				if(project.getArea().equals("1")){
					z[0][1]++;
				}else if(project.getArea().equals("2")){
					z[1][1]++;
				}else if(project.getArea().equals("3")){
					z[2][1]++;
				}else if(project.getArea().equals("4")){
					z[3][1]++;
				}else if(project.getArea().equals("5")){
					z[4][1]++;
				}else if(project.getArea().equals("6")){
					z[5][1]++;
				}else if(project.getArea().equals("7")){
					z[6][1]++;
				}else{
					z[7][1]++;
				}
			}else if(project.getProjectStatus().equals("审核通过")){
				if(project.getArea().equals("1")){
					z[0][2]++;
				}else if(project.getArea().equals("2")){
					z[1][2]++;
				}else if(project.getArea().equals("3")){
					z[2][2]++;
				}else if(project.getArea().equals("4")){
					z[3][2]++;
				}else if(project.getArea().equals("5")){
					z[4][2]++;
				}else if(project.getArea().equals("6")){
					z[5][2]++;
				}else if(project.getArea().equals("7")){
					z[6][2]++;
				}else{
					z[7][2]++;
				}
			}else{
				if(project.getArea().equals("1")){
					z[0][3]++;
				}else if(project.getArea().equals("2")){
					z[1][3]++;
				}else if(project.getArea().equals("3")){
					z[2][3]++;
				}else if(project.getArea().equals("4")){
					z[3][3]++;
				}else if(project.getArea().equals("5")){
					z[4][3]++;
				}else if(project.getArea().equals("6")){
					z[5][3]++;
				}else if(project.getArea().equals("7")){
					z[6][3]++;
				}else{
					z[7][3]++;
				}
			}
		}
		model.addAttribute("z", z);
		return "/edufunds/performance";
	}
	
	@GetMapping("/selectArea")
    public String selectArea(ModelMap map,@RequestParam(required = false, defaultValue = "1") int page){
		List<Area> areaList=new ArrayList<Area>();
		List<Project> projectList=new ArrayList<Project>();
		areaList=areaService.findAllArea();
		PageHelper.startPage(page, 10);
		projectList=projectService.selectView(new Project());
		PageInfo<Project> pageInfo = new PageInfo<Project>(projectList);
		PageUtils.tansferPageDataToFront(pageInfo, map, page);
		map.addAttribute("areaList",areaList);
		map.addAttribute("projectList", projectList);
		map.addAttribute("pageurl", "selectArea");
    	return "/edufunds/findfunds";
    }

}
