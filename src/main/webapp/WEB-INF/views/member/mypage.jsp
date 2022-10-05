<%@page import="common.StringUtil"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<% 
		String id = (String)session.getAttribute("id");
		String nickname = (String)session.getAttribute("nickname");
		String email = (String)session.getAttribute("email");
		if (id == null){
			response.sendRedirect("main");
		}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지</title>
<link href="https://fonts.googleapis.com/css?family=Gugi:400" rel="stylesheet">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<script src="resources/js/jquery-3.6.0.min.js"></script>
<link rel="stylesheet" href="${path}/resources/css/main.css">
<script>
	$(document).ready(function(){
		//회원정보수정 취소버튼
		$("#update-cencle-btn").on("click", function(){
			location.href = "main";
			alert("정보수정을 취소하였습니다");
		})//on cencle
		
		//회원정보수정 submit
		$("#update-submit").on("click", function(){
			if($("#password").val()==""){
				alert("비밀번호를 입력해주세요.");
				$("#password").focus();
				return false;
			}
			if ($("#password").val().length < 4) {
		          alert("비밀번호는 4자 이상으로 설정해야 합니다");
		          $("#password").val("").focus();
		          return false;
		    }
			if($("#nickname").val()==""){
				alert("닉네임을 입력해주세요.");
				$("#nickname").focus();
				return false;
			}
			if($("#email").val()==""){
				alert("이메일을 입력해주세요.");
				$("#email").focus();
				return false;
			}
			alert("회원정보가 수정되었습니다 \n다시 로그인 후 이용해 주세요");
		})//on update
	});//ready
	
	//탈퇴 체크
	function resign(){
		if(confirm("정말 탈퇴하시겠습니까?") == true){
			$.ajax({
				url : "memberdelete",
				success(){
					location.href = "main";
					alert("정상적으로 탈퇴처리 되었습니다 \n이용해 주셔서 감사합니다");
				}
			})
		}
		else{
			return false;
		}	
	}//resign
	
	
</script>
</head>
<body>
  	<div class="container">
  		<!-- navbar include -->
        <%@include file="../include/navbar.jsp" %>
       
       <form class="myPage-form" action="memberupdate" method="post">
            <div>
                <p>My Page</p>
            </div>
            <div>
                <label for="id"><span>ID</span></label>
                <input style="margin-left:6.5%;" type="text" id="id" name="id" value="<%=id %>" readonly="readonly"/>
            </div>
            <div>
                <label for="password"><span>PW</span></label>
                <input style="margin-left:4.5%;" type="password" id="password" name="password" />
            </div>
            <div >
                <label for="nickname"><span>Name</span></label>
                <input type="text" id="nickname" name="nickname" value="<%=nickname %>"/>
            </div>
            <div >
                <label for="email"><span>E-mail</span></label>
                <input type="text" id="email" name="email" value="<%=email %>" readonly="readonly"/>
            </div>
            <div style="display:flex; align-items: center;">
                <button type="submit" id="update-submit">회원정보수정</button>
                <button type="button" id="update-cencle-btn" >취소</button>
                <button type="button" id="member-delete-btn" onclick="resign()">회원탈퇴</button>
            </div>
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