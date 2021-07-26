<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL Quiz01</title>
</head>
<body>
	<!-- 1. JSTL core 변수
	두 개의 숫자 변수를 만들어서 각각 원하는 수를 저장하고, 아래와 같이 차례로 출력하세요. -->
	<h1>1. JSTL core 변수</h1>
	<c:set var="number1">36</c:set>
	<c:set var="number2">3</c:set>
	
	<h4>첫번째 숫자 : ${number1}</h4>
	<h4>첫번째 숫자 : ${number2}</h4>
	
	<!-- 2. JSTL core 연산
	위에서 만든 두개의 변수의 사칙 연산 결과를 아래와 같이 출력하세요. -->
	<h1>2. JSTL core 연산</h1>
	
	<h4>더하기 : ${number1 + number2}</h4>
	<h4>빼기 : ${number1 - number2}</h4>
	<h4>곱하기 : ${number1 * number2}</h4>
	<h4>나누기 : ${number1 / number2}</h4>
	
	<!-- 3. core out
	아래내용이 모두 화면에 출력이 되도록 core out을 통해서 출력하세요. -->
	<h1>3. JSTL core out</h1>
	
	<c:out value="<title>core out</title>" escapeXml="true" />
	
	<!-- 4. core if
	1번 문제에서 사용한 두 변수의 평균이 10 이상이면 평균 값을 태그로 출력하고, 10 미만이면 태그로 출력하세요. -->
	<h1>4. JSTL core if</h1>
	<c:set var="avg" value="${(number1 + number2) / 2}"></c:set>
	
	<c:if test="${avg >= 10}">
		<h1>${avg}</h1>
	</c:if>
	<c:if test="${avg < 10}">
		${avg}
	</c:if>
	<!-- 5. core if
	1번 문제에서 사용한 두변수의 곱의 결과가 100 이 넘는다면 너무 큰 수입니다. 를 core out 을 통해서 alert창으로 출력하세요. -->
	<c:set var="result">${number1 * number2}</c:set>
	
	<c:if test="${result > 100 }">
		<c:out value="<script>alert('너무 큰 수 입니다.')</script>" escapeXml="false" />
	</c:if>
</body>
</html>