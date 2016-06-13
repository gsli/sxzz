<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="/SXZZ/back/css/style.css" rel="stylesheet" type="text/css" />
<link href="/SXZZ/back/css/myStyle.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="/SXZZ/back/js/page.js"></script>
<title>文档上传</title>

<script type="text/javascript">

var page = ${model.getCurrentPage()};
var total = ${model.getTotalPage()};
/* 首页 */
function firstPage() {
	page = 1;
	window.location.href="/SXZZ/Back/openPage?page="+page;
}

/* 上一页 */
function prePage() {
	if(page > 1) {
		page--;
		window.location.href="/SXZZ/Back/openPage?page="+page;
	}else {
		alert("没有上一页了");
	}
}

/* 下一页 */
function nextPage() {
	if(page < total) {
		page++;
		window.location.href="/SXZZ/Back/openPage?page="+page;
	}else {
		alert("没有下一页了");
	}
}

/* 尾页 */
function endPage() {
	page = total;
	window.location.href="/SXZZ/Back/openPage?page="+page;
}

var mess="${mess}";
if(mess.length > 3) {
	alert(mess);
}
	function checkMe(){
		var file = document.getElementById("file");
		var str = (file.value).split(".xls");
		var str1 = (file.value).split(".doc");
		var str2 = (file.value).split(".txt");
		var str3 = (file.value).split(".docx");
		var str4 = (file.value).split(".ppt");
		var str5 = (file.value).split(".pdf");
		var str6 = (file.value).split(".rar");
		var str7 = (file.value).split(".pptx");
		var str8 = (file.value).split(".zip");
		var str9 = (file.value).split(".xlsx");
		var flag = false;
		if(str.length > 1 || str1.length > 1 || str2.length > 1 || str3.length > 1 || str4.length > 1 || str5.length > 1
				 || str6.length > 1 || str7.length > 1 || str8.length > 1 || str9.length > 1){
			flag = true;
		}
		if(file.value.length <= 0) {
			alert("请选择要上传的文件！");
			return false;
		}else if(flag){
			XXX();
			return true;
		}else {
			alert("您只能上传xls,doc,txt,docx,ppt,pdf,rar,pptx,zip或xlsx格式的文件！");
			return false;
		}
	}
	
	function doDelete(id,imgName) {
		var res = confirm("确定要删除吗？");
		if(res) {
			window.location.href="/SXZZ/Back/delWord?id="+id+"&name="+imgName;
		}
	}
	
	/* 等待框 */
	function XXX() {  
	    displayMessage();  
	}  
	  
	function displayMessage() {  
	    if (navigator.userAgent.indexOf("Firefox") == -1) {  
	        var obj = document.getElementsByTagName('SELECT');  
	        for ( var i = 0; i < obj.length; i++) {  
	            if (obj[i].type.indexOf("select") != -1)  
	                obj[i].style.visibility = 'hidden';  
	        }  
	        mask.style.visibility = 'visible';  
	        massage_box.style.visibility = 'visible';  
	    }  
	}  
	function hiddenMessage() {  
	    mask.style.visibility = 'hidden';  
	    massage_box.style.visibility = 'hidden';  
	}  
	var Obj = ''  
	document.onmouseup = MUp  
	document.onmousemove = MMove  
	function MDown(Object) {  
	    Obj = Object.id  
	    document.all(Obj).setCapture()  
	    pX = event.x - document.all(Obj).style.pixelLeft;  
	    pY = event.y - document.all(Obj).style.pixelTop;  
	}  
	  
	function MMove() {  
	    if (Obj != '') {  
	        document.all(Obj).style.left = event.x - pX;  
	        document.all(Obj).style.top = event.y - pY;  
	    }  
	}  
	  
	function MUp() {  
	    if (Obj != '') {  
	        document.all(Obj).releaseCapture();  
	        Obj = '';  
	    }  
	}  
	
</script>
<!-- 等待框样式 -->
<style type="text/css">
#massage_box {
	position: absolute;
	margin-left: 300px;
	left: expression(( body.clientWidth-350)/2);
	top: expression(body.scrollTop +( body.clientHeight-this.offsetHeight)/2);
	width: 450px;
	height: 230px;
	filter: dropshadow(color = #666666, offx = 3, offy = 3, positive = 2);
	z-index: 2;
	visibility: hidden
}

#mask {
	position: absolute;
	top: 0;
	left: 0;
	width: expression(body.clientWidth);
	height: expression(body.scrollHeight > body.clientHeight ? body.scrollHeight : 
		 body.clientHeight);
	background: #666;
	filter: ALPHA(opacity = 60);
	z-index: 1;
	visibility: hidden
}

.massage {
	border: #036 solid;
	border-width: 1 1 3 1;
	width: 95%;
	height: 95%;
	background: #fff;
	color: #036;
	font-size: 12px;
	line-height: 150%
}

.header {
	background: #3F97C9;
	height: 10%;
	font-family: Verdana, Arial, Helvetica, sans-serif;
	font-size: 16px;
	padding-top: 5px;
	padding-bottom: 5px;
	padding-right: 5px;
	color: #fff
}
</style>

</head>
<body>
	<div class="place">
		<span>位置：</span>
		<ul class="placeul">
			<li><a href="/SXZZ/Back/index">首页</a></li>
			<li><a href="#">文档上传</a></li>
		</ul>
	</div>

	<div class="formbody">
		<div class="formtitle">
			<span>文档上传</span>
		</div>
		<div class="upload">
			<form onsubmit="return checkMe();" action="/SXZZ/Back/upload_word"
				method="post" enctype="multipart/form-data">
				<input type="file" name="file" id="file"> 
				<input type="submit" class="btn" value="确认上传">
			</form>
		</div>
		<div class="formtitle">
			<h3 style="color: red;">您能上传的文件格式包括xls,xlsx,doc,docx,txt,ppt,pptx,pdf,rar和zip,文件必须小于100M</h3>
		</div>

		<div id="massage_box" onclick="hiddenMessage();">
			<div class="massage">
				<div class="header" onmousedown="MDown(massage_box);">
					<div style="display: inline; width: 150px; position: absolute;">
						&nbsp;&nbsp;&nbsp;消息提示</div>
					<span
						onClick="massage_box.style.visibility='hidden'; mask.style.visibility='hidden'"
						style="float: right; display: inline; cursor: hand;"><img
						src="/SXZZ/back/images/guanbi.png" alt="×" height="25px"
						width="25px" /></span>
				</div>
				<div
					style="margin-top: 20px; margin-left: 20px; width: 128px; height: 128px; float: left;">
					<img src="/SXZZ/back/images/wait.gif" />
				</div>
				<div
					style="margin-top: 50px; width: 136px; height: 128px; float: left; padding-left: 40px;">
					正在为您上传文件, <br /> 等待返回查询结果......
				</div>
			</div>
		</div>


		<table class="tablelist">
			<tr>
				<th>文档名称</th>
				<th>上传日期</th>
				<th>操作</th>
			</tr>
			<s:iterator value="#request.model.getData()">
				<tr>
					<td>${fileName }</td>
					<td>${uploadDate }</td>
					<td><a href="#" onclick="doDelete(${id },'${name }')"
						class="tablelink">删除</a></td>
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
	<div id="mask" onclick="hiddenMessage();"></div>
</body>
</html>