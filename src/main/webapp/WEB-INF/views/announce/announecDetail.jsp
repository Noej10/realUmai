	<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    textarea{
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
        <br>
        <h1 align="center" style="color: #fc765d;">공지사항</h1>
		
        <form action="detail.an" method="post">
         <div align="center"> 
            
            <textarea input type="text" style=" resize:none; font-weight: bold; width: 500px; " placeholder="공지사항 제목입니다."></textarea><br>
            <textarea input type="text" style=" resize:none; font-weight: bold; width: 500px; height: 250px;" placeholder="공지사항 내용입니다."></textarea>
            
            <br><br>

        </div>
        <div align="center">
            <button type="button" style="border-radius: 10px; border: none; background-color: #fc765d; color: white; width: 90px; height: 35px;" >목록으로</button>
            
            <button type="submit" style="border-radius: 10px; border: none; background-color: #fc765d; color: white; width: 90px; height: 35px;"> 수정하기</button>
            
        </div>
        
        <br><br>
    </form>
    </div>
    <jsp:include page="../common/footer.jsp"></jsp:include>
</body>
</html>