<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quiz01</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>        
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>
	<div class="container">
		<h1>즐겨 찾기 추가하기</h1>
		
		<form method="post" action="/lesson06/quiz01_2">
			<span>제목</span>
			<input type="text" class="form-control mb-3" name="name">
			<span>주소</span>
			<input type="text" class="form-control mb-3" name="url">
			
			<button type="submit" class="btn btn-success w-100" id="addBtn">추가</button>
		</form>
	</div>
	
	<script>
		$(document).ready(function() {
			$('#addBtn').on('click', function(e) {
				e.preventDefault();
				
				var name = $('input[name=name]').val();
				if (name == '') {
					alert("제목을 입력해주세요.");
					return;
				}
				
				var url = $('input[name=url]').val();
				if (url == '') {
					alert("주소를 입력해주세요.");
					return;
				} else if (url.indexOf("http") == -1) {
					alert("http 또는 https 프로토콜까지 입력해주세요.");
					return;
				}
				
				$.ajax({
					type: "POST"
					, url: "/lesson06/quiz01_2"
					, data: {"name":name, "url":url}
					, success: function() {
						alert("추가 완료");
						location.href = "/lesson06/bookmark_list"
					}
				});
			});
		});
	</script>
</body>
</html>