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

<script
	src='https://cdn.jsdelivr.net/npm/fullcalendar@6.1.8/index.global.min.js'></script>
<script>
    document.addEventListener('DOMContentLoaded', function() {
        var calendarEl = document.getElementById('calendar');
        var calendar = new FullCalendar.Calendar(calendarEl, {
            initialView: 'dayGridMonth'
        });
        calendar.render();
    });
</script>
<script>
    document.addEventListener('DOMContentLoaded', function() {
        var yearSelect = document.getElementById("yearSelect");
        var monthSelect = document.getElementById("monthSelect");
        var daySelect = document.getElementById("daySelect");
        
        document.getElementById("a1234").addEventListener("click", function() {
            // 선택된 값을 가져오기
            var selectedYearValues = Array.from(yearSelect.selectedOptions).map(option => option.value);
            var selectedMonthValues = Array.from(monthSelect.selectedOptions).map(option => option.value);
            var selectedDayValues = Array.from(daySelect.selectedOptions).map(option => option.value);
            
            // 선택된 값들을 합쳐서 날짜 문자열 생성
            var selectedYMDValues = selectedYearValues.join("-") + "-" + selectedMonthValues.join("-") + "-" + selectedDayValues.join("-");
            
            // 입력된 입원 날짜 가져오기
            var hospitalizationDate = selectedYMDValues;
            
            // URL에 파라미터 추가하여 페이지 이동
            window.location.href = "clientView.jsp?hospitalizationDate=" + hospitalizationDate;
        });
    });
</script>

<title>예약 및 조회</title>
<style>
.container {
	padding: 0 20px;
}
</style>
</head>
<body class="container">
    <img src="https://sev.severance.healthcare/_res/yuhs/sev/img/common/sev_logo@2x.png">
    <hr>
    <hr>
    <!-- 의사 선택 -->
    <h2>의사 선택</h2>
    <div style="float: left; padding: 10px; width: 30%;">
        <button type="button" class="btn btn-success mt-3">{-----안치훈 의사-----}</button>
        <br>
        <button type="button" class="btn btn-success mt-3">{-----구보경 의사-----}</button>
        <br>
        <button type="button" class="btn btn-success mt-3">{-----최수성 의사-----}</button>
        <br>
        <br>
        <select id="yearSelect" multiple>
            <option value="2023">2023</option>
            <option value="2024">2024</option>
        </select>
        <h5>년</h5>
        <select id="monthSelect" multiple>
            <option value="1">1</option>
            <option value="2">2</option>
            <option value="3">3</option>
            <option value="4">4</option>
            <option value="5">5</option>
            <option value="6">6</option>
            <option value="7">7</option>
            <option value="8">8</option>
            <option value="9">9</option>
            <option value="10">10</option>
            <option value="11">11</option>
            <option value="12">12</option>
        </select>
        <h5>월</h5>
        <select id="daySelect" multiple>
            <option value="1">1</option>
            <option value="2">2</option>
            <option value="3">3</option>
            <option value="4">4</option>
            <option value="5">5</option>
            <option value="6">6</option>
            <option value="7">7</option>
            <option value="8">8</option>
            <option value="9">9</option>
            <option value="10">10</option>
            <option value="11">11</option>
            <option value="12">12</option>
            <option value="13">13</option>
            <option value="14">14</option>
            <option value="15">15</option>
            <option value="16">16</option>
            <option value="17">17</option>
            <option value="18">18</option>
            <option value="19">19</option>
            <option value="20">20</option>
            <option value="21">21</option>
            <option value="22">22</option>
            <option value="23">23</option>
            <option value="24">24</option>
            <option value="25">25</option>
            <option value="26">26</option>
            <option value="27">27</option>
            <option value="28">28</option>
            <option value="29">29</option>
            <option value="30">30</option>
            <option value="31">31</option>
        </select>
        <h5>일</h5>
        <br>
        
        <!-- 확정 버튼 -->
        <button type="button" id="a1234" class="btn btn-success mt-3">예약 기간 확정</button>
        <br>
    </div>
    <!-- 빈 중간div  -->
    <div style="float: left; padding: 10px; width: 8%;"></div>
    <!-- 캘린더 -> 간호 페이지에는 빼는게 더 나을 것 같기도 함  -->
    <div style="float: left; padding: 10px; width: 62%;">
        <div style="width: 700px;" id='calendar'></div>
    </div>
</body>
</html>