<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- <!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../template/boot.jsp"></c:import>
</head>
<body>  --%>



<div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">신청 현황 </h4>
</div>


<h1>${member.id}님의 신청 현황</h1>

<div class="modal-body">
         <table class="table table-bordered" border="1">
		<tr style="background-color: aqua;">
			<td>신청번호</td>
			<!-- qna_storekey -->
			<td>식당이름</td>
			<!-- qna_title -->
			<td>날짜</td>
			<!-- qna_date -->
			<td>승인 여부</td>
		</tr>

		
		<c:forEach items="${list}" var="vo" varStatus="i" >
			<tr id="status">
				<td>${vo.qc_check}</td>
				<td>${vo.qc_title}</td>
				<td>${vo.qc_date}</td>
				<td>
					<c:choose>
					<c:when test="${vo.qna_storekey > 0}">
						처리중
					</c:when>
					<c:otherwise>
						${result[i.index]}
					</c:otherwise>
					</c:choose>
				</td>
			</tr>
		</c:forEach>

	</table>
 
  </div>
<div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
<!-- </body>
</html> -->