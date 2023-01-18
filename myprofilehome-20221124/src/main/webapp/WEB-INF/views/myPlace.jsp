io<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/title.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/content.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/board.css">
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
							<br><br>
							<center>
							<table width="80%" border="0" cellspacing="0" cellpadding="10">
								<tr>
									<th class="board_title">호스트</th>
									<th class="board_title">지역</th>
									<th class="board_title" width="10%">상세주소</th>
									<th class="board_title">대여비</th>
									<th class="board_title" width="50%">주의사항</th>
									<th class="board_title">이메일</th>
								</tr>
								<c:forEach items="${pdtos }" var="pdto">
								<tr>
									<td class="board_content01">${pdto.bid }</td>
									<td class="board_content01">${pdto.bregion }</td>
									<td class="board_content02">
									<a href="placeView?qnum=${pdto.bnum }">
									<c:choose>
										<c:when test="${fn:length(pdto.brule) > 23 }">
											<c:out value="${fn:substring(pdto.brule,0,22) }"></c:out>...
										</c:when>
										<c:otherwise>
											<c:out value="${pdto.qcontent }"></c:out>
										</c:otherwise>
									</c:choose>
									</a>
									</td>
									<td class="board_content01">${pdto.pid }</td>
									<td class="board_content01">
										<c:out value="${fn:substring(pdto.bnum,0,10) }"></c:out>										
									</td>
								</tr>						
								</c:forEach>
								<tr>
									<td colspan="5" align="center">
										<c:if test="${pageMaker.prev }">
											<a href="list?pageNum=${pageMaker.startPage-5 }">Prev</a>&nbsp;&nbsp;&nbsp;
										</c:if>										
										<c:forEach begin="${pageMaker.startPage }" end="${pageMaker.endPage }" var="num">
											<c:choose>
											<c:when test="${currPage == num}">
											<u>${num}</u>&nbsp;&nbsp;&nbsp;
											</c:when>
											<c:otherwise>
											<a href="list?pageNum=${num}">${num}</a>&nbsp;&nbsp;&nbsp;
											</c:otherwise>
											</c:choose>																					
										</c:forEach>
										<c:if test="${pageMaker.next }">
											<a href="list?pageNum=${pageMaker.startPage+5 }">Next</a>
										</c:if>	
									</td>
								</tr>	
								<tr>
									<td colspan="5" align="right">
										<input type="button" value="질문하기" class="button_type01" onclick="script:window.location='question'">
									</td>
								</tr>
								
							</table>
							</center>
							<br>						
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