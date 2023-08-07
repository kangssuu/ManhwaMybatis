<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %>
<header>
	<div id="h-top">
		<c:if test="${sessionScope.memberId ne null }">  <!-- ne => not equles -->
			<div id="h-top1">
				<ul id="top-nv" class="ul-d">
					<li class="topNv-li"><a href="/member/logout.do">로그아웃</a></li>
					<li class="topNv-li"><a href="/member/myPage.do?member-id=${memberId }">마이페이지</a></li>
					<li class="topNv-li"><a href="/notice/list.do?member-id=${memberId }">공지사항</a></li>
				</ul>
			</div>
		</c:if>
		<c:if test="${memberId eq null }">
			<div id="h-top1">
				<ul id="top-nv" class="ul-d">
					<li class="topNv-li"><a href="/member/register.do">회원가입</a></li>
					<li class="topNv-li"><a href="/member/loginForm.do">로그인</a></li>
					<li class="topNv-li"><a href="/member/myPage.do">마이페이지</a></li>
					<li class="topNv-li"><a href="/notice/list.do">공지사항</a></li>
				</ul>
			</div>
		</c:if>
	</div>
	<div id="h-bottom">
		<div id="h-b-inner">
			<div id="logo">
				<a href="/">
					<img src="/resources/image/index/logo.png" alt="로고사진">
				</a>
			</div>
			<div id="search">
				<fieldset>
					<legend>검색</legend>
						<form action="" method="get">
							<input type="text" id="searchBar" ></input>
							<input type="image" src="/resources/image/index/search.png" alt="돋보기아이콘" id="searchIcon"></input>
						</form>
				</fieldset>
			</div>
			<div id="icon">
				<ul id="iconImages">
					<li class="iconImages-li">
						<a href="/member/myPage.do" style="background-image: url(/resources/image/index/mypage.png);"></a>                                
					</li>
					<li class="iconImages-li" >
						<a href="/cart/cart.jsp" style="background-image:url(/resources/image/index/cart.png)"></a>
					</li>
				</ul>
			</div>
		</div>
		<div id="h-b-2">
			<div id="h-b-inner2">
			<!-- 어케 만들지..? -->
				<div id="go">
					<p>바로가기</p>
				</div>
				<div id="nav">
					<ul id="nav-nv" class="ul-d">
						<li class="nav-li">
							<a href="/main/new.jsp">이달의 신간</a>
							<!-- 신상품 소량 모아놓은 페이지 -->
						</li>
						<li class="nav-li">
							<a href="/item/best.do">베스트</a>
							<!-- 베스트상품 소량 모여있는 페이지  -->
						</li>
						<li class="nav-li">
							<a href="/item/goods.do">굿즈</a>
							<!-- 굿즈 상품만 모아놓은 페이지 -->
						</li>
						<li class="nav-li">
							<a href="원피스모아놓은페이지">원피스</a>
							<!-- 원피스만 모아놓은 -->
						</li>
						<li class="nav-li">
							<a href="슬램덩크페이지">슬램덩크</a>
							<!-- 슬램덩크만 모아놓은 -->
						</li>
						<li class="nav-li">
							<a href="/item/total.do">장르별</a>
							<!-- 만화 전체 모아 놓음, 만화진열 페이지 상단에 장르 구분할 수 있는 장르별div있음
							장르 누르면 해당 장르에 맞는 만화들만 모여있ㅇㅁ... 언제만드렁  -->
						</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</header>