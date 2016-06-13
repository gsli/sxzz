<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>滚动图片添加页面</title>
<link href="/SXZZ/back/css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="/SXZZ/back/js/jiaoyan.js"></script>
<script type="text/javascript" src="/SXZZ/back/js/upload.js"></script>

<script>
	var ll=""+'${message}';
	if(ll!=""){
		alert(ll);
	} 
</script>
</head>

<body onload="init()">
	<div class="place">
		<span>位置：</span>
		<ul class="placeul">
			<li><a href="#">图片管理</a></li>
			<li><a href="#">滚动图片添加</a></li>
		</ul>
	</div>

	<div class="formbody">

		<div class="formtitle">
			<span>滚动图片添加</span>
		</div>

		<form action="/SXZZ/mainimage/add" method="post"
			enctype="multipart/form-data">
			<ul class="forminfo">
				<li>
					<img src="/SXZZ/back/images/zanwutupian.jpg" id="img" width="850px" height="350px" style="border:1px solid #aaa;margin-left: 100px;"/>
					<input type="file" name="imageM" onchange="previewImage(this,'img')" style="border:0px solid #aaa;margin-left: 100px;">
				</li>
				
					<br>
				<li><label>&nbsp;</label> <input type="submit" class="btn"
					value="确认保存" /></li>
			</ul>
		</form>
	</div>
	
</body>
</html>
