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
</div>


<div style="font-size: 48px;"align="center">&nbsp; ${member.id}&nbsp;<img alt="" src="${pageContext.request.contextPath}/resources/images/applyboard.png">  </div>

<div class="modal-body">
         <table class="table table-bordered" border="1" >
		<tr style="background-color: #e6f5ff;  font-weight: bold;">
			<td align="center" style="width: 10%;">신청번호</td>
			<!-- qna_storekey -->
			<td align="center" style="width: 40%;">식당이름</td>
			<!-- qna_title -->
			<td align="center" style="width: 20%;">날짜</td>
			<!-- qna_date -->
			<td align="center" style="width: 15%;">승인 여부</td>
		</tr>

		
		<c:forEach items="${list}" var="vo" varStatus="i" >
			<tr id="status">
				<td align="center">${vo.qc_check}</td>
				<td align="center">${vo.qc_title}</td>
				<td align="center">${vo.qc_date}</td>
				<td align="center">
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
			
          <button type="button" class="btn btn-info" data-dismiss="modal" style=" background-image:url('${pageContext.request.contextPath}/resources/images/close.png'); width: 100px; height: 39px;" ></button>
       </div>
<!-- </body>
</html> -->