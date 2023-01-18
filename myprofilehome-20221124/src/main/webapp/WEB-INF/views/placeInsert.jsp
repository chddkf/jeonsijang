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
								<form action="placeInsertOk" method="post" name="place_frm">
									<tr>
										<td><span class="content_text01">아 이 디 : </span></td>
										<td><input class="input_type01" type="text" name="bid" value="${memberId }" readonly="readonly"></td>
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
										<td><span class="content_text01">상세주소 : </span></td>
										<td><input class="input_type01" type="text" name="baddress"></td>
									</tr>
									<tr>
										<td><span class="content_text01">대여비용 : </span></td>
										<td><input class="input_type01" type="text" name="bprice"></td>
									</tr>
									<tr>
										<td><span class="content_text01">이용수칙 : </span></td>
										<td><textarea class="textarea_type01" rows="5" cols="30" name="brule"></textarea></td>
									</tr>									
									<tr>
										<td><span class="content_text01">이 메 일 : </span></td>
										<td><input class="input_type01" type="text" name="bemail"></td>
									</tr>
									
									<tr>
										<td colspan="2">
											<input class="button_type01" type="submit" value="등록하기"><%--  onclick="placeInsertCheck()">--%>&nbsp;&nbsp;
											<input class="button_type01" type="button" value="취소하기" onclick="script:window.location='index'">
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