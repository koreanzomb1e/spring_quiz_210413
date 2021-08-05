package com.quiz.lesson06;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.quiz.lesson06.bo.BookingBO;
import com.quiz.lesson06.model.Booking;

@Controller
public class Lesson06Quiz03Controller {
	@Autowired
	private BookingBO bookingBO;

	@RequestMapping("/lesson06/main_view")
	public String mainView() {
		return "lesson06/mainView";
	}
	
	@RequestMapping("/lesson06/quiz03_1")
	public String quiz03_1(Model model) {
		List<Booking> bookings = bookingBO.getBookingList();
		model.addAttribute("bookings", bookings);
		
		return "lesson06/quiz03_1";
	}
	
	@RequestMapping("/lesson06/quiz03_delete")
	@ResponseBody
	public Map<String, String> delete(
			@RequestParam("id") int id) {
		
		bookingBO.deleteBookingById(id);
		
		Map<String, String> map = new HashMap<>();
		map.put("success", "삭제 완료");
		return map;
	}
	
	
}

