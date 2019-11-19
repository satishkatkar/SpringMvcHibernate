package com.concretepage.service;

import org.springframework.security.access.annotation.Secured;

import com.concretepage.entity.UserInfo;

public interface IUserService {
	@Secured ({"ROLE_ADMIN","ROLE_MANAGER","ROLE_EMPLOYEE"})
	UserInfo getDataByUserName(String userName);
	
	@Secured({"ROLE_ADMIN"})
	String addNew(UserInfo ui);
}
