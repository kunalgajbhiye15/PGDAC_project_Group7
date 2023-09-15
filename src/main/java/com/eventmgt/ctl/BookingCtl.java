package com.eventmgt.ctl;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.eventmgt.dto.BookingDTO;
import com.eventmgt.dto.EventDTO;
import com.eventmgt.dto.UserDTO;
import com.eventmgt.exception.RecordNotFoundException;
import com.eventmgt.form.BookingForm;
import com.eventmgt.form.EventForm;
import com.eventmgt.service.BookingService;
import com.eventmgt.service.EventService;


@Controller
public class BookingCtl {
	
	@Autowired
	public BookingService service;
	
	@Autowired
	public EventService eventService;

	@GetMapping("/booking")
	public String booking(@RequestParam("id") long id, @ModelAttribute("form")BookingForm form, Model model, HttpSession session) {
		
		EventDTO eventDTO = eventService.findEventDTO(id);
		UserDTO userDto = (UserDTO) session.getAttribute("user");
		if(userDto == null) {
			return "redirect:/loginView";
		}
		model.addAttribute("event", eventDTO);
		model.addAttribute("user", userDto);
		

		return "booking";
	}

	@PostMapping("/addBooking")
	public String Add(@RequestParam("eventId") long eventId, @Valid @ModelAttribute("form")BookingForm form,  BindingResult bindingResult, Model model) throws IOException {

		System.out.println("form: "+form);
		try {
		if (bindingResult.hasErrors()) {
			System.out.println("bindingResult : "+bindingResult);
			return "booking";
		}else {
			BookingDTO bean = form.getDTO();			
			long totalPrice = bean.getNumberOfTicket() * bean.getPrice();
			EventDTO eventDTO = eventService.findEventDTO(eventId);
			long remainingTicket = eventDTO.getNumberOfTicket()-bean.getNumberOfTicket();
			System.out.println("remainingTicket: "+remainingTicket);
			eventDTO.setNumberOfTicket(remainingTicket);
			eventService.update(eventDTO);
			service.Add(bean);
			model.addAttribute("success", "Booking Added successfully");
			model.addAttribute("totalPrice", totalPrice);
			
			return "redirect:/payment";
		}}catch (RecordNotFoundException e) {
			// TODO: handle exception
			model.addAttribute("error", e.getMessage());
			e.printStackTrace();
			return "booking";
		}
	}
	
	@GetMapping("/bookingList")
	public String list(@ModelAttribute("form")BookingForm form, Model model){
	List<BookingDTO> list = service.list();
	model.addAttribute("list", list);
	return "bookinglist";
		
	}
	
	
	@GetMapping("/bookingEdit")	
	public String update(@ModelAttribute("form")BookingForm form, Model model, @RequestParam("id") long id ){
		BookingDTO bean = service.findBookingDTO(id);
		form.populate(bean);
		model.addAttribute("bean",bean);	
		return "booking";
	}
	
	@GetMapping("/bookingDelete")	
	public String delete(@ModelAttribute("form")BookingForm form, Model model, @RequestParam("id") long id ) throws Exception{
		service.delete(id);	
		
		List<BookingDTO> list =	service.list();
		model.addAttribute("list", list);
		model.addAttribute("success", "Booking Deleted successfully");
		return "bookinglist";
	}

	

}
