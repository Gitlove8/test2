<%@ page contentType="text/html;charset=UTF-8" import="com.software.domain.Passage" language="java" %>
   <%  
String path = request.getContextPath();  
String basePath = path+"/background/";  
%> 
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta http-equiv="Cache-Control" content="no-siteapp" />
 <link href="<%=basePath%>assets/css/bootstrap.min.css" rel="stylesheet" />
        <link rel="stylesheet" href="<%=basePath%>css/style.css"/>       
        <link href="<%=basePath%>assets/css/codemirror.css" rel="stylesheet">
        <link rel="stylesheet" href="<%=basePath%>assets/css/ace.min.css" />
        <link rel="stylesheet" href="<%=basePath%>font/css/font-awesome.min.css" />
        <!--[if lte IE 8]>
		  <link rel="stylesheet" href="assets/css/ace-ie.min.css" />
		<![endif]-->
		<script src="<%=basePath%>js/jquery-1.9.1.min.js"></script>
        <script src="<%=basePath%>assets/js/bootstrap.min.js"></script>
		<script src="<%=basePath%>assets/js/typeahead-bs2.min.js"></script>  
        <script src="<%=basePath%>js/lrtk.js" type="text/javascript" ></script>	         	
		<script src="<%=basePath%>assets/js/jquery.dataTables.min.js"></script>
		<script src="<%=basePath%>assets/js/jquery.dataTables.bootstrap.js"></script>
        <script src="<%=basePath%>assets/layer/layer.js" type="text/javascript" ></script>          
        <script src="<%=basePath%>assets/laydate/laydate.js" type="text/javascript"></script>
        <script src="<%=basePath%>js/H-ui.js" type="text/javascript"></script>
        <script src="<%=basePath%>js/displayPart.js" type="text/javascript"></script>
      
<title>文章管理</title>
</head>

<body>
<div class="clearfix">
 <div class="article_style" id="article_style">
          <div id="scrollsidebar" class="left_Treeview">
    <div class="show_btn" id="rightArrow"><span></span></div>
    <div class="widget-box side_content" >
    <div class="side_title"><a title="隐藏" class="close_btn"><span></span></a></div>
     <div class="side_list">
      <div class="widget-header header-color-green2">
          <h4 class="lighter smaller">所属文章类</h4>
      </div>
      <div class="widget-body">
         <ul class="b_P_Sort_list">
             <li><i class="orange  fa fa-list "></i><a  href="<%=request.getContextPath() %>/PassageServlet?action=find_all_passage">全部(7)</a></li>
             <li><i class="fa fa-newspaper-o pink "></i> <a  href="<%=request.getContextPath() %>/PassageServlet?action=find_stepinto_qingkun">企业文化</a></li>
             <li> <i class="fa fa-newspaper-o pink "></i> <a  href="<%=request.getContextPath() %>/PassageServlet?action=find_quaility_enginerring" >品质工程</a> </li>
             <li> <i class="fa fa-newspaper-o pink "></i> <a  href="<%=request.getContextPath() %>/PassageServlet?action=find_worry_free_service">无忧服务</a></li>
         </ul>
  </div>
  </div>
  </div>  
  </div>
 <!--文章列表-->
 <div class="Ads_list">
     <div class="">
       <table class="table table-striped table-bordered table-hover" id="sample-table">
       <thead>
		 <tr>
				<th width="80px">标题</th>
				<th width="50px">发布时间</th>
				<th width="22px">所属栏目</th>
				<th width="150px">操作</th>
			</tr>
		</thead><tbody>
		 <%Passage passage = (Passage)request.getAttribute("passage");
		   String method = (String)request.getAttribute("method");
		 %>
   <%--  <%=passage.getMaterial_overview()%> --%>
    <%if(method.equals("all")){
    	%>
    	
    	 <tr>
          <td><a href="<%=request.getContextPath() %>/PassageServlet?action=look_group_overview">企业概况</a></td>
          <td width="30">2018-9-3 11:45：40</td>
          <td>走进晴坤</td>
          <td class="td-manage">
          	 <a href="<%=request.getContextPath() %>/PassageServlet?action=update_group_overview" id="news_update" class="btn btn-warning">修改</a>
          </td>
         </tr>
         
         <tr>
           <td><a href="<%=request.getContextPath() %>/PassageServlet?action=look_brand_introduction">品牌介绍</td>
          <td>2018-9-2 9:20：10</td>
          <td>走进晴坤</td>
          <td class="td-manage">
          	 <a href="<%=request.getContextPath() %>/PassageServlet?action=update_brand_introduction" id="news_update" class="btn btn-warning">修改</a>
          </td>
         </tr>
         
         <tr>
          <td><a href="<%=request.getContextPath() %>/PassageServlet?action=look_project_advantages">项目优势</a></td>
          <td>2018-8-31 8:30：50</td>
          <td>走进晴坤</td>
          <td class="td-manage">
          	 <a href="<%=request.getContextPath() %>/PassageServlet?action=update_project_advantages" id="news_update" class="btn btn-warning">修改</a>
          </td>
         </tr>
         
         <tr>
          <td><a href="<%=request.getContextPath() %>/PassageServlet?action=look_material_overview">材料概述</a></td>
          <td>2018-8-29 16:28：16</td>
          <td>品质工程</td>
          <td class="td-manage">
          	  <a href="<%=request.getContextPath() %>/PassageServlet?action=update_material_overview" id="news_update" class="btn btn-warning">修改</a>
          </td>
         </tr>
         
         <tr>
         <td><a href="<%=request.getContextPath() %>/PassageServlet?action=look_process_patent">工艺专利</a></td>
          <td>2018-9-1 11:30：36</td>
          <td>品质工程</td>
          <td class="td-manage">
          	<a href="<%=request.getContextPath() %>/PassageServlet?action=update_process_patent" id="news_update" class="btn btn-warning">修改</a>
          </td>
         </tr>
         
         <tr>
         <td><a href="<%=request.getContextPath() %>/PassageServlet?action=look_service_guarantee">服务流程</a></td>
          <td>2018-9-3 11:45：40</td>
          <td>无忧服务</td>
          <td class="td-manage">
          	<a href="<%=request.getContextPath() %>/PassageServlet?action=update_service_guarantee" id="news_update" class="btn btn-warning">修改</a>
          </td>
         </tr>
         
         <tr>
          <td><a href="<%=request.getContextPath() %>/PassageServlet?action=look_service_process">服务保障</a></td>
          <td>2018-9-5 11:58：28</td>
          <td>无忧服务</td>
          <td class="td-manage">
          	 <a href="<%=request.getContextPath() %>/PassageServlet?action=update_service_process" id="news_update" class="btn btn-warning">修改</a>
          </td>
         </tr>
    	
    <% } %>
        
        <%if(method.equals("steptinto_qingkun")){
    	%>
    	
    	 <td><a href="<%=request.getContextPath() %>/PassageServlet?action=look_group_overview">企业概况</a></td>
          <td width="30">2018-9-3 11:45：40</td>
          <td>走进晴坤</td>
          <td class="td-manage">
          	 <a href="<%=request.getContextPath() %>/PassageServlet?action=update_group_overview" id="news_update" class="btn btn-warning">修改</a>
          </td>
         </tr>
         
         <tr>
           <td><a href="<%=request.getContextPath() %>/PassageServlet?action=look_brand_introduction">品牌介绍</td>
          <td>2018-9-2 9:20：10</td>
          <td>走进晴坤</td>
          <td class="td-manage">
          	 <a href="<%=request.getContextPath() %>/PassageServlet?action=update_brand_introduction" id="news_update" class="btn btn-warning">修改</a>
          </td>
         </tr>
         
         <tr>
          <td><a href="<%=request.getContextPath() %>/PassageServlet?action=look_project_advantages">项目优势</a></td>
          <td>2018-8-31 8:30：50</td>
          <td>走进晴坤</td>
          <td class="td-manage">
          	 <a href="<%=request.getContextPath() %>/PassageServlet?action=update_project_advantages" id="news_update" class="btn btn-warning">修改</a>
          </td>
         </tr>
    <% } %>
    
     <%if(method.equals("quaility_enginerring")){
    	%>
    	
    	  
        <tr>
          <td><a href="<%=request.getContextPath() %>/PassageServlet?action=look_material_overview">材料概述</a></td>
          <td>2018-8-29 16:28：16</td>
          <td>品质工程</td>
          <td class="td-manage">
          	  <a href="<%=request.getContextPath() %>/PassageServlet?action=update_material_overview" id="news_update" class="btn btn-warning">修改</a>
          </td>
         </tr>
         
         <tr>
         <td><a href="<%=request.getContextPath() %>/PassageServlet?action=look_process_patent">工艺专利</a></td>
          <td>2018-9-1 11:30：36</td>
          <td>品质工程</td>
          <td class="td-manage">
          	<a href="<%=request.getContextPath() %>/PassageServlet?action=update_process_patent" id="news_update" class="btn btn-warning">修改</a>
          </td>
         </tr>
    <% } %>
    
    
     <%if(method.equals("free_service")){
    	%>
    	
    	<tr>
         <td><a href="<%=request.getContextPath() %>/PassageServlet?action=look_service_guarantee">服务流程</a></td>
          <td>2018-9-3 11:45：40</td>
          <td>无忧服务</td>
          <td class="td-manage">
          	<a href="<%=request.getContextPath() %>/PassageServlet?action=update_service_guarantee" id="news_update" class="btn btn-warning">修改</a>
          </td>
         </tr>
         
         <tr>
          <td><a href="<%=request.getContextPath() %>/PassageServlet?action=look_service_process">服务保障</a></td>
          <td>2018-9-5 11:58：28</td>
          <td>无忧服务</td>
          <td class="td-manage">
          	 <a href="<%=request.getContextPath() %>/PassageServlet?action=update_service_process" id="news_update" class="btn btn-warning">修改</a>
          </td>
         </tr>
        
    <% } %>
        
       </tbody>
       </table>    
     </div>
 </div>
 </div>
</div>
</body>
</html>
<script>
$(function () {  
        $(".displayPart").displayPart();  
   });
 //面包屑返回值
var index = parent.layer.getFrameIndex(window.name);
parent.layer.iframeAuto(index);
$('#add_page').on('click', function(){
	var cname = $(this).attr("title");
	var chref = $(this).attr("href");
	var cnames = parent.$('.Current_page').jsp();
	var herf = parent.$("#iframe").attr("src");
    parent.$('#parentIframe').jsp(cname);
    parent.$('#iframe').attr("src",chref).ready();;
	parent.$('#parentIframe').css("display","inline-block");
	parent.$('.Current_page').attr({"name":herf,"href":"javascript:void(0)"}).css({"color":"#4c8fbd","cursor":"pointer"});
	//parent.$('.Current_page').jsp("<a href='javascript:void(0)' name="+herf+" class='iframeurl'>" + cnames + "</a>");
    parent.layer.close(index);
	
}); 
$(function() {
		var oTable1 = $('#sample-table').dataTable( {
		"aaSorting": [[ 1, "desc" ]],//默认第几个排序
		"bStateSave": true,//状态保存
		"aoColumnDefs": [
		  //{"bVisible": false, "aTargets": [ 3 ]} //控制列的隐藏显示
		  {"orderable":false,"aTargets":[0,2,3,4,5,7,]}// 制定列不参与排序
		] } );
				$('table th input:checkbox').on('click' , function(){
					var that = this;
					$(this).closest('table').find('tr > td:first-child input:checkbox')
					.each(function(){
						this.checked = that.checked;
						$(this).closest('tr').toggleClass('selected');
					});
						
				});
})

 $(function() { 
	$("#article_style").fix({
		float : 'left',
		//minStatue : true,
		skin : 'green',	
		durationTime :false,
		stylewidth:'220',
		spacingw:30,//设置隐藏时的距离
	    spacingh:250,//设置显示时间距
		set_scrollsidebar:'.Ads_style',
		table_menu:'.Ads_list'
	});
});
//初始化宽度、高度  
 $(".widget-box").height($(window).height()); 
 $(".Ads_list").width($(window).width()-220);
  //当文档窗口发生改变时 触发  
    $(window).resize(function(){
	$(".widget-box").height($(window).height());
	 $(".Ads_list").width($(window).width()-220);
});

/*文章-删除*/
function member_del(obj,id){
	layer.confirm('确认要删除吗？',{icon:0,},function(index){
		$(obj).parents("tr").remove();
		layer.msg('已删除!',{icon:1,time:1000});
	});
}

</script>
