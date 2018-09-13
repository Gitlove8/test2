<%@ page import="com.software.service.BuildingAreaService" %>
<%@ page import="com.software.service.BuildingTypeService" %>
<%@ page import="com.software.service.ProductStageService" %>
<%@ page import="com.software.service.ProductsService" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import = "com.software.domain.Products"  import = "java.util.*"%>
     <%String path = request.getContextPath(); %>
     <%String basePath = path+"/background"; %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<meta http-equiv="Cache-Control" content="no-siteapp" /> 
        <link href="<%=basePath %>/assets/css/bootstrap.min.css" rel="stylesheet" />
        <link rel="stylesheet" href="<%=basePath %>/css/style.css"/>       
        <link rel="stylesheet" href="<%=basePath %>/assets/css/ace.min.css" />
        <link rel="stylesheet" href="<%=basePath %>/assets/css/font-awesome.min.css" />
        <link rel="stylesheet" href="<%=basePath %>/Widget/zTree/css/zTreeStyle/zTreeStyle.css" type="text/css">
        <link href="<%=basePath %>/Widget/icheck/icheck.css" rel="stylesheet" type="text/css" />   
        <script src="<%=basePath %>/js/jquery-1.5.1.js" ></script>
	    <script src="<%=basePath %>/js/jquery-1.9.1.min.js"></script>   
        <script src="<%=basePath %>/assets/js/bootstrap.min.js"></script>
        <script src="<%=basePath %>/assets/js/typeahead-bs2.min.js"></script>
		<script src="<%=basePath %>/assets/js/jquery.dataTables.min.js"></script>
		<script src="<%=basePath %>/assets/js/jquery.dataTables.bootstrap.js"></script>
        <%-- <script type="text/javascript" src="<%=basePath %>/js/H-ui.js"></script>  --%>
        <script type="text/javascript" src="<%=basePath %>/js/H-ui.admin.js"></script> 
        <script src="<%=basePath %>/assets/layer/layer.js" type="text/javascript" ></script>
        <script src="<%=basePath %>/assets/laydate/laydate.js" type="text/javascript"></script>
        <script type="text/javascript" src="<%=basePath %>/Widget/zTree/js/jquery.ztree.all-3.5.min.js"></script> 
        <script src="<%=basePath %>/js/lrtk.js" type="text/javascript" ></script>
      
<title>产品列表</title>
</head>
<body style="height: 100%">
<div class=" page-content clearfix">
 <div id="products_style">
    <div class="search_style">
     <form action="ProductsServlet?action=adminshowBuildingProductsByProductName" method="POST">
      <ul class="search_content clearfix">
       <li><label class="l_f">产品名称</label><input name="productName" type="text"  class="text_add" placeholder="输入品牌名称"  style=" width:250px"/></li>
       <li style="width:90px;"><button type="submit" onclick="search()"  class="btn_search"><i class="icon-search"></i>查询</button></li>
      </ul>
      </form>
    </div>
     <div class="border clearfix">
       <span class="l_f">
        <a href="<%=basePath %>/jsps/buildProduct-add.jsp" title="添加商品" class="btn btn-warning Order_form">添加商品</a>
        <!-- <a href="javascript:ovid()" onclick="delBatch()" class="btn btn-danger"><i class="icon-trash"></i>批量删除</a> -->
        <a  style="background-color: blue"  href="<%=request.getContextPath() %>/ProductsServlet?action=adminshowAllIsBuildingProducts" class="btn btn-danger"></i>显示全部</a>
       </span>
       <%List<Products> buildProducts = (ArrayList)request.getAttribute("productsList");  %>
       <span class="r_f">共：<b><%=buildProducts.size() %></b>件商品</span>
     </div>
         <div class="" id="testIframe">
       <table class="table table-striped table-bordered table-hover" id="table" >
		<thead>
		 <tr>
				<th width="25px"><label><input type="checkbox" onclick="selectAll()" name="selectAll" class="ace"><span class="lbl"></span></label></th>
				<th width="80px">编号</th>
				<th width="250px">产品名称</th>
				<th width="100px">图片</th>
                <th width="100px" >地区</th>				
				<th width="150px">发布时间</th>
				<th width="100px">户型</th>
				<th width="70px">建筑面积</th>  
                <th width="80px">阶段</th>
				<th width="150px">操作</th>
			</tr>
		</thead>
	<tbody>
	
	           <%BuildingAreaService bas = new BuildingAreaService();%>
			   <%BuildingTypeService bts = new BuildingTypeService();%>
			   <%ProductStageService pss = new ProductStageService(); %>
     <%for(int i = 0 ; i<buildProducts.size() ; i++) { %>
     <% Products p = buildProducts.get(i); %>
     <tr>
        <td width="25px"><label><input value="<%=p.getProduct_id() %>"  name="sid" name="checkboxBtn" onclick="check()" type="checkbox" class="ace" ><span class="lbl"></span></label></td>
        <td width="80px"><%=p.getProduct_id() %></td>               
        <td width="250px"><%=p.getProduct_name() %></td>
        <td width="100px"><img alt="" width="90px" height="90px" src="<%=path%>/foreground/img/<%=p.getProduct_picture_path()%>" /></td>
        <td width="100px"><%=p.getProduct_city()%></td> 
        <td width="100px"><%=p.getProduct_publish_time() %></td>         
        <td width="180px">
       <%if(p.getProduct_house_type_id()==0){%>
                                    待确定
       <%} else{%>
       <%=bts.getTheProductHouseTypeByHouseTypeID(p.getProduct_house_type_id()).getProduct_house_type()%>
                                        	<%} %>              
      </td>
        <td width="180px"><%=bas.getTheProductAreaByAreaID(p.getProduct_area_id()).getProduct_area()%></td>
        <td width="180px"><%=pss.getTheProductStageByStageID(p.getProduct_stage_id()).getProduct_stage()%></td>
        <td class="td-manage">
        <a title="编辑" onclick="showOne(<%=p.getProduct_id() %>)" href="javascript:;"  class="btn btn-xs btn-info" ><i class="icon-edit bigger-120"></i></a> 
       </td>
	  </tr>
	  <%} %>
    </tbody>
    </table>
    </div>     
  </div>
 </div>
</body>
</html>
<script type="text/javascript">

function selectAll() {
	var tbcheck = document.getElementsByName("sid");    
	var thcheck = document.getElementsByName("selectAll");
	if(thcheck[0].checked){
		for(var i=0;i<tbcheck.length;i++){
    		tbcheck[i].checked=true;
    	}	
	}else if(!thcheck[0].checked){
		for(var i=0;i<tbcheck.length;i++){
    		tbcheck[i].checked=false;
    	}	
	}
}
function check() {
	var tbcheck = document.getElementsByName("sid");
	var thcheck = document.getElementsByName("selectAll");
	var flag =0;
	for(var i=0;i<tbcheck.length;i++){
		if(tbcheck[i].checked){
			flag++;
		}
	}
	if(flag == tbcheck.length){
		thcheck[0].checked=true;
	}else{
		thcheck[0].checked=false;
	}
	
	
}
/*批量删除*/
function delBatch() {
	

	 layer.confirm('确认要删除吗？', {btn: ['确定','再想想'] },function(index)
			{
		 var tbcheck = document.getElementsByName("sid");
			
			var buildArray = new Array();
			for (var int = 0; int < tbcheck.length;int++ ) {
				var i = int+1;
				if(tbcheck[int].checked){
					buildArray.push(tbcheck[int].value);
				}
			} 
			location = "<%=request.getContextPath() %>/ProductsServlet?action=adminDelBatchBuildingProducts&buildArray="+buildArray; 

	   		}
	   ); 
	
	}

function showOne(id) {
	location = "<%=request.getContextPath() %>/ProductsServlet?action=adminshowOneBuildProduct&id="+id; 

 }
	
	/*产品-删除*/
	function member_del(obj,id) 
	{
		
	 	 layer.confirm('确认要删除吗？', {btn: ['确定','再想想'] },function(index)
				{
					/* $(obj).parents("tr").remove(); */
					layer.msg('已删除!',{icon:1,time:1000});
					location = "<%=request.getContextPath() %>/ProductsServlet?action=adminDelOneBuildingProducts&id="+id ;
		   		}
		  ); 
	}

</script>
