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
	<%@include file="/views/chaeducation/chaeducationleft3.jsp"%>

	<!-- main -->
	<div id="page-wrapper">
		<div class="header">
			<ol class="breadcrumb">
				<li class="active">首页</li>
				<li class="active">特色教育</li>
				<li class="active">教育对口支援</li>
				<li class="active">对口支援项目</li>
			</ol>
		</div>


		<!-- 每个页面主要显示界面，不同 -->
		<div class="header">
			<div class=" col-md-10">
				<div class="panel panel-default">
					<div class="panel-heading" style="font-size: 20px">对口资源项目管理</div>
					<div class="panel-body">
						<span style="font-size: 15px">教育扶贫提升功能</span>
						<div class="progress progress-striped">
							<div class="progress-bar progress-bar-success" role="progressbar"
								aria-valuenow="10" aria-valuemin="0" aria-valuemax="100"
								style="width: 10%">
								<span class="sr-only">10% Complete (success)</span>
							</div>
						</div>
					</div>
					<div class="panel-body">
						<span style="font-size: 15px">预算执行进度管理</span>
						<div class="progress progress-striped">
							<div class="progress-bar progress-bar-info" role="progressbar"
								aria-valuenow="20" aria-valuemin="0" aria-valuemax="100"
								style="width: 20%">
								<span class="sr-only">20% Complete</span>
							</div>
						</div>
					</div>
					<div class="panel-body">
						<span style="font-size: 15px">绩效管理</span>
						<div class="progress progress-striped">
							<div class="progress-bar progress-bar-warning" role="progressbar"
								aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"
								style="width: 60%">
								<span class="sr-only">60% Complete (warning)</span>
							</div>
						</div>
					</div>
					<div class="panel-body">
						<span style="font-size: 15px">教育对口支援</span>
						<div class="progress progress-striped">
							<div class="progress-bar progress-bar-danger" role="progressbar"
								aria-valuenow="80" aria-valuemin="0" aria-valuemax="100"
								style="width: 80%">
								<span class="sr-only">80% Complete</span>
							</div>
						</div>
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

	<!-- Custom Js -->
	<script src="/EIMS/views/assets/js/custom-scripts.js"></script>
</body>