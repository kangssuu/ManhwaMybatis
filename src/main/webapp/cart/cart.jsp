<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
	<jsp:include page="/WEB-INF/views/include/head.jsp"></jsp:include>
    <link rel="stylesheet" href="/resources/css/cart.css">
    <title>장바구니</title>
</head>
<body>
    <div id="container">
       <jsp:include page="/WEB-INF/views/include/header.jsp"></jsp:include>

        <main>
            <h2>장바구니</h2>
            <div id="infor">
                <div id="inforText">
                    <div id="checkBtn">
                        <label><input type="checkbox" id="check"><span class="span">전체선택</span></label>
                        <div id="pickBtn">
                            <button id="removeBtn">선택삭제</button>
                        </div>
                    </div>
                    <form action="">
                        <div id="cartList">
                            <ul>
                                <li id="none">장바구니에 담긴 상품이 없습니다.</li>
                            </ul>
                        </div>
                    </form>
                </div>    
                <div id="priceInfor">
                    <div id="inner">
                        <div id="box">
                            <h3 class="boxTitle">결제정보(1)</h3>
                            <dl>
                                <dt>주문금액</dt>
                                <dd><span>0</span>원</dd>
                            </dl>                                 
                            <dl>
                                <dt>배송비</dt>
                                <dd>무료</dd>
                            </dl>
                            <dl>
                                <dt>적립 예정 포인트</dt>
                                <dd><span>0</span>P</dd>
                            </dl>
                            <dl id="sum">
                                <dt>결제 예정 금액</dt>
                                <dd id="num"><span>0</span>원</dd>
                            </dl>
                        </div>
                    </div>
                    <button id="buyBtn" onclick="buybtn();">구매하기</button>
                    <script>
                        function buybtn() {
                            alert("결제창");
                        }
                    </script>
                </div>               
            </div>      
        </main>

        <jsp:include page="/WEB-INF/views/include/footer.jsp"></jsp:include>
    </div>
</body>
</html>