
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>学生信息列表</title>
<%@include file="/views/includes/head.jsp"%>
</head>
<body>

	<!-- 头部文件 -->
	<%@include file="/views/includes/wrapper.jsp"%>

	<!--左边文件 -->
	<%@include file="/views/stumanager/stumanagerleft.jsp"%>

	<div id="page-wrapper">
		<div class="header">
			<ol class="breadcrumb">
				<li class="active">首页</li>
				<li class="active">学生管理</li>
				<li class="active">学生信息列表</li>
			</ol>
		</div>
		<div class="header">
			<div class="breadcrumb">
				<form class="form-inline" action="<c:url value= 'findlike' />">
					<!-- 每个页面主要显示界面，不同 -->
					<div class="header">
							<table class="table table-striped table-bordered table-hover">
								<tbody>
								<thead>
									<tr>
										<th>序号</th>
										<th>姓名</th>
										<th>年龄</th>
										<th>性别</th>
										<th>年级</th>
										<th>入学时间</th>
										<th>民族</th>
										<th>班级</th>
										<th>操作</th>
										
									</tr>
								</thead>
								<c:forEach items="${list}" var="t">
									<tr>
										<td>${t.id}</td>
										<td>${t.name}</td>
										<td>${t.age}</td>
										<td>${t.sex}</td>
										<td>${t.grade}</td>
										<td>${t.year}</td>
										<td>${t.nation}</td>
										<td>${t.team}</td>
										<td><a href="<c:url value='edit?id=${t.id }'/>">编辑
										</a> <a href="<c:url value='delete?id=${t.id}'/>"
											onclick="return confirm('您确定删除吗？')">删除</a></td>
									</tr>
								</c:forEach>
							</table>
					</div>
				</form>
			</div>
		</div>

		<div class="header">
			<p>Copyright &copy; 2017 ——by第十一小组</p>
		</div>
	</div>
</body>
</html>