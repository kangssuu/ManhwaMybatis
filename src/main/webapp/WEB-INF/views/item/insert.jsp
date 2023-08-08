<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 등록</title>
<link rel="stylesheet" href="/resources/css/insert.css">
</head>
<body>
	<div>
		<form action="/item/total.do" method="post">
		<!-- totalController에서 post에 등록 소스 코드를 작성했기 때문에 form태그를 써야하나? post로 받아야하니까? 몰루겠ㄴ[ -->
			<fieldset>
				<legend>상품 등록</legend>
				<ul>
					<li>
						<label>상품 이름</label>
						<input type="text" id="" name="itemName">
					</li>
					<li>
						<label>상품 사진 이름</label>
						<input type="text" id="" name="itemImageName">
					</li>
					<li>
						<label>상품 사진 주소</label>
						<input type="url" id="" name="itemImagePath">
					</li>
					<li>
						<label>제작사</label>
						<input type="text" id="" name="itemPublisher">
					</li>
					<li>
						<label>상품 가격</label>
						<input type="text" id="" name="itemPrice">
					</li>
				</ul>
			</fieldset>
			<div>
				<input type="submit" value="상품 등록">
				<input type="reset" value="초기화">
			</div>
		</form>
	</div>

</body>
</html>


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