package com.klef.demo;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Query;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.*;
@Service
public class UserService {
 @Autowired
 UserRepository rep;
 @Autowired
 EntityManager entityManager;
 @Autowired
 CartRepository crep;
 public void adduser(User emp)
 {
	 rep.save(emp);
 }
 public List<User> getalluserrecords()
 {
	 return (List<User>)rep.findAll();
 }
 public void deleteuserrecord(int id)
 {
	 rep.deleteById(id);
 }
 public void updateuserrecord(User emp)
 {
	 rep.save(emp);
 }
 
 
 
 public List<User> login(String email,String password)
 {
	 Query query = entityManager.createQuery("select u from User u where u.email=:email and u.password=:password and isEnabled=:bvar");
		query.setParameter("email",email);
		query.setParameter("password", password);
		query.setParameter("bvar",true);
	    List<User> users = query.getResultList();
	    return users;
 }
}
