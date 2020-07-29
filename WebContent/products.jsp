<%@page import="java.text.DecimalFormat"%>
<%@page import="dto.Product"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="productDAO" class="dao.ProductDAO"></jsp:useBean>  
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<link href="resources/css/img_hover.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="./resources/js/getimg.js"></script>
<meta charset="UTF-8">
<title>상품 목록</title>
</head>
<body>
	<jsp:include page="menu.jsp"></jsp:include>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">상품 목록</h1>
		</div>
	</div>
	<% 
		ArrayList<Product> listOfProducts = productDAO.getAllProducts();
		DecimalFormat df = new DecimalFormat("###,###");
	%>
	<div class="container">
		<div class="row" align="center">
			<% 
				for(int i = 0; i < listOfProducts.size(); i++) {
					Product product = listOfProducts.get(i);
					int price = product.getUnitPrice();
					String id = product.getProductId();
			%>
			<div class="col-md-4">
				<a>
				<img onclick="javascript:location.href='product.jsp?id=<%= id %>';" 
				alt="#" width="400" height="400"
				src="<%= product.getFilename() %>">
				<span class=""></span>
				</a>
				<h3><%= product.getPname() %></h3>
				<p><%= product.getDescription() %>
				<p><%= df.format(price) %> 원
				<p><a href="product.jsp?id=<%= id %>" 
				class="btn btn-secondary" role="button">상세 정보 &raquo;</a>
			</div>
			<% } %>
		</div>
		<hr>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>