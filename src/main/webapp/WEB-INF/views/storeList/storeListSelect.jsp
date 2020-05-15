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
    
    <!-- Indicators //현재 사용 안함-->
    <%-- <ol class="carousel-indicators">
    <c:forEach items="${stfile}" var="stfile">
      <li data-target="#myCarousel" data-slide-to="" class="active"></li>
     
    </c:forEach>
    </ol> --%>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">
	<c:forEach items="${stfile}" var="stfile">
	
      <div class="item active">
        <img src="../resources/qna_images/${stfile.stfile_name}" alt="${stfile.stfile_oriname}" style="width:100%;">${stfile.stfile_oriname}
        <div class="carousel-caption">
        </div>
      </div>
      
	</c:forEach>
  
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
		<h2>
	  		이 식당의 평점 : 
  			<font color="red">
  				${avg}
  			</font>
		</h2>
  	</div>
  	<form action="./storeReviewWrite" method="get">
  	<div class="panel-body" align="center">
  		<table class="table table-striped">
  		
  			<c:forEach items="${vor}" var="vor">
				<tr>
  					<td>
  					작성자 : ${vor.id}<br><br>
  					날짜 : ${vor.re_date}
  					</td>
  					
  					<td align="right">
  					<span><img alt="" src="${pageContext.request.contextPath}/resources/images/${vor.re_rating}point.png"> 
  					<br>
  					<c:if test="${vor.re_rating eq 5}">	맛있다</c:if>
  					<c:if test="${vor.re_rating eq 3}">	괜찮다</c:if>
  					<c:if test="${vor.re_rating eq 1}">	별로..</c:if>
  					</span>
  					</td>
  					
  					
  				</tr>
  				<tr>
  					<td>
  					</td>
  					
  					<td>
  					<c:forEach items="${vof1}" var="vof11" varStatus="status">
  						<c:forEach items="${vof11}" var="vof2" varStatus="status2">
  							<c:if test="${vor.re_num eq vof2.re_num}">
  							<img alt="" src="../resources/uploadNotice/${vof2.refile_name}" style="max-height: 250px; max-width: 250px;">${vof2.refile_oriname}
  							</c:if>
  						</c:forEach>  					
  					</c:forEach>
  					</td>
  				</tr>
  				
  				<tr>
					<td>내용  ${vor.re_contents} <br> </td>
					<td>
					</td>
  				</tr>	
				 
				 <tr>
				 	<td>
				 	</td>
    				<c:if test="${sessionScope.member.id eq 'admin' or sessionScope.member.id eq vor.id}">
	    				<td align="right">
	    				<a href="./storeReviewDelete?st_key=${vo.st_key}&re_num=${vor.re_num}">
	    				<input type="button" class="btn btn-danger" value="리뷰삭제하기">
	    				</a>
    					</td>
    					
    				</c:if>
				 </tr>
  			</c:forEach>
  			
    		<tr>
    		<td></td>
    		<c:if test="${not empty sessionScope.member.id and sessionScope.member.id ne 'admin'}">
    			<td align="right">
    				<a href="./storeReviewWrite?st_key=${vo.st_key}">
    				<input type="button" class="btn btn-info" value="리뷰 작성 하기!">
    				</a>
    			</td>
    		</c:if>
    		
			
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