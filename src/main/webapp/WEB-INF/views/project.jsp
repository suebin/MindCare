<%@page import="common.StringUtil"%>
<%@page import="org.apache.ibatis.session.SqlSession"%>
<%@page import="com.mysql.cj.Session"%>
<%@page import="com.mysql.cj.util.StringUtils"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="resources/js/jquery-3.6.0.min.js"></script>
<link rel="stylesheet" href="${path}/resources/css/main.css">
<title>main</title>
<link href="https://fonts.googleapis.com/css?family=Gugi:400"
	rel="stylesheet">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Gowun+Dodum&display=swap"
	rel="stylesheet">
</head>
<body>

	<div class="container">
		<!-- navbar include -->
		<%@include file="include/navbar.jsp"%>

		<!-- 본문 -->
		<div class="content-box">
			<div style="position: relative">
				<a href="depressiontest">
					<div class="overlay-box"
						style="position: absolute; border: none; width: 110%; height: 110%; top: -4%; left: -3%;">
						<p class="text">나의 우울은 무슨 구름일까?</p>
						<p class="overlay"></p>
					</div> <img src="${path}/resources/images/depression.jpg"
					style="width: 101%; height: 102%;">
				</a>
			</div>
			<div style="position: relative">
				<a href="stresstest">
					<div class="overlay-box"
						style="position: absolute; border: none; width: 110%; height: 110%; top: -4%; left: -3%;">
						<p class="text">
							나의 스트레스 지수는<br>어떤 엽떡 단계일까?
						</p>
						<p class="overlay"></p>
					</div> <img src="${path}/resources/images/stress.jpg"
					style="width: 101%; height: 102%;">
				</a>
			</div>
			<div style="position: relative">
				<a href="relationshiptest">
					<div class="overlay-box"
						style="position: absolute; border: none; width: 110%; height: 110%; top: -4%; left: -3%;">
						<p class="text">나의 대인관계는 어떤 우주일까?</p>
						<p class="overlay"></p>
					</div> <img src="${path}/resources/images/relation.jpg"
					style="width: 101%; height: 102%;">
				</a>
			</div>
			<div style="position: relative">
				<a href="boardstart">
					<div class="overlay-box"
						style="position: absolute; border: none; width: 110%; height: 110%; top: -4%; left: -3%;">
						<p class="text">커뮤니티</p>
						<p class="overlay"></p>
					</div> <img src="${path}/resources/images/community.jpg"
					style="width: 101%; height: 102%;">
				</a>
			</div>
		</div>
		<div class="button-form">
			<button class="button-first"></button>
			<button class="button-end"></button>
		</div>

		<footer class="main-footer">
			<p>
				<br> 
				<span>🚩 Location : South Korea</span><br> 
				<span>💌E-mail : suuebin@gmail.com</span><br> 
				<span>Copyright 2022.MindCare All rights reserved</span><br> 
				<span id="img_right">Image by pikisuperstar on Freepik</span>
			</p>
		</footer>

	</div>

	<script>
		document.querySelector('.menu-dig').addEventListener(
				'mouseover',
				function() {
					document.querySelector('.nav-bar-submenu').classList
							.remove('close');
				})
		document.querySelector('.nav-bar-submenu').addEventListener(
				'mouseover',
				function() {
					document.querySelector('.nav-bar-submenu').classList
							.remove('close');
				})
		document.querySelector('.nav-bar-submenu').addEventListener(
				'mouseout',
				function() {
					document.querySelector('.nav-bar-submenu').classList
							.add('close');
				})
		document
				.querySelector('.button-first')
				.addEventListener(
						'click',
						function() {
							document.querySelector('.content-box').style.transform = 'translateX( 0%)'
						})
		document
				.querySelector('.button-end')
				.addEventListener(
						'click',
						function() {
							document.querySelector('.content-box').style.transform = 'translateX( -20%)'
						})
	</script>

</body>
</html>