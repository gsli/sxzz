<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>内容添加页面</title>
<link href="/SXZZ/back/css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" charset="utf-8"
	src="/SXZZ/utf8-jsp/ueditor.config.js"></script>
<script type="text/javascript" charset="utf-8" src="/SXZZ/utf8-jsp/ueditor.all.min.js"></script>
	
<script type="text/javascript" src="/SXZZ/back/js/jiaoyan.js"></script>
	

<script>
	var ll=""+'${message}';
	if(ll!=""){
		alert(ll);
	} 
	function init(){
		var date_1 = document.getElementById("date_new");
		var date = new Date();
		var year = date.getFullYear();
		var mon = date.getMonth() + 1;
		var day = date.getDate();
		if (mon <= 9) {
			mon = "0" + mon;
		}
		if (day <= 9) {
			day = "0" + day;
		}
		date = year + "-" + mon + "-" + day;
		date_1.value = date;
	}
	
	
</script>
</head>

<body onload="init()">
	<div class="place">
		<span>位置：</span>
		<ul class="placeul">
			<li><a href="#">内容管理</a></li>
			<li><a href="#">内容添加</a></li>
		</ul>
	</div>

	<div class="formbody">

		<div class="formtitle">
			<span>网站内容添加</span>
		</div>

		<form action="/SXZZ/Maintext/add" method="post"
			enctype="multipart/form-data" onsubmit="return checkAll()">
			<ul class="forminfo">
				<li><label>标题：</label> <input name="title" type="text"
					class="dfinput" id="title" onblur="title_fun()"/><i id="label_title"></i></li>
				<li><label>时间：</label> <input name="date" type="date"
					class="dfinput" id="date_new" onblur="date_fun" /><i id="label_date"></i></li>
				<li><label >类型：</label><select class="dfinput" name="type">
					<option value="0">国家政策</option>
					<option value="13">省上政策</option>
					<option value="14">学校政策</option>
					<option value="1">通知公告</option>
					<option value="2">时政要闻</option>
					<option value="3">校园动态</option>
					<option value="4">爱国主义教育</option>
					<option value="5">先进典型</option>
					<option value="6">理论学习</option>
					<option value="7">形式与政策</option>
					<option value="8">法律法规</option>
					<option value="9">案例分析</option>
					<option value="10">志愿服务</option>
					<option value="11">社会实践</option>
					<option value="12">经典导读</option>
				</select><i></i></li>
				<script id="editor" type="text/plain"
					style="width:1024px;height:300px;" name="context"></script>
					<br>
				<li><label>&nbsp;</label> <input type="submit" class="btn"
					value="确认保存" /></li>
			</ul>
		</form>
	</div>
	<script type="text/javascript">
		//建议使用工厂方法getEditor创建和引用编辑器实例，如果在某个闭包下引用该编辑器，直接调用UE.getEditor('editor')就能拿到相关的实例
		//var ue = UE.getEditor('editor');
		var editor = new UE.ui.Editor({
			autoHeightEnabled : false,
			scaleEnabled : false
		});
		editor.render("editor");
	</script>
</body>
</html>
