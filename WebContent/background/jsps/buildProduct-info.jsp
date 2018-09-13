<%@ page import="com.software.service.BuildingAreaService" %>
<%@ page import="com.software.service.BuildingTypeService" %>
<%@ page import="com.software.domain.BuildingStyle"  %>
<%@ page import="com.software.service.BuildingStyleService"  %>
<%@ page import="com.software.service.ProductStageService" %>
<%@ page import="com.software.domain.BuildingType" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import = "com.software.domain.Products"  import = "java.util.*"%>
     <%String path = request.getContextPath(); %>
     <%String basePath = path+"/background"; %>
<html>
<head>
<meta charset="utf-8">
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<meta http-equiv="Cache-Control" content="no-siteapp" />
<script type="text/javascript" src="<%=basePath %>/js/html5.js"></script>
<script type="text/javascript" src="<%=basePath %>/js/respond.min.js"></script>
<script type="text/javascript" src="<%=basePath %>/js/PIE_IE678.js"></script>
<link href="<%=basePath %>/assets/css/bootstrap.min.css" rel="stylesheet" />
<link rel="stylesheet" href="<%=basePath %>/css/style.css"/>       
<link href="<%=basePath %>/assets/css/codemirror.css" rel="stylesheet">
<link rel="stylesheet" href="<%=basePath %>/assets/css/ace.min.css" />
      <link rel="stylesheet" href="<%=basePath %>/Widget/zTree/css/zTreeStyle/zTreeStyle.css" type="text/css">
<link rel="stylesheet" href="<%=basePath %>/assets/css/font-awesome.min.css" />
<link href="<%=basePath %>/Widget/icheck/icheck.css" rel="stylesheet" type="text/css" />
<link href="<%=basePath %>/Widget/webuploader/0.1.5/webuploader.css" rel="stylesheet" type="text/css" />

<title>在建工地详情</title>
</head>
<body>
<% Products product = (Products)request.getAttribute("product"); %>
<div class="clearfix" id="add_picture" >
   <div class="page_right_style" >
   <div class="type_title">在建工地详情</div>
	<form method="post" onsubmit="return SubmitCheck()" action="<%=request.getContextPath() %>/addBuildProductsServlet?" enctype="multipart/form-data" class="form form-horizontal" id="form-article-add"> 
		<div class="clearfix cl">
		<input type="hidden" name="id" value="<%=product.getProduct_id()%>">
         <label class="form-label col-2"><span class="c-red">*</span>产品名称：</label>
		 <div class="formControls col-10"><input type="text" onblur="nameValidate()" size="125" value="<%=product.getProduct_name() %>" placeholder="" id="name" name="name"> </div>
		</div>
		<div class=" clearfix cl">
         <label class="form-label col-2">产品介绍：</label>
	     <div class="formControls col-10"><textarea onblur="infoValidate()"  size="125"  placeholder="" id="info" name="info"><%=product.getProduct_info()%></textarea><span id="infoo"> </span></div>
		</div>
		<div class=" clearfix cl">
			
			<!--建筑面积-->
			 <div class="Add_p_s">
             <label class="form-label col-2" >建筑面积：</label>	
			 <div class="formControls col-2"><span class="select-box">
				<select class="select" name="area" >
				<% if(product.getProduct_area_id()==1) { %>  <option value="1">100平米以下</option>	 <option value="2">101-200平米</option>	<option value="3">201-300平米</option>					<option value="4">300平米以上</option>                    <% }%>
				<% if(product.getProduct_area_id()==2) { %>  <option value="2">101-200平米</option>  <option value="1">100平米以下</option>  <option value="3">201-300平米</option>					<option value="4">300平米以上</option>                    <% }%>
				<% if(product.getProduct_area_id()==3) { %>  <option value="3">201-300平米</option>  <option value="1">100平米以下</option>    <option value="2">101-200平米</option> 					<option value="4">300平米以上</option>                    <% }%>
				<% if(product.getProduct_area_id()==4) { %>  <option value="4">300平米以上</option>  <option value="1">100平米以下</option>	 <option value="2">101-200平米</option>	       <option value="3">201-300平米</option> 					                   <% }%>
				</select>
				</span></div>
			</div>
			
			<!--户型-->
			 <div class="Add_p_s">
             <label class="form-label col-2" >户型：</label>	
			 <div class="formControls col-2"><span class="select-box">
				<select class="select" name="type" >
				
				<%   BuildingTypeService buildingTypeService = new BuildingTypeService();%>
				<%  ArrayList<BuildingType> types = (ArrayList) request.getAttribute("types"); %>
				<%int i = 1; %>
				<%  for( i = 0 ;i<types.size() ;i++){  BuildingType buildingType = types.get(i);       %>
				     <%if(product.getProduct_house_type_id()==buildingType.getProduct_house_type_id()){ %>
				     	<option value="<%=buildingType.getProduct_house_type_id()%>"><%=buildingType.getProduct_house_type()%></option>
				     <%} %>
				<%} %>
				<% for( i = 0 ;i<types.size() ;i++){ BuildingType buildingType = types.get(i);  %>
				 <%if(product.getProduct_house_type_id()!=buildingType.getProduct_house_type_id()){ %>
				     	<option value="<%=buildingType.getProduct_house_type_id()%>"><%=buildingType.getProduct_house_type()%></option>
				     <%} %>
				<%} %>
				</select>
				</span></div>
			</div>
			
			<!--户型-->
			 <div class="Add_p_s">
             <label class="form-label col-2" >建筑风格：</label>	
			 <div class="formControls col-2"><span class="select-box">
				<select class="select" name="style" >
				<%  BuildingStyleService buildingStyleService = new BuildingStyleService();%>
				<%  ArrayList<BuildingStyle> style = (ArrayList)buildingStyleService.returnAllBuildingStyle(); %>
				<% for( i = 0 ;i<style.size() ;i++){ 
					BuildingStyle buildingStyle1 = style.get(i);	%>
					 <%if(product.getProduct_build_style_id()==buildingStyle1.getProduct_build_style_id()){ %>
							<option value="<%=buildingStyle1.getProduct_build_style_id()%>"><%=buildingStyle1.getProduct_build_style() %></option>
						 <%} %>
				<%} %>
				<% for(int j = 0 ;j<style.size() ;j++){  BuildingStyle buildingStyle1 = style.get(j); %>
					 <%if(product.getProduct_build_style_id()!=buildingStyle1.getProduct_build_style_id()){ %>
							<option value="<%=buildingStyle1.getProduct_build_style_id()%>"><%=buildingStyle1.getProduct_build_style()%></option>
						 <%} %>
					<%} %> 
				
				</select>
				</span></div>
			</div>
			
			<!--建筑阶段-->
			 <div class="Add_p_s">
             <label class="form-label col-2"  >&nbsp;&nbsp;&nbsp;建筑阶段：</label>	
			 <div class="formControls col-2"><span class="select-box">
				<select class="select" name="stage">
				<% if(product.getProduct_stage_id()==1) {%>   
  					<option value="1">开工大吉</option>
					<option value="2">墙体打拆</option>
					<option value="3">砌墙阶段</option>
					<option value="4">水电阶段</option>
					<option value="5">泥工阶段</option>
					<option value="6">木工阶段</option>
					<option value="7">油漆阶段</option>
					<option value="8">安装阶段</option>
					<option value="9">完工</option>
				 <%} %>
				 <% if(product.getProduct_stage_id()==2) {%>   
					<option value="2">墙体打拆</option>
					<option value="1">开工大吉</option>
					<option value="3">砌墙阶段</option>
					<option value="4">水电阶段</option>
					<option value="5">泥工阶段</option>
					<option value="6">木工阶段</option>
					<option value="7">油漆阶段</option>
					<option value="8">安装阶段</option>
					<option value="9">完工</option>
				 <%} %>
				 <% if(product.getProduct_stage_id()==3) {%>   
  					<option value="3">砌墙阶段</option>
  					<option value="1">开工大吉</option>
					<option value="2">墙体打拆</option>
					<option value="4">水电阶段</option>
					<option value="5">泥工阶段</option>
					<option value="6">木工阶段</option>
					<option value="7">油漆阶段</option>
					<option value="8">安装阶段</option>
					<option value="9">完工</option>
				 <%} %>
				 <% if(product.getProduct_stage_id()==4) {%>   
					<option value="4">水电阶段</option>
  					<option value="1">开工大吉</option>
					<option value="2">墙体打拆</option>
					<option value="3">砌墙阶段</option>
					<option value="5">泥工阶段</option>
					<option value="6">木工阶段</option>
					<option value="7">油漆阶段</option>
					<option value="8">安装阶段</option>
					<option value="9">完工</option>
				 <%} %>
				 <% if(product.getProduct_stage_id()==5) {%>   
					<option value="5">泥工阶段</option>
  					<option value="1">开工大吉</option>
					<option value="2">墙体打拆</option>
					<option value="3">砌墙阶段</option>
					<option value="4">水电阶段</option>
					<option value="6">木工阶段</option>
					<option value="7">油漆阶段</option>
					<option value="8">安装阶段</option>
					<option value="9">完工</option>
				 <%} %>
				 <% if(product.getProduct_stage_id()==6) {%>   
					<option value="6">木工阶段</option>
  					<option value="1">开工大吉</option>
					<option value="2">墙体打拆</option>
					<option value="3">砌墙阶段</option>
					<option value="4">水电阶段</option>
					<option value="5">泥工阶段</option>
					<option value="7">油漆阶段</option>
					<option value="8">安装阶段</option>
					<option value="9">完工</option>
				 <%} %>
				 <% if(product.getProduct_stage_id()==7) {%>   
					<option value="7">油漆阶段</option>
  					<option value="1">开工大吉</option>
					<option value="2">墙体打拆</option>
					<option value="3">砌墙阶段</option>
					<option value="4">水电阶段</option>
					<option value="5">泥工阶段</option>
					<option value="6">木工阶段</option>
					<option value="8">安装阶段</option>
					<option value="9">完工</option>
				 <%} %>
				 <% if(product.getProduct_stage_id()==8) {%>   
					<option value="8">安装阶段</option>
  					<option value="1">开工大吉</option>
					<option value="2">墙体打拆</option>
					<option value="3">砌墙阶段</option>
					<option value="4">水电阶段</option>
					<option value="5">泥工阶段</option>
					<option value="6">木工阶段</option>
					<option value="7">油漆阶段</option>
					<option value="9">完工</option>
				 <%} %>
				</select>
				</span></div>
			</div>
			
			<div class="Add_p_s">
            <label class="form-label col-2">所在城市：</label>
			<div class="formControls col-2"><input type="text" onblur="cityValidate()" class="input-text" value="<%=product.getProduct_city() %>" placeholder="" id="city" name="city"><span id="cityy"> </span></div>
            </div>
      <br />
      <div class="clearfix cl">
			   <div align="left" style="padding-left: 30px;"><br><br><br><br><br>图片：</div>
			   <img style="padding-left: 80px;" width="400px" height="250px" src="<%=path%>/foreground/img/<%=product.getProduct_picture_path()%>">
			 <div align="center" style="margin:auto auto auto 110px"  >
							<input  type="file" name="image"> 
						</div>
			
		</div>
		<div class="clearfix cl">
			<div class="Button_operation">
				<button onClick="article_save_submit();"   class="btn btn-primary radius" type="submit"><i class="icon-save "></i>保存并提交</button>
				<button onClick="layer_close();" class="btn btn-default radius" type="button">&nbsp;&nbsp;取消&nbsp;&nbsp;</button>       
			</div>
		</div>
	</form>
    </div>
</div>
</div>
<script src="<%=basePath %>/js/jquery-1.9.1.min.js"></script>   
<script src="<%=basePath %>/assets/js/bootstrap.min.js"></script>
<script src="<%=basePath %>/assets/js/typeahead-bs2.min.js"></script>
<script src="<%=basePath %>/assets/layer/layer.js" type="text/javascript" ></script>
<script src="<%=basePath %>/assets/laydate/laydate.js" type="text/javascript"></script>
<script type="text/javascript" src="<%=basePath %>/Widget/My97DatePicker/WdatePicker.js"></script> 
<script type="text/javascript" src="<%=basePath %>/Widget/icheck/jquery.icheck.min.js"></script> 
<script type="text/javascript" src="<%=basePath %>/Widget/zTree/js/jquery.ztree.all-3.5.min.js"></script> 
<script type="text/javascript" src="<%=basePath %>/Widget/Validform/5.3.2/Validform.min.js"></script> 
<script type="text/javascript" src="<%=basePath %>/Widget/webuploader/0.1.5/webuploader.min.js"></script>
<script type="text/javascript" src="<%=basePath %>/Widget/ueditor/1.4.3/ueditor.config.js"></script>
<script type="text/javascript" src="<%=basePath %>/Widget/ueditor/1.4.3/ueditor.all.min.js"> </script>
<script type="text/javascript" src="<%=basePath %>/Widget/ueditor/1.4.3/lang/zh-cn/zh-cn.js"></script> 
<script src="<%=basePath %>/js/lrtk.js" type="text/javascript" ></script>
<script type="text/javascript" src="<%=basePath %>/js/H-ui.js"></script> 
<script type="text/javascript" src="<%=basePath %>/js/H-ui.admin.js"></script> 
<script type="text/javascript">
	function nameValidate() {
		var name = document.getElementById("name").value;
		if (name.length <= 0) 
        {
            document.getElementById("namee").innerHTML = " <font color=red>请输入产品名称!</font> ";
			return false;
        }
		return true;
	}
	function infoValidate() {
		var info = document.getElementById("info").value;
		if (info.length <= 0) 
        {
            document.getElementById("infoo").innerHTML = " <font color=red>请输入产品介绍!</font> ";
			return false;
        }
		return true;
	}
	function cityValidate() {
		var city = document.getElementById("city").value;
		if (city.length <= 0) 
        {
            document.getElementById("cityy").innerHTML = " <font color=red>请输入所在城市!</font> ";
			return false;
        }
		return true;
	}
	function SubmitCheck() {
		var flag = true;
		 if(!nameValidate()) flag = false;
		if(!infoValidate()) flag = false;
		if(!cityValidate()) flag = false;
		return flag;
	}
</script>
</body>
</html>