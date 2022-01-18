<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
	crossorigin="anonymous"></script>

<title>Go 가자</title>
<style>
@import
	url('https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@400;700;800&display=swap')
	;

a {
	text-decoration: none;
}

.line_check {
	border: 1px solid black;
}

.font_nanum {
	font-family: 'Nanum Gothic', sans-serif,;
}

.nomal_font {
	font-family: 'Nanum Gothic', sans-serif,;
	text-decoration: none;
	color: rgb(109, 109, 109);
	font-size: 13px;
}

.text_center {
	text-align: center;
}

.p_center {
	text-align: center;
	font-family: 'Nanum Gothic', sans-serif,;
	font-weight: 700;
	font-size: 15px;
}

.p_right {
	text-align: right;
	margin: 0px;
	margin-right: 0px;
	padding: 0px;
	padding-right: 0px;
}

.p_left {
	text-align: left;
	margin: 0px;
	margin-left: 0px;
	padding: 0px;
	margin-left: 0px;
}

.margin_top_100 {
	margin-top: 100px;
}

.margin_top_50 {
	margin-top: 50px;
}

.margin_top_30 {
	margin-top: 30px;
}

.margin_top_20 {
	margin-top: 20px;
}

.margin_top_10 {
	margin-top: 10px;
}

.margin_top_5 {
	margin-top: 5px;
}

.margin_bottom_100 {
	margin-bottom: 100px;
}

.margin_bottom_50 {
	margin-bottom: 50px;
}

.margin_bottom_30 {
	margin-bottom: 30px;
}

.margin_bottom_20 {
	margin-bottom: 20px;
}

.margin_bottom_10 {
	margin-bottom: 10px;
}

.margin_bottom_5 {
	margin-bottom: 5px;
}

.main_logo_size {
	width: 120px;
}

.search_space {
	margin-top: 20px;
	margin-bottom: 10px;
}

.search_icon_img {
	width: 30px;
}

.main_search_bar {
	background-color: rgb(245, 245, 245);
	font-family: 'Nanum Gothic', sans-serif,;
	text-decoration: none;
	color: rgb(109, 109, 109);
	font-size: 13px;
}

.navi_text {
	text-align: center;
	font-family: 'Nanum Gothic', sans-serif,;
	text-decoration: none;
	color: rgb(109, 109, 109);
	font-size: 13px;
}

.navi_category {
	text-align: center;
	font-family: 'Nanum Gothic', sans-serif,;
	text-decoration: none;
	color: rgb(70, 70, 70);
	font-size: 25px;
	font-weight: 700;
}

.board_category_color {
	background-color: rgb(235, 235, 235);
	padding-top: 10px;
	padding-bottom: 10px;
}

.board_category {
	height: 30px;
	text-align: center;
	font-family: 'Nanum Gothic', sans-serif,;
	text-decoration: none;
	color: rgb(44, 44, 44);
	font-size: 17px;
	border-right: 1px solid black;
}

.board_name {
	font-family: 'Nanum Gothic', sans-serif,;
	font-weight: 600;
	font-size: 18px;
}

.list_title {
	font-family: 'Nanum Gothic', sans-serif,;
	font-weight: 700;
	font-size: 23px;
}

.list_refrash_icon {
	width: 15px;
}

.list_line1 {
	height: 1px;
	background-color: black;
}

.list_count1 {
	color: black;
	font-family: 'Nanum Gothic', sans-serif,;
	font-weight: 700;
	font-size: 15px;
}

.list_count2 {
	color: rgb(125, 154, 218);
	font-family: 'Nanum Gothic', sans-serif,;
	font-weight: 700;
	font-size: 15px;
}

.list_sort_button {
	color: black;
	font-family: 'Nanum Gothic', sans-serif,;
	font-size: 15px;
}

.list_line2 {
	height: 1px;
	background-color: rgb(194, 194, 194);
}

.list_left_photo {
	width: 150px;
}

.list_sub_title {
	color: black;
	font-family: 'Nanum Gothic', sans-serif,;
	font-weight: 700;
	font-size: 22px;
}

.list_sub_location {
	color: rgb(124, 124, 124);
	font-family: 'Nanum Gothic', sans-serif,;
	font-weight: 500;
	font-size: 14px;
}

.list_sub_teag {
	color: rgb(124, 124, 124);
	font-family: 'Nanum Gothic', sans-serif,;
	font-weight: 400;
	font-size: 12px;
}

.list_teag_button {
	border: 0px;
	background-color: rgb(93, 126, 196);
	border-radius: 10px;
	font-family: 'Nanum Gothic', sans-serif,;
	color: white;
	font-size: 13px;
	padding-left: 6px;
	padding-right: 8px;
}

.list_left_margin {
	margin-left: 20px;
	margin-right: 20px;
}

.list_right_margin {
	margin-left: 20px;
	margin-right: 20px;
}

.other_content {
	background-color: rgb(241, 241, 241);
	margin-top: 100px;
	padding-top: 100px;
	padding-bottom: 50px;
}

.info_title {
	color: black;
	font-family: 'Nanum Gothic', sans-serif,;
	font-weight: 700;
	text-align: center;
}

.youtube_first {
	width: 100%;
}

.news_title {
	color: black;
	font-family: 'Nanum Gothic', sans-serif,;
	font-weight: 700;
	font-size: 20px;
}

.news_content1 {
	color: peru;
	font-family: 'Nanum Gothic', sans-serif,;
	font-weight: 600;
	font-size: 16px;
}

.news_content2 {
	color: black;
	font-family: 'Nanum Gothic', sans-serif,;
	font-weight: 500;
	font-size: 16px;
}

.other_site_box {
	width: 200px;
	border: 1px solid lightgrey;
	border-radius: 5px;
}

.site_info {
	background-color: rgb(214, 214, 214);
	padding-top: 20px;
}

.foot_container {
	background-color: rgb(187, 248, 255);
	padding-top: 50px;
}

.foot_logo_img {
	width: 50px;
}

.foot_text {
	color: rgb(124, 124, 124);
	font-family: 'Nanum Gothic', sans-serif,;
	font-size: 12px;
}

#keyword {
	width: 200px;
}

#select {
	width: 80px;
}
</style>
</head>

<body>
	<!--메인 검색 창-->
	<div class="container">
		<div class="row search_space">
			<div class="col-1"></div>
			<div class="col-2">
				<p>
					<a href="${pageContext.request.contextPath}/"> <img class="main_logo_size"
						src="/resources/images/go_logo_type.png">
					</a>
				</p>
			</div>
			<div class="col-5">
				<input type="text" class="form-control main_search_bar"
					id="main_search" placeholder="가고싶은곳을 검색하세요. GO!">
			</div>
			<div class="col-1">
				<p class="p_left">
					<img class="search_icon_img" src="/resources/images/search_icon.png">
				</p>
			</div>
			<div class="col-3">
				<a href="sign_up.html"><span class="navi_text"> 회원가입 </span></a>
				&nbsp; &nbsp; <a href="login.html"><span class="navi_text">
						로그인 </span> </a>&nbsp; &nbsp; <a href=""><span class="navi_text">
						마이페이지 </span></a>
			</div>

		</div>
	</div>

	<!-- 검색창 아래 라인 -->
	<div class="container-fluid">
		<hr style="border: solid 2px lightgray">
	</div>

	<!-- 메인 메뉴-->
	<div class="container">
		<div class="row">
			<div class="col-2"></div>
			<div class="col-3">
				<a href=""></a>
				<h5 class="navi_category">여행 커뮤니티</h5>
			</div>
			<div class="col-2">
				<a href=""></a>
				<h5 class="navi_category">홈</h5>
			</div>
			<div class="col-3">
				<a href=""></a>
				<h5 class="navi_category">여행 정보</h5>
			</div>
			<div class="col-2"></div>
		</div>
	</div>

	<!-- 게시판 메인 메뉴 css에 board로 표기-->
	<div class="container-fluid">
		<div class="row board_category_color margin_top_30">
			<div class="col-1 board_category"></div>
			<div class="col-2 board_category">
				<a href="">전체게시판</a>
			</div>
			<div class="col-2 board_category">
				<a href="">자유게시판</a>
			</div>
			<div class="col-2 board_category">
				<a href="">국내여행</a>
			</div>
			<div class="col-2 board_category">
				<a href="">축제정보</a>
			</div>
			<div class="col-2 board_category">
				<a href="">공연/전시회</a>
			</div>
			<div class="col-1 "></div>
		</div>
	</div>

	<!--게시판 시작-->
	<!-- 인기 여행코스 css에 list로 표기-->
	<div class="container-fluid">
		<div class="row margin_top_100">

			<!-- 리스트 시작-->
			<div class="col-2"></div>
			<div class="col-8 list_right_margin">

				<!-- 상단 타이틀 시작-->
				<div class="row">
					<div class="col-10">
						<p class="list_title"># 전체 게시판</p>
					</div>
					<div class="col-2">
						<img class="list_refrash_icon"
							src="/resources/images/refrash_icon.png">
					</div>
				</div>

				<div class="row list_line1"></div>

				<div class="row">
					<div class="col-6 margin_top_10">
						<span class="list_count1">총</span><span class="list_count2">16</span><span
							class="list_count1">건</span>
					</div>
					<div class="col-2 margin_top_10"></div>
					<div class="col-4 margin_top_10">
						<span class="list_sort_button">최신순</span> <span>|</span> <span
							class="list_sort_button">인기순</span>
					</div>
					<div class="col-2 margin_top_10"></div>
				</div>
				<!-- 상단 타이틀 끝-->
				<div class="row list_line2"></div>

				<!-- 리스트 시작-->
				<c:forEach items="${list}" var="dto">
					<div class="row margin_top_20">
						<div class="col-1 text_center">${dto.board_seq}</div>
						<div class="col-2 text_center">${dto.category}</div>
						<div class="col-5 board_name">
							<a href="${pageContext.request.contextPath}/board/detailView.do?board_seq=${dto.board_seq}&currentPage=1">${dto.title}</a>
						</div>
						<div class="col-1 text_center">${dto.writer_id}</div>
						<div class="col-2 text_center">${dto.written_date}</div>
						<div class="col-1 text_center">${dto.view_count}</div>
					</div>
				</c:forEach>

				<div class="row list_line2 margin_top_20"></div>

				<!-- 검색 영역 -->
				<div class="row mt-2">
					<div class="col-12 d-flex jusitfy-content-center">
						<select id="select" name="select" class="form-select">
							<option value="all" selected="selected">전체</option>
							<option value="content">내용</option>
							<option value="title">제목</option>
							<option value="writer_nickname">작성자</option>
						</select> <input type="text" id="keyword" name="keyword"
							class="form-control">
						<button type="button" id="serchBtn" class="btn">검색</button>
					</div>
				</div>

				<!-- 리스트 페이지 네이션 -->
				<div class="row mt-5">
					<nav class="col" aria-label="Page navigation example">
						<ul class="pagination justify-content-center">
							<c:if test="${naviMap.get('needPrev') eq true}">
								<li class="page-item"><a class="page-link"
									href="${pageContext.request.contextPath}/board/toBoard.do?currentPage=${naviMap.get('startNavi')-1}">Previous</a></li>
							</c:if>
							<!--startNavi ->endNavi  -->
							<c:forEach var="i" begin="${naviMap.get('startNavi')}"
								end="${naviMap.get('endNavi')}">
								<li class="page-item"><a class="page-link"
									href="${pageContext.request.contextPath}/board/toBoard.do?currentPage=${i}">${i}</a></li>
							</c:forEach>
							<c:if test="${naviMap.get('needNext') eq true}">
								<li class="page-item"><a class="page-link"
									href="${pageContext.request.contextPath}/board/toBoard.do?currentPage=${naviMap.get('endNavi')+1}">Next</a></li>
							</c:if>
						</ul>
					</nav>
				</div>

			</div>
			<div class="col-2"></div>
		</div>
	</div>

	<!--푸터 css에는 foot으로 표기-->
	<footer>
		<div class="container-fluid foot_container margin_top_100">
			<div class="row "></div>
			<div class="row">
				<div class="col-2">
					<p class="p_right">
						<img class="foot_logo_img"
							src="/resources/images/go_logo_gray.png">
					</p>
				</div>

				<div class="col-10">
					<P class="foot_text">(주)가자 | 사업자등록번호 : 736-81-01238 | 팀장 : 권혁진
						| 팀원 : 장대붕 홍진표 송우석 조현재 김덕규</P>

					<p class="foot_text">주소 : 서울시 송파구 마천로 30, 상가에이동 127, 128호(방이동)
						| 대표번호 : 02-3472-4177 | Fax : 02-585-3083</p>

					<p class="foot_text">Copyright @ 2021 (주)가자</p>
				</div>
			</div>
		</div>
	</footer>
	
	<!-- 스크립트 영역 -->
	
</body>

</html>