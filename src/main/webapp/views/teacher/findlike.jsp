
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>教职工管理</title>
<!-- Bootstrap Styles-->
<link href="<c:url value="/views/assets/css/bootstrap.css"/>"
	rel="stylesheet" />
<!-- FontAwesome Styles-->
<link href="<c:url value="/views/assets/css/font-awesome.css"/>"
	rel="stylesheet" />
<!-- Morris Chart Styles-->
<link
	href="<c:url value="/views/assets/js/morris/morris-0.4.3.min.css"/>"
	rel="stylesheet" />
<!-- Custom Styles-->
<link href="<c:url value="/views/assets/css/custom-styles.css"/>"
	rel="stylesheet" />
<!-- Google Fonts-->
<link href='https://fonts.googleapis.com/css?family=Open+Sans'
	rel='stylesheet' type='text/css' />

<link
	href="<c:url value="/views/assets/js/Lightweight-Chart/cssCharts.css"/>"
	rel="stylesheet" />
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
				<li class="active">教职工管理</li>
			</ol>
		</div>
		<div class="header">
			<div class="breadcrumb">
				<form class="form-inline" action="<c:url value= 'findlike' />">
					<div class="form-group">
						<label for="name">姓名</label> <input type="text"
							class="form-control" id="tid" name="name">
					</div>
					<div class="form-group">
						<label for="address">籍贯</label> <input type="text"
							class="form-control" id="address" name="address">
					</div>
					<div class="form-group">
						<label for="post">学历</label> <input type="text"
							class="form-control" id="post" name="diploma">
					</div>
					<button type="submit" class="btn btn-default">查找</button>

					<button type="button" class="btn btn-default" id="btn"
						onclick=window.location.href="insert.jsp">增加</button>
					<br><br>

					<!-- 每个页面主要显示界面，不同 -->
					<div class="header">
							<table class="table table-striped table-bordered table-hover">
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
										<th>操作</th>
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
										<td><a href="<c:url value='edit?tid=${t.tid }'/>">编辑
										</a> <a href="<c:url value='delete?tid=${t.tid}'/>"
											onclick="return confirm('您确定删除吗？')">删除</a></td>
									</tr>
								</c:forEach>
								<tbody>
								</tbody>
							</table>
						</div>
						</form>
					</div>
			</div>

		<div class="header">
			<p>Copyright &copy; 2017 ——by第十一小组</p>
		</div>
		</div>
		<%@include file="/views/includes/script.jsp"%>
</body>
</html>