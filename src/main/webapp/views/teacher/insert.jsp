
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>教职工增加</title>
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
	<%@include file="/views/stumanager/stumanagerleft.jsp"%>
	<!-- JS Scripts-->
	<!-- jQuery Js -->
	<!-- Bootstrap Js -->
	<script src="<c:url value="/views/assets/js/bootstrap.min.js"/>"></script>
	<!-- main -->
	<div id="page-wrapper">
		<div class="header">
			<ol class="breadcrumb">
				<li class="active">首页</li>
				<li class="active">教师管理</li>
				<li class="active">教职工增加</li>
			</ol>
		</div>

		<div class="header">
			<div class="breadcrumb">
				<form action="<c:url value='insert'/>">
					<input type="hidden" name="tid">
					<div class="sub-title">姓名</div>
					<div style="width: 60%;">
						<input type="text" class="form-control"
							id="tid" name="name" value="${t.name }">
					</div>
					<div class="sub-title">性别</div>
					<div style="width: 60%;">
						<input type="radio" name="sex"
							value="男" id="male"
							<c:if test='${t.sex eq "男"}'>checked="checked"</c:if> /> <label
							for="male">男</label> <input type="radio" name="sex" value="女"
							id="female" <c:if test='${t.sex eq "女"}'>checked="checked"</c:if> />
						<label for="female">女</label>
					</div>
					<div class="sub-title">生日</div>
					<div style="width: 60%;">
						<input type="text"
							class="form-control" id="birthday" name="birthday"
							value="${t.birthday}">
					</div>
					<div class="sub-title">籍贯</div>
					<div style="width: 60%;">
						<input type="text"
							class="form-control" id="address" name="address"
							value="${t.address }">
					</div>
					<div class="sub-title">民族</div>
					<div style="width: 60%;">
						<input type="text"
							class="form-control" id="nation" name="nation"
							value="${t.nation }">
					</div>

					<div class="sub-title">学历</div>
					<div style="width: 60%;">
						<input type="text"
							class="form-control" id="diploma" name="diploma"
							value="${t.diploma }">
					</div>
					<div class="sub-title">职位</div>
					<div style="width: 60%;">
						<input type="text"
							class="form-control" id="post" name="post" value="${t.post }">
					</div>
					<div class="sub-title">职称</div>
					<div style="width: 60%;">
						<input type="text"
							class="form-control" id="jobTitle" name="jobTitle"
							value="${jobTitle }">
					</div>
					<div class="sub-title">党派</div>
					<div style="width: 60%;">
						 <input type="text"
							class="form-control" id="party" name="party" value="${t.party }">
					</div>
					<div class="sub-title">备注</div>
					<div style="width: 60%;">
						 <input type="text"
							class="form-control" id="remaks" name="remarks"
							value="${t.remarks }">
					</div>
					<br><br>
					<div>
						<button class="btn btn-default">保存</button>
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
