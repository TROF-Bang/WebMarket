<%@page import="dao.BoardDAO"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<!-- 부트스트랩 프레임워크를 CDN방식으로 사용하겠다.(인터넷이 되는 곳에서만 허용) --> 
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<meta charset="UTF-8">
<title>웹 쇼핑몰</title>
<script type="text/javascript" src="./resources/js/time.js"></script>
</head>
<body onload="printClock()">
	<jsp:include page="menu.jsp"></jsp:include>
	<%! 
		String greeting = "쇼핑몰에 오신 것을 환영합니다.";
		String tagline = "Welcome to Web MarKet!";
	%>
	
	<div class="jumbotron">
		<div class="container">
			<h2 class="display-4"><%= greeting %></h2>
		</div>
	</div>
	
	<div class="container">
		<div class="text-center">
			<h3><%= tagline %></h3>
			
			<% 
				/* 현재 페이지를 자동 새로고침을 해주는 코드 */
				//response.setIntHeader("Refresh", 5);
				//Date day = new Date();
				//String am_pm;
				SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
				out.println("현재 접속 시간 : " + sdf.format(new Date()));
			%>
			<div id="clock"></div>
		</div>
		<hr/>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>