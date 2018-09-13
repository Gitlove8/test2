<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>服务保障-广东晴坤装饰集团股份有限公司</title>
<meta name="keywords" content="服务保障" />
<meta name="description" content="服务保障" />

<%
	String path = request.getContextPath();
	String basePath = path + "/foreground/";
	String pagePath = basePath + "/jsps/";
 %>
<link rel="shortcut icon" href="images/favicon.ico">
<link href="<%=basePath %>css/style.css" tppabs="http://www.xydec.com.cn/css/css/style.css" type="text/css" rel="stylesheet" />
<script type="text/javascript" src="<%=basePath %>js/jquery.js" tppabs="http://www.xydec.com.cn/js/js/jquery.js"></script>
<script type="text/javascript" src="<%=basePath %>js/jquery.lazyload.min.js" tppabs="http://www.xydec.com.cn/js/js/jquery.lazyload.min.js"></script>
<script type="text/javascript" src="<%=basePath %>js/jquery.SuperSlide.2.1.1.js" tppabs="http://www.xydec.com.cn/js/js/jquery.SuperSlide.2.1.1.js"></script>
<script type="text/javascript" src="<%=basePath %>js/slick.min.js" tppabs="http://www.xydec.com.cn/js/js/slick.min.js"></script>
<script type="text/javascript" src="<%=basePath %>js/layer.js" tppabs="http://www.xydec.com.cn/js/layer/js/layer.js"></script>
<script type="text/javascript" src="<%=basePath %>js/form_js.js" tppabs="http://www.xydec.com.cn/js/js/form_js.js"></script>
<script type="text/javascript" src="<%=basePath %>js/js.js" tppabs="http://www.xydec.com.cn/js/js.js"></script>
<script type="text/javascript" src="<%=basePath %>js/ajax.js" tppabs="http://www.xydec.com.cn/js/js/ajax.js"></script>
<script>
var _hmt = _hmt || [];
(function() {
  var hm = document.createElement("script");
  hm.src = "hm.js-bc4d0695158d3e46228dd96a3b56fee4"/*tpa=https://hm.baidu.com/hm.js?bc4d0695158d3e46228dd96a3b56fee4*/;
  var s = document.getElementsByTagName("script")[0];
  s.parentNode.insertBefore(hm, s);
})();
</script>


</head>
<body>
    
<div class="header">
    
    <div class="Menu">
        <div class="wrap clearfix">
            <div class="logo">
                <a href="<%=path %>/index.jsp" tppabs="http://www.xydec.com.cn/Default.aspx">
                    <img alt="" class="lazyload" data-original="upload/1702/img/201702230818558672167.png" src="../img/201702230818558672167.png" tppabs="http://www.xydec.com.cn/upload/1702/img/201702230818558672167.png" /></a>
            </div>
            <div class="Nav">
                <ul class="clearfix">
                    <li><a href="<%=path %>/index.jsp" tppabs="http://www.xydec.com.cn/Default.aspx">首页</a></li>
                    
                    <li>
                        <a href="<%=pagePath %>culture_group_overview.jsp" tppabs="http://www.xydec.com.cn/Detail.aspx?code=0601">走进晴坤</a>
                        
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
                        <a href="<%=pagePath %>news_center.jsp" tppabs="http://www.xydec.com.cn/Marketing.aspx?type=all">营销活动</a>
                        
                        <div class="Drop_Down">
                            <div class="clearfix">
                                <ul>
                                    
                                    <li>
                                        <a href="<%=pagePath %>news_center.jsp" tppabs="http://www.xydec.com.cn/Marketing.aspx?kindcode=0101" >企业新闻</a>
                                    </li>
                                    
                                    <li>
                                        <a href="<%=pagePath %>notice_center.jsp" tppabs="http://www.xydec.com.cn/Marketing.aspx?kindcode=0102" >最新公告</a>
                                    </li>
                                    
                                </ul>
                            </div>
                        </div>
                        
                    </li>
                    
                    
                    <li>
                        <a href="<%=pagePath %>product_center.jsp" tppabs="http://www.xydec.com.cn/CaseList.aspx">产品中心</a>
                        
                        
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
                                        <a href="<%=pagePath %>building.jsp" tppabs="http://www.xydec.com.cn/SiteLive.aspx" >在建工地</a>
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
                                        <a href="<%=pagePath %>service_process.jsp" tppabs="http://www.xydec.com.cn/NewList.aspx?code=0704" >留言吧</a>
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
                    
                    <li style="background-image: url(&quot;<%=basePath %>img/201704071409483809340.jpg&quot;); position: absolute; width: 1366px; left: 0px; top: 0px; display: none;"><a target="_blank" tppabs="http://www.xydec.com.cn/Detail.aspx?code=0603"></a></li>
                    
                    <li style="background-image: url(&quot;<%=basePath %>img/201704071410248183840.jpg&quot;); position: absolute; width: 1366px; left: 0px; top: 0px; display: list-item;"><a target="_blank" tppabs="http://www.xydec.com.cn/Detail.aspx?code=0602"></a></li>
                    
                    <li style="background-image: url(&quot;<%=basePath %>img/201704071410434744838.jpg&quot;); position: absolute; width: 1366px; left: 0px; top: 0px; display: none;"><a target="_blank" tppabs="http://www.xydec.com.cn/Detail.aspx?code=0608"></a></li>
                    
                    <li style="background-image: url(&quot;<%=basePath %>img/201704071527517088423.jpg&quot;); position: absolute; width: 1366px; left: 0px; top: 0px; display: none;"><a target="_blank" tppabs="http://www.xydec.com.cn/Detail.aspx?code=0609"></a></li>
                    
                </ul>
            </div>
            <div class="hd">
                <ul><li class="">1</li><li class="on">2</li><li class="">3</li><li class="">4</li></ul>
            </div>
        </div>
        <script type="text/javascript">
            jQuery(".sub-banner").slide({ titCell: ".hd ul", mainCell: ".bd ul", effect: "fold", autoPlay: true, autoPage: true, trigger: "click" });
        </script>
        <div class="sub-tit">
            <div class="wrap clearfix">
                <div class="fl">
                    <a href="<%=path %>/index.jsp">首页</a>
                    <font>&gt;</font>
                    <a href="<%=pagePath %>service_process.jsp">无忧服务</a>
                    <font>&gt;</font>
					<span style="color:red;">服务流程</span></a>
                </div>
            </div>
        </div>
       <%String service_guarantee= (String) (String)request.getAttribute("service_guarantee"); %>
    <%=service_guarantee%>
    
<div class="roll-nav">
    <ul>
        <li class="a1">
            <div class="_box">
                <i></i>
                <span>二维码</span>
            </div>
            <div class="_sig">
                <span>
                    <img alt="" src="<%=basePath %>img/201612229413.jpg" tppabs="http://www.xydec.com.cn/upload/1612/img/201612229413.jpg" />
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
                        
                        <dd><a target="_blank" href="<%=pagePath %>culture_group_overview.jsp" tppabs="http://www.xydec.com.cn/Detail.aspx?code=0601">企业概况</a></dd>
                        
                        <dd><a target="_blank" href="<%=pagePath %>culture_project_advantages.jsp" tppabs="http://www.xydec.com.cn/Detail.aspx?code=0603">项目优势</a></dd>
                        
                        <dd><a target="_blank" href="<%=pagePath %>BranchSearch.aspx.htm" tppabs="http://www.xydec.com.cn/BranchSearch.aspx">在线工地</a></dd>
                        
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
                                
                                
                                <img class="lazyload" alt="关注集团微信公众号" data-original="upload/1612/img/201612229413.jpg" src="<%=basePath %>img/201612229413.jpg" tppabs="http://www.xydec.com.cn/upload/1612/img/201612229413.jpg" />
                                
                            </h4>
                            <p>关注集团微信公众号</p>
                        </li>
                        <li>
                            <h4>
                                
                                
                                <img class="lazyload" alt="关注手机端官网" data-original="upload/1712/img/201712181059593756989.jpg" src="<%=basePath %>img/201712181059593756989.jpg" tppabs="http://www.xydec.com.cn/upload/1712/img/201712181059593756989.jpg" />
                                
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
        setNav(6);
    </script>
    
</body>
</html>

