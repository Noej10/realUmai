<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style>
    html,
    body,
    .outer{
        background-color: rgb(255, 210, 210);
        width: 100%;
        height: 100%;
    }

    select {
  margin-bottom: 10px;
  margin-top: 10px;
  outline: 0;
  padding: 4px;
  border-radius: 9px;

}
    textarea {
        margin-bottom: 10px;
        margin-top: 10px;
        outline: 0;
        padding: 4px;
        border-radius: 9px;
    }
    .footer{
		background: #fc765d;
		box-sizing: border-box;
		width: 100%;
		height: 160px;
		margin: 0px;
		padding: 0px;
		position: relative;
		display: flex;
		flex-direction: column;
		justify-content: center;
    }
</style>
</head>
<body>
	<jsp:include page="../common/menubar.jsp" />

    <div class="outer">   
    <form action="faqUpdate.faq" method="post">
    	<input type="hidden" name="faqNum" value="${faqInfo.faqNum}">    
        <br>

        <h1 align="center" style="color: #fc765d;">FAQ 등록</h1> <br>
        
        <div align="center" style="position: relative;">       
            <div style="position: absolute; top: -12%; left: 37%;">
                <select name="category" id="category">
                    <option id="option1" value="nomal">일반</option>
                    <option id="option2" value="restaurant">식당</option>
                    <option id="option3" value="information">정보</option>
                </select>
            </div>
            <textarea name="faqTitle" style= "resize:none; font-weight: bold; width: 500px;" placeholder="공지사항 제목입니다.">${faqInfo.faqTitle}</textarea><br>
            <textarea name="faqContent" style= "resize:none; font-weight: bold; width: 500px; height: 250px;" placeholder="내용을 적어주세요.">${faqInfo.faqContent}</textarea> 
        </div> <br>
    <div align="center">
        <button type="submit" style="border-radius: 10px; border: none; background-color: #fc765d; color: white; width: 250px; height: 35px;">등록하기</button>
        
    </div>
     <br><br><br><br><br>
     </form>
	</div>
	<script>
		if(${faqInfo.faqKind eq 'nomal'}){
			document.getElementById("option1").setAttribute('selected','true');
		}else if(${faqInfo.faqKind eq 'restaurant'}){
            document.getElementById("option2").setAttribute('selected','true');
        }else{
            document.getElementById("option3").setAttribute('selected','true'); 
        }
	</script>
</body>
</html>