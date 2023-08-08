<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/resources/css/total.css">
    <title>전체상품페이지</title>
</head>
<body>
    <div id="container">
        <jsp:include page="/WEB-INF/views/include/header.jsp"></jsp:include>

        <main>
            <div id="content">
                <div id="topList">
                    <div id="topTitle">
                        <h2>전체</h2>
                    </div>
                    <ul id="list">
                        <li><a href="sf&판타지">SF&판타지<span>(100)</span></a></li>
                        <li><a href="액션">액션<span>(35)</span></a></li>
                        <li><a href="스포츠">스포츠<span>(60)</span></a></li>
                        <li><a href="명량&코믹">명량&코믹<span>(50)</span></a></li>
                        <li><a href="로맨스&순정">로맨스&순정<span>(150)</span></a></li>
                        <li><a href="학원">학원<span>(8)</span></a></li>
                        <li><a href="공포&추리">공포&추리<span>(18)</span></a></li>
                        <li><a href="소년">소년<span>(70)</span></a></li>
                    </ul>
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
                                            <span class="style">${itemList.itemName }</span>
                                        </a>
                                    </p>
                                    <div id="line_mov"></div>
                                    <ul class="price">
                                        <li class="content">
                                            <span class="cost">${itemList.itemPrice }</span>
                                        </li>
                                        <li class="content">
                                            <span class="sale">5400원</span>
                                        </li>
                                        <li class="content">
                                            <strong class="review">리뷰 :</strong>
                                            <span class="number">&nbsp;${itemList.reviewCount }</span>
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