<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>


			
<c:forEach items="${list}" var="vo" varStatus="i">
	<div class="col-sm-4" style="display: inline-block;">
		<div class="panel panel-info" style="max-width: 1000px; max-height: 800px;">
			<div class="panel-heading">${vo.st_name}</div>
				<div class="panel-body" align="center">
					<img src="${pageContext.request.contextPath}/resources/images/logo.png" 
					class="img-responsive" style="overflow: hidden; display: flex; align-items: center;
					justify-content: center; width: 348px; height: 340px;" alt="Image">
				</div>
			<div class="panel-footer" style="overflow: hidden; display: flex; align-items: center;
						justify-content: center; height: 50px;">${vo.st_kind}</div>
		</div>
	</div>					
</c:forEach>
		