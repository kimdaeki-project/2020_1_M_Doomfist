<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${vo.st_name} 리뷰 작성</title>
<c:import url="../template/boot.jsp"></c:import>
<c:import url="../template/summer.jsp"></c:import>
<c:import url="../template/style.jsp"></c:import>
</head>
<body>
<c:import url="../template/header_sub.jsp"></c:import>
<div class="container">
		<h2>${vo.st_name} 리뷰 작성</h2>
		<form action="./storeReviewWrite" id="frm"  method="POST" enctype="multipart/form-data">

			<div class="form-group">
				 <input type="hidden"class="form-control" id="id" value="${sessionScope.member.id}"  placeholder="Enter writer"
					name="id" >
			</div>	
			
			<div class="form-group">
				<label for="re_rating" style="font-size: large;">${vo.st_name} 어떠셨나요?</label>
				<p></p>
				<img alt="" src="${pageContext.request.contextPath}/resources/images/5point.png" > 맛있다&nbsp;&nbsp;&nbsp;
				<img alt="" src="${pageContext.request.contextPath}/resources/images/3point.png" > 괜찮다&nbsp;&nbsp;&nbsp;
				<img alt="" src="${pageContext.request.contextPath}/resources/images/1point.png" > 별로..&nbsp;&nbsp;&nbsp;
			</div>

			<div class="form-group">
				<label for="re_contents" style="font-size: large;">식당을 리뷰해 주세요!</label> <textarea class="form-control"
				row="20" id="re_contents" name="re_contents"></textarea>
			</div>
			
			<div class="form-group">
				<input type="hidden" class="form-control" id="st_key" value="${vo.st_key}"	name="st_key" >
			</div>	
			
			<input type="button" id="add" class="btn btn-info" value="사진 추가 하기">
			
			<div id="file" >
				
			</div>
			
			 
			<button type="button" id="btn" class="btn btn-default">작성하기</button>
		</form>
	</div>
<script type="text/javascript" src="../resources/boardForm2.js">

</script>	

<c:import url="../template/footer.jsp"></c:import>
</body>
</html>