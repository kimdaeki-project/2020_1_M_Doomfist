<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주문정보 확인</title>
<c:import url="../template/boot.jsp"></c:import>
<c:import url="../template/style.jsp"></c:import>
</head>
<body>
	<c:import url="../template/header.jsp"></c:import>
	<!-- 결제 준비 페이지  -->
	<h1>결제 중간단계</h1>
	
		<div class="panel panel-warning">
  	<div class="panel-heading" align="center">
  		<ul class="list" style="list-style-type: none;">
  			<li> 메뉴와 가격</li>
  			<c:forEach items="${vo_sm}" var="vo" >
  			<li>${vo.sm_menu} : ${vo.sm_price}</li>
  			</c:forEach>
	  		<li align="right" style="margin-right: 40px;">
	  		
	  		</li>
  		</ul>
  	</div>
  </div>
	
	
	<a href="./payment/paymentInsert" >
	  		<img src="${pageContext.request.contextPath}/resources/images/payment_icon_yellow_medium.png" alt="kpay">
	 </a>
</body>
</html>