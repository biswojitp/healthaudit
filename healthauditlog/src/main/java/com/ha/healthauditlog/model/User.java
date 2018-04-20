package com.ha.healthauditlog.model;


import javax.persistence.*;

import org.hibernate.annotations.GenericGenerator;

import java.io.Serializable;
import java.util.Date;
import java.util.Set;

@Entity
@Table(name = "t_user")
public class User implements Serializable{
   
	private static final long serialVersionUID = 1L;

	@Id
	@GenericGenerator(name="id",strategy="increment")
	@GeneratedValue(generator="id")


	@Column(name="user_id")
	private Long userid;
	
	@Column(name="user_name")
    private String username;
	
	@Column(name="password")
	private String password;
    
	@Column(name="confirm_password")
	private String confirmPassword;
    
	/*@ManyToOne
	@Column(name="role_id")*/
	@ManyToMany
	 @JoinTable(name = "t_user_role", joinColumns = @JoinColumn(name = "user_id"), inverseJoinColumns = @JoinColumn(name = "role_id"))
	private Set<Role> roles;

	public Long getUserid() {
		return userid;
	}

	public void setUserid(Long userid) {
		this.userid = userid;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getConfirmPassword() {
		return confirmPassword;
	}

	public void setConfirmPassword(String confirmPassword) {
		this.confirmPassword = confirmPassword;
	}

	public Set<Role> getRoles() {
		return roles;
	}

	public void setRoles(Set<Role> roles) {
		this.roles = roles;
	}
    
	    
	
}
