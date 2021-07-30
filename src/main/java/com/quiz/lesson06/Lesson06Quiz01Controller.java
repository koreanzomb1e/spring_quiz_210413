package com.quiz.lesson06;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.quiz.lesson06.bo.BookmarkBO;
import com.quiz.lesson06.model.Bookmark;

@Controller
public class Lesson06Quiz01Controller {
	@Autowired
	private BookmarkBO bookmarkBO;
	
	@RequestMapping("/lesson06/quiz01_1")
	public String quiz01_1() {
		return "lesson06/quiz01_1";
	}
	
	@RequestMapping("/lesson06/quiz01_2")
	@ResponseBody
	public void quiz01_2(
			@RequestParam("name") String name,
			@RequestParam("url") String url) {
		bookmarkBO.insertBookmark(name, url);
	}
	
	@RequestMapping("/lesson06/bookmark_list")
	public String bookmarkList(Model model) {
		List<Bookmark> bookmarks = bookmarkBO.getBookmark();
		model.addAttribute("bookmarks", bookmarks);
		
		return "lesson06/quiz01_2";
	}
}
