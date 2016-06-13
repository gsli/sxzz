<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="/SXZZ/back/css/style.css" rel="stylesheet" type="text/css" />
<link href="/SXZZ/back/css/myStyle.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="/SXZZ/back/js/page.js"></script>
<title>图片上传</title>

<script type="text/javascript">

var page = ${model.getCurrentPage()};
var total = ${model.getTotalPage()};
/* 首页 */
function firstPage() {
	page = 1;
	window.location.href="/SXZZ/Back/openImg?page="+page;
}

/* 上一页 */
function prePage() {
	if(page > 1) {
		page--;
		window.location.href="/SXZZ/Back/openImg?page="+page;
	}else {
		alert("没有上一页了");
	}
}

/* 下一页 */
function nextPage() {
	if(page < total) {
		page++;
		window.location.href="/SXZZ/Back/openImg?page="+page;
	}else {
		alert("没有下一页了");
	}
}

/* 尾页 */
function endPage() {
	page = total;
	window.location.href="/SXZZ/Back/openImg?page="+page;
}

var mess="${mess}";
if(mess.length > 3) {
	alert(mess);
}
	function checkMe(){
		var file = document.getElementById("file");
		var str = (file.value).split(".jpg");
		var str1 = (file.value).split(".JPG");
		var str2 = (file.value).split(".jpeg");
		var str3 = (file.value).split(".bmp");
		var str4 = (file.value).split(".png");
		var str5 = (file.value).split(".gif");
		if(file.value.length <= 0) {
			alert("请选择要上传的文件！");
			return false;
		}else if(str.length > 1 || str1.length > 1 || str2.length > 1 || str3.length > 1 || str4.length > 1 || str5.length > 1){
			return true;
		}else {
			alert("您只能上传jpg,JPG,jpeg,bmp,png或gif格式的图片！");
			return false;
		}
	}
	
	function doDelete(id,imgName) {
		var res = confirm("确定要删除吗？");
		if(res) {
			window.location.href="/SXZZ/Back/delImg?id="+id+"&name="+imgName;
		}
	}
</script>

</head>
<body>
	<div class="place">
		<span>位置：</span>
		<ul class="placeul">
			<li><a href="/SXZZ/Back/index">首页</a></li>
			<li><a href="#">图片上传</a></li>
		</ul>
	</div>
	
	<div class="formbody">
		<div class="formtitle">
			<span>图片上传</span>
		</div>
		<div class="upload">
			<form onsubmit="return checkMe()" action="/SXZZ/Back/upload_img" method="post" enctype="multipart/form-data">
				<input type="file" name="file" id="file">
				<input type="submit" class="btn" value="确认上传">
			</form>
		</div>
		<div class="formtitle">
			<h3 style="color: red;">您能上传的图片格式包括jpg,JPG,jpeg,bmp,png和gif,图片必须小于5M</h3>
		</div>
		<table class="tablelist">
    	<tr>
        <th>图片</th>
        <th>上传日期</th>
        <th>操作</th>
        </tr>
        <s:iterator value="#request.model.getData()">
	        <tr>
		        <td><img src="/imgs/${name }" width="80px" height="80px" style="padding-bottom: 5px;"/></td>
		        <td>${uploadDate }</td>
		        <td>
		        	<a href="/imgs/${name }" class="tablelink">查看原图</a>&nbsp;
		        	<a href="#" onclick="doDelete(${id },'${name }')" class="tablelink">删除</a>
		        </td>
	        </tr>
        </s:iterator>
    </table>
    <div class="pagin">
    	<div class="message">共<i class="blue">${model.getTotalPage() }</i>页记录，当前显示第&nbsp;<i class="blue">${model.getCurrentPage() }&nbsp;</i>页</div>
        <ul class="paginList">
	        <li class="paginItem" onclick="prePage()"><a href="javascript:;"><span class="pagepre"></span></a></li>
	        <li class="paginItem"><a href="javascript:void(0)" onclick="firstPage()">首页</a></li>
	        <li class="paginItem"><a href="javascript:void(0)" onclick="endPage()">尾页</a></li>
	        <li class="paginItem" onclick="nextPage()"><a href="javascript:;"><span class="pagenxt"></span></a></li>
        </ul>
        <br><br>
    </div>
	</div>
</body>
</html>