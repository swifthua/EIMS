package com.springboot.eims.entity;

import java.sql.Date;

public class Project {
    private String projectId;

    private String projectName;

    private String projectStatus;

    private String proposer;

    private Date createDate;

    private Date updateDate;

    private String projectMoney;

    private String projectDesc;

    private String area;

    private String remarks;

    private String ext1;

    private String ext2;

    private Examine examine;

    private Area area2;

    public Area getArea2() {
	return area2;
    }

    public void setArea2(Area area2) {
	this.area2 = area2;
    }

    public String getProjectId() {
	return projectId;
    }

    public Examine getExamine() {
	return examine;
    }

    public void setExamine(Examine examine) {
	this.examine = examine;
    }

    public void setProjectId(String projectId) {
	this.projectId = projectId;
    }

    public String getProjectName() {
	return projectName;
    }

    public void setProjectName(String projectName) {
	this.projectName = projectName;
    }

    public String getProjectStatus() {
	return projectStatus;
    }

    public void setProjectStatus(String projectStatus) {
	this.projectStatus = projectStatus;
    }

    public String getProposer() {
	return proposer;
    }

    public void setProposer(String proposer) {
	this.proposer = proposer;
    }

    public Date getCreateDate() {
	return createDate;
    }

    public void setCreateDate(Date createDate) {
	this.createDate = createDate;
    }

    public Date getUpdateDate() {
	return updateDate;
    }

    public void setUpdateDate(Date updateDate) {
	this.updateDate = updateDate;
    }

    public String getProjectMoney() {
	return projectMoney;
    }

    public void setProjectMoney(String projectMoney) {
	this.projectMoney = projectMoney;
    }

    public String getProjectDesc() {
	return projectDesc;
    }

    public void setProjectDesc(String projectDesc) {
	this.projectDesc = projectDesc;
    }

    public String getArea() {
	return area;
    }

    public void setArea(String area) {
	this.area = area;
    }

    public String getRemarks() {
	return remarks;
    }

    public void setRemarks(String remarks) {
	this.remarks = remarks;
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
}