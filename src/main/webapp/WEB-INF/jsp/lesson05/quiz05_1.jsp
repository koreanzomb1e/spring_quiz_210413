<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quiz05_1</title>
<!-- css -->
<link rel="stylesheet" type="text/css" href="/css/test_style.css">

<!-- bootstrap -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>
	<div class="container d-flex">
		<div class="col-2 mr-3">
			<div>
				<img src="https://blog.kakaocdn.net/dn/TxmeD/btqCKArBvPm/2tzfJfINwg0WWmCzC4jKW0/img.jpg" alt="기상청" width="150">
			</div>
			<nav>
				<ul>
					<li><a></a></li>
					<li><a></a></li>
					<li><a></a></li>
					<li><a></a></li>
				</ul>
			</nav>
		</div>
		<div class="col-10">
			<h2>과거 날씨</h2>
			
			<table class="table text-center">
				<thead>
					<tr>
						<th>날짜</th>
						<th>날씨</th>
						<th>기온</th>
						<th>강수량</th>
						<th>미세먼지</th>
						<th>풍속</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="weather" items="${result}">
					<tr>
						<td><fmt:formatDate value="${weather.date}" pattern="yyyy년 M월 d일" /></td>
						<td>
							<c:choose>
								<c:when test="${weather.weather eq '맑음'}">
									<img src="http://marondal.com/material/images/dulumary/web/jstl/sunny.jpg" alt="sunny">
								</c:when>
								<c:when test="${weather.weather eq '구름조금'}">
									<img src="http://marondal.com/material/images/dulumary/web/jstl/partlyCloudy.jpg" alt="partlyCloudy">
								</c:when>
								<c:when test="${weather.weather eq '흐림'}">
									<img src="http://marondal.com/material/images/dulumary/web/jstl/cloudy.jpg" alt="cloudy">
								</c:when>
								<c:otherwise>
									<img src="http://marondal.com/material/images/dulumary/web/jstl/rainy.jpg" alt="rainy">
								</c:otherwise>
							</c:choose>
						</td>
						<td>${weather.temperatures}℃</td>
						<td>${weather.precipitation}mm</td>
						<td>${weather.microDust}</td>
						<td>${weather.windSpeed}km/h</td>
					</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>