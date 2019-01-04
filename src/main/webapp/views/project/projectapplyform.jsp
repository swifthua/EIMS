<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>项目申报</title>
<%@include file="/views/includes/head.jsp"%>
</head>
<head>
<%@include file="/views/includes/wrapper.jsp"%>
<%@include file="/views/includes/projectleft.jsp"%>
<div id="page-wrapper">
	<form action="${requreUrl }" method="post" id="form">
		<div class="header">
			<div class="breadcrumb">
				<h1>项目${tag}</h1>
				<c:choose>
					<c:when test="${tag =='新增'}">
						<div class="sub-title">项目编号</div>
						<div style="width: 60%;">
							<input type="text" id="projectId" class="form-control "
								class="projectIdsame" name="projectId" placeholder="项目编号"
								required onchange="selectId()">
						</div>
					</c:when>
					<c:when test="${tag =='修改'}">
						<div class="sub-title">项目编号</div>
						<div style="width: 60%;">
							<input type="text" class="form-control "
								value="${project.projectId }" class="projectIdsame"
								name="projectId" placeholder="项目编号" readonly="true"">
						</div>
					</c:when>
				</c:choose>

				<div class="sub-title">项目名称</div>
				<div style="width: 60%;">
					<input type="text" class="form-control" name="projectName"
						value="${project.projectName}" placeholder="项目名称">
				</div>
				<div class="sub-title">项目状态</div>
				<div id="statusId" style="width: 60%">
					<c:choose>
						<c:when test="${project.projectStatus==null}">
							<select class="form-control" name="projectStatus">
								<c:forEach var="item" items="${statusList}">
									<c:if test="${item=='待审核' }">
										<option value="${item}" selected="selected">${item}</option>
									</c:if>
								</c:forEach>
							</select>
						</c:when>
						<c:otherwise>
							<select class="form-control" name="projectStatus">
								<c:forEach var="item" items="${statusList}">
									<c:if test="${item ==project.projectStatus }">
										<option value="${item}" selected="selected">${item}</option>
									</c:if>
								</c:forEach>
							</select>
						</c:otherwise>
					</c:choose>

				</div>
				<div class="sub-title">所需金额</div>
				<div style="width: 60%;">
					<input type="text" class="form-control" name="projectMoney"
						value="${project.projectMoney}" placeholder="所需金额">
				</div>
				<div class="sub-title">区县</div>
				<div style="width: 60%;">
					<c:choose>
						<c:when test="${project.area==null}">
							<select class="form-control" name="area">
								<c:forEach var="item" items="${areaList}">
									<option value="${item.areaId}">${item.areaName}</option>
								</c:forEach>
							</select>
						</c:when>
						<c:otherwise>
							<select class="form-control" name="area">
								<c:forEach var="item" items="${areaList}">
									<c:if test="${item.areaId==project.area }">
										<option value="${item.areaId}" selected="selected">${item.areaName}</option>
									</c:if>
									<option value="${item.areaId}">${item.areaName}</option>
								</c:forEach>
							</select>
						</c:otherwise>
					</c:choose>

				</div>
				<div class="sub-title">申请人</div>
				<div style="width: 60%;">
					<input type="text" class="form-control" name="proposer"
						value="${project.proposer}" placeholder="申请人">
				</div>
				<div class="sub-title">开始日期</div>
				<div style="width: 60%;">
					<input type="date" class="form-control" name="createDate">
				</div>
				<div class="sub-title">备注</div>
				<div style="width: 60%;">
					<textarea class="form-control" name="remarks"
						value="${project.remarks}" rows="3"></textarea>
				</div>
				<br /> <br />
				<button type="button" id="btn" class="btn btn-default"
					style="align: center;">Submit</button>
			</div>
		</div>
		<br /> <br />
	</form>
</head>


<%@include file="/views/includes/script.jsp"%>
<script type="text/javascript">
	/* $("#form").validate();
	 jQuery.validator.addMethod("projectIdsame", function(value, element) {
	 var flag = 1;
	 $.ajax({
	 type : "POST",
	 url : 'project/selectId',
	 async : false,
	 data : {
	 'id' : value
	 },
	 success : function(data) {
	 if (data.data ) {
	 flag = 0;
	 }
	 }
	 });

	 if (flag == 0) {
	 return false;
	 } else {
	 return true;
	 }

	 }, "项目id重复");
	 */
	function selectId() {

		var value = $("#projectId").val();
		$.ajax({
			type : "POST",
			url : 'project/selectId',
			async : false,
			data : {
				'projectId' : value
			},
			success : function(data) {
				if (data.data) {
					flag = false;
					alert("项目编号已重复");
					return fasle;
				}
			}
		});

	}
	$("#btn").click(function() {
		if (selectId()) {
			alert("项目编号已重复");
		} else {
			$("#form").submit();
		}
	})
</script>
</html>