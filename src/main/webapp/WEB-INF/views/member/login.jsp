<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.6.0.js"
	integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
	crossorigin="anonymous"></script>
<title>Log-In</title>
<style>
/**/

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

.com_go_comunity_box {
	width: 150px;
	height: 150px;
	border-radius: 10px;
	font-family: 'Nanum Gothic', sans-serif,;
	font-weight: 700;
	font-size: 22px;
	text-align: center;
	color: white;
	background: linear-gradient(135deg, rgb(118, 240, 253),
		rgb(112, 144, 212));
	border: 0px;
}

.com_go_boxtext {
	font-family: 'Nanum Gothic', sans-serif,;
	font-weight: 700;
	font-size: 35px;
	text-align: center;
}

.go_explan_space {
	margin-top: 80px;
}

.go_explan_img {
	width: 100px;
}

.explan_title {
	font-family: 'Nanum Gothic', sans-serif,;
	font-weight: 700;
	font-size: 35px;
	text-align: center;
}

.margin100px {
	margin-top: 100px;
}

.best_margin_top_50 {
	margin-top: 50px;
	padding-top: 20px;
	background-color: rgb(187, 248, 255);
}

.best_title {
	font-family: 'Nanum Gothic', sans-serif,;
	font-weight: 700;
	font-size: 14px;
	color: rgb(93, 126, 196);
}

.best_margin_top_bottom_20 {
	margin-top: 20px;
	margin-bottom: 20px;
}

.best_title_img {
	width: 30px;
}

.best_card_border {
	border-radius: 10px;
}

.best_image_border {
	border-top-left-radius: 10px;
	border-top-right-radius: 10px;
}

.best_title_back {
	height: 50px;
}

.best_p_card_linehight {
	line-height: 3;
}

.card_font {
	color: black;
	font-family: 'Nanum Gothic', sans-serif,;
	font-weight: 700;
	font-size: 15px;
}

/**/


/* ?????? */

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

/*  */
</style>
</head>
<body>
	<!--?????? ?????? ???-->
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
					id="main_search" placeholder="?????????????????? ???????????????. GO!">
			</div>
			<div class="col-1">
				<p class="p_left">
					<img class="search_icon_img"
						src="/resources/images/search_icon.png">
				</p>
			</div>
			<div class="col-3">
				<a href="${pageContext.request.contextPath}/member/toJoinus.do">
				<span class="navi_text"> ???????????? </span>
				</a>
				&nbsp; &nbsp; 
				<a href="${pageContext.request.contextPath}/member/toLogin.do">
				<span class="navi_text"> ????????? </span> 
				</a>
				&nbsp; &nbsp; 
				<a href="">
				<span class="navi_text"> ??????????????? </span>
				</a>
			</div>

		</div>
	</div>


	<!-- ????????? ?????? ?????? -->
	<div class="container-fluid">
		<hr style="border: solid 2px lightgray">
	</div>

	<!-- ?????? ?????? ?????? -->
	<div class="container w-50">
		<form action="" method="post" id="loginForm">
			<div class="row mb-5">
				<div class="col d-flex justify-content-center">
					<h3>Login</h3>
				</div>
			</div>

			<div class="row mb-3 justify-content-center">
				<div class="col-6">
					<label for="ID" class="form-label">?????????</label> <input type="text"
						class="form-control" id="id" name="id">
				</div>
			</div>

			<div class="row mb-3 justify-content-center">
				<div class="col-6">
					<label for="PW" class="form-label">????????????</label> <input
						type="password" class="form-control" id="pw" name="pw">
				</div>
			</div>

			<div class="row mb-3 justify-content-center">
				<div class="col-6">
					<label>
						<input type="checkbox" class="form-check-input" id="rememberId" name="rememberId">
						ID ????????????
					</label>
				</div>
			</div>

			<div class="row mb-3 justify-content-center">
				<div class="col-4 d-flex justify-content-end">
					<button type="button" class="btn btn-success" id="btnLogin">?????????</button>
				</div>

				<div class="col-4 d-flex justify-content-start">
					<button type="button" class="btn btn-dark" id="btnBack">??????</button>
				</div>
			</div>
		</form>

		<div class="row mb-1 justify-content-center">
			<div class="col d-flex justify-content-end">
				<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
					fill="currentColor" class="bi bi-question-circle"
					viewBox="0 0 16 16">
  					<path
						d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z" />
  					<path
						d="M5.255 5.786a.237.237 0 0 0 .241.247h.825c.138 0 .248-.113.266-.25.09-.656.54-1.134 1.342-1.134.686 0 1.314.343 1.314 1.168 0 .635-.374.927-.965 1.371-.673.489-1.206 1.06-1.168 1.987l.003.217a.25.25 0 0 0 .25.246h.811a.25.25 0 0 0 .25-.25v-.105c0-.718.273-.927 1.01-1.486.609-.463 1.244-.977 1.244-2.056 0-1.511-1.276-2.241-2.673-2.241-1.267 0-2.655.59-2.75 2.286zm1.557 5.763c0 .533.425.927 1.01.927.609 0 1.028-.394 1.028-.927 0-.552-.42-.94-1.029-.94-.584 0-1.009.388-1.009.94z" />
				</svg>
			</div>

			<div class="col-12 d-flex justify-content-center">
				<label for="" style="font-size: 5px;">????????? ????????????????</label>
			</div>
		</div>

		<div class="row justify-content-center">
			<div class="col-6">
				<button type="button" class="btn btn-primary w-100" id="btnJoinus">????????????</button>
			</div>
		</div>
	</div>
	
	<!--?????? css?????? foot?????? ??????-->
	<footer>
		<div class="container-fluid foot_container">
			<div class="row "></div>
			<div class="row">
				<div class="col-2">
					<p class="p_right">
						<img class="foot_logo_img"
							src="/resources/images/go_logo_gray.png">
					</p>
				</div>

				<div class="col-10">
					<P class="foot_text">(???)?????? | ????????????????????? : 736-81-01238 | ?????? : ?????????
						| ?????? : ????????? ????????? ????????? ????????? ?????????</P>

					<p class="foot_text">?????? : ????????? ????????? ????????? 30, ??????????????? 127, 128???(?????????)
						| ???????????? : 02-3472-4177 | Fax : 02-585-3083</p>

					<p class="foot_text">Copyright @ 2021 (???)??????</p>
				</div>
			</div>
		</div>

	</footer>

	<script>
		// ?????????
		$("#btnLogin").on("click",function() {
			let data = $("#loginForm").serialize();
			console.log(data);
			$.ajax({
				url : "${pageContext.request.contextPath}/member/toLogin",
				type : "post",
				data : data
			}).done(
			function(rs) {
				console.log(rs);
				if (rs == "??????") {
					location.href = "${pageContext.request.contextPath}/";
				} else if (rs == "??????") {
					alert("????????? ?????? ??????????????? ?????? ??????????????????.");
				}
			}).fail(function(e) {
			console.log(e);
			})
		})
		
		// ????????? ????????????
		  $(document).ready(function() {
		        let userId = getCookie("cookieUserId"); 
		        $("input[name='id']").val(userId); 
		         
		        if($("input[name='id']").val() != ""){ // Cookie??? ???????????? ?????? ???????????? ?????? ??????????????? ??????????????? ??????????????? ??????
		            $("input[name='rememberId']").attr("checked", true);
		        }
		         
		        $("button[type='button']", $('#loginForm')).click(function(){ // Login Form??? Submit??? ??????,
		            if($("input[name='rememberId']").is(":checked")){ // ID ???????????? ????????? ????????? ??????
		                let userId = $("input[name='id']").val();
		                setCookie("cookieUserId", userId, 7); // 7????????? ?????? ??????
		            } else {
		                deleteCookie("cookieUserId");
		            }
		        });             
		    })
		 
		    function setCookie(cookieName, value, exdays){
		        let exdate = new Date();
		        exdate.setDate(exdate.getDate()+exdays);
		        let cookieValue = escape(value)+((exdays==null)? "": "; expires="+exdate.toGMTString());
		        document.cookie = cookieName+"="+cookieValue;
		    }
		    function deleteCookie(cookieName){
		        let expireDate = new Date();
		        expireDate.setDate(expireDate.getDate()-1);
		        document.cookie = cookieName+"= "+"; expires="+expireDate.toGMTString();
		    }
		    function getCookie(cookieName){
		        cookieName = cookieName + '=';
		        let cookieData = document.cookie;
		        let start = cookieData.indexOf(cookieName);
		        let cookieValue = '';
		        if(start != -1){
		            start += cookieName.length;
		            let end = cookieData.indexOf(';', start);
		            if(end == -1) end = cookieData.length;
		            cookieValue = cookieData.substring(start, end);
		        }
		        return unescape(cookieValue);
		         
		    }

		// ????????????
		document.getElementById("btnBack").onclick = function(e) {
			location.href = "${pageContext.request.contextPath}/";
		}

		// ???????????? ????????? ??????
		document.getElementById("btnJoinus").onclick = function(e) {
			location.href = "${pageContext.request.contextPath}/member/toJoinus.do";
		}
	</script>
</body>
</html>