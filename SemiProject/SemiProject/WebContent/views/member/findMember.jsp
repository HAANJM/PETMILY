<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>PETMILY - 회원 정보 찾기</title>
<style>

    /* 전체 페이지 크기 */
	#wrap {
		width: 1200px;
		height: auto;
		margin: 0 auto;
	}
	#find-member-page-area {
		background-color: rgb(255, 246, 218);
		height: 710px;
		display: flex;
	}

</style>
</head>
<body>

    <div id="wrap">
	
		<!-- header -->
		<%@ include file="../common/header.jsp" %>
		
        <div id="find-member-page-area">

            <h1>아이디 / 비밀번호 찾기 페이지</h1>

        </div>
		
		<!-- footer -->
		<%@ include file="../common/footer.jsp" %>
		
	</div>

</body>
</html>