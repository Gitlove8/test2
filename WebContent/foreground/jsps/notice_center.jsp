<%@ page contentType="text/html;charset=UTF-8" language="java" %>
 <%  
String path = request.getContextPath();  
String basePath = path+"/foreground/";  
%> 
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>营销活动-广东晴坤装饰集团股份有限公司</title>
<meta name="keywords" content="晴坤装饰,晴坤装饰官网,装饰公司,装修公司,家庭装修,室内装修,豪华装修,别墅装修,装修效果图,装修设计,晴坤,装修,装饰,整装,家装,工装" />
<meta name="description" content="晴坤装饰创办于1991年，中国装饰装修行业十大品牌！全国400+分支机构，50000+专业人员，27年专注大中型住宅、酒店、办公空间等装修设计与施工服务。爱家专线：4009617001！晴坤装饰每年为30000+家庭提供定制设计、环保施工、材料配送等高品质装修服务，深受百万家庭信赖！" />

<link rel="shortcut icon" href="images/favicon.ico">
<link href="../css/style.css" tppabs="http://www.xydec.com.cn/css/css/style.css" type="text/css" rel="stylesheet" />
<script type="text/javascript" src="../js/jquery.js" tppabs="http://www.xydec.com.cn/js/js/jquery.js"></script>
<script type="text/javascript" src="../js/jquery.lazyload.min.js" tppabs="http://www.xydec.com.cn/js/js/jquery.lazyload.min.js"></script>
<script type="text/javascript" src="../js/jquery.SuperSlide.2.1.1.js" tppabs="http://www.xydec.com.cn/js/js/jquery.SuperSlide.2.1.1.js"></script>
<script type="text/javascript" src="../js/slick.min.js" tppabs="http://www.xydec.com.cn/js/js/slick.min.js"></script>
<script type="text/javascript" src="../js/layer.js" tppabs="http://www.xydec.com.cn/js/layer/js/layer.js"></script>
<script type="text/javascript" src="../js/form_js.js" tppabs="http://www.xydec.com.cn/js/js/form_js.js"></script>
<script type="text/javascript" src="../js/js.js" tppabs="http://www.xydec.com.cn/js/js.js"></script>
<script type="text/javascript" src="../js/ajax.js" tppabs="http://www.xydec.com.cn/js/js/ajax.js"></script>
<script>
var _hmt = _hmt || [];
(function() {
  var hm = document.createElement("script");
  hm.src = "hm.js-bc4d0695158d3e46228dd96a3b56fee4"/*tpa=https://hm.baidu.com/hm.js?bc4d0695158d3e46228dd96a3b56fee4*/;
  var s = document.getElementsByTagName("script")[0];
  s.parentNode.insertBefore(hm, s);
})();
</script>


    <script type="text/javascript" src="../js/YMDClass.js" tppabs="http://www.xydec.com.cn/js/js/YMDClass.js"></script>
    <script type="text/javascript">
        $(function () {
            var type = '';
            switch (type) {
                case "new":
                    $(".new").css("color", "#ff0000");
                    $(".new").siblings().css("color", "#666");
                    $(".fsx").css("color", "#999");
                    break;
                case "hot":
                    $(".hot").css("color", "#ff0000");
                    $(".hot").siblings().css("color", "#666");
                    $(".fsx").css("color", "#999");
                    break;
                case "all":
                    $(".fsx").css("color", "#ff0000");
                    $(".fsx").siblings().css("color", "#666");
                    break;
            }

            new YMDselect("year", "month");

            $(".bc_m_select").change(function () {
                var url = window.location.href;
                if ($(".bp_m_select").val() != "" && $(".bp_m_select").val() != undefined)
                    url = UrlAddParams(url, "provincecode", $(".bp_m_select").val());
                if ($(".bc_m_select").val() != "" && $(".bc_m_select").val() != undefined)
                    url = UrlAddParams(url, "citycode", $(".bc_m_select").val());
                location.href = url;
            });

            $(".bp_m_select").change(function () {
                var provinceid = $(".bp_m_select").val();
                var citycode = '';
                if (provinceid != "-1") {
                    $.ajax({
                        type: "POST",
                        url: "/ajax/ajax.aspx?action=load_city&t=" + Math.random(),
                        data: { id: provinceid },
                        dataType: "json",
                        success: function (data) {
                            if (data != "") {
                                $(".bc_m_select").empty();
                                $(".bc_m_select").append("<option value=\"-1\">城市</option>");
                                $(data).each(function (ck, cv) {
                                    $(".bc_m_select").append("<option value=\"" + cv.id + "\">" + cv.areaname + "</option>");
                                });

                                if (citycode == -1) {
                                    $(".bc_m_select option:eq(0)").prop("selected", true);
                                } else {
                                    $(".bc_m_select").find("option").each(function () {
                                        if ($(this).val() == citycode)
                                            $(this).prop("selected", true);
                                    });
                                }
                            }
                        }
                    });
                }
            });

            $("#iTime").click(function () {
                var url = window.location.href;
                if ($("#year").val())
                    url = UrlAddParams(url, "year", $("#year").val());
                if ($("#month").val())
                    url = UrlAddParams(url, "month", $("#month").val());
                location.href = url;
            });

            $("#btnkeyword").click(function () {
                var url = window.location.href;
                if ($("#keyword").val())
                    url = UrlAddParams(url, "keyword", $("#keyword").val());
                location.href = url;
            });

            setA();
        });

        function setA() {
            var provincecode = '';
            if (provincecode == -1) {
                $(".bp_m_select option:eq(0)").prop("selected", true);
            } else {
                $(".bp_m_select").find("option").each(function () {
                    if ($(this).val() == provincecode) {
                        $(this).prop("selected", true);
                        $(".bp_m_select").change();
                    }
                });
            }
        }
    </script>
</head>
<body>
    
<div class="header">
    
    <div class="Menu">
        <div class="wrap clearfix">
            <div class="logo">
                <a href="../../index.jsp" tppabs="http://www.xydec.com.cn/Default.aspx">
                    <img alt="" class="lazyload" data-original="upload/1702/img/201702230818558672167.png" src="../img/201702230818558672167.png" tppabs="http://www.xydec.com.cn/upload/1702/img/201702230818558672167.png" /></a>
            </div>

            <div class="Nav">
                <ul class="clearfix">
                    <li><a href="../../index.jsp" tppabs="http://www.xydec.com.cn/Default.aspx">首页</a></li>
                    
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
                                        <a href="<%=basePath%>jsps/building.jsp" tppabs="http://www.xydec.com.cn/SiteLive.aspx" >在建工地</a>
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

    
    <div class="article">
        <div class="sub-banner">
            <div class="bd">
                <ul>
                    
                    <li style="background-image: url(../img/201802071702436308751.jpg);"><a target="_blank" tppabs="http://www.xydec.com.cn/xydai.aspx"></a></li>
                            
                </ul>
            </div>

        </div>
        <script type="text/javascript">
            jQuery(".sub-banner").slide({ titCell: ".hd ul", mainCell: ".bd ul", effect: "fold", autoPlay: true, autoPage: true, trigger: "click" });
        </script>
        <div class="screen_column">
			<div class="sub-tit">
				<div class="wrap clearfix">
					<div class="fl">
						<a href="../../index.jsp">首页</a>
						<font>&gt;</font>
						<a href="news_center.jsp">营销活动</a>
						<font>&gt;</font>
						<span style="color: red;">最新公告</span>
					</div>
				</div>
			</div>
            <div class="wrap">
                <form class="clearfix">
                    <div class="fl">
                        <font>按照</font>
                        <select class="bp_m_select" name="bp_select">
                            <option value="1">标题</option>
                            <option value="2">内容</option>
                        </select>
                        <span>搜索</span>
                    </div>
                    <div class="fr">
                        <input id="keyword" name="keyword" type="text" placeholder="请输入关键词" />
                        <input type="button" value=" " id="btnkeyword" />
                    </div>
                </form>
            </div>
        </div>
        <div class="Marketing">
            <div class="wrap">
                <ul>
                    
                        <li class="clearfix">
                        <div class="fr">
                            
                            <h4><a target="_blank"  tppabs="http://www.xydec.com.cn/MarketingDel.aspx?m_id=4239">
                                                               【贵阳市】热烈庆祝中国银行＆晴坤装饰首届0首付月供家装节--...                               
                            </a></h4>
                            <h5><a target="_blank"  tppabs="http://www.xydec.com.cn/MarketingDel.aspx?m_id=4239">
                            	热烈庆祝！中国银行＆晴坤装饰 首届0首付月供家装节特惠活动圆满成功！ 7月21日，早晨的阳光还很柔和，中银大厦三楼的活动现场就已经热闹起来。中国银行和晴坤装饰的工作人员全部就位，静候活动的开始。虽然离活动开始还有一段时间，但已有客...</a></h5>
                            <p>
                                <span>
                                    <span><font>活动时间：</font>2018/07/21至2018/07/22</span>
                                    <span><font>活动状态：</font>已结束</span>
                                </span>
                            </p>
                            <h6 class="clearfix">
                                <div id="win" style="display:none; position:fixed; left:300px; top:100px; width:780px; height:456px; border:1px solid #aaa; background-color:#eee">
	                            <h2 style="position:absolute; left:0; top:0; width:100%; height:30px; line-height:30px; font-size:16px; margin:0; text-indent:10px; color:#666; background-color:#ddd">这是弹窗标题</h2>
	                            <span style="position:absolute; right:4px; top:4px; color:#aaa; cursor:pointer" onclick="win.style.display='none';">×</span>
	                            <div style="margin-top:30px; padding:10px; color:#888">这里是弹窗的文字内容</div>
                            </div>
                                <button onclick="win.style.display='block';"><font size="4">查看详情</font></button>
                            </h6>
                            
                        </div>
                    </li>
                    
                </ul>
            </div>
        </div>
        <div class="Paging">
            <form name="form1" method="post" action="http://www.xydec.com.cn/Marketing.aspx?kindcode=0102" id="form1" style="width: 1200px;">
<div>
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUKMTY5NzQ3Njc2OQ9kFgICAw9kFgICAQ8PFgYeCFBhZ2VTaXplAgoeEEN1cnJlbnRQYWdlSW5kZXgCAR4LUmVjb3JkY291bnQC0QJkZGSpdBnpZQWlqzgPNqZ778ga2Cc19hda64mpbTfr8HHaqQ==" />
</div>

<script language="Javascript"><!--
function ANP_goToPage(boxEl){if(boxEl!=null){var pi;if(boxEl.tagName=="SELECT"){pi=boxEl.options[boxEl.selectedIndex].value;}else{pi=boxEl.value;}location.href="http://www.xydec.com.cn/Marketing.aspx?kindcode=0102&page="+pi+"";}}
function ANP_checkInput(bid,mv){var el=document.getElementById(bid);var r=new RegExp("^\\s*(\\d+)\\s*$");
if(r.test(el.value)){if(RegExp.$1<1||RegExp.$1>mv){alert("页索引超出范围！");el.focus();el.select();return false;}
return true;}alert("页索引不是有效的数值！");el.focus();el.select();return false;}
function ANP_keydown(e,btnId){
var kcode;
if(window.event){kcode=e.keyCode;}
else if(e.which){kcode=e.which;}
var validKey=(kcode==8||kcode==46||kcode==37||kcode==39||(kcode>=48&&kcode<=57)||(kcode>=96&&kcode<=105));
if(!validKey){
if(kcode==13) document.getElementById(btnId).click();
if(e.preventDefault) e.preventDefault();else{event.returnValue=false};
}
}
--></script>
<div>

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="BC293E00" />
</div>
                
<!-- AspNetPager V7.0.2 for VS2005 & VS2008  Copyright:2003-2007 Webdiyer (www.webdiyer.com) -->
<!-- <div id="AspNetPager1" class="paginator" style="width:100%;text-align:right;">
<div align="right" style="width:75%;float:left;">
	<a disabled="disabled" style="margin-right:5px;">上一页</a><span class="cpb" style="margin-right:5px;">1</span><a href="javascript:if(confirm('http://www.xydec.com.cn/Marketing.aspx?kindcode=0102&page=2  \n\n???ļ??޷??? Teleport Ultra ????, ??Ϊ ??????, ????????????, ????Ŀ????ֹͣ??  \n\n?????ڷ??????ϴ??????'))window.location='http://www.xydec.com.cn/Marketing.aspx?kindcode=0102&page=2'" tppabs="http://www.xydec.com.cn/Marketing.aspx?kindcode=0102&page=2" style="margin-right:5px;">2</a><a href="javascript:if(confirm('http://www.xydec.com.cn/Marketing.aspx?kindcode=0102&page=3  \n\n???ļ??޷??? Teleport Ultra ????, ??Ϊ ??????, ????????????, ????Ŀ????ֹͣ??  \n\n?????ڷ??????ϴ??????'))window.location='http://www.xydec.com.cn/Marketing.aspx?kindcode=0102&page=3'" tppabs="http://www.xydec.com.cn/Marketing.aspx?kindcode=0102&page=3" style="margin-right:5px;">3</a><span style="margin-right:5px;"><a href="javascript:if(confirm('http://www.xydec.com.cn/Marketing.aspx?kindcode=0102&page=4  \n\n???ļ??޷??? Teleport Ultra ????, ??Ϊ ??????, ????????????, ????Ŀ????ֹͣ??  \n\n?????ڷ??????ϴ??????'))window.location='http://www.xydec.com.cn/Marketing.aspx?kindcode=0102&page=4'" tppabs="http://www.xydec.com.cn/Marketing.aspx?kindcode=0102&page=4">...</a></span><a href="javascript:if(confirm('http://www.xydec.com.cn/Marketing.aspx?kindcode=0102&page=2  \n\n???ļ??޷??? Teleport Ultra ????, ??Ϊ ??????, ????????????, ????Ŀ????ֹͣ??  \n\n?????ڷ??????ϴ??????'))window.location='http://www.xydec.com.cn/Marketing.aspx?kindcode=0102&page=2'" tppabs="http://www.xydec.com.cn/Marketing.aspx?kindcode=0102&page=2" style="margin-right:5px;">下一页</a>&nbsp;&nbsp;到   <input type="text" value="1" class="text" name="AspNetPager1_input" id="AspNetPager1_input" onkeydown="ANP_keydown(event,&#39;AspNetPager1_btn&#39;);" style="width:30px;width:40px" /> 页 <input type="Button" name="AspNetPager1" id="AspNetPager1_btn" value="确定" class="submit" onclick="if(ANP_checkInput(&#39;AspNetPager1_input&#39;,34)){ANP_goToPage(document.getElementById(&#39;AspNetPager1_input&#39;));}" />
</div><div class="pagecount" style="float:left;width:25%;">
	共 34 页
</div> -->
</div>
<!-- AspNetPager V7.0.2 for VS2005 & VS2008 End -->


            </form>
        </div>
        <style type="text/css">
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
            $("#AspNetPager1 span.cpb").eq(0).css("display", "inline-block").css("padding", "3px 12px").css("font-size", "18px");
            $("#AspNetPager1 a").eq(0).css("margin-left", "10px;");
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
                    <img alt="" src="img/201612229413.jpg" tppabs="http://www.xydec.com.cn/upload/1612/img/201612229413.jpg" />
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
                                
                                
                                <img class="lazyload" alt="关注集团微信公众号" data-original="upload/1612/img/201612229413.jpg" src="img/201612229413.jpg" tppabs="http://www.xydec.com.cn/upload/1612/img/201612229413.jpg" />
                                
                            </h4>
                            <p>关注集团微信公众号</p>
                        </li>
                        <li>
                            <h4>
                                
                                
                                <img class="lazyload" alt="关注手机端官网" data-original="upload/1712/img/201712181059593756989.jpg" src="img/201712181059593756989.jpg" tppabs="http://www.xydec.com.cn/upload/1712/img/201712181059593756989.jpg" />
                                
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


