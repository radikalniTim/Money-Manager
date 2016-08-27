package beans;

import java.util.Date;

public class User {
	/*
	 * Mirrors current columns in database.
	 */
	int id;
	String email;
	String firstName;
	String lastName;
	Date birthDay;
	String role; //Users table contains id (int) but we will fetch name (string) by id from users_roles
	
	public User (){}
	
	public User(int id, String email, String firstName, String lastName, Date birthDay, String role) {
		super();
		this.id = id;
		this.email = email;
		this.firstName = firstName;
		this.lastName = lastName;
		this.birthDay = birthDay;
		this.role = role;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public Date getBirthDay() {
		return birthDay;
	}

	public void setBirthDay(Date birthDay) {
		this.birthDay = birthDay;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	/**
	 * Used to avoid repeating work of connecting firstName and lastName when priting full name accross app.
	 * @return
	 */
	public String getFullName() {
		return firstName + " " + lastName;
	}
	
}
