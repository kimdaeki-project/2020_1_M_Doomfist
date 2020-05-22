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
		  <hr>
		   <div><img src="${pageContext.request.contextPath}/resources/images/restinfo.png"> </div> 
		   <br>

  </div>
  
  <div style="background-color: #e6f5ff;">
  	<div>
			<form class="form-horizontal" action="./storePageUpdate" id="form" name="form" method="POST"
			enctype="multipart/form-data">
  			<input type="hidden" id="st_key" name="st_key" value="${liststore.st_key}">

			<div class="form-group" align="center">
				<label for="qna_title">식당이름 </label> <input type="text" style="width: 30%;"
					class="form-control" id="st_name" placeholder="식당이름" value="${liststore.st_name}"
					name="st_name">
			</div>

			<div class="form-group">
				<input type="hidden" class="form-control" style="width: 30%;"
					id="id"  value="${sessionScope.member.id}"
					placeholder="Enter writer" name="id">
			</div>
			
			<div class="form-group" align="center">
				<label for="qna_phone">식당전화번호 </label> <input type="text" style="width: 30%;"
					class="form-control" id="st_phone" placeholder="식당 전화번호" value="${liststore.st_phone}"
					name="st_phone">
			</div>
			
			<div align="center">
				<label for="category">식당 카테고리</label>
				<select id="st_kind" name="st_kind">
					<option>${liststore.st_kind}</option>
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
				<input style="width: 30%;" type="text" id="st_address" name="st_address" class="form-control" placeholder="Enter Address" required="true" readonly="readonly" value="${liststore.st_address}">
				<br>
			</div>
			<!-- 태그 추가 -->
			<div align="center">
				<img src="${pageContext.request.contextPath}/resources/images/tag.png" style="width: 50px" height="50px"> 태그 
				<input type="button" id="addtag" class="btn btn-info active" value="태그 추가하기">
				
			<c:forEach items="${listtag}" var="vo">
			<div style="margin-top: 15px; margin-bottom: 15px;"> 
			<input value="${vo.tag_name}" type="text" id="tag_name" name="tag_name" placeholder="태그를 입력해주세요" style="margin-right: 15px; margin-left:15px"> <i class="glyphicon glyphicon-remove removet"></i> 
			</div>
			
			</c:forEach>	
				
			</div> 
			<div id="tagg" align="center"></div><br></br>
			
						<br>
			<div class="form-group">
					<div class="col-sm-offset-2 col-sm-10">
						<button style="margin-left: 37%;" type="submit" class="btn btn-default">수정</button>
					</div>
				</div>
			
		</form>
		</div>
		<br><br>
		</div>
		<hr>
	<div style="margin-left: 35%;"><img src="${pageContext.request.contextPath}/resources/images/menuinfo.png"></div>
		<hr>
		
			<div style="background-color: #e6f5ff;">
		
			<!-- 메뉴 추가 -->
			<div align="center">
				<img src="${pageContext.request.contextPath}/resources/images/menu.png" style="width: 50px" height="50px">
				<!--<input type="button" id="addmenu" class="btn btn-info active" value="메뉴 추가하기"> -->
				<a href="" onclick="javascript:openWin2();">메뉴 추가</a>
				&nbsp; &nbsp;
				<a href="" onclick="javascript:openWin();">메뉴 수정</a>
			</div> 
			
		
			
			<c:forEach items="${listmenu}" var="vo">	
				<form class="form-horizontal" action="./storeMenuDelete" id="form" name="form" method="POST"
				enctype="multipart/form-data">
					<div class="menuu2" style="margin-top: 15px; margin-bottom: 15px;" align="center">
						<input type="hidden" id="sm_key" name="sm_key" value="${vo.sm_key}">
						<input value="${vo.sm_menu}" title="${a}"type="text" id="sm_menu" name="sm_menu" placeholder="메뉴를 입력해주세요" style="margin-right: 15px"> 
						<input value="${vo.sm_price}" type="text" id="sm_price" name="sm_price" class="sm_price" placeholder="가격을 입력해주세요">
						<button type="submit" class="btn btn-default">삭제</button>
					</div>
				</form>
			</c:forEach>
			
			<div id="menuu" align="center">
			
			</div>
			</div>
			<br></br>
			
			
			<!-- 음신 사진 추가 
			<div align="center">
				<img src="${pageContext.request.contextPath}/resources/images/fileimg.png" style="width: 50px" height="50px"> 음식 사진 추가 
				<input type="button" id="add" class="btn btn-info active" value="음식사진 추가"> 
			</div> 
			<div align="center"> 
				<input type="file" class="form-control files" name="files" style="width: 300px; display: inline-block; margin-bottom: 15px;"> 
			</div>
			<div id="file" align="center"></div>-->	


	</div>
	<input type="hidden" id="a" value="${a}">
	
	

	<script type="text/javascript">
	
	function openWin() {
		window.open("http://localhost:8080/s1/storeList/storeMenuUpdate?st_key=${liststore.st_key}","메뉴수정","width=600, height=500, toolbar=no, menubar=no, scrollbars=no, resizable=yes") 

	}
	
	function openWin2() {
		window.open("http://localhost:8080/s1/storeList/storeMenuInsert?st_key=${liststore.st_key}","메뉴추가","width=600, height=500, toolbar=no, menubar=no, scrollbars=no, resizable=yes") 

	}
	
		var countm = 1 + $("#a").attr("value")*1;

		function setCountm(cc) {
			countm = countm + cc;

		}

		$("#menuu").on("click", ".remove", function() {
			$(this).parent().remove();
			countm--;
		});

		$(".menuu2").on("click", ".remove", function() {
			$(this).parent().remove();
			countm--;
		});	
		
		$("#addmenu")
				.click(
						function() {
							if (countm < 11) {
								$("#menuu")
										.append(
												'<div style="margin-top: 15px; margin-bottom: 15px;"> <input type="text" id="sm_menu" name="sm_menu" placeholder="메뉴를 입력해주세요" style="margin-right: 15px; margin-left:15px"> <input type="text" id="sm_price" name="sm_price" class="sm_price" placeholder="가격을 입력해주세요"> <i class="glyphicon glyphicon-remove remove"></i> </div>');

								countm++;
							} else {
								alert("메뉴등록은 최대 10개 까지입니다.");
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
							if (countt < 10) {
								console.log(countt); 
								$("#tagg")
										.append(
												'<div style="margin-top: 15px; margin-bottom: 15px;"> <input type="text" id="tag_name" name="tag_name" placeholder="태그를 입력해주세요" style="margin-right: 15px; margin-left:15px"> <i class="glyphicon glyphicon-remove removet"></i> </div>');

								countt++;
							} else {
								alert("태그등록은 최대 10개 까지입니다.")
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
	<footer style="margin-top: 5%">
<c:import url="../template/footer.jsp" ></c:import>
</footer>
</body>
</html>