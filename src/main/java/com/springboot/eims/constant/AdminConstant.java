package com.springboot.eims.constant;

public enum AdminConstant {

    USER_NOT_EXIT("用户名和密码不能为空"),
    
    USER_NAME_ERROR("用户名错误"),
    
    USER_PWD_ERROR("密码错误");
    
    
    
    
    private String errInfo;
    
    private AdminConstant(String msg) {
	this.errInfo=msg;
    }
    
    public String getErrInfo() {
	return errInfo;
    }
}
