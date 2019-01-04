<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<nav class="navbar navbar-default top-navbar" role="navigation">
<div class="navbar-header">
	<a class="navbar-brand" href="<c:url value='/views/main.jsp'/>"><strong>四川省民族教育信息管理系统</strong></a>
	<div id="sideNav" href="">
		<i class="fa fa-bars icon"></i>
	</div>
</div>

<ul class="nav navbar-top-links navbar-left" role="navigation">
	<li class="dropdown"><a href="<c:url value='/views/main.jsp'/>">
			首页 </a></li>
			<c:if test="${user.ext1=='管理员'}">
			<li><a href="project/view"></i>项目管理</a></li>
		</c:if>
		<c:if test="${user.ext1=='超级管理员'}">
			<li><a href="project/select?status='待审核'"> 项目管理</span></a></li>
		</c:if>
	<li><a href="performance"> 教育经费 </a></li>
	<li><a href="/EIMS/views/teacher/findall">
			教师管理 </a></li>
	<li><a href="/EIMS/findAll">
			学生管理 </a></li>
	<li><a href="/EIMS/views/chaeducation/boardeducation.jsp">
			特色教育 </a></li>
</ul>

<ul class="nav navbar-top-links navbar-right">
	<li class="dropdown"><a class="dropdown-toggle"
		data-toggle="dropdown" href="#"> <small>当前管理员${user.adminName }</small>
	</a></li>

	<li><a href="loginOut">
			<small>退出</small>
	</a></li>
</ul>
</nav>
</body>
</html>