<%@page import="java.text.DecimalFormat"%>
<%@page import="dto.Product"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="productDAO" class="dao.ProductDAO"></jsp:useBean>    
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.css" />
<script type="text/javascript" src="./resources/js/product.js"></script>
<meta charset="UTF-8">
<title>상품 상세 정보</title>
</head>
<body>
	<jsp:include page="menu.jsp"></jsp:include>
	
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">상품 정보</h1>
		</div>
	</div>
	<% 
		String id = request.getParameter("id");
		Product product = productDAO.getProduct(id);
		//int price = product.getUnitPrice();
		DecimalFormat df = new DecimalFormat("###,###");
	%>
	<div class="container">
		<div class="row">
			<div class="col-md-6">
				<h3><%= product.getPname() %></h3>
				<p><%= product.getDescription() %>
				<p><b>상품 코드 : </b><span class="badge badge-danger"><%= product.getProductId() %></span>
				<p><b>제조사</b> : <%= product.getManufacturer() %>
				<p><b>분류</b> : <%= product.getCategory() %>
				<p><b>재고 수</b> : <%= product.getUnitsInStock() %>
				<h4><%= product.getUnitPrice() %> 원</h4>
				<p> <form name="addForm" action="./addCart.jsp?id=<%=product.getProductId()%>" method="post">
						<a href="#" class="btn btn-info" onclick="addToCart()"> 상품 주문 &raquo;</a>
						<a href="./cart.jsp" class="btn btn-warning"> 장바구니 &raquo;</a> 
						<a href="./products.jsp" class="btn btn-secondary"> 상품 목록 &raquo;</a>
					</form>
			</div>
			<div class="col-md-6 al">
				<img alt="" width="400" height="400" src="<%= product.getFilename() %>">
			</div>
		</div>
		<hr>
	</div>
	
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>