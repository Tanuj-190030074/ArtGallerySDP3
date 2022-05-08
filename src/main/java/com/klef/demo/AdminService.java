package com.klef.demo;

import org.springframework.stereotype.Service;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Query;

import org.springframework.beans.factory.annotation.Autowired;
@Service
public class AdminService {
@Autowired
AdminRepository rep;
@Autowired
EntityManager entityManager;

public boolean adminlogin(String email,String password)
{
	Query query = entityManager.createQuery("select u from Admin u where u.email=:email and u.password=:password and u.type=:type");
	query.setParameter("email",email);
	query.setParameter("password", password);
	query.setParameter("type","admin");
    List<Admin> users = query.getResultList();
    if(users.isEmpty()==true)
    {
    	return false;
    }
	return true;
}
}
