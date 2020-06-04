package com.how2java.pojo;

public class Category {
	private int id;
	private String name;
	private String sex;
	private String subject;
	private String grade;
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public String getGrade() {
		return grade;
	}

	public void setGrade(String grade) {
		this.grade = grade;
	}

	

	@Override
	public String toString() {
		return "Category [id=" + id + ", name=" + name + ",sex=" + sex + ",subject=" + subject + ",grade=" + grade + "]";
	}
	
	
	
}

