<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quiz01_2</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>        
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>
	<div class="container">
		<h1>즐겨찾기 목록</h1>
		
		<table class='table'>
			<thead>
				<tr>
					<th>No.</th>
					<th>이름</th>
					<th>주소</th>
					<th></th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="bookmark" items="${bookmarks}" varStatus="status">
				<tr>
					<td>${status.count}</td>
					<td>${bookmark.name}</td>
					<td>${bookmark.url}</td>
					<td>
						<a href="/lesson06/is_delete?id=${bookmark.id}" class="btn btn-danger">삭제</a>
						<!-- 방법1 name, value 사용 -->
						<%-- <button type="button" name="delBtn" class="btn btn-danger" value="${bookmark.id}">삭제</button> --%>
						
						<!-- 방법2 data를 이용해서 태그에 임시 저장 -->
						<button type="button" class="bookmark-btn btn btn-danger" data-bookmark-id="${bookmark.id}">삭제</button>
					</td>
				</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	
	<script>
		$(document).ready(function() {
			// 방법1
			/* $('td').on('click', 'button[name=delBtn]', function() {
				let id = $(this).attr('value');
			}); */
			
			// 방법2
			// 태그: data-변수명	data- 그 뒤엔 변수명을 정한다
			$('.bookmark-btn').on('click', function() {
				let bookmarkId = $(this).data('bookmark-id');
				
				$.ajax({
					type: 'post'
					, data: {'bookmark_id': bookmarkId}
					, url: '/lesson06/is_delete2'
					, success: function(data) {
						alert(data.success);
						location.reload();	// 새로고침
					}
					, error: function(e) {
						alert("error:" + e)
					}
				});
			});
		});
	</script>
</body>
</html>