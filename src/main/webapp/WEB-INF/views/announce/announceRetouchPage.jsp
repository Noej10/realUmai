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

        <form action="update.an" method="post">
        	<input type="hidden" name="annNum" value="${a.annNum }">
            <div>
                <input type="text" name="title" id="input" size="99" value="${a.title}">
            </div>

            <div>
                <textarea style="resize:none" name="detail" cols="100" rows="20">${a.detail}</textarea>
            </div>

            <div>
                <button type="submit" id="btn">수정하기</button>
            </div>
        </form>
    </div>
    <jsp:include page="../common/footer.jsp"></jsp:include>
</body>
</html>