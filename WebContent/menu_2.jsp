<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!-- css적용 코드 -->
<!-- <link href="resources/css/products.css" rel="stylesheet" type="text/css"> -->
<% request.setCharacterEncoding("UTF-8"); %>
<!-- brackets나 subrimeText라는 Editor를 이용을 하면 가독성과 코드작성이 편리하다 -->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark"><!-- 네비게이션 바를 만든다. -->
	<div class="container"><!-- container라는 클래스 부터는 무엇인가 내용을 표식 -->
		
		<div class="navbar-header"><!-- 네비게이션 헤더 -->
			<a class="navbar-brand" href="./welcome.jsp">HOME</a>
		</div>
		
		<div id="navbar" class="navbar-collapse collapse">		
		<ul class="m-2 nav navbar-nav">
        	<li class="active"><a href="products.jsp">상품</a></li>
            <li><a href="<c:url value="/BoardListAction.do?pageNum=1"/>">게시판</a></li>                
            <li><a href="addProduct.jsp">상품 등록</a></li>                
        </ul>
		<ul class="nav navbar-nav navbar-right">                   
           <li><a href="/account/login" class="link-login"> <i class="glyphicon glyphicon-log-in"></i> 로그인</a></li>                              
        </ul>
		<%-- <div class="navbar-right">		
				<a class="nav-link" href="<c:url value="/BoardListAction.do?pageNum=1"/>">게시판</a>
		</div>
		<!-- 메뉴 오른쪽 구역 설정 -->
		<div class="navbar-right">
			<div class="navbar-right">		
				<a class="m-3 text-white" href="addProduct.jsp">상품 등록</a>
			</div>			
			<div class="navbar-right">					
				<a class="text-white" href="products.jsp">상품</a>
			</div>
		</div> --%>		
		</div>
		
	</div>	
</nav>