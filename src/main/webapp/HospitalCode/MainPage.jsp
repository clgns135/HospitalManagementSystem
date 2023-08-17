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
<title>메인 페이지</title>
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

.button-container {
	display: flex;
	justify-content: center;
	margin-top: 20px;
}

.button-container .btn {
	margin: 0 10px;
	width: 200px;
	height: 100px;
}
</style>
</head>
<body class="container">

	<h5>메인 페이지</h5>
	<hr>

	<div class="button-container">
		<a href="AdministratorFullView.jsp" class="btn btn-primary">관리자 확인 뷰</a>
		<a href="DoctorView.jsp" class="btn btn-primary">의사 뷰</a>
		<a href="nurseView.jsp" class="btn btn-primary">간호사 뷰</a>
		<a href="clientView.jsp" class="btn btn-primary">고객 뷰</a>
	</div>
</body>
</html>