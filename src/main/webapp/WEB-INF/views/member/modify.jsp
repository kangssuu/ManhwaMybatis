<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 정보 수정</title>
<link rel="stylesheet" href="/resources/css/memberModify.css">
</head>
<body>
	<div id="container">
		<jsp:include page="/WEB-INF/views/include/header.jsp"></jsp:include>
		<main>
			<div id="modify">
			<br><h2>회원정보 수정</h2><br>
				<form action="/member/update.do" method="post">
					<ul id="modifyUl">
						<li id="modifyList">
							<label for="member-id"><span>아이디</span></label>
							<input type="text" id="member-id" name="member-id" value="${member.memberId }" readonly> <!-- 기능을 위한 id, 쿼리스트링을 위한 name -->
						</li>
						<li id="modifyList">
							<label for="member-pw"><span>비밀번호</span></label>
							<input type="password" id="member-pw" name="member-pw" > <!-- 기능을 위한 id, 쿼리스트링을 위한 name -->
						</li>
						<li id="modifyList">
							<label for="member-name"><span>이름</span></label>
							<input type="text" id="member-name" name="member-name" value="${member.memberName }" readonly> <!-- 기능을 위한 id, 쿼리스트링을 위한 name -->
						</li>
						<li id="modifyList">
							<label for="member-addr"><span>주소</span></label>
							<input type="text" id="member-address" name="member-address" value="${member.memberAddress }"> <!-- 기능을 위한 id, 쿼리스트링을 위한 name -->
						</li>
						
						<li id="modifyList">
							<label for="member-firstPhone"><span>전화번호</span></label>
							<input type="text" id="member-firstPhone" size="2" maxlength="3" name="member-firstPhone" value="${member.memberFirstPhone }"><span>-</span><input type="text" id="member-secondPhone" size="2" maxlength="4" name="member-secondPhone" value="${member.memberSecondPhone }"><span>-</span><input type="text" id="member-lastPhone" size="2" maxlength="4" name="member-lastPhone" value="${member.memberLastPhone }">
						</li>
						<li id="modifyList">
							<label for="member-email"><span>이메일</span></label>
							<input type="text" id="member-email" name="member-email" value="${member.memberEmail }"> <!-- 기능을 위한 id, 쿼리스트링을 위한 name -->
						</li>
						<li id="modifyList">
							<label for="member-date"><span>가입날짜</span></label>
							<input type="text" id="member-date" name="member-date" value="${member.memberDate }"> <!-- 기능을 위한 id, 쿼리스트링을 위한 name -->
						</li>
					</ul>
					<div id="btn-div">
						<button type="submit">수정하기</button>
						<input type="button" id="btn" href="javascript:void(0)" onclick="checkDelete();" value="탈퇴하기">
				<!-- 		<button>탈퇴하기</button> -->
						<a href="/member/logout.do"><input type="button" id="btn" value="로그아웃"></a>
					</div>
				</form>
			</div>
		</main>
	</div>
	<script>
// 	/member/delete.do?memberId=${sessionScope.memberId }
	function checkDelete() {
		const memberId = '${sessionScope.memberId }';
		if(confirm("탈퇴하시겠습니까?")) {
			location.href = "/member/delete.do?memberId=" + memberId;
		}
	}
	</script>
	<br><br>
	<jsp:include page="/WEB-INF/views/include/footer.jsp"></jsp:include>
</body>
</html>