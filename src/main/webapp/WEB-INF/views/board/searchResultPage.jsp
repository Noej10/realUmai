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
    	flex-wrap: nowrap;
		background-color: rgb(255, 210, 210);
		overflow: hidden;
		/* height: 300px; */
	}
	.main-figure{
    	margin-top: 30px;
		width: 20%;
    	/* padding: 0 7px; */
    	vertical-align: top;
    	margin-top: 40px;
		display: inline-block;
    	margin-bottom: 25px;
	}
	.atag{
		display: block;
    	/* border-bottom: 1px solid #dadada; */
    	height: 100%;
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
    	white-space: nowrap;
    	overflow: hidden;
    	text-overflow: ellipsis;
		text-align: center;
		
	}
	.board-paging{
		/* margin: 15px 0 0; */
		text-align: center;
		font-size: 0;
		line-height: 0;
		background-color: rgb(255, 210, 210);

	}
	.board-paging ol{
		display: inline-block;
    	vertical-align: top;
		list-style: none;
		padding-left: 10px;
	}
	.on{
		overflow: hidden;
		position: relative;
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
		line-height: 28px;
		display: inline-block;
		text-decoration: none;
   	 	transition: all .3s ease;
		font: inherit;
		border-radius: 50%;
	}
	.page_wrap {
	text-align:center;
	font-size:0;
	 }
	.page_nation {
		display:inline-block;
	}
	.page_nation .none {
		display:none;
	}
	.page_nation a {
		display:block;
		margin:0 3px;
		float:left;
		border:1px solid #e6e6e6;
		width:28px;
		height:28px;
		line-height:28px;
		text-align:center;
		background-color:#fff;
		font-size:13px;
		color:#999999;
		text-decoration:none;
	}
	.page_nation .arrow {
		border:1px solid #ccc;
	}


	
</style>
</head>
<body>
	<%@ include file="../common/menubar.jsp" %>
	<div class="page-title">
			식당 검색결과
	</div>
	<section class="main-section">
	<c:forEach var="rList" items="${list}">
		<figure class="main-figure">
			<a href="" class="atag">  
				<p class="thumbnail-area">
				<img class="image" src="/Umai/${rList.filePath}" />
				</p>
				<figcaption class="caption">
				<p class="title">
					${rList.restName}<br>
					${rList.region}
				</p>
				</figcaption>
			</a>
		</figure>
	</c:forEach>
	</section> <!-- search.bo?cPage=1&searchType=sRegion&searchInput=tes -->
         <div class="page_wrap">
            <div class="page_nation">
            ${pi.startPage}${pi.startPage}${pi.startPage}${pi.endPage}${pi.endPage}${pi.endPage}
            	<c:if test="${pi.currentPage ne 1 }">
					<a class="arrow prev" href="search.bo?cPage=${pi.currentPage-1}&searchType=${searchType}&searchInput=${searchInput}">&lt;</a>
	            </c:if>
	            <c:forEach var="p" begin="${pi.startPage}" end="${pi.endPage}">
					<a href="search.bo?cPage=${p}&searchType=${searchType}&searchInput=${searchInput}" class="active">${p}</a>
				</c:forEach>	
				<c:if test="${pi.maxPage ne pi.currentPage }">
					<a class="arrow next" href="search.bo?cPage=${pi.currentPage+1}&searchType=${searchType}&searchInput=${searchInput}">&gt;</a>
				</c:if>
            </div>
         </div>
         
         
         
     <script>
		      if(${searchType eq 'sRegion'}){
		         document.getElementById("radRegion").setAttribute('checked','true');
		      }else{
		            document.getElementById("radStore").setAttribute('checked','true');
		        }
   </script>

    	
  
	
</body>

</html>