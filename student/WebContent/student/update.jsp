<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"%>
<%@ page  import="com.javakc.student.vo.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
    <%StudentModel sm = (StudentModel)request.getAttribute("sm"); %>
	<form action="/student//ind" method="post">   
	<input type="hidden" name="id" value="<%=sm.getId()%>">
	<input type="hidden" name="kc" value="update">
   <table >
   		<tr>
   			<td>姓名</td><td><input type="text"  name="name" value="<%=sm.getName()%>"> </td>
   		</tr>
   		<tr>
   			<td>年龄</td><td><input type="text" value="<%=sm.getAge()%>" name="age"> </td>
   		</tr>
   		<tr>
   			<td>性别</td>
   			<td>
   				<select name="sex">
   				<%if("1".equals(sm.getSex())){ %>
   					<option value="1" selected="selected">男</option>
   					<option value="2">女</option>
   				<%} else{%>
   				<option value="1" >男</option>
   					<option value="2" selected="selected">女</option>
   					<%} %>
   				</select>
   			</td>
   		</tr>
   		<tr align="center"><td colspan="2"><input type="submit" value="修改"></td></tr>
   </table></form>
</body>
</html>