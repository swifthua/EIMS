package com.springboot.eims.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.springboot.eims.util.ChartUtils;
import com.springboot.eims.util.PageUtils;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.springboot.eims.entity.Project;
import com.springboot.eims.entity.Result;
import com.springboot.eims.entity.Teacher;
import com.springboot.eims.service.TeacherService;

import java.io.IOException;
import java.io.OutputStream;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

/**
 * @author ygh
 * @Description
 * @Date: 2017/9/14
 */

@Controller
@RequestMapping("/views/teacher")
public class TeacherController {

	@Autowired
	private TeacherService service;


	/**
	 * 插入老师数据
	 * 
	 * @param map
	 */

	@GetMapping("/insert")
	public String insertTeacher(Teacher teacher, ModelMap map) {
		service.insertTeacher(teacher);
		return getAllTeacher(map);
	}

	/**
	 * 删除
	 * 
	 * @param id
	 * @param map
	 * @return
	 */
	@GetMapping("/delete")
	public String deleteTeacherById(@RequestParam("tid") Integer id, ModelMap map,int page) {

		service.deleteTeacherById(id);
		return getTeacherFindLike(map, new Teacher());
	}

	/**
	 * 编辑老师数据
	 */
	@GetMapping("/edit")
	public String findTeacherById(ModelMap map, Teacher teacher) {
		Teacher t = service.findByID(teacher.getTid());
		map.addAttribute("t", t);
		return "teacher/update";
	}

	/**
	 * 修改老师数据
	 */

	@GetMapping("/update")
	public String UpdateTeacher(ModelMap map, Teacher teacher,int page) {
		service.updateTeacher(teacher);
		return getTeacherFindLike(map, new Teacher());

	}

	@GetMapping("/chart/{category}")
	public String getChartData(HttpServletResponse response, ModelMap modelMap,
			@PathVariable("category") String category) throws IOException {
		OutputStream stream = response.getOutputStream();
		List<Result> results = null;
		switch (category) {
		case "address":
			results = service.countAddressCategory();
			ChartUtils.createPieChart("地区分布饼状图", stream, results);
			break;
		case "sex":
			results = service.countSexCategory();
			ChartUtils.createPieChart("性别比例饼状图", stream, results);

		case "nation":
			results = service.countNationCategory();
			ChartUtils.createPieChart("民族比例饼状图", stream, results);
		default:
			break;
		}
		return "teacher/chart";

	}

	/**
	 * @Description 模糊查询
	 * @param
	 * @return
	 */
	@GetMapping("/findlike")
	public String getTeacherFindLike(ModelMap map, Teacher teacher) {
		List<Teacher> teachers = service.mulitConditionFindLike(teacher);
		map.addAttribute("list", teachers);
		return "teacher/findlike";
	}
	/**
	 * 查询所有
	 */
	
	@GetMapping("/findall")
	public String getAllTeacher(ModelMap map){
		List<Teacher> teachers = service.mulitConditionFindLike(null);
		map.addAttribute("list", teachers);
		return "teacher/list";
	}

}
