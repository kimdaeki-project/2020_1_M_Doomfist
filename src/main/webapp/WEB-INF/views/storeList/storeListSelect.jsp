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
    <ol class="carousel-indicators">
	<c:forEach items="${stfile}" var="stfile" varStatus="status">
		 
		<c:if test="${status.index eq 0}">
		<li data-target="#myCarousel" data-slide-to="${status.index}" class="active"></li>
		</c:if>
		<c:if test="${status.index ne 0}">
		<li data-target="#myCarousel" data-slide-to="${status.index}" ></li>
		</c:if>
    </c:forEach>
    	
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">
    
	<c:forEach items="${stfile}" var="stfile" varStatus="status">
	
		<c:if test="${status.count eq 1}">
			<div class="item active">
				<img src="../resources/qna_images/${stfile.stfile_name}" alt="${stfile.stfile_oriname}" 
				style="overflow: hidden; display: flex; align-items: center; justify-content: center;
				width: 800px; height: 600px;">
				<div class="carousel-caption">
				<p> </p>
				</div>
			</div>
		</c:if>
		
		<c:if test="${status.count ne 1}">
			<div class="item">
				<img src="../resources/qna_images/${stfile.stfile_name}" alt="${stfile.stfile_oriname}"
				style="overflow: hidden; display: flex; align-items: center; justify-content: center;
				width: 800px; height: 600px;">
				<div class="carousel-caption">
				<p> </p>
				</div>
			</div>
		</c:if>
      
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
  		<div id="map" style="width:250px;height:250px; display: inline-block; float: right;" align="center"></div>
  		<ul class="list" style="list-style-type: none;">
  			<li>가게 상세정보</li>
  			<li>전화번호 : ${vo.st_phone}</li>
    		<li>식당 주소 : ${vo.st_address} <input type="hidden" id="address" value="${vo.st_address}"></li> 
    		<li>음식 종류 : ${vo.st_kind}</li>
		
    		<c:if test="${not empty vo_tag}">
    		<li>태그 :
    		<c:forEach items="${vo_tag}" var="vo_tag" varStatus="i">
    			${vo_tag.tag_name}<c:if test="${!i.last}">,</c:if>
    		</c:forEach>
    		</li>
    		</c:if>
    		
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
	  		<a href="../payment/payFirstSelect?st_key=${vo.st_key}&pf_stname=${vo.st_name}&id=${sessionScope.member.id}">
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
	    				<td align="right">
    				<c:if test="${sessionScope.member.id eq 'admin' or sessionScope.member.id eq vor.id}">
	    				<a href="./storeReviewDelete?st_key=${vo.st_key}&re_num=${vor.re_num}">
	    				<input type="button" class="btn btn-danger" value="리뷰삭제하기">
	    				</a>
    				</c:if>
    					</td>
    					
				 </tr>
  			</c:forEach>
  			
    		<tr>
    		<c:if test="${not empty sessionScope.member.id and sessionScope.member.id ne 'admin' and sessionScope.member.id ne vo.id}">
    		<td></td>
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


<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=1a912020624eca9979dbed7aaa0e913b&libraries=services"></script>
<script>
var infowindow = new kakao.maps.InfoWindow({zIndex:1});

var mapContainer = document.getElementById('map'),  
    mapOption = {
        center: new kakao.maps.LatLng(37.566826, 126.9786567), // 지도의 중심좌표
        level: 4
    };  

// 지도를 생성합니다    
var map = new kakao.maps.Map(mapContainer, mapOption); 

//주소-좌표 변환 객체를 생성합니다
var geocoder = new kakao.maps.services.Geocoder();



//주소로 좌표를 검색합니다
geocoder.addressSearch('${vo.st_address}', function(result, status) {

    // 정상적으로 검색이 완료됐으면 
     if (status === kakao.maps.services.Status.OK) {

        var coords = new kakao.maps.LatLng(result[0].y, result[0].x);

        // 결과값으로 받은 위치를 마커로 표시합니다
        var marker = new kakao.maps.Marker({
            map: map,
            position: coords
        });

        // 인포윈도우로 장소에 대한 설명을 표시합니다
        var infowindow = new kakao.maps.InfoWindow({
            content: '<div style="width:150px;text-align:center;padding:6px 0;">${vo.st_name}</div>'
        });
        infowindow.open(map, marker);

        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
        map.setCenter(coords);
    } 
});    

function displayMarker(place) {
    
    var marker = new kakao.maps.Marker({
        map: map,
        position: new kakao.maps.LatLng(place.y, place.x) 
    });

    kakao.maps.event.addListener(marker, 'click', function() {
        infowindow.setContent('<div style="padding:5px;font-size:12px;">' + place.place_name + '</div>');
        infowindow.open(map, marker);
    });
}
</script>


<c:import url="../template/footer.jsp"></c:import>

</body>
</html>