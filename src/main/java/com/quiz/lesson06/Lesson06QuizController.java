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

import com.quiz.lesson06.bo.BookmarkBO;
import com.quiz.lesson06.model.Bookmark;

@Controller
public class Lesson06QuizController {
	@Autowired
	private BookmarkBO bookmarkBO;
	
	@RequestMapping("/lesson06/quiz01_1")
	public String quiz01_1() {
		return "lesson06/quiz01_1";
	}
	
	// AJAX 요청이 왔을 때,
	// 서버 쪽에서 @Responsebody 어노테이션을 사용해야 한다.
	// 리턴되는 값이 반드시 있어야 한다.
	@RequestMapping("/lesson06/quiz01_2")
	@ResponseBody
	public Map<String, String> quiz01_2(
			@RequestParam("name") String name,
			@RequestParam("url") String url) {
		bookmarkBO.insertBookmark(name, url);
		
		// 성공했는지 여부 리턴
		// {"result":"success"}
		Map<String, String> resultMap = new HashMap<>();
		resultMap.put("result", "success");
		
		return resultMap;	// jackson 라이브러리 때문에 json 리턴
	}
	
	@RequestMapping("/lesson06/bookmark_list")
	public String bookmarkList(Model model) {
		List<Bookmark> bookmarks = bookmarkBO.getBookmark();
		model.addAttribute("bookmarks", bookmarks);
		
		return "lesson06/quiz01_2";
	}
	
	@RequestMapping("/lesson06/is_check")
	@ResponseBody
	public Map<String, Boolean> isCheck(
			@RequestParam("url") String url) {
		
		boolean isCheck = bookmarkBO.existBookmarkByUrl(url);
		
		Map<String, Boolean> checked = new HashMap<>();
		checked.put("is_check", isCheck);
		return checked;
	}
	
	@RequestMapping("/lesson06/is_delete")
	public String isDelete(
			@RequestParam("id") int id) {
		
		bookmarkBO.deleteBookmarkById(id);
		
		return "redirect:/lesson06/bookmark_list";
	}
}
