<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>甘肃政法学院大学生思想政治网</title>

<link type="text/css" href="/SXZZ/front/css/base.min.css"
	rel="stylesheet">
<link type="text/css" href="/SXZZ/front/css/3005.min.css"
	rel="stylesheet" id="templateFrame" class="templateFrameClass">
<link type="text/css" href="/SXZZ/front/css/pattern6.min.css"
	rel="stylesheet">
<link id="css_tabStyle4" type="text/css"
	href="/SXZZ/front/css/tabStyle4.min.css" rel="stylesheet">
<link type="text/css" href="/SXZZ/front/css/fontsIco.min.css"
	rel="stylesheet">
<link type="text/css" href="/SXZZ/front/css/webRightBar.min.css"
	rel="stylesheet">
<link type="text/css" href="/SXZZ/front/css/style1.css" rel="stylesheet">
<link type="text/css" href="/SXZZ/front/css/style2.css" rel="stylesheet">
<link rel="stylesheet" href="/SXZZ/front/css/style.css">
<style type="text/css">
.xgxz li:HOVER {
	background-color: red;	
}
.xgxz li a:HOVER{
	color:#fff;
}
.xgxz li{
	background-color: #F0F0F0;
	margin-bottom: 5px;
	padding-top: 10px;
}
.xgxz li a{
text-decoration: none; 
font-size: 16px;
}
a{
text-decoration: none; 
}

.formbody{padding:10px 18px;}
.formtitle{border-bottom:solid 1px #d0dee5; line-height:35px; position:relative; height:35px; margin-bottom:28px;}
.formtitle span{font-weight:bold;font-size:14px; border-bottom:solid 3px #66c9f3;float:left; position:absolute; z-index:100; bottom:-1px; padding:0 3px; height:30px; line-height:30px;}
.forminfo{padding-left:23px;}
.forminfo li{margin-bottom:13px; clear:both;}
.forminfo li label{width:86px;line-height:34px; display:block; float:left;}
.forminfo li i{color:#7f7f7f; padding-left:20px; font-style:normal;}
.forminfo li cite{display:block; padding-top:10px;}
.tablelist{border:solid 1px #cbcbcb; width:100%; clear:both;}
.tablelist th{background-color:#F0F5F7; height:34px; line-height:34px; border-bottom:solid 1px #b6cad2; text-indent:11px; text-align:left;}
.tablelist td{line-height:35px; text-indent:11px; border-right: dotted 1px #c7c7c7;}
.tablelink{color:#056dae;}
.tablelist tbody tr.odd{background:#f5f8fa;}
.tablelist tbody tr:hover{background:#e5ebee;}
.pagin{position:relative;margin-top:10px;padding:0 12px;}
.pagin .blue{color:#056dae;font-style:normal;}
.pagin .paginList{position:absolute;right:12px;top:0;}
.pagin .paginList .paginItem{float:left;}
.pagin .paginList .paginItem a{float:left;width:31px;height:28px;border:1px solid #DDD; text-align:center;line-height:30px;border-left:none;color:#3399d5;}
.pagin .paginList .paginItem:first-child a{border-left:1px solid #DDD;}
.pagin .paginList .paginItem:first-child a{border-bottom-left-radius:5px;border-top-left-radius:5px;}
.pagin .paginList .paginItem:last-child a{border-bottom-right-radius:5px;border-top-right-radius:5px;}
.pagin .paginList .paginItem.current,.pagin .paginList .paginItem.current a{background:#f5f5f5; cursor:default;color:#737373;}
.pagin .paginList .paginItem:hover{background:#f5f5f5;}
.pagin .paginList .paginItem.more,.pagin .paginList .paginItem.more a:hover{ cursor:default;}
.pagin .paginList .paginItem.more:hover{background:#FFF;}
.pagin .paginList .paginItem.more a{color:#737373;}
</style>
<script src='/SXZZ/front/js/jquery-1.8.3.min.js'></script>
<script src="/SXZZ/front/js/index.js"></script>
<script type="text/javascript">

var page = ${model.getCurrentPage()};
var total = ${model.getTotalPage()};
/* 首页 */
function firstPage() {
	page = 1;
	window.location.href="/SXZZ/Front/openImg?page="+page;
}

/* 上一页 */
function prePage() {
	if(page > 1) {
		page--;
		window.location.href="/SXZZ/Front/openImg?page="+page;
	}else {
		alert("没有上一页了");
	}
}

/* 下一页 */
function nextPage() {
	if(page < total) {
		page++;
		window.location.href="/SXZZ/Front/openImg?page="+page;
	}else {
		alert("没有下一页了");
	}
}

/* 尾页 */
function endPage() {
	page = total;
	window.location.href="/SXZZ/Front/openImg?page="+page;
}
</script>
</head>
<body class="g_body g_locale2052 ">
	<div id="g_main" class="g_main g_col2 "
		style="top: 0px; width: 1349px;">
		<div id="web" class="g_web "
			style="background-image: url(/SXZZ/front/image/background.png); background-repeat: repeat-x;">
			<div>
			
			</div>
			
			
			<!-- 导航位置 -->
			<table class="webHeaderTable" cellpadding="0" cellspacing="0"
				id="webHeaderTable">
				<tbody>
					<tr>
						<td align="center" class="webHeaderTd">
							<div id="webHeader" class="webHeader">
								<table class="headerTable" cellpadding="0" cellspacing="0">
									<tbody>
										<tr>
											<td class="headerCusLeft"></td>
											<td class="headerCusMiddle" align="center" valign="top">
												<div class="headerNav">
												<nav>
			<ul class="dropdown">
				<li><a href="#">学校首页</a></li>
				<li><a href="#">学生处</a></li>
				<li class="drop"><a href="#">政策法规</a>
					<ul class="sub_menu">
						<li><a href="#">国家政策</a></li>
						<li><a href="#">省上政策</a></li>
						<li><a href="#">学校政策</a></li>
					</ul></li>
				<li><a href="#">国防教育</a></li>
				<li><a href="#">心灵驿站</a></li>
				<li class="drop"><a href="#">辅导员专区</a>
				<ul class="sub_menu">
						<li><a href="#">辅导员情况</a></li>
						<li><a href="/SXZZ/Front/fdyjj">辅导员简介</a></li>
					</ul></li>
				<li><a href="#">成才导航</a></li>
				<li><a href="#">易班社区</a></li>
				<li><a href="#">相关下载</a></li>
			</ul>
			</nav>
												</div>
											</td>
											<td class="headerCusRight"></td>
										</tr>
									</tbody>
								</table>
							</div>
						</td>
					</tr>
				</tbody>
			</table>
			<!-- 滚动图片 -->
			<table class="webBannerTable J_webBannerTable" cellpadding="0"
				cellspacing="0">
				<tbody>
					<tr>
						<td align="center">
							<div id="webBanner" class="webBanner">
								<table class="bannerTable" cellpadding="0" cellspacing="0">
									<tbody>
										<tr>
											<td class="bannerLeft"></td>
											<td class="bannerCenter" align="center" valign="top">
												<div class="bannerTop"></div>
												<div id="banner" class="banner extBanner"
													style="height: 160px; overflow: hidden; display: block; background: none;"
													normalheight="160" defaultwidth="960">
													<div class="imageSwitchShowName photoSwitchBg"
														style="position: absolute; display: none; z-index: 2; width: 960px; height: 30px; line-height: 30px; top: 160px; left: 0px;">
														<span class="spanHiddenName" style="margin-left: 10px;"></span><span
															class="spanHiddenName" style="margin-left: 10px;"></span><span
															class="spanHiddenName" style="margin-left: 10px;"></span><span
															class="spanHiddenName  spanShowName"
															style="margin-left: 10px;"></span>
													</div>
													<div></div>
													<a class="imageSwitchBtn_arrow arrow_prev"
														style="position: absolute; z-index: 3; left: 0px; top: 50%; margin-top: -35.5px;"></a><a
														class="imageSwitchBtn_arrow arrow_next"
														style="position: absolute; z-index: 3; right: 0px; top: 50%; margin-top: -35.5px;"></a>
													<div id="bannerGetHref" class="bannerGetHref"
														style="position: absolute; top: 0px; left: 0px; width: 960px; height: 160px; z-index: 1; cursor: default; background: url(http://0.ss.faisys.com/image/site/transpace.png);"
														onmouseover="Site.bannerInitHref();"
														onmouseout="Site.startBannerInterval();"
														onclick="Site.bannerGetHref();"></div>
												</div>
											</td>
											<td class="bannerRight"></td>
										</tr>
									</tbody>
								</table>
							</div>
						</td>
					</tr>
				</tbody>
			</table>
			
			<div style="background-color: #fff; width:970px; min-height: 520px; margin-left: 190px;">
				<ul>
					<li style="float: left; display: inline; margin-left: 5px; width: 300px; height: 300px; border: 1px solid #1369C0;">
						<div style="height:30px;background-color: #1369C0;color:#fff;padding-top:8px;">
							<span style="float:left;margin-left:10px;">相关下载</span>
						</div>
						<div>
							<ul class="xgxz">
								<li style="height:30px;text-align: center;">
									<a href="/SXZZ/Front/openPage">文档下载</a>
								</li>
								<li style="height:30px;text-align: center;">
									<a href="/SXZZ/Front/openImg">图片下载</a>
								</li>
								<li style="height:30px;text-align: center;">
									<a href="/SXZZ/Front/openVedio">视频下载</a>
								</li>
							</ul>
						</div>
					</li>
					<li style="float: right; margin-right: 5px; display: inline; width: 650px; min-height: 300px; border: 1px solid #FF4400;">
						<div class="formbody">

		<table class="tablelist">
			<tr>
				<th>名称</th>
				<th>下载</th>
			</tr>
			<s:iterator value="#request.model.getData()">
				<tr>
					<td>${fileName }</td><!--/imgs/${name }  -->
					<td><a href="/SXZZ/Front/download?name=${fileName }&realName=${name}" class="tablelink">下载</a></td>
				</tr>
			</s:iterator>
		</table>
		<div class="pagin">
			<div class="message">
				共<i class="blue">${model.getTotalPage() }</i>页记录，当前显示第&nbsp;<i
					class="blue">${model.getCurrentPage() }&nbsp;</i>页
			</div>
			<ul class="paginList">
				<li class="paginItem" onclick="prePage()"><a
					href="javascript:;"><span class="pagepre"></span></a></li>
				<li class="paginItem"><a href="javascript:void(0)"
					onclick="firstPage()">首页</a></li>
				<li class="paginItem"><a href="javascript:void(0)"
					onclick="endPage()">尾页</a></li>
				<li class="paginItem" onclick="nextPage()"><a
					href="javascript:;"><span class="pagenxt"></span></a></li>
			</ul>
			<br> <br>
		</div>
	</div>
					</li>
				</ul>
			</div>

			<div id="fullmeasureBottomForms"
				class="fullmeasureContainer forms sideForms fullmeasureForms fullmeasureBottomForms"
				style="display: none;">

			</div>

			<table class="absBottomTable" cellpadding="0" cellspacing="0">
				<tbody>
					<tr>
						<td align="center">
							<div id="absBottomForms" class="forms sideForms absForms">
								<div style="position: absolute;"></div>
								<!-- for ie6 -->

							</div>
						</td>
					</tr>
				</tbody>
			</table>

			<table id="webFooterTable" class="webFooterTable" cellpadding="0"
				cellspacing="0">
				<tbody>
					<tr>
						<td align="center" valign="top">
							<div id="webFooter" class="webFooter">
								<div id="footer" class="footer">
									<table class="footerTop" cellpadding="0" cellspacing="0">
										<tbody>
											<tr valign="top">
												<td class="topLeft"></td>
												<td class="topCenter"></td>
												<td class="topRight"></td>
											</tr>
										</tbody>
									</table>
									<table class="footerMiddle" cellpadding="0" cellspacing="0">
										<tbody>
											<tr valign="top">
												<td class="middleLeft"></td>
												<td class="middleCenter" align="center"><div
														class="footerContent">
														<div id="footerNav" class="footerNav  footerPattern1"
															cusheight="0">
															<div class="footerItemListBox">
																<ul
																	class="footerItemListContainer J_footerItemListContainer">
																	<li class="J_footerItemSection footerItemSection"><table
																			class="J_footerItemContainer footerItemContainer">
																			<tbody>
																				<tr>
																					<td class="footerItemContainer-firstTd"><div
																							class="footerItemPic">
																							<a href="javascript:;"
																								class="footerItemNormalPic " id="footerItemPic2"></a>
																						</div></td>
																					<td class="footerItemContainer-secondTd"><div
																							class="footerItemContent">
																							<div class="footerItemTop">
																								<a title="" class="footerItemTopLink"
																									href="./gaojiangwei_files/gaojiangwei.html"
																									child="0">学校首页</a>
																							</div>
																							<div class="footerItemMiddle">
																								<div class="footSplitline"></div>
																							</div>
																						</div></td>
																				</tr>
																			</tbody>
																		</table></li>
																	<li class="footerItemSpacing"><div
																			class="footerVerticalLine"></div></li>
																	<li class="J_footerItemSection footerItemSection"><table
																			class="J_footerItemContainer footerItemContainer">
																			<tbody>
																				<tr>
																					<td class="footerItemContainer-firstTd"><div
																							class="footerItemPic">
																							<a href="javascript:;"
																								class="footerItemNormalPic "
																								id="footerItemPic101"></a>
																						</div></td>
																					<td class="footerItemContainer-secondTd"><div
																							class="footerItemContent">
																							<div class="footerItemTop">
																								<a title="" class="footerItemTopLink"
																									href="http://www.gaojiangwei.icoc.in/col.jsp?id=101"
																									child="0">省上政策</a>
																							</div>
																							<div class="footerItemMiddle">
																								<div class="footSplitline"></div>
																							</div>
																						</div></td>
																				</tr>
																			</tbody>
																		</table></li>
																	<li class="footerItemSpacing"><div
																			class="footerVerticalLine"></div></li>
																	<li
																		class="J_footerItemSection footerItemSection fixWidth"><table
																			class="J_footerItemContainer footerItemContainer">
																			<tbody>
																				<tr>
																					<td class="footerItemContainer-firstTd"><div
																							class="footerItemPic">
																							<a href="javascript:;"
																								class="footerItemNormalPic "
																								id="footerItemPic102"></a>
																						</div></td>
																					<td class="footerItemContainer-secondTd"><div
																							class="footerItemContent">
																							<div class="footerItemTop">
																								<a title="" class="footerItemTopLink"
																									href="http://www.gaojiangwei.icoc.in/col.jsp?id=102"
																									child="0">学校政策</a>
																							</div>
																							<div class="footerItemMiddle">
																								<div class="footSplitline"></div>
																							</div>
																						</div></td>
																				</tr>
																			</tbody>
																		</table></li>
																	<li
																		class="J_footerItemSpacing_end footerItemSpacing footerItemSpacing_end"><div
																			class="footerVerticalLine"></div></li>
																</ul>
															</div>
														</div>
														<div class="footerInfo">
															<font face="Arial">©</font>2016&nbsp;gaojiangwei&nbsp;版权所有
														</div>
														<div class="footerSupport" id="footerSupport">
															<span class="footerMobile"><a hidefocus="true"
																href="http://m.gaojiangwei.icoc.in/" target="_blank">手机版</a></span>
															<span class="footerSep">|</span> <span
																class="footerFaisco">本站使用<a hidefocus="true"
																href="http://jz.faisco.com/?_ta=4"
																onclick="Site.logDog(100065, 0);" target="_blank"><span
																	class="faisco-icons-logo" id="faisco-icons-logo"
																	style="padding-left: 2px; padding-right: 2px; position: relative; top: 2px; font-size: 15px;"></span>凡科建站</a><span
																style="padding-left: 8px;">搭建</span></span> <span
																class="footerSep">|</span> <span id="footerLogin"
																class="footerLogin"><a name="popupLogin"
																hidefocus="true" href="javascript:;"
																onclick="Site.popupLogin(&quot;http://www.faisco.cn&quot;,9853453);Fai.closeTip(&quot;#footerLogin&quot;);return false;">管理登录</a></span>
															<span class="bgplayerButton" id="bgplayerButton"
																style="display: none;"></span>
														</div>
													</div></td>
												<td class="middleRight"></td>
											</tr>
										</tbody>
									</table>
									<table class="footerBottom" cellpadding="0" cellspacing="0">
										<tbody>
											<tr valign="top">
												<td class="bottomLeft"></td>
												<td class="bottomCenter"></td>
												<td class="bottomRight"></td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
						</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>

	<script type="text/javascript" src="/SXZZ/front/js/jquery-core.min.js"></script>
	<script type="text/javascript"
		src="/SXZZ/front/js/jquery-mousewheel.min.js"></script>
	<script type="text/javascript" src="/SXZZ/front/js/fai.min.js"></script>
	<script type="text/javascript"
		src="/SXZZ/front/js/jquery-ui-core.min.js"></script>
	<script type="text/javascript" src="/SXZZ/front/js/site.min.js"></script>
	<script type="text/javascript" src="/SXZZ/front/js/2052.min.js"></script>
	<script type="text/javascript"
		src="/SXZZ/front/js/ZeroClipboard.min.js"></script>

	<!-- tab切换 -->
	<script type="text/javascript">

var _faiAjax = function(){
	//for regexp
	var r = /\?/;
	var _o = {
		type:"get",
		url:"",
		data:"",
		error:function(){},
		success:function(){}
	};
	var _sendRequest=function(o) {
		var xmlhttp = null;
		//init option code
		o.type = o.type || _o.type;
		o.url = o.url || _o.url;
		o.data = o.data || _o.data;
		o.error = o.error || _o.error;
		o.success = o.success || _o.success;
		if (window.XMLHttpRequest) {
			// code for IE7+, Firefox, Chrome, Opera, Safari
			xmlhttp=new XMLHttpRequest();
		}else{
			// code for IE6, IE5
			xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
		}
		//the instructions param takes the form of an eval statement
		if(o.type != "post") {
			o.url += ( this.r.test( o.url ) ? "&" : "?" ) + o.data;
			xmlhttp.open("GET", o.url, true);
				xmlhttp.onreadystatechange=function() {
				if (xmlhttp.readyState==4 && xmlhttp.status==200) {
					o.success( xmlhttp.responseText );
				}else if( o.error ){
					o.error();
				}
			}
			xmlhttp.send();
		} else {
			xmlhttp.open("POST", o.url, true);
			//Send the proper header information along with the request
			xmlhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded; charset=UTF-8");
			xmlhttp.onreadystatechange=function() {
				if (xmlhttp.readyState==4 && xmlhttp.status==200) {
					o.success( xmlhttp.responseText );
				}else{
					o.error();
				}
			}
		}
	}
	return {
		ajax:function(option){
			try {
				//此次调用的错误不让抛出给window。防止函数重入
				_sendRequest(option);	
			}catch(e){
				//alert(e);
			}
		}
	};
}();
var _jsErrCahche = [];
Fai.top = window;
var bgmCloseToOpen = false;
var _devMode = false;
var _colOtherStyleData = {"independentList":[],"layout4Width":357,"layout5Width":369,"y":0,"h":0};						// 当前页面的数据    
var _templateOtherStyleData = {"independentList":[],"h":924,"y":0,"layout4Width":0,"layout5Width":0};						// 全局的数据
$(function() {
	// 绑定退出事件
	$(window).bind("beforeunload", function(e) { 
		 
			if(bgmCloseToOpen){
				Site.bgmFlushContinue();
			}	
	});
	Site.initTemplateLayout(1, true, false );
	// ajax统计
	//前端性能数据上报
	Site.report();
	//保留旧用户的初始化版式区域4 和区域5 中，区域4的padding-right空间
	Site.colLayout45Width();

	Site.initBanner({"_open":true,"data":[{"title":"","desc":"","imgWidth":960,"imgHeight":160,"src":"http://0.ss.faisys.com/image/template/banners/2536.jpg?v=20151228","edgeLeft":"","edgeRight":""},{"title":"","desc":"","imgWidth":960,"imgHeight":160,"src":"http://0.ss.faisys.com/image/template/banners/2529.jpg?v=20151228","edgeLeft":"","edgeRight":""},{"title":"","desc":"","imgWidth":960,"imgHeight":160,"src":"http://0.ss.faisys.com/image/template/banners/2522.jpg?v=20151228","edgeLeft":"","edgeRight":""},{"title":"","desc":"","imgWidth":960,"imgHeight":160,"src":"http://0.ss.faisys.com/image/template/banners/2293.jpg?v=20140903","edgeLeft":"","edgeRight":""}],"width":960,"height":160,"playTime":4000,"animateTime":1500,"from":"banner","btnType":0,"wideScreen":false}, {"_open":true,"type":7,"position":0,"positionTop":0,"positionLeft":0,"text1":"自定义文字1","text2":"自定义文字2","style1":"宋体","style2":"宋体","color1":"#000","color2":"#FFFFFF","size1":"50","size2":"30"}, 4);
Site.loadNewsList(313, {"y":0,"s":0,"w":1});
Fai.top.newsScrollOptions313 = {"scroll":true,"scrollMode":"up","leader":0};
Site.newsScroll({moduleId:313, scrollMode:'up', leader:'0'});

Site.loadNewsList(321, {"y":0,"s":0,"w":1});
Fai.top.newsScrollOptions321 = {"scroll":true,"scrollMode":"up","leader":0};
Site.newsScroll({moduleId:321, scrollMode:'up', leader:'0'});

Site.loadNewsList(320, {"y":0,"s":0,"w":1});
Fai.top.newsScrollOptions320 = {"scroll":true,"scrollMode":"up","leader":0};
Site.newsScroll({moduleId:320, scrollMode:'up', leader:'0'});

Fai.top.tabModule319Switch = false;

Site.loadNewsList(335, {"y":0,"s":0,"w":1});
Fai.top.newsScrollOptions335 = {"scroll":true,"scrollMode":"up","leader":0};
Site.newsScroll({moduleId:335, scrollMode:'up', leader:'0'});

Site.loadNewsList(336, {"y":0,"s":0,"w":1});
Fai.top.newsScrollOptions336 = {"scroll":true,"scrollMode":"up","leader":0};
Site.newsScroll({moduleId:336, scrollMode:'up', leader:'0'});

Fai.top.tabModule334Switch = false;

Site.loadNewsList(307, {"y":0,"s":0,"w":1});
Fai.top.newsScrollOptions307 = {"scroll":true,"scrollMode":"up","leader":0};
Site.newsScroll({moduleId:307, scrollMode:'up', leader:'0'});

Site.loadNewsList(318, {"y":0,"s":0,"w":1});
Fai.top.newsScrollOptions318 = {"scroll":true,"scrollMode":"up","leader":0};
Site.newsScroll({moduleId:318, scrollMode:'up', leader:'0'});

Site.loadNewsList(328, {"y":0,"s":0,"w":1});
Fai.top.newsScrollOptions328 = {"scroll":true,"scrollMode":"up","leader":0};
Site.newsScroll({moduleId:328, scrollMode:'up', leader:'0'});

Site.loadNewsList(339, {"y":0,"s":0,"w":1});
Fai.top.newsScrollOptions339 = {"scroll":true,"scrollMode":"up","leader":0};
Site.newsScroll({moduleId:339, scrollMode:'up', leader:'0'});

Site.loadNewsList(338, {"y":0,"s":0,"w":1});
Fai.top.newsScrollOptions338 = {"scroll":true,"scrollMode":"up","leader":0};
Site.newsScroll({moduleId:338, scrollMode:'up', leader:'0'});

Fai.top.tabModule337Switch = false;

Site.loadNewsList(329, {"y":0,"s":0,"w":1});
Fai.top.newsScrollOptions329 = {"scroll":true,"scrollMode":"up","leader":0};
Site.newsScroll({moduleId:329, scrollMode:'up', leader:'0'});

Site.loadNewsList(341, {"y":0,"s":0,"w":1});
Fai.top.newsScrollOptions341 = {"scroll":true,"scrollMode":"up","leader":0};
Site.newsScroll({moduleId:341, scrollMode:'up', leader:'0'});

Site.loadNewsList(342, {"y":0,"s":0,"w":1});
Fai.top.newsScrollOptions342 = {"scroll":true,"scrollMode":"up","leader":0};
Site.newsScroll({moduleId:342, scrollMode:'up', leader:'0'});

Site.loadNewsList(343, {"y":0,"s":0,"w":1});
Fai.top.newsScrollOptions343 = {"scroll":true,"scrollMode":"up","leader":0};
Site.newsScroll({moduleId:343, scrollMode:'up', leader:'0'});

Fai.top.tabModule340Switch = false;

Site.initMulColModuleInIE('#module327');


	


	Site.initPage();	// 这个要放在最后，因为模块组初始化时会把一些模块隐藏，导致没有高度，所以要放最后执行

	
	setTimeout("afterModuleLoaded()", 0);

	if( _manageMode ) {
	
		Site.initManagePage();
	}

	Site.triggerGobalEvent("siteReadyLoad");
});

function afterModuleLoaded() {
	Site.initPage2();
	
	Site.mallCartInit(_colId);
	Site.mobiWebInit();
	
	
	
	
} // afterModuleLoaded end

var _lcid = 2052;
var _signupDays = 0;
var _signupHours = 13;
var _cid = 9853453;
var _colId = 2;
var _extId = 0;
var _fromColId = -1;
var _designAuth = false;
var _manageMode = false;
var _oem = false;
var _siteAuth = 0;
var _adm = false;
var _siteVer = 10;
var _manageStatus = false;
var nav2SubMenu=[];
var nav12SubMenu=[];
var nav13SubMenu=[];
var nav17SubMenu=[];
var nav105SubMenu=[];
var nav106SubMenu=[];
var nav107SubMenu=[];

var _useTemplateBanner = true;				// 是否使用全局模版
var _templateBannerData = {"l":[{"i":"ABUIABACGAAgppTZugUo4OfVaTCAAzjwAQ","p":"http://9853453.s21i-9.faiusr.com/2/ABUIABACGAAgppTZugUo4OfVaTCAAzjwAQ.jpg","w":384,"h":240,"tp":"http://9853453.s21i-9.faiusr.com/2/ABUIABACGAAgppTZugUo4OfVaTCAAzjwAQ!100x100.jpg"},{"i":"ABUIABACGAAg-ZPZugUoxdP7ywMwgAM48AE","p":"http://9853453.s21i-9.faiusr.com/2/ABUIABACGAAg-ZPZugUoxdP7ywMwgAM48AE.jpg","w":384,"h":240,"tp":"http://9853453.s21i-9.faiusr.com/2/ABUIABACGAAg-ZPZugUoxdP7ywMwgAM48AE!100x100.jpg"},{"i":"ABUIABACGAAgk4zZugUo9uzUmQcwgAg4gAY","p":"http://9853453.s21i-9.faiusr.com/2/ABUIABACGAAgk4zZugUo9uzUmQcwgAg4gAY.jpg","w":1024,"h":768,"tp":"http://9853453.s21i-9.faiusr.com/2/ABUIABACGAAgk4zZugUo9uzUmQcwgAg4gAY!100x100.jpg"},{"i":"ABUIABACGAAgk43ZugUo6cX33AcwgBo40A4","p":"http://9853453.s21i-9.faiusr.com/2/ABUIABACGAAgk43ZugUo6cX33AcwgBo40A4.jpg","w":3328,"h":1872,"tp":"http://9853453.s21i-9.faiusr.com/2/ABUIABACGAAgk43ZugUo6cX33AcwgBo40A4!100x100.jpg"}],"n":[{"t":0,"i":"2536","e":0,"u":"","p":"http://0.ss.faisys.com/image/template/banners/2536.jpg?v=20151228","w":960,"h":160,"el":"","er":""},{"t":0,"i":"2529","e":0,"u":"","p":"http://0.ss.faisys.com/image/template/banners/2529.jpg?v=20151228","w":960,"h":160,"el":"","er":""},{"t":0,"i":"2522","e":0,"u":"","p":"http://0.ss.faisys.com/image/template/banners/2522.jpg?v=20151228","w":960,"h":160,"el":"","er":""},{"t":0,"i":"2293","e":0,"u":"","p":"http://0.ss.faisys.com/image/template/banners/2293.jpg?v=20140903","w":960,"h":160,"el":"","er":""}],"ce":{"c1":"#000","c2":"#FFFFFF"},"s":4,"o":true,"t":7,"pl":0,"c":4,"bt":0,"i":4000,"a":1500,"h":false,"p":0,"pt":0,"f":{},"at":0,"ws":false};		// 模版的数据
var _pageBannerData = {"s":0,"i":4000,"a":1500,"h":false,"o":false,"t":1,"p":0,"pt":0,"pl":0,"bt":1,"l":[],"f":{},"ce":{},"n":[],"c":3,"at":0,"ws":false};					// 当前页面的自定义数据（页面独立样式设置）
var _bannerData = _templateBannerData;

var _mallOpen = false;

var _navStyleChanged = 0;
var _navItemOnCkOpen = false;					  // 有下级菜单不可点击
var _navHidden =false;                                  //true:隐藏；flase：显示
var _navPositionFixTop =  false;        		  // 导航栏固定到顶部
var _navHeightChange = true;						  //导航栏高度改变，逻辑分界点2015-08-21
var _siteDemo = false;

var _backToTop = false;
var _aid = 9853453;
var _cloneAid = 0;
var _templateLayout = 1;
var _webBannerHeight = -1;
var _uiMode= false;

</script>

</body>
</html>