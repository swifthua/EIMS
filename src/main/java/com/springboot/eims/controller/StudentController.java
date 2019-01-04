package com.springboot.eims.controller;

import java.util.List;

import org.mockito.internal.stubbing.answers.Returns;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.springboot.eims.entity.Student;
import com.springboot.eims.service.StudentService;
@Controller
public class StudentController {
	
	@Autowired
	StudentService studentService;
	
	@GetMapping("/boardStudent")
	public String boardStudent(Model model){
		int[][] z=new int[8][10]; //总计
//		int[] huizu=new int[10];
//		int[] menggu=new int[10];
//		int[] weiwu=new int[10];
//		int[] yizu=new int[10];
//		int[] baizu=new int[10];
		
		

		List<Student> listStudent=studentService.findAllStudent();
		for(Student student:listStudent){
			if(student.getGrade()==0){
				z[0][0]++;
				if(student.getNation().equals("回族")){
					z[1][0]++;
				}else if(student.getNation().equals("蒙古族")){
					z[2][0]++;
				}else if(student.getNation().equals("维吾尔族")){
					z[3][0]++;
				}else if(student.getNation().equals("彝族")){
					z[4][0]++;
				}else if(student.getNation().equals("白族")){
					z[5][0]++;
				}else if(student.getNation().equals("壮族")){
					z[6][0]++;
				}else{
					z[7][0]++;
				}
			}else if(student.getGrade()==1){
				z[0][1]++;
				if(student.getNation().equals("回族")){
					z[1][1]++;
				}else if(student.getNation().equals("蒙古族")){
					z[2][1]++;
				}else if(student.getNation().equals("维吾尔族")){
					z[3][1]++;
				}else if(student.getNation().equals("彝族")){
					z[4][1]++;
				}else if(student.getNation().equals("白族")){
					z[5][1]++;
				}else if(student.getNation().equals("壮族")){
					z[6][1]++;
				}else{
					z[7][1]++;
				}
			}else if(student.getGrade()==2){
				z[0][2]++;
				if(student.getNation().equals("回族")){
					z[1][2]++;
				}else if(student.getNation().equals("蒙古族")){
					z[2][2]++;
				}else if(student.getNation().equals("维吾尔族")){
					z[3][2]++;
				}else if(student.getNation().equals("彝族")){
					z[4][2]++;
				}else if(student.getNation().equals("白族")){
					z[5][2]++;
				}else if(student.getNation().equals("壮族")){
					z[6][2]++;
				}else{
					z[7][2]++;
				}
			}else if(student.getGrade()==3){
				z[0][3]++;
				if(student.getNation().equals("回族")){
					z[1][3]++;
				}else if(student.getNation().equals("蒙古族")){
					z[2][3]++;
				}else if(student.getNation().equals("维吾尔族")){
					z[3][3]++;
				}else if(student.getNation().equals("彝族")){
					z[4][3]++;
				}else if(student.getNation().equals("白族")){
					z[5][3]++;
				}else if(student.getNation().equals("壮族")){
					z[6][3]++;
				}else{
					z[7][3]++;
				}
			}else if(student.getGrade()==4){
				z[0][4]++;
				if(student.getNation().equals("回族")){
					z[1][4]++;
				}else if(student.getNation().equals("蒙古族")){
					z[2][4]++;
				}else if(student.getNation().equals("维吾尔族")){
					z[3][4]++;
				}else if(student.getNation().equals("彝族")){
					z[4][4]++;
				}else if(student.getNation().equals("白族")){
					z[5][4]++;
				}else if(student.getNation().equals("壮族")){
					z[6][4]++;
				}else{
					z[7][4]++;
				}
			}else if(student.getGrade()==5){
				z[0][5]++;
				if(student.getNation().equals("回族")){
					z[1][5]++;
				}else if(student.getNation().equals("蒙古族")){
					z[2][5]++;
				}else if(student.getNation().equals("维吾尔族")){
					z[3][5]++;
				}else if(student.getNation().equals("彝族")){
					z[4][5]++;
				}else if(student.getNation().equals("白族")){
					z[5][5]++;
				}else if(student.getNation().equals("壮族")){
					z[6][5]++;
				}else{
					z[7][5]++;
				}
			}else if(student.getGrade()==6){
				z[0][6]++;
				if(student.getNation().equals("回族")){
					z[1][6]++;
				}else if(student.getNation().equals("蒙古族")){
					z[2][6]++;
				}else if(student.getNation().equals("维吾尔族")){
					z[3][6]++;
				}else if(student.getNation().equals("彝族")){
					z[4][6]++;
				}else if(student.getNation().equals("白族")){
					z[5][6]++;
				}else if(student.getNation().equals("壮族")){
					z[6][6]++;
				}else{
					z[7][6]++;
				}
			}else if(student.getGrade()==7){
				z[0][7]++;
				if(student.getNation().equals("回族")){
					z[1][7]++;
				}else if(student.getNation().equals("蒙古族")){
					z[2][7]++;
				}else if(student.getNation().equals("维吾尔族")){
					z[3][7]++;
				}else if(student.getNation().equals("彝族")){
					z[4][7]++;
				}else if(student.getNation().equals("白族")){
					z[5][7]++;
				}else if(student.getNation().equals("壮族")){
					z[6][7]++;
				}else{
					z[7][7]++;
				}
			}else if(student.getGrade()==8){
				z[0][8]++;
				if(student.getNation().equals("回族")){
					z[1][8]++;
				}else if(student.getNation().equals("蒙古族")){
					z[2][8]++;
				}else if(student.getNation().equals("维吾尔族")){
					z[3][8]++;
				}else if(student.getNation().equals("彝族")){
					z[4][8]++;
				}else if(student.getNation().equals("白族")){
					z[5][8]++;
				}else if(student.getNation().equals("壮族")){
					z[6][8]++;
				}else{
					z[7][8]++;
				}
			}else{
				z[0][9]++;
				if(student.getNation().equals("回族")){
					z[1][9]++;
				}else if(student.getNation().equals("蒙古族")){
					z[2][9]++;
				}else if(student.getNation().equals("维吾尔族")){
					z[3][9]++;
				}else if(student.getNation().equals("彝族")){
					z[4][9]++;
				}else if(student.getNation().equals("白族")){
					z[5][9]++;
				}else if(student.getNation().equals("壮族")){
					z[6][9]++;
				}else{
					z[7][9]++;
				}
			}
		}
		model.addAttribute("z", z);
		return "chaeducation/student";
	}
	
	/**
	 * 查询所有
	 * @param modelMap
	 * @return
	 */
	@GetMapping("/findAll")
	public String findAllStudent(ModelMap modelMap){
		List<Student> students =studentService.findAllStudent();
		modelMap.addAttribute("list", students);
		return "stumanager/list";
	}
	
	
	
	
	/**
	 * 插入学生信息
	 * @param modelMap
	 * @param s
	 * @return
	 */
	@GetMapping("addStu")
	public String addStudent(ModelMap modelMap,Student s){
		
		studentService.addStudent(s);
		return "chaeducation/list";
	}
	
	/**
	 * 删除学生信息
	 */
	@GetMapping("delete")
	public String deleteStudent(ModelMap model,@RequestParam("id")Integer id){
		studentService.deleteStudent(id);
	   return findAllStudent(model);
	}
	
	
	
	@GetMapping("edit")
	public String preEdit(ModelMap map,@RequestParam("id") Integer id){
		
		Student stu = studentService.findById(id);
		map.addAttribute("stu",stu);
		return "stumanager/update";
		
	}
	/**
	 * 修改学生信息
	 */
	@GetMapping("update")
	public String updateStudent(ModelMap map,Student student){
		studentService.updateStudent(student);
		return findAllStudent(map);
	}
}
