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
<title>회원가입</title>
<script src="resources/js/jquery-3.6.0.min.js"></script>
<link rel="stylesheet" href="${path}/resources/css/main.css">
<script>
	//공란 경고창
	$(document).ready(function(){
	   	 $("#signup-submit").on("click", function(){
		      if($("#id").val()==""){
		        alert("아이디를 입력해주세요");
		        $("#id").focus();
		        return false;
		      }
		      if($("#password").val()==""){
		        alert("비밀번호를 입력해주세요");
		        $("#password").focus();
		        return false;
		      }
		      if ($("#password").val().length < 4) {
		          alert("비밀번호는 4자 이상으로 설정해야 합니다");
		          $("#password").val("").focus();
		          return false;
		      }
		      if($("#nickname").val()==""){
		          alert("닉네임을 입력해주세요");
		          $("#nickname").focus();
		          return false;
		        }
		      if($("#email").val()==""){
		          alert("이메일을 입력해주세요");
		          $("#email").focus();
		          return false;
		        }
		      if(true) {
		    	  alert("회원가입이 정상적으로 처리되었습니다.\n로그인 후 이용해주세요");
		    	  return true;
		      }
	    })//on
  });//ready
  
	</script>
	<script>
  //아이디 중복 체크
  function idtest(){
		$.ajax({
			url : "idcheck",
			type : "get",
			dataType : "json",
			data : {"id" : $("#id").val()},
			success : function(data){
				if($("#id").val()==""){
					alert("아이디를 입력해주세요");
				}
				else{
					if(data == 1){
						alert("중복된 아이디입니다");
					}
					else{
						$("#idCheck-btn").attr("value", "Y");
						alert("사용가능한 아이디입니다");
					}
				}
			}//success
		})//ajax
	}//idtest
	
	//이메일 중복 체크
	function emailtest(){
		$.ajax({
			url : "emailcheck",
			type : "post",
			dataType : "json",
			data : {"email" : $("#email").val()},
			success : function(data){
				if($("#email").val()==""){
					alert("이메일를 입력해주세요");
				}
				else{
					if(data == 1){
						alert("중복된 이메일입니다");
					}
					else{
						$("#idCheck-btn").attr("value", "Y");
						alert("사용가능한 이메일입니다");
					}
				}
			}//success
		})//ajax
	}//emailtest
	
</script>
</head>
<body>
  <div class="container">
  		<!-- navbar include -->
      	<%@include file="../include/navbar.jsp" %>
     	
     	<!-- 본문 -->
		 <form class="signUp-form" method="post">
            <div>
                <p>Sign Up</p>
            </div>
            <div>
                <input type="text" id="id" name="id" placeholder="아이디">
                <!-- <button class="id-button" type="button" id="idCheck-btn" onclick="idtest()" value="N">중복확인</button> -->
            </div>
            <div>
                <input type="password" id="password" name="password" placeholder="비밀번호">
            </div>
            <div>
                <input type="text" id="nickname" name="nickname" placeholder="닉네임">
            </div>
            <div>
                <input type="email" id="email" name="email" placeholder="E-mail">
                <!-- <button class="email-button" type="button" id="emailCheck-btn" onclick="emailtest();"
                    value="N">중복확인</button> -->
            </div>
            <div>
                <input type=submit id="signUp-button" id="signup-submit" value="회원가입 ">
            </div>
        </form>

    </div>

</body>
</html>