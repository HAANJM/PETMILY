<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "com.kh.groups.model.vo.Groups" %>
<%
	Groups g = (Groups)request.getAttribute("g"); //detailController에서 보낸 거
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>단체신청 상세보기</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
<style>
	div {
		box-sizing: border-box;
		/* border: 1px solid darkolivegreen; */
	}
	
	.wrap {
		width: 1200px;
		height: 1600px;
		margin: auto;
	}
	
	.wrap>div {width: 100%;}
	
	#header {height: 10%;}
	#navigator {height: 3%;}
	#content {height: 77%;}
	#footer {height: 10%;}
	
	/* 세부 div 속성 */
	#header>div, #content>div {
		height: 100%;
		float: left;
	}
	/* 가로길이 */
	#header_1 {width: 20%;}
	#header_2 {width: 80%;}
	#content_1 {width: 20%;}
	#content_2 {width: 80%;}
	
	/*------------------- header_1 영역 --------------------*/
	#header_1 {
		/* 영역 표시용 : 지우기 */
		background-color: floralwhite;
		color: sandybrown;
		text-align: center;
		font-size: 20px;
		font-weight: 900;
		padding-top: 50px;
	}
	/*------------------- header_2 영역 --------------------*/
	#header_2>#login-area {
		text-align: right;
		height: 20%;
	}
	
	#header_2>#login-area a {
		color: black;
		text-decoration: none;
		font-size: 15px;
	}
	
	#header_2>#menubar {
		height: 80%;
		padding: 50px;
		text-align: center;
	}
	
	#header_2 > #menubar>pre a {
		color: rgb(155, 128, 82);
		text-decoration: none;
		font-size: 30px;
		font-weight: bold;
		font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
	}
	
	#header_2 > #menubar :hover {
		color: orange;
	}
	/*------------------- navigator 영역 --------------------*/
	#navigator {padding-top: 10px;}
	
	#navi {height: 100%;}
	
	#navi a {
		color: black;
		text-decoration: none;
		font-size: 15px;
		font-weight: bold;
	}
	/*------------------- content_1 영역 --------------------*/
	#content_1>#user-area {
		height: 73%;
		background-color: lightgray;
		/* 사용자영역 표시 - 지우기*/
		font-size: 30px;
		text-align: center;
		padding-top: 150px;
	}
	
	#content_1>#br {
		height: 2%;
	}
	
	#content_1>#admin-area {
		height: 25%;
		background-color: lightgray;
		/* 관리자영역 표시 - 지우기*/
		font-size: 30px;
		text-align: center;
		padding-top: 40px;
	}
	/*------------------- content_2 영역 --------------------*/
	#content_2>#content-area {
		height: 100%;
		width: 100%;
		margin-left: 20px;
	}

	#group-button-area {position: relative;}

	#button-area {
		position: absolute;
		top: 50%;
		left: 50%;
		transform: translate(-50%, -50%);
		margin-top: 30px;
	}
	
	#button-area > #backBtn{
		background-color: white;
		border-color: black;
		color: black;
	}

	#button-area > #submitBtn{
		background-color: burlywood;
		color: white;
	}
	/*------------------- content_2 영역의 헤더 영역 --------------------*/
	#content-header2 button {
		background-color: wheat;
		border-color: none;
		color: black;
	}
	/*------------------- content_2 영역의 테이블 영역 --------------------*/
	#table-area{
		height: 50%;
	}
	#table {
		text-align: center;
	}

	#table th { 
		background-color: burlywood;
	}
	/*------------------- footer 영역 --------------------*/
	#footer {
		background-color: gray;
	}
</style>
</head>
<body>

	<%@ include file = "../common/menubar.jsp" %>
	
	<div class="wrap">

		<div id="header">
			<div id="header_1">로고 영역</div><!--header_1-->
			<div id="header_2">
			
				<div id="login-area">
					<a href="#">로그인</a> | <a href="#">회원가입</a> &nbsp;
				</div><!-- login-area -->
				
				<div id="menubar">
					<pre><!--
					--><a href="#">공지사항</a>         <!--
					--><a href="#">입양하기</a>         <!--
					--><a href="#">봉사하기</a>         <!--
					--><a href="#">굿즈샵</a>         <!--
					--><a href="#">고객센터</a>
					</pre>
				</div> <!-- menubar -->
				
			</div><!--header_2-->
		</div><!--header-->

		<hr>

		<div id="navigator">

			<div id="navi">
				<!-- 임시 내용 -->
				<a href="#">HOME</a> > <a href="#">마이페이지</a> > <a href="#">내가 쓴
					글 조회</a>
			</div><!--navi-->

		</div><!--navigator-->

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
			</div> <!-- content_1 -->

			<div id="content_2">
				<div id="content-area">
					<h2>단체신청</h2>
					
					<div id="table-area">
					
						<table class="table">
							<tr>
								<th width="200">단체명</th>
								<td><%= g.getGroupName() %></td>
							</tr>
							<tr>
								<th>신청인</th>
								<td><%= g.getUserName() %></td>
							</tr>
							<tr>
								<th>연락처</th>
								<td><%= g.getUserPhone() %></td>
							</tr>
							<tr>
								<th>사업자등록번호</th>
								<td>
									<% if(g.getGroupEnrollno() != null) { %>
										<%= g.getGroupEnrollno() %>
									<% } else { %>
										-
									<% } %>
								</td>
							</tr>
							<tr>
								<th>공식사이트</th>
								<td>
									<% if(g.getGroupUrl() != null) { %>
										<%= g.getGroupUrl() %>
									<% } else { %>
										-
									<% } %>
								</td>
							</tr>
							<tr>
								<th>참고사항</th>
								<td>
									<% if(g.getGroupEtc() != null) { %>
										<%= g.getGroupEtc() %>
									<% } else { %>
										-
									<% } %>
								</td>
							</tr>
							<tr>
								<th>승인상태</th>
								<td>
									<% if (g.getGroupAuth().equals("Y")){ %>
										승인
									<% } else { %>
										반려
									<% } %>
								</td>
							</tr>
						</table>
						
						<hr>
						<form action="auth.gr" method="post">
							<div id="group-button-area">
								<div id="button-area">
									<% if(!loginUser.getUserId().equals("admin")){ %>
										<button type="reset" class="btn" id="backBtn" onclick="goToList();">목록</button>
									<% } else { %>
										<button type="button" class="btn" id="backBtn" onclick="goToList();">목록</button> &emsp; &emsp;
										<button type="button" class="btn" id="submitBtn" onclick="rejectBtn();">반려</button>
										<button type="button" class="btn" id="submitBtn" onclick="allowBtn();">승인</button>
									<% } %>
								</div><!--button-area-->
							</div><!--group-button-area-->
							<script>
								function goToList(){
									location.href = "<%= contextPath %>/list.gr?cpage=1";
								}
								function rejectBtn(){
									var auth = "reject";
									var gno = "<%= g.getGroupNo() %>";
									location.href = "<%= contextPath %>/auth.gr?auth=reject&gno="+gno;
								}
								function allowBtn(){
									var auth = "allow";
									var gno = "<%= g.getGroupNo() %>";
									location.href = "<%= contextPath %>/auth.gr?auth=allow&gno="+gno;
								}
							</script>
						</form>
						
						
						
					</div><!-- table-area -->
				</div><!-- content-area -->
			</div><!-- content_2 -->

		</div><!--content-->

		<br><!-- content영역과 footer영역 사이 띄우기-->

		<div id="footer"></div><!--footer-->
		
	</div><!-- wrap -->
</body>
</html>