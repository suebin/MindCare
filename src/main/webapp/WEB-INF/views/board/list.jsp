<%@page import="common.StringUtil"%>
<%@page import="board.BoardDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<% 
	String id3= StringUtil.nullToValue(session.getAttribute("id"), "");
%>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="https://fonts.googleapis.com/css?family=Gugi:400" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic:400" rel="stylesheet">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Gowun+Dodum&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Gugi:400" rel="stylesheet">
<link rel="stylesheet" href="resources/css/main.css">
<title>커뮤니티</title>
<script src="resources/js/jquery-3.6.0.min.js" ></script>
<script>
	//검색 조건 설정
	$(document).ready(function(){
		$("#search_icon").on('click', function(){
			location.href = "boardContent";
	});
</script>

</head>
<body>
	<div class="container">
	<!-- navbar include -->
    <%@include file="../include/navbar.jsp" %>
      	  
	<!-- 본문 -->

	<div class="list-box">
            <h3 class="list-clean">
                <a href="boardlist" id="boardlist">전체</a>&nbsp;&nbsp;&nbsp;
                <a href="boardtitle" id="boardlist">제목</a>&nbsp;&nbsp;&nbsp;
                <a href="boardwriter" id="boardlist">작성자</a>
            </h3>


            <table class="list-table" border=3 width="45%" height="150px" id="tableboard">
                <tr class="list-nav">
                    <!-- <td style="width:15%;"></td> -->
                    <td style="width:70%; text-align: center; font-family: 'Gowun Dodum', sans-serif;
                    ">제목</td>
                    <td style="text-align: center; font-family: 'Gowun Dodum', sans-serif;
                    ">작성자</td>
                </tr>
                <c:forEach items="${boardlst }" var="board">
                    <tr class="list-list">
                        <!-- <td>${board.seq }</td> -->
                        <td style="padding-left : 3%;"><a href="boarddetail?seq=${board.seq }">${board.title }</a></td>
                        <td style="text-align: center;">${board.writer }</td>
                    </tr>
                </c:forEach>
            </table>
            </div>
            
            
            	<footer class="search-box" id="boardfooter">
                <form action="boardContent" class="search-form">
                    <select name="selectOption" id="selectOption">
                        <option>전체</option>
                        <option>제목</option>
                        <option>작성자</option>
                    </select>
                    <input class="search" style="margin-left:2%;" type="text" placeholder="🔍" name="boardsearch"
                        id="boardsearch">
                    <input class="search-button" type="submit" value="검색">
                 <button onclick="writeLink()"><a href="boardwrite">글쓰기</a></button>
                </form>
            </footer>
        	</div>
     
        
	
	
	<% 
		int totalcount = (Integer)request.getAttribute("totalboard");
		String url = (String)request.getAttribute("boardUrl");
		String selectedVal = (String)request.getAttribute("SelectedValue");
		String searchedVal = (String)request.getAttribute("SearchedValue");
		int totalpage = 0;
		if(totalcount % 3 == 0){
			totalpage = totalcount / 3;
		}
		else{
			totalpage = totalcount / 3 + 1;
		}
		for(int i = 1; i <=totalpage ; i++){
	%>
		<a href="<%=url %>?page=<%=i%>&selectOption=<%=selectedVal %>&boardsearch=<%=searchedVal %>" id="pagenumber"> <%=i %>  </a>
	<%} %>
		<script>
	        document.querySelector('.sub-menu1').addEventListener('click', function () {
	            document.querySelector('.sub-menu1-box').classList.toggle('close');
	
	        })   
		</script>
	
	
	<%
		List<BoardDTO> boardlist = (List<BoardDTO>)request.getAttribute("boardlst");
		for(int i = 0;i<boardlist.size();i++){
			BoardDTO dto = boardlist.get(i);
			Cookie kc = new Cookie("cookie"+dto.getSeq(),null);
			kc.setMaxAge(0);
			response.addCookie(kc);
		}
	%>

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

