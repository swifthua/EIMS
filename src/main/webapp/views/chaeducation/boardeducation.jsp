<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<%@include file="/views/includes/head.jsp"%>
</head>
<body>

	<%@include file="/views/includes/wrapper.jsp"%>

	<!-- side -->
	<%@include file="/views/chaeducation/chaeducationleft.jsp"%>

	<!-- main -->
	<div id="page-wrapper">
		<div class="header">
			<ol class="breadcrumb">
				<li class="active">首页</li>
				<li class="active">特色教育</li>
				<li class="active">寄宿教育</li>
				<li class="active">寄宿学校</li>
			</ol>
		</div>

		<!-- 每个页面主要显示界面，不同 -->
		<div class="header ">
			<div class="breadcrumb">
				<table width="100%" border="0" cellpadding="0" cellspacing="0">
					<tr>
						<td align="center"><iframe scrolling="auto" name="pageFrame"
								src="/EIMS/getRegionSchool" frameborder="0" width="100%"
								height="500"></iframe></td>
					</tr>
				</table>
				<%-- <div style="text-align: center">
					地区学校分布 <br>
					<br><a href="/EIMS/getRregionSchool">点击显示柱状图</a><br>
					<br> <img src="${chartURL}" border=0>
				</div> --%>
			</div>
		</div>

	</div>

	<!-- Custom Js -->
	<script src="/EIMS/views/assets/js/custom-scripts.js"></script>
</body>
</html>