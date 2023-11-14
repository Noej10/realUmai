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
        <h1 align="center" style="color: #fc765d;">공지사항</h1>
        <table>
            <tr>
                <td>ID</td>
                <td><input type="text" class="input" readonly value="${loginUser.userId}"></td>
            </tr>
            
            <tr>
                <td>이름</td>
                <td><input type="text" class="input" readonly value="${loginUser.name}"></td>
            </tr>
            <tr>
                <td>닉네임</td>
                <td>
	                <input id="nickname" type="text" class="input" value="${loginUser.nickname}">
	                <button  class="btn"  onclick="updateFormSubmit(1)">수정</button>
                </td>
            </tr>
            <tr>
                <td>전화번호</td>
                <td>
                	<input id="phone" type="tel" class="input" value="${loginUser.phone}">
                	<button class="btn" onclick="updateFormSubmit(2)">수정</button>
               	</td>
            </tr>
            <tr>
                <td>이메일</td>
                <td>
	                <input id="email"type="email" class="input" value="${loginUser.email}">
	                <button class="btn" onclick="updateFormSubmit(3)">수정</button>
                </td>
            </tr>
        </table>
       
        <div>
            <button type="button" class="btn-pwd" data-bs-toggle="modal" data-bs-target="#myModal">
                비밀번호수정
            </button>
        </div>
        
       
        <!-- value안에 값이 로그인한 유저의 정보로 들어가야 함 -->
        <form action="" method="post" id="retouchMember">
        	<input id="upnickname" type="hidden" name="nick" value="${loginUser.nickname}">
        	<input id="upphone" type="hidden" name="phone" value="${loginUser.phone}">
        	<input id="upemail" type="hidden" name="email" value="${loginUser.email}">
        	<input type="hidden" name="password" value="${loginUser.password}">
        </form>
        
        <script>
        	function updateFormSubmit(num){
        		if(num === 1) {
        			document.querySelector("#retouchMember").action = "updateNick.me";
        			document.querySelector('#upnickname').value = document.querySelector('#nickname').value;
        			
        		//	$("#retouchMember").attr('action', 'updateNick.me');
        		} else if(num === 2){
        			document.querySelector("#retouchMember").action = "updatePho.me";
        			document.querySelector('#upphone').value = document.querySelector('#phone').value;
        		//	$("#retouchMember").attr('action', 'updatePho.me');
        		} else {
        			document.querySelector("#retouchMember").action = "updateEmail.me";
        			document.querySelector('#upemail').value = document.querySelector('#email').value;
        		//	$("#retouchMember").attr('action', 'updateEmail.me');
        		}
        		
        		$('#retouchMember').submit();
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
            <input type="password" name="originPwd">

            <div>변경할 비밀번호를 입력해주세요.</div>
            <input type="password" name="changePwd">
            
            <div>변경할 비밀번호를 다시 입력해주세요.</div>
            <input type="password" name="checkPwd">

        </div>
  
        <!-- Modal footer -->
        <div class="modal-footer">
          <div><button onclick="location.href='boardPage.jsp'" type="button" style="border: none; background-color: #fc765d; color: white;" class="btn btn-small btn-primary" data-bs-dismiss="modal">취소</button></div>
          <div><button onclick="location.href='update.me'" type="submit" style="border: none; background-color: #fc765d; color: white;" class="btn btn-small btn-primary" data-bs-dismiss="modal">비밀번호 변경</button></div>
        </div>
  		</form>
      </div>
    </div>
  </div>  
</body>
</html>