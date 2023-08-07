<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/resources/css/myPage.css">
    <title>마이페이지</title>
</head>
<body>
    <div id="container">
		<jsp:include page="/WEB-INF/views/include/header.jsp"></jsp:include>

        <main>
            <div id="mainTop">
                <div id="name">홍길동님</div>
                <div id="benefit">
                    보유쿠폰
                	포인트
                </div>
                
            </div>
            <div id="mainContainer">
                <div id="leftList">
                    <ul>
                        <li>주문/배송조회</li>
                        <li><a href="/member/update.do">회원정보 수정</a></li>
                        <li>배송 주소록 관리</li>
                        <li>상품 문의</li>
                        <li>관심 상품</li>
                    </ul>
                </div>
                <div id="mainInner">
                    <h2>주문/배송조회</h2>
                    <div id="innerList">
                        <ul>
                            <li>주문배송내역</li>
                            <li>취소신청</li>
                            <li>반품신청</li>
                            <li>교환신청</li>
                        </ul>
                        <div>
                            기간별 조회 <input type="radio" name="period">15일
                            <input type="radio" name="period">1개월
                            <input type="radio" name="period">3개월
                            <input type="radio" name="period">6개월
                            <input type="button" value="검색">
                        </div>
                        <div>
                            <ul>
                                <li>전체주문체결내역</li>
                                <li>주문취소내역</li>
                                <li>반품처리내역</li>
                                <li>교환처리내역</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>          
        </main>

        <jsp:include page="/WEB-INF/views/include/footer.jsp"></jsp:include>
    </div>
</body>
</html>