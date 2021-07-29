package com.quiz.lesson05.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.quiz.lesson05.model.NewReview;

@Repository
public interface NewReviewDAO {
	public List<NewReview> selectNewReview(
			@Param("storeId") int storeId, 
			@Param("storeName") String storeName);
}
