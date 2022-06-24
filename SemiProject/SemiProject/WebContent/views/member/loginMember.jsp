<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
</head>
<body>

	<h1>대충메뉴바</h1>
	
	<hr>
	
	<form id="login-form" method="post" action="/SemiProject/login.me">
		<table>
			<tr>
				<th>아이디</th>
				<td><input type="text" name="userId" required></td>
			</tr>
			<tr>
				<th>비밀번호</th>
				<td><input type="password" name="userPwd" required></td>
			</tr>
			<tr>
				<th colspan="2">
					<button type="submit">로그인</button>
				</th>
			</tr>
		</table>
	</form>
		
</body>
</html>