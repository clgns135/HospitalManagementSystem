<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="HospitalCode.HospitalDAO"%>
<!DOCTYPE html>
<html>
<head>
<c:set var="hospitalDAO" scope="request" value="<%=new HospitalDAO()%>" />
<c:set var="Clients" value="${hospitalDAO.ClientgetAll()}" />

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
         initialView : 'dayGridMonth'
      });
      calendar.render();
   });
</script>
<script> 
  function btn(sample){  
     alert(sample); 
  } 
 </script> 
<title>간호사 화면</title>
</head>
<body>
   <img src="https://sev.severance.healthcare/_res/yuhs/sev/img/common/sev_logo@2x.png">
   <button type="button" onclick="javascript:btn('낮은 기수는 휴가 신청을 할 수 없습니다!' )" class="btn btn-success mt-3" style="float: right; margin: 10px;">휴가 신청</button>
   <button type="button" onclick="javascript:btn('출근 처리 완료' )" class="btn btn-success mt-3" style="float: right; margin: 10px;">출근</button>
   <div class="container w-75 mt-5 mx-auto">
      <!-- 환자 리스트  -->
      <!-- 오늘 일정  -->
      <h2>오늘 일정</h2>
      <!-- 일정 리스트 -->
      <div class="container w-75 mt-5 mx-auto">
      <ul class="list-group">
         <c:forEach var="client" items="${Clients}" varStatus="status">
            <li
               class="list-group-item list-group-item-action d-flex justify-content-between align-items-center"
               data-bs-toggle="collapse" data-bs-target="#addForm${status.index}"
               aria-expanded="false" aria-controls="addForm${status.index}">
               <a href="Tempdomain?action=getTempfunc&id=${client.id}"
               class="text-decoration-none"> [${status.count}] ${client.name},
                  (${client.id}), (${client.job}), (${client.phoneNumber}) </a>
            </li>
            <div class="collapse" id="addForm${status.index}">
               <div class="card card-body">
                  <label class="form-label">이름: ${client.name}</label>
                  <label class="form-label">고유 번호: ${client.id}</label>
                  <label class="form-label">입원실: ${client.roomnumber}</label>
                  <label class="form-label">전화번호: ${client.phoneNumber}</label>
                  <label class="form-label">예약 일정: ${client.staffdate}</label>
                  <label class="form-label">병명: ${client.diseasename}</label>
               </div>
            </div>
         </c:forEach>
      </ul>
   </div>
      <!-- 일정 추가 -->
      <hr>
      
      
      <button class="btn btn-outline-info mb-3" type="button"
         data-bs-toggle="collapse" data-bs-target="#addForm"
         aria-expanded="false" aria-controls="addForms">일정 등록</button>
      <div class="collapse" id="addForm">
         <div class="card card-body">
            <form method="post" action="/jwbook8/news.nhn?action=addNews"
               enctype="multipart/form-data">
               <label class="form-label">환자명</label>
               <input type="text" name="title" class="form-control">
               <label class="form-label">일정 내용</label>
               <textarea cols="50" rows="5" name="content" class="form-control"></textarea>
               <label class="checkbox-inline"> <input type="checkbox"
                  id="inlineCheckbox1" value="option1"> 약물 투여</label>
               <label class="checkbox-inline"> <input type="checkbox"
                  id="inlineCheckbox2" value="option2"> 혈액 검사</label>
               <label class="checkbox-inline"> <input type="checkbox"
                  id="inlineCheckbox3" value="option3"> x-ray 검사</label>
               <div style="text-align: center;">
                  <button type="submit" class="btn btn-success mt-3">저장</button>
               </div>
            </form>
         </div>
      </div>
   </div>
</body>
</html>