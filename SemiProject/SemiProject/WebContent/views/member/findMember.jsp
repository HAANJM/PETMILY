<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int type = (int)session.getAttribute("type");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>PETMILY - 회원가입</title>
<style>

	/* 전체 페이지 크기 */
	#wrap {
		width: 1200px;
		height: auto;
		margin: 0 auto;type
	}
	#enroll-member-page-area {
		background-color: rgb(255, 246, 218);
		height: 710px;
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
		height: 495px;
	}
    #enroll-member-box-content-1 {
        width: 90%;
        height: 20%;
        font-size: 14px;
        line-height: 35px;
        margin: 0 auto;
        box-sizing: border-box;
		display: flex;
    }
	#enroll-member-box-content-1 > div {
        float: left;
        box-sizing: border-box;
		margin: auto;
    }
	.select-find-button > a {
		border-bottom: 7px solid rgb(232, 191, 123);
		color: black;
		font-size: 20px;
		font-weight: bold;
		padding: 15px 50px;
		cursor: pointer;
	}
	.unselect-find-button > a {
		color: rgb(125, 125, 125);
		font-size: 20px;
		font-weight: bold;
		padding: 15px 50px;
		cursor: pointer;
	}
	#enroll-member-form {
		width: 100%;
		height: 80%;
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

    /* enroll-row 스타일 */
    .enroll-row {
        width: 100%;
        height: 70px;
        display: flex;
    }
    .enroll-row > div {
        float: left;
        box-sizing: border-box;
        margin: auto;
    }

    /* enroll-col-1 스타일 */
    .enroll-col-1 {
        font-size: 18px;
        font-weight: bold;
        width: 25%;
        height: 100%;
        padding-left: 30px;
        padding-top: 18px;
        background-color: rgb(243, 243, 243);
    }

    /* enroll-col-2 스타일 */
    .enroll-col-2 {
        width: 45%;
        padding-left: 20px;
    }
    .enroll-col-2 input {
        width: 292px;
        height: 34px;
        border-radius: 5px;
        border: none;
        border: 1px solid rgb(125, 125, 125);
    }

    /* enroll-col-2-type-1 스타일 - 생년월일, 휴대전화번호 부분에서 사용 */
    .enroll-col-2-type-1 {
        width: 50%;
        padding-left: 20px;
    }
    .enroll-col-2-type-1 > input {
        width: 80px;
        height: 34px;
        border-radius: 5px;
        border: none;
        border: 1px solid rgb(125, 125, 125);
        text-align: center;
    }
    .enroll-col-2-type-1 > select {
        width: 86px;
        height: 38px;
        border-radius: 5px;
        border: none;
        border: 1px solid rgb(125, 125, 125);
        text-align: center;
    }

    /* enroll-col-2-type-2  - 휴대전화번호 부분에서 사용 */
    .enroll-col-2-type-2 {
        width: 48%;
        padding-left: 20px;
    }

    /* 주소 부분 스타일 */
    .address-row {
        width: 100%;
        height: 190px;
        margin: auto;
    }
    .enroll-col-2-type-3 {
        width: 75%;
        padding-left: 20px;
    }
    .enroll-col-2-type-3 > input {
        width: 250px;
        height: 34px;
        border-radius: 5px;
        border: none;
        border: 1px solid rgb(125, 125, 125);
    }

    /* enroll-col-3 */
    .enroll-col-3 {
        width: 30%;
        font-size: 12px;
    }
    .enroll-col-3-type-1 {
        width: 25%;
        font-size: 12px;
    }
    .enroll-col-3-type-2 {
        width: 27%;
        font-size: 12px;
        text-align: center;
    }

    /* dummy-row top, bottom */
    .dummy-row-top {
        width: 100%;
        height: 125px;
        display: flex;
    }
    .dummy-row-bottom {
        width: 100%;
        height: 130px;
        display: flex;
    }
	.dummy-row-top-pwd {
        width: 100%;
        height: 90px;
        display: flex;
    }
    .dummy-row-bottom-pwd {
        width: 100%;
        height: 95px;
        display: flex;
    }

    /* input, select 선택 시 테두리 변경 */
    #enroll-member-form-wrap input:focus, select:focus {
        border-color: rgb(232, 191, 123);
        outline: none;
    }

    /* input type number 숫자 증감 버튼 삭제 */
    input[type="number"]::-webkit-outer-spin-button,
    input[type="number"]::-webkit-inner-spin-button {
        -webkit-appearance: none;
        margin: 0;
    }

    #enroll-member-form-wrap button {
		height: 38px;
		color: white;
		background-color: rgb(232, 191, 123);
		font-size: 12px;
		font-weight: bold;
		border: 1px solid rgb(155, 128, 82);
		border-radius: 5px;
		cursor: pointer;
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
		
		<!-- content -->
		<script>

            // 로그인 상태로 접근 제한
            $(document).ready(function(){
            
                var loginUser = "<%= loginUser %>";

                if (loginUser != 'null') {
                    
                    alert('로그인한 상태에서는 \n해당 페이지에 접근할 수 없습니다.');
                    history.back();
                }
            });

        </script>

		<% if(type == 0) { %>

		<div id="enroll-member-page-area">
			<div id="enroll-member-box-area">

				<div id="enroll-member-box-title">
					&nbsp;아이디&nbsp;&middot;&nbsp;비밀번호 찾기
				</div>

				<div id="enroll-member-box-content">
                    <div id="enroll-member-box-content-1">
                            <div class="select-find-button">
								<a href="<%= contextPath %>/find.me?type=0">아이디 찾기</a>
							</div>
                            <div class="unselect-find-button">
								<a href="<%= contextPath %>/find.me?type=1">비밀번호 찾기</a>
							</div>
                    </div>
					<form id="enroll-member-form" method="post" action="/SemiProject/insert.me">
						<div id="enroll-member-form-wrap">

                            <div class="enroll-row dummy-row-top">
                                <div class="enroll-col-1"></div>
                                <div class="enroll-col-2"></div>
                                <div class="enroll-col-3"></div>
                            </div>

                            <!-- 이름 -->
                            <div class="enroll-row">
                                <div class="enroll-col-1">
                                    <span>이름</span>
                                </div>
                                <div class="enroll-col-2">
                                    <input type="text" name="userName" maxlength="20" onkeyup="checkName();" required>
                                </div>
                                <div class="enroll-col-3">
                                    <span name="checkNameResult"></span>
                                </div>
                            </div>

                            <!-- 휴대전화번호 -->
                            <div class="enroll-row">
                                <div class="enroll-col-1">
                                    <span>휴대전화번호</span>
                                </div>
                                <div class="enroll-col-2-type-1 enroll-col-2-type-2">
                                    <select name="phoneF" required>
                                        <option value="010">010</option>
                                        <option value="011">011</option>
                                        <option value="017">017</option>
                                        <option value="016">016</option>
                                        <option value="019">019</option>
                                    </select>
                                    &nbsp;
                                    &#45;
                                    &nbsp;
                                    <input type="number" name="phoneM" maxlength="4" oninput="inputNumberMaxLength(this);" onkeyup="checkPhone();" required>
                                    &nbsp;
                                    &#45;
                                    &nbsp;
                                    <input type="number" name="phoneB" maxlength="4" oninput="inputNumberMaxLength(this);" onkeyup="checkPhone();" required>
                                </div>
                                <div class="enroll-col-3-type-1 enroll-col-3-type-2">
                                    <span name="checkPhoneResult"></span>
                                </div>
                            </div>

                            <div class="enroll-row dummy-row-bottom">
                                <div class="enroll-col-1"></div>
                                <div class="enroll-col-2"></div>
                                <div class="enroll-col-3"></div>
                            </div>

						</div>
					</form>
				</div>

                <div id="enroll-member-box-tail">
                    <div id="enroll-member-box-tail-button-wrap">
                        <div id="previous-button">
                            <button type="button" onclick="location.href='<%= contextPath %>/loginForm.me'">돌아가기</button>
                        </div>
                        <div id="succeeding-button">
                            <button type="button" onclick="findId();">아이디 확인</button>
                        </div>
                    </div>
                </div>

			</div>
		</div>

		<% } else if (type == 1) { %>

			<div id="enroll-member-page-area">
				<div id="enroll-member-box-area">
	
					<div id="enroll-member-box-title">
						&nbsp;아이디&nbsp;&middot;&nbsp;비밀번호 찾기
					</div>
	
					<div id="enroll-member-box-content">
						<div id="enroll-member-box-content-1">
								<div class="unselect-find-button">
									<a href="<%= contextPath %>/find.me?type=0">아이디 찾기</a>
								</div>
								<div class="select-find-button">
									<a href="<%= contextPath %>/find.me?type=1">비밀번호 찾기</a>
								</div>
						</div>
						<form id="enroll-member-form" method="post" onsubmit="return checkAll();" action="/SemiProject/insert.me">
							<div id="enroll-member-form-wrap">
	
								<div class="enroll-row dummy-row-top-pwd">
									<div class="enroll-col-1"></div>
									<div class="enroll-col-2"></div>
									<div class="enroll-col-3"></div>
								</div>
	
								<!-- 이름 -->
								<div class="enroll-row">
									<div class="enroll-col-1">
										<span>이름</span>
									</div>
									<div class="enroll-col-2">
										<input type="text" name="userName" maxlength="20" onkeyup="checkName();" required>
									</div>
									<div class="enroll-col-3">
										<span name="checkNameResult"></span>
									</div>
								</div>
	
								<!-- 휴대전화번호 -->
								<div class="enroll-row">
									<div class="enroll-col-1">
										<span>휴대전화번호</span>
									</div>
									<div class="enroll-col-2-type-1 enroll-col-2-type-2">
										<select name="phoneF" required>
											<option value="010">010</option>
											<option value="011">011</option>
											<option value="017">017</option>
											<option value="016">016</option>
											<option value="019">019</option>
										</select>
										&nbsp;
										&#45;
										&nbsp;
										<input type="number" name="phoneM" maxlength="4" oninput="inputNumberMaxLength(this);" onkeyup="checkPhone();" required>
										&nbsp;
										&#45;
										&nbsp;
										<input type="number" name="phoneB" maxlength="4" oninput="inputNumberMaxLength(this);" onkeyup="checkPhone();" required>
									</div>
									<div class="enroll-col-3-type-1 enroll-col-3-type-2">
										<span name="checkPhoneResult"></span>
									</div>
								</div>

								<!-- 이메일 인증번호 -->
								<div class="enroll-row">
									<div class="enroll-col-1">
										<span>이메일 인증번호</span>
									</div>
									<div class="enroll-col-2">
										<input type="text" name="randomCode" required>
									</div>
									<div class="enroll-col-3">
										<button onclick="checkRandomCode();">이메일 인증번호 확인</button>
									</div>
								</div>
	
								<div class="enroll-row dummy-row-bottom-pwd">
									<div class="enroll-col-1"></div>
									<div class="enroll-col-2"></div>
									<div class="enroll-col-3"></div>
								</div>
	
							</div>
						</form>
					</div>
	
					<div id="enroll-member-box-tail">
						<div id="enroll-member-box-tail-button-wrap">
							<div id="previous-button">
								<button type="button" onclick="location.href='<%= contextPath %>/loginForm.me'">돌아가기</button>
							</div>
							<div id="succeeding-button">
								<button type="button" onclick="location.href='<%= contextPath %>'">비밀번호 확인</button>
							</div>
						</div>
					</div>
	
				</div>
			</div>

		<% } %>
		
		<!-- footer -->
		<%@ include file="../common/footer.jsp" %>
		
	</div>

</body>
</html>