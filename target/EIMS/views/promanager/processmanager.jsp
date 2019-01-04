<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
	<!-- Bootstrap Styles-->
    <link href="<c:url value="/views/assets/css/bootstrap.css"/>" rel="stylesheet" />
    <!-- FontAwesome Styles-->
    <link href="<c:url value="/views/assets/css/font-awesome.css"/>" rel="stylesheet" />
    <!-- Morris Chart Styles-->
    <link href="<c:url value="/views/assets/js/morris/morris-0.4.3.min.css"/>" rel="stylesheet" />
    <!-- Custom Styles-->
    <link href="<c:url value="/views/assets/css/custom-styles.css"/>" rel="stylesheet" />
    <!-- Google Fonts-->
    <link href='https://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
    <link href="<c:url value="/views/assets/js/Lightweight-Chart/cssCharts.css"/>" rel="stylesheet" />
</head>
<body>
	<!-- JS Scripts-->
    <!-- jQuery Js -->
    <script src="<c:url value="/views/assets/js/jquery-1.10.2.js"/>"></script>
    
    <!-- Bootstrap Js -->
    <script src="<c:url value="/views/assets/js/bootstrap.min.js"/>"></script>
	 
    
    <div id="wrapper">
    	<!-- top -->
        <nav class="navbar navbar-default top-navbar" role="navigation">
            <div class="navbar-header">
                <a class="navbar-brand" href="index.html"><strong>四川省民族教育信息管理系统</strong></a>
        		<div id="sideNav" href="">
        		<i class="fa fa-bars icon"></i> 
        		</div>
            </div>
            
            <ul class="nav navbar-top-links navbar-left" role="navigation">
            	<li class="dropdown">
                    <a href="<c:url value='/views/main.jsp'/>" >
                        	首页
                    </a>
                </li>
                <li class="dropdown">
                    <a href="login.jsp" >
                        	项目管理
                    </a>
                </li>
                <li>
					<a class="dropdown-toggle" data-toggle="dropdown" href="#" >
                        	教育经费
                    </a>
                </li>
                <li>
					<a class="dropdown-toggle" data-toggle="dropdown" href="#" >
                        	教师管理
                    </a>
                </li>
                <li>
					<a class="dropdown-toggle" data-toggle="dropdown" href="#" >
                        	学生管理
                    </a>
                </li>
                <li>
					<a class="dropdown-toggle" data-toggle="dropdown" href="#" >
                        	特色教育
                    </a>
                </li>
             </ul>
             
             <ul class="nav navbar-top-links navbar-right">
                <li class="dropdown" >
                    <a class="dropdown-toggle"  data-toggle="dropdown" href="#" >
                        	<small>当前管理员xxx</small>
                    </a>
                </li>
                <li>
					<a class="dropdown-toggle" data-toggle="dropdown" href="#" >
                        	<small>返回首页</small>
                    </a>
                </li>
                <li>
					<a class="dropdown-toggle" data-toggle="dropdown" href="#" >
                        	<small>退出</small>
                    </a>
                </li>
             </ul>
        </nav>
		
		<!-- side -->
        <nav class="navbar-default navbar-side" role="navigation">
            <div class="sidebar-collapse">
                <ul class="nav" id="main-menu">
                    <li>
                        <a class="active-menu" href="index.html"><i class="fa fa-dashboard"></i> 进度管理</a>
                    </li>
                    <li>
                        <a href="login.jsp"><i class="fa fa-desktop"></i> 项目计划</a>
                    </li> 
					 
					 <li>
                        <a href="#"><i class="fa fa-sitemap"></i>项目申报<span class="fa arrow"></span></a>
					</li>	
							
                    <li>
                        <a href="tab-panel.html"><i class="fa fa-qrcode"></i> 项目审核</a>
                    </li>
                    
                    <li>
                        <a href="table.html"><i class="fa fa-table"></i> 项目批复</a>
                    </li>
                    <li>
                        <a href="form.html"><i class="fa fa-edit"></i> 项目查询 </a>
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-sitemap"></i> 项目汇总<span class="fa arrow"></span></a>
                    </li>
     
                    <li>
                        <a href="empty.html"><i class="fa fa-fw fa-file"></i> 空页</a>
                    </li>
                </ul>
            </div>
        </nav>
		
		<!-- main -->
		<div id="page-wrapper">
		    <div class="header"> 
              <h1 class="page-header">
                 Hello <small>Welcome swift</small>
              </h1>
			  <ol class="breadcrumb">
			    <li><a href="#">Home</a></li>
			    <li><a href="#">项目管理</a></li>
			    <li class="active">怎么管理</li>
			  </ol> 						
		    </div>
		  	
		  	<!-- 每个页面主要显示界面，不同 -->
		  	<div class="header">
			 <div class="breadcrumb">
	               <table class="table table-striped table-bordered table-hover">
	                   <thead>
	                       <tr>
	                           <th> No</th>
	                           <th>First Name</th>
	                           <th>Last Name</th>
	                           <th>User Name</th>
	                           <th>Email ID.</th>
	                       </tr>
	                   </thead>
	                   <tbody>
	                       <tr>
	                           <td>1</td>
	                           <td>John</td>
	                           <td>Doe</td>
	                           <td>John15482</td>
	                           <td>name@site.com</td>
	                       </tr>
	                       <tr>
	                           <td>2</td>
	                           <td>Kimsila</td>
	                           <td>Marriye</td>
	                           <td>Kim1425</td>
	                           <td>name@site.com</td>
	                       </tr>
	                       <tr>
	                           <td>3</td>
	                           <td>Rossye</td>
	                           <td>Nermal</td>
	                           <td>Rossy1245</td>
	                           <td>name@site.com</td>
	                       </tr>
	                       <tr>
	                           <td>4</td>
	                           <td>Richard</td>
	                           <td>Orieal</td>
	                           <td>Rich5685</td>
	                           <td>name@site.com</td>
	                       </tr>
	                       <tr>
	                           <td>5</td>
	                           <td>Jacob</td>
	                           <td>Hielsar</td>
	                           <td>Jac4587</td>
	                           <td>name@site.com</td>
	                       </tr>
	                       <tr>
	                           <td>6</td>
	                           <td>Wrapel</td>
	                           <td>Dere</td>
	                           <td>Wrap4585</td>
	                           <td>name@site.com</td>
	                       </tr>
	                   </tbody>
	               </table>
			  </div>
			</div>

		    <div class="header">
				<footer><p>Copyright &copy; 2017 ——by第十一小组</p></footer>
			</div>
	      </div>
	    </div>
</body>
</html>