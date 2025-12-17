package com.tms.model;

public class PackageModel {
	
	private int id;
	private String title;
	private String description;
	private double price;
	private String duration;
	
	
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
	
	public String getDescription() { 
		return description; 
		}
	
	public void setDescription(String description) { 
		this.description = description; 
		}
	
	public double getPrice() { 
		return price; 
		}
	public void setPrice(double price) { 
		this.price = price; 
		}
	
	public String getDuration() { 
		return duration; 
		}
	
	public void setDuration(String duration) { 
		this.duration = duration; 
		}
	
	}