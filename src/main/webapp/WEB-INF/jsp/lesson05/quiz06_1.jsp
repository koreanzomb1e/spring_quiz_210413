<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quiz06_1</title>
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
			<div class="display-4 mt-3 mb-3">우리동네 가게</div>
			
			<c:forEach var="store" items="${stores}">
			<div class="border border-info rounded mb-2 p-3">
				<h3><a href="/lesson05/quiz06_2?storeId=${store.id}&storeName=${store.name}">${store.name}</a></h3>
				<h5>${store.phoneNumber}</h5>
				<h5>${store.address}</h5>
			</div>
			</c:forEach>
		</section>
		<hr>
		
		<footer>
			<h5>(주)우와한 형제들</h5>
			<span class="text-secondary pb-3">고객센터 : 1500-1500</span>
		</footer>
	</div>
</body>
</html>