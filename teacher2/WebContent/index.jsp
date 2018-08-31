<%@page import="java.util.List"%>
<%@page import="com.software.domain.Goods"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.software.domain.Users"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>    
<%String path = request.getContextPath(); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html> 
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function createXmlHttpRequest(){
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
	//处理返回信息的函数
	function processResponse() {
		if(httpReq.readyState==4){//4代表请求完成，信息返回
  	        if(httpReq.status==200){//信息成功返回，处理信息				
  	        	var goodsJson=eval(httpReq.responseText); 
  	        	 var lineNumber=goodsJson.length; 
  	        	var row; 
  	        	var col; 
  	        	if(lineNumber>0){ 
	  	        	for(var i=0;i<lineNumber;i++){ 
		  	        	row = table1.insertRow(table1.rows.length); 
		  	        	row.insertCell(0).innerHTML ="&nbsp;"+goodsJson[i].id; 
		  	        	row.insertCell(1).innerHTML ="&nbsp;"+goodsJson[i].name; 
		  	        	row.insertCell(2).innerHTML ="&nbsp;"+goodsJson[i].price; 
		  	        	row.insertCell(3).innerHTML ="&nbsp;"+goodsJson[i].num; 
		  	        	row.insertCell(4).innerHTML ="&nbsp;<a href='${path }/ShopServlet?act=displayOneGoods&id="+goodsJson[i].id+"'>详细</a>"; 
		  	        	row.setAttribute("align", "center"); 
	  	        	}
	  	        }  
            }
      	}

	}
		var url="<%=path%>/ShopServlet";
		//建立对服务器的调用
		httpReq.open("get",url,true);
		//状态改变的事件触发器,客户端的状态改变会触发readystatechange事件，调用相应的事件处理函数
		httpReq.onreadystatechange=processResponse;
		//发送数据
		httpReq.send(null);
</script>
</head>
<body>
<h1>首页<br><hr>
<%
Users user=(Users)session.getAttribute("user");
if (user!=null){ %>欢迎<%=user.getUsername()%>光临!<br><hr>
<%} %>
<a href="<%=path %>/user/login.jsp">登录</a> | 
<a href="<%=path %>/user/register.jsp">注册</a> | 
<a href="<%=path %>/user/userInfo.jsp">个人信息</a> | 
<a href="<%=path %>/UserServlet">退出登录</a><hr>
</h1><br>
所有商品：
<table id="table1" width="500" border="1" rules="rows" cellspacing="0" cellpadding="0">
	<tr height="50" bgcolor="lightgrey"><td>编号</td><td>名称</td><td>价格（元/斤）</td><td>库存数量</td><td>操作</td></tr>
</table>



</body>
</html>
