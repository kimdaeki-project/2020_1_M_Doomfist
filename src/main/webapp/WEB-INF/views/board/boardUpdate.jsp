<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- fn 함수 쓰기위해 선언  -->
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../template/boot.jsp"></c:import>
<c:import url="../template/summer.jsp"></c:import>
</head>
<body>
	<c:import url="../template/header.jsp"></c:import>
	<div class="container">
		<h1> ${fn:toUpperCase(board)} Update Form</h1>

			<!--enctype="mutipart/form-data" 파일여러개  -->
		<form action="./${board}Update" id="frm" method="post" enctype="multipart/form-data">
			<input type="hidden" name="num" value="${vo.no_num}">
			<div class="form-group">
				<label for="title">Title:</label> <input type="text"
					value="${vo.title}" class="form-control" id="title" name="title">
			</div>
		
			<div class="form-group">
				<label for="contents">Contents:</label>
				<textarea rows="5" cols="" class="form-control" id="contents"
					name="contents">${vo.contents}</textarea>
			</div>
			<!--  -->
		
			
			
				


			<input type="submit" id="btn" class="btn btn-default" value="Write">
		</form>

	</div>


	<!-- 외부 자바 스크립트 파일  가져오기 -->
	<script type="text/javascript" src="../resources/js/boardForm.js"></script>
	
	<script type="text/javascript">
		//$("선택자").action();
		//$("#contents").summernote("code",${vo.contents})
		$("#contents").summernote({
			height : 400, // set editor height
			minHeight : 300, // set minimum height of editor
			maxHeight : 500, // set maximum height of editor
			focus : true
		// set focus to editable area after initializing summernote
		});

		//x버튼 클릭
		$(".fileDelete").click(function() {

			var check = confirm("정말지울꺼야?");

			if (check) {

				//notice qna 도 쓸꺼
				var s = $(this);//변수로 담아서 
				$.post("../boardFile/fileDelete", {
					fileNum : $(this).attr("id"),board:$(this).attr("title")}, function(data) {
					if (data/* .trim()  */> 0) {
						//p태그도 삭제	test
						alert("성공!");
						s.parent().remove(); //<p> 태그 삭제 
						count--;

					} else {
						alert("파일삭제실패");

					}
				});// post끝

			}//if 끝
		})
		
	
	</script>



</body>
</html>