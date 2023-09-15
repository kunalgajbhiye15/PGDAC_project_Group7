package com.eventmgt.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.eventmgt.dto.BookingDTO;


public interface BookingDAO extends JpaRepository<BookingDTO, Long> {

	public BookingDTO findById(long id);
	public BookingDTO findByType(String type);
	public BookingDTO findByEventName(String eventName);
	public List<BookingDTO> findByUserId(long userId);
}
