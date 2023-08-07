<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>공지사항 상세</h1>
		<ul>
			<li>
				<label>글번호</label>
				<span>${requestScope.notice.noticeNo }</span>
<!-- 			requestScope => set, get말고 내장객체로 notice의 값을 가져옴 -->
<!-- 			notice클래스에서 선언한 변수 이름으로 가져오는 거임 -->
			</li>
			<li>
				<label>작성일</label>
				<span>${requestScope.notice.noticeDate }</span>
			</li>
			<li>
				<label>글쓴이</label>
				<span>${requestScope.notice.noticeWriter }</span>
			</li>
			<li>
				<label>제목</label>
				<span>${requestScope.notice.noticeSubject }</span>
			</li>
			<li>
				<label>내용</label>
				<p>${requestScope.notice.noticeContent }</p>
			</li>
		</ul>
		<a href="/notice/list.do">목록으로 이동</a><br>
		<a href="/notice/modify.do?noticeNo=${notice.noticeNo }">수정하기</a>
		<a href="javascript:void(0)" onclick="deleteCheck();">삭제하기</a>
<!-- 		<button id="" onclick="">삭제하기</button> -->
		<script>
			const deleteCheck = () => {
				const noticeNo = '${notice.noticeNo}';
				if(confirm("정말 삭제하시겠습니까?")){
					location.href = "/notice/delete.do?noticeNo=" + noticeNo;
				}
			} 
		</script>
</body>
</html>