package com.springboot.eims.entity;

import javax.validation.constraints.NotNull;

public class Teacher {
    private Integer tid;

    private String name;

    private String sex;

    private String birthday;

    @NotNull
    private String address;

    @NotNull
    private String nation;

    private String diploma;

    private String post;

    private String jobTitle;

    private String party;

    private String remarks;

    public Teacher(){

    }

    public Integer getTid() {
        return tid;
    }

    public void setTid(Integer tid) {
        this.tid = tid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex == null ? null : sex.trim();
    }

    public String getBirthday() {
        return birthday;
    }

    public void setBirthday(String birthday) {
        this.birthday = birthday == null ? null : birthday.trim();
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address == null ? null : address.trim();
    }

    public String getNation() {
        return nation;
    }

    public void setNation(String nation) {
        this.nation = nation == null ? null : nation.trim();
    }

    public String getDiploma() {
        return diploma;
    }

    public void setDiploma(String diploma) {
        this.diploma = diploma == null ? null : diploma.trim();
    }

    public String getPost() {
        return post;
    }

    public void setPost(String post) {
        this.post = post == null ? null : post.trim();
    }

    public String getJobTitle() {
        return jobTitle;
    }

    public void setJobTitle(String jobTitle) {
        this.jobTitle = jobTitle == null ? null : jobTitle.trim();
    }

    public String getParty() {
        return party;
    }


    public void setParty(String party) {
        this.party = party == null ? null : party.trim();
    }

    public String getRemarks() {
        return remarks;
    }

    public void setRemarks(String remarks) {
        this.remarks = remarks == null ? null : remarks.trim();
    }

    public Teacher( String sex){
        this.sex=sex;

    }

	@Override
	public String toString() {
		return "Teacher [tid=" + tid + ", name=" + name + ", sex=" + sex + ", birthday=" + birthday + ", address="
				+ address + ", nation=" + nation + ", diploma=" + diploma + ", post=" + post + ", jobTitle=" + jobTitle
				+ ", party=" + party + ", remarks=" + remarks + "]";
	}
    
    
}
