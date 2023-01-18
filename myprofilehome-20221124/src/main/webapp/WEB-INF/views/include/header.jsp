<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/header.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/hyperlink.css">
<title>header</title>
</head>
<body>
	<%
		String sessionId = (String) session.getAttribute("memberId");	
	%>
	<table width="100%" border="0" cellspacing="0" cellpadding="0">
		<tr class="headline01">
			<td width="65%" class="menu01">&nbsp;</td>
			<td width="5%" class="menu01"><a href="index">HOME</a></td>
			<td width="5%" class="menu01">
			<%
				if(sessionId == null) {
			%>
				<a href="login">로그인</a>
			<%
				} else {	
			%>
				<a href="logout">로그아웃</a>
			<% 
				} 
			%>
			</td>
			<td width="5%" class="menu01">
			<%
				if(sessionId == null) {
			%>
				<a href="join">회원가입</a>
			<%
				} else {	
			%>
				<a href="memberModify">정보수정</a>
			<% 
				} 
			%>	
			</td>
			<td width="5%" class="menu01"><a href="book">예약</a></td>
			<td width="5%" class="menu01"><a href="question">문의</a></td>
			<td width="6%" class="menu01"><a href="bookCheck">예약확인</a></td>
			<td width="6%" class="menu01"><a href="placeInsert">장소등록</a></td>
			<td width="2%">&nbsp;</td>
		</tr>
		<tr class="headline02">
			<td>&nbsp;</td>
		</tr>
	</table>
</body>
</html>