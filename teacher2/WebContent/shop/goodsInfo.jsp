<%@page import="com.software.domain.Goods"%>
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
Goods goods = (Goods)request.getAttribute("goods");
%>
<form action="<%=path %>/ShopServlet?act=addGoods" method="post">
<input type="hidden" name="goodsId" value="<%=goods.getId()%>">
<input type="hidden" name="goodsName" value="<%=goods.getName()%>">
<table width="500" border="1" rules="rows" cellspacing="0" cellpadding="0">
	<tr height="50"><td>名称：<%=goods.getName() %></td></tr>
	<tr height="50"><td>价格（元/斤）:<%=goods.getPrice() %></td></tr>
	<tr height="50"><td>库存数量:<%=goods.getNum() %></td></tr>
	<tr height="50" ><td>购买数量：<input type="text" name="buyNum" value="1"></td></tr>
	<tr height="50" ><td><input type="submit" name="submit" value="加入购物车"></td></tr>

</table>
</form>
</body>
</html>