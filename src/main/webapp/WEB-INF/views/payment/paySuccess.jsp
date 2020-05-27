<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../template/boot.jsp"></c:import>
<c:import url="../template/style.jsp"></c:import>
</head>
<body>
<c:import url="../template/header_sub.jsp"></c:import>
<h1 style="text-align: center;"> 주문해 주셔서 감사합니다.</h1>
<div class="panel panel-default">
	<div class="panel-body" style="text-align: center;">
<img src="${pageContext.request.contextPath}/resources/images/main.png" alt="main">
	</div>
	<div class="panel-body" style="text-align: center;">
<img alt="" src="${pageContext.request.contextPath}/resources/images/qwqw.jpg">
	</div>
</div>
</body>
</html>