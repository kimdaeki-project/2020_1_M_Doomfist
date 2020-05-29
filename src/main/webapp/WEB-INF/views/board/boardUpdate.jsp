<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- fn 함수 쓰기위해 선언  -->
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지수정</title>
<c:import url="../template/boot.jsp"></c:import>
<c:import url="../template/summer.jsp"></c:import>
<c:import url="../template/style.jsp"></c:import>
</head>
<body>
	<c:import url="../template/header.jsp"></c:import>
	<div class="container">
		<h1> ${fn:toUpperCase(board)} Update Form</h1>

			<!--enctype="mutipart/form-data" 파일여러개  -->
		<form action="./${board}Update" id="frm" method="post" enctype="multipart/form-data">
			<input type="hidden" name="no_num" value="${vo.no_num}">
			<div class="form-group">
				<label for="title">Title:</label> <input type="text"
					value="${vo.title}" class="form-control" id="title" name="title">
			</div>
		
			<div class="form-group">
				<label for="contents">Contents:</label>
				<textarea rows="5" cols="" class="form-control" id="contents"
					name="contents">${vo.contents}</textarea>
			</div>

			<input type="button" id="btn" class="btn btn-info " value="Write">
			
		</form>

	</div>
	<br>
	<br>

	<script type="text/javascript">
		$("#contents").summernote({
			height : 400, // set editor height
			minHeight : 300, // set minimum height of editor
			maxHeight : 500, // set maximum height of editor
			focus : true
		// set focus to editable area after initializing summernote
		});
	
	</script>
<script type="text/javascript" src="../resources/noticeForm.js">
	</script> 
	

<c:import url="../template/footer.jsp"></c:import>
</body>
</html>