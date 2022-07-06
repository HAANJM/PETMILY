<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지 프레임</title>
<link rel="stylesheet" href="../common/css/style.css" type="text/css">
</head>
<body>

	<%@ include file = "../common/menubar.jsp" %>
	
	<div class="wrap">

		<div id="header">
			<div id="header_1">로고 영역</div>
			<!--header_1-->
			<div id="header_2">
				<div id="login-area">
					<% if(loginUser == null) { %>
						<a href="loginForm.me">로그인</a> | <a href="#">회원가입</a> &nbsp;
					<% } else {  %>
						<!-- 로그인 성공 후 화면 -->
						<div id="user-info">
							<br><b><%= loginUser.getUserName() %></b>님 환영합니다. 
							<div align="center">
								<a href="<%= contextPath %>/myPage.me">마이페이지</a>
								<a href="<%= contextPath %>/logout.me">로그아웃</a>
							</div>
						</div>
					<% } %>
				</div>
				<div id="menubar">
					<pre><!--
						--><a href="#">공지사항</a>         <!--
						--><a href="#">입양하기</a>         <!--
						--><a href="#">봉사하기</a>         <!--
						--><a href="#">굿즈샵</a>         <!--
						--><a href="#">고객센터</a>
					</pre>
				</div>
				<!--header_2-->
			</div>
		</div>
		<!--header-->

		<hr>

		<div id="navigator">

			<div id="navi">
				<!-- 임시 내용 -->
				<a href="#">HOME</a> > <a href="#">마이페이지</a> > <a href="#">내가 쓴
					글 조회</a>
			</div>
			<!--navi-->

		</div>
		<!--navigator-->

		<div id="content">
			<div id="content_1">
				<div id="user-area">
					<!-- 사용자만 보이는 영역-->
					사용자 영역
				</div>
				<div id="br">
					<!-- 사용자영역과 관리자영역 사이 공간-->
				</div>
				<div id="admin-area">
					<!-- 관리자가 볼 수 있는 영역-->
					관리자 영역
				</div>
			</div>
			<div id="content_2">
				<div id="content-area">
					
					

				</div>
			</div>
		</div>
		<!--content-->

		<br>
		<!-- content영역과 footer영역 사이 띄우기-->

		<div id="footer"></div>
		<!--footer-->
	</div>
</body>
</html>