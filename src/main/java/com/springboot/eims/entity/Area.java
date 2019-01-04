package com.springboot.eims.entity;

public class Area {
    private String areaId;

    private String areaName;

    private Integer priamryNumber;

    private Integer secondaryNumber;

    public String getAreaId() {
        return areaId;
    }

    public void setAreaId(String areaId) {
        this.areaId = areaId;
    }

    public String getAreaName() {
        return areaName;
    }

    public void setAreaName(String areaName) {
        this.areaName = areaName;
    }

    public Integer getPriamryNumber() {
        return priamryNumber;
    }

    public void setPriamryNumber(Integer priamryNumber) {
        this.priamryNumber = priamryNumber;
    }

    public Integer getSecondaryNumber() {
        return secondaryNumber;
    }

    public void setSecondaryNumber(Integer secondaryNumber) {
        this.secondaryNumber = secondaryNumber;
    }
}