package com.quiz.lesson04.dao;

import org.springframework.stereotype.Repository;

@Repository
public interface SellerDAO {

	public void insertSeller(String nickname, String profileImageUrl, double point);
}