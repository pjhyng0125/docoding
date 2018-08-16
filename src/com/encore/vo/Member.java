package com.encore.vo;

import java.sql.Date;

public class Member {

	private String id;
	private String pass;
	private String name;
	private String gender;
	private String birth;
	private String email;
	private String phone;
	private boolean login_flag;
	private String m_time;
	private int cash;
	public Member() {
		super();
	}
	
	public Member(String id, String pass, String name, String gender, String birth, String email, String phone,
			boolean login_flag, String m_time, int cash) {
		super();
		this.id = id;
		this.pass = pass;
		this.name = name;
		this.gender = gender;
		this.birth = birth;
		this.email = email;
		this.phone = phone;
		this.login_flag = login_flag;
		this.m_time = m_time;
		this.cash = cash;
	}

	@Override
	public String toString() {
		return "Member [id=" + id + ", pass=" + pass + ", name=" + name + ", gender=" + gender + ", birth=" + birth
				+ ", email=" + email + ", phone=" + phone + ", login_flag=" + login_flag + ", m_time=" + m_time
				+ ", cash=" + cash + ", getClass()=" + getClass() + ", hashCode()=" + hashCode() + ", toString()="
				+ super.toString() + "]";
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getBirth() {
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = birth;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public boolean isLogin_flag() {
		return login_flag;
	}
	public void setLogin_flag(boolean login_flag) {
		this.login_flag = login_flag;
	}
	public String getM_time() {
		return m_time;
	}
	public void setM_time(String m_time) {
		this.m_time = m_time;
	}
	public int getCash() {
		return cash;
	}
	public void setCash(int cash) {
		this.cash = cash;
	}
	
	
}
