package com.eventmgt.service;

import java.sql.Blob;
import java.sql.SQLException;
import java.util.List;

import javax.sql.rowset.serial.SerialBlob;
import javax.sql.rowset.serial.SerialException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.eventmgt.dao.EventDAO;

import com.eventmgt.dto.EventDTO;

import com.eventmgt.exception.RecordNotFoundException;



@Service
public class EventService {
	
	@Autowired
	public EventDAO dao;
	

	public EventDTO Add(EventDTO dto) {
		EventDTO entity = null;
		entity = dao.findByEventName(dto.getEventName());
	System.out.println("shop By Name........: "+entity);
	
	if(entity != null)
		throw new RecordNotFoundException("shop is already exists..");
	    System.out.println("dto Before Save: "+dto);
	    entity = dao.save(dto);
       return  entity;
	}
	


	public EventDTO findEventDTO(long id) {
		return dao.findById(id);
	}
	
	
	public List<EventDTO> list(){
		List<EventDTO> dto = dao.findAll();
		return dto;
	}
	
	public EventDTO update(EventDTO dto){
		EventDTO bean = dao.saveAndFlush(dto);
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
	
	public Blob getImageById(long id) throws SerialException, SQLException {		
		EventDTO news = dao.findById(id);
		byte[] blob = news.getImage();
		Blob bBlob = new SerialBlob(blob);
		return bBlob;
	}

}
