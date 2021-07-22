package com.quiz.lesson04;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.quiz.lesson04.bo.SellerBO;
import com.quiz.lesson04.model.Seller;

@RequestMapping("/lesson04/quiz01")
@Controller
public class Lesson04Quiz01Controller {
	
	@Autowired
	private SellerBO sellerBO;
	
	// http://localhost:8080/lesson04/quiz01/1
	@RequestMapping("/1")
	public String addSellerView() {
		return "lesson04/addSeller";
	}
	
	@RequestMapping("/add_seller")
	public String quiz01_1(
			@RequestParam("nickname") String nickname,
			@RequestParam(value = "profileImageUrl", required = false) String profileImageUrl,
			@RequestParam("point") double point
	) {
		sellerBO.insertSeller(nickname, profileImageUrl, point);
		
		return "lesson04/afterAddSeller";
	}
	
	// http://localhost:8080/lesson04/quiz01/seller_info
	@RequestMapping("/seller_info")
	public String quiz01_2(
			@RequestParam(value = "id", required=false) Integer id,	// 안들어올때도 있기 때문에 nullable로 받아야 한다
			Model model) {
			
		Seller seller = null;
		if (id == null) {
			seller = sellerBO.getLastSeller();
		} else {
			seller = sellerBO.getSellerById(id);
		}
		
		model.addAttribute("result", seller);
		
		return "lesson04/getLastSeller";
	}
}
