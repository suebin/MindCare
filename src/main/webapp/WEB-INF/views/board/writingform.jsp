<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글쓰기</title>
<link href="https://fonts.googleapis.com/css?family=Gugi:400" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic:400" rel="stylesheet">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Gowun+Dodum&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Gugi:400" rel="stylesheet">
<script src="resources/js/jquery-3.6.0.min.js" ></script>
</head>
<body>
	<div class="container">
	<!-- navbar include -->
    <%@include file="../include/navbar.jsp" %>
      	  
	<!-- 본문 -->
	<div class="write-box">
		<form class="write-form" action="boardwrite" method=post>
			<div style="width : 100%; height: 5%; display: flex; justify-content:space-between; flex-wrap: wrap;">
				<input class="write-form-title" type=text name="title" placeholder="Title">
				<input type=text name="writer" placeholder="Writer" value="${sessionid }" readonly>
				<input type=password name="pw" placeholder="Password">				
			</div>
			<textarea rows=10 cols=100 name="contents" placeholder="내용을 입력하세요."></textarea>
			<input class="write-button" type=submit value="글쓰기">
		</form>
	</div>
	</div>
	<script>
        document.querySelector('.menu-dig').addEventListener('mouseover', function () {
            document.querySelector('.nav-bar-submenu').classList.remove('close');
        })
        document.querySelector('.nav-bar-submenu').addEventListener('mouseover', function () {
            document.querySelector('.nav-bar-submenu').classList.remove('close');
        })
        document.querySelector('.nav-bar-submenu').addEventListener('mouseout', function () {
            document.querySelector('.nav-bar-submenu').classList.add('close');
        })
        document.querySelector('.button-first').addEventListener('click', function () {
            document.querySelector('.content-box').style.transform = 'translateX( 0%)'
        })
        document.querySelector('.button-end').addEventListener('click', function () {
            document.querySelector('.content-box').style.transform = 'translateX( -20%)'
        })
    </script>
</body>
</html>