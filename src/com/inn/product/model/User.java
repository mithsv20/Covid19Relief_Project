package com.inn.product.model;

/**
 * User.java
 * This is a model class represents a User entity
 * @author Ramesh Fadatare
 *
 */
public class User {
    protected int id;
    protected String name;
    protected String email;
    protected String aadhar;
    protected String mobile;
    protected String pAddress;
    protected String cAddress;
    protected String employer;
    

    public User() {}

    

	public User(int id, String name, String email, String aadhar, String mobile, String pAddress, String cAddress,
			String employer) {
		super();
		this.id = id;
		this.name = name;
		this.email = email;
		this.aadhar = aadhar;
		this.mobile = mobile;
		this.pAddress = pAddress;
		this.cAddress = cAddress;
		this.employer = employer;
	}



	public User(String name, String email, String aadhar, String mobile, String pAddress, String cAddress,
			String employer) {
		super();
		this.name = name;
		this.email = email;
		this.aadhar = aadhar;
		this.mobile = mobile;
		this.pAddress = pAddress;
		this.cAddress = cAddress;
		this.employer = employer;
	}



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


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public String getAadhar() {
		return aadhar;
	}


	public void setAadhar(String aadhar) {
		this.aadhar = aadhar;
	}


	public String getMobile() {
		return mobile;
	}


	public void setMobile(String mobile) {
		this.mobile = mobile;
	}


	public String getpAddress() {
		return pAddress;
	}


	public void setpAddress(String pAddress) {
		this.pAddress = pAddress;
	}


	public String getcAddress() {
		return cAddress;
	}


	public void setcAddress(String cAddress) {
		this.cAddress = cAddress;
	}


	public String getEmployer() {
		return employer;
	}


	public void setEmployer(String employer) {
		this.employer = employer;
	}


}