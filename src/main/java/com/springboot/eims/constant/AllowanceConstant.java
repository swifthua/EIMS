package com.springboot.eims.constant;

public enum AllowanceConstant {
    BASE_ALLOWANCE("基本补助"),
    
    EDUCATION_ALLOWANCE("教育补助"),
    
    OTHER_ALLOWANCE("其他补助");
    
    private AllowanceConstant(String allowance) {
		this.allowance=allowance;
	}
    private String allowance;
    public String getAllowance() {
		return allowance;
	}
}
