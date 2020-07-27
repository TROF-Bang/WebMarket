<%@page import="java.util.ArrayList"%>
<%@page import="dto.Product"%>
<%@page import="test.ProductDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 등록 완료</title>
</head>
<body>
	<%
	ProductDAO dao = ProductDAO.getInstance();

	String id = request.getParameter("productId");
	String name = request.getParameter("name");
	int price = Integer.parseInt(request.getParameter("unitPrice"));
	String description = request.getParameter("description");
	String manufacturer = request.getParameter("manufacturer");
	String category = request.getParameter("category");
	long unitsInStock = Long.parseLong(request.getParameter("unitsInStock"));
	String condition = request.getParameter("condition");
	String img = request.getParameter("img");
	
	Product product = new Product();
	
	product.setProductId(id);
	product.setPname(name);
	product.setUnitPrice(price);
	product.setDescription(description);
	product.setManufacturer(manufacturer);
	product.setCategory(category);
	product.setUnitsInStock(unitsInStock);
	product.setCondition(condition);
	product.setFilename(img);

	dao.addProduct(product);
	
	response.sendRedirect("addProduct.jsp");
%>
</body>
</html>