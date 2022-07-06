<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.ArrayList, com.kh.ask.model.vo.*" %>
<%
	ArrayList<Category> list = (ArrayList<Category>)request.getAttribute("list");
	Ask ask = (Ask)request.getAttribute("ask");
	Attachment at = (Attachment)request.getAttribute("at");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>1:1문의 수정</title>
<link rel="stylesheet" href="../common/css/style.css" type="text/css">
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
	#content_2>#content-area {
		height: 100%;
		width: 100%;
		margin-left: 20px;
	}
	
	#table-area {
		position: relative;
	}
	#button-area {
		border-style: none; /*div에 테두리 지우기*/
		position: absolute;
		top: 50%;
		left: 50%;
		transform: translate(-50%, -50%);
		margin-top: 300px;
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
					<!--<a href="#">공지사항</a> &emsp;
                    <a href="#">입양하기</a> &emsp;
                    <a href="#">봉사하기</a> &emsp;
                    <a href="#">굿즈샵</a> &emsp;
                    <a href="#">고객센터</a>-->

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

					<hr>

					<div id="table-area">
						<form id="update-form" enctype="multipart/form-data" action="<%= contextPath %>/update.as" method="post" class="form-inline">
						
							<input type="hidden" value="<%= ask.getAskNo() %>" name="ano">
							
							<table class="table">
								<tr>
									<th>카테고리</th>
									<td>
										<select name="askCategory">
											<% for(Category c : list) { %>
												<option value="<%= c.getCategoryNo() %>"><%= c.getCategoryName() %></option>
											<% } %>
										</select>
										<script>
											$(function(){
												
												$("#update-form option").each(function(){
													// 카테고리명이랑 ask객체에 있는 카테고리랑 동일하면
													if($(this).text() == "<%= ask.getAskCategory() %>"){
														$(this).attr("selected", "true");
													}
												})
											})
										</script>
									</td>
								</tr>
								<tr>
									<th>제목</th>
									<td><input type="text" name="askTitle" value="<%= ask.getAskTitle() %>" required ></td>
								</tr>
								<tr>
									<th>작성자</th>
									<td><%= loginUser.getUserName() %></td>
								</tr>
								<tr>
									<th>첨부파일</th>
									<td>
									<!-- 기존 파일이 있다면 원본명을 보여주기 -->
										<% if(at != null) { %>
											<%= at.getOriginName() %>
											<input type="hidden" name="originFileNo" value="<%=at.getFileNo() %>">
											<input type="hidden" name="originFileName" value="<%=at.getChangeName() %>">
										<% } %>
											<input type="file" name="reUpfile">
									</td>
								</tr>
								<tr>
									<th>본문</th>
									<td>
										<textarea name="askContent" 
										cols="100" rows="10" style="resize:none;" required><%= ask.getAskContent() %></textarea>
									</td>
								</tr>
							</table>
							<hr>
							<div id="button-area">
								<button type="button" class="btn" id="backBtn" onclick="goBack();">목록</button> &emsp;
								<button type="submit" class="btn" id="submitBtn">수정하기</button>
							</div>
							<script>
								function goBack(){
									window.history.back();
								}
							</script>
						</form>
						
					</div><!-- table-area -->

					
				</div><!-- content-area -->
			</div><!-- content_2 -->

		</div><!--content-->

		<br><!-- content영역과 footer영역 사이 띄우기-->

		<div id="footer"></div>
		<!--footer-->
	</div>
</body>
</html>