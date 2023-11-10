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
    width: 100px;
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



</style>

    <!-- BootStrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- BootStrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>

    <!-- Jquery 3.7.1-->
    <script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>

</head>








<body style="margin: 0; padding: 0;">

    <div class="header">
        <div>
            <img id="logo" src="resources/images/mainLogoWhiteFinal.png" alt="umaiLogo">
        </div>
        <div align="center" style="color: white;">
            <form action="">
                <input type="radio" name="searchType" checked>지역별
                &nbsp;&nbsp;&nbsp;
                <input type="radio" name="searchType">식당별
                &nbsp;&nbsp;
                <input type="text" style="width: 30%; height: 30px;" placeholder="식당 이름이나 지역명으로 검색해보세요.">
                <input type="submit" class="btn btn-sm btn-primary" value="검색">
            </form>    
        </div>
        <div class="noticeFaq">
            <a href="">공지사항</a>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <a href="">FAQ</a>
        </div>
        <div class="memberInfo">
            <img src="resources/images/memberImage.png" alt="userIcon" onclick="openMemberMenu()">
        </div>
        <div id="memberMenu" class="memberMenu">
            <a href="">회원정보 수정</a>
            <a href="">로그아웃</a>
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

    </script>
</body>
</html>