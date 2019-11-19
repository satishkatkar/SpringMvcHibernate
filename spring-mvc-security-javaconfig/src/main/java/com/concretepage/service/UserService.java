package com.concretepage.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.concretepage.dao.UserDAO;
import com.concretepage.entity.UserInfo;

@Service
public class UserService implements IUserService {
	@Autowired
	private UserDAO userDAO;
	
	@Autowired
	private PasswordEncoder passwordEncoder;
	public UserInfo getDataByUserName(String userName) {
		return userDAO.getActiveUser(userName);
	}
	@Override
	public String addNew(UserInfo ui) {
		
	     ui.setPassword(passwordEncoder.encode(ui.getPassword()));
		 return userDAO.AddNew(ui);
		
	}
}
