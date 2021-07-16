package com.quiz.lesson03.bo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.quiz.lesson03.dao.RealEstateDAO;
import com.quiz.lesson03.model.RealEstate;

@Service
public class RealEstateBO {
	@Autowired
	private RealEstateDAO realEstateDAO;
	
	public List<RealEstate> getRealEsate(int value) {
		return realEstateDAO.selectRealEstate(value);
	}
	
	public List<RealEstate> getRealEsate2(int area, int price) {
		return realEstateDAO.selectRealEstate2(area, price);
	} 
}
