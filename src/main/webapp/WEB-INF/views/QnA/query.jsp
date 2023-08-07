<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>문의하기</title>
</head>
<body>
	<div>
		<form action="/notice/insert.do" method="post">
			<fieldset>
				<legend>문의하기</legend>
				<ul>
					<li>
						<label>제목</label>
						<input type="text" id="" name="noticeSubject">
					</li>
					<li>
						<label>내용</label>
						<textarea rows="30" cols="40" name="noticeContent"></textarea>
					</li>
				</ul>
			</fieldset>
			<div>
				<input type="submit" value="작성">
				<input type="reset" value="초기화">
			</div>
		</form>
	</div>
</body>
</html>