<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결제 완료!</title>
<c:import url="../template/boot.jsp"></c:import>
<c:import url="../template/style.jsp"></c:import>
</head>
<body>
<c:import url="../template/header_sub.jsp"></c:import>
<h1 style="text-align: center;"><img src="${pageContext.request.contextPath}/resources/images/thank.png" alt="main"> </h1>
<div style="width: 40%; text-align: center; margin-left: 30%;"> <h3><img src="${pageContext.request.contextPath}/resources/images/payN.png" alt="main"></h3>
<div class="panel panel-info" style="font-size: 20px;">
	<c:set var="sum" value="${0}" />
<c:forEach items="${pas}" var="pa" varStatus="i">
<c:set var="sum" value="${sum+pa.ps_multi}" />
	<div class="panel panel-body" >
	           
  <table class="table table-hover">
    <thead >
      <tr>
        <th style="text-align: center;">메뉴</th>
        <th style="text-align: center;">수량</th>
        <th style="text-align: center;">가격</th>
      </tr>
    </thead>
    <tbody>
      <tr style="text-align: center;">
        <td style="width: 260px;">${pa.ps_menu}</td>
        <td style="width: 100px;">${pa.ps_count}</td>
        <td style="color: blue; width: 186px;">${pa.ps_multi} 원</td>
      </tr>
       </tbody>
  </table>

	
	</div>
</c:forEach>
<p style="color: blue; font-size: 25px;"> 총 결제금액  :  ${sum} 원</p>
 </div>
</div>
<div class="panel-body" style="text-align: center;">
		<a href="../">
		<img alt="" src="${pageContext.request.contextPath}/resources/images/payF2.PNG" width="150px" height="70px">
		</a>
	</div>
	<div class="panel-body" style="text-align: center;">
<img src="${pageContext.request.contextPath}/resources/images/main.png" alt="main">
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