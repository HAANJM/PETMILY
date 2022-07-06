<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.ArrayList, com.kh.ask.model.vo.*" %>
<%
	Ask ask = (Ask)request.getAttribute("ask");
	Attachment at = (Attachment)request.getAttribute("at");
	Reply reply = (Reply)request.getAttribute("reply");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>1:1문의 상세보기</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
<style>
	div {
		box-sizing: border-box;
		/* border: 1px solid darkolivegreen; */
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
	#content_2 > #content-area {
		height: 100%;
		width: 100%;
		margin-left: 20px;
	}

	#reply-area div {
		height: 100%;
		float: left;
	}

	#reply-area {
		position: relative;
	}/* 버튼 부모 div*/

	#reply-area > .table {
		border-style: none;
	}

	#reply_1 {width: 15%;}
	#reply_2 {width: 85%;}

	#reply_2 p{
		border: solid 1px lightgrey;
		height: 100px;
	}

	#button-area_1 {
		position: absolute;
		top: 50%;
		left: 50%;
		transform: translate(-50%, -50%);
		margin-top: 150px;
	}
	#button-area_2  { /* 버튼 자식 div*/
		border-color: none; /*버튼 테두리 지우기*/
		color: white;
		position: absolute;
		top: 50%;
		left: 50%;
		transform: translate(-50%, -50%);
		margin-top: 150px;
	}

	#button-area_1 > #backBtn{
		background-color: white;
		border-color: black;
		color: black;
	}

	#button-area_1 > #submitBtn{
		background-color: burlywood;
		color: white;
	}

	#button-area_2 > #backBtn{
		background-color: white;
		border-color: black;
		color: black;
	}

	#button-area_2 > #submitBtn{
		background-color: burlywood;
		color: white;
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
			<div id="header_1">로고 영역</div>
			<!--header_1-->
			<div id="header_2">
				<div id="login-area">
					<a href="#">로그인</a> | <a href="#">회원가입</a> &nbsp;
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
					<h2>1:1문의</h2>
					<br>

					<div id="table-area">
					
						<table class="table">
							<tr>
								<th width="200">카테고리</th>
								<td>
									<%= ask.getAskCategory() %>
								</td>
							</tr>
							<tr>
								<th>제목</th>
								<td><%= ask.getAskTitle() %></td>
							</tr>
							<tr>
								<th>작성자</th>
								<td><%= ask.getAskWriter() %></td>
							</tr>
							<tr>
								<th>첨부파일</th>
								<td>
									<% if(at.getFilePath() == null) { %>
										첨부파일이 없습니다.
									<% } else { %>
										<img width="300" height="300" src="<%= contextPath %>/<%= at.getFilePath() %>/<%= at.getChangeName() %>">
									<% } %>
								</td>
							</tr>
							<tr>
								<th>본문</th>
								<td>
									<p style="height: 100px">
										<%= ask.getAskContent() %>
									</p>
								</td>
							</tr>
						</table>

						<div id="reply-area">
							<div id="reply_1">아이콘 첨부 예정</div>
							<div id="reply_2">
								<table class="table">
									<tr>
										<td>
											<% if(reply.getReplyContent() != null) { %>
												<p>
													<%= reply.getReplyContent() %>
												</p>
											<% } else {%>
												<p>
													등록된 답변이 없습니다.
												</p>
											<% } %>
										</td>
									</tr>
								</table>
							</div><!-- reply_2-->
						

							<% if(!loginUser.getUserId().equals("admin")) { %>
								<% if(reply.getReplyContent() == null) { %> <!-- 답변이 없으면 수정 가능 -->
									<div id="button-area_1" class="btn-area">
										<button type="button" class="btn" id="backBtn" onclick="goToList();">목록</button> &emsp;
										<button type="submit" class="btn" id="submitBtn" onclick="updateBtn();">수정하기</button>
									</div>
								<% } else { %> <!-- 답변이 있으면 수정 불가 -->
									<div id="button-area_1" class="btn-area">
										<button type="button" class="btn" id="backBtn" onclick="goToList();">목록</button> &emsp;
									</div>
								<% } %>
							<% } else { %>
								<% if(reply.getReplyContent() != null) { %> <!-- 답변이 있으면 수정하기  -->
									<form action="<%= contextPath %>/adUpdateForm.as?ano=<%= ask.getAskNo() %>" method="post">
										<input type="hidden" name="askNo" value="<%= ask.getAskNo() %>">
									
										<div id="button-area_2" class="btn-area">
											<button type="reset" class="btn" id="backBtn" onclick="goToList();">목록</button> &emsp;
											<button type="submit" class="btn" id="submitBtn">답변 수정</button>
										</div><!-- button-area_2 -->
									</form>
								<% } else { %> <!-- 답변이 없으면 작성하기 -->
									<form action="enrollReply.as" method="post">
										
										<input type="hidden" name="askNo" value="<%= ask.getAskNo() %>">
									
										<div id="button-area_2" class="btn-area">
											<button type="reset" class="btn" id="backBtn" onclick="goToList();">목록</button> &emsp;
											<button type="submit" class="btn" id="submitBtn">답변작성</button>
										</div><!-- button-area_2 -->
									</form>
								<% } %>
							<% } %>
						</div><!--reply-area-->

						<script>
							function  goToList(){
								var listUrl = "<%= contextPath %>/list.as?cpage=1";
								location.href = listUrl;
							}
							function updateBtn(){// 수정하기(사용자)
								var updateUrl = "<%= contextPath %>/updateForm.as?ano=<%= ask.getAskNo() %>";
								location.href = updateUrl;
							}
						</script>
						
					</div>

					
				</div><!-- content-area -->
				
			</div><!-- content_2 -->

		</div><!--content-->

		<br><!-- content영역과 footer영역 사이 띄우기-->

		<div id="footer"></div>
		<!--footer-->
	</div>

</body>
</html>