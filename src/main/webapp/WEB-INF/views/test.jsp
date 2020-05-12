<%@ page language="java" contentType="text/html; charset=UTF-8"

	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	
<!DOCTYPE html>
<html lang="en">
<head>
   <body class="home_page" onunload="">

<main class="pg-main">
  <div class="black_screen"></div>
  <article class="contents main-padding">
    <header class="main-header" style="background-image: url('https://mp-seoul-image-production-s3.mangoplate.com/a4283e5725fb56755b9bbeb8f285d0dc.jpg');">
      <div>
  <p class="title">솔직한 리뷰, 믿을 수 있는 평점!</p>
  <h1 class="title">망고플레이트</h1>
  <p class="options">
    <a href="#">Download app</a>
    <a href="#">add/Claim restaurant</a>
    <a href="#">Become a holic</a>
  </p>

  <fieldset class="main-search">
    <legend>전체 검색</legend>

    <label class="search-word" for="main-search">
      <span class="icon">검색 :</span>
      <input id="main-search" class="HomeSearchInput" name="main-search" type="text" maxlength="50" placeholder="지역, 식당 또는 음식" autocomplete="off" onclick="trackEvent('CLICK_SEARCH_MAIN')"/>
      <span class="clear_btn">CLEAR</span>
    </label>

    <input class="btn-search" type="submit" value="검색" onclick="trackEvent('CLICK_KEYWORD_SEARCH');"/>
  </fieldset>

  <aside class="shortcut-app type-main">
      <a class="btn inbound only-desktop " href="https://www.mangoplate.com/eat_deals" onclick="common_ga(&#39;PG_MAIN&#39;, &#39;CLICK_SALES_LOCAL&#39;)" style=""><img src="https://mp-seoul-image-production-s3.mangoplate.com/web/resources/nf58dxcb-7ikpwam.png"></img></a>

    <button class="btn android"
            data-event_term="V1"
            data-event_name="CLICK_DOWNLOAD_MAIN_ANDROID"
            onclick="trackEvent('CLICK_DOWNLOAD_MAIN_ANDROID');go_to_app_or_market(this, 'android');">
      <img src="https://mp-seoul-image-production-s3.mangoplate.com/web/resources/bzdlmp2toaxrdjqg.png" width="180" alt="android market button"/>
    </button>

    <button class="btn ios"
            data-event_term="V1"
            data-event_name="CLICK_DOWNLOAD_MAIN_IOS"
            onclick="trackEvent('CLICK_DOWNLOAD_MAIN_IOS');go_to_app_or_market(this, 'ios');">
      <img src="https://mp-seoul-image-production-s3.mangoplate.com/web/resources/f7eokfaszt4gpkh6.svg?v=1" width="180" alt="app store"/>
    </button>
  </aside>
</div>

    </header>

</head>
<body>
<c:import url="./template/header.jsp"></c:import>
<h1>표시할 목록</h1>
<div id="map" style="width:200px;height:200px;"></div>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=1a912020624eca9979dbed7aaa0e913b&libraries=services"></script>
<script>
var infowindow = new kakao.maps.InfoWindow({zIndex:1});

var mapContainer = document.getElementById('map'),  
    mapOption = {
        center: new kakao.maps.LatLng(37.566826, 126.9786567), // 지도의 중심좌표
        level: 3 
    };  

// 지도를 생성합니다    
var map = new kakao.maps.Map(mapContainer, mapOption); 

var ps = new kakao.maps.services.Places(); 

ps.keywordSearch('진짜루 홍대입구', placesSearchCB); 

function placesSearchCB (data, status, pagination) {
    if (status === kakao.maps.services.Status.OK) {

        var bounds = new kakao.maps.LatLngBounds();

        for (var i=0; i<data.length; i++) {
            displayMarker(data[i]);    
            bounds.extend(new kakao.maps.LatLng(data[i].y, data[i].x));
        }       

        map.setBounds(bounds);
    } 
}

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
<c:import url="./template/footer.jsp"></c:import>
</body>
</html>