<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
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
				<li class="active">民族成分分布图</li>
			</ol>
		</div>
		<div class="header">
			<div class="breadcrumb">
				<table width="100%" border="0" cellpadding="0" cellspacing="0">
					<tr>
						<td align="center"><iframe scrolling="auto" name="pageFrame"
								src="/EIMS/views/teacher/chart/nation" frameborder="0" width="100%"
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