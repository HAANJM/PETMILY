<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>PETMILY - 회원가입</title>
<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
<style>

	/* 전체 페이지 크기 */
	#wrap {
		width: 1200px;
		height: auto;
		margin: 0 auto;
	}
	#enroll-member-page-area {
		background-color: rgb(255, 246, 218);
		height: auto;
		display: flex;
	}

	/* enroll-member-page-area */
	#enroll-member-page-area a {text-decoration: none;}

	/* enroll-member-page-area > enroll-member-box-area */
	#enroll-member-box-area {
        margin-top: 40px;
        margin-left: auto;
        margin-right: auto;
    }

	/* enroll-member-box-title */
	#enroll-member-box-title {
		color: black;
		font-weight: bold;
		font-size: 23px;
        margin-bottom: 15px;
	}

	/* enroll-member-box-content */
	#enroll-member-box-content {
        border-top: 1px solid rgb(125, 125, 125);
		background-color: white;
		width: 850px;
		height: 1100px;
	}
    #enroll-member-box-content-1 {
        width: 90%;
        height: 10%;
        font-size: 14px;
        line-height: 35px;
        margin: 0 auto;
        padding-top: 20px;
        padding-left: 10px;
        box-sizing: border-box;
    }
	#enroll-member-form {
		width: 100%;
		height: 90%;
	}
	#enroll-member-form-wrap {
		width: 90%;
		height: 100%;
        margin: 0 auto;
        border-top: 1px solid rgb(125, 125, 125);
	}
    #enroll-member-form-wrap > div {
        float: left;
        box-sizing: border-box;
    }

    .test-row {
        width: 100%;
        height: 70px;
        display: flex;
    }
    .test-row > div {
        float: left;
        box-sizing: border-box;
        margin: auto;
    }
    .test-col-1 {
        font-size: 18px;
        font-weight: bold;
        width: 25%;
        height: 100%;
        padding-left: 30px;
        padding-top: 18px;
        background-color: rgb(243, 243, 243);
    }
    .test-col-2 {
        width: 45%;
        padding-left: 20px;
    }
    .test-col-2 > input {
        width: 292px;
        height: 34px;
        border-radius: 5px;
    }
    .test-col-3 {
        width: 30%;
        font-size: 12px;
    }
    .dummy-row-top {
        width: 100%;
        height: 20px;
        display: flex;
    }
    .address-row {
        width: 100%;
        height: 300px;
        display: flex;
    }
    .dummy-row-bottom {
        width: 100%;
        height: 265px;
        display: flex;
    }

	/* enroll-member-box-tail */
    #enroll-member-box-tail {
        width: 340px;
        height: 45px;
        margin: 40px auto;
    }
    #enroll-member-box-tail-button-wrap {
        width: 100%;
        height: 100%;
        margin: 0 auto;
    }
    #enroll-member-box-tail-button-wrap > #previous-button {float: left;}
    #enroll-member-box-tail-button-wrap > #succeeding-button {float: right;}

    /* enroll-member-box-tail > 돌아가기, 회원가입 버튼 부분 */
	#enroll-member-box-tail-button-wrap button {
		width: 150px;
		height: 45px;
		color: white;
		font-size: 18px;
		font-weight: bold;
		border-radius: 5px;
        cursor: pointer;
	}
    #previous-button > button {
        background-color: rgb(190, 190, 190);
        border: 1px solid rgb(125, 125, 125);
    }
    #succeeding-button > button {
        background-color: rgb(232, 191, 123);
        border: 1px solid rgb(155, 128, 82);
    }
	
</style>
</head>
<body>

	<div id="wrap">
	
		<!-- header -->
		<%@ include file="../common/header.jsp" %>
		
		<div id="enroll-member-page-area">
			<div id="enroll-member-box-area">

				<div id="enroll-member-box-title">
					&nbsp;회원가입
				</div>

				<div id="enroll-member-box-content">
                    <div id="enroll-member-box-content-1">
                            Petmily 사이트를 방문해주셔서 감사합니다.<br>
                            회원가입을 위해서 다음 정보를 입력 부탁드리겠습니다.
                    </div>
					<form id="enroll-member-form" method="post" onsubmit="return checkAll();" action="/SemiProject/insert.me">
						<div id="enroll-member-form-wrap">

                            <div class="test-row dummy-row-top">
                                <div class="test-col-1"></div>
                                <div class="test-col-2"></div>
                                <div class="test-col-3"></div>
                            </div>

                            <!-- 아이디 -->
                            <div class="test-row">
                                <div class="test-col-1">
                                    <span>아이디</span>
                                </div>
                                <div class="test-col-2">
                                    <input type="text" name="userId" maxlength="20" onkeyup="checkId();" required>
                                </div>
                                <div class="test-col-3">
                                    <span name="checkIdResult"></span>
                                </div>
                            </div>

                            <!-- 비밀번호 -->
                            <div class="test-row">
                                <div class="test-col-1">
                                    <span>비밀번호</span>
                                </div>
                                <div class="test-col-2">
                                    <input type="password" name="userPwd" maxlength="20" onkeyup="checkPwd();" required>
                                </div>
                                <div class="test-col-3">
                                    <span name="checkPwdResult"></span>
                                </div>
                            </div>

                            <!-- 비밀번호 확인 -->
                            <div class="test-row">
                                <div class="test-col-1">
                                    <span>비밀번호 확인</span>
                                </div>
                                <div class="test-col-2">
                                    <input type="password" name="matchPwd" maxlength="20" onkeyup="checkMatchPwd();" required>
                                </div>
                                <div class="test-col-3">
                                    <span name="checkMatchPwdResult"></span>
                                </div>
                            </div>

                            <!-- 이메일 주소 -->
                            <div class="test-row">
                                <div class="test-col-1">
                                    <span>이메일 주소</span>
                                </div>
                                <div class="test-col-2">
                                    <input type="text" name="email" required>
                                </div>
                                <div class="test-col-3">
                                    <button>인증번호 받기</button>
                                </div>
                            </div>

                            <!-- 이메일 인증번호 -->
                            <div class="test-row">
                                <div class="test-col-1">
                                    <span>이메일 인증번호</span>
                                </div>
                                <div class="test-col-2">
                                    <input type="text" name="emailChk" required>
                                </div>
                                <div class="test-col-3">
                                    <button>이메일 인증번호 확인</button>
                                </div>
                            </div>

                            <!-- 이름 -->
                            <div class="test-row">
                                <div class="test-col-1">
                                    <span>이름</span>
                                </div>
                                <div class="test-col-2">
                                    <input type="text" name="userName" maxlength="20" onkeyup="checkName();" required>
                                </div>
                                <div class="test-col-3">
                                    <span name="checkNameResult"></span>
                                </div>
                            </div>

                            <!-- 닉네임 -->
                            <div class="test-row">
                                <div class="test-col-1">
                                    <span>닉네임</span>
                                </div>
                                <div class="test-col-2">
                                    <input type="text" name="userNickname" maxlength="20" onkeyup="checkNickname();" required>
                                </div>
                                <div class="test-col-3">
                                    <span name="checkNicknameResult"></span>
                                </div>
                            </div>

                            <!-- 생년월일 -->
                            <div class="test-row">
                                <div class="test-col-1">
                                    <span>생년월일</span>
                                </div>
                                <div class="test-col-2">
                                    <input type="date" name="birthDate" required>
                                </div>
                                <div class="test-col-3">
                                    삭제
                                </div>
                            </div>

                            <!-- 휴대전화번호 -->
                            <div class="test-row">
                                <div class="test-col-1">
                                    <span>휴대전화번호</span>
                                </div>
                                <div class="test-col-2">
                                    <input type="text" name="phone" maxlength="20" onkeyup="checkPhone();" required>
                                </div>
                                <div class="test-col-3">
                                    <span name="checkPhoneResult"></span>
                                </div>
                            </div>

                            <!-- 주소 -->
                            <div class="test-row address-row">
                                <div class="test-col-1">
                                    <span>주소</span>
                                </div>
                                <div class="test-col-2">
                                    <input type="text" id="sample6_postcode" name="postcode" placeholder="우편번호">
                                    <input type="text" id="sample6_address" name="addressMain" placeholder="주소"><br>
                                    <input type="text" id="sample6_detailAddress" name="addressDetail" placeholder="상세주소">
                                    <input type="text" id="sample6_extraAddress" name="addressAdd" placeholder="참고항목">
                                </div>
                                <div class="test-col-3">
                                    <input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><br>
                                </div>
                            </div>

                            <!-- (임시)권한 -->
                            <div class="test-row">
                                <div class="test-col-1">
                                    <span>(임시)권한</span>
                                </div>
                                <div class="test-col-2">
                                    <select name="userClass">
                                        <option value="A">관리자</option>
                                        <option value="G">단체</option>
                                        <option value="P">일반</option>
                                    </select>
                                </div>
                                <div class="test-col-3"></div>
                            </div>

                            <div class="test-row dummy-row-bottom">
                                <div class="test-col-1"></div>
                                <div class="test-col-2"></div>
                                <div class="test-col-3"></div>
                            </div>

						</div>
					</form>
				</div>

                <div id="enroll-member-box-tail">
                    <div id="enroll-member-box-tail-button-wrap">
                        <div id="previous-button">
                            <button onclick="history.back();">돌아가기</button>
                        </div>
                        <div id="succeeding-button">
                            <button type="submit" form="enroll-member-form">회원가입</button>
                        </div>
                    </div>
                </div>

			</div>
		</div>
		
		<!-- footer -->
		<%@ include file="../common/footer.jsp" %>
		
        <script>

            var checkIdflag = false;
            var checkPwdflag = false;
            var checkMatchPwdflag = false;
            var checkNameflag = false;
            var checkNicknameflag = false;
            var checkPhoneflag = false;
            
            function checkId(){

                var $userId = $("#enroll-member-form input[name=userId]").val();
                var $checkIdResult = $("#enroll-member-form span[name=checkIdResult]");
                var $regExp = /^[a-z\d_-]{4,20}$/;

                $.ajax({
                    url : "checkId.me",
                    data : {inputId : $userId},
                    success : function(result){
                        
                        if (result < 1) {
                            
                            $checkIdResult.css('color', 'green');
                            $checkIdResult.html('사용 가능한 아이디 입니다.');

                            checkIdflag = true;
                        }
                        if (result == 1) {

                            $checkIdResult.css('color', 'red');
                            $checkIdResult.html('중복되는 사용자가 있습니다.');

                            checkIdflag = false;
                        } 
                        if (!$regExp.test($userId)) {
                            
                            $checkIdResult.css('color', 'red');
                            $checkIdResult.html('4~20자의 영문 소문자, 숫자, <br>특수기호 _ 와 - 만 사용 가능합니다.');

                            checkIdflag = false;
                        }
                        if ($userId == '') {

                            $checkIdResult.html('');

                            checkIdflag = false;
                        }
                    },
                    error : function(){

                        console.log('id check error');
                    },
                });
            }

            function checkPwd() {
                
                var $userPwd = $("#enroll-member-form input[name=userPwd]").val();
                var $checkPwdResult = $("#enroll-member-form span[name=checkPwdResult]");
                var $regExp = /^[a-zA-Z\d!@#$%^]{8,20}$/;

                if (!$regExp.test($userPwd)) {
                            
                    $checkPwdResult.css('color', 'red');
                    $checkPwdResult.html('8~20자의 영문 소문자, 대문자, 숫자, <br>특수기호 ! @ # $ % ^ 만 <br>사용 가능합니다.');

                    checkPwdflag = false;
                }
                else {

                    $checkPwdResult.css('color', 'green');
                    $checkPwdResult.html('사용 가능한 비밀번호 입니다.');

                    checkPwdflag = true;
                }
                if ($userPwd == '') {

                    $checkPwdResult.html('');

                    checkPwdflag = false;
                }
            }

            function checkMatchPwd() {

                var $matchPwd = $("#enroll-member-form input[name=matchPwd]").val();
                var $userPwd = $("#enroll-member-form input[name=userPwd]").val();
                var $checkMatchPwdResult = $("#enroll-member-form span[name=checkMatchPwdResult]");

                if ($matchPwd == $userPwd) {
                    
                    $checkMatchPwdResult.css('color', 'green');
                    $checkMatchPwdResult.html('비밀번호가 일치합니다.');

                    checkMatchPwdflag = true;
                }
                else {
                    
                    $checkMatchPwdResult.css('color', 'red');
                    $checkMatchPwdResult.html('비밀번호가 일치하지 않습니다.');

                    checkMatchPwdflag = false;
                }
                if ($matchPwd == '') {

                    $checkMatchPwdResult.html('');

                    checkMatchPwdflag = false;
                }
            }

            function checkName() {
                
                var $userName = $("#enroll-member-form input[name=userName]").val();
                var $checkNameResult = $("#enroll-member-form span[name=checkNameResult]");
                var $regExp = /^[가-힣a-zA-Z]{2,20}$/;

                if (!$regExp.test($userName)) {
                            
                    $checkNameResult.css('color', 'red');
                    $checkNameResult.html('2~20자의 한글, 영문 소문자, 대문자만 사용 가능합니다.');

                    checkNameflag = false;
                }
                else {

                    $checkNameResult.html('');

                    checkNameflag = true;
                }
                if ($userName == '') {

                    $checkNameResult.html('');

                    checkNameflag = false;
                }
            }

            function checkNickname(){

                var $userNickname = $("#enroll-member-form input[name=userNickname]").val();
                var $checkNicknameResult = $("#enroll-member-form span[name=checkNicknameResult]");
                var $regExp = /^[가-힣a-z\d_-]{2,20}$/;

                $.ajax({
                    url : "checkNickname.me",
                    data : {inputNickname : $userNickname},
                    success : function(result){
                        
                        if (result < 1) {
                            
                            $checkNicknameResult.css('color', 'green');
                            $checkNicknameResult.html('사용 가능한 닉네임 입니다.');

                            checkNicknameflag = true;
                        }
                        if (result == 1) {

                            $checkNicknameResult.css('color', 'red');
                            $checkNicknameResult.html('중복되는 사용자가 있습니다.');

                            checkNicknameflag = false;
                        } 
                        if (!$regExp.test($userNickname)) {
                            
                            $checkNicknameResult.css('color', 'red');
                            $checkNicknameResult.html('2~20자의 한글, 영문 소문자, 숫자, <br>특수기호 _ 와 - 만 사용 가능합니다.');

                            checkNicknameflag = false;
                        }
                        if ($userNickname == '') {

                            $checkNicknameResult.html('');

                            checkNicknameflag = false;
                        }
                    },
                    error : function(){

                        console.log('nickname check error');
                    },
                });
            }

            function checkPhone(){

                var $phone = $("#enroll-member-form input[name=phone]").val();
                var $checkPhoneResult = $("#enroll-member-form span[name=checkPhoneResult]");
                var $regExp = /^[0-9]{2,20}$/;

                $.ajax({
                    url : "checkPhone.me",
                    data : {inputPhone : $phone},
                    success : function(result){
                        
                        if (result < 1) {
                            
                            $checkPhoneResult.css('color', 'green');
                            $checkPhoneResult.html('사용 가능한 휴대전화번호 입니다.');

                            checkPhoneflag = true;
                        }
                        if (result == 1) {

                            $checkPhoneResult.css('color', 'red');
                            $checkPhoneResult.html('중복되는 사용자가 있습니다.');

                            checkPhoneflag = false;
                        } 
                        if (!$regExp.test($phone)) {
                            
                            $checkPhoneResult.css('color', 'red');
                            $checkPhoneResult.html('숫자만 사용 가능합니다.(수정예정)');

                            checkPhoneflag = false;
                        }
                        if ($phone == '') {

                            $checkPhoneResult.html('');

                            checkPhoneflag = false;
                        }
                    },
                    error : function(){

                        console.log('phone check error');
                    },
                });
            }

            function checkAll() {

                if (checkIdflag == false) {

                    alert('아이디를 조건에 맞게 작성해주세요.');
                    
                    return false;
                }
                if (checkPwdflag == false) {

                    alert('비밀번호를 조건에 맞게 작성해주세요.');
                    
                    return false;
                }
                if (checkMatchPwdflag == false) {

                    alert('비밀번호가 일치하지 않습니다.');
                    
                    return false;
                }
                if (checkNameflag == false) {

                    alert('이름을 조건에 맞게 작성해주세요.');
                    
                    return false;
                }
                if (checkNicknameflag == false) {

                    alert('닉네임을 조건에 맞게 작성해주세요.');
                    
                    return false;
                }
                if (checkPhoneflag == false) {

                    alert('휴대전화번호를 조건에 맞게 작성해주세요.');
                    
                    return false;
                }

                return true;
            }

        </script>

        <!-- Daum 우편번호 서비스 -->
        <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
        <script>
            function sample6_execDaumPostcode() {
                new daum.Postcode({
                    oncomplete: function(data) {
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
                        if(data.userSelectedType === 'R'){
                            // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                            // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                            if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                                extraAddr += data.bname;
                            }
                            // 건물명이 있고, 공동주택일 경우 추가한다.
                            if(data.buildingName !== '' && data.apartment === 'Y'){
                                extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                            }
                            // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                            if(extraAddr !== ''){
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

	</div>

</body>
</html>