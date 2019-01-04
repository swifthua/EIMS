package com.springboot.eims.privi;

import com.springboot.eims.constant.PriviConstant;

public class SuperAdminGroup extends Group {

    static{
	map.put(PriviConstant.SUPPERADMIN.getPrivi(), new SuperAdminGroup());
    }
    public SuperAdminGroup() {
	super();
	validRequestPaths.add("processmanager");
    }
}
