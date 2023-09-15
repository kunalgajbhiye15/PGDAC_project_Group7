package com.eventmgt.form;

import javax.validation.constraints.NotEmpty;

import com.eventmgt.dto.BookingDTO;

import com.eventmgt.utility.DataUtility;

import lombok.Getter;
import lombok.Setter;


@Getter
@Setter
public class BookingForm extends BookingDTO {

	@NotEmpty(message = "Event name is required")
	private String eventName;
	
	@NotEmpty(message = "Theatre Number is required")
	private String theatreNumber;
	
	@NotEmpty(message = "Venue is required")
	private String venue;
	
	@NotEmpty(message = "Type is required")
	private String type;
	
	@NotEmpty(message = "Date is required")
	private String bookingDate;
		
	@NotEmpty(message = "First name is required")
	private String firstName;

	@NotEmpty(message = "Last name is required")
	private String lastName;
	
	@NotEmpty(message = "First name is required")
	private String email;
	
	@NotEmpty(message = "First name is required")
	private String phoneNumber;
	
	
	private long price;
	

	private long numberOfTicket;

	
	
	 public BookingDTO getDTO() {			
		 BookingDTO bean=new BookingDTO();			
			bean.setId(id);
	        bean.setEventName(eventName);
	        bean.setTheatreNumber(theatreNumber);
	        bean.setVenue(venue);
	        bean.setType(type);
	        bean.setDate(bookingDate);
	    	bean.setFirstName(firstName);
			bean.setLastName(lastName);
			bean.setEmail(email);
			bean.setPhoneNumber(phoneNumber);
			bean.setPrice(price);
			bean.setNumberOfTicket(numberOfTicket);
			

			return bean;
		}

		public void populate(BookingDTO bean) {
			id = bean.getId();
	        eventName = bean.getEventName();
	        theatreNumber = bean.getTheatreNumber();
	        venue = bean.getVenue();
	        type = bean.getType();
	        bookingDate = bean.getDate();
	  
	    	firstName=bean.getFirstName();
			lastName=bean.getLastName();
			email = bean.getEmail();
			phoneNumber = bean.getPhoneNumber();
			price = bean.getPrice();
			numberOfTicket = bean.getNumberOfTicket();
			

		}
	
}
