<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<nav aria-label="分页" class="page-box">
<div class="header">
	<ul class="pagination col-lg-5 " >
		<c:forEach var="idx" begin="${startPage}" end="${endPage}">
			<c:choose>
				<c:when test="${idx==page}">
					<li class="active"><a href="${pageurl}?page=${page}">${idx}</a></li>
				</c:when>
				<c:otherwise>
					<li><a href="${pageurl}?page=${idx}">${idx}</a></li>
				</c:otherwise>
			</c:choose>
		</c:forEach>
		 
<%-- 		<li><a href="${pageurl}?page=${idx+1}" aria-label="下一页"> <span aria-hidden="true">&raquo;</span>
		</a></li>  --%>
		
	</ul>
	</div>
</nav>