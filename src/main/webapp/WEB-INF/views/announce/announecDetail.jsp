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
		
        <form action="retouch.an" method="post">
         <div align="center"> 
            
            <textarea input type="text" id="title" style=" resize:none; font-weight: bold; width: 500px; " value="${a.title}"></textarea><br>
            <textarea input type="text" id="detail" style=" resize:none; font-weight: bold; width: 500px; height: 250px;" value="${a.detail}"></textarea>
            
            <br><br>

        </div>
        <div align="center">

            <button type="button" onclick="announceListBtn()" style="border-radius: 10px; border: none; background-color: #fc765d; color: white; width: 90px; height: 35px;" >목록으로</button>
            
            <button type="submit" onclick="annupdateBtn()" style="border-radius: 10px; border: none; background-color: #fc765d; color: white; width: 90px; height: 35px;"> 수정하기</button>
            
        </div>
        
        <br><br>
        
        <script>

       	 $(document).ready(function() {
        	  $('#retouchBtn').on('click', function() {
        	    $.ajax({
        	      url: '/retouch.an' + $(this).data('userId'),
        	      data: {
        	    	title: $('#title').val()
        	        detail: $('#detail').val()
        	      },
        	      success: function(data) {
        	    	$('#title').html(data);
        	        $('#detail').html(data);
        	      },
        	      error: function() {
        	        alert('ajax통신 실패');
        	      }
        	    });
        	  });
        	});
        
        	
        </script>

        	function announceListBtn() {
        		location.href = "announceList.an";
        	}
        	
        	function annupdateBtn() {
        		if($("#userId").val() == "admin") {
        			location.href = "announceList.an";
        		} else {
        			alert("관리자만 수정가능합니다.");
        		}
        		
        		
        	}
        </script>
       
    </form>
    </div>
</body>
</html>