<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<script src="https://code.jquery.com/jquery-3.6.0.js"
	integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
	crossorigin="anonymous"></script>
<title>글쓰기</title>
<!--  <link href="/resources/css/insertBoard.css" rel="stylesheet"/>   -->
<style>
* {
	box-sizing: border-box;
}

/* 전체 컨테이너 */
.insertContainer {
	width: 800px;
	margin: auto;
}
/* 제목 */
h1 {
	color: #2d0174;
	font-weight: bold;
}

/* 글쓰기 내용 컨테이너 */
.contentContainer {
	margin-top: 120px;
}

/* input 보더 지우기 */
#title {
	border: none;
	border-bottom: 1px solid lightgray;
}

.content {
	border: none;
	border-bottom: 1px solid lightgray;
}
/* intput창 outline 제거 */
.content:focus {
	outline: none;
}

#category {
	border: none;
	border-bottom: 1px solid lightgray;
}

/* ========== 내용 입력 영역 ========== */
#editor {
	padding: 16px 24px;
	border: 1px solid #D6D6D6;
	border-radius: 3px;
	width: 100%;
	height: auto;
}
/* 이미지 input창 */
#img-selector {
	display: none;
}

#editor img {
	max-width: 100%;
}
/* 글씨체 버튼 클릭시 */
button.active {
	background-color: gray;
	color: #FFF;
}
</style>
</head>

<body>
	<div class="insertContainer">
		<div class="row">
			<div class="col-12 d-flex justify-content-center">
				<h1>여행 커뮤니티</h1>
			</div>
			<div class="col-12 d-flex justify-content-center mt-2"
				style="color: #2d0174">당신의 여행기를 들려주세요</div>
		</div>

		<!-- ==================== 게시글 추가 영역 ==================== -->
		<form id="insertForm" method="post"
			action="${pageContext.request.contextPath}/board/insertBoard"
			enctype="multipart/form-data">
			<div class="row contentContainer">
				<!-- 제목 -->
				<div class="row">
					<div class="col-2">
						<label>제목</label>
					</div>
					<div class="col-10">
						<div class="row">
							<div class="col-12">
								<input type="text" class="form-control" id="title" name="title">
							</div>
						</div>
					</div>
				</div>
				<!-- 옵션 -->
				<div class="row mt-3">
					<div class="col-2">
						<label>옵션</label>
					</div>
					<div class="col-10">
						<label id="secretBox"> <input class="form-check-input"
							type="checkbox" id="secret" name="secret" value=""> <span>비밀글</span>
						</label>
					</div>
				</div>
				<!-- 작성자 -->
				<div class="row mt-3">
					<div class="col-2">
						<label>작성자</label>
					</div>
					<div class="col-5">
						<input type="text" class="content form-control"
							id="writer_nickname" name="writer_nickname" value="abc123"
							style="background-color: transparent;" readonly> <input
							type="text" class="content form-control" id="writer_id"
							name="writer_id" value="abc123" hidden>
					</div>
				</div>
				<!-- 비밀번호 -->
				<div class="row mt-3">
					<div class="col-2">
						<label>비밀번호</label>
					</div>
					<div class="col-5">
						<input type="password" class="content form-control" id="secretPw"
							name="secretPw" value="" readonly>
					</div>
				</div>
				<!-- 카테고리 -->
				<div class="row mt-3">
					<div class="col-2">
						<label>카테고리</label>
					</div>
					<div class="col-5">
						<select id="category" name="category" class="form-select">
							<option value="자유게시판" selected>자유 게시판</option>
							<option value="국내여행">국내여행</option>
							<option value="축제정보">축제정보</option>
							<option value="공연/전시회">공연/전시회</option>
						</select>
					</div>
				</div>
				<!-- 내용 -->
				<!-- 텍스트 Editor 버튼 -->
				<div class="row mt-3">
					<div class="col-12">
						<div class="editor-menu">
							<button type="button" id="btn-bold" class="btn">
								<b>B</b>
							</button>
							<button type="button" id="btn-italic" class="btn">
								<i>I</i>
							</button>
							<button type="button" id="btn-underline" class="btn">
								<u>U</u>
							</button>
							<button type="button" id="btn-strike" class="btn">
								<s>S</s>
							</button>
							<button type="button" id="btn-ordered-list" class="btn">
								OL</button>
							<button type="button" id="btn-unordered-list" class="btn">
								UL</button>
							<button type="button" id="btn-image" class="btn">IMG</button>
						</div>
						<!-- 텍스트 에디터 -->
						<div id="editor" contenteditable="true">
							<input type="text" id="content" name="content" hidden>
						</div>
						<!-- 이미지 넣기 -->
						<input id="img-selector" multiple="multiple" type="file"
							accept="image/*" name="files" />
					</div>
				</div>
			</div>

			<!-- ==================== 게시글 버튼 영역 ==================== -->
			<div class="row mt-3">
				<div class="col-6 d-flex justify-content-start">
					<button type="button" id="btnBack" class="btn btn-secondary">돌아가기</button>
				</div>
				<div class="col-6 d-flex justify-content-end">
					<button type="button" id="btnInsert" class="btn btn-primary">확인</button>
				</div>
			</div>
		</form>
	</div>

	<script>
 		// 체크박스 선택시 readonly 해제
		$(function () {
		   	$("#secret").change (function () {
				let rs = this.checked;
				let secret = $("#secret");
				if (rs) {
					$("#secretPw").prop("readonly", false);
				  } else {
					$("#secretPw").prop("readonly", true);
				  }
			});
	    }); 
    
    	// 게시글 등록 버튼 
    	$("#btnInsert").on("click", function(){
    		let contenteditable = document.querySelector('[contenteditable]'),
            text = contenteditable.textContent;
         	console.log(text);
         	let innerText = document.getElementById("editor").innerText;
         	console.log(innerText);
         	let content = $("#content").val(innerText);
         	console.log(content.val());
	
         	if($("#title").val() == "") {
    			alert("제목을 입력 해주세요.");
    			return;
    		} else if (content == "") {
    			alert("내용을 입력 해주세요.");
    			return;
    		} 
    		$("#insertForm").submit();
    	});
    
        // 텍스트 에디터 영역
        const editor = document.getElementById('editor');
        const btnBold = document.getElementById('btn-bold');
        const btnItalic = document.getElementById('btn-italic');
        const btnUnderline = document.getElementById('btn-underline');
        const btnStrike = document.getElementById('btn-strike');
        const btnOrderedList = document.getElementById('btn-ordered-list');
        const btnUnorderedList = document.getElementById('btn-unordered-list');

        // BOLD 체
        btnBold.addEventListener('click', function () {
            setStyle('bold');
        });
        // italic 체
        btnItalic.addEventListener('click', function () {
            setStyle('italic');
        });
        // 밑줄
        btnUnderline.addEventListener('click', function () {
            setStyle('underline');
        });
        // 가운데 줄
        btnStrike.addEventListener('click', function () {
            setStyle('strikeThrough')
        });
        // 오더 리스트(숫자)
        btnOrderedList.addEventListener('click', function () {
            setStyle('insertOrderedList');
        });
        // 언오더디르 리스트(점)
        btnUnorderedList.addEventListener('click', function () {
            setStyle('insertUnorderedList');
        });
        // 설정한 스타일 세팅 함수
        function setStyle(style) {
            document.execCommand(style); focusEditor();
        }
        // 버튼 클릭 시 에디터가 포커스를 잃기 때문에 다시 에디터에 포커스를 해줌 
        function focusEditor() {
            editor.focus({ preventScroll: true });
        }

        // 이미지 추가
        const btnImage = document.getElementById("btn-image");
        const imageSelector = document.getElementById("img-selector");
        btnImage.addEventListener("click", function () {
            imageSelector.click();
        });
        // 이미지 
        imageSelector.addEventListener("change", function (e) {
            const files = e.target.files;
            console.log(files);
            if (!!files) {
                insertImageDate(files[0]);
            }
        });
        // 이미지 인풋창에 이미지 띄어주기
        function insertImageDate(file) {
            const reader = new FileReader();
            reader.addEventListener("load", function (e) {
                focusEditor();
                document.execCommand("insertImage", false, reader.result);
            });
            reader.readAsDataURL(file);
        }

        // 텍스트 편집기 '버튼' 설정
        editor.addEventListener('keydown', function () {
            checkStyle();
        });
        editor.addEventListener('mousedown', function () {
            checkStyle();
        });
        function setStyle(style) {
            document.execCommand(style); focusEditor(); checkStyle();
        }
        // 버튼 클릭시 해제시 이벤트처리
        function checkStyle() {
            if (isStyle('bold')) {
                btnBold.classList.add('active');
            } else {
                btnBold.classList.remove('active');
            }
            if (isStyle('italic')) {
                btnItalic.classList.add('active');
            } else {
                btnItalic.classList.remove('active');
            }
            if (isStyle('underline')) {
                btnUnderline.classList.add('active');
            } else {
                btnUnderline.classList.remove('active');
            }
            if (isStyle('strikeThrough')) {
                btnStrike.classList.add('active');
            } else {
                btnStrike.classList.remove('active');
            }
            if (isStyle('insertOrderedList')) {
                btnOrderedList.classList.add('active');
            } else {
                btnOrderedList.classList.remove('active');
            }
            if (isStyle('insertUnorderedList')) {
                btnUnorderedList.classList.add('active');
            } else {
                btnUnorderedList.classList.remove('active');
            }
        }
        function isStyle(style) {
            return document.queryCommandState(style);
        }

        // 뒤로가기 버튼 클릭
        $("#btnBack").on("click", function(){
            location.href = "${pageContext.request.contextPath}";
        });
    </script>


</body>

</html>