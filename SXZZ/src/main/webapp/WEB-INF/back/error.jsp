<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<<<<<<< HEAD
=======
<%@ taglib prefix="s" uri="/struts-tags" %>
>>>>>>> refs/remotes/origin/dev
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<<<<<<< HEAD
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
=======
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>错误页面</title>
>>>>>>> refs/remotes/origin/dev
<link href="/SXZZ/back/css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="/SXZZ/back/js/jquery.js"></script>

<script language="javascript">
	$(function(){
    $('.error').css({'position':'absolute','left':($(window).width()-490)/2});
	$(window).resize(function(){  
    $('.error').css({'position':'absolute','left':($(window).width()-490)/2});
    })  
});  
</script> 


</head>


<body style="background:#edf6fa;">

	<div class="place">
    <span>位置：</span>
    <ul class="placeul">
    <li><a href="/SXZZ/Back/main">首页</a></li>
    <li><a href="#">404错误提示</a></li>
    </ul>
    </div>
    
    <div class="error">
    
<<<<<<< HEAD
    <h2>非常遗憾，您访问的页面出错了！</h2>
=======
    <h2>非常遗憾，您的操作失败了！</h2>
>>>>>>> refs/remotes/origin/dev
    <p>看到这个提示，就自认倒霉吧!</p>
<<<<<<< HEAD
    <div class="reindex"><a href="/SXZZ/Back/main" target="_parent">返回首页</a></div>
=======
    <div class="reindex">
    <a href="/SXZZ/Back/index" target="rightFrame">返回首页</a>
    
    </div>
>>>>>>> refs/remotes/origin/dev
    
    </div>



</body>
</html>
