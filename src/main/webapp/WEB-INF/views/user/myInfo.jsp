<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c"	uri="http://java.sun.com/jsp/jstl/core" %>
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
			<div class="col-sm-10" style="width: 80%; margin-left: 30px; margin-top: 30px;">
				내가 작성한 설문 목록
			</div>
		</div>
	</div>
</div>

<!-- 화면 중앙에 이미지를 보여준다. -->


<!-- 푸터영역 -->


</body>
</html>