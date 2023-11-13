<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 정보 수정 페이지</title>
<style>
#outer{
    background: rgb(255, 210, 210);
    height: 920px;
    padding: 250px;
}

td{
    color: rgb(252, 118, 93);
    font-weight: bold;
    font-size: 25px;
}

#btn {
    background: rgb(252, 118, 93);
    border-radius: 5px;
    border: none;
    color: white;
    width: 60px;
    height: 40px;
    margin-left: 10px;
    font-size: 20px;
}

.btn-pwd {
    background: rgb(252, 118, 93);
    border-radius: 5px;
    border: none;
    color: white;
    margin: 10px;
    width: 280px;
    height: 45px;
    font-size: 20px;
    margin-left: 37px;
}

.input {
    border: none;
    margin: 5px;
}

.pwd-back{
    background: rgb(255,210,210);
    border-radius: 80px;
}

.btn-cancel{
    background: rgb(39, 174, 96);
    border-radius: 5px;
}

.btn-change{
    background: rgb(252, 118, 93);
    border-radius: 5px;
}


</style>

</head>
<body style="margin: 0; padding: 0;">
    <%@ include file="../common/menubar.jsp" %>
  
    <div align="center" id="outer">
     
        <table>
            <tr>
                <td>ID</td>
                <td><input type="text" class="input"></td>
            </tr>
            
            <tr>
                <td>이름</td>
                <td><input type="text" class="input"></td>
            </tr>
            <tr>
                <td>닉네임</td>
                <td><input type="text" class="input"><button id="btn" onclick="updateForm">수정</button></td>
            </tr>
            <tr>
                <td>전화번호</td>
                <td><input type="tel" class="input"><button id="btn" onclick="updateForm">수정</button></td>
            </tr>
            <tr>
                <td>이메일</td>
                <td><input type="email" class="input"><button id="btn" onclick="updateForm">수정</button></td>
            </tr>
        </table>
       
        <div>
            <button type="button" class="btn-pwd" data-bs-toggle="modal" data-bs-target="#myModal">
                비밀번호수정
            </button>
        </div>
        
       
        <!-- value안에 값이 로그인한 유저의 정보로 들어가야 함 -->
        <form action="" method="post" id="updateForm">
        	<input type="hidden" name="nick" value="${m.nickname}">
        	<input type="hidden" name="phone" value="${m.phone}">
        	<input type="hidden" name="email" value="${m.email}">
        </form>
        
        <script>
        	function updateFormSubmit(num){
        		if(num === 1) {
        			$("#updateForm").attr('action', 'updateNick.me');
        		} else if{
        			$("updateForm").attr('action', 'updatePho.me');
        		} else {
        			$("updateForm").attr('action', 'updateEmail.me');
        		}
        		$('#updateForm').submit();
        	}
        </script>
           
    <!-- The Modal -->
<div class="modal" id="myModal">
    <div class="modal-dialog">
      <div class="modal-content">
  		<form action="updatePwd.me" method="post">   
        <!-- Modal Header -->
        <div class="modal-header">
          <h4 class="modal-title">비밀번호 변경</h4>
          <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
        </div>
  
        <!-- Modal body -->
        <div class="modal-body">

            <div>현재 비밀번호를 입력해주세요.</div>
            <input type="password">

            <div>변경할 비밀번호를 입력해주세요.</div>
            <input type="password">
            
            <div>변경할 비밀번호를 다시 입력해주세요.</div>
            <input type="password">

        </div>
  
        <!-- Modal footer -->
        <div class="modal-footer">
          <div><button type="button" class="btn-cancel" data-bs-dismiss="modal">취소</button></div>
          <div><button type="button" class="btn-change" data-bs-dismiss="modal">비밀번호 변경</button></div>
        </div>
  		</form>
      </div>
    </div>
  </div>  
</body>
</html>