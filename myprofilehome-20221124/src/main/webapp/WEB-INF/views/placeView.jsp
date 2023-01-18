<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/title.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/content.css">
<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/board.js"></script>
<title>JEONSIJANG</title>
</head>
<body>	
	<%@ include file="include/header.jsp" %>
	<center>
	<table width="75%" border="0" cellspacing="0" cellpadding="20">
		<tr>
			<td class="titlebox">
				<span class="title01">전시공간</span>
			</td>
		</tr>
		<tr>
			<td class="titlebox">
				<span class="title02">..</span>
			</td>
		</tr>
		<tr>
			<td>
				<center>
				<table width="80%" border="0" cellspacing="0" cellpadding="10">
					<tr class="contentbox">
						<td class="content">
							<center>						
							<table border="0" cellspacing="0" cellpadding="10">
								<form action="placeModify" method="post" name="place_frm">
									<input type="hidden" value="${qdto.qnum }" name="qnum">
									<tr>
										<td><span class="content_text01">아 이 디 : </span></td>
										<td><input class="input_type01" type="text" name="bid" value="${pdto.bid }" readonly="readonly"></td>
									</tr>
									<tr>
										<td><span class="content_text01">지역 : </span></td>
										<td><input class="input_type01" type="text" name="bregion" value="${pdto.bregion }" readonly="readonly"></td>
									</tr>
									<tr>
										<td><span class="content_text01">상세주소 : </span></td>
										<td><input class="input_type01" type="text" name="baddress" value="${pdto.baddress }" readonly="readonly"></td>
									</tr>
									<tr>
										<td><span class="content_text01">대 여 비 : </span></td>
										<td><input class="input_type01" type="text" name="bprice" value="${pdto.bprice }" readonly="readonly"></td>
									</tr>
									<tr>
										<td><span class="content_text01">주의사항 : </span></td>
										<td><textarea class="textarea_type01" rows="5" cols="30" name="brule" readonly="readonly">${pdto.brule }</textarea></td>
									</tr>									
									<tr>
										<td><span class="content_text01">이 메 일 : </span></td>
										<td><input class="input_type01" type="text" name="bemail" value="${pdto.bemail }" readonly="readonly"></td>
									</tr>
									<tr>
										<td colspan="2">
										<%
											String boardId = (String) request.getAttribute("qid");
										
											if(boardId.equals("GUEST")) {
										%>
										<input class="button_type01" type="submit" value="수정">&nbsp;&nbsp;										
										<input class="button_type01" type="button" value="삭제" onclick="script:window.location='placeDelete?bnum=${pdto.bnum}'">
										<input class="button_type01" type="button" value="목록" onclick="script:window.location='bookList'">
										<%
											} else if((sessionId != null ) && (sessionId.equals(boardId))) {
										%>
											<input class="button_type01" type="submit" value="수정">&nbsp;&nbsp;
											<input class="button_type01" type="button" value="삭제" onclick="script:window.location='placeDelete?bnum=${pdto.bnum}'">
											<input class="button_type01" type="button" value="목록" onclick="script:window.location='bookList'">
										<%
											} else {
										%>
											<input class="button_type01" type="button" value="목록" onclick="script:window.location='bookList'">
										<%
											}
										%>
										</td>
									</tr>
								</form>							
							</table>
							</center>							
						</td>						
					</tr>
					
				</table>
				</center>			
			</td>
		</tr>
	</table>
	</center>
	<%@ include file="include/footer.jsp" %>
</body>
</html>