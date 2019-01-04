<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page import="com.springboot.eims.controller.StudentController"%>
<%@ page isELIgnored="false"%>
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
				<li class="active">学生</li>
			</ol>
		</div>

		<!-- 每个页面主要显示界面，不同 -->
		<div class="header">
			<div class="breadcrumb">
				<h3 align="center">寄宿学生</h3>
				<br>
				<table class="table table-striped table-bordered table-hover"
					style="margin-left: 0 auto">
					<tr>
						<th scope="col">民族\年级</th>
						<th scope="col">幼儿园</th>
						<th scope="col">一年级</th>
						<th scope="col">二年级</th>
						<th scope="col">三年级</th>
						<th scope="col">四年级</th>
						<th scope="col">五年级</th>
						<th scope="col">六年级</th>
						<th scope="col">七年级</th>
						<th scope="col">八年级</th>
						<th scope="col">......</th>
					</tr>

					<tr>
						<th scope="row">总计</th>
						<c:forEach items="${z[0]}" var="zj">
							<td><c:out value="${zj}" /></td>
						</c:forEach>
					</tr>
					<tr>
						<th scope="row">回族</th>
						<c:forEach items="${z[1]}" var="huizu">
							<td><c:out value="${huizu}" /></td>
						</c:forEach>
					</tr>
					<tr>
						<th scope="row">蒙古族</th>
						<c:forEach items="${z[2]}" var="menggu">
							<td><c:out value="${menggu}" /></td>
						</c:forEach>
					</tr>
					<tr>
						<th scope="row">维吾尔族</th>
						<c:forEach items="${z[3]}" var="weiwu">
							<td><c:out value="${weiwu}" /></td>
						</c:forEach>
					</tr>
					<tr>
						<th scope="row">彝族</th>
						<c:forEach items="${z[4]}" var="yizu">
							<td><c:out value="${yizu}" /></td>
						</c:forEach>
					</tr>
					<tr>
						<th scope="row">白族</th>
						<c:forEach items="${z[5]}" var="baizu">
							<td><c:out value="${baizu}" /></td>
						</c:forEach>
					</tr>
					<tr>
						<th scope="row">壮族</th>
						<c:forEach items="${z[6]}" var="zhuangzu">
							<td><c:out value="${zhuangzu}" /></td>
						</c:forEach>
					</tr>
					<tr>
						<th scope="row">其他</th>
						<c:forEach items="${z[7]}" var="other">
							<td><c:out value="${other}" /></td>
						</c:forEach>
					</tr>



				</table>
			</div>
		</div>

		<div class="header">
			<p>Copyright &copy; 2017 ——by第十一小组</p>
		</div>
	</div>


</body>