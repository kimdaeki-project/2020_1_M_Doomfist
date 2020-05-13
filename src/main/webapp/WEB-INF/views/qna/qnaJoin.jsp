<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>맛집 신청d</title>
<c:import url="../template/boot.jsp"></c:import>
<c:import url="../template/summer.jsp"></c:import>
<c:import url="../template/style.jsp"></c:import>
</head>
<body>
	<c:import url="../template/header_sub.jsp"></c:import>
	<div class="container">
		<h2>맛집 등록 신청</h2>
		<form action="./qnaJoin" id="form" name="form" method="POST"
			enctype="multipart/form-data">

			<div class="form-group">
				<label for="qna_title">식당이름</label> <input type="text"
					class="form-control" id="qna_title" placeholder="식당이름"
					name="qna_title">
			</div>

			<div class="form-group">
				<label for="id">ID:</label> <input type="text" class="form-control"
					id="id" readonly="readonly" value="${sessionScope.member.id}"
					placeholder="Enter writer" name="id">
			</div>
			
			<div class="form-group">
				<label for="qna_phone">식당전화번호:</label> <input type="text"
					class="form-control" id="qna_phone" placeholder="식당 전화번호"
					name="qna_phone">
			</div>
			

			<button type="button" class="btn btn-warning active" onClick="goPopup()"><span class="glyphicon glyphicon-search"></span>주소검색</button>
			
			
			<input type="text" id="qna_contents" name="qna_contents" class="form-control" placeholder="Enter Addr" required="true" readonly="readonly"/>
			
			<br>
			
			<input type="button" id="addmenu" class="btn btn-info active" value="메뉴 입력하기">
			<div id="menuu"></div>

			<input type="button" id="add" class="btn btn-info active" value="음식사진 추가">
			<div id="file"></div>

			<br>
			<button type="button" id="btn" class="btn btn-default active">신청하기</button>
		</form>
	</div>
	<c:import url="../template/footer.jsp"></c:import>

	<script type="text/javascript">
		var countm = 1;
		function setCountm(cc) {
			countm = countm + cc;
		}

		$("#menuu").on("click", ".remove", function() {
			$(this).parent().remove();
			countm--;
		});

		$("#addmenu")
				.click(
						function() {
							if (countm < 10) {
								console.log(countm);
								$("#menuu")
										.append(
												'<div style="margin-top: 15px; margin-bottom: 15px;"> <input type="text" id="qm_menu" name="qm_menu" placeholder="메뉴를 입력해주세요" style="margin-right: 15px"> <input type="text" id="qm_price" name="qm_price" class="qm_price" placeholder="가격을 입력해주세요"> <i class="glyphicon glyphicon-remove remove"></i> </div>');

								countm++;
							} else {
								alert("메뉴등록은 최대 10개 까지입니다.")
							}

						});
		
		function goPopup(){
			// 주소검색을 수행할 팝업 페이지를 호출합니다.
			// 호출된 페이지(jusopopup.jsp)에서 실제 주소검색URL(http://www.juso.go.kr/addrlink/addrLinkUrl.do)를 호출하게 됩니다.
			var pop = window.open("../popup/jusoPopup.jsp","pop","width=570,height=420, scrollbars=yes, resizable=yes"); 
			
			// 모바일 웹인 경우, 호출된 페이지(jusopopup.jsp)에서 실제 주소검색URL(http://www.juso.go.kr/addrlink/addrMobileLinkUrl.do)를 호출하게 됩니다.
		    //var pop = window.open("/popup/jusoPopup.jsp","pop","scrollbars=yes, resizable=yes"); 
		}

		function jusoCallBack(roadFullAddr){
				// 팝업페이지에서 주소입력한 정보를 받아서, 현 페이지에 정보를 등록합니다.
				document.form.qna_contents.value = roadFullAddr;	
				
		}
		
	</script>



	<script type="text/javascript" src="../resources/boardForm.js">
		
	</script>

</body>
</html>