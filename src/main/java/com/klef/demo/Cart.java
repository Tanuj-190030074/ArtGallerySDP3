package com.klef.demo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="cart_table")
public class Cart {
	@Id
    @GeneratedValue (strategy = GenerationType.IDENTITY)
    private int id;
	private String email;
	@ManyToOne
	private Art art;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public Art getArt() {
		return art;
	}
	public void setArt(Art art) {
		this.art = art;
	}
}
