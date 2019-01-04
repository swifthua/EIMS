
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
	<%@include file="/views/includes/wrapper.jsp"%>
	<%@include file="/views/stumanager/stumanagerleft.jsp"%>
	<script src="<c:url value="/views/assets/js/bootstrap.min.js"/>"></script>
	<!-- main -->
	<div id="page-wrapper">
		<div class="header">
			<ol class="breadcrumb">
				<li class="active">首页</li>
				<li class="active">学生管理</li>
				<li class="active">学生修改</li>
			</ol>
		</div>

		<div class="header">
			<div class="breadcrumb">
				<h1 >编辑学生信息</h1>
				<form action="<c:url value='update'/>">
					<input type="hidden" name="id" value="${stu.id }">
					<div class="sub-title">姓名</div>
					<div style="width: 60%;">
						<input type="text" class="form-control" id="id" name="name"
							value="${stu.name }">
					</div>
					<div class="sub-title">年龄</div>
					<div style="width: 60%;">
						<input type="text" class="form-control" id="age" name="age"
							value="${stu.age }">
					</div>
					<div class="sub-title">性别</div>
					<div style="width: 60%;">
						<input type="radio" name="sex" value="男" id="male"
							<c:if test='${stu.sex eq "男"}'>checked="checked"</c:if> /> <label
							for="male">男</label> <input type="radio" name="sex" value="女"
							id="female"
							<c:if test='${stu.sex eq "女"}'>checked="checked"</c:if> /> <label
							for="female">女</label>
					</div>
					<div class="sub-title">年级</div>
					<div style="width: 60%;">
						<input type="text" class="form-control" id="grade" name="grade"
							value="${stu.grade}">
					</div>
					<div class="sub-title">入学时间</div>
					<div style="width: 60%;">
						<input type="text" class="form-control" id="year" name="year"
							value="${stu.year}">
					</div>

					<div class="sub-title">民族</div>
					<div style="width: 60%;">
						<input type="text" class="form-control" id="nation" name="nation"
							value="${stu.nation }">
					</div>
					<div class="sub-title">班级</div>
					<div style="width: 60%;">
						<input type="text" class="form-control" id="post" name="team"
							value="${stu.team }">
					</div>
					<br>
					<br>
					<div>
					<button type="submit" id="btn" class="btn btn-default">保存</button>
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
