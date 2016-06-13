<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>内容列表</title>
<link href="/SXZZ/back/css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="/SXZZ/back/js/jquery.js"></script>

<script type="text/javascript">
	$(document).ready(function() {
		$(".click").click(function() {
			 location.href = "/SXZZ/Maintext/excute"
		});

		$(".tiptop a").click(function() {
			$(".tip").fadeOut(200);
		});

		$(".sure").click(function() {
			$(".tip").fadeOut(100);
		});

		$(".cancel").click(function() {
			$(".tip").fadeOut(100);
		});

	});
	

	
	var currentPage=${pageModel.getCurrentPage()};
	var total=${pageModel.getTotalPage()};
	/* 下一页 */
	function nextPage(){
		if(currentPage<total){
			currentPage++;
			window.location.href="/SXZZ/Maintext/query.action?currentPage="+currentPage;
		}else{
			alert("已经是尾页了！");
			return;
		}
	}
	
	/* 上一页 */
	function prePage(){
		if(currentPage>1){
			currentPage--;
			window.location.href="/SXZZ/Maintext/query.action?currentPage="+currentPage;
		}else{
			alert("已经是首页了！");
			return;
		}
	}
	function queryType(type){
		if(type!=-1){
			window.location.href="/SXZZ/Maintext/query.action?myType="+type;
		}
		
	}
	
	/*删除函数*/
	function deleteData(url){
		var flag=true;
		flag=confirm("确定要删除该数据吗？");
		if(flag){
			window.location.href=url;
			alert("删除成功！");
		}
	}
</script>


</head>


<body>

	<div class="place">
		<span>位置：</span>
		<ul class="placeul">
			<li><a href="#">内容管理</a></li>
			<li><a href="#">内容列表</a></li>
		</ul>
	</div>

	<div class="rightinfo">

		<div class="tools">

			<ul class="toolbar">
				<li class="click"><span><img src="/SXZZ/back/images/t01.png" /></span>添加</li>
				<li>&nbsp;&nbsp;类型&nbsp;&nbsp;<select class="select1" name="type" onchange="queryType(this.value)">
					<option value="-1">类型查询</option>
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
				</select></li>
			</ul>
		</div>


		<table class="tablelist">
			<thead>
				<tr>
					<th><input name="" type="checkbox" value="" checked="checked" /></th>
					<th>编号<i class="sort"><img src="/SXZZ/back/images/px.gif" /></i></th>
					<th>标题</th>
					<th>类型</th>
					<th>发布时间</th>
					<th>操作</th>
				</tr>
			</thead>
			<tbody>
				<s:iterator value="#request.pageModel.getData()">

					<tr>
						<td><input name="" type="checkbox" value="" /></td>
						<td>${id}</td>
						<td>${title}</td>
						<s:if test="0==type">
							<td>国家政策</td>
						</s:if>
						<s:elseif test="1==type">
							<td>通知公告</td>
						</s:elseif>
						<s:elseif test="2==type">
							<td>时政要闻</td>
						</s:elseif>
						<s:elseif test="3==type">
							<td>校园动态</td>
						</s:elseif>
						<s:elseif test="4==type">
							<td>爱国主义教育</td>
						</s:elseif>
						<s:elseif test="5==type">
							<td>先进典型</td>
						</s:elseif>
						<s:elseif test="6==type">
							<td>理论学习</td>
						</s:elseif>
						<s:elseif test="7==type">
							<td>形式与政策</td>
						</s:elseif>
						<s:elseif test="8==type">
							<td>法律法规</td>
						</s:elseif>
						<s:elseif test="9==type">
							<td>案例分析</td>
						</s:elseif>
						<s:elseif test="10==type">
							<td>志愿服务</td>
						</s:elseif>
						<s:elseif test="11==type">
							<td>社会实践</td>
						</s:elseif>
						<s:elseif test="12==type">
							<td>经典导读</td>
						</s:elseif>
						<s:elseif test="13==type">
							<td>省上政策</td>
						</s:elseif>
						<s:elseif test="14==type">
							<td>学校政策</td>
						</s:elseif>

						<td>${date}</td>
						<td><a class="tablelink" href="/SXZZ/Maintext/editor?id=${id}">查看</a> 
						<a href="javascript:void(0)" class="tablelink" onclick="deleteData('/SXZZ/Maintext/delete?id=${id}')"> 删除</a></td>
					</tr>
				</s:iterator>

			</tbody>
		</table>


		<div class="pagin">
			<div class="message">
				共<i class="blue">${pageModel.getTotalPage()}</i>页，当前显示第&nbsp;<i class="blue">${pageModel.getCurrentPage()}&nbsp;</i>页
			</div>
			<ul class="paginList">
				<li class="paginItem"><a href="javascript:;" onclick="prePage()"><span
						class="pagepre"></span></a></li>
				<c:forEach var="x" begin="1" end="${pageModel.getTotalPage()}" step="1">
				 <c:choose>
				<c:when test="${x==pageModel.getCurrentPage()}">
				<li class="paginItem current"><a href="/SXZZ/Maintext/query.action?currentPage=${x}"><c:out  value="${x}"></c:out></a></li>
				</c:when>
				<c:otherwise>
				<li class="paginItem"><a href="/SXZZ/Maintext/query.action?currentPage=${x}"><c:out  value="${x}"></c:out></a></li>
				</c:otherwise>
			   </c:choose>
				</c:forEach>
				
				<li class="paginItem"><a href="javascript:;" onclick="nextPage()"><span
						class="pagenxt"></span></a></li>
			</ul>
		</div>


		<div class="tip">
			<div class="tiptop">
				<span>提示信息</span><a></a>
			</div>

			<div class="tipinfo">
				<span><img src="images/ticon.png" /></span>
				<div class="tipright">
					<p>是否确认对信息的修改 ？</p>
					<cite>如果是请点击确定按钮 ，否则请点取消。</cite>
				</div>
			</div>

			<div class="tipbtn">
				<input name="" type="button" class="sure" value="确定" />&nbsp; <input
					name="" type="button" class="cancel" value="取消" />
			</div>
		</div>
	</div>
	<script type="text/javascript">
		$('.tablelist tbody tr:odd').addClass('odd');
	</script>

</body>
</html>