<%@page import="common.StringUtil"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<% 
	String id2= StringUtil.nullToValue(session.getAttribute("id"), "");
	String password2= StringUtil.nullToValue(session.getAttribute("password"), "");
	String nickname2= StringUtil.nullToValue(session.getAttribute("nickname"), "");
	String email2= StringUtil.nullToValue(session.getAttribute("email"), "");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="resources/js/jquery-3.6.0.min.js"></script>
<link href="https://fonts.googleapis.com/css?family=Gugi:400" rel="stylesheet">
<link rel="stylesheet" href="${path}/resources/css/main.css">
<script>
	$(document).ready(function(){
		$("#logout-link").on("click", function(){
				alert("정상적으로 로그아웃 되었습니다");
		})//on
	});//ready
</script>
</head>
<body>
	<sub-menu-box></sub-menu-box>
	
	 <nav class="nav-bar">
            <header class="nav-bar-title">
                <span  class="title" style="font-family: 'gugi';"><a href="main">마음약국</a></span>
                <span ></span>
            </header>
            <div class="nav-bar-menu">
                <p style=" font-family: 'Gowun Dodum'" class="menu-dig">자가진단</p>
                <p style=" font-family: 'Gowun Dodum'" class="menu-community"><a href="boardstart">커뮤니티</a></p>
            </div>
<%if(id2.equals("") ){ %>
            <div class="nav-bar-loginform">
                <p style=" font-family: 'Gowun Dodum'" class="loginform-signin"><a href="login">로그인</a></p>
                <p style=" font-family: 'Gowun Dodum'" class="loginform-signup"><a href="register">회원가입</a></p>
            </div>
<%} else{%>
       		<div class="nav-bar-loginform">
                <p style=" font-family: 'Gowun Dodum'" class="loginform-signup"><a href="mypage">마이페이지</a></p>
                <p style=" font-family: 'Gowun Dodum'" class="loginform-signup"><a href="logout" id="logout-link">로그아웃</a></p>
            </div>
<%} %>  
            <nav class="nav-bar-submenu close">
                <div style="height : 20%;"></div>
                <div class="submenu-menu">
                    <p style=" font-family: 'Gowun Dodum'"><a href="depressiontest">우울증</a></p>
                    <p style=" font-family: 'Gowun Dodum'"><a href="stresstest">스트레스</a></p>
                    <p style=" font-family: 'Gowun Dodum'"><a href="relationshiptest">대인관계</a></p>
                </div>
            </nav>
        </nav>
        
   


</body>
</html>