<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	

<!DOCTYPE html>
<html lang="en">

<head>
<title> ${vo.st_name} | Store Information</title>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
	
<c:import url="../template/boot.jsp"></c:import>
<c:import url="../template/style.jsp"></c:import>
</head>
<body>
<c:import url="../template/header_sub.jsp"></c:import>

<div class="container">
  <h1 align="center">${vo.st_name}</h1>
  <p class="gap"><br></p>
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">

      <div class="item active">
        <img src="${pageContext.request.contextPath}/resources/images/sub1.jpeg" alt="sub1" style="width:100%;">
        <div class="carousel-caption">
        </div>
      </div>

      <div class="item">
        <img src="${pageContext.request.contextPath}/resources/images/sub2.jpeg" alt="sub2" style="width:100%; ">
        <div class="carousel-caption">
        </div>
      </div>
    
      <div class="item">
        <img src="${pageContext.request.contextPath}/resources/images/sub3.jpg" alt="sub3" style="width:100%;">
        <div class="carousel-caption">
        </div>
      </div>
  
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
  
	<p class="gap"><br></p>
	
  <div class="panel panel-default">
  	<div class="panel-body" >
  		<ul class="list" style="list-style-type: none;">
  			<li>가게 상세정보</li>
  			<li>전화번호 : ${vo.st_phone}</li>
    		<li>식당 주소 : ${vo.st_address}</li> 
  		</ul>
  	</div>
  </div>

	<p class="gap"><br></p>

	<div class="panel panel-warning">
  	<div class="panel-heading" align="center">
  		<ul class="list" style="list-style-type: none;">
  			<li>여기는 가게 메뉴와 가격이 적히는 곳입니다</li>
  			<c:forEach items="${vo_sm}" var="vo" >
  			<li>${vo.sm_menu} : ${vo.sm_price}</li>
  			</c:forEach>
	  		<li align="right" style="margin-right: 40px;a">
	  		<a href="../payment/paymentInsert" >
	  		<img src="${pageContext.request.contextPath}/resources/images/payment_icon_yellow_medium.png" alt="kpay">
	  		</a>
	  		</li>
  		</ul>
  	</div>
  </div>
  
  <p class="gap"><br></p>
  
  <div class="panel panel-success">
  	<div class="panel-heading" align="center">
  	이 식당의 리뷰
  	</div>
  	<form action="./storeReviewWrite" method="get">
  	<div class="panel-body" align="center">
  			<table class="table table-striped">
  		
  			<c:forEach items="${vor}" var="vor">
				<tr>
  					<td>작성자 : ${vor.id} </td>
  					<td align="right">날짜 : ${vor.re_date}</td>
  				</tr>
  				<tr>
  					<td>내용 : <br>${vor.re_contents}</td>
				 </tr>		
  			</c:forEach>
  			
    		<tr>
    			<td align="right">
    				<a href="./storeReviewWrite?st_key=${vo.st_key}">
    				<input type="button" class="btn btn-info" value="리뷰 작성 하기!">
    				</a>
    			</td>
    		</tr>
  		
  			</table>
  	</div>
  	</form>
  </div>
  

<!-- container 끝 -->
</div>
<!-- 
<script type="text/javascript">
	$("#write").on("click", function() {
		location.href="./storeReviewWrite?st_key=1";
	});
</script> -->


<c:import url="../template/footer.jsp"></c:import>

</body>
</html>