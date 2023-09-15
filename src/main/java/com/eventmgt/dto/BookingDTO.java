package com.eventmgt.dto;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
import javax.validation.constraints.NotEmpty;

import lombok.Getter;
import lombok.Setter;


@Entity
@Table(name="booking")
@Getter
@Setter
public class BookingDTO extends BaseDTO {

	@Column(name = "eventId", length = 755)
	private long eventId;
	
	@Column(name = "userId", length = 755)
	private long userId;
	
	@Column(name = "eventName", length = 755)
	private String eventName;
	
	@Column(name = "theatreNumber", length = 755)
	private String theatreNumber;
	
	@Column(name = "venue", length = 755)
	private String venue;
	
	@Column(name = "type", length = 755)
	private String type;
	
	@Column(name = "date", length = 755)
	private String date;
	
	
	@Column(name = "firstName", length = 755)
	private String firstName;

	@Column(name = "lastName", length = 755)
	private String lastName;
	
	@Column(name = "email", length = 755)
	private String email;
	
	@Column(name = "phoneNumber", length = 755)
	private String phoneNumber;
	
	@Column(name = "price")
	private long price;
	
	@Column(name = "numberOfTicket")
	private long numberOfTicket;
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
