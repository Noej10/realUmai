<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    .photo-name-like{
        display: flex;
        justify-content: space-between;
    }
    .map-intro-subphoto{
        display: flex;
        justify-content: space-between;
    }
</style>
</head>
<body>
	<%@ include file="../common/menubar.jsp" %>
	<div class="main-info">
        <div class="photo-name-like">
            <div>메인 사진</div>
            <div>식당 정보</div>
            <div>좋아요</div>
        </div>
        <div class="map-intro-subphoto">
            <div>지도</div>
            <div>식당 소개</div>
            <div>서브 사진</div>
        </div>


    </div>
	
	
	
</body>
</html>