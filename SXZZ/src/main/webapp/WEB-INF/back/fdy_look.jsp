<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>浏览修改辅导员信息</title>
<link href="/SXZZ/back/css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="/SXZZ/back/js/jquery.js"></script>
<script type="text/javascript" src="/SXZZ/back/js/page.js"></script>

<script type="text/javascript">

var page = ${model.getCurrentPage()};
var total = ${model.getTotalPage()};

	$(document).ready(function() {
		
		/* 删除 */
		$(".delete").click(function() {
			$(".del").fadeIn(200);
		});

		$(".tiptop a").click(function() {
			$(".del").fadeOut(200);
		});

		$(".sure1").click(function() {
			var other = document.getElementsByName("oneCheck");
			var ids = document.getElementsByName("hide");
			var str = "";
			for(var i = 0; i < other.length; i++){
				if(other[i].checked == true) {
					str += ids[i].value + "-";
				}
			}
			if(str.length > 0) {
				window.location.href="/SXZZ/Back/mulDel_fdy?mess="+str;
			}else {
				$(".del").fadeOut(100);
			}
		});

		$(".cancel1").click(function() {
			$(".del").fadeOut(100);
		});

	});
	
	var mess = '${mess}';
	if(mess.length > 3) {
		alert(mess);
	}
	
	function doDelete(id,image) {
		var res = confirm("确定要删除此辅导员信息吗？删除后将不能恢复。");
		if(res) {
			window.location.href="/SXZZ/Back/del_fdy?id="+id+"&img="+image;
		}
	}
	
	/* 全选 */
	function allCheck(obj) {
		var other = document.getElementsByName("oneCheck");
		if(obj.checked) {
			for(var i = 0; i < other.length; i++)
				other[i].checked = true;
		}else {
			for(var i = 0; i < other.length; i++)
				other[i].checked = false;
		}
	}
</script>


</head>


<body>

	<div class="place">
    <span>位置：</span>
    <ul class="placeul">
    <li><a href="/SXZZ/Back/index">首页</a></li>
    <li><a href="#">数据表</a></li>
    <li><a href="#">基本内容</a></li>
    </ul>
    </div>
    
    <div class="rightinfo">
    
    <div class="tools">
    
    	<ul class="toolbar">
        <li><span><img src="/SXZZ/back/images/t01.png" /></span><a href="/SXZZ/Back/fdyjs">添加</a></li>
        <li class="delete"><span><img src="/SXZZ/back/images/t03.png" /></span>删除</li>
        </ul>
    </div>
    
    
    <table class="tablelist">
    	<tr>
        <th><input name="allCheck" id="allCheck" type="checkbox" onchange="allCheck(this)"/>全选</th>
        <th>姓名</th>
        <th>座右铭</th>
        <th>操作</th>
        </tr>
        <s:iterator value="#request.model.getData()">
	        <tr>
		        <td><input name="oneCheck" id="oneCheck" type="checkbox"/>
		        	<input type="hidden" value="${id }" id="hide" name="hide">
		        </td>
		        <td>${name }</td>
		        <td>${motto }</td>
		        <td>
		        	<a href="/SXZZ/Back/xx_fdy?id=${id }" class="tablelink">查看</a>&nbsp;     
		        	<a href="/SXZZ/Back/xg_fdy?id=${id }" class="tablelink">修改</a>&nbsp;     
		        	<a href="#" onclick="doDelete(${id },'${image }')" class="tablelink">删除</a>
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
    </div>
  
    <div class="del">
    	<div class="tiptop"><span>提示信息</span><a></a></div>
        
      <div class="tipinfo">
        <span><img src="/SXZZ/back/images/ticon.png" /></span>
        <div class="tipright">
        <p>确认删除已选信息吗 ？删除之后不能恢复！</p>
        <cite>请谨慎操作！！！</cite>
        </div>
        </div>
        
        <div class="tipbtn">
        <input name="" type="button"  class="sure1" value="确定" />&nbsp;
        <input name="" type="button"  class="cancel1" value="取消" />
        </div>
    
    </div>
    
    
    
    
    </div>
    
    <script type="text/javascript">
	$('.tablelist tbody tr:odd').addClass('odd');
	</script>


</body>
</html>
