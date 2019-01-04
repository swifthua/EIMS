package com.springboot.eims.privi;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;





public class Group {
    

	protected static Map<String,Group> map = 
			new HashMap<String, Group>(); //存放禁止登陆的页面
	
	public List<String> validRequestPaths = new ArrayList<String>(); //存放有效的用户组
	
	public static boolean isInit  = false;
	
	
	public static void init() throws ClassNotFoundException{
		Class.forName(AdminGroup.class.getName());
		Class.forName(SuperAdminGroup.class.getName());
		isInit = true;
		
	}
	
	public  boolean hasPrivilege(String path){
		
		for(String validPath: validRequestPaths){
			// 最后一个为通配符
			if(path.contains(validPath)){
			    return true;
			}
			return false;
		    
		}
		return false;
	};
	public static Group getGroup(String privi){
	      return  map.get(privi);
	}
	
}
