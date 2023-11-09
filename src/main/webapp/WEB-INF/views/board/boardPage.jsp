<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	* {
		box-sizing: border-box;
	}
	html body{
		height: 100%;
		width: 100%;
		background-color: rgb(255, 210, 210);
	}
	.page-title{
		background-color: rgb(255, 210, 210);
		margin: 0;
    	padding: 0;
    	border: 0;
    	outline: 0;
   		padding-top: 10px;
		padding-left: 10px;
    	vertical-align: baseline;
		font-size: 30px;
		font-weight: bold;
	}
	.main-section{
		/* border-top: 1px solid #501a9b; */
		display: flex;
    	font-size: 0;
    	flex-wrap: nowrap;
		background-color: rgb(255, 210, 210);
		overflow: hidden;
		/* height: 300px; */
		height: 100%;
	}
	.main-figure{
    	margin-top: 30px;
		width: 20%;
		/* height: 300px; */
    	/* padding: 0 7px; */
    	vertical-align: top;
    	margin-top: 40px;
		display: inline-block;
    	margin-bottom: 25px;
	}
	.atag{
		display: block;
    	/* border-bottom: 1px solid #dadada; */
    	/* height: 100%; */
		width: 100%;
		font-size: 0.75rem;
		padding-top: 30px;
    	color: #414141;
    	text-decoration: none;
    	transition: all .3s ease;
		font: inherit;
		cursor: pointer;
		visibility: inherit;

	}
	.thumbnail-area{
		padding-bottom: 56.25%;
		/* border: 1px solid #dadada; */
		display: block;
    	overflow: hidden;
    	position: relative;
    	height: 0;
		margin-block-start: 1em;
    	margin-block-end: 1em;
    	margin-inline-start: 40px;
    	margin-inline-end: 40px;
		visibility: inherit;
		line-height: 1;
    	color: #606060;
		box-sizing: border-box;
	}
	.caption{
		padding: 10px;
		background: none;
		display: block;
		
	}
	.image{
		height: 180px;
		width: 100%;
		border: 0 none;
    	max-width: 100%;

	}
	.title{
		font-size: 14px;
		color: #333;
    	/* white-space: nowrap; */
    	overflow: hidden;
    	text-overflow: ellipsis;
		text-align: center;
		
	}
	.board-paging{
		/* margin: 15px 0 0; */
		text-align: center;
		justify-content: center;
		align-items: center;
		line-height: 0;

	}
	.board-paging ol{
		display: inline-block;
    	vertical-align: top;
		list-style: none;
		font-size: 0;
		align-items: center;
		justify-content: center;
		padding-left: 10px;
		
	}
	.on{
		display: inline-block;
    	vertical-align: top;
		list-style: none;
		
	}
	.board-paging li.on > a{
		background-color: #fc765d;
		border: 1px solid #fc765d;
		color: #fff;
		font-size: 13px;
		width: 20px;
		height: 20px;
		/* line-height: 28px; */
		display: inline-block;
		text-decoration: none;
		font: inherit;
		border-radius: 50%;
		justify-content: center;
		align-items: center;
	}
	.noResult{
		padding-top: 20px;
		display: block;
		height: 50px;
		justify-content: center;
		align-items: center;
	}
	.insert-btn{
		border: none;
		height: 40px;
		width: 180px;
		color: white;
		background-color: #fc765d;
		font-weight: bold;
		margin-bottom: 10px;
	}
	

	
</style>
<!-- BootStrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">

<!-- BootStrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
	<%@ include file="../common/menubar.jsp" %>
	<div class="page-title">
			최근 등록 식당
	</div>
	<section class="main-section">
		<figure class="main-figure">
			<a href="" class="atag">  
				<p class="thumbnail-area">
				<img class="image" src="searchResult-image/example-thumbnail.png" />
				</p>
				<figcaption class="caption">
				<p class="title">
					식당 정보 입니다
				</p>
				</figcaption>
			</a>
		</figure>
		<figure class="main-figure">
			<a href="" class="atag">  
				<p class="thumbnail-area">
					<img class="image" src="searchResult-image/example-thumbnail.png" />
				</p>
			<figcaption class="caption">
				<p class="title">
					식당 정보 입니다
				</p>
			</figcaption>
			</a>
		</figure>
		<figure class="main-figure">
			<a href="" class="atag">  
				<p class="thumbnail-area">
					<img class="image" src="searchResult-image/example-thumbnail.png" />
				</p>
			<figcaption class="caption">
				<p class="title">
					식당 정보 입니다
				</p>
			</figcaption>
			</a>
		</figure>
		<figure class="main-figure">
			<a href="" class="atag">  
				<p class="thumbnail-area">
					<img class="image" src="searchResult-image/example-thumbnail.png" />
				</p>
			<figcaption class="caption">
				<p class="title">
					식당 정보 입니다
				</p>
			</figcaption>
			</a>
		</figure>
		<figure class="main-figure">
			<a href="" class="atag">  
				<p class="thumbnail-area">
					<img class="image" src="searchResult-image/example-thumbnail.png" />
				</p>
			<figcaption class="caption">
				<p class="title">
					식당 정보 입니다
				</p>
			</figcaption>
			</a>
		</figure>
	</section>
	<div class="board-paging">
		<ol>
			<li class="on">
				<a href="">1</a>
			</li>
		</ol>
		<ol>
			<li class="on">
				<a href="">2</a>
			</li>
		</ol>
		<ol>
			<li class="on">
				<a href="">3</a>
			</li>
		</ol>
		<ol>
			<li class="on">
				<a href="">4</a>
			</li>
		</ol>
		<div class="noResult">
			찾는 식당이 없으신가요? 그렇다면 등록해 보세요!
		</div>
		<button onclick="restaurantEnroll.re" class="insert-btn">
			<span>식당 등록하기</span>
		</button>
	</div>
	
	<!-- <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#findId">
		Launch demo modal
	  </button> -->
	
	<div class="modal" id="findId">
		<div class="modal-dialog">
		<div class="modal-content">
	
			<!-- ID 찾기 모달 헤더 -->
			<div class="modal-header"  style="background: #fc765d;">
			<h4 class="modal-title" style="color: white;">탈퇴 후 복구가 어렵습니다 <br> 정말로 탈퇴하시겠습니까?</h4>
			<button type="button" class="btn-close" data-bs-dismiss="modal"></button>
			</div>
	
			<!-- ID 찾기 모달 바디 -->
			<div class="modal-body" style="background-color: rgb(255, 210, 210);;">
				<b>회원 탈퇴를 원하실 경우 아래의<br>  문구와 비밀번호를 입력하세요</b>
				<br> <br>
				<b>회원 탈퇴시 계정 복구가 불가한 점에 동의합니다</b>
				<form action="">
					<div>
						<input type="text" size="50">
					</div>
					<br><br>
					<div>
						비밀번호 입력
						<br>
						<input type="text" size="50">
					</div>
				
			</div>
	
			<!-- ID 찾기 모달 푸터 -->
			<div class="modal-footer" style="background: #fc765d;">
				<input type="button" data-bs-dismiss="modal" class="btn btn-sm" style="color: white;" value="취소">
				<button type="submit" class="btn btn-sm btn-danger">회원탈퇴</button>
			</div>
		</form>
		</div>
	</div>
</div>
<script>
	const withdrawalBtn = document.querySelector('#memberMenu a:nth-child(3)');
	
	withdrawalBtn.setAttribute("data-bs-toggle", "modal");
	withdrawalBtn.setAttribute("data-bs-target", "#findId");

</script>
</body>

</html>