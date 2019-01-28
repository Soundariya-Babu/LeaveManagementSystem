package com.leave;

public class Company {
	private String Id;

	private String Name;

	private String Role;

	private String Password;

	private String Manager_id;

	public String getId() {

		return Id;

	}

	public void setId(String id) {

		Id = id;

	}

	public String getName() {

		return Name;

	}

	public void setName(String name) {

		Name = name;

	}

	public String getRole() {

		return Role;

	}

	public void setRole(String role) {

		Role = role;

	}

	public String getPassword() {

		return Password;

	}

	public void setPassword(String password) {

		Password = password;

	}

	public String getManager_id() {

		return Manager_id;

	}

	public Company(String id, String name, String role, String password, String manager_id) {

		super();

		Id = id;

		Name = name;

		Role = role;

		Password = password;

		Manager_id = manager_id;

	}

	public void setManager_id(String manager_id) {

		Manager_id = manager_id;

	}
}
