package com.quiz.lesson05;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.quiz.lesson05.bo.WeatherhistoryBO;
import com.quiz.lesson05.model.Weatherhistory;

@Controller
public class Lesson05Quiz05Controller {
	@Autowired
	private WeatherhistoryBO weatherhistoryBO;
	
	@RequestMapping("/lesson05/quiz05_1")
	public String quiz05_1(
			@ModelAttribute Weatherhistory weatherhistory,
			Model model
	) {
		List<Weatherhistory> result = weatherhistoryBO.getWeatherhistoryList();
		model.addAttribute("result", result);
		
		return "lesson05/quiz05_1";
	}
	
	@RequestMapping("/lesson05/quiz05_2")
	public String quiz05_2() {
		return "lesson05/quiz05_2";
	}
	
	@RequestMapping("/lesson05/addWeatherhistory")
	public String addWeatherhistory(
			@RequestParam("date") String date,
			@RequestParam("weather") String weather,
			@RequestParam("microDust") String microDust,
			@RequestParam("temperatures") double temperatures,
			@RequestParam("precipitation") double precipitation,
			@RequestParam("windSpeed") double windSpeed
	) {
		weatherhistoryBO.insertWeatherhistory(date, weather, microDust, temperatures, precipitation, windSpeed);
		
		// redirect: 새로운 request를 하는 것과 같으므로 RequestMapping에 있는 path를 써준다.
		return "redirect:/lesson05/quiz05_1";
	}
}