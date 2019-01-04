<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@include file="/views/includes/head.jsp"%>
</head>
<body>

	<%@include file="/views/includes/wrapper.jsp"%>

	<!-- side -->
	<%@include file="/views/edufunds/edufundsleft.jsp"%>

	<!-- main -->
	<div id="page-wrapper">
		<div class="header">
			<ol class="breadcrumb">
				<li class="active">首页 </li>
				<li class="active">教育经费</li>
				<li class="active">绩效管理</li>
			</ol>
		</div>

		<!-- 每个页面主要显示界面，不同 -->
		<div class="header">
			<div class="breadcrumb">
				<h3 align="center">绩效管理</h3>
				<br>
				<table class="table table-striped table-bordered table-hover"
					style="margin-left: 0 auto">
					<tr>
						<th scope="col">区县</th>
						<th scope="col">正在审核</th>
						<th scope="col">未审核</th>
						<th scope="col">审核通过</th>
						<th scope="col">其他状态</th>
					</tr>

					<tr>
						<th scope="row">平昌县</th>
						<c:forEach items="${z[0]}" var="pc">
							<td><c:out value="${pc}" /></td>
						</c:forEach>
					</tr>
					<tr>
						<th scope="row">汶川县</th>
						<c:forEach items="${z[1]}" var="wx">
							<td><c:out value="${wx}" /></td>
						</c:forEach>
					</tr>
					<tr>
						<th scope="row">九寨沟县</th>
						<c:forEach items="${z[2]}" var="jz">
							<td><c:out value="${jz}" /></td>
						</c:forEach>
					</tr>
					<tr>
						<th scope="row">小金县</th>
						<c:forEach items="${z[3]}" var="xj">
							<td><c:out value="${xj}" /></td>
						</c:forEach>
					</tr>
					<tr>
						<th scope="row">黑水县</th>
						<c:forEach items="${z[4]}" var="hs">
							<td><c:out value="${hs}" /></td>
						</c:forEach>
					</tr>
					<tr>
						<th scope="row">理县</th>
						<c:forEach items="${z[5]}" var="lx">
							<td><c:out value="${lx}" /></td>
						</c:forEach>
					</tr>
					<tr>
						<th scope="row">阿坝县</th>
						<c:forEach items="${z[6]}" var="ab">
							<td><c:out value="${ab}" /></td>
						</c:forEach>
					</tr>
					<tr>
						<th scope="row">丹巴县</th>
						<c:forEach items="${z[7]}" var="db">
							<td><c:out value="${db}" /></td>
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
</html>