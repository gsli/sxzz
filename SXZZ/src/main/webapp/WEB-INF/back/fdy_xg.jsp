<%@page import="com.opensymphony.xwork2.ActionContext"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>辅导员信息修改</title>
<link href="/SXZZ/back/css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="/SXZZ/back/js/upload.js"></script>
<script type="text/javascript">
	/* var mess = '${mess1}';
	if(mess.length > 3) {
		alert(mess);
	} */
</script>
</head>

<body>
	<div class="place">
		<span>位置：</span>
		<ul class="placeul">
			<li><a href="/SXZZ/Back/look_fdy">辅导员简介</a></li>
			<li><a href="#">表单</a></li>
		</ul>
	</div>

	<div class="formbody">

		<div class="formtitle">
			<span>请修改辅导员信息</span>
		</div>

		<form action="/SXZZ/Back/upd_fdy?id=${request.fdy.id }&img=${request.fdy.image }" method="post" enctype="multipart/form-data">
			<ul class="forminfo">
				<li><label>辅导员姓名：</label>
				<input name="name" type="text" class="dfinput" value="${request.fdy.name }" maxlength="20" /><i>姓名不得超过20字</i></li>
				<li><label>座右铭：</label>
				<textarea name="motto" class="textinput">${request.fdy.motto }</textarea></li>
				<li><label>照&nbsp;片：</label> <img alt="辅导员照片"
					src="/imgs/${request.fdy.image }" id="img" width="300px"
					height="400px"> <input type="file" name="image"
					onchange="previewImage(this,'img')"></li>
				<li><label>个人简介：</label>
				<textarea name="grjj" class="textinput">${request.fdy.grjj }</textarea></li>
				<li><label>&nbsp;</label> 
					<input type="submit" class="btn" value="确认修改" />
				</li>
			</ul>
		</form>
	</div>
</body>
</html>
