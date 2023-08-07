<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 목록 조회</title>
<link rel="stylesheet" href="/resources/css/memberModify.css">

	<style>
		table{
			max-width : 1260px;
			width: 1000px;
			margin: 0 auto;
 			border : 1px solid  rgba(161, 213, 248, .8); 
  			border-collapse : collapse;  
		}
		th {
 			border-bottom : 1px solid rgba(161, 213, 248, .8);
		} 
		td {
 			border : 1px solid rgba(161, 213, 248, .8);
 			padding : 10px;
		}
		h2{
			max-width: 1260px;
			width:1000px;
			margin: 0 auto;
		}
	</style>
	
</head>
<body>
	<jsp:include page="/WEB-INF/views/include/header.jsp"></jsp:include>
	<br><br>
	<h2>공지사항</h2>
	<br>
	<table>
		<colgroup>
			<col width="10%">
			<col width="35%">
			<col width="10%">
			<col width="35%">
			<col width="10%">
		</colgroup>
		<thead>
			<tr>
				<th>글 번호</th>
				<th>글 제목</th>
				<th>글쓴이</th>
				<th>작성일</th>
				<th>조회수</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="notice" items="${requestScope.nList }">
				<tr>
					<td>${notice.noticeNo}</td>
					<td><a href="/notice/detail.do?noticeNo=${notice.noticeNo}">${notice.noticeSubject}</a></td>
					<td>${notice.noticeWriter}</td>
					<td>${notice.noticeDate}</td>
					<td>${notice.viewCount}</td>
				</tr>
			</c:forEach>
			<tr>
				<td colspan="5" align="center">  <!-- colspan => 테이블 열 합쳐서 하나로 보이게 하기 -->
				${pageNavi }
				</td>
			</tr>
		</tbody>
	</table>
	
	<br><br>
	<jsp:include page="/WEB-INF/views/include/footer.jsp"></jsp:include>
</body>
</html>