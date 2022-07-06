<%@page import="javax.websocket.OnClose"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.ArrayList, com.kh.ask.model.vo.*" %>
<%@ page import = "com.kh.common.model.PageInfo" %>
<%
	ArrayList<Ask> askList = (ArrayList<Ask>)request.getAttribute("askList");
	PageInfo pi = (PageInfo)request.getAttribute("pi");
	PageInfo userPi = (PageInfo)request.getAttribute("userPi");
	ArrayList<Reply> replyList = (ArrayList<Reply>)request.getAttribute("replyList");
	
	// 페이징바 만들 때 필요한 변수 미리 셋팅
	int currentPage = pi.getCurrentPage();
	int startPage = pi.getStartPage();
	int endPage = pi.getEndPage();
	int maxPage = pi.getMaxPage();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>1:1문의글 보기 - 사용자</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
<style>
	div {
		box-sizing: border-box;
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
	#content-header2 button {
		background-color: wheat;
		border-color: none;
		color: black;

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
		background-color: wheat;
	}

	/*------------------- footer 영역 --------------------*/
	#footer {
		background-color: gray;
	}

	/*------------------- askListView.jsp에만 추가한 거 --------------------*/
	
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
		padding-top: 20px;
	}
	
	.paging-area button:hover { /*페이징 버튼 hover*/
		background-color: burlywood;
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
							<div>
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
							<h2>1:1문의</h2>
						</div>
						
						<div id="content-header2">
							<!-- 임시, 사이드 메뉴로 수정 -->
							<% if(loginUser.getUserId().equals("admin")) { %>
								<a href="<%= contextPath %>/list.no">공지사항 목록</a>
							<% } %>
							<a href="<%= contextPath %>/enrollForm.gr">단체신청</a>
							<a href="<%= contextPath %>/list.gr">단체신청 목록</a>
							<button  class="btn" onclick="askBtn();">1:1 문의하기</button>
						</div> 
						
						<script>
							function askBtn(){
								var askUrl = "<%= contextPath %>/askEnrollForm.as"
								location.href=askUrl;
							}
						</script>
						
					</div><!--content-header-->

					<div id="descrpition">
						<p>
							<h5>궁금한 사항을 남겨주시면, 운영시간(평일) 내에 최대한 빠르게 확인하여 답변드리겠습니다.</h5>
							<br>
							<button class="btn" onclick="loadList()">내가 쓴 글 조회</button>
							
						</p>
					</div>

					<div id="table-area">
					
						<table class="table table-hover" id="table">
							<thead>
								<tr>
									<th width="70">글번호</th>
									<th width="70">카테고리</th>
									<th width="300">제목</th>
									<th width="70">작성자</th>
									<th width="100">문의날짜</th>
									<th width="70">답변상태</th>
								</tr>
							</thead>
							
							<tbody>
								<!-- 관리자는 전부 보여주기 -->
								<% if(loginUser != null && loginUser.getUserId().equals("admin")) { %>
									<% for(Ask ask : askList) { %>
										<tr>
											<td><%= ask.getAskNo() %></td>
											<td><%= ask.getAskCategory() %></td>
											<td><%= ask.getAskTitle() %></td>
											<td><%= ask.getAskWriter() %></td>
											<td><%= ask.getCreateDate() %></td>
											<td>
												<% if(ask.getAskReply().equals("Y")) { %>
													완료
												<% } else { %>
													답변 대기
												<% } %>
											</td>
										</tr>
									<% }%>
									
								<!-- 관리자 외에는 작성자 이름으로 조건 -->
								<% } else if(loginUser != null) { %>
									<% for(Ask ask : askList) { %>
										<% if(loginUser.getUserName().equals(ask.getAskWriter())) { %>
											<tr>
												<td><%= ask.getAskNo() %></td>
												<td><%= ask.getAskCategory() %></td>
												<td><%= ask.getAskTitle() %></td>
												<td><%= ask.getAskWriter() %></td>
												<td><%= ask.getCreateDate() %></td>
												<td>
													<% if(ask.getAskReply().equals("Y")) { %>
														완료
													<% } else { %>
														답변 대기
													<% } %>
												</td>
											</tr>
										<% } %>
									<% }%>
								<% } %>
							</tbody>
						</table>
						
						<br>
						
						<div align="center" class="paging-area">
							<% if(currentPage != 1) { %> <!-- 페이징바에서 <를 담당 -->
								<button class="btn" onclick="location.href='<%= contextPath %>/list.as?cpage=<%= currentPage - 1 %>'"> &lt; </button>
							<% } %>
							
							<% for(int i = startPage; i <= endPage; i++) { %>
								<% if(i != currentPage) { %>
									<button class="btn" onclick="location.href='<%= contextPath %>/list.as?cpage=<%= i %>'"><%= i %></button>
								<% } else { %>
									<button class="btn" disabled><%= i %></button>
								<% } %>
							<% } %>
							
							<% if(currentPage != maxPage) { %>
								<button class="btn" onclick="location.href='<%= contextPath %>/list.as?cpage=<%= currentPage + 1 %>'"> &gt; </button>
							<% } %>
						</div><!-- paging-area -->
						
					</div><!--table-area-->

					<script>
						$(function(){
							$("#table>tbody>tr").click(function(){
								var ano = $(this).children().eq(0).text();
								location.href = "<%= contextPath %>/detail.as?ano=" + ano;
							})
						})
						
						 function loadList(){
						 	var no = "<%= loginUser.getUserNo() %>";
						 	location.href = "<%= contextPath %>/list.as?cpage=1" + "&no=" + no;
						
						 }
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