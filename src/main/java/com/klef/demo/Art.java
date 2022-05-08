package com.klef.demo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Lob;

import org.hibernate.annotations.Type;

@Entity
public class Art {
	@Id
    @GeneratedValue (strategy = GenerationType.IDENTITY)
    private int id;
	@Column(name="useremail",length=50)
	private String useremail;
	@Column(name="rating", columnDefinition="Decimal(10,2) default '0.00'")
	private double ratings;
	@Column(name="count", columnDefinition="int default '0'")
	private int count;
	private String token;
	private boolean isapproved;
	public boolean isIsapproved() {
		return isapproved;
	}
	public void setIsapproved(boolean isapproved) {
		this.isapproved = isapproved;
	}
	public String getToken() {
		return token;
	}
	public void setToken(String token) {
		this.token = token;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public double getRatings() {
		return ratings;
	}
	public void setRatings(double ratings) {
		this.ratings = ratings;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	private String owner;
	public String getUseremail() {
		return useremail;
	}
	public void setUseremail(String useremail) {
		this.useremail = useremail;
	}
	public String getOwner() {
		return owner;
	}
	public void setOwner(String owner) {
		this.owner = owner;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	private String name;
	private String description;
	private int price;
	@Lob
	@Column(columnDefinition = "MEDIUMBLOB")
	private String image;
	
	

}

