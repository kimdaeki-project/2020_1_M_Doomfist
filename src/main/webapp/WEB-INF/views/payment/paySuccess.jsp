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
<h1 style="text-align: center;"> 주문해 주셔서 감사합니다.--영어로 감사  </h1>
	<div class="panel-body" style="text-align: center;">
<img src="${pageContext.request.contextPath}/resources/images/main.png" alt="main">
	</div>
<div style="width: 30%; text-align: center; margin-left: 35%;"> <h3>주문내역 -- 이미지</h3>
<div class="panel panel-info" style="font-size: 20px;">
<c:forEach items="${pas}" var="pa" varStatus="i">
	<div class="panel panel-body">
	${pa.ps_menu} ${pa.ps_count}개 ${pa.ps_multi}원 <br> 
	</div>
</c:forEach>
 </div>
</div>
<div class="panel-body" style="text-align: center;">
		<a href="../">
		<img alt="" src="${pageContext.request.contextPath}/resources/images/payF2.PNG">
		</a>
	</div>

 
<%-- <div class="panel panel-default">
	<div class="panel-body" style="text-align: center;">
<img src="${pageContext.request.contextPath}/resources/images/main.png" alt="main">
	</div>
	<div class="panel-body" style="text-align: center;">
<img alt="" src="${pageContext.request.contextPath}/resources/images/qwqw.jpg">
	</div>
</div> --%>
</body>
</html>