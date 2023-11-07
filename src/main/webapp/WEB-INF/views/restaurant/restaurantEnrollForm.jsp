<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>우리 마음 속 이런 맛집</title>
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
</style>
</head>
<body style="margin: 0px; padding: 0px;" >
	<jsp:include page="../common/menubar.jsp"></jsp:include>
	
	<div class="outer">
        <!-- 왼쪽(대표사진, 지도) -->
        <div class="img-map">
            <table width="100%" height="100%">
                <tr align="center" style="width: 100%; height: 50%; border: 1px solid gray; border-top: none;">
                    <td>대표 사진을 넣어주세요.</td>
                </tr>
                <tr align="center" style="width: 100%; height: 50%; border: 1px solid gray;">
                    <td>지도가 들어갈 곳</td>
                </tr>
            </table>
        </div>
        <!-- 가운데(입력 폼) -->
        <div class="restaurant-input">
            
            <form>
                <br>
                <table>
                
                    <tr>
                        <td align="center" class="input-title" width="200">식당 이름</td>
                        <td width="800">
                            <input type="text">
                        </td>
                    </tr>
                    <tr>
                        <td align="center" class="input-title">주  소</td>
                        <td>
                            <input type="text">
                        </td>
                    </tr>
                    <tr>
                        <td align="center" class="input-title">지  역</td>
                        <td>
                            <input type="text">
                        </td>
                    </tr>
                    <tr>
                        <td align="center" class="input-title">영업 시간</td>
                        <td>
                            <input type="text">
                        </td>
                    </tr>
                    <tr>
                        <td align="center" class="input-title">대표 메뉴</td>
                        <td>
                            <input type="text">
                        </td>
                    </tr>
                    <tr>
                        <td align="center" class="input-title">식당 소개</td>
                        <td>
                            <textarea style="width: 95%; height: 500px; resize: none; border-radius: 10px; border: none;"></textarea>
                        </td>
                    </tr>
        


                </table>
            </form>


        </div>
        <!-- 오른쪽(상세사진 및 등록하기)-->
        <div class="side-img">
            <table>
                <tr>
                    <td style="width: 200px; height: 200px; border: 1px solid gray; border-top: none;">상세 사진을 넣어주세요. </td>
                    <td style="border: 1px solid gray; border-top: none;">상세 사진을 넣어주세요. </td>
                    <td style="border: 1px solid gray; border-top: none;">상세 사진을 넣어주세요. </td>
                </tr>
                <tr>
                    <td style="width: 200px; height: 200px; border: 1px solid gray;">상세 사진을 넣어주세요. </td>
                    <td style="border: 1px solid gray;">상세 사진을 넣어주세요. </td>
                    <td style="border: 1px solid gray;">상세 사진을 넣어주세요. </td>
                </tr>
                <tr>
                    <td style="width: 200px; height: 200px; border: 1px solid gray;">상세 사진을 넣어주세요. </td>
                    <td style="border: 1px solid gray;">상세 사진을 넣어주세요. </td>
                    <td style="border: 1px solid gray;">상세 사진을 넣어주세요. </td>
                </tr>
                <tr>
                    <td align="center" colspan="3" style="height: 180px;">
                        <button style="width: 530px; height: 100px; background: #fc765d; border: none;" class="btn btn-lg btn-primary">등록하기</button>
                    </td>
                </tr>
            </table>
        </div>
    </div>
	
	
</body>
</html>