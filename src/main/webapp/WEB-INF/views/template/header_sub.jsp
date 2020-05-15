<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<body>

	<div class="jumbotron" style="height: 480px; background-size:cover;background-image: url('${pageContext.request.contextPath}/resources/images/food_2_2.jpg')">
		<div class="container text-center">
		</div>
	</div>	
	<div style="width: 1910px; align="center">
	<nav class="navbar">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#myNavbar">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="${pageContext.request.contextPath}/"> <img alt="" src="${pageContext.request.contextPath}/resources/images/logo.png" width="40px",height="50px"> </a>
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav">
					<li class="active"><a href="${pageContext.request.contextPath}/">Home</a></li>
					<li><a href="${pageContext.request.contextPath}/notice/noticeList">공지사항</a></li>
					<c:if test="${sessionScope.member.id eq 'admin'}">					<!-- 어드민만 접근가능 -->
					<li><a href="${pageContext.request.contextPath}/storeList/storeListCheck">맛집리스트</a></li>
					</c:if>
					<li><a href="${pageContext.request.contextPath}/qna/qnaJoin">맛집신청</a></li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
				
									<c:if test="${empty member and empty sessionId}">
					<li><a href="${pageContext.request.contextPath}/member/memberJoin"><span class="glyphicon glyphicon-user"></span>
							회원 가입</a></li>
					<li><a href="${pageContext.request.contextPath}/member/memberLogin"><span class="glyphicon glyphicon-user"></span>
							로그인</a></li>
				</c:if>
				
				<c:if test="${not empty member}">
					<li><a href="${pageContext.request.contextPath}/member/memberPage"><span class="glyphicon glyphicon-user"></span>
							회원 정보</a></li>
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
	</div>