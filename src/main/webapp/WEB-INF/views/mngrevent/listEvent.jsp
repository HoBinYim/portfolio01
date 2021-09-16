<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 페이지</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">    
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
<link rel="stylesheet" type="text/css" href="assets/css/admin.css">
</head>
<body>
<div class="wrapper">
<%@include file="../mngrSidebar.jsp"%>
	<div class="main-content">
		<div class="title-bbs"><a>전체 이벤트 신청수 : ${total}</a></div>
		<div class="content-bbs">
			<div class="bbs-table">
				<h1 class="h1-title">이벤트 승인</h1>
					<table class="table table-hover">
						<thead class="table-secondary">
							<tr>
								<th>번호</th>
								<th>카테고리</th>
								<th>제목</th>
								<th>내용</th>
								<th>가격</th>
								<th>관리</th>
							</tr>
	  					</thead>
						<tbody>
							<c:if test="${empty list}">
								<tr>
									<td colspan="6" align="center">신청한 이벤트&광고가 없습니다.</td>
								</tr>
							</c:if>
							<c:forEach var="edto" items="${list}">
								<tr>
									<td>${edto.evnt_no}</td>
									<td>${edto.ctgry}</td>
									<td>${edto.sj}</td>
									<td>${edto.cn}</td>
									<td>${edto.pc}</td>
									<td>
										<a href="recogEvent.pi?evnt_no=${edto.evnt_no}">승인</a>
										<a href="compEvent.pi?evnt_no=${edto.evnt_no}">반려</a>
									</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
					<div class="pdt20 pagenation">
						<div id="CampPaging" class="pagebox01">${pageStr }</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>