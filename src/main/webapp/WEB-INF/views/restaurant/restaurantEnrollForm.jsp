<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>우리 마음 속 이런 맛집</title>
<!-- 카카오 지도 API -->
<script src="//dapi.kakao.com/v2/maps/sdk.js?appkey=d6cb0689f4fc5c9ee2e6c1f73a2fa5d1&libraries=services"></script>
<!-- 다음 지도 검색 API -->
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

<style>

    html,body{
        width:100%;
        height:100%;
    }

    .outer{
        display: flex;
        background: #ffd2d2;
        width: 100%;
        height: 100%;
        flex-direction: row;
        margin: 0px;
        padding: 0px;
    }

    .img-map{
        display: flex;
        width: 35%;
        height: 780px;
        align-items: center;
        justify-content: center;
    }

    .restaurant-input{
        display: flex;
        width: 35%;
        height: 100%;
        align-items: flex-start;
        justify-content: center;
    }   

    .restaurant-input input{
        width: 95%;
        margin-top: 2px;
        margin-bottom: 20px;
        border: none;
        border-radius: 7px;
        font-size: 14px;
    }
    .input-title{
        color: #fc765d;
        font-weight: bold;
        font-size: 18px;
        vertical-align: top;
    }
    .side-img{
    width: 50%;
    }
</style>
</head>
<body style="margin: 0px; padding: 0px;" >
	<jsp:include page="../common/menubar.jsp"></jsp:include>
	 <form action="insertRestaurant.re" method="post" enctype="multipart/form-data">
	<div class="outer">
        <!-- 왼쪽(대표사진, 지도) -->
        <div class="img-map">
            <table width="100%" height="100%">
                <tr align="center" style="width: 100%; height: 50%; border: 1px solid #fc765d; border-top: none;">
                    <td>
                    <img style="width: 100%; height: 100%;" onclick="chooseFile(1);" id="upMainFile">
                    </td>
                </tr>
                <tr align="center" style="width: 100%; height: 50%; border: 1px solid #fc765d;">
                    <td id="map"></td>
                </tr>
            </table>
        </div>
        <!-- 가운데(입력 폼) -->
        <div class="restaurant-input">
            
           
                <br>
                <table>
                
                    <tr>
                        <td align="center" class="input-title" width="200">식당 이름</td>
                        <td width="800">
                            <input id="restName" name="rName" type="text">
                        </td>
                    </tr>
                    <tr>
                        <td align="center" class="input-title">주  소</td>
                        <td>
                            <input id="adress" name="rAddress" type="text" readonly style="background:lightgrey; margin-bottom:0px;">
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" align="right" class="input-title">
                        <button type="button" class="btn btn-sm btn-primary" onclick="umaiMap()" style="margin-right:20px; background:#fc765d; border:none;">주소 검색</button>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" class="input-title">지  역</td>
                        <td>
                            <input name="rLegion" type="text">
                        </td>
                    </tr>
                    <tr>
                        <td align="center" class="input-title">영업 시간</td>
                        <td>
                            <input name="rTime" type="text">
                        </td>
                    </tr>
                    <tr>
                        <td align="center" class="input-title">대표 메뉴</td>
                        <td>
                            <input name="rMenu" type="text">
                        </td>
                    </tr>
                    <tr>
                        <td align="center" class="input-title">식당 소개</td>
                        <td>
                            <textarea name="rContent" style="width: 95%; height: 500px; resize: none; border-radius: 10px; border: none;"></textarea>
                        </td>
                    </tr>
        


                </table>
            
            <div style="display: none;">
                <input type="file" name="file1" id="file1" required onchange="loadImg(this,1)">
                <input type="file" name="file2" id="file2" onchange="loadImg(this,2)">
                <input type="file" name="file3" id="file3" onchange="loadImg(this,3)">
                <input type="file" name="file4" id="file4" onchange="loadImg(this,4)">
                <input type="file" name="file5" id="file5" onchange="loadImg(this,5)">
                <input type="file" name="file6" id="file6" onchange="loadImg(this,6)">
                <input type="file" name="file7" id="file7" onchange="loadImg(this,7)">
                <input type="file" name="file8" id="file8" onchange="loadImg(this,8)">
                <input type="file" name="file9" id="file9" onchange="loadImg(this,9)">
                <input type="file" name="file10" id="file10" onchange="loadImg(this,10)">
            </div>

        </div>
        <!-- 오른쪽(상세사진 및 등록하기)-->
        <div class="side-img">
            <table>
                <tr>
                    <td style="width: 200px; height: 200px; border: 1px solid #fc765d; border-top: none;"><img style="width: 100%; height: 100%;" id="content-img1" onclick="chooseFile(2);"></td>
                    <td style="width: 200px; height: 200px; border: 1px solid #fc765d; border-top: none;"><img style="width: 100%; height: 100%;" id="content-img2" onclick="chooseFile(3);"></td>
                    <td style="width: 200px; height: 200px; border: 1px solid #fc765d; border-top: none;"><img style="width: 100%; height: 100%;" id="content-img3" onclick="chooseFile(4);"></td>
                </tr>
                <tr>
                    <td style="width: 200px; height: 200px; border: 1px solid #fc765d;"><img style="width: 100%; height: 100%;" id="content-img4" onclick="chooseFile(5);"></td>
                    <td style="width: 200px; height: 200px; border: 1px solid #fc765d;"><img style="width: 100%; height: 100%;" id="content-img5" onclick="chooseFile(6);"></td>
                    <td style="width: 200px; height: 200px; border: 1px solid #fc765d;"><img style="width: 100%; height: 100%;" id="content-img6" onclick="chooseFile(7);"></td>
                </tr>
                <tr>
                    <td style="width: 200px; height: 200px; border: 1px solid #fc765d;"><img style="width: 100%; height: 100%;" id="content-img7" onclick="chooseFile(8);"></td>
                    <td style="width: 200px; height: 200px; border: 1px solid #fc765d;"><img style="width: 100%; height: 100%;" id="content-img8" onclick="chooseFile(9);"></td>
                    <td style="width: 200px; height: 200px; border: 1px solid #fc765d;"><img style="width: 100%; height: 100%;" id="content-img9" onclick="chooseFile(10);"></td>
                </tr>
                <tr>
                    <td align="center" colspan="3" style="height: 180px;">
                        <button type="submit" style="width: 530px; height: 100px; background: #fc765d; border: none;" class="btn btn-lg btn-primary">등록하기</button>
                    </td>
                    
                </tr>
            </table>
        </div>
    </div>
	</form>
	
	<script>
		// 여기가 파일 관련
		function loadImg(inputFile, num){
	       
	        //inputFile : 현재 변화가 생긴 input type=file 요소객체
	        // num : 몇번째 input요소인지 확인하기 위한 파라미터
	
	        //inputFile.files[0]에 선택된 파일이 담겨있을 것이다.
	        //inputFile.files.length => 1일 것이다.
	
	        if(inputFile.files.length == 1) { // 파일이 선택된 경우 => 미리보기 나타나게
	            //파일을 읽어들일 FileReader객체 생성
	            const reader = new FileReader();
	
	            //파일을 읽어들이는 메소드
	            //해당파일을 읽어들이는 순간 해당 파일만의 고유한 url 부여
	            reader.readAsDataURL(inputFile.files[0]);
	
	            //파일 읽어들이기 완료했을 때
	            reader.onload = function(ev){
	                // ev.target.result => 읽어들인 파일의 고유한 url
	                switch(num){
	                    case 1: document.getElementById('upMainFile').src = ev.target.result;
	           			break;
	                    case 2: document.getElementById('content-img1').src = ev.target.result;
	                    break;
	                    case 3: $("#content-img2").attr("src",ev.target.result);
	                    break;
	                    case 4: $("#content-img3").attr("src",ev.target.result);
	                    break;
	                    case 5: $("#content-img4").attr("src",ev.target.result);
	                    break;
	                    case 6: $("#content-img5").attr("src",ev.target.result);
	                    break;
	                    case 7: $("#content-img6").attr("src",ev.target.result);
	                    break;
	                    case 8: $("#content-img7").attr("src",ev.target.result);
	                    break;
	                    case 9: $("#content-img8").attr("src",ev.target.result);
	                    break;
	                    case 10: $("#content-img9").attr("src",ev.target.result);
	               
	                }
	            }
	
	        } else { // 선택된 파일이 취소된 경우 => 미리보기 사라지게
	            switch(num){
	                case 1: document.getElementById('upMainFile').src = null; break;
	                case 2: document.getElementById('content-img1').src = null; break;
	                case 3: $("#content-img2").attr("src", null); break;
	                case 4: $("#content-img3").attr("src", null); break;
	                case 5: $("#content-img4").attr("src", null); break;
	                case 6: $("#content-img5").attr("src", null); break;
	                case 7: $("#content-img6").attr("src", null); break;
	                case 8: $("#content-img7").attr("src", null); break;
	                case 9: $("#content-img8").attr("src", null); break;
	                case 10: $("#content-img9").attr("src", null); 
	            }
	        }
	    }
	
	    function chooseFile(num){
	        $("#file" + num).click();
	    }
	
	
	

	
	
		// 여기가 지도 관련
		var mapContainer = document.getElementById('map'), //지도를 담을 영역의 DOM 레퍼런스
			mapOptions = { //지도를 생성할 때 필요한 기본 옵션
			center: new kakao.maps.LatLng(37.4990031937295, 127.03291995070748), //지도의 중심좌표.
			level: 5 //지도의 레벨(확대, 축소 정도)
		};
		
		var map = new kakao.maps.Map(mapContainer, mapOptions); //지도 생성 및 객체 리턴
		//주소-좌표 변환 객체를 생성
	    var geocoder = new kakao.maps.services.Geocoder();
	    //마커를 미리 생성
	    var marker = new kakao.maps.Marker({
	        position: new kakao.maps.LatLng(37.4990031937295, 127.03291995070748),
	        map: map
	    });
	
	
	
	
	
	    function umaiMap() {
	        new daum.Postcode({
	            oncomplete: function(data) {
	                var addr = data.address; // 최종 주소 변수
	
	                // 주소 정보를 해당 필드에 넣는다.
	                document.getElementById("adress").value = addr;
	                

	                geocoder.addressSearch(document.getElementById("adress").value, function(result, status) {

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
	                            content: '<div style="width:150px;text-align:center;padding:6px 0;">'+document.getElementById("restName").value+'</div>'
	                        });
	                        infowindow.open(map, marker);

	                        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
	                        map.setCenter(coords);
	                    } 
	                });

	            }
	        }).open();
       
	    }
	    

	</script>
	
</body>
</html>