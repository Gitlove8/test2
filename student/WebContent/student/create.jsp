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
	<form action="/student//ind" method="post">   
	<input type="hidden" name="kc" value="create">
   <table >
   		<tr>
   			<td>姓名</td><td><input type="text" name="name"> </td>
   		</tr>
   		<tr>
   			<td>年龄</td><td><input type="text" name="age"> </td>
   		</tr>
   		<tr>
   			<td>性别</td>
   			<td>
   				<select name="sex">
   					<option value="1">男</option>
   					<option value="2">女</option>
   				
   				</select>
   			</td>
   		</tr>
   		<tr align="center"><td colspan="2"><input type="submit" value="添加"></td></tr>
   </table></form>
</body>
</html>