package com.onlinemusicstore.service;

import java.util.ArrayList;

import com.onlinemusicstore.model.User;

public interface IUserService {
		
	public void addUser(User user);
	
	public User updateUser(User user);
	
	public User loginUser(User user);
	
	public String getpassword(String userID);
	
	public void updatepassword(String userID, String password);
	
	public ArrayList<User> getUser(String userID);
	
	public ArrayList<String> getUserIDs();
	
	public void deleteUser(String userID);
	
	void Signup(User user);
	
	public void Login(User user); 
	

}
