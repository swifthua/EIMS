<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>项目列表</title>
<%@include file="/views/includes/head.jsp"%>
<%@include file="/views/includes/script.jsp"%>
</head>
<body>

	<!-- 头部文件 -->
	<%@include file="/views/includes/wrapper.jsp"%>

	<!--左边文件 -->
	<%@include file="/views/includes/projectleft.jsp"%>
	<!-- main -->
	<div id="page-wrapper">
		<div class="header">
			<ol class="breadcrumb">
				<li class="active">首页</li>
				<li class="active">项目管理</li>
			</ol>
		</div>
		<div class="header">
			<div class="breadcrumb">
				<form class="form-inline" action="project/view" method="get">
					<div class="form-group">
						<label for="exampleInputName2">项目名称</label> <input type="text"
							class="form-control" name="projectName" id="exampleInputName2">
					</div>
					<div class="form-group">
						<label for="exampleInputEmail2">申报人</label> <input type="text"
							class="form-control" name="proposer" id="exampleInputEmail2">
					</div>
					<button type="submit" class="btn btn-default">查找</button>
				</form>
			</div>
		</div>

		<!-- 每个页面主要显示界面，不同 -->
		<div class="header">
			<div class="breadcrumb">
				<table class="table table-striped table-bordered table-hover">
					<thead>
						<tr>
							<th>序号</th>
							<th>项目编号</th>
							<th>项目名称</th>
							<th>项目状态</th>
							<th>项目申报金额</th>
							<th>申请人</th>
							<th>操作</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="project" items="${projectList}" varStatus="var">
							<tr>
								<td>${var.index+1}</td>
								<td>${project.projectId}</td>
								<td>${project.projectName}</td>
								<td>${project.projectStatus}</td>
								<td>${project.projectMoney}</td>
								<td>${project.proposer}</td>
								<c:if test="${user.ext1 =='管理员' }">
									<td><a
										href="project/modify?projectId=${project.projectId}">修改</a></td>
								</c:if>
								<c:if test="${user.ext1 =='超级管理员' }">
									<td><a href="project/check?projectId=${project.projectId}">审批</a></td>
								</c:if>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
		<%@include file="/views/includes/pagination.jsp"%>
		<br> <br>
		<div class="header">
			<p>Copyright &copy; 2017 ——by第十一小组</p>
		</div>
	</div>
</body>

<script type="text/javascript">
	
</script>
</html>