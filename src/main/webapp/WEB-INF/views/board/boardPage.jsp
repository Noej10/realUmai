<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    	flex-wrap: wrap;
		background-color: rgb(255, 210, 210);
		overflow: hidden;
		
		/* height: 300px; */
		height: 100%;
	}
	.restaurant-container {
            display: flex;
            transition: transform 0.5s ease-in-out;
    }

    .restaurant {
            flex: 0 0 20%; /* Each restaurant takes 20% width */
            box-sizing: border-box;
            padding: 10px;
            display: none;
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
		cursor: pointer;
		
	}
	.board-paging li.on > span{
		background-color: #fc765d;
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
	<section class="main-section" id="restaurantContainer">
		<c:forEach var="r" items="${resList}" varStatus="loop">
				<div class="restaurant">
				<figure class="main-figure">
					<a href="detail.res?rno=${r.restNum }" class="atag">  
						<p class="thumbnail-area">
						<img class="image" src="/Umai/${r.filePath }" />
						</p>
						<figcaption class="caption">
						<p class="title">
							${r.restName }
						</p>
						</figcaption>
					</a>
				</figure>
				</div>
		</c:forEach>
	</section>
	
	
	<div class="board-paging">
		<ol>
			<li class="on" onclick="showPage(1)">
			<span id="button1">1</span>
			</li>
		</ol>
		<ol>
			<li class="on" onclick="showPage(2)">
				<span id="button2">2</span>
			</li>
		</ol>
		<ol>
			<li class="on" onclick="showPage(3)">
				<span id="button3">3</span>
			</li>
		</ol>
		<ol>
			<li class="on" onclick="showPage(4)">
				<span id="button4">4</span>
			</li>
		</ol>
		<div class="noResult">
			찾는 식당이 없으신가요? 그렇다면 등록해 보세요!
		</div>
		<button onclick="location.href='restaurantEnroll.re'" class="insert-btn">
			<span>식당 등록하기</span>
		</button>
	</div>
	
	<script>
		const restaurantContainer = document.getElementById('restaurantContainer');
	    const restaurants = restaurantContainer.getElementsByClassName('restaurant');
	    let currentPage = 1;
	    const restaurantsPerPage = 5;
		
	    var selectedNum = null;
    	function showPage(page) {
	        const startIndex = (page - 1) * restaurantsPerPage;
	        const endIndex = startIndex + restaurantsPerPage;
	        if (selectedNum !== null) {
		        var selectedSpan = document.getElementById('button' + selectedNum);
	            selectedSpan.style.background = '';
	        }
	        var selectedSpan = document.getElementById('button' + page);
            selectedSpan.style.background = 'blue';
            selectedNum = page;
		        for (let i = 0; i < restaurants.length; i++) {
		            if (i >= startIndex && i < endIndex) {
		                restaurants[i].style.display = 'block';
		            } else {
		                restaurants[i].style.display = 'none';
		            }
	        	}
	     }
    	
    	
    	showPage(1);
    	
    	
    </script>
    

	<jsp:include page="../common/footer.jsp"></jsp:include>
	
</body>

</html>