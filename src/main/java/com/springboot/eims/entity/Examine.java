package com.springboot.eims.entity;

public class Examine {
    private String projectId;

    private String approveId;

    private String approvalOpinions;

    private String ext1;

    private String ext2;

    private String ext3;

    private String moneySource;

    public String getProjectId() {
        return projectId;
    }

    public void setProjectId(String projectId) {
        this.projectId = projectId;
    }

    public String getApproveId() {
        return approveId;
    }

    public void setApproveId(String approveId) {
        this.approveId = approveId;
    }

    public String getApprovalOpinions() {
        return approvalOpinions;
    }

    public void setApprovalOpinions(String approvalOpinions) {
        this.approvalOpinions = approvalOpinions;
    }

    public String getExt1() {
        return ext1;
    }

    public void setExt1(String ext1) {
        this.ext1 = ext1;
    }

    public String getExt2() {
        return ext2;
    }

    public void setExt2(String ext2) {
        this.ext2 = ext2;
    }

    public String getExt3() {
        return ext3;
    }

    public void setExt3(String ext3) {
        this.ext3 = ext3;
    }

    public String getMoneySource() {
        return moneySource;
    }

    public void setMoneySource(String moneySource) {
        this.moneySource = moneySource;
    }
}