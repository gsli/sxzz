<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
	<%@taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>滚动图片删除页面</title>
<link href="/SXZZ/back/css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="/SXZZ/back/js/jquery.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$(".click").click(function() {
			 location.href = "/SXZZ/mainimage/excute"
		});
	});
	
function add(){
	window.location.href="/SXZZ/mainimage/excute";
}
	var currentPage=${pageModel.getCurrentPage()};
	var total=${pageModel.getTotalPage()};
	/* 下一页 */
	function nextPage(){
		if(currentPage<total){
			currentPage++;
			window.location.href="/SXZZ/mainimage/query.action?currentPage="+currentPage;
		}else{
			alert("已经是尾页了！");
			return;
		}
	}
	
	/* 上一页 */
	function prePage(){
		if(currentPage>1){
			currentPage--;
			window.location.href="/SXZZ/mainimage/query.action?currentPage="+currentPage;
		}else{
			alert("已经是首页了！");
			return;
		}
	}
	
	/*删除函数*/
	function deleteData(url){
		var flag=true;
		flag=confirm("确定要删除该滚动图片吗？");
		if(flag){
			window.location.href=url;
			alert("删除成功！");
		}
	}
</script>
</head>
<body>
	<div class="place">
		<span>位置：</span>
		<ul class="placeul">
			<li><a href="#">图片管理</a></li>
			<li><a href="#">滚动图片删除</a></li>
		</ul>
	</div>

	<div class="formbody">

		<div class="formtitle">
			<span>滚动图片删除</span>
		</div>
	</div>
	<img src="/images/${pageModel.getData().get(0).image }" id="img"
				width="850px" height="350px" style="border: 1px solid #aaa;margin-left: 100px;" />

	<div class="rightinfo">
		<ul class="toolbar" onclick="add()">
			<li class="click" onclick="add()"><span><img src="/SXZZ/back/images/t01.png" onclick="add()"/></span>添加</li>
		</ul>
		<div class="pagin">
			<div class="message">
				共<i class="blue">${pageModel.getTotalPage()}</i>张，当前显示第&nbsp;<i
					class="blue">${pageModel.getCurrentPage()}&nbsp;</i>张
			</div>
			<ul class="paginList">
				<li class="paginItem"><a href="javascript:;"
					onclick="prePage()"><span class="pagepre"></span></a></li>
				<c:forEach var="x" begin="1" end="${pageModel.getTotalPage()}"
					step="1">
					<c:choose>
						<c:when test="${x==pageModel.getCurrentPage()}">
							<li class="paginItem current"><a
								href="/SXZZ/mainimage/query.action?currentPage=${x}"><c:out
										value="${x}"></c:out></a></li>
						</c:when>
						<c:otherwise>
							<li class="paginItem"><a
								href="/SXZZ/mainimage/query.action?currentPage=${x}"><c:out
										value="${x}"></c:out></a></li>
						</c:otherwise>
					</c:choose>
				</c:forEach>

				<li class="paginItem"><a href="javascript:;"
					onclick="nextPage()"><span class="pagenxt"></span></a></li>
			</ul>
		</div>
	</div>
	 <input type="button" class="btn" value="确认删除" style="margin-left: 450px;" onclick="deleteData('/SXZZ/mainimage/delete?id=${pageModel.getData().get(0).id}')"/>

</body>
</html>

</body>
</html>
