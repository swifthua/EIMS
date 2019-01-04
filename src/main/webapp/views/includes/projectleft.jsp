<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<nav class="navbar-default navbar-side" role="navigation">
<div class="sidebar-collapse">
	<ul class="nav" id="main-menu">

		<c:if test="${user.ext1=='管理员'}">
			<li><a href="project/view"><i class="fa fa-sitemap"></i>项目列表<span
					class="fa arrow"></span></a></li>
		</c:if>
		<c:if test="${user.ext1=='超级管理员'}">
			<li><a href="project/select?status='待审核'"><i
					class="fa fa-desktop"></i>待审核<span class="fa arrow"></span></a></li>
		</c:if>
		<c:if test="${user.ext1=='管理员'}">
			<li><a href="project/apply"><i class="fa fa-sitemap"></i>项目申报<span
					class="fa arrow"></span></a></li>
		</c:if>
		<c:if test="${user.ext1=='超级管理员'}">
			<li><a href="project/select"><i class="fa fa-sitemap"></i>已审核<span
					class="fa arrow"></span></a></li>
		</c:if>


	</ul>
</div>
</nav>