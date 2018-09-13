<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ page  import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="com.software.domain.BuildingType" %>
<%@ page import="com.software.domain.Products" %>
<%
    String path = request.getContextPath();
	String basePath = path+"/foreground/";
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>在建工地-廊坊晴坤装饰集团股份有限公司</title>
<meta name="keywords" content="星艺装饰,星艺装饰官网,装饰公司,装修公司,家庭装修,室内装修,豪华装修,别墅装修,装修效果图,装修设计,星艺,装修,装饰,整装,家装,工装" />
<meta name="description" content="星艺装饰创办于1991年，中国装饰装修行业十大品牌！全国400+分支机构，50000+专业人员，27年专注大中型住宅、酒店、办公空间等装修设计与施工服务。爱家专线：4009617001！星艺装饰每年为30000+家庭提供定制设计、环保施工、材料配送等高品质装修服务，深受百万家庭信赖！" />

<link rel="shortcut icon" href="images/favicon.ico">
<link href="<%=basePath%>css/style.css"  type="text/css" rel="stylesheet" />
<script type="text/javascript" src="<%=basePath%>js/jquery.js" ></script>
<script type="text/javascript" src="<%=basePath%>js/jquery.lazyload.min.js" ></script>
<script type="text/javascript" src="<%=basePath%>js/jquery.SuperSlide.2.1.1.js" ></script>
<script type="text/javascript" src="<%=basePath%>js/slick.min.js" ></script>
<script type="text/javascript" src="<%=basePath%>js/layer.js" ></script>
<script type="text/javascript" src="<%=basePath%>js/form_js.js" ></script>
<script type="text/javascript" src="<%=basePath%>js/js.js" ></script>
<script type="text/javascript" src="<%=basePath%>js/ajax.js" ></script>
<script type="text/javascript" charset="utf-8" src="<%=basePath%>js/10068539.js" ></script>


<title>在建工地</title>
</head>
<body onload="load();">
    
<div class="header">
    
    <div class="Menu">
        <div class="wrap clearfix">
            <div class="logo">
                <a href="Default.aspx.htm" >
                    <img alt="" class="lazyload" data-original="upload/1702/201702230818558672167.png" src="<%=basePath%>/img/201702230818558672167.png" tppabs="http://www.xydec.com.cn/upload/1702/201702230818558672167.png" /></a>
            </div>
            <div class="Nav">
                <ul class="clearfix">
                    <li><a href="<%=path%>/index.jsp" tppabs="http://www.xydec.com.cn/Default.aspx">首页</a></li>
                    
                    <li>
                        <a href="culture_group_overview.jsp" tppabs="http://www.xydec.com.cn/Detail.aspx?code=0601">走进晴坤</a>
                        
                         <div class="Drop_Down">
                            <div class="clearfix">
                                <ul>
                                    
                                    <li>
                                        <a href="<%=path%>/PassageServlet?action=find_culture_group_overview" >企业概况</a>
                                    </li>
                                    
                                    <li>
                                        <a href="<%=path%>/PassageServlet?action=find_culture_brand_introduction"  >品牌介绍</a>
                                    </li>
                                    
                                      <li>
                                        <a href="<%=path%>/PassageServlet?action=find_culture_project_advantages"  >项目优势</a>
                                    </li>
                                    
                                    
                                    
                                </ul>
                            </div>
                        </div>
                        
                    </li>
                    
                    <li>
                        <a href="<%=basePath%>jsps/news_center.jsp" tppabs="http://www.xydec.com.cn/Marketing.aspx?type=all">营销活动</a>
                        
                        <div class="Drop_Down">
                            <div class="clearfix">
                                <ul>
                                    
                                    <li>
                                        <a href="<%=basePath%>jsps/news_center.jsp" tppabs="http://www.xydec.com.cn/Marketing.aspx?kindcode=0101" >企业新闻</a>
                                    </li>
                                    
                                    <li>
                                        <a href="<%=basePath%>jsps/notice_center.jsp" tppabs="http://www.xydec.com.cn/Marketing.aspx?kindcode=0102" >最新公告</a>
                                    </li>
                                    
                                </ul>
                            </div>
                        </div>
                        
                    </li>
                    
                    
                    <li>
                        <a href="<%=basePath%>jsps/product_center.jsp" tppabs="http://www.xydec.com.cn/CaseList.aspx">产品中心</a>
                        
                        
                    </li>
                    
                   <li>
                        <a href="<%=path%>/PassageServlet?action=find_material_overview" tppabs="http://www.xydec.com.cn/SiteLive.aspx">品质工程</a>
                        
                        <div class="Drop_Down">
                            <div class="clearfix">
                                <ul>
                                    
                                    
                                    
                                    <li>
                                        <a href="<%=path%>/PassageServlet?action=find_material_overview" tppabs="http://www.xydec.com.cn/EngineeringDetail.aspx?code=0402" >材料概述</a>
                                    </li>
                                    
                                    <li>
                                        <a href="<%=basePath%>jsps/SiteLive.jsp" tppabs="http://www.xydec.com.cn/SiteLive.aspx" >在建工地</a>
                                    </li>
                                    
                                    <li>
                                        <a href="<%=path%>/PassageServlet?action=find_process_patent" tppabs="http://www.xydec.com.cn/Detail.aspx?code=0403" >工艺专利</a>
                                    </li>
                                    
                                </ul>
                            </div>
                        </div>
                        
                    </li>
                    
                    <li>
                        <a href="<%=path%>/PassageServlet?action=find_service_guarantee" tppabs="http://www.xydec.com.cn/NewList.aspx?code=0704">无忧服务</a>
                        
                        <div class="Drop_Down">
                            <div class="clearfix">
                                <ul>
                                    
                                    <li>
                                        <a href="<%=basePath%>jsps/service_process.jsp" tppabs="http://www.xydec.com.cn/NewList.aspx?code=0704" >留言吧</a>
                                    </li>
                                    
                                    
                                    
                                    <li>
                                        <a href="<%=path%>/PassageServlet?action=find_service_guarantee" tppabs="http://www.xydec.com.cn/Detail.aspx?code=0705" >服务流程</a>
                                    </li>
                                    
                                    <li>
                                        <a href="<%=path%>/PassageServlet?action=find_service_process" tppabs="http://www.xydec.com.cn/Detail.aspx?code=0706" >服务保障</a>
                                    </li>
                                    
                                </ul>
                            </div>
                        </div>
                        
                    </li>
                    
                </ul>
            </div>
            
        </div>
    </div>

</div>
    <!--投诉建议-->


    
    <div class="article">
        <div class="sub-banner">
            <div class="bd">
                <ul>
                    
                    <li style="background-image: url(<%=basePath%>img/201704071409483809340.jpg);"><a target="_blank" tppabs="http://www.xydec.com.cn/Detail.aspx?code=0603"></a></li>
                    
                    <li style="background-image: url(<%=basePath%>img/201704071410248183840.jpg);"><a target="_blank" tppabs="http://www.xydec.com.cn/Detail.aspx?code=0602"></a></li>
                    
                    <li style="background-image: url(<%=basePath%>img/201704071410434744838.jpg);"><a target="_blank" tppabs="http://www.xydec.com.cn/Detail.aspx?code=0608"></a></li>
                    
                    <li style="background-image: url(<%=basePath%>img/201704071527517088423.jpg);"><a target="_blank" tppabs="http://www.xydec.com.cn/Detail.aspx?code=0609"></a></li>
                    
                            
                </ul>
            </div>
            <div class="hd">
                <ul></ul>
            </div>
        </div>
        <script type="text/javascript">
            jQuery(".sub-banner").slide({ titCell: ".hd ul", mainCell: ".bd ul", effect: "fold", autoPlay: true, autoPage: true, trigger: "click" });
        </script>
        <div class="screen_column">
            <div class="fl">
                <a href="index.htm" tppabs="http://www.xydec.com.cn/">首页</a>
                <font>&gt;</font>
                <a href="SiteLive.aspx.htm" tppabs="http://www.xydec.com.cn/SiteLive.aspx">品质工程</a>
                <font>&gt;</font>
                <span style="color: red;">在建工地</span>
            </div>
            <div class="wrap">
                <ul><% String  ps= (String)request.getSession().getAttribute("stage"); if(ps==null){ps="all";} %>
                    <li class="clearfix">
                        <span>
                            <img alt="" class="lazyload" data-original="<%=basePath%>img/icon_15.png" src="<%=basePath%>img/icon_15.png" tppabs="http://www.xydec.com.cn/images/icon_15.png" />阶段</span>
                        <%if(ps.equals("all")){ %>
                        <a style="color: red" href="ProductsServlet?action=findSomebystage&stage=all" id="a_stage"    onclick="selectCase('stage',-1)" class="fsx">全部</a>
                        <%}else{%>
                        <a  href="ProductsServlet?action=findSomebystage&stage=all" id="a_stage"    onclick="selectCase('stage',-1)" class="fsx">全部</a>
                        <% }%>
                        <%if(ps.equals("1")){ %>
                        <a style="color: red"  href="ProductsServlet?action=findSomebystage&stage=1" id="a_stage_1701">开工大吉</a>
                        <%} else{%>
                        <a href="ProductsServlet?action=findSomebystage&stage=1" id="a_stage_1701">开工大吉</a>
                        <% }%>
                         <%if(ps.equals("2")){ %>
                        <a style="color: red" href="ProductsServlet?action=findSomebystage&stage=2" id="a_stage_1702" onclick="selectCase('stage',1702)"   >墙体打拆</a>
                        <%} else{%>
                        <a href="ProductsServlet?action=findSomebystage&stage=2" id="a_stage_1702" onclick="selectCase('stage',1702)"   >墙体打拆</a>
                        <% }%>
                         <%if(ps.equals("3")){ %>
                        <a style="color: red" href="ProductsServlet?action=findSomebystage&stage=3" id="a_stage_1703" onclick="selectCase('stage',1703)"   >砌墙阶段</a>
                        <%}else{ %>
                        <a href="ProductsServlet?action=findSomebystage&stage=3" id="a_stage_1703" onclick="selectCase('stage',1703)"   >砌墙阶段</a>
                        <%} %>
                         <%if(ps.equals("4")){ %>
                        <a style="color: red" href="ProductsServlet?action=findSomebystage&stage=4" id="a_stage_1704" onclick="selectCase('stage',1704)"   >水电阶段</a>
                        <%}else{ %>
                        <a href="ProductsServlet?action=findSomebystage&stage=4" id="a_stage_1704" onclick="selectCase('stage',1704)"   >水电阶段</a>
                        <%} %>
                         <%if(ps.equals("5")){ %>
                        <a style="color: red" href="ProductsServlet?action=findSomebystage&stage=5" id="a_stage_1705" onclick="selectCase('stage',1705)"   >泥工阶段</a>
                        <%}else{ %>
                        <a href="ProductsServlet?action=findSomebystage&stage=5" id="a_stage_1705" onclick="selectCase('stage',1705)"   >泥工阶段</a>
                         <%if(ps.equals("6")){ %>
                        <a style="color: red" href="ProductsServlet?action=findSomebystage&stage=6" id="a_stage_1706" onclick="selectCase('stage',1706)"   >木工阶段</a>
                        <%}else{ %>
                        <a href="ProductsServlet?action=findSomebystage&stage=6" id="a_stage_1706" onclick="selectCase('stage',1706)"   >木工阶段</a>
                        <%} %>
                         <%if(ps.equals("7")){ %>
                        <a style="color: red" href="ProductsServlet?action=findSomebystage&stage=7" id="a_stage_1707" onclick="selectCase('stage',1707)"   >油漆阶段</a>
                        <%}else{ %>
                        <a href="ProductsServlet?action=findSomebystage&stage=7" id="a_stage_1707" onclick="selectCase('stage',1707)"   >油漆阶段</a>
                        <%} %>
                         <%if(ps.equals("8")){ %>
                        <a style="color: red" href="ProductsServlet?action=findSomebystage&stage=8" id="a_stage_1708" onclick="selectCase('stage',1708)"   >安装阶段</a>
                        <%}else{ %>
                        <a href="ProductsServlet?action=findSomebystage&stage=8" id="a_stage_1708" onclick="selectCase('stage',1708)"   >安装阶段</a>
                        <%}} %>
                        
                        
                        
                        
                        
                        <!-- <a href="ProductsServlet?action=findSomebystage&stage=9" id="a_stage_1709" onclick="selectCase('stage',1709)"   >完工</a> -->
                        
                    </li>
                    <%  
                    String pa = (String)request.getSession().getAttribute("area"); System.out.print("6:"+ps); if(pa==null){pa="all";}%>
                    <li class="clearfix">
                        <span>
                            <img alt="" class="lazyload" data-original="<%=basePath%>img/icon_16.png" src="icon_16.png" tppabs="http://www.xydec.com.cn/images/icon_16.png" />面积</span>
                         <%if(pa.equals("all")){ %>
                        <a style="color: red" href="ProductsServlet?action=findSomebyarea&area=all" id="a_size" onclick="selectCase('size',-1)" class="fsx">全部</a>
                        <%}else{ %>
                        <a href="ProductsServlet?action=findSomebyarea&area=all" id="a_size" onclick="selectCase('size',-1)" class="fsx">全部</a>
                        <%} if(pa.equals("1")){ %>
                        <a style="color: red" href="ProductsServlet?action=findSomebyarea&area=1" id="a_size_1601" onclick="selectCase('size',1601)" >100平米以下</a>
                        <%}else{ %>
                        <a href="ProductsServlet?action=findSomebyarea&area=1" id="a_size_1601" onclick="selectCase('size',1601)" >100平米以下</a>
                        <%} if(pa.equals("2")){ %>
                        <a style="color: red" href="ProductsServlet?action=findSomebyarea&area=2" id="a_size_1602" onclick="selectCase('size',1602)" >101-200平米</a>
                        <%}else{ %>
                        <a href="ProductsServlet?action=findSomebyarea&area=2" id="a_size_1602" onclick="selectCase('size',1602)" >101-200平米</a>
                        <%} if(pa.equals("3")){ %>
                        <a style="color: red" href="ProductsServlet?action=findSomebyarea&area=3" id="a_size_1603" onclick="selectCase('size',1603)" >201-300平米</a>
                        <%}else{ %>
                        <a href="ProductsServlet?action=findSomebyarea&area=3" id="a_size_1603" onclick="selectCase('size',1603)" >201-300平米</a>
                        <%} if(pa.equals("4")){ %>
                        <a style="color: red" href="ProductsServlet?action=findSomebyarea&area=4" id="a_size_1606" onclick="selectCase('size',1606)" >301平米以上</a>
                        <%}else{ %>
                        <a href="ProductsServlet?action=findSomebyarea&area=5" id="a_size_1606" onclick="selectCase('size',1606)"   >其他</a>
                        <%} %>
                    </li>
                    
                    <% String pt   = (String)request.getSession().getAttribute("type"); if(pt==null){pt="all";}  %>
                    
                    <li class="clearfix">
                        <span>
                            <img alt="" class="lazyload" data-original="<%=basePath%>img/icon_17.png" src="icon_17.png" tppabs="http://www.xydec.com.cn/images/icon_17.png" />户型</span>
                         <%if(pt.equals("all")){ %>
                        <a style="color: red" href="ProductsServlet?action=findSomebytype&type=all" id="a_layout" onclick="selectCase('layout',-1)" class="fsx">全部</a>
                        <%}else{%>
                        
                        <a href="ProductsServlet?action=findSomebytype&type=all" id="a_layout" onclick="selectCase('layout',-1)" class="fsx">全部</a>
                        <%} %>
                        
                       
                        <% ArrayList<BuildingType> types = (ArrayList) request.getAttribute("types"); %>
                         <% for(int q = 0;q<types.size(); q++){
                            BuildingType type= (BuildingType)types.get(q);
                        %>
                        <%  
                        if(pt.equals(String.valueOf(type.getProduct_house_type_id()))){ %>
                        <a style="color: red" href="ProductsServlet?action=findSomebytype&type=<%=type.getProduct_house_type_id()%>"  id="a_layout_1401" onclick="selectCase('layout',1401)"   ><%=type.getProduct_house_type()%></a>
                        <%}else{%>
                        <a href="ProductsServlet?action=findSomebytype&type=<%=type.getProduct_house_type_id()%>"  id="a_layout_1401" onclick="selectCase('layout',1401)"   ><%=type.getProduct_house_type()%></a>
                        
                        <%}}%>
                    </li>
                </ul>
                <form action="ProductsServlet?action=showBuildingProductsByProductName" method="POST">
                    
                    <div class="fr">
                        <input type="text" name="productName" placeholder="楼盘名称" />
                        <input id="case_q" type="submit" value=" " />
                    </div>
                </form>
            </div>
        </div>
        <div class="B-search">
            <div class="wrap clearfix">
                <div class="B-s1">
                    <ul>
                       
                       <%
    ArrayList<Products> buildList = (ArrayList) request.getAttribute("productsList");
%>
<%@ page import="com.software.service.BuildingAreaService" %>
<%@ page import="com.software.service.BuildingTypeService" %>
<%@ page import="com.software.service.ProductStageService" %>
<%             BuildingAreaService bas = new BuildingAreaService();
			   BuildingTypeService bts = new BuildingTypeService();
			   ProductStageService pss = new ProductStageService(); 
                                              %>
                      <% for(int i = 0;i<buildList.size(); i++){
                            Products product= (Products) buildList.get(i);
                        %>






							<li class="clearfix">
                            <div class="fl">
                                <img alt="" class="lazyload"  src="<%=basePath%>img/<%=product.getProduct_picture_path()%>" />
</div>
                            <div class="fr">
                                <h4><%=product.getProduct_name()%></h4>
                                <div class="a1 clearfix">
                                    <ul>
                                        <li><%=bas.getTheProductAreaByAreaID(product.getProduct_area_id()).getProduct_area()%></li>
                                        <li>
                                        	<%if(product.getProduct_house_type_id()==0){%>
                                        	待确定
                                        	<%} else{%>
                                        	<%=bts.getTheProductHouseTypeByHouseTypeID(product.getProduct_house_type_id()).getProduct_house_type()%>
                                        	<%} %>
                                        </li>
                                    </ul>
                                    
                                <%int s = product.getProduct_stage_id();%>    
                                </div>
                                <%if(s==1){%> <div class="a2 clearfix on1"> <span class="gb1">开工大吉</span></div>  <%}%>
                                <%if(s==2){%> <div class="a2 clearfix on1"> <span class="gb1">开工大吉</span><span class="gb1">墙体打拆</span></div>  <%}%>
                                <%if(s==3){%> <div class="a2 clearfix on1"> <span class="gb1">开工大吉</span><span class="gb1">墙体打拆</span><span class="gb1">砌墙阶段</span> </div> <%}%>
                                <%if(s==4){%> <div class="a2 clearfix on1"> <span class="gb1">开工大吉</span><span class="gb1">墙体打拆</span><span class="gb1">砌墙阶段</span> <span class="gb1">水电阶段</span></div>  <%}%>
                                <%if(s==5){%> <div class="a2 clearfix on1"> <span class="gb1">开工大吉</span><span class="gb1">墙体打拆</span><span class="gb1">砌墙阶段</span> <span class="gb1">水电阶段</span><span class="gb1">泥工阶段</span></div>  <%}%>
                                <%if(s==6){%> <div class="a2 clearfix on1"> <span class="gb1">开工大吉</span><span class="gb1">墙体打拆</span><span class="gb1">砌墙阶段</span> <span class="gb1">水电阶段</span><span class="gb1">泥工阶段</span><span class="gb1">木工阶段</span></div>  <%}%>
                                <%if(s==7){%> <div class="a2 clearfix on1"> <span class="gb1">开工大吉</span><span class="gb1">墙体打拆</span><span class="gb1">砌墙阶段</span> <span class="gb1">水电阶段</span><span class="gb1">泥工阶段</span><span class="gb1">木工阶段</span><span class="gb1">油漆阶段</span></div>  <%}%>
                                <%if(s==8){%> <div class="a2 clearfix on1"> <span class="gb1">开工大吉</span><span class="gb1">墙体打拆</span><span class="gb1">砌墙阶段</span> <span class="gb1">水电阶段</span><span class="gb1">泥工阶段</span><span class="gb1">木工阶段</span><span class="gb1">油漆阶段</span><span class="gb1">安装阶段</span></div>  <%}%>
                                <%if(s==9){%> <div class="a2 clearfix on1"> <span class="gb1">开工大吉</span><span class="gb1">墙体打拆</span><span class="gb1">砌墙阶段</span> <span class="gb1">水电阶段</span><span class="gb1">泥工阶段</span><span class="gb1">木工阶段</span><span class="gb1">油漆阶段</span><span class="gb1">安装阶段</span><span class="gb1">完工</span></div>  <%}%>
                            </div>
                        </li>
<%}%>
                    </ul>
                </div>
                <div class="B-s2">
                    <div class="Other">
                        
                        <a target="_blank" >
                            <img src="<%=basePath%>/img/201708081047283536103.jpg"  />
                        </a>
                        
                        <a target="_blank" >
                            <img src="<%=basePath%>/img/201803011647262677136.jpg" />
                        </a>
                        
                    </div>
                </div>
            </div>
        </div>
        <style type="text/css">
        	a:link{text-decoration:none; /* 指正常的未被访问过的链接*/}
			a:visited{text-decoration:none; /*指已经访问过的链接*/}
			a:hover{text-decoration:none;/*指鼠标在链接*/}
			a:active{text-decoration:none;/* 指正在点的链接*/ }
        	
            #AspNetPager1 a, #AspNetPager1_input, #AspNetPager1_btn {
                border: 1px solid #c8c8c8;
                color: #c0c0c0;
                display: inline-block;
                /*padding: 3px 12px;*/
                font-size: 18px;
                color: #666;
                vertical-align: middle;
            }

            #AspNetPager1 span {
                vertical-align: middle;
            }

            #AspNetPager1 a:hover {
                border: 1px solid #FF0000;
                background: #FF0000;
                color: #fff;
            }

            #AspNetPager1 {
                color: #c0c0c0;
            }

            .Paging form input[type="text"], .Paging form input[type="button"] {
                float: initial;
            }

            .Paging .pagecount {
                display: inline-block;
                height: 40px;
                line-height: 40px;
                text-align: center;
            }
        </style>
        <script type="text/javascript">
           
        </script>
    </div>

    
<div class="roll-nav">
    <ul>
        <li class="a1">
            <div class="_box">
                <i></i>
                <span>二维码</span>
            </div>
            <div class="_sig">
                <span>
                    <img alt="" src="<%=basePath%>/img/201612229413.jpg" tppabs="http://www.xydec.com.cn/upload/1612/201612229413.jpg" />
                </span>
            </div>
        </li>
       <li class="a4">
            <div class="_box">
                <a href="javascript:scroll(0,0)"><i></i></a>
                <span><a href="javascript:scroll(0,0)">返回顶部</a></span>
            </div>
        </li>
        
    </ul>
</div>

    

<div class="footer">
    <div class="foot_1">
        <div class="wrap">
            <div class="First clearfix">
                <div class="fl">
                    <dl class="a1">
                        <dt>友情链接</dt>
                        
                    </dl>
                    <dl class="a2">
                        <dt>关于我们</dt>
                        
                        <dd><a target="_blank" href="Detail.aspx-code=0601.htm" tppabs="http://www.xydec.com.cn/Detail.aspx?code=0601">品牌介绍</a></dd>
                        
                        <dd><a target="_blank" href="Detail.aspx-code=0603.htm" tppabs="http://www.xydec.com.cn/Detail.aspx?code=0603">资质荣誉</a></dd>
                        
                        <dd><a target="_blank" href="BranchSearch.aspx.htm" tppabs="http://www.xydec.com.cn/BranchSearch.aspx">星艺网点</a></dd>
                        
                    </dl>
                    <dl class="a3">
                        <dt>联系我们</dt>
                        
                        <dd><span>总部地址：广东省广州市黄埔区科学大道243号总部经济区A5栋13、14楼</span></dd>
                        
                        <dd><span>电话：400-9617-001</span></dd>
                        
                        <dd><span>时间：周一至周日 9:00-21:00</span></dd>
                    </dl>
                </div>
                <div class="fr">
                    <ul>
                        <li>
                            <h4>
                                
                                
                                <img class="lazyload" alt="关注集团微信公众号"  src="<%=basePath%>img/201612229413.jpg" />
                                
                            </h4>
                            <p>关注集团微信公众号</p>
                        </li>
                        <li>
                            <h4>
                                
                                
                                <img class="lazyload" alt="关注手机端官网"  src="<%=basePath%>img/201712181059593756989.jpg"  />
                                
                            </h4>
                            <p>关注手机端官网</p>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="Second">
                <ul class="clearfix">
                    <li class="a1">
                        <div class="fl"><i></i></div>
                        <div class="fr">
                            <font>设计专项甲级</font>
                            <span>专业承包壹级</span>
                        </div>
                    </li>
                    <li class="a2">
                        <div class="fl"><i></i></div>
                        <div class="fr">
                            <font>五年质保</font>
                            <span>与国家标准同步</span>
                        </div>
                    </li>
                    <li class="a3">
                        <div class="fl"><i></i></div>
                        <div class="fr">
                            <font>无忧售后</font>
                            <span>服务终身不变，热情不减</span>
                        </div>
                    </li>
                    <li class="a4">
                        <div class="fl"><i></i></div>
                        <div class="fr">
                            <font>行业同龄</font>
                            <span>品质28年，值得信赖</span>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <div class="foot_2">
        <div class="wrap clearfix">
            <div class="fl" style="width: 100%;text-align: center;">
                <p>
                    (c)Copyright 2017 广东星艺装饰集团股份有限公司 版权所有  <a href="javascript:if(confirm('http://www.miitbeian.gov.cn/  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ������ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='http://www.miitbeian.gov.cn/'" tppabs="http://www.miitbeian.gov.cn/">粤ICP备13022898号</ a>&nbsp;&nbsp;&nbsp;&nbsp;
                    
                    <script type="text/javascript">var cnzz_protocol = (("https:" == document.location.protocol) ? " https://" : " http://");document.write(unescape("%3Cspan id='cnzz_stat_icon_1261996347'%3E%3C/span%3E%3Cscript src='" + cnzz_protocol + "s22.cnzz.com/z_stat.php%3Fid%3D1261996347%26show%3Dpic' type='text/javascript'%3E%3C/script%3E"));</script>
                </p>
            </div>
            
        </div>
    </div>
</div>
<script>
var _hmt = _hmt || [];
(function() {
  var hm = document.createElement("script");
  hm.src = "hm.js-bc4d0695158d3e46228dd96a3b56fee4"/*tpa=https://hm.baidu.com/hm.js?bc4d0695158d3e46228dd96a3b56fee4*/;
  var s = document.getElementsByTagName("script")[0]; 
  s.parentNode.insertBefore(hm, s);
})();
</script>
    
    <script type="text/javascript">
        setNav(5);
    </script>
    
</body>
</html>
