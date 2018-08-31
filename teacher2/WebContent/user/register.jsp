<%@page import="java.net.URLEncoder"%>
<%@ page contentType="text/html; charset=utf-8" language="java"%>
<%String path = request.getContextPath(); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>用户登录</title>
<script type="text/javascript">
function   createXmlHttpRequest(){
	   var httpReq ;
	   try{    //Firefox, Opera 8.0+, Safari…
	 		httpReq=new XMLHttpRequest();
	    }catch (e){
	            try{    //Internet Explorer
	 		      httpReq =new ActiveXObject("Msxml2.XMLHTTP");
	            }catch (e){
	                  try{
	 			 httpReq=new ActiveXObject("Microsoft.XMLHTTP");
	                  }catch (e){}  
	           }
	    }
	   return httpReq ; 
}

//初始化XmlHttpRequest对象
var httpReq = createXmlHttpRequest();	
function usernameValidate(){
	var username = document.form1.username.value;
	httpReq.open("post", "<%=path%>/UserServlet", "true");
	httpReq.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
	httpReq.onreadystatechange=processResponse;
	httpReq.send("act=validate&username="+username);

}
function   processResponse() {// 处理返回信息的函数
	if(httpReq.readyState==4){
		if(httpReq.status==200){
			document.getElementById("usernameInfo").innerHTML=httpReq.responseText;
		}
	}
}

</script>
</head>

<body>
<h1>
<form id="form1" name="form1" method="post" action="<%=path %>/UserServlet">
 <input type="hidden" name="act" value="register"/> 
  用户名：
  <input name="username" type="text" id="username" onblur="usernameValidate()"/>
  <font color="red" id="usernameInfo"></font><br/>
  密&nbsp;&nbsp;&nbsp;&nbsp;码：
  <input name="pwd" type="password" id="password" />
  <br />
  确认密码：
  <input name="pwdConfirm" type="password" id="pwdConfirm" />
  <br />
  <input type="submit" name="submit" value="注册" />
  <input type="reset" name="reset" value="重置" />
</form>
</h1>
</body>
</html>
