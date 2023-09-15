package com.eventmgt.dto;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
import javax.validation.constraints.NotEmpty;

import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name="event")
@Getter
@Setter
public class EventDTO extends BaseDTO {

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
	
	@Column(name = "time", length = 755)
	private String time;
	
	@Column(name = "numberOfTicket")
	private long numberOfTicket;
	
	@Column(name = "price")
	private long price;
	
	 @Column(name = "image", columnDefinition = "LONGBLOB")
	    private byte[] image;
	
	
	
	
	
	
	
	
}
