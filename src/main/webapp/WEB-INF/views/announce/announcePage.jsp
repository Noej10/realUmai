<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 페이지</title>
<style>

#outer{
    background: rgb(255, 210, 210);
    height: 920px;
    padding-top: 50px;
}

li{
    list-style: none;
    background-color: white;
}

#outer > h1{
    text-align: center;
    font-weight: bold;
}

.num {
    text-align: left;
    padding-left: 20px;
    font-size: 40px;
    font-weight: bold;
}

button {
    background: rgb(252, 118, 93);
    border-radius: 5px;
    border: none;
    color: white;
    margin: 10px;
    width: 230px;
    height: 40px;
    font-size: 25px;
    margin-left: 30px;
}

.ann-enroll{
    text-align: right;
    margin-right: 10px;
}

#ann-btn{
    border-radius: 5px;
    font-weight: bold;
}

.ann-link-desc{
    font-size: 23px;
    font-weight: 500;
    line-height: 1.435;
    color: #222;
    width: calc(100% - 100px - 123px);
}

.ann-link-desc .desc {
    width: 86%;
    padding-top: 10px;
    font-size: 16px;
    line-height: 1.875;
    color: #555;
    overflow: hidden;
    text-overflow: ellipsis;
    white-space: nowrap;
}

.ann-link-num{
    padding-top: 20px;
    align-self: baseline;
    width: 100px;
    padding-top: 39px;
    font-size: 40px;
    font-weight: 500;
    color: #222;
    text-align: center;
    line-height: 1;
}

.ann-link-desc .tit {
    font-size: 23px;
    font-weight: 500;
    line-height: 1.435;
    color: #222;
    padding-top: 30px;
    display: inline-block;
}

.ann-link {
    display: flex;
    align-items: center;
    background-color: #fff;
    border: 3px solid #fff;
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

<body style="margin: 0; padding: 0;">

	 <%@ include file="../common/menubar.jsp" %>
	 
    <div id="outer">
    <h1>공지사항</h1>
    <form action="announceEnroll.re">
    <c:forEach var="l" items="${list }">    
		<ul>
			<li class="ann-list">
	   			<a href="detail.an?cPage=${l.annNum}" class="ann-link">
		    		<div class="ann-link-num" style="text-decoration: none;">${l.annNum }</div>
		    		<div class="ann-link-desc">
			        	<div>
			            	<h4 class="tit">${l.title }</h4>
			        	</div>

		        
		        		<p class="desc"></p>
		    		</div>
	    		</a>
	    	</li>
		</ul>
	</c:forEach>
  
        <c:if test="${loginUser.manager eq 'Y' }">
         <div class="ann-enroll">
            <button type="submit" id="ann-btn">공지사항 등록</button>
        </div>
        </c:if> 
         <div class="page_wrap">
            <div class="page_nation">
            	<c:if test="${pi.currentPage ne 1 }">
					<a class="arrow prev" href="announceList.an?cPage=${pi.currentPage-1}">&lt;</a>
	            </c:if>
	            <c:forEach var="p" begin="${pi.startPage}" end="${pi.endPage}">
					<a href="announceList.an?cPage=${p}" class="active">${p}</a>
				</c:forEach>	
				<c:if test="${pi.maxPage ne pi.currentPage }">
					<a class="arrow next" href="announceList.an?cPage=${pi.currentPage+1}">&gt;</a>
				</c:if>
            </div>
         </div>
        
          

    </form>

    </div>
    <jsp:include page="../common/footer.jsp"></jsp:include>
</body>
</html>