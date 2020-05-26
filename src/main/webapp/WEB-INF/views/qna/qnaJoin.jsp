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
		  <div class="page-header text-center text-info">
		   <div><img src="${pageContext.request.contextPath}/resources/images/apply_2.png"> </div> 
    <br></br>
    <br></br>
  </div>
  	<div>
		<form action="./qnaJoin" id="form" name="form" method="POST"
			enctype="multipart/form-data">

			<div class="form-group" align="center">
				<label for="qna_title">식당이름 </label> <input type="text" style="width: 30%;"
					class="form-control" id="qna_title" placeholder="식당이름"
					name="qna_title">
			</div>

			<div class="form-group">
				<input type="hidden" class="form-control" style="width: 30%;"
					id="id"  value="${sessionScope.member.id}"
					placeholder="Enter writer" name="id">
			</div>
			
			<div class="form-group" align="center">
				<label for="qna_phone">식당전화번호 </label> <input type="text" style="width: 30%;"
					class="form-control" id="qna_phone" placeholder="식당 전화번호"
					name="qna_phone">
			</div>
			
			<div align="center">
				<label for="category">식당 카테고리</label>
				<select id="qna_kind" name="qna_kind">
					<option value="">선택없음</option>
					<option>한식</option>
					<option>분식</option>
					<option>카페,디저트</option>
					<option>돈까스,회,일식</option>
					<option>치킨</option>
					<option>피자</option>
					<option>아시안,양식</option>
					<option>중국집</option>
					<option>족발,보쌈</option>
					<option>야식</option>
					<option>찜,탕</option>
					<option>도시락</option>
					<option>패스트 푸드</option>
				</select>
			</div> 
			
		
			<div align="center">
				<label for="address">식당 주소 정보</label>
				<button type="button" class="btn btn-warning active" onClick="goPopup()"><span class="glyphicon glyphicon-search"></span>주소검색</button>			
				<br></br>	
				<input style="width: 30%;" type="text" id="qna_contents" name="qna_contents" class="form-control" placeholder="Enter Addr" required="true" readonly="readonly"/>
				<br>
			</div>
			<!-- 태그 추가 -->
			<div align="center">
				<img src="${pageContext.request.contextPath}/resources/images/tag.png" style="width: 50px" height="50px"> 태그 
				<input type="button" id="addtag" class="btn btn-info active" value="태그 추가하기">
			</div> 
			<div id="tagg" align="center">
			<div>태그는 한줄로, 각 태그 앞에 ' # ' , 태그 뒤에 ' , ' 를 붙여주세요</div>
			</div><br></br>
			
			<!-- 메뉴 추가 -->
			<div align="center">
				<img src="${pageContext.request.contextPath}/resources/images/menu.png" style="width: 50px" height="50px"> 메뉴
				<input type="button" id="addmenu" class="btn btn-info active" value="메뉴 추가하기">
			</div> 
			<div style="margin-top: 15px; margin-bottom: 15px;" align="center">
				<input type="text" id="qm_menu" name="qm_menu" placeholder="메뉴를 입력해주세요" style="margin-right: 15px"> <input type="text" id="qm_price" name="qm_price" class="qm_price" placeholder="가격을 입력해주세요">
			</div>
			<div id="menuu" align="center"></div><br></br>
			
			<!-- 음식 사진 추가 -->
			<div align="center">
				<img src="${pageContext.request.contextPath}/resources/images/fileimg.png" style="width: 50px" height="50px"> 음식 사진 추가 
				<input type="button" id="add" class="btn btn-info active" value="음식사진 추가"> 
			</div> 
			<div align="center"> 
				<input type="file" class="form-control files" name="files" style="width: 300px; display: inline-block; margin-bottom: 15px;"> 
			</div>
			<div id="file" align="center"></div>	

			<br>
			<div align="center">
				<button type="button" id="btn" class="btn btn-default active">신청하기Modal</button>
			</div>
		</form>
	</div>


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
												'<div style="margin-top: 15px; margin-bottom: 15px;"> <input type="text" id="qm_menu" name="qm_menu" placeholder="메뉴를 입력해주세요" style="margin-right: 15px; margin-left:15px"> <input type="text" id="qm_price" name="qm_price" class="qm_price" placeholder="가격을 입력해주세요"> <i class="glyphicon glyphicon-remove remove"></i> </div>');

								countm++;
							} else {
								alert("메뉴등록은 최대 10개 까지입니다.")
							}

						});
		
		
		var countt = 1;
		function setCountt(tt) {
			countt = countt + tt;
		}

		$("#tagg").on("click", ".removet", function() {
			$(this).parent().remove();
			countt--;
		});

		$("#addtag")
				.click(
						function() {
							if (countt < 2) {
								console.log(countt); 
								$("#tagg")
										.append(
												'<div style="margin-top: 15px; margin-bottom: 15px;"> <input type="text" id="qna_tag" name="qna_tag" placeholder="#태그, #태그 ..." style="margin-right: 15px; margin-left:15px; width=300px;"> <i class="glyphicon glyphicon-remove removet"></i> </div>');

								countt++;
							} else {
								alert("태그는 한번만 추가할 수 있습니다.")
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
	
	<script type="text/javascript" src="../resources/boardForm.js?v=<%=System.currentTimeMillis() %>">
		
	</script>
	</div>
	<c:import url="../template/footer.jsp"></c:import>
</body>
</html>