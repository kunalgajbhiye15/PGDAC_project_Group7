package com.eventmgt.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.eventmgt.dao.BookingDAO;
import com.eventmgt.dao.EventDAO;
import com.eventmgt.dto.BookingDTO;
import com.eventmgt.dto.EventDTO;
import com.eventmgt.exception.RecordNotFoundException;

@Service
public class BookingService {

	@Autowired
	public BookingDAO dao;
	

	public BookingDTO Add(BookingDTO dto) {
	
	   BookingDTO entity = dao.save(dto);
       return  entity;
	}
	


	public BookingDTO findBookingDTO(long id) {
		return dao.findById(id);
	}
	
	
	public List<BookingDTO> list(){
		List<BookingDTO> dto = dao.findAll();
		return dto;
	}
	
	public BookingDTO update(BookingDTO dto){
		BookingDTO bean = dao.saveAndFlush(dto);
		return bean;
	}
	
	public void delete(long id) throws Exception {
		if(id>0)
		{
			dao.deleteById(id);
		}else {
			throw new Exception("Not a valid id");
		}
		
	}
	
}
