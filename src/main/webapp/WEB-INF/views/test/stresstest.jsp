<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- 이거 적용이 안 된다. -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>엽떡 맵기단계로 알아보는 나의 스트레스는 ?</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl"
	crossorigin="anonymous">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Gowun+Dodum&display=swap"
	rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Gugi:400" rel="stylesheet">
<link rel="stylesheet" href="resources/css/test/stress/default.css">
<link rel="stylesheet" href="resources/css/test/stress/main.css">
<link rel="stylesheet" href="resources/css/test/stress/qna.css">
<link rel="stylesheet" href="resources/css/test/stress/animation.css">
<link rel="stylesheet" href="resources/css/test/stress/result.css">
<script src="resources/js/jquery-3.6.0.min.js"></script>
<script>
	$(document).ready(function() {

	});
</script>
<style>
a {color:black; text-decoration: none; outline: none}
	a:hover, a:active {text-decoration: none; color:black; background-color:none;} 
</style>
</head>
<body>
	<div class="container">
		<section id="main" class="mx-auto my-5 py-5 px-3">
			<h2 style="font-family:'gugi'">엽떡 맵기단계로 알아보는 나의 스트레스는 ?</h2><br>
			<div class="col-lg-6 col-md-6 col-sm-6 col-12 mx-auto">
				<img src="resources/images/test/stress/stress.png" class="img-fluid">
			</div>
			<p><br>나의 스트레스에 대해 알아보는 시간입니다.</p>
				<button type="button" class="btn btn-outline-danger mt-3" onclick="js:begin()">시작하기</button>
		</section>

		<section id="qna">
			<div class="status mx-auto mt-5">
				<div class="statusBar"></div>
			</div>
			<div class="qBox my-5 py-3 mx-auto"></div>
			<div class="answerBox"></div>
		</section>

		<section id="result" class="mx-auto my-5 py-5 px-3">
			<h3>당신의 결과는 ?</h3>
			<div class ="resultname"></div>
			<div id="resultImg" class="my-3 col-lg-6 col-md-6 col-sm-6 col-12 mx-auto">
			
			</div>
			<div class="resultDesc">
			</div>
			<br>
			<button type="button" class="btn btn-light"><a href="main">홈페이지로 돌아가기</a></button>
		</section>


		<script src="resources/js/test/stress/data.js" charset="utf-8"></script>
		<script src="resources/js/test/stress/start.js" charset="utf-8"></script>
	</div>

</body>
</html>