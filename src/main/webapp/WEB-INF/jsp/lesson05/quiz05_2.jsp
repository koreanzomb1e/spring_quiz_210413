<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quiz05_2</title>
<!-- bootstrap -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>        
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

<!-- datepicker -->
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
</head>
<body>
	<div class="container d-flex">
		<nav class="col-2 mr-3">
			<div>
				<img src="https://blog.kakaocdn.net/dn/TxmeD/btqCKArBvPm/2tzfJfINwg0WWmCzC4jKW0/img.jpg" alt="기상청" width="150">
			</div>
			<ul class="nav flex-column mt-4">
					<li class="nav-item"><a href="/lesson05/quiz05_1" class="nav-link menu-font">날씨</a></li>
					<li class="nav-item"><a href="#" class="nav-link menu-font">날씨입력</a></li>
					<li class="nav-item"><a href="#" class="nav-link menu-font">테마날씨</a></li>
					<li class="nav-item"><a href="#" class="nav-link menu-font">관측</a></li>
			</ul>
		</nav>
		
		<section>
			<h2>날씨 입력</h2>
			
			<form method="post" action="/lesson05/addWeatherhistory">
				<div class="d-flex justify-content-between mt-5">
					<div class="d-flex align-items-center">
						<span class="input-label">날짜</span>
						<input type="text" class="form-control" id="date" name="date">
					</div>
					
					<div class="d-flex align-items-center">
						<span class="input-label">날씨</span>
						<input type="text" class="form-control" name="weather">
					</div>
					
					<div class="d-flex align-items-center">
						<span class="input-label">미세먼지</span>
						<select class="form-control" name="microDust">
							<option>좋음</option>
							<option>보통</option>
							<option>나쁨</option>
							<option>최악</option>
						</select>
					</div>
				</div>
				
				<div class="d-flex justify-content-between mt-5">
					<div class="d-flex align-items-center">
						<span class="input-label">기온</span>
						<div class="input-group">
							<input type="text" class="form-control" name="temperatures">
							<div class="input-group-append">
								<span class="input-group-text">℃</span>
							</div>
						</div>
					</div>
					
					<div class="d-flex align-items-center">
						<span class="input-label">강수량</span>
						<div class="input-group">
							<input type="text" class="form-control" name="precipitation">
							<div class="input-group-append">
								<span class="input-group-text">mm</span>
							</div>
						</div>
					</div>
					
					<div class="d-flex align-items-center">
						<span class="input-label">풍속</span>
						<div class="input-group">
							<input type="text" class="form-control col-2" name="windSpeed">
							<div class="input-group-append">
								<span class="input-group-text">km/h</span>
							</div>
						</div>
					</div>
				</div>
				
				<div class="d-flex justify-content-end">
					<button type="submit" class="btn btn-success">저장</button>
				</div>
			</form>
		</section>
	</div>
	
	<script>
		// datepicker
		$(document).ready(function() {
			
			$('#date').datepicker({
				changeMonth: true	// 월 선택 셀렉트
				,changeYear: true	// 년도 선택 셀렉트
				, dateFormat : "yy-mm-dd", // 표시 포맷
			});
		});
	</script>
</body>
</html>