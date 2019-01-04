package com.springboot.eims.constant;


public enum PriviConstant {

    ADMINPRI("管理员"),
    SUPPERADMIN("超级管理员");
    private String privi;
    
    private PriviConstant(String privi){
	this.privi=privi;
    }
    
    public String getPrivi() {
	return privi;
    }
   
}
