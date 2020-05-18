<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../template/boot.jsp"></c:import>
<c:import url="../template/style.jsp"></c:import>

</head>
<body>
	<c:import url="../template/header.jsp"></c:import>
	<div class="container">
		<div class="row">
		
			<c:forEach items="${vo}" var="vo" varStatus="i">
				<div class="col-sm-4">
					<div class="panel panel-info" style="max-width: 1000px; max-height: 800px;">
						<div class="panel-heading">${vo.st_name}</div>
						<div class="panel-body" align="center">
							<img src="${pageContext.request.contextPath}/resources/images/logo.png" 
								class="img-responsive" style="overflow: hidden; display: flex; align-items: center;
								justify-content: center; width: 348px; height: 340px;" alt="Image">
						</div>
						<div class="panel-footer">${vo.st_address}</div>
					</div>
				</div>					
			</c:forEach>
				
	
			</div>
		</div>
	
	<c:import url="../template/footer.jsp"></c:import>
</body>
</html>