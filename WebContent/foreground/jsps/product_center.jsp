<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.software.service.ProductsService" %>
<%@ page import="com.software.domain.Products" %>
<%
    String path = request.getContextPath();
%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" /><title>产品中心-广东晴坤装饰集团股份有限公司</title>
    <meta name="keywords" content="晴坤装饰,晴坤装饰官网,装饰公司,装修公司,家庭装修,室内装修,豪华装修,别墅装修,装修效果图,装修设计,晴坤,装修,装饰,整装,家装,工装" />
    <meta name="description" content="晴坤装饰创办于1991年，中国装饰装修行业十大品牌！全国400+分支机构，50000+专业人员，27年专注大中型住宅、酒店、办公空间等装修设计与施工服务。爱家专线：4009617001！晴坤装饰每年为30000+家庭提供定制设计、环保施工、材料配送等高品质装修服务，深受百万家庭信赖！" />

    <link rel="shortcut icon" href="../images/favicon.ico">
    <link href="../css/style.css" type="text/css" rel="stylesheet" />
    <script type="text/javascript" src="../js/jquery.js"></script>
    <script type="text/javascript" src="../js/jquery.lazyload.min.js"></script>
    <script type="text/javascript" src="../js/jquery.SuperSlide.2.1.1.js"></script>
    <script type="text/javascript" src="../js/slick.min.js" ></script>
    <script type="text/javascript" src="../js/layer.js" ></script>
    <script type="text/javascript" src="../js/form_js.js" ></script>
    <script type="text/javascript" src="../js/js.js" ></script>
    <script type="text/javascript" src="../js/ajax.js" ></script>
</head>

<body>
<%
    ArrayList productsList = (ArrayList) request.getAttribute("productsList");
%>
<div class="header">
    <div class="Menu">
        <div class="wrap clearfix">
            <div class="logo">
                <a href="../../index.jsp">
                    <img alt="" class="lazyload" data-original="upload/1702/img/201702230818558672167.png" src="../img/201702230818558672167.png" tppabs="http://www.xydec.com.cn/upload/1702/img/201702230818558672167.png" /></a>
            </div>

            <div class="Nav">
                <ul class="clearfix">
                    <li><a href="../../index.jsp">首页</a></li>
                    <li>
                        <a href="../culture_group_overview.jsp" >走进晴坤</a>
                        <div class="Drop_Down">
                            <div class="clearfix">
                                <ul>
                                    <li>
                                        <a href="culture_group_overview.jsp" >企业概况</a>
                                    </li>
                                    <li>
                                        <a href="culture_brand_introduction.jsp" >品牌介绍</a>
                                    </li>
                                    <li>
                                        <a href="culture_project_advantages.jsp" >项目优势</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </li>
                    <li>
                        <a href="news_center.jsp" >营销活动</a>
                        <div class="Drop_Down">
                            <div class="clearfix">
                                <ul>
                                    <li>
                                        <a href="<%=path %>/PassageServlet?action=find_culture_group_overview" >企业概况</a>
                                    </li>

                                    <li>
                                        <a href="<%=path %>/PassageServlet?action=find_culture_brand_introduction"  >品牌介绍</a>
                                    </li>
                                    <li>
                                        <a href="<%=path %>/PassageServlet?action=find_culture_project_advantages"  >项目优势</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </li>
                    <li>
                        <a href="product_center.jsp" >产品中心</a>
                    </li>
                    <li>
                        <a href="<%=path %>/PassageServlet?action=find_material_overview" tppabs="http://www.xydec.com.cn/SiteLive.aspx">品质工程</a>
                        
                        <div class="Drop_Down">
                            <div class="clearfix">
                                <ul>
                                    <li>
                                        <a href="<%=path %>/PassageServlet?action=find_material_overview" tppabs="http://www.xydec.com.cn/EngineeringDetail.aspx?code=0402" >材料概述</a>
                                    </li>
                                    <li>
                                        <a href="building.jsp" >在建工地</a>
                                    </li>
                                    <li>
                                        <a href="<%=path %>/PassageServlet?action=find_process_patent" tppabs="http://www.xydec.com.cn/Detail.aspx?code=0403" >工艺专利</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </li>
                    <li>
                        <a href="<%=path %>/PassageServlet?action=find_service_guarantee" tppabs="http://www.xydec.com.cn/NewList.aspx?code=0704">无忧服务</a>
                        
                        <div class="Drop_Down">
                            <div class="clearfix">
                                <ul>
                                    <li>
                                        <a href="service_process.jsp" >留言吧</a>
                                    </li>
                                    <li>
                                        <a href="<%=path %>/PassageServlet?action=find_service_guarantee" tppabs="http://www.xydec.com.cn/Detail.aspx?code=0705" >服务流程</a>
                                    </li>
                                    
                                    <li>
                                        <a href="<%=path %>/PassageServlet?action=find_service_process" tppabs="http://www.xydec.com.cn/Detail.aspx?code=0706" >服务保障</a>
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

    
    <div class="article">
        <div class="sub-banner">
            <div class="bd">
                <ul style="position: relative; width: 1366px; height: 400px;">
                    <li style="background-image: url(&quot;../img/201704071409483809340.jpg&quot;); position: absolute; width: 1366px; left: 0px; top: 0px; display: none;"><a target="_blank"></a></li>
                    <li style="background-image: url(&quot;../img/201704071410248183840.jpg&quot;); position: absolute; width: 1366px; left: 0px; top: 0px; display: none;"><a target="_blank"></a></li>
                    <li style="background-image: url(&quot;../img/201704071410434744838.jpg&quot;); position: absolute; width: 1366px; left: 0px; top: 0px; display: none;"><a target="_blank"></a></li>
                    <li style="background-image: url(&quot;../img/201704071527517088423.jpg&quot;); position: absolute; width: 1366px; left: 0px; top: 0px; display: none;"><a target="_blank"></a></li>
                </ul>
            </div>
            <div class="hd">
                <ul><li class="">1</li><li class="on">2</li><li class="">3</li><li class="">4</li></ul>
            </div>
        </div>
        <script type="text/javascript">
            jQuery(".sub-banner").slide({ titCell: ".hd ul", mainCell: ".bd ul", effect: "fold", autoPlay: true, autoPage: true, trigger: "click" });
        </script>
        <div class="screen_column">
			<div class="sub-tit">
				<div class="wrap clearfix">
					<div class="fl">
					<a href="../../index.jsp" >首页</a>
					<font>&gt;</font>
					<span style="color: red;">产品中心</span>
					</div>
				</div>
			</div>
            <div class="wrap">
                <ul>
                    <li class="clearfix">
                        <span>
                            <img alt="" class="lazyload" data-original="../images/iconimg/_15.png" src="../img/icon_15.png"/>设计风格</span>
                        <a id="a_style" href="javascript:;" onclick="selectCase('style',-1)" class="fsx">全部</a>
                        <a id="a_style_1201" href="javascript:;" onclick="selectCase('style',1201)">现代简约</a>
                        <a id="a_style_1202" href="javascript:;" onclick="selectCase('style',1202)">简欧</a>
                        <a id="a_style_1203" href="javascript:;" onclick="selectCase('style',1203)">新中式</a>
                        <a id="a_style_1204" href="javascript:;" onclick="selectCase('style',1204)">新古典</a>
                        <a id="a_style_1205" href="javascript:;" onclick="selectCase('style',1205)">现代</a>
                        <a id="a_style_1206" href="javascript:;" onclick="selectCase('style',1206)">田园</a>
                        <a id="a_style_1207" href="javascript:;" onclick="selectCase('style',1207)">地中海</a>
                        <a id="a_style_1209" href="javascript:;" onclick="selectCase('style',1209)">欧式</a>
                        <a id="a_style_1210" href="javascript:;" onclick="selectCase('style',1210)">美式</a>
                        <a id="a_style_1211" href="javascript:;" onclick="selectCase('style',1211)">北欧风</a>
                        <a id="a_style_1208" href="javascript:;" onclick="selectCase('style',1208)">其它</a>
                    </li>
                    <li class="clearfix">
                        <span>
                            <img alt="" class="lazyload" data-original="../images/iconimg/_17.png" src="../img/icon_17.png" />案例户型</span>
                        <a id="a_layout" href="javascript:;" onclick="selectCase('layout',-1)" class="fsx">全部</a>
                        <a id="a_layout_1401" href="javascript:;" onclick="selectCase('layout',1401)">二居</a>
                        <a id="a_layout_1402" href="javascript:;" onclick="selectCase('layout',1402)">三居</a>
                        <a id="a_layout_1403" href="javascript:;" onclick="selectCase('layout',1403)">四居</a>
                        <a id="a_layout_1404" href="javascript:;" onclick="selectCase('layout',1404)">五居</a>
                        <a id="a_layout_1405" href="javascript:;" onclick="selectCase('layout',1405)">平层</a>
                        <a id="a_layout_1406" href="javascript:;" onclick="selectCase('layout',1406)">复式</a>
                        <a id="a_layout_1407" href="javascript:;" onclick="selectCase('layout',1407)">别墅</a>
                        <a id="a_layout_1408" href="javascript:;" onclick="selectCase('layout',1408)">办公空间</a>
                    </li>
                    <li class="clearfix">
                        <span>
                            <img alt="" class="lazyload" data-original="../images/iconimg/_16.png" src="../img/icon_16.png"  />建筑面积</span>
                        <a id="a_size" href="javascript:;" onclick="selectCase('size',-1)" class="fsx">全部</a>
                        <a id="a_size_1601" href="javascript:;" onclick="selectCase('size',1601)">100平米以下</a>
                        <a id="a_size_1602" href="javascript:;" onclick="selectCase('size',1602)">101-200平米</a>
                        <a id="a_size_1603" href="javascript:;" onclick="selectCase('size',1603)">201-300平米</a>
                        <a id="a_size_1606" href="javascript:;" onclick="selectCase('size',1606)">301平米以上	</a>
                    </li>
                </ul>
                <form id="form_c" class="clearfix" action="<%=path%>/ProductsServlet?action=showProductsByProductName" method="post">
                    <div class="fr">
                        <input class="keyword" type="text" id="productName" name="productName" placeholder="按照产品名称搜索" />
                        <input id="case_q" type="submit" value=" " />
                    </div>
                </form>
            </div>
        </div>


        <div class="Boutique-case">
            <div class="wrap">
                <ul class="clearfix">
                    <% if(productsList == null || productsList.size() == 0){ %>
                        <li class="clearfix">
                            <div class="show">
                                <p>&nbsp;</p>
                                <p>&nbsp;</p>
                                <p>&nbsp;</p>
                                <p>&nbsp;</p>
                                <p><h5>没有商品...</h5></p>
                            </div>
                        </li>
                    <% }
                    else {
                    for(int i = 0; i < productsList.size(); i ++){
                    Products product= (Products) productsList.get(i); %>
                    <li class="clearfix">
                        <div class="show">
                            <h4>
                                <a target="_blank" href="<%=path%>/ProductsServlet?action=showTheProductDetails&productID=<%=product.getProduct_id()%>" >
                                    <img alt="" class="lazyload" src="img/<%=product.getProduct_picture_path()%>" style="width: 289px; height: 215px;" />
                                </a>
                            </h4>
                            <div class="aa">
                                <h5><a target="_blank" href="" ><%=product.getProduct_name()%></a></h5>
                                <p class="pp clearfix">
                                <p>&nbsp;</p>
                                        <p><font size="2">发布时间：</font></p>
                                <p>&nbsp;</p>
                                        <font size="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</font>
                                <font size="2"><%=product.getProduct_publish_time()%></font>
                            </div>
                        </div>
                    </li>
                    <% } }%>

                </ul>
            </div>
        </div>
        <div class="Paging">
        </div>
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
                    <img alt="" src="../img/201612229413.jpg" tppabs="http://www.xydec.com.cn/upload/1612/img/201612229413.jpg" />
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
                        <dd><a target="_blank" href="culture_group_overview.jsp" tppabs="http://www.xydec.com.cn/Detail.aspx?code=0601">企业概况</a></dd>
                        <dd><a target="_blank" href="culture_project_advantages.jsp" tppabs="http://www.xydec.com.cn/Detail.aspx?code=0603">项目优势</a></dd>
                        <dd><a target="_blank" href="BranchSearch.aspx.htm" tppabs="http://www.xydec.com.cn/BranchSearch.aspx">在线工地</a></dd>
                    </dl>
                    <dl class="a3">
                        <dt>联系我们</dt>
                        <dd><span>总部地址：河北省廊坊市广阳区香邑廊桥</span></dd>
                        <dd><span>电话：13582797666</span></dd>
                        <dd><span>时间：周一至周日 9:00-21:00</span></dd>
                    </dl>
                </div>
                <div class="fr">
                    <ul>
                        <li>
                            <h4>
                                <img class="lazyload" alt="关注集团微信公众号" data-original="../upload/1612/img/201612229413.jpg" src="../img/201612229413.jpg" tppabs="http://www.xydec.com.cn/upload/1612/img/201612229413.jpg" />
                            </h4>
                            <p>关注集团微信公众号</p>
                        </li>
                        <li>
                            <h4>
                                <img class="lazyload" alt="关注手机端官网" data-original="../upload/1712/img/201712181059593756989.jpg" src="../img/201712181059593756989.jpg" tppabs="http://www.xydec.com.cn/upload/1712/img/201712181059593756989.jpg" />
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
                    (c)Copyright 2018 河北晴坤装饰集团有限公司 版权所有  
                </p>
            </div>
            
        </div>
    </div>
</div>
</body>
</html>

