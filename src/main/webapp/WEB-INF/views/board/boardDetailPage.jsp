<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=d6cb0689f4fc5c9ee2e6c1f73a2fa5d1&libraries=services"></script>

<style>
    html body{
		height: 100%;
		width: 100%;
		background-color: rgb(255, 210, 210);
	}
    .photo-name-like{
        display: flex;
        position: relative;
        width: 100%;
    }
    .main-photo{
        margin-top: 10px;
        margin-left: 10px;
    }
    .res-info{
        margin-top: 10px;
        margin-left: 20px;
        overflow: auto;
        width: 100%;
        max-width: 850px;
        border: 1px solid #fc765d;
    	border-radius: 10px;
    	padding-left: 10px;
    	padding-top: 5px;
    }
    .res-name{
        font-size: 20px;
        font-weight: bold;
    }
    #like-count{
		
    }
    .like{
        margin-left: 30px;
        display: flex;
    }
    .map-intro-subphoto{
        display: flex;
        position: relative;
        width: 100%;
        height: 200px;
        margin-top: 10px;
    }
    .maparea{
        border: solid 1px; height: 200px; min-width: 300px; margin-left: 10px;
       
    }
    .res-intro{
        margin-top: 10px;
        margin-left: 20px;
        overflow: auto;
        width: 100%;
        max-width: 850px;
        padding-bottom: 30px;
        border: 1px solid #fc765d;
    	border-radius: 10px;
    	padding-left: 10px;
    	padding-top: 5px;
    }
    .back{
        color: white;
		background-color: #fc765d;
		border-color: #fc765d;
        border-radius: 10px;
    }
    .sub-photo{
        position: relative;
        overflow: hidden;
        min-width: 200px;
        margin-left: 30px;
    }
    .photo-container{
        /* overflow: hidden;
        margin: 5px;
        position: relative; */
        display: none;
    }
    .photo-container.active {
      display: block;
    }
    .prev, .next{
    cursor: pointer;
      position: absolute;
      top: 50%;
      width: auto;
      padding: 16px;
      margin-top: -35px;
      color: white;
      font-weight: bold;
      font-size: 18px;
      transition: 0.6s ease;
      border-radius: 0 3px 3px 0;
      user-select: none;
    }
    .prev {
      left: 0;
      color: black;
      font-size: 35px;
      margin-right: 10px;
      /* background-color: #222; */
    }

    .next {
      right: 0;
      color: black;
      font-size: 35px;
      /* background-color: #222; */
    }
    .review-area{
        display: flex;
        position: relative;
        width: 100%;
        height: 100px;
        margin-top: 10px;
    }
    .star{
        position: relative;
        bottom: -25px;
        display: inline-block;
        align-items: center;
        width: 125px;
        height: 25px;
        background: url("/Umai/resources/images/icon-star-empty.png") left/25px repeat-x;
    }
    .star-detail{
        position: relative;
        bottom: 12px;
        display: inline-block;
        align-items: center;
        width: 125px;
        min-height: 25px;
        background: url(/Umai/resources/images/icon-star-empty.png) left/25px repeat-x;
    }
    .star i, .star-detail i{
        position: absolute;
        top: 0;
        left: 0;
        width: 50%;
        height: 25px;
        
        background:url("/Umai/resources/images/icon-star-full.png") left/25px repeat-x;
    }
    #detail-button{
        position: relative;
        font-size: 12px;
        width: 100%;
        bottom: -25px;
        color: white;
		background-color: #fc765d;
        border-color: #fc765d;
    }
    .nickname{
        display: flex;
        margin-left: 30px;
        max-width: 100px;
        width: 100%;
        align-items: center;
        justify-content: center;
    }
    .review-text{
        position: relative;
        margin-left: 30px;
        background-color: white;
        width: 60%;
        border-radius: 10px;
    }
    #delete-btn{
        position: absolute;
        bottom: 0;
        right: 0;
        color: white;
		background-color: #fc765d;
        border-color: #fc765d;
    }
    .inputreview{
        position: relative;
        min-width: 100%;
        display: flex;
        align-items: center;
        justify-content: center;
        max-width: 850px;
        padding-left: 320px;
        padding-right: 320px;
        margin-top: 10px;
        margin-bottom: 10px;
    }
    .revinsert-btn{
        color: white;
		background-color: #fc765d;
		border-color: #fc765d;
        position: absolute;
        right: 250px;
        top: 0;
        border-radius: 10px;
    }
</style>
</head>
<body>
	<%@ include file="../common/menubar.jsp" %>
	<div class="main-info">
        <div class="photo-name-like">
            <div class="main-photo">
                <img style="height: 200px; width: 300px; cursor: pointer;" src="/Umai/${r.filePath }" alt="ddd" onclick="window.open(this.src)">
            </div>
            <div class="res-info">
                <span class="res-name">${r.restName }</span>
                <div class="res-moreinfo">
                    <span>주소: ${r.address }</span><br>
                    <span>지역: ${r.region }</span><br>
                    <span>영업시간: ${r.opening }</span><br>
                    <span>대표메뉴: ${r.menu }</span><br>
                </div>
            </div>
            <div class="grade-area" style="display: flex; align-items: center; margin-left: 5px;">
                <span style="font-size: 60px; margin-right: 5px; color: red;">★</span>
                <h1 style="font-size: 100px; font-weight: bold; color: #ff7400;">${r.grade}</h1>
                <div class="like" id="likeContainer">
                <c:choose>
                <c:when test="${like.good == 'N'}">
                    <img style="height: 60px; width: 60px; cursor: pointer;" src="/Umai/resources/images/icon-like.png" alt="" onclick="updateLike()">
                    <h3>${likeCount }</h3>
                </c:when>
                <c:otherwise>
                    <img style="height: 60px; width: 60px; cursor: pointer;" src="/Umai/resources/images/icon-like-clicked.png" alt="" onclick="updateUnlike()">
                    <h3>${likeCount }</h3>
                </c:otherwise>
                </c:choose>
                </div>
            </div>
            <script>
	            function updateLike(){
	                $.ajax({
	                    url: "updateLike",
	                    data: {
	                        restNum: '${r.restNum}',
	                        userNum: '${loginUser.userNum}'                        
	                    },
	                    success: function(res){
	                    	var likeContainer = document.getElementById('likeContainer');
	                    	if(res != null){
	                    		likeContainer.innerHTML = ''+
	                    		'<img style="height: 60px; width: 60px; cursor: pointer;" src="/Umai/resources/images/icon-like-clicked.png" alt="" onclick="updateUnlike()">'+
	                    		'<h3>'+res+'</h3>';
	                    		
	                    		console.log(res);
	                    	}
	                    },
	                    error: function(){
	                        console.log("ajax통신실패")
	                    }
	                })
	                
	            }
	            function updateUnlike(){
	                $.ajax({
	                    url: "updateUnlike",
	                    data: {
	                        restNum: '${r.restNum}',
	                        userNum: '${loginUser.userNum}'                        
	                    },
	                    success: function(res){
	                    	var likeContainer = document.getElementById('likeContainer');
	                    	if(res != null){
	                            likeContainer.innerHTML = '<img style="height: 60px; width: 60px; cursor: pointer;" src="/Umai/resources/images/icon-like.png" alt="" onclick="updateLike()"><h3>'+res+'</h3>';
	                            
	                            console.log(res);
	                    	}
	                    },
	                    error: function(){
	                        console.log("ajax통신실패")
	                    }
	                })
	                
	            }
	            
            </script>
        </div>
        <div class="map-intro-subphoto">
            <div id="map" style="border: solid 1px; height: 200px; min-width: 300px; margin-left: 10px;">
				
            </div>
            <div class="res-intro">${r.duction }
            </div>

            <div class="sub-photo">
                <c:forEach var="s" items="${subList}" varStatus="loop">
                    <div class="photo-container ${loop.first ? 'active' : ''}">
                        <img style="height: 200px; width: 200px; cursor: pointer;" src="/Umai/${s.filePath }" alt="" onclick="window.open(this.src)">
                    </div>
                </c:forEach>
                <div class="prev" onclick="plusSlides(-1)">&#10094;</div>
                <div class="next" onclick="plusSlides(1)">&#10095;</div>
            </div>

        </div>
        <c:forEach var="rev" items="${rev}" varStatus="loop">
	        <div class="review-area review-${loop.index + 1}">
	            <div>리뷰 :</div>
	            <div class="star">
	                <i style="width: ${rev.revRevisit*20}%;"></i>
	                <button type="button" id="detail-button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#detailscore-${loop.index + 1}">
                        점수 자세히보기
                      </button>
	            </div>
	            <div class="nickname">${rev.nickname }</div>
	            <div class="review-text">
	                <p>${rev.commentContents }</p>
	                <c:if test="${loginUser.userNum == rev.memberNum}">
	                <button type="button" id="delete-btn" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#deleteRview-${loop.index + 1}">
					  삭제
					</button>
	                </c:if>
	            </div>
	        </div>
	     
		    <!-- 리뷰 삭제 모달 -->
					 <div class="modal fade" id="deleteRview-${loop.index + 1}" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
					  <div class="modal-dialog modal-dialog-centered">
					    <div class="modal-content">
					      
					      <div class="modal-body">
					        정말로 리뷰를 삭제하시겠습니까?
					      </div>
                          <form action="deleteRev">
                            <div class="modal-footer" align="center">
                                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">취소</button>
                                <button type="submit" class="btn btn-primary">삭제하기</button>
                                <input type="hidden" value="${rev.memberNum }" name="memberNum">
                                <input type="hidden" value="${rev.revRestnum }" name="revRestnum">
                            </div>
                          </form>
					    </div>
					  </div>
					</div>
		 
	
		    
		   
		
    <!--모달-->
        <div class="modal fade" id="detailscore-${loop.index + 1}" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
            <div class="modal-dialog modal-dialog-scrollable">
            <div class="modal-content">
                <div class="modal-header">
                <h1 class="modal-title fs-5" id="staticBackdropLabel">상세 정보</h1>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                
                    <div class="modal-body" style="display: flex;width: 100%;flex-wrap: nowrap;flex-direction: column;align-items: center;">
                        <p>
                            음식의 맛은 어땠나요? 
                        </p>
                        <div class="star-detail">
                            <i style="width: ${rev.revRevisit*20}%;"></i>
                        </div>
                        <p>
                            점원은 친절했나요? 
                        </p>
                        <div class="star-detail">
                            <i style="width: ${rev.revKind*20}%;"></i>
                        </div>
                        <p>
                            내부시설은 어땠나요? 
                        </p>
                        <div class="star-detail">
                            <i style="width: ${rev.revFacility*20}%;"></i>
                        </div>
                        <p>
                            가격은 적당했나요? 
                        </p>
                        <div class="star-detail">
                            <i style="width: ${rev.revPrice*20}%;"></i>
                        </div>
                        <p>
                            접근성은 어땠나요? 
                        </p>
                        <div class="star-detail">
                            <i style="width: ${rev.revMobility*20}%;"></i>
                        </div>
                        <p>
                            웨이팅은 어땠나요? 
                        </p>
                        <div class="star-detail">
                            <i style="width: ${rev.revWaiting*20}%;"></i>
                        </div>
                        <p>
                            음식이 나오는 속도는 어땠나요? 
                        </p>
                        <div class="star-detail">
                            <i style="width: ${rev.revSpeed*20}%;"></i>
                        </div>
                        <p>
                            매장의 전체적인 위생은 어땠나요? 
                        </p>
                        <div class="star-detail">
                            <i style="width: ${rev.revClean*20}%;"></i>
                        </div>
                        <p>
                            매장에 다시 방문하고 싶은가요? 
                        </p>
                        <div class="star-detail">
                            <i style="width: ${rev.revRevisit*20}%;"></i>
                        </div>
                       
                    
                    </div>
                
                <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
                </div>
            </div>
            </div>
        </div>
       </c:forEach>
       <div class="inputreview">
        <button class="back" onclick="back()">목록으로</button>
	       <form action="reviewEnroll.re">
	                <input type="hidden" value="${loginUser.userNum }" name="rmemNum">
	                <input type="hidden" value="${r.restNum }" name="rresNum">
	                <input type="hidden" value="${r.restName }" name="rresName">
	                <input type="hidden" value="${r.filePath }" name="rresFile">
	                <button class="revinsert-btn" type="submit">리뷰 작성하기</button>
	       </form>
	       
	   </div>
  			
       </div>
    <!--모달-->
 
	<script>
	// <c:forEach var="rev" items="${rev}" varStatus="loop">
    //     var gradeValue = ${rev.revRevisit};
    //     var currentReview = document.querySelector('.review-area.review-${loop.index + 1} .star i');
    //     starElement.style.width = gradeValue + '%';
    // </c:forEach>
        function back(){
            location.href="/Umai/boardpage"
        }
        function plusSlides(n) {
        var photos = document.querySelectorAll('.photo-container');
        var currentIndex = Array.from(photos).findIndex(photo => photo.classList.contains('active'));

        currentIndex += n;

        if (currentIndex >= photos.length) {
            currentIndex = 0;
        }

        if (currentIndex < 0) {
            currentIndex = photos.length - 1;
        }

        photos.forEach(photo => photo.classList.remove('active'));
        photos[currentIndex].classList.add('active');
    }
    </script>
	
	<script>
	var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = {
        center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
    };  

// 지도를 생성합니다    
var map = new kakao.maps.Map(mapContainer, mapOption); 

// 주소-좌표 변환 객체를 생성합니다
var geocoder = new kakao.maps.services.Geocoder();

// 주소로 좌표를 검색합니다
geocoder.addressSearch('서울특별시 관악구 남부순환로247가길 18', function(result, status) {

    // 정상적으로 검색이 완료됐으면 
     if (status === kakao.maps.services.Status.OK) {

        var coords = new kakao.maps.LatLng(result[0].y, result[0].x);

        // 결과값으로 받은 위치를 마커로 표시합니다
        var marker = new kakao.maps.Marker({
            map: map,
            position: coords
        });

        // 인포윈도우로 장소에 대한 설명을 표시합니다
        var infowindow = new kakao.maps.InfoWindow({
        	
            content: '<div style="width:150px;text-align:center;padding:6px 0;">${r.restName}</div>'
            
        });
        infowindow.open(map, marker);

        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
        map.setCenter(coords);
    } 
});  
        
    </script>
    <jsp:include page="../common/footer.jsp"></jsp:include>
</body>
</html>