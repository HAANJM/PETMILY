<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.ArrayList, com.kh.notice.model.vo.Notice" %>
<%
	ArrayList<Notice> nList = (ArrayList<Notice>)request.getAttribute("nList");
	Notice notice = (Notice)request.getAttribute("notice");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 목록</title>
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

	#button-area {
		text-align: center;
	}
	/*------------------- content_2 영역의 헤더 영역 --------------------*/

	#content-header2 button { /*공지사항 등록*/
		background-color: burlywood;
		border-color: none;
		color: white;
		
	}
	/*------------------- content_2 영역의 테이블 영역 --------------------*/
	
	#table-area{
		height: 50%;
		/* background-color: rebeccapurple; */
	}
	#table {
		text-align: center;
	}

	#table th { 
		/* background-color: rgb(255, 217, 135); */
		background-color: wheat;
	}
	/*------------------- footer 영역 --------------------*/
	#footer {
		background-color: gray;
	}
	/*------------------- noticeListView.jsp에만 추가한 거 --------------------*/
	
	#content-header > div{
		height: 60px;
		float: left;
	}
	#content-header1{
		width: 50%;
	}
	#content-header2{
		width: 50%;
		text-align: right;
		padding-top: 10px;
	}

</style>
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
				</div><!-- login-area -->
				
				<div id="menubar">
					<pre><!--
						--><a href="#">공지사항</a>         <!--
						--><a href="#">입양하기</a>         <!--
						--><a href="#">봉사하기</a>         <!--
						--><a href="#">굿즈샵</a>         <!--
						--><a href="#">고객센터</a>
					</pre>
				</div>
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
			</div><!-- content_1 -->

			<div id="content_2">
			
			<% if (loginUser != null ){ %> <!-- 로그인유저 아니면 이 걍 나가리인 페이지 -->
				<div id="content-area">
					<div id="content-header">
					
						<div id="content-header1">
							<h2>공지사항</h2>
						</div>
						
						<% if(loginUser.getUserId().equals("admin")) { %>
							<div id="content-header2">
								<button  class="btn" onclick="noticeBtn();">공지사항 등록</button>
							</div> 
						<% } %>
						
						<script>
							function noticeBtn(){
								var noticeUrl = "<%= contextPath %>/enrollForm.no"
								location.href=noticeUrl;
							}
						</script>
						
					</div><!--content-header-->

					<div id="table-area">
					
						<table class="table table-hover" id="table">
							<thead>
								<tr>
									<th width="70">글번호</th>
									<th width="70">작성일</th>
									<th width="300">제목</th>
									<th width="70">조회수</th>
								</tr>
							</thead>
							
							<tbody>
								<!-- 관리자는 공지사항작성 버튼 보여주기 -->
								<% if(loginUser != null && loginUser.getUserId().equals("admin")) { %>
									<% for(Notice n : nList) { %>
										<tr>
											<td><%= n.getNoticeNo() %></td>
											<td><%= n.getCreateDate() %></td>
											<td><%= n.getNoticeTitle() %></td>
											<td><%= n.getCount() %></td>
										</tr>
									<% }%>
									
								<% } else if(loginUser != null) { %>
									<% for(Notice n : nList) { %>
										<tr>
											<td><%= n.getNoticeNo() %></td>
											<td><%= n.getCreateDate() %></td>
											<td><%= n.getNoticeTitle() %></td>
											<td><%= n.getCount() %></td>
										</tr>
									<% }%>
								<% } %>
							</tbody>
						</table>
						
						<br>
						

	
						<!-- paging-area 부분 -->






					</div><!--table-area-->

					<script>
						$(function(){
							$("#table>tbody>tr").click(function(){
								var nno = $(this).children().eq(0).text();
								location.href = "<%= contextPath %>/detail.no?nno=" + nno;
							})
						})
					</script>
					
				</div><!-- content-area -->
				
				<% } else { %>
					<a href="<%= contextPath %>/loginForm.me">로그인하기</a>
				<% } %>
				
			</div><!-- content_2 -->

		</div><!--content-->

		<br><!-- content영역과 footer영역 사이 띄우기-->

		<div id="footer"></div>
		<!--footer-->
	</div>

</body>
</html>