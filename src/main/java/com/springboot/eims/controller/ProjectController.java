package com.springboot.eims.controller;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.mysql.fabric.xmlrpc.base.Array;
import com.springboot.eims.constant.ProjectConstant;
import com.springboot.eims.entity.Admin;
import com.springboot.eims.entity.Area;
import com.springboot.eims.entity.Examine;
import com.springboot.eims.entity.Project;
import com.springboot.eims.service.AreaService;
import com.springboot.eims.service.ExamineService;
import com.springboot.eims.service.ProjectService;
import com.springboot.eims.util.PageUtils;

@Controller
public class ProjectController {

	@Autowired
	ProjectService projectService;
	@Autowired
	AreaService areaService;
	@Autowired
	ExamineService examineservice;

	@PostMapping("/project/add")
	public String addProject(ModelMap map, Project project) {
		projectService.insert(project);
		return "redirect:/project/view";
	}

	@PostMapping("/project/update")
	public String updateProject(ModelMap map, Project project) {
		projectService.updateByPrimaryKey(project);
		return "redirect:/project/view";
	}

	@GetMapping("/project/select")
	public String select(ModelMap map, @RequestParam(required = false, defaultValue = "1") int page,
			HttpServletRequest request) {
		String status = request.getParameter("status");
		Project project = new Project();
		project.setProjectStatus(status);
		PageHelper.startPage(page, 10);
		List<Project> projectList = projectService.findPass(project);
		PageInfo<Project> pageInfo = new PageInfo<Project>(projectList);
		PageUtils.tansferPageDataToFront(pageInfo, map, page);
		map.addAttribute("projectList", projectList);
		map.addAttribute("pageurl", "project/select");
		if (status != null) {
			return "project/processmanager";
		}
		return "project/projectpass";
	}

	@GetMapping("/project/modify")
	public String modifyProject(ModelMap map, HttpServletRequest request) {
		String id = request.getParameter("projectId");
		Project project = projectService.selectByPrimaryKey(id);
		if (project == null) {
			return "redirect:/project/view";
		} else {
			List<String> status = new ArrayList<String>();
			List<Area> areaList = new ArrayList<Area>();
			areaList = areaService.findAllArea();
			status = Arrays.asList(ProjectConstant.status);
			map.addAttribute("statusList", status);
			map.addAttribute("areaList", areaList);
			map.put("project", project);
			map.put("tag", "修改");
			map.addAttribute("requreUrl", "project/update");
			return "project/projectapplyform";
		}
	}

	@GetMapping("/project/check")
	public String check(ModelMap map, HttpServletRequest request) {
		List<String> moneyList = new ArrayList<String>();
		String idString = request.getParameter("projectId");
		Project project = projectService.selectByPrimaryKey(idString);
		if (project == null) {
			return "redirect:/project/view";
		} else {
			moneyList = Arrays.asList(ProjectConstant.money_resource);
			map.addAttribute("moneyList", moneyList);
			map.addAttribute("project", project);
		}
		return "project/projectexamine";
	}

	@GetMapping("/project/selectView")
	public String selectView(ModelMap map, HttpServletRequest request) {
		List<String> moneyList = new ArrayList<String>();
		String idString = request.getParameter("projectId");
		Project project = projectService.selectByPrimaryKey(idString);
		Examine examine = examineservice.selectByPrimaryKey(idString);
		if (project == null) {
			return "redirect:/project/view";
		} else {
			moneyList = Arrays.asList(ProjectConstant.money_resource);
			map.addAttribute("tag", "查看");
			map.addAttribute("examine", examine);
			map.addAttribute("moneyList", moneyList);
			map.addAttribute("project", project);
		}
		return "project/projectexamine";
	}

	@PostMapping("/project/checkProject")
	public String checkProject(ModelMap map, Project project, Examine examine, HttpServletRequest request) {
		String id = request.getParameter("status");
		examine.setApproveId(((Admin) request.getSession().getAttribute("user")).getAdminId());
		if (id.equals("0")) {
			examine.setProjectId(project.getProjectId());
			project.setProjectStatus(ProjectConstant.status[2]);
			examineservice.insert(examine);
			projectService.updateByPrimaryKey(project);
		} else if (id.equals("1")) {
			examine.setProjectId(project.getProjectId());
			project.setProjectStatus(ProjectConstant.status[1]);
			examineservice.insert(examine);
			projectService.updateByPrimaryKey(project);
		}
		return "redirect:/project/select";
	}

	@RequestMapping(value = "/project/selectId", method = RequestMethod.POST)
	@ResponseBody
	public Map selectId(@RequestParam(required = true) String projectId) {

		Map map = new HashMap();
		if (projectId == null || projectId.equals("") || projectService.selectId(projectId)) {
			map.put("data", true);
		} else {
			map.put("data", false);
		}
		return map;
	}

	@GetMapping("/project/view")
	public String viewMyproject(ModelMap map, @RequestParam(required = false, defaultValue = "1") int page,
			Project project) {
		List<Project> projectList = new ArrayList<Project>();
		PageHelper.startPage(page, 10);
		projectList = projectService.findAll(project);
		PageInfo<Project> pageInfo = new PageInfo<Project>(projectList);
		PageUtils.tansferPageDataToFront(pageInfo, map, page);
		map.addAttribute("projectList", projectList);
		map.addAttribute("pageurl", "project/view");
		return "/project/processmanager";

	}

	@GetMapping("/project/findView")
	public String findView(ModelMap map, @RequestParam(required = false, defaultValue = "1") int page,
			Project project) {
		List<Area> areaList = new ArrayList<Area>();
		List<Project> projectList = new ArrayList<Project>();
		areaList = areaService.findAllArea();
		PageHelper.startPage(page, 10);
		projectList = projectService.selectView(project);
		PageInfo<Project> pageInfo = new PageInfo<Project>(projectList);
		PageUtils.tansferPageDataToFront(pageInfo, map, page);
		map.addAttribute("areaList", areaList);
		map.addAttribute("projectList", projectList);
		map.addAttribute("pageurl", "project/findView");
		return "/edufunds/findfunds";

	}

	@GetMapping("/project/apply")
	public String applyMyproject(ModelMap map) {
		List<String> status = new ArrayList<String>();
		List<Area> areaList = new ArrayList<Area>();
		areaList = areaService.findAllArea();
		status = Arrays.asList(ProjectConstant.status);
		map.addAttribute("statusList", status);
		map.addAttribute("areaList", areaList);
		map.addAttribute("tag", "新增");
		map.addAttribute("requreUrl", "project/add");
		return "/project/projectapplyform";

	}

}
