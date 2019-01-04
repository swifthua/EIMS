package com.springboot.eims.entity;

public class Result {

    private String category;
    private String number;
    public Result(){

    }

    public Result(String category, String number) {
		this.category = category;
		this.number = number;
	}

	public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getNumber() {
        return number;
    }

    public void setNumber(String number) {
        this.number = number;
    }

    @Override
    public String toString() {
        return "Result{" +
                "category='" + category + '\'' +
                ", number='" + number + '\'' +
                '}';
    }
}
