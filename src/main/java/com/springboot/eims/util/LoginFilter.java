package com.springboot.eims.util;
import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Component;

import com.springboot.eims.constant.PageConstant;
import com.springboot.eims.entity.Admin;
import com.springboot.eims.privi.Group;


@Component 
@WebFilter(urlPatterns = "/*",filterName = "loginFilter")
public class LoginFilter implements Filter {

    @Override
         public void init(FilterConfig filterConfig) throws ServletException {
             // TODO Auto-generated method stub
     
         }
     
         @Override
         public void doFilter(ServletRequest request, ServletResponse response,
                 FilterChain chain) throws IOException, ServletException {
             // 获得在下面代码中要用的request,response,session对象
             HttpServletRequest servletRequest = (HttpServletRequest) request;
             HttpServletResponse servletResponse = (HttpServletResponse) response;
             HttpSession session = servletRequest.getSession();
     
             // 获得用户请求的URI
             String path = servletRequest.getRequestURI();
             //System.out.println(path);
             
             // 从session里取员工工号信息
             Admin admin = (Admin) session.getAttribute("user");
     
             //创建类Constants.java，里面写的是无需过滤的页面
             for (int i = 0; i < PageConstant.PAGES.length; i++) {
     
                 if (path.indexOf(PageConstant.PAGES[i]) > -1) {
                     chain.doFilter(servletRequest, servletResponse);
                     return;
                 }
             }
             if(path.indexOf("/login") > -1||path.equals("/EIMS/")) {
                 chain.doFilter(servletRequest, servletResponse);
                 return;
             }
             
             
             // 判断如果没有取到员工信息,就跳转到登陆页面
             if (admin == null) {
                 // 跳转到登陆页面
        	 servletResponse.sendRedirect(servletRequest.getContextPath() + "/login.jsp");
        	 chain.doFilter(request, response);
             } else {
        	 
         
                 // 已经登陆,继续此次请求
        	 Group userGroup=Group.getGroup(admin.getExt1());
        	 if(userGroup.hasPrivilege(path)){
        	     servletResponse.sendError(401);
        	 }
                 chain.doFilter(request, response);
             }
     
         }
     
         @Override
         public void destroy() {
             // TODO Auto-generated method stub
     
         }
     
}
