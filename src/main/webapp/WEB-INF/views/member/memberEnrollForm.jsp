<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>우.마.이</title>
<style>
.header{
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

#logo{
    position: absolute;
    top: -9px;
    cursor: pointer;
}

.noticeFaq{
    position: absolute;
    right: 350px;
    top: 3px;
}

.noticeFaq a{
    color: white;
    text-decoration: none;
}
.memberInfo{
    position: absolute;
    right: 0px;
    top: 0px;
}

.memberInfo img{
    right: -40px;
    top: -55px;
    width: 200px;
    height: 200px;
    cursor: pointer;
}

.memberMenu{
    display: none;
    position: absolute;
    right: 15px;
    bottom: -15px;
    flex-direction: column;
    background: white;
    border: 1px solid grey;
    border-radius: 20px;
    width: 90px;
    height: 110px;
    justify-content: center;
    align-items: center;
    
}
.memberMenu >a{
    font-size: 11px;
    margin-bottom: 6px;
}

html,
    body,
    .outer{
    background-color: rgb(255, 210, 210);
    width: 100%;
    height: 100%;
    position: relative;
    
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

.input-area{
    color: #fc765d;
    font-weight: bold;
    font-size: 24px;
    display: flex;
    justify-content: center;
    margin-bottom: 10px;
    margin-top: 10px;
    outline: 0;
    padding: 4px;
    border-radius: 9px;
}

.modal-title{
	
}

</style>

    <!-- BootStrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- BootStrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>

    <!-- Jquery 3.7.1-->
    <script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>


</head>

<body>

    <jsp:include page="../common/menubar.jsp" />

    <div class="outer"> <br>
        <h1 align="center" style="color: #fc765d;">회원가입</h1>
		<br>
        <div class="input-area">
        

        <form action="insert.me" method="post" id="enroll">
        <table align="center">
            <div align="right">ID
                    <input type="text" id="userId" name="userId" required placeholder="아이디를 입력해주세요.">
                    <button id="userIdCheck" onclick="idCheck()" type="submit" style="font-size: 15px; border: none; height: 35px; background-color: #fc765d; color: white;" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#myModal">
                    중복확인
                  </button>  
            </div> 
            <br>
            <div align="right">비밀번호                

                <input type="text" onkeyup="passwordInput1()" name="password" id="pwd1" placeholder="비밀번호를 입력해주세요."> <br>                            
          		<span id="pwdInput" style="font-size: 12px"></span>
                 
            </div>  
            <br>   
            <div align="right" >비밀번호 확인
                <input type="text" onkeyup="passwordInput2()" id="pwd2" required placeholder="비밀번호를 확인해주세요"><br>
            	 <span id="pwdInputCheck" style="font-size: 12px"></span>

            </div>
            <br>
            <div align="right" >이름
                <input type="text" name="userName" required placeholder="이름을 입력해주세요.">
            </div>
            <br>
            <div align="right">닉네임
                <input type="text" name="nicknName" required placeholder="닉네임을 입력해주세요.">
            </div>
            <br>
            <div align="right">전화번호
                <input type="text" name="phone" placeholder="전화번호를 입력해주세요.">
             </div>
            <br>
                <div align="right">이메일
            <input type="text" name="email" placeholder="이메일을 입력해주세요.">
            </div>
        </table>
    </div>

        <div align="center" >
            <button type="submit" id="id"  style="border-radius: 10px; border: none; background-color: #fc765d; color: white; width: 450px; height: 55px;" >회원가입</button>
        </div>
    </div>
    <!-- ID 중복확인 모달 -->
<div class="modal" id="myModal">
    <div class="modal-dialog">
      <div class="modal-content">
  
        <!-- ID 중복확인 모달 헤더 -->
        <div class="modal-header" style="color: #fc765d;">
          <h4 class="modal-title">아이디 중복확인</h4>
          <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
        </div>
        
       
        <!-- ID 중복확인 모달 바디 -->
        <input type="hidden" name="userId">
         <div class="modal-body">
            <div align="center"></div>
            
        <!-- Modal footer -->
        <div class="modal-footer">
          <button style="color: white; background-color: #fc765d;" type="button" class="btn" data-bs-dismiss="modal">OK</button>
        </div>
  
      </div>
    </div>
  </div>
 	
 	<script>

	 	function passwordInput1() {
	        const password1 = document.getElementById("pwd1").value;
	        console.log(password1)

	        if(password1.length < 8 || password1.length > 16 && length && /^(?=.*[a-zA-Z])(?=.*[0-9])(?=.*[!@#$%^&*?_]).{8,16}$/.test(pwd1)) {
	            document.getElementById('pwdInput').innerHTML = "8~16자의 영문 대/소문자, 숫자, 특수문자를 사용해 주세요.";
	            return false;
	        } else {
	            document.getElementById('pwdInput').innerHTML = "";
	            return true;
	        }
	    }
                
        function passwordInput2() {
            const password1 = document.getElementById("pwd1").value;
            const password2 = document.getElementById("pwd2").value;
            console.log(password1)
            console.log(password2)
            
            if(password1 != password2) {
                document.getElementById('pwdInputCheck').innerHTML = "비밀번호가 일치하지 않습니다.";
                return false;
            } else {
                document.getElementById('pwdInputCheck').innerHTML = "";
                return true;
            }
            
        }
        
        function idCheck(){
            const loginIdCheck = document.getElementById("userId").value;
        	console.log(loginIdCheck)
    		if (document.querySelector("#myModal input[name='userId']")) {
        		$.ajax({
                url: "selectId.me",
                type: "post",
                data : {
                	userId : loginIdCheck
                },
                success: function(result){ 
                	document.querySelector("#myModal .modal-body").innerHTML = "<span style=''>"+result+"</span>"
                },
                error: function(){
                	console.log("아이디 중복확인 ajax통신 실패")
                }
    		
        		})
        	
    		}else{
    			document.querySelector("#userId .modal-body").innerHTML = '<b align="center">아이디 중복확인</b>'
    			+ '<div>&nbsp;&nbsp;&nbsp;아이디<input type="text" name="userId"></div>'
    		}
    	}
        
        
        
  </script>

 
  
</form>
	
</body>
</html>