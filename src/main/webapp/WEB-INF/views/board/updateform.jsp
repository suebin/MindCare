<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="resources/css/main.css">
<title>게시글 수정</title>
<link href="https://fonts.googleapis.com/css?family=Gugi:400" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic:400" rel="stylesheet">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Gowun+Dodum&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Gugi:400" rel="stylesheet">
<script src="resources/js/jquery-3.6.0.min.js"></script>
</head>
<body>
    <div class="container">
        <!-- navbar include -->
      	<%@include file="../include/navbar.jsp" %>
        
		<!-- 본문 -->
       <div class="update-box">
            <form action="boardupdate" method="post"
                style="display :flex; align-items :center  ;flex-direction:column; width : 100%; height : 100%;">
                <input type=hidden name="seq" value=${updated_board.seq } readonly="readonly">
                <input type="text" name="title" placeholder="제목" style="margin : 1%; width : 60%; height : 6%;">
                <textarea type="text" name="contents" placeholder="내용" style="margin : 1%; width : 60%; height : 70%;"></textarea>
                <input type="submit" class="update-button" value="확인">
            </form>
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