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
		
		<span>제목</span>
		<input type="text" class="form-control mb-3" name="name">
		<span>주소</span>
		<div class="d-flex">
			<input type="text" id="url" class="form-control mb-3" name="url">
			<button type="button" id="checkBtn" class="btn btn-info mb-3">중복확인</button>
		</div>
		
		<div id="statusArea"></div>
		
		<button type="submit" id="addBtn" class="btn btn-success w-100">추가</button>
	</div>
	
	<script>
		$(document).ready(function() {
			$('#addBtn').on('click', function(e) {
				let name = $('input[name=name]').val();
				if (name == '') {
					alert("제목을 입력해주세요.");
					return;
				}
				
				let url = $('input[name=url]').val();
				if (url == '') {
					alert("주소를 입력해주세요.");
					return;
				} else if (url.indexOf("http") == -1) {
					alert("http 또는 https 프로토콜까지 입력해주세요.");
					return;
				}
				
				$.ajax({
					type: 'post'
					, url: '/lesson06/quiz01_2'
					, data: {'name':name, 'url':url}
					, dataType: 'json'	// response body	- AJAX 통신 후 response로는 String 또는 JSON이 리턴되어야 한다.
					, success: function(data) {
						alert(data.result);
						location.href = "/lesson06/bookmark_list";
					}
					, error: function(e) {
						alert("error" + e);
					}
				});
			});
			
			// 중복확인
			$('#checkBtn').on('click', function() {
				$('#statusArea').empty();
				
				let url = $('#url').val();

				$.ajax({
					type: 'post'
					, data: {'url': url}
					, url: '/lesson06/is_check'
					, success: function(data) {
						if (data.is_check == true) {
							$('#statusArea').append("<small class=\"text-danger\">중복된 url입니다.</small>")
						} else {
							$('#statusArea').append("<small class=\"text-success\">사용 가능한 url입니다.</small>")
						}
					}
					, error: function(e) {
						alert("error" + e);
					}
				});
			});
		});
	</script>
</body>
</html>