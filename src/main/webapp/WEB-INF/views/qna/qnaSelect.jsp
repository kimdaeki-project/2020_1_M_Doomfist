<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../template/boot.jsp"></c:import>
<c:import url="../template/style.jsp"></c:import>
</head>
<body>
	<c:import url="../template/header.jsp"></c:import>
	
	<div class="container">
	  <div class="panel panel-primary">
      <div class="panel-heading">식당이름</div>
      <div class="panel-body"><h2>${vo.qna_title}</h2></div>
    </div>
	
	  <div class="panel panel-primary">
      <div class="panel-heading">아이디</div>
      <div class="panel-body"><h2>${vo.id}</h2></div>
    </div>
	
	 <div class="panel panel-primary">
      <div class="panel-heading">신청 내용</div>
      <div class="panel-body"><h2>${vo.qna_contents}</h2></div>
    </div>
    
     <div class="panel panel-primary">
      <div class="panel-heading">신청 날짜</div>
      <div class="panel-body"><h2>${vo.qna_date}</h2></div>
   	 </div>
	
	
<%-- 		<div>
			<c:catch>
			<c:forEach items="${vo.boardFileVOs}" var="file">
				<div>
					<a href="../boardFile/fileDown?fileNum=${file.fileNum}&board=${file.board}">${file.oriName }</a>
				</div>
			</c:forEach>
			</c:catch>
		</div> --%>
	
		
	</div>
	
	
	
	<div class="container">
		<a href="../qnacheck/qnaOk?qna_storekey=${vo.qna_storekey}" class="btn btn-primary">승인하기</a>
		<a href="../qnacheck/qnaNo?qna_storekey=${vo.qna_storekey}" class="btn btn-danger">거절하기</a>
	</div>
	
	<c:import url="../template/footer.jsp"></c:import>
</body>
</html>