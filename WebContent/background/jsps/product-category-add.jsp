<%@ page import="com.software.service.BuildingAreaService" %>
<%@ page import="com.software.service.BuildingTypeService" %>
<%@ page import="com.software.service.ProductStageService" %>
<%@ page import="com.software.service.BuildingStyleService"  %>
<%@ page import="com.software.domain.BuildingType" import="java.util.*" %>
<%@ page import="com.software.domain.BuildingStyle"  %>
 <%String path = request.getContextPath(); %>
     <%String basePath = path+"/background"; %>
<html>
<head>
<meta charset="utf-8">
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>jQuery UI Tabs - Default functionality</title>
  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script src="<%=basePath %>/js/jquery-1.9.1.min.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <script>
  $( function() {
    $( "#tabs" ).tabs();
  } );
  </script>
<title>添加产品分类</title>
</head>
<body>
<div id="tabs" style="margin-top:6px;  margin-left:6px; " width="200px">
  <ul>
    <li><a href="#tabs-1">添加子类</a></li>
    <li><a href="#tabs-2">删除子类</a></li>
    <li><a href="#tabs-3">修改子类</a></li>
  </ul>
  <div id="tabs-1">
   <form onsubmit="return SubmitCheck()" action="<%=request.getContextPath() %>/CategoryServlet" method="post" class="form form-horizontal" id="form-user-add">
   <input type="hidden" name="action" value="add">
  <div align="center">
			 <div class="Operate_cont clearfix">
			 <div class="formControls col-2"><span class="select-box">
			分类名称：
				<select class="select" name="Category">
					<option value="1" selected="selected">建筑风格</option>
					<option value="2">户型</option>
				</select>
				</span></div>
			</div><br><br><br><br>
			子类名称：<input type="text" name="name" id="name"><span id="namee"> </span>
			<br><br>
			<input class="btn btn-primary radius"  type="submit" value="提交">
    </div>
    </form>
  </div>
  <div id="tabs-2">
  		<form action="<%=request.getContextPath() %>/CategoryServlet" method="post" class="form form-horizontal" id="form-user-add">
   <input type="hidden" name="action" value="del">
  <div align="center">
			 <div class="Operate_cont clearfix">
			 <div class="formControls col-2"><span class="select-box">
			分类名称：
				<select class="select" name="Category" id="first" onChange="change()">
					<option value="1">建筑风格</option>
					<option value="2">户型</option>
				</select>
				</span></div>
			</div><br><br><br><br>
			子类名称：<select class="select" id="second" name="sonCategory">
				<%  BuildingTypeService buildingTypeService = new BuildingTypeService();%>
				<%  BuildingStyleService buildingStyleService = new BuildingStyleService();%>
				<%  ArrayList<BuildingType> types = (ArrayList) request.getAttribute("types"); %>
				<%  ArrayList<BuildingStyle> style = (ArrayList) request.getAttribute("style"); %>
				<% for(int i = 0 ;i<style.size() ;i++){ 
					BuildingStyle buildingStyle1 = style.get(i);	%>
				     	<option value="<%=buildingStyle1.getProduct_build_style_id()%>"><%=buildingStyle1.getProduct_build_style()%></option>
				<%} %>
					
				</select>
			<br><br>
			<input class="btn btn-primary radius" onclick="return checkup()" type="submit" value="删除">
    </div>
    </form>
  </div>
  <div id="tabs-3">
  		<form onsubmit="return SubmitCheck2()" action="<%=request.getContextPath() %>/CategoryServlet" method="post" class="form form-horizontal" id="form-user-add">
   <input type="hidden" name="action" value="update">
  <div align="center">
			 <div class="Operate_cont clearfix">
			 <div class="formControls col-2"><span class="select-box">
			分类名称：
				<select class="select" name="Category" id="first2" onChange="change2()">
					<option value="1">建筑风格</option>
					<option value="2">户型</option>
				</select>
				</span></div>
			</div><br><br><br><br>
			子类名称：<select class="select" id="second2" name="sonCategory">
				<% for(int i = 0 ;i<style.size() ;i++){ 
					BuildingStyle buildingStyle1 = style.get(i);	%>
				     	<option value="<%=buildingStyle1.getProduct_build_style_id()%>"><%=buildingStyle1.getProduct_build_style()%></option>
				<%} %>
					
				</select>
			<br><br>
			修改为：<input type="text" name="newname" id="newname" ><span id="newnamee"> </span><br><br>
			<input class="btn btn-primary radius" type="submit"  value="修改">
    </div>
    </form>
  </div>
</div>
<script type="text/javascript">
function change()
{
   var x = document.getElementById("first");
   var y = document.getElementById("second");
   y.options.length = 0; // 清除second下拉框的所有内容
   if(x.selectedIndex == 0)
   {
	   <%  for(int i = 0 ;i<style.size() ;i++){ 
		   BuildingStyle buildingStyle = style.get(i);%>
		y.options.add(new Option("<%=buildingStyle.getProduct_build_style()%>", "<%=buildingStyle.getProduct_build_style_id()%>"));
		<%} %>
   }
 
   if(x.selectedIndex == 1)
   {
	   <%  for(int i = 0 ;i<types.size() ;i++){ 
	       BuildingType buildingType = types.get(i);                     %>
		y.options.add(new Option("<%=buildingType.getProduct_house_type()%>", "<%=buildingType.getProduct_house_type_id()%>"));
		<%} %>
   }
 
}
function change2()
{
   var x = document.getElementById("first2");
   var y = document.getElementById("second2");
   y.options.length = 0; // 清除second下拉框的所有内容
   if(x.selectedIndex == 0)
   {
	   <%  for(int i = 0 ;i<style.size() ;i++){ 
		   BuildingStyle buildingStyle = style.get(i);%>
		y.options.add(new Option("<%=buildingStyle.getProduct_build_style()%>", "<%=buildingStyle.getProduct_build_style_id()%>"));
		<%} %>
   }
 
   if(x.selectedIndex == 1)
   {
	   <%  for(int i = 0 ;i<types.size() ;i++){ 
	       BuildingType buildingType = types.get(i);                     %>
		y.options.add(new Option("<%=buildingType.getProduct_house_type()%>", "<%=buildingType.getProduct_house_type_id()%>"));
		<%} %>
   }
 
}
function SubmitCheck(){
	var name = document.getElementById("name").value;
	if (name.length <= 0) 
    {
        document.getElementById("namee").innerHTML = " <font color=red>请输入子类名称!</font> ";
		return false;
    }
	return true;
}
function SubmitCheck2(){
	var name = document.getElementById("newname").value;
	if (name.length <= 0) 
    {
        document.getElementById("newnamee").innerHTML = " <font color=red>请输入修改后的子类名称!</font> ";
		return false;
    }
	return true;
}
function checkup(){
		if(window.confirm("确定要删除此子类吗？")){
			return true;
		}else{
			return false;
		}
}
</script>
</body>
</html>