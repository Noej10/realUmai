<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
  html body{
		height: 100%;
		width: 100%;
		background-color: rgb(255, 210, 210);
	}
  .guideBox{
    position: relative;
    height: 100%;
		width: 100%;
    background-color: rgb(255, 210, 210);
    height: auto;
    min-height: 100%;
    padding-bottom: 20px;
  }
  #faqQuestion {
    display: flex;
    font-size: 1.3em;
    font-weight: 600;
    letter-spacing: -0.8px;
    padding: 30px 20px;
    cursor: pointer;
    justify-content: space-between;
  }
  #faqCategory{
    color:#945312;
    font-size:0.7em !important;
    font-weight:400;
  }
  #faqName{
    display:flex;
    gap:1em;
    align-items: center;
  }
  #faqbox{
    display: flex;
    justify-content: space-between;
  }
  #faqbox button{
    background-color: #fc765d;
    border: none;
    color: white;
    margin-bottom: 5px;
  }
  .recruitRotate2 {
    transform: rotate(0deg);
    transition: all ease 0.15s;
  }
  .recruitRotate {
    transform: rotate(180deg);
    transition: all ease 0.15s;
  }
  .slide{
    animation-duration: 0.01ms !important;
    animation-iteration-count: 1 !important;
    transition-duration: 0.01ms !important;
    scroll-behavior: auto !important;
  }
  .insertBtn-area{
    /* position: relative; */
    /* float: right; */
    display: flex;
    /* background: #fc765d; */
    /* height: 25px; */
    width: 100px;
    height: 100%;
    width: 100%;
    margin-bottom: 5px;
    /* justify-content: center; */
    background-color: rgb(255, 210, 210);
    
  }
  .insertBtn{
    position: relative;
    left: 90%;
    border: none;
    background-color: #fc765d;
    color: white;
  }
  .footer{
    width: 100%;
    display: block;
    background-color: #fc765d;
    padding-top: 10px;
    padding-left: 10px;
    height: 6rem;
    margin: 0;
    /* position : relative; */
    /* transform : translateY(-100%); */
  }
  .footer span{
    font-size: 13px;
    display: block;
    padding-bottom: 7px;
    font-weight: 300;
    word-break: keep-all;
  }
    </style>
<script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>

</head>
<body>
	<%@ include file="../common/menubar.jsp" %>
	
  <div class="guideBox">
    <ul>
          <div align="center">
          <br>
              <h2>자주 묻는 질문</h2>
          </div>
        
          <div class="slide">
              <div id="faqQuestion">
                <div id="faqName">
                  <p id="faqCategory">일반</p>
                  FAQ 질문 1 입니다.
                </div>
                  <img class="recruitRotate2"
                  src="resources/images/arrow_down.png" alt="화살표"
                  style="width:1em; height:auto; position:relative;">
                  
              </div>
            </div>
      
            <div id="content" style="display:none">
              <div id="faqbox">
                  <div id="faqboxItem">
                      안녕하세요1 반갑습니다
                  </div>
                  <!--관리자 로그인 시 보이는 곳-->
                  <div>
                    <button>수정</button>
                    <button>삭제</button>
                  </div>
              </div>
          </div>
          <div style="border-top: 1px solid #aaa"></div>
          
          <div class="slide">
              <div id="faqQuestion">
                <div id="faqName">
                  <p id="faqCategory">
                    일반
                  </p>
                  FAQ 질문 2 입니다.
                </div>
                <img class="recruitRotate2"
                  src="resources/images/arrow_down.png" alt="화살표"
                  style="width:1em; height:auto; position:relative;">
              </div>
            </div>

            <div id="content" style="display:none">
              <div id="faqbox">
                <div id="faqboxItem">
                  안녕하세요1 반갑습니다
                </div>
              <!--관리자 로그인 시 보이는 곳-->
                <div>
                  <button>수정</button>
                  <button>삭제</button>
                </div>
              </div>
            </div>
          <div style="border-top: 1px solid #aaa"></div>

          <div class="slide">
            <div id="faqQuestion">
              <div id="faqName">
                <p id="faqCategory">
                  일반
                </p>
                FAQ 질문 3 입니다.
              </div>
              <img class="recruitRotate2"
                src="resources/images/arrow_down.png" alt="화살표"
                style="width:1em; height:auto; position:relative;">
            </div>
          </div>

          <div id="content" style="display:none">
            <div id="faqbox">
              <div id="faqboxItem">
                안녕하세요1 반갑습니다
              </div>
            <!--관리자 로그인 시 보이는 곳-->
              <div>
                <button>수정</button>
                <button>삭제</button>
              </div>
            </div>
          </div>
        <div style="border-top: 1px solid #aaa"></div>

        <div class="slide">
          <div id="faqQuestion">
            <div id="faqName">
              <p id="faqCategory">
                일반
              </p>
              FAQ 질문 4 입니다.
            </div>
            <img class="recruitRotate2"
              src="resources/images/arrow_down.png" alt="화살표"
              style="width:1em; height:auto; position:relative;">
          </div>
        </div>

        <div id="content" style="display:none">
          <div id="faqbox">
            <div id="faqboxItem">
              안녕하세요1 반갑습니다
            </div>
          <!--관리자 로그인 시 보이는 곳-->
            <div>
              <button>수정</button>
              <button>삭제</button>
            </div>
          </div>
        </div>
      <div style="border-top: 1px solid #aaa"></div>
      </ul>

        <div class="insertBtn-area">
          <button class="insertBtn">faq 등록하기</button>
        </div>
      
  </div>

  <footer class="footer">
    
    <div>
      <span>주소 : 서울특별시 용산구 원효로90길 11, 더프라임타워<br/>
        TEL : 02-2038-4792<i></i>FAX: 02-2038-4794<br/>
        E-mail : ehddls1029@naver.com</span>
      
    </div>
  </footer>

  
	<script>
 
    $(document).on("click", ".slide", function () {
        if ($(this).next().css("display") == "none") {
            $(this).next().slideDown(250, "linear");
            $(this).find("img")[0].classList.add("recruitRotate");
            $(this).find("img")[0].classList.remove("recruitRotate2");
        } else {
            $(this).next().slideUp(250, "linear");
            $(this).find("img")[0].classList.remove("recruitRotate");
            $(this).find("img")[0].classList.add("recruitRotate2");
        }
    });

	</script>
</body>
</html>