/*package com.mediwr.Mediware.domain.dynamo;

import com.amazonaws.services.dynamodbv2.datamodeling.DynamoDBAttribute;
import com.amazonaws.services.dynamodbv2.datamodeling.DynamoDBHashKey;
import com.amazonaws.services.dynamodbv2.datamodeling.DynamoDBTable;
import com.mediwr.Mediware.constants.UserRoleType;
import com.mediwr.Mediware.domain.Address;

@DynamoDBTable(tableName="Users")
public class User {

	private String userId;
	private String userName;
    private String password;
    private String contactNumber;
    private String stage;
    private String dob;
    private String email;
    private String age;
    private UserRoleType[] roles;
    private Address address;
    
    public User() {
    }
    
    public User(String username, String password, String contactNumber, String email, Address address) {
    	this.userName = username;
    	this.password = password;
    	this.contactNumber = contactNumber;
    	this.email = email;
    	this.address = address;
    }
    
    public User(String username, String contactNumber, String stage, String email, String age, String dob) {
    	this.userName = username;
    	this.stage = stage;
    	this.contactNumber = contactNumber;
    	this.email = email;
    	this.age = age;
    	this.dob = dob;
    }
    
    @DynamoDBHashKey(attributeName="userId")
    public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	@DynamoDBAttribute(attributeName = "userName")
	public String getUsername() {
        return userName;
    }

    public void setUsername(String username) {
        this.userName = username;
    }

    @DynamoDBAttribute(attributeName = "password")
    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
    
    @DynamoDBAttribute(attributeName = "contactNumber")
    public String getContactNumber() {
		return contactNumber;
	}

	public void setContactNumber(String contactNumber) {
		this.contactNumber = contactNumber;
	}

	@DynamoDBAttribute(attributeName = "email")
	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
	
	@DynamoDBAttribute(attributeName = "roles")
	public UserRoleType[] getRoles() {
		return roles;
	}

	public void setRoles(UserRoleType[] roles) {
		this.roles = roles;
	}

	@DynamoDBAttribute(attributeName = "address")
	public Address getAddress() {
		return address;
	}

	public void setAddress(Address address) {
		this.address = address;
	}

	@DynamoDBAttribute(attributeName = "stage")
	public String getStage() {
		return stage;
	}

	public void setStage(String stage) {
		this.stage = stage;
	}

	@DynamoDBAttribute(attributeName = "dob")
	public String getDob() {
		return dob;
	}

	public void setDob(String dob) {
		this.dob = dob;
	}

	@DynamoDBAttribute(attributeName = "age")
	public String getAge() {
		return age;
	}

	public void setAge(String age) {
		this.age = age;
	}
}
*/