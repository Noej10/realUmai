<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 페이지</title>
<style>

#outer{
    background: rgb(255, 210, 210);
    height: 920px;
    padding-top: 50px;
}

li{
    list-style: none;
    background-color: white;
}

#outer > h1{
    text-align: center;
    font-weight: bold;
}

.num {
    text-align: left;
    padding-left: 20px;
    font-size: 40px;
    font-weight: bold;
}

button {
    background: rgb(252, 118, 93);
    border-radius: 5px;
    border: none;
    color: white;
    margin: 10px;
    width: 230px;
    height: 40px;
    font-size: 25px;
    margin-left: 30px;
}

.ann-enroll{
    text-align: right;
    margin-right: 10px;
}

#ann-btn{
    border-radius: 5px;
    font-weight: bold;
}

.ann-link-desc{
    font-size: 23px;
    font-weight: 500;
    line-height: 1.435;
    color: #222;
    width: calc(100% - 100px - 123px);
}

.ann-link-desc .desc {
    width: 86%;
    padding-top: 10px;
    font-size: 16px;
    line-height: 1.875;
    color: #555;
    overflow: hidden;
    text-overflow: ellipsis;
    white-space: nowrap;
}

.ann-link-num{
    padding-top: 20px;
    align-self: baseline;
    width: 100px;
    padding-top: 39px;
    font-size: 40px;
    font-weight: 500;
    color: #222;
    text-align: center;
    line-height: 1;
}

.ann-link-desc .tit {
    font-size: 23px;
    font-weight: 500;
    line-height: 1.435;
    color: #222;
    padding-top: 30px;
    display: inline-block;
}

.ann-link {
    display: flex;
    align-items: center;
    background-color: #fff;
    border: 3px solid #fff;
}

.page_wrap {
	text-align:center;
	font-size:0;
 }
.page_nation {
	display:inline-block;
}
.page_nation .none {
	display:none;
}
.page_nation a {
	display:block;
	margin:0 3px;
	float:left;
	border:1px solid #e6e6e6;
	width:28px;
	height:28px;
	line-height:28px;
	text-align:center;
	background-color:#fff;
	font-size:13px;
	color:#999999;
	text-decoration:none;
}
.page_nation .arrow {
	border:1px solid #ccc;
}

</style>

</head>

<body style="margin: 0; padding: 0;">

	 <%@ include file="../common/menubar.jsp" %>
	 
    <div id="outer">
    <h1>공지사항</h1>
    <form action="">
        
        <ul>
            <li class="ann-list">
    <a href="" class="ann-link">
    <div class="ann-link-num" style="text-decoration: none;">1</div>
    <div class="ann-link-desc">
        <div>
            <h4 class="tit">공지사항입니다.<br>
                환영합니다</h4>
        </div>
        <div>
            <img src="resources/images/arrow-icon.png">
        </div>
        
        <p class="desc"></p>
    </div>
    </a>
    </li>
        </ul>

        <ul>
            <li class="ann-list">
    <a href="" class="ann-link">
    <div class="ann-link-num" style="text-decoration: none;">2</div>
    <div class="ann-link-desc">
        <div>
            <h4 class="tit">공지사항입니다.<br>
                환영합니다</h4>
        </div>
        <div>
            <img src="">
        </div>
        
        <p class="desc"></p>
    </div>
    </a>
    </li>
        </ul>

        <ul>
            <li class="ann-list">
    <a href="" class="ann-link">
    <div class="ann-link-num" style="text-decoration: none;">3</div>
    <div class="ann-link-desc">
        <div>
            <h4 class="tit">공지사항입니다.<br>
                환영합니다</h4>
        </div>
        <div>
            <img src="">
        </div>
        
        <p class="desc"></p>
    </div>
    </a>
    </li>
        </ul>
        
         <div class="ann-enroll">
            <button type="submit" id="ann-btn">공지사항 등록</button>
        </div>
         
         <div class="page_wrap">
            <div class="page_nation">
               <a class="arrow prev" href="#"></a>
               <a href="#" class="active">1</a>
               <a href="#">2</a>
               <a href="#">3</a>
               <a href="#">4</a>
               <a class="arrow next" href="#"></a>
            </div>
         </div>
        
          

    </form>

    </div>
    
</body>
</html>