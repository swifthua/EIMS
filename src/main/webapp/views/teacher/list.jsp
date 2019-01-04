
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>教职工基本情况</title>
<%@include file="/views/includes/head.jsp"%>
</head>
<body>

	<!-- 头部文件 -->
	<%@include file="/views/includes/wrapper.jsp"%>

	<!--左边文件 -->
	<%@include file="/views/teacher/teacherleft.jsp"%>

	<div id="page-wrapper">
		<div class="header">
			<ol class="breadcrumb">
				<li class="active">首页</li>
				<li class="active">教师管理</li>
				<li class="active">教职工基本情况</li>
			</ol>
		</div>
		<div class="header">
			<form class="form-inline" action="<c:url value= 'findlike' />">
				<!-- 每个页面主要显示界面，不同 -->
				<div class="breadcrumb">
					<table class="table table-striped table-bordered table-hover">
						<tbody>
						<thead>
							<tr>
								<th>序号</th>
								<th>姓名</th>
								<th>性别</th>
								<th>出生年月</th>
								<th>籍贯</th>
								<th>民族</th>
								<th>学历</th>
								<th>职务</th>
								<th>职称</th>
								<th>党派</th>
								<th>备注</th>

							</tr>
						</thead>
						<c:forEach items="${list}" var="t">
							<tr>
								<td>${t.tid}</td>
								<td>${t.name}</td>
								<td>${t.sex}</td>
								<td>${t.birthday}</td>
								<td>${t.address}</td>
								<td>${t.nation}</td>
								<td>${t.diploma}</td>
								<td>${t.post}</td>
								<td>${t.jobTitle}</td>
								<td>${t.party}</td>
								<td>${t.remarks}</td>

							</tr>
						</c:forEach>
					</table>

				</div>
			</form>
			<div class="header">
				<p>Copyright &copy; 2017 ——by第十一小组</p>
			</div>
		</div>
	</div>
	<%@include file="/views/includes/script.jsp"%>
</body>
</html>