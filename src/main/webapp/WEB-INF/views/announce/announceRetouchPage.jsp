<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 수정</title>
<style>

#outer{
    background: rgb(255, 210, 210);
    height: 920px;
    padding-top: 50px;
    display: flex;
    flex-direction: column;
    justify-content: center;
}

#btn {
    background: rgb(252, 118, 93);
    border-radius: 5px;
    border: none;
    color: white;
    width: 310px;
    height: 50px;
    font-size: 25px;
    margin: 20px;
}

#input{
    margin-bottom: 20px;
    height: 45px;
}

</style>

</head>
<body style="margin: 0; padding: 0;">
	 <%@ include file="../common/menubar.jsp" %>
	 
	 <div id="outer" align="center">

        <p style="font-size: 50px; margin-bottom: 4rem;">공지사항 수정</p>

        <form action="retouch.an" method="post">
            <div>
                <input type="text" id="input" size="99" placeholder="제목을 입력해주세요">
            </div>

            <div>
                <textarea cols="100" rows="20"></textarea>
            </div>

            <div>
                <button type="submit" id="btn">수정하기</button>
            </div>
        </form>
    </div>
</body>
</html>