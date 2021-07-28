<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quiz05_2</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>
	<div class="container">
		<h2>날씨 입력</h2>
		
		<form method="post" action="/lesson05/addWeatherhistory">
			<div class="d-flex justify-content-around">
				<div class="d-flex col-2">
					<span>날짜</span>
					<input type="date" class="form-control" name="date">
				</div>
				
				<div class="d-flex col-3">
					<span>날씨</span>
					<input type="text" class="form-control" name="weather">
				</div>
				
				<div class="d-flex col-2">
					<span>미세먼지</span>
					<select class="form-control" name="microDust">
						<option>좋음</option>
						<option>보통</option>
						<option>나쁨</option>
						<option>최악</option>
					</select>
				</div>
			</div>
			<div class="d-flex justify-content-around">
				<div class="d-flex col-3">
					<span class="mr-2">기온</span>
					<input type="text" class="form-control" name="temperatures">
					<div class="input-group-text">℃</div>
				</div>
				
				<div class="d-flex col-3">
					<span>강수량</span>
					<input type="text" class="form-control" name="precipitation">
					<div class="input-group-text">mm</div>
				</div>
				
				<div class="d-flex col-3">
					<span>풍속</span>
					<input type="text" class="form-control col-2" name="windSpeed">
					<div class="input-group-text">km/h</div>
				</div>
			</div>
			<div class="d-flex justify-content-end">
				<button type="submit" class="btn btn-success">저장</button>
			</div>
		</form>
	</div>
</body>
</html>