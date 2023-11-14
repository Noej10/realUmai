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
   		padding-top: 10px;
		padding-left: 10px;
    	/* vertical-align: baseline; */
		font-size: 30px;
		font-weight: bold;
	}
	.main-section{
		/* border-top: 1px solid #501a9b; */
		display: block;
		position: relative;
		/* height: 100%; */
	}
	.noResult{
		position: relative;
		display: flex;
		align-items: center;
		justify-content: center;
		font-size: 20px;
		font-weight: 500;
		margin-top: 150px;
		margin-bottom: 30px;
		color: #fc765d;
		font-weight: bold;
		
	}
	.btn-area{
		position: relative;
		display: flex;
		align-items: center;
		justify-content: center;
		
	}
	.insert-btn{
		border: none;
		height: 40px;
		width: 150px;
		color: white;
		background-color: #fc765d;
		font-weight: bold;
		
	}

	
</style>
</head>
<body>
	<%@ include file="../common/menubar.jsp" %>
	<section class="main-section">
		<div class="page-title">
				식당 검색결과
		</div>
		 
		<div class="noResult">
			찾는 식당이 없으신가요? 그렇다면 등록해 보세요!
		</div>
		<div class="btn-area">
			<button onclick="restaurantEnrollForm.jsp" class="insert-btn">식당 등록하기</button>
		</div>
	</section>
	
	
</body>

</html>