package com.tms.model;

import java.util.Date;

public class Booking {
	
	private int id;
	private int userId;
	private int packageId;
	private int travellers;
	private Date bookingDate;

	public int getId() {
		return id; 
		}
	
	public void setId(int id) { 
		this.id = id; 
		}
	
	public int getUserId1() { 
		return userId; 
		}
	
	public void setUserId(int userId) { 
		this.userId = userId; 
		}
	
	public int getPackageId() { 
		return packageId; 
		}
	
	public void setPackageId(int packageId) { 
		this.packageId = packageId; 
		}
	
	public int getTravellers() { 
		return travellers; 
		}
	
	public void setTravellers(int travellers) { 
		
		this.travellers = travellers; 
		}


	public Date getBookingDate() { 
		return bookingDate; 
		}

	public void setBookingDate(Date bookingDate) { 
		this.bookingDate = bookingDate; 
	}
	public int getUserId() {
		return 0;
		}
	}