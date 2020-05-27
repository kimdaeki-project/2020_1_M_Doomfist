<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	int forcount = 0;
	%>

<div class="modal-header" id="result123">
	<button type="button" class="close" data-dismiss="modal">&times;</button>
</div>

<div class="modal-body"
	style="text-align: center; font-size: 30px; margin-left: 10%; margin-right: 10%;">
	<h1 style="color: black;">${sessionScope.member.id}님결제내역</h1>
	<ul class="list" style="list-style-type: none;">
	
		<c:forEach items="${vo_pf}" var="vo" varStatus="i">
		
			<div style="margin-top: 50px">
				<hr>
				<div style="float: left;">
				${vo.pf_stname} | 
				</div>
				<div style="float: left; font-size: medium; margin-top: 10px" >
				
				결제날짜 :${vo.pf_date}	
				</div> 
			<div style="font-size: medium; float: right;">
				
				<input type="hidden" id="${i.count}" value="${vo.pf_key}" title="${i.count}">
				<%forcount++; %>
				<button class="btn btn-info plz" title="${i.count}" id="btndt${i.count}" 
				data-toggle="modal" data-target="#my3Modal" >
				자세히보기
				</button>
				
				<c:set var="sum" value="${0}" />
			
				
			</div>
			</div>
			
		</c:forEach>
		
	</ul>
	
	
</div>
<div class="modal-footer" style="margin-top: 50px">
	<button type="button" class="btn btn-default" data-dismiss="modal" id="close1">Close</button>
</div>

<script type="text/javascript">
	
	var co = <%=forcount++ %>*1;
	console.log(co);
	for(var i=1; i<=co; i++){
		$("#btndt"+i).click(function() {
			
			var pf_key = [];
				
					var pfs = $(this).attr("title");
					pf_key.push($("#"+pfs).attr("value"));				
					var pf_key2 = $("#"+pfs).val();
					
				$.ajax({
					type:"get",
					url: "./payment/selectReceipt",
					traditional: true,
					data:{
						pf_key: pf_key2
					},
					success: function(data) {
						$.get("/s1/payment/payReceipts?pf_key="+pf_key, function(data) {
							$("#my3Modal").html(data);
						});
					}
				});
		});
	}
	
</script>


