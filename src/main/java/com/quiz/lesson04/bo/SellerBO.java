package com.quiz.lesson04.bo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.quiz.lesson04.dao.SellerDAO;

@Service
public class SellerBO {
	
	@Autowired
	private SellerDAO sellerDAO;
	
	public void insertSeller(String nickname, String profileImageUrl, double point) {
		 sellerDAO.insertSeller(nickname, profileImageUrl, point);
	}
}
