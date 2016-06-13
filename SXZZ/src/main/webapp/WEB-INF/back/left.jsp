<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>无标题文档</title>
<link href="/SXZZ/back/css/style.css" rel="stylesheet" type="text/css" />
<script language="JavaScript" src="/SXZZ/back/js/jquery.js"></script>

<script type="text/javascript">
$(function(){	
	//导航切换
	$(".menuson li").click(function(){
		$(".menuson li.active").removeClass("active")
		$(this).addClass("active");
	});
	
	$('.title').click(function(){
		var $ul = $(this).next('ul');
		$('dd').find('ul').slideUp();
		if($ul.is(':visible')){
			$(this).next('ul').slideUp();
		}else{
			$(this).next('ul').slideDown();
		}
	});
})	
</script>


</head>

<body style="background:#f0f9fd;">
	<div class="lefttop"><span></span>通讯录</div>
    
    <dl class="leftmenu">
        
    <dd>
    <div class="title">
    <span><img src="/SXZZ/back/images/leftico01.png" /></span>管理信息
    </div>
    	<ul class="menuson">
        <li><cite></cite><a href="index.html" target="rightFrame">首页模版</a><i></i></li>
        <li class="active"><cite></cite><a href="right.html" target="rightFrame">数据列表</a><i></i></li>
        <li><cite></cite><a href="imgtable.html" target="rightFrame">图片数据表</a><i></i></li>
        <li><cite></cite><a href="form.html" target="rightFrame">添加编辑</a><i></i></li>
        <li><cite></cite><a href="imglist.html" target="rightFrame">图片列表</a><i></i></li>
        <li><cite></cite><a href="imglist1.html" target="rightFrame">自定义</a><i></i></li>
        <li><cite></cite><a href="tools.html" target="rightFrame">常用工具</a><i></i></li>
        <li><cite></cite><a href="filelist.html" target="rightFrame">信息管理</a><i></i></li>
        <li><cite></cite><a href="tab.html" target="rightFrame">Tab页</a><i></i></li>
        <li><cite></cite><a href="error.html" target="rightFrame">404页面</a><i></i></li>
        </ul>    
    </dd>
        
    
    <dd>
    <div class="title">
    <span><img src="/SXZZ/back/images/leftico02.png" /></span>辅导员专区
    </div>
    <ul class="menuson">
        <li><cite></cite><a href="#">辅导员情况</a><i></i></li>
        <li><cite></cite><a href="/SXZZ/Back/fdyjs" target="rightFrame">填写辅导员简介</a><i></i></li>
        <li><cite></cite><a href="/SXZZ/Back/look_fdy" target="rightFrame">浏览修改辅导员信息</a><i></i></li>
    </ul>     
    </dd> 
     <dd>
    <div class="title">
    <span><img src="/SXZZ/back/images/leftico02.png" /></span>内容管理
    </div>
    <ul class="menuson">
<<<<<<< HEAD
        <li><cite></cite><a href="/SXZZ/Maintext/excute" target="rightFrame">内容添加</a><i></i></li>
        <li><cite></cite><a href="/SXZZ/Maintext/query" target="rightFrame">内容列表</a><i></i></li>
    </ul>     
    </dd> 
     <dd>
    <div class="title">
    <span><img src="/SXZZ/back/images/leftico02.png" /></span>滚动图片管理
    </div>
=======
        <li><cite></cite><a href="#">自定义</a><i></i></li>
        <li><cite></cite><a href="#">常用资料</a><i></i></li>
        <li><cite></cite><a href="#">信息列表</a><i></i></li>
        <li><cite></cite><a href="#">其他</a><i></i></li>
    </ul>    
    </dd>  
    
    
    <dd><div class="title"><span><img src="/SXZZ/back/images/leftico04.png" /></span>相关下载</div>
>>>>>>> refs/remotes/origin/dev
    <ul class="menuson">
<<<<<<< HEAD
        <li><cite></cite><a href="/SXZZ/mainimage/excute" target="rightFrame">滚动图片添加</a><i></i></li>
        <li><cite></cite><a href="/SXZZ/mainimage/query" target="rightFrame">滚动图片删除</a><i></i></li>
    </ul>     
    </dd> 
=======
        <li><cite></cite><a href="/SXZZ/Back/openPage" target="rightFrame">上传文档资料</a><i></i></li>
        <li><cite></cite><a href="/SXZZ/Back/openImg" target="rightFrame">上传图片资料</a><i></i></li>
        <li><cite></cite><a href="/SXZZ/Back/openVedio" target="rightFrame">上传视频资料</a><i></i></li>
    </ul>
    
    </dd>   
>>>>>>> refs/remotes/origin/dev
    
    </dl>
    

</body>
</html>
