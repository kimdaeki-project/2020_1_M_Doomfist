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

<script type="text/javascript">


function Close_Event(){
    opener.document.location.reload();
}

</script>

<body onunload="Close_Event();">
<img alt="" src="${pageContext.request.contextPath}/resources/images/findimage.png">
	<div class="container">
		  <div class="page-header text-center text-info">

  
  	<div>

	
	<div style="margin-left: 35%;"><img src="${pageContext.request.contextPath}/resources/images/.png"></div>
		<hr>
		
			
	<form class="form-horizontal" action="./storeMenuInsert" id="form" name="form" method="POST"
			enctype="multipart/form-data">
			<!-- 메뉴 추가 -->
			<div align="center">
				<img src="${pageContext.request.contextPath}/resources/images/menu.png" style="width: 50px" height="50px">
			<input type="button" id="addmenu" class="btn btn-info active" value="메뉴 추가하기">
			<input type="hidden" id="st_key" name="st_key" value="${liststore.st_key}">

				&nbsp; &nbsp;
				<button type="submit" id="btn" class="btn btn-default active" >신청하기</button>
			</div> 
			
		
			
			<c:forEach items="${listmenu}" var="vo">
			<div class="menuu2" style="margin-top: 15px; margin-bottom: 15px;" align="center">
			<input type="hidden" id="sm_key" name="sm_key" value="${vo.sm_key}">
				<input value="${vo.sm_menu}" title="${a}"type="text" id="sm_menu" name="sm_menu"  style="margin-right: 15px"> 
				<input value="${vo.sm_price}" type="text" id="sm_price" name="sm_price" class="sm_price" >
			</div>
			</c:forEach>
			
			<div id="menuu" align="center">
			
			</div>
			</form>
			</div>
			<br></br>


	</div>
	<input type="hidden" id="a" value="${a}">
	
	

	<script type="text/javascript">
	
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