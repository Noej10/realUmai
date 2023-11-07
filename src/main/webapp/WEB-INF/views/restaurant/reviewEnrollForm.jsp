<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>우리 마음 속 이런 맛집</title>
<link rel="stylesheet" href="../../resources/css/rate.css">
<style>


.outer{
    display: flex;
    background: #ffd2d2;
    width: 100%;
    height: 100%;
    flex-direction: row;
}
.img-name{
    color: #fc765d;
    font-weight: bold;
    font-size: 30px;
    display: flex;
    align-items: center;
    
}

.rate-area{
    display: flex;
    flex-direction: column;
    color: #fc765d;
    font-weight: bold;
    font-size: 20px;
    justify-content: center;
    align-items: center;
    margin-bottom: 20px;
}

.rate-body{
    display: flex;
    flex-direction: column;
    align-items: flex-start;
}

</style>
</head>
<body>
    <jsp:include page="../common/menubar.jsp"></jsp:include>
    <div class="outer">
        <div style="width: 28%;">
        <form>
        </div>
                
                <div class="rate-body">
                    <br>
                    <div class="img-name" width="500">
                        
                        <div>
                        <img style="width: 100px; height: 100px; " src="/Umai/resources/images/sampleImg.jpg" alt="name">
                        </div>
                        <div align="right" style="width: 400px;">
                        [식당이름] 평가하기
                        </div>
                    </div>
                    <br>
                    <div class="rate-area">
                        음식의 맛은 어땠나요?
                        <fieldset class="rate" style="scale: 1.8;">
                            <input type="radio" id="taste-rate5" name="taste" value="5"><label for="taste-rate5" title="5점"></label>
                            <input type="radio" id="taste-rate4" name="taste" value="4"><label for="taste-rate4" title="4점"></label>
                            <input type="radio" id="taste-rate3" name="taste" value="3"><label for="taste-rate3" title="3점"></label>
                            <input type="radio" id="taste-rate2" name="taste" value="2"><label for="taste-rate2" title="2점"></label>
                            <input type="radio" id="taste-rate1" name="taste" value="1"><label for="taste-rate1" title="1점"></label>
                        </fieldset>
                    </div>
                    <div class="rate-area">
                        점원은 친절했나요?
                        <fieldset class="rate" style="scale: 1.8;">
                            &nbsp;&nbsp;<input type="radio" id="kindness-rate5" name="kindness" value="5"><label for="kindness-rate5" title="5점"></label>
                            <input type="radio" id="kindness-rate4" name="kindness" value="4"><label for="kindness-rate4" title="4점"></label>
                            <input type="radio" id="kindness-rate3" name="kindness" value="3"><label for="kindness-rate3" title="3점"></label>
                            <input type="radio" id="kindness-rate2" name="kindness" value="2"><label for="kindness-rate2" title="2점"></label>
                            <input type="radio" id="kindness-rate1" name="kindness" value="1"><label for="kindness-rate1" title="1점"></label>
                        </fieldset>
                    </div>
                    <div class="rate-area">
                        내부시설은 어땠나요?
                        <fieldset class="rate" style="scale: 1.8;">
                            <input type="radio" id="facility-rate5" name="facility" value="5"><label for="facility-rate5" title="5점"></label>
                            <input type="radio" id="facility-rate4" name="facility" value="4"><label for="facility-rate4" title="4점"></label>
                            <input type="radio" id="facility-rate3" name="facility" value="3"><label for="facility-rate3" title="3점"></label>
                            <input type="radio" id="facility-rate2" name="facility" value="2"><label for="facility-rate2" title="2점"></label>
                            <input type="radio" id="facility-rate1" name="facility" value="1"><label for="facility-rate1" title="1점"></label>
                        </fieldset>
                    </div>
                    <div class="rate-area">
                        가격은 적당했나요?
                        <fieldset class="rate" style="scale: 1.8;">
                            &nbsp;&nbsp;<input type="radio" id="price-rate5" name="price" value="5"><label for="price-rate5" title="5점"></label>
                            <input type="radio" id="price-rate4" name="price" value="4"><label for="price-rate4" title="4점"></label>
                            <input type="radio" id="price-rate3" name="price" value="3"><label for="price-rate3" title="3점"></label>
                            <input type="radio" id="price-rate2" name="price" value="2"><label for="price-rate2" title="2점"></label>
                            <input type="radio" id="price-rate1" name="price" value="1"><label for="price-rate1" title="1점"></label>
                        </fieldset>
                    </div>
                    <div class="rate-area">
                        접근성은 어땠나요?
                        <fieldset class="rate" style="scale: 1.8;">
                            &nbsp;&nbsp;<input type="radio" id="mobility-rate5" name="mobility" value="5"><label for="mobility-rate5" title="5점"></label>
                            <input type="radio" id="mobility-rate4" name="mobility" value="4"><label for="mobility-rate4" title="4점"></label>
                            <input type="radio" id="mobility-rate3" name="mobility" value="3"><label for="mobility-rate3" title="3점"></label>
                            <input type="radio" id="mobility-rate2" name="mobility" value="2"><label for="mobility-rate2" title="2점"></label>
                            <input type="radio" id="mobility-rate1" name="mobility" value="1"><label for="mobility-rate1" title="1점"></label>
                        </fieldset>
                    </div>
                    <div class="rate-area">
                        웨이팅은 어땠나요?
                        <fieldset class="rate" style="scale: 1.8;">
                            &nbsp;&nbsp;<input type="radio" id="waiting-rate5" name="waiting" value="5"><label for="waiting-rate5" title="5점"></label>
                            <input type="radio" id="waiting-rate4" name="waiting" value="4"><label for="waiting-rate4" title="4점"></label>
                            <input type="radio" id="waiting-rate3" name="waiting" value="3"><label for="waiting-rate3" title="3점"></label>
                            <input type="radio" id="waiting-rate2" name="waiting" value="2"><label for="waiting-rate2" title="2점"></label>
                            <input type="radio" id="waiting-rate1" name="waiting" value="1"><label for="waiting-rate1" title="1점"></label>
                        </fieldset>
                    </div>
                    <div class="rate-area">
                        음식이 나오는 속도는 어땠나요?
                        <fieldset class="rate" align="left" style="scale: 1.8; margin-right: 107px;">
                            <input type="radio" id="speed-rate5" name="speed" value="5"><label for="speed-rate5" title="5점"></label>
                            <input type="radio" id="speed-rate4" name="speed" value="4"><label for="speed-rate4" title="4점"></label>
                            <input type="radio" id="speed-rate3" name="speed" value="3"><label for="speed-rate3" title="3점"></label>
                            <input type="radio" id="speed-rate2" name="speed" value="2"><label for="speed-rate2" title="2점"></label>
                            <input type="radio" id="speed-rate1" name="speed" value="1"><label for="speed-rate1" title="1점"></label>
                        </fieldset>
                    </div>
                    <div class="rate-area">
                        매장의 전체적인 위생은 어땠나요?<br>
                        <fieldset class="rate" style="scale: 1.8; margin-right: 125px;">
                            <input type="radio" id="clean-rate5" name="clean" value="5"><label for="clean-rate5" title="5점"></label>
                            <input type="radio" id="clean-rate4" name="clean" value="4"><label for="clean-rate4" title="4점"></label>
                            <input type="radio" id="clean-rate3" name="clean" value="3"><label for="clean-rate3" title="3점"></label>
                            <input type="radio" id="clean-rate2" name="clean" value="2"><label for="clean-rate2" title="2점"></label>
                            <input type="radio" id="clean-rate1" name="clean" value="1"><label for="clean-rate1" title="1점"></label>
                        </fieldset>
                    </div>
                    <div class="rate-area">
                        매장에 다시 방문하고 싶은가요?
                        <fieldset class="rate" style="scale: 1.8; margin-right: 107px;">
                            <input type="radio" id="revisit-rate5" name="revisit" value="5"><label for="revisit-rate5" title="5점"></label>
                            <input type="radio" id="revisit-rate4" name="revisit" value="4"><label for="revisit-rate4" title="4점"></label>
                            <input type="radio" id="revisit-rate3" name="revisit" value="3"><label for="revisit-rate3" title="3점"></label>
                            <input type="radio" id="revisit-rate2" name="revisit" value="2"><label for="revisit-rate2" title="2점"></label>
                            <input type="radio" id="revisit-rate1" name="revisit" value="1"><label for="revisit-rate1" title="1점"></label>
                        </fieldset>
                    </div>
                    <div style="width: 100%;">
                        <textarea style="width: 170%; display: inline-block;height: 180px;border: none;border-radius: 10px;resize: none;;"></textarea>
                    </div>
                    <div align="right" style="width: 170%;">
                        <input type="submit" class="btn btn-primary" style="border: none; background: #fc765d;" value="등록하기">

                    </div>
                
                </div>
        
            </div>
        </form>
    </div>
</body>
</html>