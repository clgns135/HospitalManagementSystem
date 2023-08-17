<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="HospitalCode.HospitalDAO"%>

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
<c:set var="hospitalDAO" scope="request" value="<%=new HospitalDAO()%>" />
<c:set var="Staffs" value="${hospitalDAO.StaffgetAll()}" />
<meta charset="UTF-8">
<title>병원 관리자 전체 목록</title>
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
		<div class="row">
			<div class="col">
				<img class="card-img-top" src="${img}">
			</div>
			<div class="col">
				<h5>관리자 전체 뷰</h5>
			</div>
			<div class="col">
				<h6>회원 정보</h6>
				<h6>
					<button onclick="javascript:btn('미구현 기능입니다')">휴가</button>
				</h6>
			</div>
		</div>
	</div>
	<hr>

	<!-- 의사, 간호사, 약사(아이디, 직책, 전화번호) 누르면 펼쳐짐  -->
	<div class="container w-75 mt-5 mx-auto">
		<ul class="list-group">
			<c:forEach var="staff" items="${Staffs}" varStatus="status">
				<li
					class="list-group-item list-group-item-action d-flex justify-content-between align-items-center"
					data-bs-toggle="collapse" data-bs-target="#addForm${status.index}"
					aria-expanded="false" aria-controls="addForm${status.index}">
					<a href="Tempdomain?action=getTempfunc&id=${staff.id}"
					class="text-decoration-none"> [${status.count}] ${staff.name},
						(${staff.id}), (${staff.job}), (${staff.phoneNumber}) </a>
				</li>
				<div class="collapse" id="addForm${status.index}">
					<div class="card card-body">
						<label class="form-label">이름: ${staff.name}</label> <label
							class="form-label">고유 번호: ${staff.id}</label> <label
							class="form-label">직책: ${staff.job}</label> <label
							class="form-label">전화번호: ${staff.phoneNumber}</label> <label
							class="form-label">예약 일정: ${staff.staffdate}</label>
					</div>
				</div>
			</c:forEach>
		</ul>
	</div>
</body>
</html>