<%@page import="com.umai.member.model.vo.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	String contextPath = request.getContextPath();
    
    	Member loginUser = (Member)session.getAttribute("loginUser");
    //로그인 시도 전 menubar.jsp 로딩시 해당객체 : null
    //로그인 성공 후 menubar.jsp 로딩시 해당객체 : 로그인에 성공한 회원의 정보
    
    	String alertMsg = (String)session.getAttribute("alertMsg");
    // 서비스 요청 전 menubar.jsp로딩시 : null
    // 서비스 요청 후 menubar.jsp로딩시 : alert로 띄워줄 메세지 존재
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>우리 마음 속 이런 맛집</title>

<style>
    .main{
        display: flex;
        background: #fc765d;
        width: 100vw;
        height: 100vh;
        justify-content: center;
        align-items: center;

    }

    .plate1{
        display: inline-block;
        background: #ffd2d2;
        width: 450px;
        height: 550px;
        border-radius: 25px;
        position: relative;
       
    }

    .plate2{
        display: flex;
        background: white;
        width: 87%;
        height: 90%;
        border-radius: 25px;
        justify-content: center;
        align-items: center;
        position: absolute;
        right: 27px;
        top: 25px;
        


    }
    .plate2 img{
        width: 60%;
        position: absolute;
        top: -20px;
       
    }
    .loginArea{
        color: #fc765d;
        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: center;
        align-content: center;
        position: relative;
        width: 300px;
        
    }
    .loginArea form{
        position: relative;
        
    }

    .loginArea input{
        margin-top: 10px;
    
    }

    #loginBtn{
        background: #fc765d;
        border: none;
        width: 180px;
        height: 40px;
        position: absolute;
        bottom: -135px;
        left: -85px;
        margin-top: 5px;
    }

    #sub-menu{
        position: absolute;
        display: flex;
        width: 300px;
        right: -27px;
        bottom: -190px;

    }

    #input-id{
        position: absolute;
        left: -160px;
        width:300px;
        bottom:-25px;
    }

    #input-pw{
        position: absolute;
        left: -160px;
        width:300px;
        bottom:-70px;
    }

    .modal-body{
        display: flex;
        justify-content: center;
        flex-direction: column;
    }

</style>

    <!-- BootStrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- BootStrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>

    <!-- Jquery 3.7.1-->
    <script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>

</head>

<body class="main">
	<%if(alertMsg != null){ %>
		<script>
			alert("<%=alertMsg%>");
		</script>
		<%session.removeAttribute("alertMsg"); %>
	<%} %>
        <div class="plate1" align="center">
            <div class="plate2">
                <img src="/Umai/resources/images/mainLogo.png" alt="logo">
                <br><br><br>
                <div class="loginArea" >
                    <form action="login.me" method="post">
                        <div id="input-id" >
                            <strong>&nbsp;ID</strong>
                            <input type="text" style="margin-left: 3px;" name="userId">
                        </div>
                        <div id="input-pw">
                            <strong>PW</strong>
                            <input type="password" name="password">
                        </div>
                        <div >
                            <button id="loginBtn" type="submit" class="btn btn-sm btn-primary">
                               로그인
                            </button>
                        </div>

                    </form>
                     <div id="sub-menu">
                    
                    <!-- 회원 가입창으로 이동-->
                    <button onclick="location.href='EnrollForm.me'" style="border: none; background: white; font-size: 13px;" type="button">
                        회원가입
                    </button>    

                    <!-- ID 찾기 모달 버튼 -->
                    <button style="border: none; background: white; font-size: 13px;" type="button" data-bs-toggle="modal" data-bs-target="#findId">
                    아이디 찾기
                    </button>
                
                    <!-- ID 찾기 모달 -->
                    <div class="modal" id="findId">
                        <div class="modal-dialog">
                        <div class="modal-content">
                    
                            <!-- ID 찾기 모달 헤더 -->
                            <div class="modal-header">
                            <h4 class="modal-title">아이디 찾기</h4>
                            <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                            </div>
                    
                            <!-- ID 찾기 모달 바디 -->
                            <div class="modal-body">
                                <b>정보를 입력해주세요.</b>            
                                 <div>
                                     &nbsp;&nbsp;&nbsp;이름<input type="text" name="userName">
                                 </div>
                                 <div>
                                     이메일<input type="text" name="userEmail">
                                 </div>
                             
                           </div>
                   
                           <!-- ID 찾기 모달 푸터 -->
                           <div class="modal-footer">
                               <input type="button" class="btn btn-sm" onclick="checkId()" style="background: #fc765d; color: white; margin-bottom: 10px;" value="아이디 찾기">
                               <button type="button" class="btn btn-sm btn-danger" data-bs-dismiss="modal">닫기</button>
                           </div>
                        </div>
                    </div>
                </div>
                <script>
                	function checkId(){
                		if (document.querySelector("#findId input[name='userName']")) {
	                		$.ajax({
	                        url: "findid.me",
	                        type: "post",
	                        data : {
	                           	userName: document.querySelector("#findId input[name='userName']").value,
	                           	userEmail: document.querySelector("#findId input[name='userEmail']").value
	                        },
	                        success: function(res){ 
	                        	document.querySelector("#findId .modal-body").innerHTML = "<h3>"+res+"</h3>"
	                        	        console.log(res)
	                        	
	                        },
	                        error: function(){
	                        	console.log("댓글 목록 조회 중 ajax통신 실패")
	                        }
                		
                    		})
                    	
                		}else{
                			document.querySelector("#findId .modal-body").innerHTML = '<b>정보를 입력해주세요.</b>'
                			+ '<div>&nbsp;&nbsp;&nbsp;이름<input type="text" name="userName"></div>'
                			+ '<div>이메일<input type="text" name="userEmail"></div>'
                		}
                	}
                </script>
                <!-- PW 찾기 모달 버튼 -->
                <button style="border: none; background: white; font-size: 13px;" type="button" data-bs-toggle="modal" data-bs-target="#findPw">
                    비밀번호 찾기
                    </button>
                
                    <!-- PW 찾기 모달 -->
                    <div class="modal" id="findPw">
                        <div class="modal-dialog">
                        <div class="modal-content">
                    
                            <!-- PW 찾기 모달 헤더 -->
                            <div class="modal-header">
                            <h4 class="modal-title">비밀번호 찾기</h4>
                            <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                            </div>
                    
                            <!-- PW 찾기 모달 바디 -->
                            <div class="modal-body">
                                <b>정보를 입력해주세요.</b>
                                <form action="">
                                <div>
                                    아이디<input type="text">
                                </div>
                                <div>
                                    &nbsp;&nbsp;&nbsp;이름<input type="text">
                                </div>
                                <div>
                                    이메일<input type="text">
                                </div>
                            </div>
                    
                            <!-- PW 찾기 모달 푸터 -->
                            <div class="modal-footer">
                                <input type="submit" class="btn btn-sm" style="background: #fc765d; color: white; margin-bottom: 10px;" value="비밀번호 찾기">
                                <button type="button" class="btn btn-sm btn-danger" data-bs-dismiss="modal">닫기</button>
                            </div>
                            </form>
                        </div>
                    </div>
                </div>


            </div>
        </div>

</body>
</html>