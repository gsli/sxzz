<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>辅导员详细信息</title>
<link href="/SXZZ/back/css/style.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<div class="place">
		<span>位置：</span>
		<ul class="placeul">
			<li><a href="/SXZZ/Back/look_fdy">辅导员简介</a></li>
			<li><a href="#">辅导员详细信息</a></li>
		</ul>
	</div>

	<div class="formbody">

		<div class="formtitle">
			<span>${request.fdy.getName() }</span>
		</div>

			<ul class="forminfo">
				<li style="display: inline; margin-left: 200px;"><img alt="辅导员照片"
					src="/imgs/${request.fdy.getImage() }" id="img"
					style="width: 300px; height: 398px; border: 1px solid #345678;">
				</li>
			
				<li style="float:right; margin-right: 250px;">
					<label style="padding:0px 10px; width: 300px; height: 398px; border: 1px solid #345678;"><i>座右铭：</i>${request.fdy.getMotto() }</label>
				</li>
				
				<li>
					<label style="margin-left:200px; margin-bottom:20px; border:1px solid black; width:631px; min-height:200px; padding: 0px 10px;"><i>个人简介：</i>${request.fdy.getGrjj() }</label>
				</li>
			</ul>
			
	</div>
</body>
</html>