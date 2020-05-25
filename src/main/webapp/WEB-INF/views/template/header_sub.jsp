<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<body>

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

			<li class="active">
					<div style="margin-top: 5.5px;" class="dropdown">
						<a href="${pageContext.request.contextPath}/">
					  <button class="btn" id="drop" type="button" >&nbsp;<b>HOME</b></button>
					  </a>
					</div>	
					<!-- <a href="${pageContext.request.contextPath}/">Home</a> -->
					</li>
					
					<li>
					<div style="margin-top: 7px;" class="dropdown">
						<a href="${pageContext.request.contextPath}/notice/noticeList">
					  <button class="btn" id="drop" type="button" >&nbsp;<b>공지사항</b></button>
					  </a>
					  </div>	
					<!--<a href="${pageContext.request.contextPath}/notice/noticeList">공지사항</a>-->
					</li>
					<c:if test="${sessionScope.member.id eq 'admin' or not empty sessionId}">
					<li>
					<div style="margin-top: 7.5px;" class="dropdown">
						<a href="${pageContext.request.contextPath}/storeList/storeListSelect">
					  <button class="btn" id="drop" type="button" >&nbsp;<b>맛집리스트</b></button>
					  </a>
					  </div>
					<!--<a href="${pageContext.request.contextPath}/storeList/storeListSelect">맛집리스트</a>-->
					</li>
					</c:if>
					
					<li>
					<div style="margin-top: 7px;" class="dropdown">
						<a href="${pageContext.request.contextPath}/qna/qnaJoin">
					  <button class="btn" id="drop" type="button" >&nbsp;<b>맛집신청</b></button>
					  </a>
					  </div>
					<!-- <a href="${pageContext.request.contextPath}/qna/qnaJoin">맛집신청</a>-->
					</li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
				
									<c:if test="${empty member and empty sessionId}">
					<li>
						<div style="margin-top: 7px;" class="dropdown">
						<a href="${pageContext.request.contextPath}/member/memberJoin">
					  <button class="btn" id="drop" type="button" >
					  <span class="glyphicon glyphicon-user"></span>&nbsp;<b>회원가입</b></button>
					  </a>
					  </div>
					<!-- <a href="${pageContext.request.contextPath}/member/memberJoin"><span class="glyphicon glyphicon-user"></span>
							회원 가입</a>-->
					</li>
						
					<li>
						<div style="margin-top: 5.5px;" class="dropdown">
						<a href="${pageContext.request.contextPath}/member/memberLogin">
					  <button class="btn" id="drop" type="button">
					  <span class="glyphicon glyphicon-user"></span>&nbsp;<b>로그인</b></button>
					  </a>
					  </div>
					<!-- <a href="${pageContext.request.contextPath}/member/memberLogin"><span class="glyphicon glyphicon-user"></span>
							로그인</a>-->
					</li>
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
					  <span class="glyphicon glyphicon-user"></span>&nbsp;<b>회원정보</b>
					  <span class="caret"></span></button>
					  
					  <ul class="dropdown-menu">
					  <li><a href="${pageContext.request.contextPath}/member/memberPage">회원정보</a></li>
					    <li class="divider"></li>
					    <li><a href="${pageContext.request.contextPath}/member/memberUpdate">개인정보수정</a></li>
					    <li class="divider"></li>
					    <%-- <li><a href="${pageContext.request.contextPath}/payment/payReceipt?id=${sessionScope.member.id}">결제내역 </a></li> --%>
					     <li><a href="/s1/payment/payReceipt?id=${member.id}" data-toggle="modal" data-target="#my2Modal">결제내역</a></li>
					    <li class="divider"></li>
					    <li><a href="#" onclick="javascript:openWin();">나의 신청 현황</a></li>
					    <li><a href="#">나의 식당 </a></li>					 
					  </ul>
					</div>	
					</li>	
					
							
							<li>
					<div style="margin-top: 8px;" class="dropdown">
						<a href="${pageContext.request.contextPath}/member/memberLogout">
					  <button class="btn" id="drop" type="button" >
					  <span class="glyphicon glyphicon-user"></span>&nbsp;<b>로그아웃</b></button>
					  </a>
					</div>	
					
					<!-- <a href="${pageContext.request.contextPath}/member/memberLogout"><span class="glyphicon glyphicon-user"></span>
							로그아웃</a>-->
							</li> 
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
	<!-- Modal2 -->
  <div class="modal fade" id="my2Modal" role="dialog">
    <div class="modal-dialog modal-lg">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Modal Header</h4>
        </div>
        <div class="modal-body">
          <p>This is a large modal.</p>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
    </div>
  </div>
	
	
	</div>