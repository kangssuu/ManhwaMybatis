<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/resources/css/new.css">
    <title>신간페이지</title>
</head>
<body>
    <div id="container">
        <jsp:include page="/WEB-INF/views/include/header.jsp"></jsp:include>

        <main>
            <div id="content">
                <div id="topList">
                    <div id="topTitle">
                        <h2>new</h2>
                    </div>
                </div>
                <div id="product">
                    <div id="listMenu">
                        <p id="text">총 <strong>${totalCount }개</strong>의 상품이 있습니다.</p>
                        <select name="array" id="array">
                            <option value="정렬방식">정렬방식</option>
                            <option value="신상품">신상품</option>
                            <option value="인기상품">인기상품</option>
                            <!-- disabled 넣으면 선택안됨 -->
                            <option value="상품명">상품명</option>
                        </select>
                    </div>
                    <div id="productList">
                        <ul id="mainUl">
                        <c:forEach var="itemList" items="${requestScope.itemList }">
                            <li>
                                <div class="thumbnail">
                                    <a href="/item/information.jsp">
                                        <div>
                                            <img src="/resources/image/product/best/best1.png" alt="썸네일1">
                                        </div>
                                    </a>
                                </div>
                                <div class="infor">
                                    <p class="name">
                                        <a href="/item/information.jsp">
                                            <span class="style">최애의 아이 1-10권(1,2,3,4,5,6,7,8,9,10)</span>
                                        </a>
                                    </p>
                                    <div id="line_mov"></div>
                                    <ul class="price">
                                        <li class="content">
                                            <span class="cost">6000원</span>
                                        </li>
                                        <li class="content">
                                            <span class="sale">5400원</span>
                                        </li>
                                        <li class="content">
                                            <strong class="review">리뷰 :</strong>
                                            <span class="number">&nbsp;1</span>
                                        </li>
                                    </ul>
                                </div>
                            </li>
						</c:forEach>
                        </ul>
                    </div>
                </div>
                <div id="next">
                    ${pageNavi }
                </div>
            </div>
                            
        </main>
        <jsp:include page="/WEB-INF/views/include/footer.jsp"></jsp:include>
    </div>
</body>
</html>