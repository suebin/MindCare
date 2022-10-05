<%@page import="member.MemberDTO"%>
<%@page import="common.StringUtil"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link href="https://fonts.googleapis.com/css2?family=Gowun+Dodum&display=swap" rel="stylesheet">
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<script src="resources/js/jquery-3.6.0.min.js"></script>
<link rel="stylesheet" href="${path}/resources/css/main.css">
<script>
	$(document).ready(function(){
		$("#login-submit").on("click", function(){
			var id = $("#id").val();
			var pw = $("#password").val();
			if(id =='' || pw == ''){
				alert("아이디와 비밀번호를 입력해주세요");
				$("#id").val('');
				$("#password").val('');
				return false;
			}	
			else{
				$.ajax({
					url : "logincheck",
					type : "get",
					dataType : "json",
					data : {"id" : $("#id").val(), "password":$("#password").val()},
					success : function(server){
						if(server.count == 1){
							alert("로그인에 성공했습니다"); 
							location.href="main";
						}
						else if(server.count == 0){
							 alert("입력된 계정이 없습니다 \n아이디와 비밀번호를 확인해주세요"); 
				    		 $("#id").val('');
				 			 $("#password").val('');
						}
					}//success
				})//ajax
			}//else
			
		})//on
	});//ready
	
</script>
</head>
<body>
	<div class="container">
		<!-- navbar include -->
      	<%@include file="../include/navbar.jsp" %>
        
        
        <!-- 본문 -->
        <%if(id2.equals("") ){ %>
         <div class="login-box">
            <form class="login-form" action="login" method="post" name="myform" id="myform">
                <p>Login</p>
                <input type="hidden" value="login">
                <input class="login-id" id="id" type="text" name="id"  placeholder="👨‍🦲 ID">
                <input class="login-pw" id="password" type="password" name="password" placeholder="비밀번호">
                <input class="login-button" id="login-submit" id="password" type="submit" value="log In" >
            </form>
        </div>
        <%} %>
        </div>
        
        
</body>



	

</html>