<%@page import="com.software.domain.ShopCar"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%String path = request.getContextPath(); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body> 
<%
List<ShopCar> shopCarList = (List<ShopCar>)request.getAttribute("shopCarList");
%>

<table width="500" border="1" rules="rows" cellspacing="0" cellpadding="0">
	<tr height="50" bgcolor="lightgrey"><td>名称</td><td>购买数量</td><td>操作</td></tr>
	<%
	for(ShopCar shopCar : shopCarList) {
	%>
	<tr height="50" ><td><%=shopCar.getGoodsName() %></td>
	<td><%=shopCar.getBuyNum() %></td>
	<td><a href="<%=path%>/ShopServlet?act=deleteGoods&id=<%=shopCar.getId()%>">删除</a></td></tr>
	<%} %>
</table>
<a href="<%=path%>/ShopServlet">继续购物</a>
<a href="<%=path%>/ShopServlet?act=clear">清空购物车</a>
</body>
</html>