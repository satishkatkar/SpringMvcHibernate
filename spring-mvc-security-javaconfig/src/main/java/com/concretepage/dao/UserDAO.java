package com.concretepage.dao;
import java.util.List;

import javax.persistence.EntityManager;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.concretepage.entity.UserInfo;
@Repository
@Transactional
public class UserDAO {
	
	@Autowired
	private EntityManager entityManager;
	public UserInfo getActiveUser(String userName) {
		return entityManager.find(UserInfo.class, userName);
		
	}
	public String AddNew(UserInfo ui) {
		entityManager.persist(ui);
		return "save Succussfully";
	}
	
	
//	@Autowired
//	private HibernateTemplate hibernateTemplate;
//	public UserInfo getActiveUser(String userName) {
//		UserInfo activeUserInfo = new UserInfo();
//		short enabled = 1;
//		List<?> list = hibernateTemplate.find("FROM UserInfo WHERE userName=? and enabled=?",
//				userName, enabled);
//		if(!list.isEmpty()) {
//			activeUserInfo = (UserInfo)list.get(0);
//		}
//		return activeUserInfo;
//	}
}