<%@page import="com.software.domain.Users"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%if (session.getAttribute("user")==null) {
	out.print("<h1>您未登录，不允许访问本页面！</h1>");
}else{
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>个人信息<br><hr>
用户名：<%=((Users)session.getAttribute("user")).getUsername() %>
</h1>
</body>
</html>
<%}%> 