<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<%	request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<!-- reset.css -->
<link href="${ctx}/resources/styles/myInfo.css" rel="stylesheet">
</head>
<style>
	.mainCategory{
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
<nav class="col-sm-2 mainCategory" style="margin-top: 30px;">
	<!-- nav-pills 영역안에서 가로로 펼쳐짐, 세로메뉴 하려면 nav-stacked필요 -->
		<ul class="nav flex-column"> 
			<li><h2 id="mypage">내 정보</h2></li>
			<li><h4>My Survey</h4></li>
			<li><a href = "${ctx}/user/myInfo">Survey 작성</a></li>
			<li><a href = "${ctx}/user/myInfo">Survey 목록</a></li>
			<li><hr class="dropdown-divider"></li>
			<li><h4>My 활동</h4></li>
			<li><a href="${ctx}/review/reviewRegisterForm?user_id=${user.user_id}">1:1문의하기</a></li>
			<li><a href="${ctx}/review/reviewList">문의 목록</a></li>
			<li><hr class="dropdown-divider"></li>
			<li><h4>My 정보</h4></li>
			<li><a href="${ctx}/user/updateMemberForm?user_id=${user.user_id}">개인정보확인/수정</a></li>
		</ul>
	</nav>
<!-- href="${contextPath}/util/addressList?id=${user.id}" -->
</body>
</html>