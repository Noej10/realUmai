<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
  html body{
		height: 100%;
		width: 100%;
		background-color: rgb(255, 210, 210);
	}
  .guideBox{
    position: relative;
    height: 100%;
		width: 100%;
    background-color: rgb(255, 210, 210);
    height: auto;
    min-height: 100%;
    padding-bottom: 20px;
  }
  #faqQuestion {
    display: flex;
    font-size: 1.3em;
    font-weight: 600;
    letter-spacing: -0.8px;
    padding: 30px 20px;
    cursor: pointer;
    justify-content: space-between;
  }
  #faqCategory{
    color:#945312;
    font-size:0.7em !important;
    font-weight:400;
  }
  #faqName{
    display:flex;
    gap:1em;
    align-items: center;
  }
  #faqbox{
    display: flex;
    justify-content: space-between;
  }
  #faqbox button{
    background-color: #fc765d;
    border: none;
    color: white;
    margin-bottom: 5px;
    border-radius: 7px;
  }
  .recruitRotate2 {
    transform: rotate(0deg);
    transition: all ease 0.15s;
  }
  .recruitRotate {
    transform: rotate(180deg);
    transition: all ease 0.15s;
  }
  .slide{
    animation-duration: 0.01ms !important;
    animation-iteration-count: 1 !important;
    transition-duration: 0.01ms !important;
    scroll-behavior: auto !important;
  }
  .insertBtn-area{
    /* position: relative; */
    /* float: right; */
    display: flex;
    /* background: #fc765d; */
    /* height: 25px; */
    width: 100px;
    height: 100%;
    width: 100%;
    margin-bottom: 5px;
    /* justify-content: center; */
    background-color: rgb(255, 210, 210);
    
  }
  .insertBtn{
    position: relative;
    left: 90%;
    border: none;
    background-color: #fc765d;
    color: white;
    border-radius: 7px;
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
<script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>

</head>
<body>
	<%@ include file="../common/menubar.jsp" %>
	
  <div class="guideBox">
    <ul>
          <div align="center">
          <br>
              <h2>자주 묻는 질문</h2>
          </div>
		<c:forEach var="fList" items="${faqList}">
				<form action="delete.faq" id="deleteForm${fList.faqNum}" method="post">
					<input type="hidden" value="${fList.faqNum}" name="dFaqNum">
				</form>
          <div class="slide">
	              <div id="faqQuestion">
	                <div id="faqName">
	                  <p id="faqCategory">
	                  	<c:choose>
	                  		<c:when test="${fList.faqKind eq 'nomal' }">
	                  			일반
	                  		</c:when>
                  			<c:when test="${fList.faqKind eq 'restaurant' }">
	                  			식당
	                  		</c:when>
	                  		<c:otherwise>
	                  			정보
	                  		</c:otherwise>
	                  	</c:choose>
	                  </p>
	                  ${fList.faqTitle }
	                </div>
	                  <img class="recruitRotate2"
	                  src="/Umai/resources/images/arrow_down.png" alt="화살표"
	                  style="width:1em; height:auto; position:relative;">
	                  
	              </div>
	            </div>
	      
	            <div id="content" style="display:none">
	              <div id="faqbox">
	                  <div id="faqboxItem">
	                      ${fList.faqContent }
	                  </div>
	                  <!--관리자 로그인 시 보이는 곳-->
	                  <c:if test="${loginUser.manager eq 'Y'}">
	                  <div>
	                  	<form action="faqUpdateForm.faq" method="post">
	                  		<input type="hidden" value="${fList.faqNum}" name="faqNum">
	                  		<input type="hidden" value="${fList.faqKind}" name="faqKind">
	                  		<input type="hidden" value="${fList.faqTitle}" name="faqTitle">
	                  		<input type="hidden" value="${fList.faqContent}" name="faqContent">
		                    <button type="submit">수정</button>
		                    <button type="button" onclick="deleteFaq(${fList.faqNum});">삭제</button>
	                    </form>
	                  </div>
	                  </c:if>
	              </div>
	          </div>
	          <div style="border-top: 1px solid #aaa"></div>
     	 </c:forEach>    
      </ul>
	<c:if test="${loginUser.manager eq 'Y'}">
        <div class="insertBtn-area">
          <button class="insertBtn" onclick="location.href='faqEnroll.faq'">FAQ 등록하기</button>
        </div>
    </c:if>
         <div class="page_wrap">
            <div class="page_nation">
            	<c:if test="${pi.currentPage ne 1 }">
					<a class="arrow prev" href="faqList.faq?cPage=${pi.currentPage-1}">&lt;</a>
	            </c:if>
	            <c:forEach var="p" begin="${pi.startPage}" end="${pi.endPage}">
					<a href="faqList.faq?cPage=${p}" class="active">${p}</a>
				</c:forEach>	
				<c:if test="${pi.maxPage ne pi.currentPage }">
					<a class="arrow next" href="faqList.faq?cPage=${pi.currentPage+1}">&gt;</a>
				</c:if>

            </div>
         </div>  
  </div>


	<script>
 
    $(document).on("click", ".slide", function () {
        if ($(this).next().css("display") == "none") {
            $(this).next().slideDown(250, "linear");
            $(this).find("img")[0].classList.add("recruitRotate");
            $(this).find("img")[0].classList.remove("recruitRotate2");
        } else {
            $(this).next().slideUp(250, "linear");
            $(this).find("img")[0].classList.remove("recruitRotate");
            $(this).find("img")[0].classList.add("recruitRotate2");
        }
    });
    
    function deleteFaq(num) {
    	$("#deleteForm"+num).submit();
    }

	</script>
	<jsp:include page="../common/footer.jsp"></jsp:include>
</body>
</html>