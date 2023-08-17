<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0"
	crossorigin="anonymous"></script>
<title>고객 화면</title>
</head>
<body>
	<img
		src="https://sev.severance.healthcare/_res/yuhs/sev/img/common/sev_logo@2x.png">

	<div style="text-align: center;">
		<button class="btn btn-success mt-3" type="button"
			data-bs-toggle="collapse"
			data-bs-target="#hospitalizationInformation" aria-expanded="false"
			aria-controls="addForms">입원 정보</button>
	</div>
	<div class="collapse" id="hospitalizationInformation">
		<div class="card card-body">
			<p>
				환자명: <input type="text" name="name">
			</p>
			<p>
				전화번호: <input type="text" name="phoneNumber">
			</p>
			<p>
				입원실: <input type="text" name="roomNumber">
			</p>
			<p>
				병명: <input type="text" name="diseaseName">
			</p>
			<p id="hospitalizationDate">입원일:</p>
			<p>퇴원일: 의사와 상담 바람.</p>
			<div style="text-align: center;">
				<a href="AppointmentandPaymentView.jsp" class="btn btn-success mt-3">확인</a>
			</div>
		</div>
	</div>

	<!--
	<div style="text-align: center;">
		<button type="button" class="btn btn-success mt-3">입원 정보</button>
	</div>
	-->

	<div style="text-align: center;">
		<a href="reservationView.jsp" class="btn btn-success mt-3">진료 조회 및
			예약</a>
	</div>
	<!-- 버튼이 클릭되면 진료 조회 및 예예약 페이지로 이동 -->

	<div style="text-align: center;">
		<a href="AppointmentandPaymentView.jsp" class="btn btn-success mt-3">납부</a>
	</div>
	<!-- 버튼이 클릭되면 납부 페이지로 이동 -->

	<script>
		// URL 파라미터 가져오기
		const queryString = window.location.search;
		const urlParams = new URLSearchParams(queryString);
		const hospitalizationDate = urlParams.get('hospitalizationDate');

		// <p> 태그에 값 출력

		if (hospitalizationDate != null) {
			const outputText = "입원 날짜: " + hospitalizationDate;
			document.getElementById("hospitalizationDate").innerHTML = outputText;
		}
	</script>
</body>
</html>