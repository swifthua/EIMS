<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>项目审批</title>
<%@include file="/views/includes/head.jsp"%>
</head>
<%@include file="/views/includes/wrapper.jsp"%>
<%@include file="/views/includes/projectleft.jsp"%>

<body>
	<div id="page-wrapper">
		<div class="header">
			<h1 class="page-header">项目审批</h1>
			<form method="post" id="form">
				<div class="sub-title">项目编号</div>
				<div style="width: 60%;">
					<input type="text" class="form-control username"
						value="${project.projectId}" readonly="true" name="projectId"
						placeholder="项目编号">
				</div>
				<div class="sub-title">项目名称</div>
				<div style="width: 60%;">
					<input type="text" class="form-control"
						value="${project.projectName}" readonly="true" placeholder="项目名称">
				</div>
				<div class="sub-title">所需金额</div>
				<div style="width: 60%;">
					<input type="text" class="form-control"
						value="${project.projectMoney}" readonly="true" placeholder="所需金额">
				</div>
				<div class="sub-title">区域</div>
				<div style="width: 60%;">
					<input type="text" class="form-control"
						value="${project.area2.areaName}" readonly="true" placeholder="区域">
				</div>
				<div class="sub-title">申请人</div>
				<div style="width: 60%;">
					<input type="text" class="form-control" value="${project.proposer}"
						readonly="true" placeholder="申请人">
				</div>
				<br /> <br />


				<div class="sub-title">经费来源</div>
				<div style="width: 60%;">
					<c:choose>
						<c:when test="${examine.moneySource==null}">
							<select class="form-control" name="moneySource">
								<c:forEach var="item" items="${moneyList}">
									<option value="${item}">${item}</option>
								</c:forEach>
							</select>
						</c:when>
						<c:otherwise>
							<select class="form-control" name="area">
								<c:forEach var="item" items="${moneyList}">
									<c:if test="${examine.moneySource==item }">
										<option value="${item}" selected="selected">${item}</option>
									</c:if>
									<option value="${item}">${item}</option>
								</c:forEach>
							</select>
						</c:otherwise>
					</c:choose>
				</div>
				<div class="sub-title">项目批复</div>
				<div style="width: 60%;">
					<textarea class="form-control" name="approvalOpinions"
						value="${examine.approvalOpinions}" id='opinions' rows="3">${examine.approvalOpinions}</textarea>
				</div>
				<c:if test="${tag!='查看' }">
					<button type="button" id="btn" class="btn btn-default"
						style="align: center;">驳回</button>
					<button type="button" id="btn1" class="btn btn-default"
						style="align: center;">审核通过</button>
				</c:if>
			</form>
		</div>
		</div>
		<br /> <br />
</body>
<%@include file="/views/includes/script.jsp"%>
<script type="text/javascript">


$("#btn").click(function() {
	var path="project/checkProject?status=0";
	$("#form").attr("action", path).submit();
})
$("#btn1").click(function() {
	var path="project/checkProject?status=1"
		$("#form").attr("action", path).submit();
	});



</script>
</html>