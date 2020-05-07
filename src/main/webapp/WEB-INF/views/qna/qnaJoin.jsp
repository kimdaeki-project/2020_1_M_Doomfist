<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../template/boot.jsp"></c:import>
<c:import url="../template/summer.jsp"></c:import>
<c:import url="../template/style.jsp"></c:import>
</head>
<body>
<c:import url="../template/header_sub.jsp"></c:import>
<div class="container">
		<h2>맛집 등록 신청</h2>
		<form action="./qnaJoin" id="frm"  method="POST" enctype = multipart/form-data>

			<div class="form-group">
				<label for="qna_title">식당이름:</label> <input type="text" class="form-control"
					id="qna_title" placeholder="식당이름" name="qna_title">
			</div>

			<div class="form-group">
				<label for="id">id:</label> <input type="text"
					class="form-control" id="id" readonly="readonly" value="iu"  placeholder="Enter writer"
					name="id" >
			</div>	

			<div class="form-group">
				<label for="qna_contents">식당을 소개해 주세요:</label> <textarea class="form-control"
				row="20" id="qna_contents" name="qna_contents"></textarea>
			</div>
			
			<input type="button" id="add" class="btn btn-info" value="사진 추가 하기">
			
			<div id="file">
				
			</div>
			
			 
			<button type="button" id="btn" class="btn btn-default">신청하기</button>
		</form>
	</div>
<script type="text/javascript" src="../resources/boardForm.js">

</script>	

<c:import url="../template/footer.jsp"></c:import>
</body>
</html>