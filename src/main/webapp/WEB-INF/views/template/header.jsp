<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<body>
	<div class="jumbotron" style="height: 480px; background-size:cover;background-image: url('${pageContext.request.contextPath}/resources/images/food_2_2.jpg')">

		<div class="container text-center">
		</div>
	</div>
	<div style=" width: 1910px; align="center">
	<nav class="navbar">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#myNavbar">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="${pageContext.request.contextPath}/"><img alt="" src="${pageContext.request.contextPath}/resources/images/logo.png" width="40px",height="50px"></a>
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav">
					<li class="active"><a href="${pageContext.request.contextPath}/">Home</a></li>
					<li><a href="${pageContext.request.contextPath}/notice/noticeList">공지사항</a></li>
					<li><a href="${pageContext.request.contextPath}/storeList/storeListSelect">맛집리스트</a></li>
					<li><a href="${pageContext.request.contextPath}/qna/qnaJoin">맛집신청</a></li>
					<!-- 영호 추가 -->
					<li><a><input type=button value="나의 신청 현황" onclick="javascript:openWin();"></a></li>
					<!-- 영호 추가 -->
					<li>
					<form class="form-inline" style="padding-top: 6.5px;">
						<select class="form-control" id="sel1" name="kind">
							<option value="bt">Title</option>	
							<option value="bc">Contents</option>
							<option value="bw">Writer</option>
						</select>
						<input type="text" class="form-control" size="60%"
								placeholder="맛집을 검색하세요!"
								style="padding-left: 100px; margin: 0px auto;">
							<button type="button" class="btn btn-info"> <span class="glyphicon glyphicon-search"></span>Search</button>
						</form> 
					</li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<c:if test="${empty member and empty sessionId}">
					<li><a href="${pageContext.request.contextPath}/member/memberJoin"><span class="glyphicon glyphicon-user"></span>
							회원 가입</a></li>
					<li><a href="${pageContext.request.contextPath}/member/memberLogin"><span class="glyphicon glyphicon-user"></span>
							로그인</a></li>
				</c:if>
				
				<c:if test="${not empty member}">
				
					<!-- <li><a href="" class="dropdown-toggle" data-toggle="dropdown"><span class="glyphicon glyphicon-user dro"></span>
							회원 정보<b class="caret"></b></a></li>
							<ul class="dropdown-menu">
							<li><a href="${pageContext.request.contextPath}/member/memberPage">개인정보 수정</a> </li>
							</ul>-->
					<li>
					<div style="margin-top: 8px;" class="dropdown">
					  <button class="btn dropdown-toggle" id="drop" type="button" data-toggle="dropdown">
					  <span class="glyphicon glyphicon-user"></span><b>회원정보</b>
					  <span class="caret"></span></button>
					  <ul class="dropdown-menu">
					    <li><a href="#">개인정보수정</a></li>
					    <li class="divider"></li>
					    <li><a href="#">결제내역</a></li>
					    <li class="divider"></li>
					    <li><a href="#">나의 신청 현황</a></li>
					  </ul>
					</div>	
					</li>	
												
					<li><a href="${pageContext.request.contextPath}/member/memberLogout"><span class="glyphicon glyphicon-user"></span>
							로그아웃</a></li>
				</c:if>
				<!-- 성민 추가 -->
				<c:if test="${not empty sessionId}">
					<li><a><img src="${pageContext.request.contextPath}/resources/images/naver.png">
							로그인 중</a></li>
					<li><a href="${pageContext.request.contextPath}/member/logout"><span class="glyphicon glyphicon-user"></span>
							로그아웃</a></li>
				</c:if>
				</ul>
			</div>
		</div>
	</nav>
	
	
	<!-- 영호 추가 -->
	<script type="text/javascript">
	function openWin(){  
	    window.open("http://localhost:8080/s1/qnacheck/Statuscheck?id=${sessionScope.member.id}", "새창","width=600, height=500, toolbar=no, menubar=no, scrollbars=no, resizable=yes" );  
	}  		

	</script>
	<!-- 영호 추가 -->
	</div>