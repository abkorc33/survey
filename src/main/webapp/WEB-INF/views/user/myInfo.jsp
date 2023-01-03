<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c"	uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt"	uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<%  request.setCharacterEncoding("UTF-8"); %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>내 정보</title>

<!-- reset.css 
<link href="${ctx}/resources/styles/reset.css" rel="stylesheet">
-->
</head>
<style>
	.mainCategory{
		border-radius: 20px;
		overflow: hidden;
		box-shadow:
				0.7px 0.7px 0.7px rgba(0, 0, 0, 0.02),
				1.7px 1.8px 1.8px rgba(0, 0, 0, 0.028),
				3.3px 3.4px 3.4px rgba(0, 0, 0, 0.035),
				5.8px 6px 6px rgba(0, 0, 0, 0.042),
				10.9px 11.3px 11.3px rgba(0, 0, 0, 0.05),
				26px 27px 27px rgba(0, 0, 0, 0.07);
	}
</style>
<body>
<%
if(session.getAttribute("isLogOn") == null || session.getAttribute("isLogOn").equals("")) {
	response.sendRedirect("user/signIn");
}
%>

<!-- 메뉴바 -->
<jsp:include page="../common/header.jsp" flush="false"/>

<!-- 메뉴바 하단에 페이지의 소개를 보여준다. -->
<div class="container">
	<div class="row">
		<jsp:include page="../common/sideMenu.jsp" flush="false"/>
		<div class="col-sm-10" id="top">
			<h3 style="padding-left: 25px; margin-top: 30px;">My Survey</h3>
			<div class="input-group" style="width: 80%; padding-left: 25px; margin-top: 20px;">
				<input type="search" class="form-control rounded" placeholder="Search" aria-label="Search" aria-describedby="search-addon" />
				<button type="button" class="btn btn-outline-warning">search</button>
			</div>
			<div class="col-sm-10" style="width: 80%; margin-left: 20%; margin-top: 30px;">
				<div class="col-sm-6">
					<div class="mainCategory flex-column" style="background-color: orange;">
						<div class="flex-column justify-content-center align-items-center p-4">
							<div class="row justify-content-between">
								<div class="col-sm-3">
								<img src="${ctx}/resources/images/knit.jpg" alt="home" width="200" height="200"/>
								</div>
								<div class="text-light pt-1 col-sm-4">포근한 니트
								<a class="btn btn-outline-light rounded-pill mt-4" href="${ctx}/survey">바로가기</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-sm-10" style="width: 80%; margin-left:20%; margin-top: 30px;">
				<div class="col-sm-6">
					<div class="mainCategory flex-column" style="background-color: powderblue;">
						<div class="flex-column justify-content-center align-items-center p-4">
							<div class="row justify-content-between">
								<div class="col-sm-3">
								<img src="${ctx}/resources/images/snow.jpg" alt="home" width="200" height="200"/>
								</div>
								<div class="text-light pt-1 col-sm-4">눈 오는 날 뭐해?
								<a class="btn btn-outline-light rounded-pill mt-4" href="${ctx}/survey">바로가기</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-sm-10" style="width: 80%; margin-left:20%; margin-top: 30px;">
				<div class="col-sm-6">
					<div class="mainCategory flex-column" style="background-color: darkgreen;">
						<div class="flex-column justify-content-center align-items-center p-4">
							<div class="row justify-content-between">
								<div class="col-sm-3">
								<img src="${ctx}/resources/images/christmas.jpg" alt="home" width="200" height="200"/>
								</div>
								<div class="text-light pt-1 col-sm-4">크리스마스 파티
								<a class="btn btn-outline-light rounded-pill mt-4" href="${ctx}/survey">바로가기</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<div style="margin-top: 30%">
<jsp:include page="../common/footer.jsp" flush="false"/>
</div>
</body>
</html>