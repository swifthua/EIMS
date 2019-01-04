<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@include file="/views/includes/head.jsp"%>
</head>
<body>
	<div id="wrapper">
		<!-- top -->
		<%@include file="/views/includes/wrapper.jsp"%>

		<!-- side -->
		<nav class="navbar-default navbar-side" role="navigation">
		<div class="sidebar-collapse">
			<ul class="nav" id="main-menu">

				<li><a href="/EIMS/views/main.jsp"><i class="fa fa-desktop"></i>介绍</a>
				</li>

				<li><a href="/EIMS/views/main2.jsp"><i
						class="fa fa-desktop"></i>视频</span></a></li>
			</ul>
		</div>
		</nav>

		<!-- main -->
		<div id="page-wrapper">
			<div class="header">
				<h1 class="page-header">四川省民族地区教育事业的发展状况</h1>
			</div>

			<!-- 每个页面主要显示界面，不同 -->
			<div class="header">
				<embed src="./assets/video/video.mp4" width="100%" height="500px"
					type="application/MPEG-4 Video File" controller="True" />
			</div>

			<div class="header">
				<footer>
				<p>Copyright &copy; 2017 ——by第十一小组</p>
				</footer>
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
</body>
</html>