package com.lanou3g.main;

public class Teacher {
	private String name;
	private String gender;
	public String getName() {
		return name;
	}
	
	//括号中的内容叫参数
	public void setName(String name) {
		this.name = name;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public Teacher(String name, String gender) {
		super();
		this.name = name;
		this.gender = gender;
	}
}
