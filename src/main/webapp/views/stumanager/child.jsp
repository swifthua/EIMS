<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>学生管理</title>
<%@include file="/views/includes/head.jsp"%>

</head>
<body>
	<!-- 头部文件 -->
	<%@include file="/views/includes/wrapper.jsp"%>

	<!--左边文件 -->
	<%@include file="/views/stumanager/stumanagerleft.jsp"%>
	<!-- main -->
	<div id="page-wrapper">
		<div class="header">
			<ol class="breadcrumb">
				<li class="active">首页</li>
				<li class="active">学生管理</li>
				<li class="active">儿童少年情况</li>
			</ol>
		</div>

		<!-- 每个页面主要显示界面，不同 -->
		<div class="header">
			<div class="breadcrumb">
				<table width="100%" border="0" cellpadding="0" cellspacing="0">
					<tr>
						<td align="center"><iframe scrolling="auto" name="pageFrame"
								src="/EIMS/generateChildLine" frameborder="0" width="100%"
								height="500"></iframe></td>
					</tr>
				</table>
			</div>
		</div>

		<div class="header">
			<p>Copyright &copy; 2017 ——by第十一小组</p>
		</div>
	</div>
</body>
</html>