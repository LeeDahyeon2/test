<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lnag="ko">
    <head>
        <meta charset="UTF-8">
        <title>Eazy Home : 회원가입</title>
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="${pageContext.request.contextPath}/resources/css/member_css.css" rel="stylesheet"/> 
        <!-- Favicon-->
        <link href="${pageContext.request.contextPath}/resources/assets/favicon.ico" rel="icon" type="image/x-icon"/> 
        
		<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
        <script>	//회원가입 유효성 검사 및 지도 api
       		 	function sample6_execDaumPostcode() {	//지도 api
            			new daum.Postcode({
                				oncomplete: function (data) {
                    				// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                    				// 각 주소의 노출 규칙에 따라 주소를 조합한다.
                    				// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                    					var addr = ''; // 주소 변수
                    					var extraAddr = ''; // 참고항목 변수

                    					//사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                    					if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                        					addr = data.roadAddress;
                    					} else { // 사용자가 지번 주소를 선택했을 경우(J)
                        					addr = data.jibunAddress;
                   				 	}

                    					// 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                    					if (data.userSelectedType === 'R') {
                        				// 법정동명이 있을 경우 추가한다. (법정리는 제외)
                        				// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                        					if (data.bname !== '' && /[동|로|가]$/g.test(data.bname)) {
                            						extraAddr += data.bname;
                        					}
                        					// 건물명이 있고, 공동주택일 경우 추가한다.
                        					if (data.buildingName !== '' && data.apartment === 'Y') {
                            						extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                        					}
                        					// 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                        					if (extraAddr !== '') {
                            						extraAddr = ' (' + extraAddr + ')';
                        					}
                        					// 조합된 참고항목을 해당 필드에 넣는다.
                        					document.getElementById("sample6_extraAddress").value = extraAddr;

                    					} else {
                       					 	document.getElementById("sample6_extraAddress").value = '';
                    					}

                    					// 우편번호와 주소 정보를 해당 필드에 넣는다.
                    					document.getElementById('sample6_postcode').value = data.zonecode;
                    					document.getElementById("sample6_address").value = addr;
                    					// 커서를 상세주소 필드로 이동한다.
                    					document.getElementById("sample6_detailAddress").focus();
                				}
            			}).open();
        			}
    		</script>
    		<script src='./js/script.js'></script>
		<script language="javascript">	//회원가입 유효성검사
			function checkAll() {
        				if (!checkMail(form.my_mail.value)) {
            				return false;
        				}
        				if (!checkPassword(form.my_pwd.value,form.my_pwd2.value)) {
            				return false;
        				}
        				
        				if (!checkName(form.my_name.value)) {
            				return false;
        				}
        				if (!checkNic(form.my_nic.value)) {
            				return false;
        				}
        				if (!checkBirth(form.my_year.value)) {
            				return false;
        				}
        				if (!checkBirthMonth(form.my_month.value)) {
            				return false;
        				}
        				if (!checkBirthDay(form.my_day.value)) {
            				return false;
        				}
        				if (!checkUserPhone(form.my_phone.value)) {
            				return false;
        				}
        				if (!checkAddress(form.address.value)) {
            				return false;
        				}
        				if (!checkAddress2(form.address2.value)) {
            				return false;
        				}
 			}

			function checkExistData(value, dataName) {
        				if (value == "") {
            				alert(dataName + " 입력해주세요");
            				return false;
        				}
        				return true;
    			}

			function checkUserPhone(id) { //아이디 검사
        				//Id가 입력되었는지 확인하기
       				 if (!checkExistData(id,"핸드폰 번호를"))
           					 return false;
 
       			  var patternPhone = /01[016789]-[^0][0-9]{2,3}-[0-9]{3,4}/; //핸드폰 번호 유효성 검사
       				 if (!patternPhone.test(id)) {
           					 alert("010-1234-5678 형식으로만 입력해야합니다");
           					 form.my_phone.value = "";
            				form.my_phone.focus();
            				return false;
        				}
        				return true; //확인이 완료되었을 때
    			}

			function checkPassword(password1, password2) { //비밀번호, 비밀번호 확인 검사
        				//비밀번호가 입력되었는지 확인하기
        				if (!checkExistData(password1, "비밀번호를"))
            				return false;
        				//비밀번호 확인이 입력되었는지 확인하기
       	 			if (!checkExistData(password2, "비밀번호 확인을"))
            				return false;

       				 var password1RegExp = /^[a-zA-z0-9]{4,12}$/; //비밀번호 유효성 검사
        				if (!password1RegExp.test(password1)) {
           					 alert("비밀번호는 4~12의 영문 대소문자와 숫자로만 입력해야합니다");
            				 form.my_pwd.value = "";
            				 form.my_pwd2.value = "";
            				 form.my_pwd.focus();
            				return false;
        				}
       				 //비밀번호와 비밀번호 확인이 맞지 않다면..
        				if (password1 != password2) {
            				alert("두 비밀번호가 맞지 않습니다.");
            				form.my_pwd2.value = "";
            				form.my_pwd2.focus();
           					return false;
        				}
        				return true; //확인이 완료되었을 때
   			 }

			function checkMail(mail) {			//이메일 검사
        				//mail이 입력되었는지 확인하기
       		 		if (!checkExistData(mail, "이메일을"))
            				return false;
 
        				var emailRegExp = /^[A-Za-z0-9_]+[A-Za-z0-9]*[@]{1}[A-Za-z0-9]+[A-Za-z0-9]*[.]{1}[A-Za-z]{1,3}$/;
        				if (!emailRegExp.test(mail)) {
            				alert("이메일 형식이 올바르지 않습니다");
            				form.my_mail.value = "";
            				form.my_mail.focus();
            				return false;
        				}
        				return true; //확인이 완료되었을 때
    			}

			function checkName(name) {
       	 			if (!checkExistData(name, "이름을"))
            				return false;
 
        				var nameRegExp = /^[가-힣]{2,4}$/;
        				if (!nameRegExp.test(name)) {
            				alert("이름이 올바르지 않습니다.");
            				form.my_name.value = "";
            				form.my_name.focus();
            				return false;
        				}
        				return true; //확인이 완료되었을 때
    			}
			function checkNic(nic) {
   	 			if (!checkExistData(nic, "님네임을"))
        				return false;

    				return true; //확인이 완료되었을 때
			}

			function checkBirth(year) {
				var currentDate=new Date();
       	 			if (!checkExistData(year, "생년월일을"))
            				return false;
				
				if ((year<1900)||(year>currentDate.getFullYear())){
					alert("유효하지 않은 생년월일입니다.");
            				form.my_year.value = "";
            				form.my_year.focus();
            				return false;
				}
				return true;
			}
			function checkBirthMonth(month) {
       	 			if (!checkExistData(month, "생년월일을"))
            				return false;
				
				if ((month<0)||month>12||month.includes("월")){
					alert("유효하지 않은 생년월일입니다.");
            				form.my_month.value = "";
            				form.my_month.focus();
            				return false;
				}
				return true;
			}
			function checkBirthDay(day) {
   	 			if (!checkExistData(day, "생년월일을"))
        				return false;
			
			if ((day<0)||day>31||day.includes("일")){
				alert("유효하지 않은 생년월일입니다.");
        				form.my_day.value = "";
        				form.my_day.focus();
        				return false;
			}
			return true;
		}

			function checkAddress(address) {
        				if (!checkExistData(address, "주소를")) {
            				return false;
        				} else
            			return true;
    			}

			function checkAddress2(address) {
				if (!checkExistData(address, "상세주소를")) {
    				return false;
				} else
    			return true;
		}
		</script>
        
        
    </head>
    <body>
        <!-- header -->
        <div id="header">
            <h2 class="mt-0">Eazy Home 회원가입</h2>
            <a href="https://nid.naver.com/user2/V2Join.nhn?m=agree#agreeBottom" target="_blank" title="Eazy Home 회원가입 페이지 보러가기"></a>
        </div>

		<form name="form" action="./signup" method="post" onsubmit="return checkAll()">
        <!-- wrapper -->
        <div id="wrapper">

            <!-- content-->
            <div id="content">

                <!-- ID -->
                <div>
                    <h3 class="join_title">
                        <label for="id">이메일</label>
                    </h3>
                    <span class="box int_id">
                        <input type="text" name="my_mail" class="int">
                        <span class="step_url">@naver.com</span>
                    </span>
                    <span class="error_next_box"></span>
                </div>

                <!-- PW1 -->
                <div>
                    <h3 class="join_title"><label for="pswd1">비밀번호</label></h3>
                    <span class="box int_pass">
                        <input type="password" name="my_pwd" class="int" maxlength="20">
                        <span id="alertTxt">사용불가</span>
                    </span>
                    <span class="error_next_box"></span>
                </div>

                <!-- PW2 -->
                <div>
                    <h3 class="join_title"><label for="pswd2">비밀번호 재확인</label></h3>
                    <span class="box int_pass_check">
                        <input type="password" name="my_pwd2" class="int" maxlength="20">
                    </span>
                    <span class="error_next_box"></span>
                </div>

                <!-- NAME -->
                <div>
                    <h3 class="join_title"><label for="name">이름</label></h3>
                    <span class="box int_name">
                        <input type="text" name="my_name" class="int" maxlength="20">
                    </span>
                    <span class="error_next_box"></span>
                </div>
                
                <!-- NIC -->
                <div>
                    <h3 class="join_title"><label for="name">닉네임</label></h3>
                    <span class="box int_name">
                        <input type="text" name="my_nic" class="int" maxlength="20">
                    </span>
                    <span class="error_next_box"></span>
                </div>

                <!-- BIRTH -->
                <div>
                    <h3 class="join_title"><label for="yy">생년월일</label></h3>

                    <div id="bir_wrap">
                        <!-- BIRTH_YY -->
                        <div id="bir_yy">
                            <span class="box">
                                <input type="text" name = "my_year" id="yy" class="int" maxlength="4" placeholder="년(4자)">
                            </span>
                        </div>

                        <!-- BIRTH_MM -->
                        <div id="bir_mm">
                            <span class="box">
                                <select id="mm" class="sel" name="my_month">
                                    <option>월</option>
                                    <option value="01">1</option>
                                    <option value="02">2</option>
                                    <option value="03">3</option>
                                    <option value="04">4</option>
                                    <option value="05">5</option>
                                    <option value="06">6</option>
                                    <option value="07">7</option>
                                    <option value="08">8</option>
                                    <option value="09">9</option>                                    
                                    <option value="10">10</option>
                                    <option value="11">11</option>
                                    <option value="12">12</option>
                                </select>
                            </span>
                        </div>

                        <!-- BIRTH_DD -->
                        <div id="bir_dd">
                            <span class="box">
                                <!-- <input type="text" id="dd" class="int" maxlength="2" placeholder="일">-->
                                <select id="dd" class="sel" name="my_day">
                                <option>일</option>
							<option value = "1">1</option>
							<option value = "2">2</option>
							<option value = "3">3</option>
							<option value = "4">4</option>
							<option value = "5">5</option>
							<option value = "6">6</option>
							<option value = "7">7</option>
							<option value = "8">8</option>
							<option value = "9">9</option>
							<option value = "10">10</option>
							<option value = "11">11</option>
							<option value = "12">12</option>
							<option value = "13">13</option>
							<option value = "14">14</option>
							<option value = "15">15</option>
							<option value = "16">16</option>
							<option value = "17">17</option>
							<option value = "18">18</option>
							<option value = "19">19</option>
							<option value = "20">20</option>
							<option value = "21">21</option>
							<option value = "22">22</option>
							<option value = "23">23</option>
							<option value = "24">24</option>
							<option value = "25">25</option>
							<option value = "26">26</option>
							<option value = "27">27</option>
							<option value = "28">28</option>
							<option value = "29">29</option>
							<option value = "30">30</option>
							<option value = "31">31</option>
						</select>
                            </span>
                        </div>

                    </div>
                    <span class="error_next_box"></span>    
                </div>

                <!-- MOBILE -->
                <div>
                    <h3 class="join_title"><label for="phoneNo">휴대전화</label></h3>
                    <span class="box int_mobile">
                        <input name="my_phone" type="tel" id="mobile" class="int" maxlength="16" placeholder="010-1234-5678">
                    </span>
                    <span class="error_next_box"></span>    
                </div>
                
                <!-- address -->
                <div>
                    <h3 class="join_title"><label for="yy">주소</label></h3>

                    <div id="bir_wrap">
                        <!-- BIRTH_YY -->
                        <div id="bir_yy">
                        <span class="box">
                            <input type="text" name = "address" id="sample6_postcode" class="int" maxlength="4" placeholder="우편번호">
                        </span>
                        </div>
                        

                        <!-- BIRTH_MM -->
                        <div id="bir_mm">
                        	<input type="button" value="우편번호 검색" onclick="sample6_execDaumPostcode()" id="btnPost">
                        </div>
                    </div>  
                </div>
                <div>
                    <span class="box int_name">
                        <input type="text" name="address1" id="sample6_address"class="int" maxlength="20"placeholder="주소">
                    </span>
                    <span class="error_next_box"></span>
                </div><br>
                <div>
                    <span class="box int_name">
                    	<input type="text" name="address2" id="sample6_detailAddress" class="int"maxlength="20"placeholder="상세주소">
                    </span>
                    <span class="error_next_box"></span>
                </div>
                <div><br>
                    <span class="box int_name">
                    	<input type="text" name="address3" id="sample6_extraAddress" class="int"maxlength="20"placeholder="참고항목">
                    </span>
                    <span class="error_next_box"></span>
                </div>

                <!-- JOIN BTN-->
                <div class="btn_area">
                    <button type="submit" id="btnJoin">
                        <span>가입하기</span>
                    </button>
                </div>

                

            </div> 
            <!-- content-->

        </div> 
        </form>
        <!-- wrapper -->
    <script src="main.js"></script>
    </body>
</html>