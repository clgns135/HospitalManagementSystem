<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<!-- CSS only -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
	crossorigin="anonymous">
<!-- JavaScript Bundle with Popper -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
	crossorigin="anonymous"></script>
<script>
	function btn(sample) {
		alert(sample);
	}
</script>
<meta charset="UTF-8">
<title>납부 뷰</title>
<style>
h2 {
	text-align: center;
}

h5 {
	text-align: center;
}

h6 {
	text-align: right;
}

.container {
	padding: 0 20px;
}
</style>
</head>
<body class="container">
	<!-- 병원로고, 관리자 전체 뷰, 회원 정보 -->
	<div class="container w-auto h-auto mt-5 mx-auto">
		<h5>납부</h5>
		<hr>
		<div class="row">
			<!-- 첫 번째 열 - 신용카드 정보 및 납부 -->
			<div class="col-md-6">
				<h6>신용카드 정보</h6>
				<!-- 신용카드 정보 리스트 -->
				<select class="form-select mb-3" aria-label="신용카드 정보">
					<option selected>신용카드 선택</option>
					<option value="card1">국성카드</option>
					<option value="card2">현민카드</option>
					<option value="card3">삼대카드</option>
				</select>
				<!-- 납부금액 입력 필드 -->
				<div class="input-group mb-3">
					<span class="input-group-text">납부금액</span> <input type="text"
						class="form-control" placeholder="금액 입력">
				</div>
				<!-- 납부 버튼 -->
				<button onclick="javascript:btn('납부 완료' )">납부</button>
			</div>
			<!-- 두 번째 열 - 고객 정보 -->
			<div class="col-md-6">
				<h6>고객 정보</h6>
				<!-- 외부에서 받아오는 고객 정보 -->
				<p>고객명: 안구최</p>
				<p>전화번호: 010-0000-0000</p>
				<p>입원실: 1004</p>
				<p>병명: 감기몸살</p>
				<p>입원일: 2023-6-20</p>
				<!-- 추가 정보를 여기에 표시 -->
			</div>
		</div>
	</div>
</body>
</html>