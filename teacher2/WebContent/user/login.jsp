<%@page import="java.net.URLEncoder"%>
<%@ page contentType="text/html; charset=utf-8" language="java"%>
<%String path = request.getContextPath(); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>用户登录</title>
</head>

<body>
<h1>
<form id="form1" name="form1" method="post" action="<%=path %>/UserServlet">
<input type="hidden" name="act" value="login"/>
  用户名：
  <input name="username" type="text" id="username" />
  <br />
  <br />
  密&nbsp;&nbsp;码：
  <input name="password" type="password" id="password" />
  <br />
  <font color="red"><%=request.getAttribute("error")==null?"":request.getAttribute("error")%></font><br />
  <input type="submit" name="submit" value="登录" />
  <input type="reset" name="reset" value="重置" />
</form>
</h1>
</body>
</html>
