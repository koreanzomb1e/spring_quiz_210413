<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quiz06_2</title>
<!-- css -->
<link rel="stylesheet" type="text/css" href="/css/lesson05/quiz06_style.css">

<!-- bootstrap -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>        
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>
	<div id="wrap" class="container">
		<header class="d-flex align-items-center bg-info">
			<div class="brand text-white ml-3">배탈의 민족</div>
		</header>
		
		<section>
			<div class="display-4 mt-3 mb-3">배달삼겹 - 리뷰</div>
			
			<c:choose>
				<c:when test="${empty reviews}">
					<h1 class="m-5"><b>작성된 리뷰가 없습니다.</b></h1>
				</c:when>
				<c:otherwise>
					<c:forEach var="review" items="${reviews}">
					<div class="border border-info rounded mb-2 p-3">
						<h5><b>${review.userName}</b></h5>4
						<span class="text-secondary">
							<fmt:formatDate value="${review.updatedAt}" pattern="yyyy년 M월 d일" />
						</span><br>
						<h5>${review.review}</h5>
						<span class="menu border rounded"><small>${review.menu}</small></span>
					</div>
					</c:forEach>
				</c:otherwise>
			</c:choose>
		</section>
		<hr>
		
		<footer>
			<h5>(주)우와한 형제들</h5>
			<span class="text-secondary pb-3">고객센터 : 1500-1500</span>
		</footer>
	</div>
</body>
</html>