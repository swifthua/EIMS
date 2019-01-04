package com.springboot.eims.privi;

import com.springboot.eims.constant.PriviConstant;

public class AdminGroup extends Group {

    static{
	map.put(PriviConstant.ADMINPRI.getPrivi(), new AdminGroup());
    }
    public AdminGroup(){

	validRequestPaths.add("projectexamine");
    }
}
