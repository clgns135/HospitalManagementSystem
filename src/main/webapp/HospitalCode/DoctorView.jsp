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
<meta charset="UTF-8">
<title>의사 뷰</title>
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
<script>
	// 출근 및 퇴근 버튼 토글 동작을 위한 JavaScript 함수
	function toggleAttendance() {
		var attendanceButton = document.getElementById("attendanceButton");

		attendanceButton.classList.toggle("btn-success");
		attendanceButton.classList.toggle("btn-danger");

		if (attendanceButton.innerHTML === "출근") {
			attendanceButton.innerHTML = "퇴근";
		} else {
			attendanceButton.innerHTML = "출근";
		}
	}

	// 약 선택 변경 시 호출되는 함수
	function updateSelectedMedication() {
		var selectElement = document.getElementById("medicineSelect");
		var selectedMedicationsDiv = document.getElementById("selectedMedications");
		var selectedMedication = selectElement.value;

		// 선택한 약 목록을 업데이트
		if (selectedMedication) {
			selectedMedicationsDiv.innerHTML = "<p>선택한 약: " + selectedMedication + "</p>";
		} else {
			selectedMedicationsDiv.innerHTML = "";
		}
	}

	// 페이지 로드 시 초기 선택한 약 목록 업데이트
	updateSelectedMedication();
</script>
</head>
<body class="container">
	<!-- 의사뷰 제목 -->
	<h5>의사 뷰</h5>
	<!-- 상단 우측 맞춤에 휴가신청 버튼과 출근 및 퇴근 버튼 -->
	<div class="text-end mt-3">
		<button type="button" class="btn btn-primary">휴가신청</button>
		<button id="attendanceButton" type="button" class="btn btn-success"
			onclick="toggleAttendance()">출근</button>
	</div>
	<hr>

	<!-- 환자 정보 -->
	<h6>환자 정보</h6>
	<div>
		<p>이름: [환자 이름]</p>
		<p>병명: [병명]</p>
	</div>
	<hr>

	<!-- 지난 진료 내역 -->
	<h6>지난 진료 내역</h6>
	<div>
		<c:forEach var="pastRecord" items="${pastRecords}">
			<p>[진료 내역 ${pastRecord.index + 1}] 날짜: ${pastRecord.date}, 내용:
				${pastRecord.content}</p>
		</c:forEach>
	</div>
	<hr>

	<!-- 지난 처방 내역 -->
	<h6>지난 처방 내역</h6>
	<div>
		<c:forEach var="pastPrescription" items="${pastPrescriptions}">
			<p>[처방 내역 ${pastPrescription.index + 1}] 날짜:
				${pastPrescription.date}, 내용: ${pastPrescription.content}</p>
		</c:forEach>
	</div>
	<hr>

	<!-- 약 선택 탭 -->
	<h6>약 선택</h6>
	<form>
		<select class="form-select mb-3" aria-label="약 선택"
			id="medicineSelect" onchange="updateSelectedMedication()">
			<option selected disabled>약을 선택하세요</option>
			<option value="medicine1">약 1</option>
			<option value="medicine2">약 2</option>
			<option value="medicine3">약 3</option>
			<!-- 추가 약 옵션들 -->
		</select>
	</form>

	<!-- 선택한 약 목록 -->
	<div id="selectedMedications"></div>

	<!-- 처방하기 버튼 -->
	<div class="text-end mt-3">
		<button type="button" class="btn btn-primary"
			onclick="prescribeMedications()">처방하기</button>
	</div>
</body>
</html>