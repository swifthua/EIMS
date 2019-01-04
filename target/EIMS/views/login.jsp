<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>登录页</title>
<link rel="stylesheet" type="text/css" href="<c:url value='/views/assets/css/login.css'/>">
</head>
<body>
	<div class="div1">
		<img src="<c:url value='/views/assets/img/login_top_bg.gif'/>" />
	</div>
	<div class="div2" ></div>
	<div class="div3">
		<table class="table1">
           <tr>
             <td ><span >管理员：</span></td>
             <td ><input type="text" name="username" size="20"> </td>
           </tr>
           <tr>
              <td ><span>&nbsp;&nbsp;&nbsp;密码： </span></td>
              <td ><input type="password" name="password" size="20">
           </tr>
 		   <tr>
             <td >&nbsp;</td>
             <td ><input type="checkbox" size="20" name="remberpassword" >记住密码</td>
           </tr>
           <tr >
           	 <td>&nbsp;</td>
             <td ><input name="submit" type="submit" class="button" id="submit" value="登 录" size="20"> </td>
           </tr>
         </table>
	</div>
	<div class="div4"></div>
	<div class="div5">
		<span class="span1">Copyright &copy; 成理实训第十一小组</span>
	</div>
</body>
</html>