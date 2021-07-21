package com.quiz.lesson03;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.quiz.lesson03.bo.RealEstateBO;
import com.quiz.lesson03.model.RealEstate;

@RequestMapping("/lesson03/quiz01")
@RestController
public class Lesson03Quiz01RestController {
	
	@Autowired
	private RealEstateBO realEstateBO;
	
	@RequestMapping("/1")
	public RealEstate quiz01_1(@RequestParam(value="id") int id) {	// 필수파라미터는 value= 생략가능
		return realEstateBO.getRealEsate(id);	// jackson을 라이브러리로 인해 json으로 리턴
	}
	
	@RequestMapping("/2")
	public List<RealEstate> quiz01_2(@RequestParam(value="rentPrice") int rentPrice) {
		return realEstateBO.getRealEsateListByRentPrice(rentPrice);
	}
	
	@RequestMapping("/3")
	public List<RealEstate> quiz01_3(
			@RequestParam(value="area") int area,
			@RequestParam(value="price") int price
	) {
		return realEstateBO.getRealEsateListByAreaAndPrice(area, price);
	}
}
