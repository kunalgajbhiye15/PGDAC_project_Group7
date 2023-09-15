package com.eventmgt.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.eventmgt.dto.PaymentDTO;
import com.eventmgt.dto.UserDTO;

public interface PaymentDAO extends JpaRepository<PaymentDTO, Long> {
	
	public PaymentDTO findById(long id);
	public List<PaymentDTO> findByEmail(String email);

}
