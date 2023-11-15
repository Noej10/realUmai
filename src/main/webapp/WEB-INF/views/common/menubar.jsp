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
    right: 35px;
    top: 8px;
}

.memberInfo img{
    right: -40px;
    top: -55px;
    width: 50px;
    height: 50px;
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

</style>

    <!-- BootStrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- BootStrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>

    <!-- Jquery 3.7.1-->
    <script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
	
	<!-- 폰트어썸 -->
	<link href="//netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.css" rel="stylesheet">

</head>

<body style="margin: 0; padding: 0;">
	<%if(alertMsg != null){ %>
		<script>
			alert("<%=alertMsg%>");
		</script>
		<%session.removeAttribute("alertMsg"); %>
	<%} %>
    <div class="header">
        <div>
			
            <img id="logo" src="/Umai/resources/images/mainLogoWhiteFinal.png" onclick="tomain()" alt="umaiLogo">

        </div>
        <div id="search-area" align="center" style="color: white;">
            <form action="search.bo" method="get">
            	<input type="hidden" name="cPage" value="1">
                <input id="radRegion" type="radio" name="searchType"  value="sRegion" checked>지역별
                &nbsp;&nbsp;&nbsp;
                <input id="radStore" type="radio" name="searchType" value="sStore">식당별
                &nbsp;&nbsp;
                <input type="text" name="searchInput" value="${searchInput}" style="width: 30%;  height: 30px;" placeholder="식당 이름이나 지역명으로 검색해보세요.">
                <button type="submit" class="btn btn-sm btn-primary" >검색</button>
            </form>    
        </div>
        <cif test="${ not empty searchType }">
        <script>
        	window.onload = function(){
        		const inp = document.querySelector("#search-area input[value=${searchType}]");
        		inp.setAttribute("selected", true);
        	}
        </script>
        </cif>
        
        <div class="noticeFaq">
            <a href="announceList.an?cPage=1">공지사항</a>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <a href="faqList.faq?cPage=1">FAQ</a>
        </div>
        <div class="memberInfo">

            <img src="/Umai/resources/images/memberIcon.png" alt="userIcon" onclick="openMemberMenu()">


        </div>
        <div id="memberMenu" class="memberMenu">
            <a href="update.me" style="border:none; font-size:10px; background:none;" onclick="updateMember(1)">회원정보 수정</a>
            
            <form action="" method="post" id="updateForm">
	            <input type="hidden" name="userId" value="${m.userId}">
	            <input type="hidden" name="userName" value="${m.userName}">
            </form>
            
            <a href="logout.me">로그아웃</a>

            <a href="">회원탈퇴</a>
        </div>
    </div>

    <script>
        function openMemberMenu(){
            const memberMenu = document.querySelector("#memberMenu");
            
            if(memberMenu.style.display !== "none"){
                memberMenu.style.display = "none";
            }else{
                memberMenu.style.display = "flex";
            }
        }
		
        function updateMember(num){
        	if(num === 1) {
        		$("#updateForm").attr('action', 'update.me');
        	} else {
        		$("#updateForm").attr('action', 'update.me');
        	}
        	$('#updateForm').submit();
        }
    </script>

        <div class="modal" id="findId">
            <div class="modal-dialog">
            	<div class="modal-content">

                
                	<div class="modal-header"  style="background: #fc765d;">
                		<h4 class="modal-title" style="color: white;">탈퇴 후 복구가 어렵습니다 <br> 정말로 탈퇴하시겠습니까?</h4>
                		<button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                	</div>

                <form id="delete-mem" action="<%=contextPath %>/delete.me" method="post">
                <div class="modal-body" style="background-color: rgb(255, 210, 210);;">
                    <b>회원 탈퇴를 원하실 경우 아래의<br>  문구와 비밀번호를 입력하세요</b>
                    <br> <br>
                    <div id="word">회원 탈퇴시 계정 복구가 불가한 점에 동의합니다</div>
                    
                        <div>
                            <input type="text" size="50" name="wordCheck">
                            <span style="background-color: red; border-radius: 10%; color: white; cursor: pointer;" onclick="checkdelete()">확인</span>
                        </div>
                        <br><br>
                        <div>
                            비밀번호 입력
                            <br>
                            <input type="text" size="50" name="passCheck">
                            <input type="hidden" value="${loginUser.userId}" name="userId">
                        </div>
	                    <script>
	                    function checkdelete(){
	                        let sentense = document.querySelector('#word')
	                        let firstCheck = document.querySelector("#delete-mem input[name=wordCheck]")
	                        let delbtn = document.querySelector(".modal-footer button[type=submit]")
	                        if(sentense.innerText !== firstCheck.value){
	                            alert("비밀번호거 일치하지 않습니다")
	                        } else{
	                        	firstCheck.disabled = true;
	                            delbtn.removeAttribute("disabled");
	                        }
	                    }
	                    </script>
      			</div>
                <div class="modal-footer" style="background: #fc765d;">
                    <input type="button" data-bs-dismiss="modal" class="btn btn-sm" style="color: white;" value="취소">
                    <button type="submit" class="btn btn-sm btn-danger" disabled>회원탈퇴</button>
                </div>
            	</form>
        </div>
        </div>
       </div>
        <script>
        const withdrawalBtn = document.querySelector('#memberMenu a:nth-child(3)');

        withdrawalBtn.setAttribute("data-bs-toggle", "modal");
        withdrawalBtn.setAttribute("data-bs-target", "#findId");

        function tomain(){
            location.href = '<%=contextPath %>/tomain';
        }
     
        </script>
</body>
</html>