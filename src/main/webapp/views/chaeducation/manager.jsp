<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- css -->
<%@include file="/views/includes/head.jsp"%>
</head>
<body>
	<!-- top -->
	<%@include file="/views/includes/wrapper.jsp"%>

	<!-- side -->
	<%@include file="/views/chaeducation/chaeducationleft2.jsp"%>

	<!-- main -->
	<div id="page-wrapper">
		<div class="header">
			<ol class="breadcrumb">
				<li class="active">首页</li>
				<li class="active">特色教育</li>
				<li class="active">寄宿教育</li>
				<li class="active">管理人员</li>
			</ol>
		</div>

		<!-- 每个页面主要显示界面，不同 -->
		<div class="header">
			<div class="col-md-7" style="width: 100%;">
				<div class="panel panel-default">
					<div class="panel-heading">管理人员</div>
					<div class="panel-body">
						<div id="manager-chart"></div>
					</div>
				</div>
			</div>
		</div>


	</div>

	<script src="/EIMS/assets/js/jquery-1.10.2.js"></script>
	<!-- Bootstrap Js -->
	<script src="/EIMS/views/assets/js/bootstrap.min.js"></script>

	<!-- Metis Menu Js -->
	<script src="/EIMS/views/assets/js/jquery.metisMenu.js"></script>
	<!-- Morris Chart Js -->
	<script src="/EIMS/views/assets/js/morris/raphael-2.1.0.min.js"></script>
	<script src="/EIMS/views/assets/js/morris/morris.js"></script>


	<script src="/EIMS/views/assets/js/easypiechart.js"></script>
	<script src="/EIMS/views/assets/js/easypiechart-data.js"></script>

	<script src="/EIMS/views/assets/js/Lightweight-Chart/jquery.chart.js"></script>

	<!-- Custom Js -->
	<script src="/EIMS/views/assets/js/custom-scripts.js"></script>

	<script src="/EIMS/views/assets/js/custom2.js"></script>


</body>