<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head><meta http-equiv="Content-Type" content="text/html; charset=utf-8" /><title>在建工地-广东晴坤装饰集团股份有限公司</title>
<meta name="keywords" content="晴坤装饰,晴坤装饰官网,装饰公司,装修公司,家庭装修,室内装修,豪华装修,别墅装修,装修效果图,装修设计,晴坤,装修,装饰,整装,家装,工装" />
<meta name="description" content="晴坤装饰创办于1991年，中国装饰装修行业十大品牌！全国400+分支机构，50000+专业人员，27年专注大中型住宅、酒店、办公空间等装修设计与施工服务。爱家专线：4009617001！晴坤装饰每年为30000+家庭提供定制设计、环保施工、材料配送等高品质装修服务，深受百万家庭信赖！" />

<%
	String path = request.getContextPath();
	String basePath = path + "/foreground/";
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


    <script type="text/javascript">
        
        var hotjson = [{"id":"4816","Name":"金旺大厦4楼工艺馆"},{"id":"196","Name":"泊爵广悦轩别墅"},{"id":"376","Name":"科城山庄A8栋"},{"id":"385","Name":"双汇国际"},{"id":"386","Name":"长青御府"}];
        $(function () {
            //$(levejson).each(function(k,v){                
            //    $(".fl_leve").append("<option value=\"" + v.Code + "\">" + v.Name + "</option>");
            //});
            //$(stylejson).each(function(sk,sv){                
            //    $(".fl_style").append("<option value=\"" + sv.Code + "\">" + sv.Name + "</option>");
            //});
            //$(experiencejson).each(function(ek,ev){                
            //    $(".fl_experience").append("<option value=\"" + ev.Code + "\">" + ev.Name + "</option>");
            //});
            $(hotjson).each(function(hk,hv){                
                $(".fl_hot").append("<option value=\"" + hv.id + "\">" + hv.Name + "</option>");
            });

            loadCitySiteLive();

            setA();            

            $(".fl_province").change(function () {
                var provinceid = $(".fl_province").val();
                if (provinceid != "") {
                    $.ajax({
                        type: "POST",
                        url: "/ajax/ajax.aspx?action=load_city&t=" + Math.random(),
                        data: { id: provinceid },
                        dataType: "json",
                        success: function (data) {
                            if (data != "") {
                                $(".fl_city").empty();
                                $(".fl_city").append("<option value=\"\">市</option>");
                                $(data).each(function (k, v) {
                                    $(".fl_city").append("<option value=\"" + v.id + "\">" + v.areaname + "</option>");
                                });                                
                            }
                        }
                    });
                }
            });

            $(".fl_city").change(function () {
                var url = window.location.href;
                if ($(".fl_province").val() != "" && $(".fl_province").val() != undefined)
                    url = UrlAddParams(url, "provincecode", $(".fl_province").val());
                if ($(".fl_city").val() != "" && $(".fl_city").val() != undefined)
                    url = UrlAddParams(url, "citycode", $(".fl_city").val());
                location.href = url;
            });
            $(".fl_hot").change(function () {
                var url = window.location.href;
                if ($(".fl_hot").val() != "" && $(".fl_hot").val() != undefined)
                    url = UrlAddParams(url, "hotcode", $(".fl_hot").val());
                location.href = url;
            });
        });

        function loadCitySiteLive() {
            $.ajax({
                type: "POST",
                url: "/ajax/ajax.aspx?action=load_province&t=" + Math.random(),
                dataType: "json",
                success: function (data) {
                    if (data != "") {
                        $(".fl_province").empty();
                        $(".fl_province").append("<option value=\"\">省</option>");
                        $(data).each(function (k, v) {
                            $(".fl_province").append("<option value=\"" + v.id + "\">" + v.areaname + "</option>");
                        });
                        var provincecode = 0;
                        if(provincecode == "")
                        {
                            $(".fl_province option:eq(0)").prop("selected",true);
                        }else{
                            $(".fl_province").find("option").each(function(){
                                if($(this).val()==provincecode){
                                    $(this).prop("selected",true);
                                    $.ajax({
                                        type: "POST",
                                        url: "/ajax/ajax.aspx?action=load_city&t=" + Math.random(),
                                        data: { id: provincecode },
                                        dataType: "json",
                                        success: function (data) {
                                            if (data != "") {
                                                $(".fl_city").empty();
                                                $(".fl_city").append("<option value=\"\">市</option>");
                                                $(data).each(function (k, v) {
                                                    $(".fl_city").append("<option value=\"" + v.id + "\">" + v.areaname + "</option>");
                                                });
                                                var citycode = 0;
                                                if(citycode == "")
                                                {
                                                    $(".fl_city option:eq(0)").prop("selected",true);
                                                }else{
                                                    $(".fl_city").find("option").each(function(){
                                                        if($(this).val()==citycode)
                                                            $(this).prop("selected",true);
                                                    });
                                                }
                                            }
                                        }
                                    });                                   
                                }
                            });
                        }                        
                    }
                }
            });
        }

        function setA()
        {
            var stylecode = 0;
            var layoutcode = 0;
            var stagecode = '0';
            var sizecode = 0;
            var levecode = 0;
            var experiencecode = 0; 
            var hotcode = 0;
            var keyword = "";
            var buliding = "";            

            setTimeout(function(){
                if(stylecode == -1)
                {
                    $("#a_style").css("color", "#ff0000");
                    $("#a_style").siblings().css("color", "#666");
                    $(".fl_style option:eq(0)").prop("selected",true);
                }else
                {
                    $("#a_style_" + stylecode).css("color", "#ff0000");
                    $("#a_style_" + stylecode).siblings().css("color", "#666");
                    $("#a_style").css("color", "#999");
                    $(".fl_style").find("option").each(function(){
                        if($(this).val() == stylecode)
                            $(this).prop("selected",true);
                    });
                }
                if(layoutcode == -1)
                {
                    $("#a_layout").css("color", "#ff0000");
                    $("#a_layout").siblings().css("color", "#666");
                    $(".fl_layout option:eq(0)").prop("selected",true);
                }else
                {
                    $("#a_layout_" + layoutcode).css("color", "#ff0000");
                    $("#a_layout_" + layoutcode).siblings().css("color", "#666");
                    $("#a_layout").css("color", "#999");
                    $(".fl_layout").find("option").each(function(){
                        if($(this).val() == layoutcode)
                            $(this).prop("selected",true);
                    });
                }
                if(stagecode == -1)
                {
                    $("#a_stage").css("color", "#ff0000");
                    $("#a_stage").siblings().css("color", "#666");
                }else
                {
                    $("#a_stage_" + stagecode).css("color", "#ff0000");
                    $("#a_stage_" + stagecode).siblings().css("color", "#666");
                    $("#a_stage").css("color", "#999");
                }
                if(sizecode == -1)
                {
                    $("#a_size").css("color", "#ff0000");
                    $("#a_size").siblings().css("color", "#666");
                    $(".fl_size option:eq(0)").prop("selected",true);
                }else
                {
                    $("#a_size_" + sizecode).css("color", "#ff0000");
                    $("#a_size_" + sizecode).siblings().css("color", "#666");
                    $("#a_size").css("color", "#999");
                    $(".fl_size").find("option").each(function(){
                        if($(this).val() == sizecode)
                            $(this).prop("selected",true);
                    });
                }

                if(levecode == -1)
                {
                    $(".fl_leve option:eq(0)").prop("selected",true);
                }else{
                    $(".fl_leve").find("option").each(function(){
                        if($(this).val()==levecode){
                            $(this).prop("selected",true);
                            $(".fl_leve").change();
                        }
                    });
                }

                if(experiencecode == -1)
                {
                    $(".fl_experience option:eq(0)").prop("selected",true);
                }else{
                    $(".fl_experience").find("option").each(function(){
                        if($(this).val()==experiencecode){
                            $(this).prop("selected",true);
                            $(this).change();
                        }
                    });
                }

                if(hotcode == -1)
                {
                    $(".fl_hot option:eq(0)").prop("selected",true);
                }else{
                    $(".fl_hot").find("option").each(function(){
                        if($(this).val()==hotcode)
                            $(this).prop("selected",true);
                    });
                }

                if(keyword != null && keyword != "")
                {
                    $(".keyword").val(keyword);
                }else{
                    $(".keyword").val("");
                }
                if(buliding == -1)
                {
                    $("#a_buliding").css("color", "#ff0000");
                    $("#a_buliding").siblings().css("color", "#666");
                }else
                {
                    $("#a_buliding_" + buliding).css("color", "#ff0000");
                    $("#a_buliding_" + buliding).siblings().css("color", "#666");
                    $("#a_buliding").css("color", "#999");
                }
                
                
            },100);            
        }
    </script>
<title>

</title></head>
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
                        <a href="news_center.jsp" tppabs="http://www.xydec.com.cn/Marketing.aspx?type=all">营销活动</a>
                        
                        <div class="Drop_Down">
                            <div class="clearfix">
                                <ul>
                                    
                                    <li>
                                        <a href="news_center.jsp" tppabs="http://www.xydec.com.cn/Marketing.aspx?kindcode=0101" >企业新闻</a>
                                    </li>
                                    
                                    <li>
                                        <a href="notice_center.jsp" tppabs="http://www.xydec.com.cn/Marketing.aspx?kindcode=0102" >最新公告</a>
                                    </li>
                                    
                                </ul>
                            </div>
                        </div>
                        
                    </li>
                    
                    
                    <li>
                        <a href="product_center.jsp" tppabs="http://www.xydec.com.cn/CaseList.aspx">产品中心</a>
                        
                        
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
                                        <a href="building.jsp" tppabs="http://www.xydec.com.cn/SiteLive.aspx" >在建工地</a>
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
                                        <a href="service_process.jsp" tppabs="http://www.xydec.com.cn/NewList.aspx?code=0704" >留言吧</a>
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
                    
                    <li style="background-image: url(&quot;../img/201704071409483809340.jpg&quot;); position: absolute; width: 1366px; left: 0px; top: 0px; display: none;"><a target="_blank" tppabs="http://www.xydec.com.cn/Detail.aspx?code=0603"></a></li>
                    
                    <li style="background-image: url(&quot;../img/201704071410248183840.jpg&quot;); position: absolute; width: 1366px; left: 0px; top: 0px; display: list-item;"><a target="_blank" tppabs="http://www.xydec.com.cn/Detail.aspx?code=0602"></a></li>
                    
                    <li style="background-image: url(&quot;../img/201704071410434744838.jpg&quot;); position: absolute; width: 1366px; left: 0px; top: 0px; display: none;"><a target="_blank" tppabs="http://www.xydec.com.cn/Detail.aspx?code=0608"></a></li>
                    
                    <li style="background-image: url(&quot;../img/201704071527517088423.jpg&quot;); position: absolute; width: 1366px; left: 0px; top: 0px; display: none;"><a target="_blank" tppabs="http://www.xydec.com.cn/Detail.aspx?code=0609"></a></li>
                    
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
					<a href="../../index.jsp">首页</a>
					<font>&gt;</font>
					<a href="material_overview.jsp">品质工程</a>
					<font>&gt;</font>
					<span style="color: red;">在建工地</span>
					</div>
				</div>
			</div>
            <div class="wrap">
                <ul>
                    <li class="clearfix">
                        <span>
                            <img alt="" class="lazyload" data-original="images/icon_img/15.png" src="../img/icon_15.png" tppabs="http://www.xydec.com.cn/images/icon_img/15.png" />阶段</span>
                        <a id="a_stage" href="javascript:;" onclick="selectCase('stage',-1)" class="fsx">全部</a>
                        
                        <a id="a_stage_1701" onclick="selectCase('stage',1701)" href="javascript:;">开工大吉</a>
                        
                        <a id="a_stage_1702" onclick="selectCase('stage',1702)" href="javascript:;">墙体打拆</a>
                        
                        <a id="a_stage_1703" onclick="selectCase('stage',1703)" href="javascript:;">砌墙阶段</a>
                        
                        <a id="a_stage_1704" onclick="selectCase('stage',1704)" href="javascript:;">水电阶段</a>
                        
                        <a id="a_stage_1705" onclick="selectCase('stage',1705)" href="javascript:;">泥工阶段</a>
                        
                        <a id="a_stage_1706" onclick="selectCase('stage',1706)" href="javascript:;">木工阶段</a>
                        
                        <a id="a_stage_1707" onclick="selectCase('stage',1707)" href="javascript:;">油漆阶段</a>
                        
                        <a id="a_stage_1708" onclick="selectCase('stage',1708)" href="javascript:;">安装阶段</a>
                        
                        <a id="a_stage_1709" onclick="selectCase('stage',1709)" href="javascript:;">完工</a>
                        
                    </li>
                    <li class="clearfix">
                        <span>
                            <img alt="" class="lazyload" data-original="images/icon_img/16.png" src="../img/icon_16.png" tppabs="http://www.xydec.com.cn/images/icon_img/16.png" />面积</span>
                        <a id="a_size" onclick="selectCase('size',-1)" class="fsx">全部</a>
                        
                        <a id="a_size_1601" onclick="selectCase('size',1601)" href="javascript:;">100平米以下</a>
                        
                        <a id="a_size_1602" onclick="selectCase('size',1602)" href="javascript:;">101-200平米</a>
                        
                        <a id="a_size_1603" onclick="selectCase('size',1603)" href="javascript:;">201-300平米</a>
                        
                        <a id="a_size_1606" onclick="selectCase('size',1606)" href="javascript:;">301平米以上	</a>
                        
                    </li>
                    
                    
                    <li class="clearfix">
                        <span>
                            <img alt="" class="lazyload" data-original="images/icon_img/17.png" src="../img/icon_17.png" tppabs="http://www.xydec.com.cn/images/icon_img/17.png" />户型</span>
                        <a id="a_layout" onclick="selectCase('layout',-1)" class="fsx">全部</a>
                        
                        <a id="a_layout_1401" onclick="selectCase('layout',1401)" href="javascript:;">二居</a>
                        
                        <a id="a_layout_1402" onclick="selectCase('layout',1402)" href="javascript:;">三居</a>
                        
                        <a id="a_layout_1403" onclick="selectCase('layout',1403)" href="javascript:;">四居</a>
                        
                        <a id="a_layout_1404" onclick="selectCase('layout',1404)" href="javascript:;">五居</a>
                        
                        <a id="a_layout_1405" onclick="selectCase('layout',1405)" href="javascript:;">平层</a>
                        
                        <a id="a_layout_1406" onclick="selectCase('layout',1406)" href="javascript:;">复式</a>
                        
                        <a id="a_layout_1407" onclick="selectCase('layout',1407)" href="javascript:;">别墅</a>
                        
                        <a id="a_layout_1408" onclick="selectCase('layout',1408)" href="javascript:;">办公空间</a>
                        
                    </li>
                </ul>
                <form id="form_s" class="clearfix">
                    <div class="fr">
                        <input type="text" class="keyword" placeholder="按照楼盘名称搜索" />
                        <input id="case_q" type="button" value=" " />
                    </div>
                </form>
            </div>
        </div>
        <div class="B-search">
            <div class="wrap clearfix">
                <div class="B-s1">
                    <ul>
                        
                        <li class="clearfix">
                            <div class="fl">
                                <img alt="" class="lazyload" data-original="upload/1704/img/201704111450102797152.jpg" src="../img/201704111450102797152.jpg" tppabs="http://www.xydec.com.cn/upload/1704/img/201704111450102797152.jpg" />
                            </div>
                            <div class="fr">
                                <h4>金旺大厦4楼工艺馆</h4>
                                <div class="a1 clearfix">
                                    <ul>
                                        <li>城市：云浮市</li>
                                        <li>户型：平层</li>
                                    </ul>
                                </div>
                                <div class="a2 clearfix on1">
                                    
                                    <span class="gb1">砌墙阶段</span>
                                    
                                    <span class="gb1">水电阶段</span>
                                    
                                    <span class="gb1">泥工阶段</span>
                                    
                                    <span class="gb1">木工阶段</span>
                                    
                                    <span class="gb1">油漆阶段</span>
                                    
                                </div>
                            </div>
                        </li>
                        
                        <li class="clearfix">
                            <div class="fl">
                                <img alt="" class="lazyload" data-original="upload/1703/img/201703221046135702090.jpg" src="../img/201703221046135702090.jpg" tppabs="http://www.xydec.com.cn/upload/1703/img/201703221046135702090.jpg" />
                            </div>
                            <div class="fr">
                                <h4>泊爵广悦轩别墅</h4>
                                <div class="a1 clearfix">
                                    <ul>
                                        <li>城市：广州市</li>
                                        <li>户型：别墅</li>
                                    </ul>
                                    
                                    
                                </div>
                                <div class="a2 clearfix on1">
                                    
                                    <span class="gb1">开工大吉</span>
                                    
                                    <span class="gb1">水电阶段</span>
                                    
                                    <span class="gb1">泥工阶段</span>
                                    
                                    <span class="gb1">木工阶段</span>
                                    
                                    <span class="gb1">油漆阶段</span>
                                    
                                    <span class="gb1">完工</span>
                                    
                                </div>
                            </div>
                        </li>
                        
                        <li class="clearfix">
                            <div class="fl">
                                <img alt="" class="lazyload" data-original="upload/1703/img/201703231058230542574.jpg" src="../img/201703231058230542574.jpg" tppabs="http://www.xydec.com.cn/upload/1703/img/201703231058230542574.jpg" />
                            </div>
                            <div class="fr">
                                <h4>科城山庄A8栋</h4>
                                <div class="a1 clearfix">
                                    <ul>
                                        <li>城市：广州市</li>
                                        <li>户型：四居</li>
                                    </ul>
                                    
                                    
                                </div>
                                <div class="a2 clearfix on1">
                                    
                                    <span class="gb1">开工大吉</span>
                                    
                                    <span class="gb1">泥工阶段</span>
                                    
                                    <span class="gb1">木工阶段</span>
                                    
                                    <span class="gb1">油漆阶段</span>
                                    
                                    <span class="gb1">完工</span>
                                    
                                </div>
                            </div>
                        </li>
                        
                        <li class="clearfix">
                            <div class="fl">
                                <img alt="" class="lazyload" data-original="upload/1703/img/201703191112519327836.jpg" src="../img/201703191112519327836.jpg" tppabs="http://www.xydec.com.cn/upload/1703/img/201703191112519327836.jpg" />
                            </div>
                            <div class="fr">
                                <h4>双汇国际</h4>
                                <div class="a1 clearfix">
                                    <ul>
                                        <li>城市：扬州市</li>
                                        <li>户型：四居</li>
                                    </ul>
                                    
                                    
                                </div>
                                <div class="a2 clearfix on1">
                                    
                                    <span class="gb1">开工大吉</span>
                                    
                                    <span class="gb1">砌墙阶段</span>
                                    
                                    <span class="gb1">水电阶段</span>
                                    
                                    <span class="gb1">油漆阶段</span>
                                    
                                </div>
                            </div>
                        </li>
                        
                        <li class="clearfix">
                            <div class="fl">
                                <img alt="" class="lazyload" data-original="upload/1703/img/201703211646468674913.jpg" src="../img/201703211646468674913.jpg" tppabs="http://www.xydec.com.cn/upload/1703/img/201703211646468674913.jpg" />
                            </div>
                            <div class="fr">
                                <h4>长青御府</h4>
                                <div class="a1 clearfix">
                                    <ul>
                                        <li>城市：扬州市</li>
                                        <li>户型：五居</li>
                                    </ul>
                                    
                                    
                                </div>
                                <div class="a2 clearfix on1">
                                    
                                    <span class="gb1">开工大吉</span>
                                    
                                    <span class="gb1">水电阶段</span>
                                    
                                    <span class="gb1">泥工阶段</span>
                                    
                                    <span class="gb1">木工阶段</span>
                                    
                                    <span class="gb1">完工</span>
                                    
                                </div>
                            </div>
                        </li>
                        
                        <li class="clearfix">
                            <div class="fl">
                                <img alt="" class="lazyload" data-original="upload/1703/img/201703182112314486079.jpg" src="../img/201703182112314486079.jpg" tppabs="http://www.xydec.com.cn/upload/1703/img/201703182112314486079.jpg" />
                            </div>
                            <div class="fr">
                                <h4>国际公馆</h4>
                                <div class="a1 clearfix">
                                    <ul>
                                        <li>城市：扬州市</li>
                                        <li>户型：三居</li>
                                    </ul>
                                    
                                    
                                </div>
                                <div class="a2 clearfix on1">
                                    
                                    <span class="gb1">开工大吉</span>
                                    
                                    <span class="gb1">水电阶段</span>
                                    
                                    <span class="gb1">泥工阶段</span>
                                    
                                    <span class="gb1">木工阶段</span>
                                    
                                </div>
                            </div>
                        </li>
                        
                        <li class="clearfix">
                            <div class="fl">
                                <img alt="" class="lazyload" data-original="upload/1703/img/201703201403262734705.jpg" src="../img/201703201403262734705.jpg" tppabs="http://www.xydec.com.cn/upload/1703/img/201703201403262734705.jpg" />
                            </div>
                            <div class="fr">
                                <h4>鼎盛大观1#609郑总</h4>
                                <div class="a1 clearfix">
                                    <ul>
                                        <li>城市：泉州市</li>
                                        <li>户型：三居</li>
                                    </ul>
                                    
                                    
                                </div>
                                <div class="a2 clearfix on1">
                                    
                                    <span class="gb1">水电阶段</span>
                                    
                                    <span class="gb1">泥工阶段</span>
                                    
                                    <span class="gb1">木工阶段</span>
                                    
                                    <span class="gb1">油漆阶段</span>
                                    
                                </div>
                            </div>
                        </li>
                        
                        <li class="clearfix">
                            <div class="fl">
                                <img alt="" class="lazyload" data-original="upload/1703/img/201703201404393201122.jpg" src="../img/201703201404393201122.jpg" tppabs="http://www.xydec.com.cn/upload/1703/img/201703201404393201122.jpg" />
                            </div>
                            <div class="fr">
                                <h4>世纪名郡</h4>
                                <div class="a1 clearfix">
                                    <ul>
                                        <li>城市：扬州市</li>
                                        <li>户型：三居</li>
                                    </ul>
                                    
                                    
                                </div>
                                <div class="a2 clearfix on1">
                                    
                                    <span class="gb1">开工大吉</span>
                                    
                                    <span class="gb1">水电阶段</span>
                                    
                                    <span class="gb1">木工阶段</span>
                                    
                                    <span class="gb1">油漆阶段</span>
                                    
                                </div>
                            </div>
                        </li>
                        
                        <li class="clearfix">
                            <div class="fl">
                                <img alt="" class="lazyload" data-original="upload/1705/img/201705101624215684517.jpg" src="../img/201705101624215684517.jpg" tppabs="http://www.xydec.com.cn/upload/1705/img/201705101624215684517.jpg" />
                            </div>
                            <div class="fr">
                                <h4>加州阳光徐女士雅居</h4>
                                <div class="a1 clearfix">
                                    <ul>
                                        <li>城市：东莞市</li>
                                        <li>户型：三居</li>
                                    </ul>
                                    
                                    
                                </div>
                                <div class="a2 clearfix on1">
                                    
                                    <span class="gb1">水电阶段</span>
                                    
                                    <span class="gb1">泥工阶段</span>
                                    
                                    <span class="gb1">木工阶段</span>
                                    
                                    <span class="gb1">油漆阶段</span>
                                    
                                    <span class="gb1">安装阶段</span>
                                    
                                </div>
                            </div>
                        </li>
                        
                        <li class="clearfix">
                            <div class="fl">
                                <img alt="" class="lazyload" data-original="upload/1706/img/201706121611380694100.jpg" src="../img/201706121611380694100.jpg" tppabs="http://www.xydec.com.cn/upload/1706/img/201706121611380694100.jpg" />
                            </div>
                            <div class="fr">
                                <h4>依云华府</h4>
                                <div class="a1 clearfix">
                                    <ul>
                                        <li>城市：佛山市</li>
                                        <li>户型：四居</li>
                                    </ul>
                                    
                                    
                                </div>
                                <div class="a2 clearfix on1">
                                    
                                    <span class="gb1">水电阶段</span>
                                    
                                    <span class="gb1">泥工阶段</span>
                                    
                                    <span class="gb1">木工阶段</span>
                                    
                                    <span class="gb1">油漆阶段</span>
                                    
                                </div>
                            </div>
                        </li>
                        
                    </ul>
                </div>
                <div class="B-s2">
                    <div class="Other">
						<a target="_blank">
                            <img src="../img/201708081047283536103.jpg" />
                        </a>
						<a target="_blank">
                            <img src="../img/201803011647262677136.jpg" />
                        </a>
						<a target="_blank">
                            <img src="../img/201803011647262677136.jpg" />
                        </a>
                    </div>
                </div>
            </div>
        </div>
        <div class="Paging">
            <form name="form1" method="post" action="http://www.xydec.com.cn/SiteLive.aspx" id="form1" style="width: 1200px;">
<div>
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUJNjM0MTcyMDQ3D2QWAgIDD2QWAgIBDw8WBh4IUGFnZVNpemUCCh4QQ3VycmVudFBhZ2VJbmRleAIBHgtSZWNvcmRjb3VudAKIB2RkZDjGgTlLMlc3pNh47QLxxh/6g3tLLkfDcP7j3xTQ8fjO" />
</div>

<script language="Javascript"><!--
function ANP_goToPage(boxEl){if(boxEl!=null){var pi;if(boxEl.tagName=="SELECT"){pi=boxEl.options[boxEl.selectedIndex].value;}else{pi=boxEl.value;}location.href="http://www.xydec.com.cn/SiteLive.aspx?page="+pi+"";}}
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

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="5160E5FC" />
</div>
                
<!-- AspNetPager V7.0.2 for VS2005 & VS2008  Copyright:2003-2007 Webdiyer (www.webdiyer.com) -->
<div id="AspNetPager1" class="paginator" style="width:100%;text-align:right;">
<div align="right" style="width:75%;float:left;">
</div><div class="pagecount" style="float:left;width:25%;">
	共 91 页
</div>
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
                                
                                
                                <img class="lazyload" alt="关注集团微信公众号" data-original="upload/1612/img/201612229413.jpg" src="../img/201612229413.jpg" tppabs="http://www.xydec.com.cn/upload/1612/img/201612229413.jpg" />
                                
                            </h4>
                            <p>关注集团微信公众号</p>
                        </li>
                        <li>
                            <h4>
                                
                                
                                <img class="lazyload" alt="关注手机端官网" data-original="upload/1712/img/201712181059593756989.jpg" src="../img/201712181059593756989.jpg" tppabs="http://www.xydec.com.cn/upload/1712/img/201712181059593756989.jpg" />
                                
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
        setNav(5);
    </script>
    
</body>
</html>

