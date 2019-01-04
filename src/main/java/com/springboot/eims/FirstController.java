package com.springboot.eims;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.springboot.eims.entity.Admin;
import com.springboot.eims.service.AdminService;
/**
 * 
* @ClassName: HelloController 
* @Description: 测试类
* @author swift_hua@126.com
* @date 2017年9月9日 下午11:23:50
 */
@RestController
public class FirstController {
	
	@Autowired
	AdminService adminService;
	
	@RequestMapping(value="/select",method=RequestMethod.GET)
	public Admin selectByPrimaryKey(String adminId){
		Admin admin=new Admin();
		admin.setAdminId("1");
		System.out.println(admin);
		return adminService.selectByPrimaryKey(adminId);
	}
	//访问地址：http://localhost:8080/select
	
	/*@RequestMapping(value="/findAll",method=RequestMethod.GET)
	public List<Admin> findAll(){
		return adminService.list();
	}*/
}
