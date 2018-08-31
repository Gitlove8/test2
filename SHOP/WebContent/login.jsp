<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
	html{   
    width: 100%;   
    height: 100%;   
    overflow: hidden;   
    font-style: sans-serif;   
}   
body{   
    width: 100%;   
    height: 100%;   
    font-family: 'Open Sans',sans-serif;   
    margin: 0;   
}   
#login{   
    position: absolute;   
    top: 50%;   
    left:50%;   
    margin: -150px 0 0 -150px;   
    width: 300px;   
    height: 300px;   
}   
#login h1{   
    color: #afa;   
    text-shadow:0 0 10px;   
    letter-spacing: 1px;   
    text-align: center;   
}   
h1{   
    font-size: 2em;   
    margin: 0.67em 0;   
}   
input{   
    width: 278px;   
    height: 18px;   
    margin-bottom: 10px;   
    outline: none;   
    padding: 10px;   
    font-size: 13px;   
    color: #fff;   
    text-shadow:1px 1px 1px;   
    border-top: 1px solid #312E3D;   
    border-left: 1px solid #312E3D;   
    border-right: 1px solid #312E3D;   
    border-bottom: 1px solid #56536A;   
    border-radius: 4px;   
    background-color: #2D2D3F;   
}   
.but{   
    width: 300px;   
    min-height: 20px;   
    display: block;   
    background-color: #4a77d4;   
    border: 1px solid #3762bc;   
    color: #fff;   
    padding: 9px 14px;   
    font-size: 15px;   
    line-height: normal;   
    border-radius: 5px;   
    margin: 0;   
}  
</style>
</head>
<body> 
		 <div id="login">  
        <h1>Login</h1>  
        <form name="ff" action="/SHOP/UserServlet" method="post"> 
        <input type="hidden" name="kc" value="login"> 
        <table width="1000px">
        	<tr>
        		<td><input type="text" id="txtName" required="required" placeholder="用户名" name="uname" onblur="nameCheck()"></td>
        		<td><span id="demo" style="color: chartreuse;"></span></td>
        	</tr>
        	<tr>
        		<td><input type="password" id="pass"  required="required" placeholder="密码" name="upwd" onblur="passwordCheck()"></input></td>
        		<td><span id="password" style="color: chartreuse;"></span> </td>
        	</tr>
        	<tr>
        		<td><button class="but" type="submit">登录</button></td>
        		<td> </td></tr>
        	<tr>
        		<td ><a href="register.jsp" >还没有账号？快去注册吧</a></td>
        		<td></td></tr>
        </table>
        </form>  
    </div> 
	<script type="text/javascript">
	function nameCheck() {

		reg = /^[0-9a-zA-Z]{6,10}$/;

		if(!reg.test(ff.txtName.value)) {

			document.getElementById("demo").innerHTML = " <font color=red>6-10数字或字母组成</font> ";
			return false;

		} else {
			document.getElementById("demo").innerHTML = " <font color='green'>ok</font>";
			return true;
		}

	}
	function passwordCheck() {

		reg = /^(\w){8,16}$/;

		if(!reg.test(ff.pass.value)) {

			document.getElementById("password").innerHTML = "  <font color=red>密码必须由8~16字母、数字、下划线 组成组成</font>";
			return false;

		} else {

			document.getElementById("password").innerHTML = "<font color='green'>ok</font>";
			return true;
		}

	}
	
	</script>
</body>
</html>