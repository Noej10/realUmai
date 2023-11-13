<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=d6cb0689f4fc5c9ee2e6c1f73a2fa5d1"></script>
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
        padding-right: 130px;
    }
    .res-name{
        font-size: 20px;
        font-weight: bold;
    }
    .res-moreinfo{

    }
    .like{
        position: absolute;
        right: 0;
        top: 13px;
        margin-right: 10px;
    }
    .map-intro-subphoto{
        display: flex;
        position: relative;
        width: 100%;
        height: 200px;
    }
    .maparea{
        /* height: 200px;
        width: 300px; */
        margin-top: 10px;
        margin-left: 10px;
    }
    .res-intro{
        margin-top: 10px;
        margin-left: 20px;
        overflow: auto;
        width: auto;
        width: 100%;
    }
    .back{
        position: absolute;
        bottom: 0;
        right: 580px;
    }
    .sub-photo{
        position: absolute;
        right: 0;
        overflow: hidden;
        /* height: 200px;
        width: 200px; */
        margin-right: 30px;
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
      margin-top: -22px;
      color: white;
      font-weight: bold;
      font-size: 18px;
      transition: 0.6s ease;
      border-radius: 0 3px 3px 0;
      user-select: none;
    }
    .prev {
      left: 0;
      background-color: #222;
    }

    .next {
      right: 0;
      background-color: #222;
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
    .star i{
        position: absolute;
        top: 0;
        left: 0;
        width: 50%;
        height: 25px;
        background:url("/Umai/resources/images/icon-star-full.png") left/25px repeat-x;
    }
    .detail-button{
        position: relative;
        font-size: 12px;
        width: 100%;
        bottom: -25px;
    }
    .nickname{
        margin-left: 30px;
    }
    .review-text{
        margin-left: 30px;
        background-color: white;
        width: 60%;
    }
</style>
</head>
<body>
	<%@ include file="../common/menubar.jsp" %>
	<div class="main-info">
        <div class="photo-name-like">
            <div class="main-photo">
                <img style="height: 200px; width: 300px;" src="${r.filePath }${r.originName}" alt="ddd">
            </div>
            <div class="res-info">
                <span class="res-name">${r.restName }</span>
                <div class="res-moreinfo">
                    <span>주소: ${r.address }</span><br>
                    <span>지역: ${r.region }</span><br>
                    <span>영업시간: ${r.opening }</span><br>
                    <span>평점: ${r.grade }</span><br>
                    <span>대표메뉴: ${r.menu }</span><br>
                </div>
            </div>
            <div class="like">
                <img style="height: 100px; width: 100px;" src="/Umai/resources/images/icon-like.png" alt="">
            </div>
        </div>
        <div class="map-intro-subphoto">
            <div class="maparea">

            </div>
            <div class="res-intro">${r.duction }</div>
            <div class="back">
                <button onclick="back()">목록으로</button>
            </div>
            <div class="sub-photo">
                <c:forEach var="s" items="${subList}" varStatus="loop">
                    <div class="photo-container ${loop.first ? 'active' : ''}">
                        <img style="height: 200px; width: 200px;" src="${s.filePath }${s.originName}" alt="">
                    </div>
                </c:forEach>
                <div class="prev" onclick="plusSlides(-1)">&#10094;</div>
                <div class="next" onclick="plusSlides(1)">&#10095;</div>
                
            </div>
        </div>
        <div class="review-area">
            <div>리뷰 :</div>
            <div class="star">
                <i></i>
                <button class="detail-button">점수 자세히보기</button>
            </div>
            <div class="nickname">닉네임</div>
            <div class="review-text">
                <p>ddddd</p>
            </div>
        </div>

    </div>
	<script>
        function back(){
            window.history.back();
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
        var container = document.getElementById('map'); //지도를 담을 영역의 DOM 레퍼런스
        var options = { //지도를 생성할 때 필요한 기본 옵션
            center: new kakao.maps.LatLng(37.4990031937295, 127.03291995070748), //지도의 중심좌표.
            level: 10 //지도의 레벨(확대, 축소 정도)
        };
        
        var map = new kakao.maps.Map(container, options); //지도 생성 및 객체 리턴
        
    </script>
</body>
</html>