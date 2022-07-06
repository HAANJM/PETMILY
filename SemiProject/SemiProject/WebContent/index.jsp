<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>PETMILY - 메인</title>
<style>

	/* 전체 페이지 크기 */
	#wrap {
		width: 1200px;
		height: auto;
		margin: 0 auto;
	}

	/* content */
	/* content > content-area-1 */
	#content-area-1 {height: 400px;}
	
	/* content > content-area-2 */
	#content-area-2 {
		background-color: rgb(255, 246, 218);
		height: 530px;
	}
	#content-area-2 > div {
		height: 100%;
		float: left;
	}
	#content-2-1 {width: 700px;}
	#adopt-review-board {
		height: 500px;
		margin-top: 20px;
		margin-left: 20px;
		margin-right: 20px;
	}
	#adopt-review-board > a {
		color: black;
		font-size: 20px;
		font-weight: bold;
		text-decoration: none;
	}
	#content-2-2 {width: 500px;}
	#notice-review-board {
		height: 275px;
		margin-top: 20px;
		margin-left: 20px;
		margin-right: 20px;
	}
	#notice-review-board > a {
		color: black;
		font-size: 20px;
		font-weight: bold;
		text-decoration: none;
	}
	#adopt-volunteer-button {
		height: 235px;
		display: flex;
	}
	#adopt-volunteer-button > div {
		background-color: white;
		width: 460px;
		height: 195px;
		margin: auto;
	}

	/* content > content-area-3 */
	#content-area-3 {
		background-color: rgb(243, 243, 243);
		height: 360px;
	}
	#content-3-1 {
		width: 100%;
		height: 100%;
	}
	#volunteer-review-board {
		padding-top: 20px;
		padding-left: 20px;
		padding-right: 20px;
	}
	#volunteer-review-board > a {
		color: black;
		font-size: 20px;
		font-weight: bold;
		text-decoration: none;
	}

</style>
</head>
<body>

	<div id="wrap">

		<!-- header -->
		<%@ include file="views/common/header.jsp" %>

		<!-- content -->
		<div id="content">

			<div id="content-area-1">
				<div id="slideShow">
					슬라이드
				</div>
			</div>

			<div id="content-area-2">
				<div id="content-2-1">
					<div id="adopt-review-board">
						<a href="">입양후기</a> <hr>
					</div>
				</div>
				<div id="content-2-2">
					<div id="notice-review-board">
						<a href="">공지사항</a> <hr>
					</div>
					<div id="adopt-volunteer-button">
						<div>
							버튼 2개 넣을 자리
						</div>
					</div>
				</div>
			</div>

			<div id="content-area-3">
				<div id="content-3-1">
					<div id="volunteer-review-board">
						<a href="">봉사후기</a>
					</div>
				</div>
			</div>

		</div>

		<!-- footer -->
		<%@ include file="views/common/footer.jsp" %>

	</div>

</body>
</html>