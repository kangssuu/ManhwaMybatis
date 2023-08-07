<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 수정</title>
<link rel="stylesheet" href="/resources/css/noticeModify.css">
</head>
<body>
	<div id="container">
		<jsp:include page="/WEB-INF/views/include/header.jsp"></jsp:include>
		<main>
			<div id="modify"><br><br>
				<h2>공지사항 수정</h2><br>
				<form action="/notice/modify.do" method="post">
				<input type="hidden" name="noticeNo" value="${notice.noticeNo }"> 
					<ul id="modifyUl">
						<li id="modifyList">
							<label for="noticeSubject">제목</label>
							<input type="text" id="noticeSubject" name="noticeSubject" value="${notice.noticeSubject }">
						</li>
						<li id="modifyList">
							<label for="noticeContent">내용</label>
		<!-- 					name값이 있어야 post나 get에 사용할 수 있음 -->
							<textarea rows="30" cols="64" id="noticeContent" name="noticeContent">${notice.noticeContent }</textarea>
						</li>
					</ul>
					<div id="btn-div">
						<input type="submit" id="btn" value="수정">
						<input type="reset" id="btn" value="초기화">
					</div>
				</form>
			</div>
		</main>
		<br><br>
		<jsp:include page="/WEB-INF/views/include/footer.jsp"></jsp:include>
	</div>
</body>
</html>