<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head><meta http-equiv="Content-Type" content="text/html; charset=utf-8" /><title>晴坤装饰集团股份有限公司</title>
<meta name="keywords" content="晴坤装饰,晴坤装饰官网,装饰公司,装修公司,家庭装修,室内装修,豪华装修,别墅装修,装修效果图,装修设计,晴坤,装修,装饰,整装,家装,工装" />
<meta name="description" content="晴坤装饰创办于1991年，中国装饰装修行业十大品牌！全国400+分支机构，50000+专业人员，27年专注大中型住宅、酒店、办公空间等装修设计与施工服务。爱家专线：4009617001！晴坤装饰每年为30000+家庭提供定制设计、环保施工、材料配送等高品质装修服务，深受百万家庭信赖！" />
<link rel="shortcut icon" href="images/favicon.ico">
<link href="foreground/css/style.css"  type="text/css" rel="stylesheet" />
<script type="text/javascript" src="foreground/js/jquery.js" ></script>
<script type="text/javascript" src="foreground/js/jquery.lazyload.min.js" ></script>
<script type="text/javascript" src="foreground/js/jquery.SuperSlide.2.1.1.js" ></script>
<script type="text/javascript" src="foreground/js/slick.min.js"></script>
<script type="text/javascript" src="foreground/js/layer.js" ></script>
<script type="text/javascript" src="foreground/js/form_js.js" ></script>
<script type="text/javascript" src="foreground/js/js.js" ></script>
<script type="text/javascript" src="foreground/js/ajax.js" ></script>
<script>
var _hmt = _hmt || [];
(function() {
  var hm = document.createElement("script");
  hm.src = "hm.js-bc4d0695158d3e46228dd96a3b56fee4"/*tpa=https://hm.baidu.com/hm.js?bc4d0695158d3e46228dd96a3b56fee4*/;
  var s = document.getElementsByTagName("script")[0];
  s.parentNode.insertBefore(hm, s);
})();
</script>


    <script type="text/javascript" src="iplookup.php-format=js" ></script>
    <script type="text/javascript" src="foreground/js/uaredirect.js" ></script>
    <script type="text/javascript">

        uaredirect("http://m.xydec.com.cn/m/WapDefault.aspx");

        var myprovince = remote_ip_info['province'];
        var mycity = remote_ip_info['city'];

        $(function () {

            loadOu();

            $("img.lazyload").lazyload({
                effect: "fadeIn",
                threshold: 180,
                skip_invisible: false,
                container: $(".bd_i3")
            });

            var T = setInterval(function () {
                $('.Region').fadeIn();
                clearInterval(T);
            }, 10000);

            var Y = setInterval(function () {
                $('.Region').fadeOut();
                clearInterval(Y);
            }, 50000);



            $(".index_02>.wrap>.mian>.hd>.clearfix>li:first").click();
            $("http://www.xydec.com.cn/.index_06 .mian").slide({ titCell: ".hd li", mainCell: "http://www.xydec.com.cn/.bd div.fr", effect: "fold", trigger: "mouseover", interTime: 7000 });
            $(".index_06 .mian .bd>div.fl").slide({ titCell: "._hd ul", mainCell: "._bd ul", autoPage: true, effect: "left", trigger: "mouseover", autoPlay: true, interTime: 7000 });



        });

        function loadOu() {
            $("#areaname").val(mycity);

            $.ajax({
                type: "POST",
                url: "/ajax/ajax.aspx?action=getou&t=" + Math.random(),
                data: { areaname: $("#areaname").val() },
                dataType: "html",
                success: function (data) {
                    $("#ul_ou").empty();
                    $("#ul_ou").append(data);
                    $("#ou_count").text($("#ul_ou li").length);
                }
            });
        }
    </script>
<title>

</title></head>
<body>

<%
    String path = request.getContextPath();
%>
<div class="header">
    
    <div class="Menu">
        <div class="wrap clearfix">
            <div class="logo">
                <a href="index.jsp" >
                    <img alt="" class="lazyload" data-original="upload/1702/img/201702230818558672167.png" src="foreground/img/201702230818558672167.png" /></a>
            </div>
            <div class="Nav">
                <ul class="clearfix">
                    <li><a href="index.jsp" >首页</a></li>
                    <li>
                        <a >走进晴坤</a>
                        <div class="Drop_Down">
                            <div class="clearfix">
                                <ul>
                                    <li>
                                        <a href="PassageServlet?action=find_culture_group_overview" >企业概况</a>
                                    </li>
                                    
                                    <li>
                                        <a href="PassageServlet?action=find_culture_brand_introduction"  >品牌介绍</a>
                                    </li>
                                    
                                    <li>
                                        <a href="PassageServlet?action=find_culture_project_advantages"  >项目优势</a>
                                    </li>
                                    
                                    
                                    
                                </ul>
                            </div>
                        </div>
                        
                    </li>
                    
                    <li>
                        <a href="NewsServlet?action=show_all_news" >营销活动</a>

                        
                        <div class="Drop_Down">
                            <div class="clearfix">
                                <ul>
                                    
                                    <li>
                                        <a href="<%=path %>/NewsServlet?action=show_all_news" >企业新闻</a>

                                    </li>
                                    
                                    <li>
                                        <a href="foreground/jsps/notice_center.jsp"  >最新公告</a>
                                    </li>
                                    
                                </ul>
                            </div>
                        </div>
                        
                    </li>
                    
                    
                    <li>
                        <a href="<%=path%>/ProductsServlet?action=showAllProducts" >产品中心</a>
                        
                        
                    </li>
                    
                    <li>
                        <a href="PassageServlet?action=find_material_overview" >品质工程</a>
                        
                        <div class="Drop_Down">
                            <div class="clearfix">
                                <ul>
                                    
                                    
                                    
                                    <li>
                                        <a href="PassageServlet?action=find_material_overview"  >材料概述</a>
                                    </li>
                                    
                                    <li>
                                        <a href="<%=path%>/ProductsServlet?action=showAllIsBuildingProducts"  >在建工地</a>
                                    </li>
                                    
                                    <li>
                                        <a href="PassageServlet?action=find_process_patent"  >工艺专利</a>
                                    </li>
                                    
                                </ul>
                            </div>
                        </div>
                        
                    </li>
                    
                    <li>
                        <a href="PassageServlet?action=find_service_guarantee" >无忧服务</a>
                        
                        <div class="Drop_Down">
                            <div class="clearfix">
                                <ul>
                                    
                                    <li>
                                        <a href="foreground/jsps/service_process.jsp" >留言吧</a>
                                    </li>
                                    
                                    
                                    
                                    <li>
                                        <a href="PassageServlet?action=find_service_guarantee"  >服务流程</a>
                                    </li>
                                    
                                    <li>
                                        <a href="PassageServlet?action=find_service_process"  >服务保障</a>
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


    <div class="Region">
        <div class="R-bg"></div>
        <div class="R-box">
            <div class="R-cg">
                <span>当前位置：<font><script>document.write(mycity);</script>市</font></span>
                <input name="areaname" type="hidden" id="areaname" />
                <h4>
                    <script>document.write(mycity);</script>
                    市有以下<label id="ou_count"></label>家</h4>
                <i></i>
            </div>
            <ul id="ul_ou"></ul>
        </div>
    </div>



<div class="sub-banner">
            <div class="bd">
                <ul>
                    
                    <li style="background-image: url(foreground/img/201808221708062621994.jpg);"><a target="_blank" ></a></li>
                    
                    <li style="background-image: url(foreground/img/201802071701184737199.jpg);"><a target="_blank" ></a></li>
                    
                    <li style="background-image: url(foreground/img/201805041455050106672.jpg);"><a target="_blank" ></a></li>
                    
                    <li style="background-image: url(foreground/img/201805101053187152261.jpg);"><a target="_blank"></a></li>
                    
                </ul>
            </div>
            <div class="hd">
                <ul></ul>
            </div>
        </div>
        <script type="text/javascript">
            jQuery(".sub-banner").slide({ titCell: ".hd ul", mainCell: ".bd ul", effect: "fold", autoPlay: true, autoPage: true, trigger: "click" });
        </script>


    <div class="content">
        <div class="index_01">
            <div class="wrap">
                <ul class="clearfix">
                    
                    <li class="a1">
                        <a target="_blank" href="foreground/jsps/building.jsp" >
                            <img alt="在建工地" src="foreground/img/201702081629373825889.png"  />
                            <span>在建工地</span>
                            <font>遍布全国20多个省、市、自治区。晴坤就在您身边。</font>
                        </a>
                    </li>
                    
                    <li class="a2">
                        <a target="_blank" href="foreground/jsps/process_patent.jsp" >
                            <img alt="工艺专利" src="foreground/img/201702081630044132997.png"  />
                            <span>工艺专利</span>
                            <font>载誉亚太，实力见证。
设计幸福，为爱筑巢。
创造经典，发布潮流。
</font>
                        </a>
                    </li>
                    
                    <li class="a3">
                        <a target="_blank" href="foreground/jsps/product_center.jsp">
                            <img alt="产品中心" src="foreground/img/201702081630180695158.png"/>
                            <span>产品中心</span>
                            <font>量身定制整体家装，软硬兼施全案设计，打造不可复制可收藏空间。</font>
                        </a>
                    </li>
                    
                    <li class="a4">
                        <a target="_blank" href="foreground/jsps/process_overview.jsp" >
                            <img alt="工艺概述" src="foreground/img/201702081630334136004.png"  />
                            <span>工艺概述</span>
                            <font>六大施工标准、八级质量管理体系、三百六十道施工工序。</font>
                        </a>
                    </li>
                    
                    <li class="a5">
                        <a target="_blank" href="foreground/jsps/material_overview.jsp" >
                            <img alt="材料概述" src="foreground/img/201701112020551802441.png"  />
                            <span>材料概述</span>
                            <font>厂家直供，专业定制。行业有影响力的品牌为您提供优质的产品。
</font>
                        </a>
                    </li>
                    
                    <li class="a6">
                        <a target="_blank" href="foreground/jsps/service_guarantee.jsp" >
                            <img alt="服务保障 " src="foreground/img/201702091529054342760.png"  />
                            <span>服务保障 </span>
                            <font>隐蔽工程五年质保，其他项目两年质保，终身维护。</font>
                        </a>
                    </li>
                    
                </ul>
            </div>
        </div>
        <div class="index_02">
            <div class="wrap">
                <div class="tit">
                    
                    <h4>优选数千套精美案例，超万张照片供您欣赏</h4>
                    <h3>产品中心</h3>
                    
                </div>
                <div class="mian">
                    <div class="hd">
                        <ul class="clearfix">
                            
                            <li class="on" onclick="getCase(1201)">现代简约</li>
                            
                            <li  onclick="getCase(1202)">简欧</li>
                            
                            <li  onclick="getCase(1203)">新中式</li>
                            
                            <li  onclick="getCase(1204)">新古典</li>
                            
                            <li  onclick="getCase(1205)">现代</li>
                            
                            <li  onclick="getCase(1206)">田园</li>
                            
                            <li  onclick="getCase(1207)">地中海</li>
                            
                            <li  onclick="getCase(1209)">欧式</li>
                            
                            <li  onclick="getCase(1210)">美式</li>
                            
                            <li  onclick="getCase(1211)">北欧风</li>
                            
                            <li  onclick="getCase(1208)">其它</li>
                            
                        </ul>
                    </div>
                    <div class="bd">
                        <div class="box">
                            <div id="case_list" class="gg clearfix"><div class="a1"><a target="_blank" href="foreground/jsps/product_detail.jsp" style="background-image:url(foreground/img/201711291449194738208.jpg);"><img alt="" class="lazyload" data-original="foreground/img/201711291449194738208.jpg"><span><font>东方名都销售中心【东方名都销售中心】</font><font>办公空间  |  现代简约  |  301平米以上	 </font></span></a></div><div class="a2"><a target="_blank" href="Case.aspx?case_id=17440"><img alt="" class="lazyload" data-original="foreground/img/201801111459325036257.jpg" src="foreground/img/201801111459325036257.jpg"><span><font>科城山庄现代简约风格别墅【科城山庄】</font><font>别墅  |  现代简约  |  201-300平米 </font></span></a></div><div class="a3"><a target="_blank" href="Case.aspx?case_id=17803"><img alt="" class="lazyload" data-original="foreground/img/201803071636487048574.jpg" src="foreground/img/201803071636487048574.jpg"><span><font>《精·简·美》【安徽·黄山】</font><font>四居  |  现代简约  |  101-200平米 </font></span></a></div><div class="a4"><a target="_blank" href="Case.aspx?case_id=17830"><img alt="" class="lazyload" data-original="img/201803141016094307159.jpg" src="foreground/img/201803141016094307159.jpg"><span><font>富丽华【富丽华】</font><font>四居  |  现代简约  |  101-200平米 </font></span></a></div><div class="a5" style="background-image:url(img/201803211158313637246.jpg);"><a target="_blank" href="Case.aspx?case_id=17878"><img alt="" class="lazyload" src="foreground/img/201803211158313637246.jpg" data-original="foreground/img/201803211158313637246.jpg"><span><font>城市·沐光【香溢紫郡】</font><font>三居  |  现代简约  |  101-200平米 </font></span></a></div><div class="a6 aa"><a target="_blank" href="http://www.xydec.com.cn/CaseList.aspx"><img class="lazyload" data-original="img/201710261532497504702.jpg" src="foreground/img/201710261532497504702.jpg"><p><font>产品中心<i>万套原创案例</i></font><em></em></p></a></div><div class="a7 aa"><a target="_blank" href="http://www.xydec.com.cn/CaseList.aspx?spacecode=1501"><img class="lazyload" data-original="foreground/img/201612261712276235312.jpg" src="foreground/img/201612261712276235312.jpg"><p><font>“晴坤杯”案例<i></i></font><em></em></p></a></div></div>
                            <div class="kk"><a target="_blank" href="foreground/jsps/product_center.jsp" >查看更多</a></div>
                        </div>
                    </div>
                </div>
                <script type="text/javascript">
                    jQuery("http://www.xydec.com.cn/.index_02 .mian").slide({ titCell: ".hd li", mainCell: ".bd", effect: "fold", trigger: "click" });
                </script>
            </div>
        </div>
        <div class="index_03">
            <div class="wrap">
                <div class="tit">
                    
                    <h4>直击晴坤一线工地，装修细节一目了然</h4>
                    <h3>在建工地</h3>
                    
                </div>
                <div class="mian">
                    <ul class="bd_i3 clearfix">
                        
                        <li>
                            <a target="_blank" href="SiteLive.aspx-buliding=金旺大厦.htm" >
                                <div class="a1">
                                    <h4>
                                        
                                        <img alt="" class="lazyload" data-original="upload/1704/img/201704111450102797152.jpg" src="foreground/img/201704111450102797152.jpg" tppabs="http://www.xydec.com.cn/upload/1704/img/201704111450102797152.jpg" />
                                        
                                    </h4>
                                </div>
                                <div class="a2">
                                    <h5>金旺大厦</h5>
                                    <h6>地址：育华路1号金旺大厦4楼</h6>
                                </div>
                                <div class="a3 clearfix">
                                    <span><i></i>施工:<font>1户</font></span>
                                </div>
                            </a>
                        </li>
                        
                        <li>
                            <a target="_blank" href="SiteLive.aspx-buliding=依云华府.htm" tppabs="http://www.xydec.com.cn/SiteLive.aspx?buliding=依云华府">
                                <div class="a1">
                                    <h4>
                                        
                                        <img alt="" class="lazyload" data-original="upload/1706/img/201706121611380694100.jpg" src="foreground/img/201706121611380694100.jpg" tppabs="http://www.xydec.com.cn/upload/1706/img/201706121611380694100.jpg" />
                                        
                                    </h4>
                                </div>
                                <div class="a2">
                                    <h5>依云华府</h5>
                                    <h6>地址：佛山市依云华府</h6>
                                </div>
                                <div class="a3 clearfix">
                                    <span><i></i>施工:<font>1户</font></span>
                                </div>
                            </a>
                        </li>
                        
                        <li>
                            <a target="_blank" href="foreground/jsps/building_detail.jsp" tppabs="http://www.xydec.com.cn/SiteLive.aspx?buliding=金色时代">
                                <div class="a1">
                                    <h4>
                                        
                                        <img alt="" class="lazyload" data-original="foreground/img/201708091759507695112.jpg" src="foreground/img/201708091759507695112.jpg" tppabs="http://www.xydec.com.cn/upload/1708/img/201708091759507695112.jpg" />
                                        
                                    </h4>
                                </div>
                                <div class="a2">
                                    <h5>金色时代</h5>
                                    <h6>地址：</h6>
                                </div>
                                <div class="a3 clearfix">
                                    <span><i></i>施工:<font>5户</font></span>
                                </div>
                            </a>
                        </li>
                        
                        <li>
                            <a target="_blank" href="SiteLive.aspx-buliding=加州阳光.htm" tppabs="http://www.xydec.com.cn/SiteLive.aspx?buliding=加州阳光">
                                <div class="a1">
                                    <h4>
                                        
                                        <img alt="" class="lazyload" data-original="upload/1707/img/201707141150383537864.jpg" src="foreground/img/201707141150383537864.jpg" tppabs="http://www.xydec.com.cn/upload/1707/img/201707141150383537864.jpg" />
                                        
                                    </h4>
                                </div>
                                <div class="a2">
                                    <h5>加州阳光</h5>
                                    <h6>地址：加州阳光</h6>
                                </div>
                                <div class="a3 clearfix">
                                    <span><i></i>施工:<font>11户</font></span>
                                </div>
                            </a>
                        </li>
                        
                        <li>
                            <a target="_blank" href="SiteLive.aspx-buliding=保利东滨.htm" tppabs="http://www.xydec.com.cn/SiteLive.aspx?buliding=保利东滨">
                                <div class="a1">
                                    <h4>
                                        
                                        <img alt="" class="lazyload" data-original="upload/1706/img/201706121610141321076.jpg" src="foreground/img/201706121610141321076.jpg" tppabs="http://www.xydec.com.cn/upload/1706/img/201706121610141321076.jpg" />
                                        
                                    </h4>
                                </div>
                                <div class="a2">
                                    <h5>保利东滨</h5>
                                    <h6>地址：佛山市保利东滨</h6>
                                </div>
                                <div class="a3 clearfix">
                                    <span><i></i>施工:<font>1户</font></span>
                                </div>
                            </a>
                        </li>
                        
                        <li>
                            <a target="_blank" href="SiteLive.aspx-buliding=保利中央公馆.htm" tppabs="http://www.xydec.com.cn/SiteLive.aspx?buliding=保利中央公馆">
                                <div class="a1">
                                    <h4>
                                        
                                        <img alt="" class="lazyload" data-original="upload/1710/img/201710131536300746508.jpg" src="foreground/img/201710131536300746508.jpg" tppabs="http://www.xydec.com.cn/upload/1710/img/201710131536300746508.jpg" />
                                        
                                    </h4>
                                </div>
                                <div class="a2">
                                    <h5>保利中央公馆</h5>
                                    <h6>地址：</h6>
                                </div>
                                <div class="a3 clearfix">
                                    <span><i></i>施工:<font>5户</font></span>
                                </div>
                            </a>
                        </li>
                        
                        <li>
                            <a target="_blank" href="SiteLive.aspx-buliding=成龙官山邸.htm" tppabs="http://www.xydec.com.cn/SiteLive.aspx?buliding=成龙官山邸">
                                <div class="a1">
                                    <h4>
                                        
                                        <img alt="" class="lazyload" data-original="upload/1805/img/201805121127020506012.jpg" src="foreground/img/201805121127020506012.jpg" tppabs="http://www.xydec.com.cn/upload/1805/img/201805121127020506012.jpg" />
                                        
                                    </h4>
                                </div>
                                <div class="a2">
                                    <h5>成龙官山邸</h5>
                                    <h6>地址：</h6>
                                </div>
                                <div class="a3 clearfix">
                                    <span><i></i>施工:<font>5户</font></span>
                                </div>
                            </a>
                        </li>
                        
                        <li>
                            <a target="_blank" href="SiteLive.aspx-buliding=景都佳苑.htm" tppabs="http://www.xydec.com.cn/SiteLive.aspx?buliding=景都佳苑">
                                <div class="a1">
                                    <h4>
                                        
                                        <img alt="" class="lazyload" data-original="upload/1705/img/201705051718380773091.jpg" src="foreground/img/201705051718380773091.jpg" tppabs="http://www.xydec.com.cn/upload/1705/img/201705051718380773091.jpg" />
                                        
                                    </h4>
                                </div>
                                <div class="a2">
                                    <h5>景都佳苑</h5>
                                    <h6>地址：台州市路桥区银安街322号</h6>
                                </div>
                                <div class="a3 clearfix">
                                    <span><i></i>施工:<font>1户</font></span>
                                </div>
                            </a>
                        </li>
                        
                        <li>
                            <a target="_blank" href="SiteLive.aspx-buliding=金色时代.htm" tppabs="http://www.xydec.com.cn/SiteLive.aspx?buliding=金色时代">
                                <div class="a1">
                                    <h4>
                                        
                                        <img alt="" class="lazyload" data-original="upload/1804/img/201804231627360232513.jpg" src="foreground/img/201804231627360232513.jpg" tppabs="http://www.xydec.com.cn/upload/1804/img/201804231627360232513.jpg" />
                                        
                                    </h4>
                                </div>
                                <div class="a2">
                                    <h5>金色时代</h5>
                                    <h6>地址：</h6>
                                </div>
                                <div class="a3 clearfix">
                                    <span><i></i>施工:<font>5户</font></span>
                                </div>
                            </a>
                        </li>
                        
                        <li>
                            <a target="_blank" href="SiteLive.aspx-buliding=恒和东尚.htm" tppabs="http://www.xydec.com.cn/SiteLive.aspx?buliding=恒和东尚">
                                <div class="a1">
                                    <h4>
                                        
                                        <img alt="" class="lazyload" data-original="upload/1708/img/201708301046372303147.jpg" src="foreground/img/201708301046372303147.jpg" tppabs="http://www.xydec.com.cn/upload/1708/img/201708301046372303147.jpg" />
                                        
                                    </h4>
                                </div>
                                <div class="a2">
                                    <h5>恒和东尚</h5>
                                    <h6>地址：恒和东尚6# </h6>
                                </div>
                                <div class="a3 clearfix">
                                    <span><i></i>施工:<font>1户</font></span>
                                </div>
                            </a>
                        </li>
                        
                        <li>
                            <a target="_blank" href="SiteLive.aspx-buliding=绿城星云苑.htm" tppabs="http://www.xydec.com.cn/SiteLive.aspx?buliding=绿城星云苑">
                                <div class="a1">
                                    <h4>
                                        
                                        <img alt="" class="lazyload" data-original="upload/1706/img/201706220923191083707.jpg" src="foreground/img/201706220923191083707.jpg" tppabs="http://www.xydec.com.cn/upload/1706/img/201706220923191083707.jpg" />
                                        
                                    </h4>
                                </div>
                                <div class="a2">
                                    <h5>绿城星云苑</h5>
                                    <h6>地址：浙江省台州市路桥区灵山西街</h6>
                                </div>
                                <div class="a3 clearfix">
                                    <span><i></i>施工:<font>3户</font></span>
                                </div>
                            </a>
                        </li>
                        
                    </ul>
                    <a class="prev" href="javascript:void(0)"></a>
                    <a class="next" href="javascript:void(0)"></a>
                    <div class="kk"><a target="_blank" href="foreground/jsps/building.jsp" tppabs="http://www.xydec.com.cn/SiteLive.aspx">查看更多</a></div>
                </div>
                <script type="text/javascript">
                    jQuery("http://www.xydec.com.cn/.index_03 .mian").slide({ mainCell: ".bd_i3", autoPage: true, effect: "left", vis: 4, scroll: 2 });
                </script>
            </div>
        </div>
        <div class="index_04">
            <div class="wrap">
                <div class="tit">
                    
                    <h4></h4>
                    <h3>标准工艺</h3>
                    
                </div>
                <div class="mian">
                    <div class="gg">

                        
                        <div class="a1">
                            <a target="_blank">
                                <img alt="" src="foreground/img/201612205147.png" tppabs="http://www.xydec.com.cn/upload/1612/img/201612205147.png" />
                                <span>水电施工</span>
                            </a>
                        </div>
                        
                        <div class="a2">
                            <a target="_blank">
                                <img alt="" src="foreground/img/201612209392.png" tppabs="http://www.xydec.com.cn/upload/1612/img/201612209392.png" />
                                <span>木工施工</span>
                            </a>
                        </div>
                        
                        <div class="a3">
							<a target="_blank">
                                <img alt="" src="foreground/img/201612203097.png" tppabs="http://www.xydec.com.cn/upload/1612/img/201612203097.png" />
                                <span>扇灰施工</span>
                            </a>
                        </div>
                        
                        <div class="a4">
							<a target="_blank">
                                <img alt="" src="foreground/img/201612205695.png" tppabs="http://www.xydec.com.cn/upload/1612/img/201612205695.png" />
                                <span>施工保护</span>
                            </a>
                        </div>
                        
                        <div class="a5">
							<a target="_blank">
                                <img alt="" src="foreground/img/201612209952.png" tppabs="http://www.xydec.com.cn/upload/1612/img/201612209952.png" />
                                <span>材料概述</span>
                            </a>
                        </div>
                        
                        <div class="a6">
							<a target="_blank">
                                <img alt="" src="foreground/img/201612206564.png" tppabs="http://www.xydec.com.cn/upload/1612/img/201612206564.png" />
                                <span>工艺专利</span>
                            </a>
                        </div>
                        
                        <div class="a7">
							<a target="_blank">
                                <img alt="" src="foreground/img/201612204677.png" tppabs="http://www.xydec.com.cn/upload/1612/img/201612204677.png" />
                                <span>漆工施工</span>
                            </a>
                        </div>
                        
                        <div class="a8">
							<a target="_blank">
                                <img alt="" src="foreground/img/201612204548.png" tppabs="http://www.xydec.com.cn/upload/1612/img/201612204548.png" />
                                <span>泥工施工</span>
                            </a>
                        </div>
                        
                    </div>
                    <div class="kk"><a target="_blank" href="foreground/jsps/process_overview.jsp" tppabs="http://www.xydec.com.cn/EngineeringDetail.aspx?code=0401">查看更多</a></div>
                </div>
            </div>
        </div>
        <div class="index_06">
            <div class="wrap">
                <div class="tit">
                    <h4>最新资讯，更快更全面了解晴坤</h4>
                    <h3>晴坤资讯</h3>
                </div>
                <div class="mian">
                    <div class="hd">
                        <ul class="clearfix">
                            <li class="on" onclick="getNews('0606')">企业新闻</li>
                            <li class="on" onclick="getNews('0802')">最新公告</li>
                        </ul>
                    </div>
                    <div class="bd news_0606 clearfix">
                        <div class="fl">
                            <div class="_hd">
                                <ul></ul>
                            </div>
                            <div class="_bd">
                                <ul class="_bd_ul">
                                    
                                    <li style="float: left; width: 450px;">
                                        <a target="_blank" href="Detail.aspx-code=0606&id=4252.htm" tppabs="http://www.xydec.com.cn/Detail.aspx?code=0606&id=4252">
                                            <img alt="星设计·091期 | 东盟慧谷西餐厅——第六届“晴坤杯”获奖作品" class="lazyload" data-original="upload/1808/img/201808141121409788137.jpg" src="foreground/img/201808141121409788137.jpg" tppabs="http://www.xydec.com.cn/upload/1808/img/201808141121409788137.jpg" style="display: inline; width: 451px; height: 373px;" />
                                        </a>
                                    </li>
                                    
                                    <li style="float: left; width: 450px;">
                                        <a target="_blank" href="Detail.aspx-code=0606&id=4249.htm" tppabs="http://www.xydec.com.cn/Detail.aspx?code=0606&id=4249">
                                            <img alt="星设计·090期 | 广州花都狮岭联合广场销售中心——第六届“晴坤杯”获奖作品" class="lazyload" data-original="upload/1808/img/201808081009193133535.jpg" src="foreground/img/201808081009193133535.jpg" tppabs="http://www.xydec.com.cn/upload/1808/img/201808081009193133535.jpg" style="display: inline; width: 451px; height: 373px;" />
                                        </a>
                                    </li>
                                    
                                    <li style="float: left; width: 450px;">
                                        <a target="_blank" href="Detail.aspx-code=0606&id=4248.htm" tppabs="http://www.xydec.com.cn/Detail.aspx?code=0606&id=4248">
                                            <img alt="星设计·089期 | 宏桂广场咖啡厅——第六届“晴坤杯”获奖作品" class="lazyload" data-original="upload/1808/img/201808071127188294001.jpg" src="foreground/img/201808071127188294001.jpg" tppabs="http://www.xydec.com.cn/upload/1808/img/201808071127188294001.jpg" style="display: inline; width: 451px; height: 373px;" />
                                        </a>
                                    </li>
                                    
                                    <li style="float: left; width: 450px;">
                                        <a target="_blank" href="Detail.aspx-code=0606&id=4246.htm" tppabs="http://www.xydec.com.cn/Detail.aspx?code=0606&id=4246">
                                            <img alt="星设计·088期 | 桂林亚朵轻居酒店——第六届“晴坤杯”获奖作品" class="lazyload" data-original="upload/1807/img/201807311644040083780.jpg" src="foreground/img/201807311644040083780.jpg" tppabs="http://www.xydec.com.cn/upload/1807/img/201807311644040083780.jpg" style="display: inline; width: 451px; height: 373px;" />
                                        </a>
                                    </li>
                                    
                                </ul>
                            </div>
                        </div>
                        <div class="fr">
                            <ul class="fr_ul">
                                
                               <li>
                                    <!--<a target="_blank" href="Detail.aspx-code=0606&id=4252.htm" tppabs="http://www.xydec.com.cn/Detail.aspx?code=0606&id=4252" class="clearfix">-->
                                        <div class="a1">
                                            <h4>14</h4>
                                            <h6>2018.08</h6>
                                        </div>
                                        <div class="a2">
                                        	<div id="nw1" style="display:none; position:fixed; left:300px; top:100px; width:780px; height:456px; border:1px solid #aaa; background-color:#eee">
	                            <h2 style="position:absolute; left:0; top:0; width:100%; height:30px; line-height:30px; font-size:16px; margin:0; text-indent:10px; color:#666; background-color:#ddd">这是弹窗标题</h2>
	                            <span style="position:absolute; right:4px; top:4px; color:#aaa; cursor:pointer" onclick="nw1.style.display='none';">×</span>
	                            <div style="margin-top:30px; padding:10px; color:#888">这里是弹窗的文字内容</div>
                            </div>
                                <a onclick="nw1.style.display='block';"><font size="2">  <h5>星设计·091期 | 东盟慧谷西餐厅——第六届“晴坤杯”获奖作品</h5>
                                            <p>晴坤杯&#183;公共项目方案设计作品 星设计 &#183...</p>
                                </font></a>
                                          
                                        </div>
                                    </a>
                                </li>
                                
                                <li>
                                    <!--<a target="_blank" href="Detail.aspx-code=0606&id=4249.htm" tppabs="http://www.xydec.com.cn/Detail.aspx?code=0606&id=4249" class="clearfix">-->
                                        <div class="a1">
                                            <h4>08</h4>
                                            <h6>2018.08</h6>
                                        </div>
                                        <div class="a2">
                                        	<div id="nw2" style="display:none; position:fixed; left:300px; top:100px; width:780px; height:456px; border:1px solid #aaa; background-color:#eee">
	                            <h2 style="position:absolute; left:0; top:0; width:100%; height:30px; line-height:30px; font-size:16px; margin:0; text-indent:10px; color:#666; background-color:#ddd">这是弹窗标题</h2>
	                            <span style="position:absolute; right:4px; top:4px; color:#aaa; cursor:pointer" onclick="nw2.style.display='none';">×</span>
	                            <div style="margin-top:30px; padding:10px; color:#888">这里是弹窗的文字内容</div>
                            </div>
                                <a onclick="nw2.style.display='block';"><font size="2"><h5>星设计·090期 | 广州花都狮岭联合广场销售中心——第六届“晴坤杯”获奖作品</h5>
                                            <p>晴坤杯&#183;公共项目方案设计作品 星...</p>  
                                </font></a>
                                            
                                        </div>
                                    </a>
                                </li>
                                
                                <li>
                                    <!--<a target="_blank" href="Detail.aspx-code=0606&id=4248.htm" tppabs="http://www.xydec.com.cn/Detail.aspx?code=0606&id=4248" class="clearfix">-->
                                        <div class="a1">
                                            <h4>07</h4>
                                            <h6>2018.08</h6>
                                        </div>
                                        <div class="a2">
                                        	<div id="nw3" style="display:none; position:fixed; left:300px; top:100px; width:780px; height:456px; border:1px solid #aaa; background-color:#eee">
	                            <h2 style="position:absolute; left:0; top:0; width:100%; height:30px; line-height:30px; font-size:16px; margin:0; text-indent:10px; color:#666; background-color:#ddd">这是弹窗标题</h2>
	                            <span style="position:absolute; right:4px; top:4px; color:#aaa; cursor:pointer" onclick="nw3.style.display='none';">×</span>
	                            <div style="margin-top:30px; padding:10px; color:#888">这里是弹窗的文字内容</div>
                            </div>
                                <a onclick="nw3.style.display='block';"><font size="2"> <h5>星设计·089期 | 宏桂广场咖啡厅——第六届“晴坤杯”获奖作品</h5>
                                            <p>晴坤杯 &#183; 公共项目方案设计作品	星设计&#18...</p>
                                </font></a>
                                            
                                        </div>
                                    </a>
                                </li>
                                
                                <li>
                                    <!--<a target="_blank" href="Detail.aspx-code=0606&id=4246.htm" tppabs="http://www.xydec.com.cn/Detail.aspx?code=0606&id=4246" class="clearfix">-->
                                        <div class="a1">
                                            <h4>31</h4>
                                            <h6>2018.07</h6>
                                        </div>
                                        <div class="a2">
                                        	<div id="nw4" style="display:none; position:fixed; left:300px; top:100px; width:780px; height:456px; border:1px solid #aaa; background-color:#eee">
	                            <h2 style="position:absolute; left:0; top:0; width:100%; height:30px; line-height:30px; font-size:16px; margin:0; text-indent:10px; color:#666; background-color:#ddd">这是弹窗标题</h2>
	                            <span style="position:absolute; right:4px; top:4px; color:#aaa; cursor:pointer" onclick="nw4.style.display='none';">×</span>
	                            <div style="margin-top:30px; padding:10px; color:#888">这里是弹窗的文字内容</div>
                            </div>
                                <a onclick="nw4.style.display='block';"><font size="2"><h5>星设计·088期 | 桂林亚朵轻居酒店——第六届“晴坤杯”获奖作品</h5>
                                            <p>晴坤杯 &#183; 公共项目方案设计作品 ...</p> 
                                </font></a>
                                            
                                        </div>
                                    </a>
                                </li>
                                
                            </ul>
                        </div>
                    </div>
                    <div class="kk news_0606"><a target="_blank" class="getnews_a" href="foreground/jsps/news_center.jsp" tppabs="http://www.xydec.com.cn/NewList.aspx?code=0606">查看更多</a></div>
                    
                    <div class="bd news_0802 clearfix" style="display: none;">
                        <div class="fl">
                            <div class="_hd">
                                <ul></ul>
                            </div>
                            <div class="_bd">
                                <ul class="_bd_ul">
                                    
                                    <li style="float: left; width: 450px;">
                                        <a target="_blank" href="Detail.aspx-code=0802&id=4222.htm" tppabs="http://www.xydec.com.cn/Detail.aspx?code=0802&id=4222">
                                            <img alt="晴坤装饰联合房产频道共同打造专访节目：姚国健《家里的图书馆》" class="lazyload" data-original="upload/1807/img/201807121509378613346.jpg" src="foreground/img/201807121509378613346.jpg" tppabs="http://www.xydec.com.cn/upload/1807/img/201807121509378613346.jpg" style="display: inline; width: 451px; height: 373px;" />
                                        </a>
                                    </li>
                                    
                                    <li style="float: left; width: 450px;">
                                        <a target="_blank" href="Detail.aspx-code=0802&id=4132.htm" tppabs="http://www.xydec.com.cn/Detail.aspx?code=0802&id=4132">
                                            <img alt="海南“圆梦行动”收到首笔年度捐款助困10名大学生" class="lazyload" data-original="upload/1806/img/201806030915186569852.jpg" src="foreground/img/201806030915186569852.jpg" tppabs="http://www.xydec.com.cn/upload/1806/img/201806030915186569852.jpg" style="display: inline; width: 451px; height: 373px;" />
                                        </a>
                                    </li>
                                    
                                    <li style="float: left; width: 450px;">
                                        <a target="_blank" href="Detail.aspx-code=0802&id=4102.htm" tppabs="http://www.xydec.com.cn/Detail.aspx?code=0802&id=4102">
                                            <img alt=" 汶川地震十周年祭 | 大爱仍在延续" class="lazyload" data-original="upload/1805/img/201805121500294878700.jpg" src="foreground/img/201805121500294878700.jpg" tppabs="http://www.xydec.com.cn/upload/1805/img/201805121500294878700.jpg" style="display: inline; width: 451px; height: 373px;" />
                                        </a>
                                    </li>
                                    
                                    <li style="float: left; width: 450px;">
                                        <a target="_blank" href="Detail.aspx-code=0802&id=4015.htm" tppabs="http://www.xydec.com.cn/Detail.aspx?code=0802&id=4015">
                                            <img alt=" 2018年凝心聚力感恩前行,抚州公司表彰大会圆满举行" class="lazyload" data-original="upload/1803/img/201803220940101107305.jpg" src="foreground/img/201803220940101107305.jpg" tppabs="http://www.xydec.com.cn/upload/1803/img/201803220940101107305.jpg" style="display: inline; width: 451px; height: 373px;" />
                                        </a>
                                    </li>
                                    
                                </ul>
                            </div>
                        </div>
                        <div class="fr">
                            <ul class="fr_ul">
                                
                                <li>
                                    <!--<a target="_blank" href="Detail.aspx-code=0802&id=4222.htm" tppabs="http://www.xydec.com.cn/Detail.aspx?code=0802&id=4222" class="clearfix">-->
                                        <div class="a1">
                                            <h4>12</h4>
                                            <h6>2018.07</h6>
                                        </div>
                                        <div class="a2">
                                        	<div id="win1" style="display:none; position:fixed; left:300px; top:100px; width:780px; height:456px; border:1px solid #aaa; background-color:#eee">
	                            <h2 style="position:absolute; left:0; top:0; width:100%; height:30px; line-height:30px; font-size:16px; margin:0; text-indent:10px; color:#666; background-color:#ddd">这是弹窗标题</h2>
	                            <span style="position:absolute; right:4px; top:4px; color:#aaa; cursor:pointer" onclick="win1.style.display='none';">×</span>
	                            <div style="margin-top:30px; padding:10px; color:#888">这里是弹窗的文字内容</div>
                            </div>
                                <a onclick="win1.style.display='block';"><font size="2"><h5>晴坤装饰联合房产频道共同打造专访节目：姚国健《家里的图书馆》</h5>
                                            <p>书，砌成每个人的精神家园。我们无法每天倘佯在图书馆里，却渴望把“书”融入到我们家居环境中，沉浸在书的馨香中，去与横卧在书...</p>
                                </font></a>
                                            
                                        </div>
                                    </a>
                                </li>
                                
                                <li>
                                    <!--<a target="_blank" href="Detail.aspx-code=0802&id=4132.htm" tppabs="http://www.xydec.com.cn/Detail.aspx?code=0802&id=4132" class="clearfix">-->
                                        <div class="a1">
                                            <h4>03</h4>
                                            <h6>2018.06</h6>
                                        </div>
                                        <div class="a2">
                                        	<div id="win2" style="display:none; position:fixed; left:300px; top:100px; width:780px; height:456px; border:1px solid #aaa; background-color:#eee">
	                            <h2 style="position:absolute; left:0; top:0; width:100%; height:30px; line-height:30px; font-size:16px; margin:0; text-indent:10px; color:#666; background-color:#ddd">这是弹窗标题</h2>
	                            <span style="position:absolute; right:4px; top:4px; color:#aaa; cursor:pointer" onclick="win2.style.display='none';">×</span>
	                            <div style="margin-top:30px; padding:10px; color:#888">这里是弹窗的文字内容</div>
                            </div>
                                <a onclick="win2.style.display='block';"><font size="2"><h5>海南“圆梦行动”收到首笔年度捐款助困10名大学生</h5>
                                            <p>↑图为海南希望工程“圆梦行动”收到首笔年度捐款现场 新华社客户端海南频道6月2日电（记者赵叶...</p>
                                </font></a>
                                            
                                        </div>
                                    </a>
                                </li>
                                
                                <li>
                                    <!--<a target="_blank" href="Detail.aspx-code=0802&id=4102.htm" tppabs="http://www.xydec.com.cn/Detail.aspx?code=0802&id=4102" class="clearfix">-->
                                        <div class="a1">
                                            <h4>12</h4>
                                            <h6>2018.05</h6>
                                        </div>
                                        <div class="a2">
                                        	<div id="win3" style="display:none; position:fixed; left:300px; top:100px; width:780px; height:456px; border:1px solid #aaa; background-color:#eee">
	                            <h2 style="position:absolute; left:0; top:0; width:100%; height:30px; line-height:30px; font-size:16px; margin:0; text-indent:10px; color:#666; background-color:#ddd">这是弹窗标题</h2>
	                            <span style="position:absolute; right:4px; top:4px; color:#aaa; cursor:pointer" onclick="win3.style.display='none';">×</span>
	                            <div style="margin-top:30px; padding:10px; color:#888">这里是弹窗的文字内容</div>
                            </div>
                                <a onclick="win3.style.display='block';"><font size="2"><h5> 汶川地震十周年祭 | 大爱仍在延续</h5>
                                            <p>十年如一日倏忽而过2008年5月12日一个无法被忘记的时间；...</p>
                                </font></div>
                                    </a>
                                </li>
                                
                                <li>
                                    <!--<a target="_blank" href="Detail.aspx-code=0802&id=4015.htm" tppabs="http://www.xydec.com.cn/Detail.aspx?code=0802&id=4015" class="clearfix">-->
                                        <div class="a1">
                                            <h4>22</h4>
                                            <h6>2018.03</h6>
                                        </div>
                                        <div class="a2">
                                        	<div id="win4" style="display:none; position:fixed; left:300px; top:100px; width:780px; height:456px; border:1px solid #aaa; background-color:#eee">
	                            <h2 style="position:absolute; left:0; top:0; width:100%; height:30px; line-height:30px; font-size:16px; margin:0; text-indent:10px; color:#666; background-color:#ddd">这是弹窗标题</h2>
	                            <span style="position:absolute; right:4px; top:4px; color:#aaa; cursor:pointer" onclick="win4.style.display='none';">×</span>
	                            <div style="margin-top:30px; padding:10px; color:#888">这里是弹窗的文字内容</div>
                            </div>
                                <a onclick="win4.style.display='block';"><font size="4"><h5>2018年凝心聚力感恩前行,抚州公司表彰大会圆满举行</h5>
                                            <p>凝心聚力 感恩前行！2017年，我们一起走过，在奋斗中凝聚不忘初心砥砺奋进的晴坤力量。今天，在时间面前，我们又站在了同一...</p>
                                </font></a>
                                            
                                        </div>
                                    </a>
                                </li>
                                
                            </ul>
                        </div>
                    </div>
                    <div class="kk news_0802" style="display: none;"><a target="_blank" class="getnews_a" href="foreground/jsps/notice_center.jsp" tppabs="http://www.xydec.com.cn/NewList.aspx?code=0802">查看更多</a></div>
                    
                </div>
            </div>
        </div>
        <div class="index_07">
            <div class="wrap">
                <div class="advert">
                    
                    <a target="_blank" href="foreground/jsps/service_process.jsp" tppabs="http://www.xydec.com.cn/NewList.aspx?code=0704">
                        <img alt="" class="lazyload" data-original="upload/ad/1703/img/201703291705590375714.jpg" src="foreground/img/201703291705590375714.jpg" tppabs="http://www.xydec.com.cn/upload/ad/1703/img/201703291705590375714.jpg" />
                    </a>
                    
                </div>
            </div>
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
                    <img alt="" src="foreground/img/201612229413.jpg" tppabs="http://www.xydec.com.cn/upload/1612/img/201612229413.jpg" />
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
                        
                        <dd><a target="_blank" href="foreground/jsps/culture_group_overview.jsp" tppabs="http://www.xydec.com.cn/Detail.aspx?code=0601">企业概况</a></dd>
                        
                        <dd><a target="_blank" href="foreground/jsps/culture_project_advantages.jsp" tppabs="http://www.xydec.com.cn/Detail.aspx?code=0603">项目优势</a></dd>
                        
                        <dd><a target="_blank" href="BranchSearch.aspx.htm" tppabs="http://www.xydec.com.cn/BranchSearch.aspx">在建工地</a></dd>
                        
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
                                
                                
                                <img class="lazyload" alt="关注集团微信公众号" data-original="upload/1612/img/201612229413.jpg" src="foreground/img/201612229413.jpg" tppabs="http://www.xydec.com.cn/upload/1612/img/201612229413.jpg" />
                                
                            </h4>
                            <p>关注集团微信公众号</p>
                        </li>
                        <li>
                            <h4>
                                
                                
                                <img class="lazyload" alt="关注手机端官网" data-original="upload/1712/img/201712181059593756989.jpg" src="foreground/img/201712181059593756989.jpg" tppabs="http://www.xydec.com.cn/upload/1712/img/201712181059593756989.jpg" />
                                
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
        setNav(0);
    </script>
</body>
</html>


