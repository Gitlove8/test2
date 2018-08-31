<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import = "java.util.*" import="com.domain.Goods"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>商品信息</title>
</head>
<body>
	<div style="background-color: ; width: 90%; height: 50px; text-align: right; word-spacing: 8px; font-size: 20px;"><a href="login.jsp" >登录</a></div>
		<div style="text-align: center;">
			<table border="1" cellspacing="10" cellpadding="50" align="center">
				<tr><th colspan="5"><h1>产品展示</h1></th></tr>
				<tr> <%
					Map<String,Goods> map = (HashMap)session.getAttribute("map");
				for(String s:map.keySet()){
				%>
					<td>
						<div id=""> 
							<a href="./ShopServlet?id=<%=map.get(s).getId()%>&action=look" ><%=map.get(s).getName()%></a>
						</div>
					</td>
					
				<%}%></tr>
			</table> 
		</div>
</body>
</html>