<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/title.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/content.css">
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
				<table border="0" cellspacing="0" cellpadding="10">
					<tr>
						<td>
							<form action="bookList" method="post" name="join_frm">
					<tr>
						<td><span class="content_text01">호스트 : </span></td>
						<td><input class="input_type01" type="text" name="bid" readonly="readonly"></td>
					</tr>
					<tr>
						<td><span class="content_text01">지역 : </span></td>
						<td><select name="bregion"> 
						    <option value="seoul">서울</option>
						    <option value="Incheon">인천</option>
						    <option value="Gyeonggi">경기도</option>
						    <option value="Gangwon">강원도</option>
						    <option value="Chungcheong">충청도</option>
						    <option value="Jeolla">전라도</option>
						    <option value="Gyeongsang">경상도</option>
						</select></td>
					</tr>
					<tr>
					<tr>
						<td colspan="2">
							<input class="button_type01" type="submit" value="조회하기" >&nbsp;&nbsp;
							<input class="button_type01" type="button" value="메인화면" onclick="script:window.location='index'">
						</td>
					</tr>
					</form>
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