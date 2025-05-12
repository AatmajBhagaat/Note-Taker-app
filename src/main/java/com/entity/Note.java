package com.entity;



import java.util.Random;
import java.util.Date;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
@Entity
@Table(name="Note_Details")
public class Note
{
	@Id
	private int id;
	@Column(length=1000)
	private String title;
	@Column(length=3000)
	private String content;
	private Date addeddate;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getAddeddate() {
		return addeddate;
	}
	public void setAddeddate(Date addeddate) {
		this.addeddate = addeddate;
	}
	public Note(String title, String content, Date addeddate) {
		super();
		this.id = new Random().nextInt(1000000);
		this.title = title;
		this.content = content;
		this.addeddate = addeddate;
	}
	public Note() {
		super();
		// TODO Auto-generated constructor stub
	}
	
}
