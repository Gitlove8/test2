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
   <!-- 数据的展示 -->
   <table>
   		<tr>
   			<th>编号</th>
   			<th>姓名</th>
   			<th>年龄</th>
   			<th>性别</th>
   			<th>操作</th>
   		</tr>
   		<%
   			List list = (List)request.getAttribute("list");
   		
   		if(list==null||list.size()==0){
   			%>
   	   		<%
   		}else{
   			for(int i = 0;i<list.size();i++){
   				StudentModel sm =  (StudentModel)list.get(i);
   		%>
   		<tr>
   			<td><%=sm.getId()%></td>
   			<td><%=sm.getName()%></td>
   			<td><%=sm.getAge()%></td>
   			<td><%="1".equals(sm.getSex())?"男":"女"%></td>
   			<td>
   				<a href="/student//ind?kc=toupdate&id=<%=sm.getId()%>">修改</a> 
   				<a href="/student//ind?kc=delete&id=<%=sm.getId()%>">删除</a> 
   			</td>
   		</tr>
   		<%
   		}}
   		%>
   </table>
   <a href="student/create.jsp">add</a>
</body>
</html>