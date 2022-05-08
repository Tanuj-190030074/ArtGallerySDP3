package com.klef.demo;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;
import java.io.IOException;
import java.math.BigInteger;
import java.util.Base64;
import java.util.List;
import java.util.Optional;

import javax.persistence.EntityManager;
import javax.persistence.Query;
import org.springframework.util.StringUtils;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.*;
@Service
public class ArtService {
@Autowired
ArtRepository rep;
@Autowired
CartRepository crep;
@Autowired
EntityManager entityManager;
@Autowired
PaymentRepository prep;

public void addtocart(int artid,String email)
{
	Art a=rep.findById(artid).get();
	Cart c=new Cart();
	c.setEmail(email);
	c.setArt(a);
	crep.save(c);
	
}

public void addtopaymenttable(String email,Art c)
{
	PaymentHistory h=new PaymentHistory();
	h.setArt(c);
	h.setEmail(email);
	prep.save(h);
}

@Transactional
public void clearcart(String email)
{
	Query query = entityManager.createQuery("delete from Cart where email=:email");
	query.setParameter("email",email);
	query.executeUpdate();
}

public void deletecartitem(int id)
{
	crep.deleteById(id);
}

public List<Cart> getallcartitems(String email)
{
	Query query = entityManager.createQuery("from Cart where email=:email");
	query.setParameter("email",email);
	List<Cart> res=query.getResultList();
	return res;
}

public Long getcountcitems(String email)
{
	Query query = entityManager.createQuery("select count(*) from Cart where email=:email");
	query.setParameter("email",email);
	Long c=(Long)query.getSingleResult();
	System.out.println(c);
	return c;
}

public static String toHexString(byte[] hash) {

    // Convert byte array into signum representation
    BigInteger number = new BigInteger(1, hash);

    // Convert message digest into hex value
    StringBuilder hexString = new StringBuilder(number.toString(16));

    // Pad with leading zeros
    while (hexString.length() < 32) {
      hexString.insert(0, '0');
    }
    return hexString.toString();
  }

public boolean  saveProductToDB(MultipartFile file,String email,String owner,String name,String description
		,int price) throws IOException
{
	String hash=toHexString(file.getBytes());
	hash=hash.substring(0,223);
	Query query = entityManager.createQuery("select id from Art where token=:hash");
	query.setParameter("hash",hash);
	List<Art> a=query.getResultList();
	if(a.isEmpty()==false)
	{
		return false;
	}
	Art p = new Art();
	String fileName = StringUtils.cleanPath(file.getOriginalFilename());
	if(fileName.contains(".."))
	{
		System.out.println("not a a valid file");
	}
	try {
		p.setImage(Base64.getEncoder().encodeToString(file.getBytes()));
	} catch (IOException e) {
		e.printStackTrace();
	}
	p.setDescription(description);
	
    p.setName(name);
    p.setPrice(price);
    p.setOwner(owner);
    p.setUseremail(email);
    p.setToken(hash);
    rep.save(p);
    return true;
}

List<Art> getallarts()
{
	Query query = entityManager.createQuery("from Art where isapproved=:approved order by ratings desc");
	query.setParameter("approved", true);
    return query.getResultList();
}

List<Art> getallarts2()
{
	Query query = entityManager.createQuery("from Art order by ratings desc");
    return query.getResultList();
}

List<Art> getmyarts(String email)
{
	Query query = entityManager.createQuery("select u from Art u where u.useremail=:email");
	query.setParameter("email",email);
    List<Art> users = query.getResultList();
    return users;
}



void giverating(int id,int stars)
{
	Art a=new Art();
	a=rep.findById(id).get();
	double res;
	res=((a.getRatings()*a.getCount())+stars)/(a.getCount()+1);
	a.setCount(a.getCount()+1);
	a.setRatings(res);
	rep.save(a);
	
}

void makeapprove(int id)
{
	Art a=new Art();
	a=rep.findById(id).get();
	a.setIsapproved(true);
	rep.save(a);
}

Optional<Art> getart(int id)
{
	return rep.findById(id);
}
void deleteart(int email)
{
  rep.deleteById(email);	
}





}


