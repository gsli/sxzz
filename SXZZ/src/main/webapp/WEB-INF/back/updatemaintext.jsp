<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>内容修改页面</title>
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
			<li><a href="#">内容修改</a></li>
		</ul>
	</div>

	<div class="formbody">

		<div class="formtitle">
			<span>网站内容修改</span>
		</div>

		<form action="/SXZZ/Maintext/save" method="post"
			enctype="multipart/form-data" onsubmit="return checkAll()">
			<ul class="forminfo">
				<li><label>标题：</label> <input name="title" type="text"
					class="dfinput" id="title" onblur="title_fun()" value="${mainText.title }"/><i id="label_title"></i></li>
				<li><label>时间：</label> <input name="date" type="date" value="${mainText.date }"
					class="dfinput" id="date_new" onblur="date_fun" /><i id="label_date"></i></li>
				<li><label >类型：</label><select class="dfinput" name="type">
					<option value="0" <c:if test="${0 eq mainText.type}">selected</c:if>>国家政策</option>
					<option value="1" <c:if test="${mainText.type==1}">selected</c:if>>通知公告</option>
					<option value="2" <c:if test="${mainText.type==2}">selected</c:if>>时政要闻</option>
					<option value="3" <c:if test="${mainText.type==3}">selected</c:if>>校园动态</option>
					<option value="4" <c:if test="${mainText.type==4}">selected</c:if>>爱国主义教育</option>
					<option value="5" <c:if test="${mainText.type==5}">selected</c:if>>先进典型</option>
					<option value="6" <c:if test="${mainText.type==6}">selected</c:if>>理论学习</option>
					<option value="7" <c:if test="${mainText.type==7}">selected</c:if>>形式与政策</option>
					<option value="8" <c:if test="${mainText.type==8}">selected</c:if>>法律法规</option>
					<option value="9" <c:if test="${mainText.type==9}">selected</c:if>>案例分析</option>
					<option value="10" <c:if test="${mainText.type==10}">selected</c:if>>志愿服务</option>
					<option value="11" <c:if test="${mainText.type==11}">selected</c:if>>社会实践</option>
					<option value="12" <c:if test="${mainText.type==12}">selected</c:if>>经典导读</option>
					<option value="13" <c:if test="${mainText.type==13}">selected</c:if>>省上政策</option>
					<option value="14" <c:if test="${mainText.type==14}">selected</c:if>>学校政策</option>
				</select><i></i></li>
				<script id="editor" type="text/plain"
					style="width:1024px;height:300px;" name="context">${mainText.context}</script>
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
